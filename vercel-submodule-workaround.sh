#!/usr/bin/env bash

# github submodule repo address without https:// prefix
SUBMODULE_GITHUB=github.com/theopnv/content.git

# .gitmodules submodule path
SUBMODULE_PATH=content

# stop execution on error - don't let it build if something goes wrong
set -e

# If content is no longer configured as a submodule, do nothing.
if ! git config -f .gitmodules --get-regexp '^submodule\.content\.path$' >/dev/null 2>&1; then
  echo "No content submodule configured. Skipping Vercel workaround."
  exit 0
fi

# github access token is necessary only when content is still a submodule
# add it to Environment Variables on Vercel
if [ -z "$GITHUB_ACCESS_TOKEN" ]; then
  echo "Error: GITHUB_ACCESS_TOKEN is empty"
  exit 1
fi

# get submodule commit
output=$(git submodule status --recursive -- "$SUBMODULE_PATH") # get submodule info
COMMIT=$(echo "$output" | awk '{print $1}' | tr -d '+-')

if [ -z "$COMMIT" ]; then
  echo "Error: could not resolve submodule commit for $SUBMODULE_PATH"
  exit 1
fi

# set up an empty temporary work directory
rm -rf tmp || true # remove the tmp folder if exists
mkdir tmp # create the tmp folder
cd tmp # go into the tmp folder

# checkout the current submodule commit
git init -b main # initialise empty repo
git remote add origin https://$GITHUB_ACCESS_TOKEN@$SUBMODULE_GITHUB # add origin of the submodule
git fetch --depth=1 origin $COMMIT # fetch only the required version
git checkout $COMMIT # checkout on the right commit

# move the submodule from tmp to the submodule path
cd .. # go folder up
rm -rf tmp/.git # remove .git 
mkdir -p "$SUBMODULE_PATH"
mv tmp/* $SUBMODULE_PATH/ # move the submodule to the submodule path

# clean up
rm -rf tmp # remove the tmp folder