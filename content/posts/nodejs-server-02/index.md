---
title: "Build a Node.js Server — Part 2/4: Docker"
date: 2020-11-29T02:30:03+00:00
# weight: 1
# aliases: ["/first"]
tags: ["Javascript", "Web", "Tutorials"]
categories: ["Web"]
author: "Theo Penavaire"
# author: ["Me", "You"] # multiple authors
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: true
description: "Part 2/4: containerize the Node.js server and a MongoDB database with Docker and Docker Compose, then manage secrets with environment variables."
#canonicalURL: "https://canonical.url/to/page"
disableShare: false
disableHLJS: false
hideSummary: false
searchHidden: true
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
cover:
    image: "images/cover.png" # image path/url
    alt: "Cover" # alt text
    relative: true # when using page bundles set this to true
---

_If you want to use the server starter directly without going through the tutorial, find the code on [Github](https://github.com/theo-pnv/nodejs-server-starter). Link to the next parts are at the bottom of this page._

In [Part I](../nodejs-server-01) we built a basic Koa.js server with Typescript and improved our workflows with some tooling. The next step would be to set up a database to store and retrieve data. We will use [MongoDB](https://www.mongodb.com/), a NoSQL database. But we’d like to have a single and simple way to install it on each developer’s machine instead of relying on tedious manual configuration. We’d also like to make the installation process deterministic, with configuration stored in files instead of set by the OS itself (environment variables).

So let’s [containerize](https://www.docker.com/) our apps, including the existing server and the future MongoDB database. It will make installation of the whole back-end (which will now be considered as a suite of services) much easier, with only one step.

_Requirements: Knowing the basics of Docker and MongoDB. We won’t cover the installation of docker as it is OS-dependent and requires some specific tweaking for everyone. Please refer to the getting started and/or installation guide provided by Docker._

## Robin level: dockerize the server

With docker installed on your machine (see the requirements above), create the following Dockerfile:

```sh
FROM node:15 as builder
WORKDIR /usr/src/app

COPY . .
RUN npm install typescript@4.0.5 -g --silent
RUN npm install && npm run build

FROM node:15-alpine as runtime-container
WORKDIR /usr/src/app
ARG SERVER_PORT

COPY --from=builder /usr/src/app/dist ./dist
COPY --from=builder /usr/src/app/package*.json ./
RUN npm install --only=prod

EXPOSE ${SERVER_PORT}
CMD ["node", "./dist/server.js"]
```

These are the instructions to dockerize the existing server. Let’s get through the file:

1. We request a first container as the builder. It copies our entire working directory into /usr/src/app on the container (line 2 & 4).
2. It installs the devDependencies and builds the project (line 6).
3. We use a second container (runtime-container) that only contains the generated files, with no “useless” dev dependency (line 8 to 14).
4. Line 10 and 16 we are defining and exposing `${SERVER_PORT}`. We won’t use it yet, and it will remain undefined. However, the Koa server (`src/server.ts`) defaults to `3100` and we can explicitly expose the container’s port by using the `-p` argument when running Docker. We will only use the `${SERVER_PORT}` argument later in this tutorial.

Run the following commands to build and run the server container:

```sh
docker build -t <name> .
docker run -p 3100:3100 -d <name>
```

Go to `http://localhost:3100/health` and check that we still have a 200 — OK response.

## Batman level: dockerize the whole back-end

The benefit of using containers grows larger when our application is composed of many different services, like our back-end is. So let’s add a MongoDB service, in a container.

Add a `docker-compose.yml` file. Docker-compose files operate at a higher level than Dockerfiles. While Dockerfiles are nice to configure a single container/service, docker-compose files are great for listing all the containers/services.

```yml
version: "3.8"

x-var: &DB_NAME database

services:
  *DB_NAME:
    image: mongo:4
    container_name: *DB_NAME
    ports:
      - $MONGO_PORT:27017
    environment:
      MONGO_DATABASE_USERNAME: $MONGO_DATABASE_USERNAME
      MONGO_DATABASE_PASSWORD: $MONGO_DATABASE_PASSWORD
      MONGO_INITDB_DATABASE: $MONGO_INITDB_DATABASE
      MONGO_INITDB_ROOT_USERNAME: $MONGO_INITDB_ROOT_USERNAME
      MONGO_INITDB_ROOT_PASSWORD: $MONGO_INITDB_ROOT_PASSWORD
    volumes:
      - ./init-mongo.sh:/docker-entrypoint-initdb.d/init-mongo.sh
      - mongodb_data_container:/data/db

  mongo-express:
    image: "mongo-express"
    container_name: mongo-express
    ports:
      - "8081:8081"
    depends_on:
      - *DB_NAME
    environment:
      ME_CONFIG_MONGODB_SERVER: *DB_NAME
      ME_CONFIG_MONGODB_AUTH_DATABASE: $MONGO_INITDB_DATABASE
      ME_CONFIG_MONGODB_AUTH_USERNAME: $MONGO_DATABASE_USERNAME
      ME_CONFIG_MONGODB_AUTH_PASSWORD: $MONGO_DATABASE_PASSWORD
      ME_CONFIG_BASICAUTH_USERNAME: $ME_CONFIG_BASICAUTH_USERNAME
      ME_CONFIG_BASICAUTH_PASSWORD: $ME_CONFIG_BASICAUTH_PASSWORD
      ME_CONFIG_MONGODB_ENABLE_ADMIN: "false"

  server:
    container_name: server
    build: .
    env_file: ".env"
    environment:
      DB_HOSTNAME: *DB_NAME
    depends_on:
      - *DB_NAME
    ports:
      - $SERVER_PORT:$SERVER_PORT

volumes:
  mongodb_data_container:
```

Things are only getting _slightly_ more complex from now, I promise. I recommend keeping the [Docker Compose API](https://docs.docker.com/compose/compose-file/) reference nearby if needed.

- Starting from docker-compose version 3.4, we can set local variables. That’s what we’re doing here with `DB_NAME` because we’re going to use it many times in the file. Consider it as an alias for the string “database”.
- We are setting up many Environment Variables for both containers (all the variables prefixed with a dollar ($) sign). More info on that below.
- We are defining 3 containers/services:`database`, `mongo-express` and `server`.
- For `database` we’re using the [Docker image made by the community](https://hub.docker.com/_/mongo) (`mongo:4`).
- The `database` container is using volumes. The first volume is used to copy/paste a database initialization script into the container. More info on that below. The second one (`mongodb_data_container`) is used to persist data on the host when the container is turned off. It’s managed by Docker.
- `mongo-express` is a “Web-based MongoDB admin interface” ([repo](https://github.com/mongo-express/mongo-express)). It will be super useful to browse the database from our machine through the `database` container. 🤯
- For `server` we’re using the custom Docker image we prepared at the previous step with the Dockerfile (see line 39).

Here’s what it looks like:
![The back end architecture](images/architecture.png)

### 🔐 A way to manage environment variables

How to set the variables mongo needs without hard-coding them in the docker-compose file and eventually push them to the repository remote and make them publicly available? We can use `.env` files!

I recommend having a .gitignored `.env` file, copy/pasting the keys from a git-tracked `sample.env` file and filling the values with your own secrets. This way, each team member can have their own secret variables.

Not hard-coding the values in the docker-compose file will also be useful later when we deal with multiple environments (like development, testing, production).

So let’s write the `sample.env` file, duplicate it and rename the copy `.env`:

```sh
SERVER_PORT=3100
DB_HOSTNAME=localhost
MONGO_PORT=27017
MONGO_DATABASE_USERNAME=your_username
MONGO_DATABASE_PASSWORD=your_password
MONGO_INITDB_DATABASE=database
MONGO_INITDB_ROOT_USERNAME=your_admin_username
MONGO_INITDB_ROOT_PASSWORD=your_admin_password
ME_CONFIG_BASICAUTH_USERNAME=your_mongo_express_username
ME_CONFIG_BASICAUTH_PASSWORD=your_mongo_express_password
```

Add this line to the `.gitignore` file if it’s not already there:

```
.env
```

### A script to initialize our database

Before storing and retrieving data with MongoDB, we need a database and a user to interact with it. This is done by adding an initialization script to a specific volume in docker (see line 18 of the docker-compose.yml file). Here is an example of a script adding a database and a user as named in the .env file. Feel free to tweak the script or to rewrite it. Mongo DB also supports javascript ([thread](https://stackoverflow.com/questions/42912755/how-to-create-a-db-for-mongodb-container-on-start-up)).

Adding `init-mongo.sh` at the root is the only thing we need to do, docker will copy it automatically where it needs to. It will be run only if the docker volume is empty (so only the first time, so that we can keep working on the same database afterwards).

```sh
#!/bin/bash
set -e;

# a default non-root role
MONGO_NON_ROOT_ROLE="${MONGO_NON_ROOT_ROLE:-readWrite}"

echo ">>>>>>> Creating database and users..."
if [ -n "${MONGO_DATABASE_USERNAME:-}" ] && [ -n "${MONGO_DATABASE_PASSWORD:-}" ]; then
	mongo -u $MONGO_INITDB_ROOT_USERNAME -p $MONGO_INITDB_ROOT_PASSWORD <<-EOF
		db=db.getSiblingDB("$MONGO_INITDB_DATABASE");
		use $MONGO_INITDB_DATABASE
		db.createUser({
			user: $(_js_escape "$MONGO_DATABASE_USERNAME"),
			pwd: $(_js_escape "$MONGO_DATABASE_PASSWORD"),
			roles: [ { role: $(_js_escape "$MONGO_NON_ROOT_ROLE"), db: $(_js_escape "$MONGO_INITDB_DATABASE") } ]
			})
	EOF
else
	echo "Database and user creation failed. The variables listed in .env.sample must be provided in a .env file."
	exit 403
fi
```

### Final touches

Finally, add a .dockerignore file to avoid putting useless files in the containers:

```
node_modules
npm-debug.log
Dockerfile*
docker-compose*
.dockerignore
.git
.gitignore
.env
*/bin
*/obj
README.md
LICENSE
.vscode
test
dist
```

We are now ready to see if everything works! Start the containers by running:

```sh
docker-compose up [-d if you want to start the containers in detached mode] [--build if you want to force rebuild]
```

Give it a few seconds to pull the images and build the containers. You should then be able to:

- Browse `http://localhost:3100/health` and get a 200 — OK as before. This is our server.
- Browse `http://localhost:8081` and log in, using the mongo express credentials you listed in the .env file. This is a way to visualize the database we created with our init-mongo.sh script and which is living inside the database container.
- Note: To turn the containers off, use `docker-compose down`.

_Note: it’s still possible to access the database container with a connectionString, for example in MongoDB Compass from the host:_

```sh
mongodb://your_username:your_password@localhost:27017/database?authSource=database
```

### Injecting variables at runtime

Containers are great, but when developing it’s better to instantly see the changes we made to the code rather than rebuilding the containers and waiting for them to start.

So the ideal workflow would be to only start the `database` and eventually `mongo-express` containers, and to keep our server on our host machine. But how will the same environment variables we defined in the `.env` file be injected into the server? There’s a package to answer that need:

```sh
npm i -D dotenv
```

We then have a few adjustments to make to our `nodemon.json` file. Replace the “exec” line with the following:

```json
"exec": "npx ts-node --require dotenv/config ./src/server.ts"
```

[Dotenv](https://github.com/motdotla/dotenv) will take the variables defined in our `.env` file and inject them into our server, each time it finds `process.env.VARIABLE`. Remember this line at the start of our `src/server.ts` file?

![src/server.ts, line 6](images/serverts.png)

Now the server will use the `$SERVER_PORT` variable defined in the .env file, instead of defaulting to `3100`.

We can then safely run the following commands and properly develop our server locally, interacting with the containerized database:

```sh
docker-compose up [-d] [--build] database mongo-express
npm run start
```

Now our server and database are ready to talk to each other. 🕺🏻

In part III, we will write some boilerplate code to set up GraphQL and MongoDB. Click the link below to go to part III:
[Building a Node.js Server — Part 3/4: The API](../nodejs-server-03/)
