---
title: "Surveillance 2.0 : devenir un fantôme"
date: 2026-04-14T00:00:00+00:00
tags: ["Privacy", "Web"]
categories: ["Privacy"]
author: "Theo Penavaire"
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: false
description: ""
disableShare: false
disableHLJS: false
hideSummary: false
searchHidden: true
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
newsletterFr: true
cover:
    image: "images/jason-bourne.jpg"
    alt: "Comme Jason Bourne, devenez insaisissable"
    relative: true
---

## Quelques solutions (partie 2)

Après avoir pris connaissance de la progression constante du renforcement de la surveillance et du contrôle des communications et informations par une multitude d’entités, dans la [partie 1](../../02/privacy/index.fr.md), voilà quelques idées pour en atténuer les conséquences. 

Elles sont triées des plus simples à mettre en place, sans efforts particuliers, aux plus compliquées, qui requerront d’accepter quelques compromis en confort. Pas besoin de chambouler tous ses usages d'un coup, il vaut mieux y aller étape par étape. La perfection n’existe pas, mais il est toujours possible de s’améliorer progressivement.

## S'éduquer
La première étape : informez-vous, soyez conscient des mécanismes à l’oeuvre. Lire cette série d'articles est un bon début. 
Lors de tout débat public, par exemple, la vérification de l’âge pour accéder à divers sites, ne tombez pas dans le piège de l’argumentaire simpliste qui n'explore un seul côté du débat. Être contre cette proposition ne veut pas dire être du camp des pédophiles, juste que l'on réclame un débat apaisé et construit sur des bases scientifiques pour ne pas sacrifier les libertés fondamentales du plus grand nombre.

## Minimiser
Une des premières mesures à mettre en oeuvre et qui ne coûte rien : ce que la CNIL appelle la [minimisation](https://www.cnil.fr/fr/definition/minimisation). Chercher à réduire sa surface d’exposition, c’est à dire le nombre de sites ou applications qui contiennent nos informations, c’est réduire le risque de fuite ou d’utilisation néfaste de ses données. 
Un seul exemple. Renseignez votre adresse e-mail sur [https://haveibeenpwned.com](https://haveibeenpwned.com/) (c’est sans danger), pour réaliser combien de sites sur lesquels vous êtes inscrits ont été piraté. Pour chaque site, vous trouverez une liste de toutes les informations qui sont maintenant dans la nature et ont probablement été vendues pour trois fois rien à des arnaqueurs. Arnaqueurs qui vous envoient maintenant dans le meilleur des cas des SMS ou e-mails de phishing à propos "d'un colis qui n'a pas pu être livré", ou qui vous appellent en se faisant passer pour votre conseiller bancaire. Dans le pire des cas, qui mettent en place de faux mandats de prélèvement SEPA pour tenter des micro-prélèvements sur votre compte ([un cas bien expliqué par Numerama à la suite d'une fuite de données des serveurs Basic-Fit](https://www.numerama.com/cyberguerre/2231417-fuite-de-donnees-basic-fit-les-coordonnees-bancaires-sont-concernees-que-risquez-vous.html)).

Posez-vous dès lors la question « est-il nécéssaire de créer un compte sur ce nouveau site ou cette nouvelle application ? ». Une simple astuce : attendez le lendemain avant de créer le compte pour avoir le temps de réfléchir, et réaliser que ce n’est peut-être pas nécessaire. Il est **beaucoup** plus dur de supprimer un compte et les données correspondantes, que d’en créer un, car beaucoup de sites mal codés ne permettent pas de changer ses informations personnelles.  

## Supprimer ses traces sur internet
Mais que faire quand on veut « minimiser » après coup, après avoir créé des comptes un peu partout ? Plusieurs services de suppression des données existent. Pour quelques euros on promet de lister tous les sites auxquels vous êtes inscrits, puis d’envoyer automatique des demandes de suppression. 
N’utilisez **pas** ces services. [Il a été démontré que](https://inteltechniques.com/blog/2023/09/19/the-dangers-of-data-removal-service-doxxing/) les demandes de suppression envoient en fait plus d’informations aux sites qu’ils n’en ont en premier lieu. Ce qui va évidemment à l’encontre de l’intention de minimiser sa surface d’exposition. 

À la place, envoyez vous-même la demande de suppression du compte et des données. Ce droit est garanti par le RGPD en Europe. On trouve souvent une adresse e-mail de contact dans les termes et conditions d’utilisations du site en question. Un modèle simple qui a marché dans 100% des cas où je l’ai utilisé : 

> Veuillez s’il-vous-plaît supprimer mon compte et toutes les données correspondantes. En tant que citoyen européen, ce droit m’est garanti par le RGPD. Je reconnais que cela signifie que je n’aurai plus accès à mon compte et à ses données, et en accepte la suppression immédiate.

Le destinataire vous renvoie alors une confirmation de suppression quelques jours plus tard. Moins de données éparpillées, c'est moins de risques de fuites futures. L'équivalent de nettoyer et ramasser ses déchets derrière soi.

Et oui, envoyer ces e-mails veut dire qu’il faut en premier lieu se souvenir de quels comptes on a créé plus tôt… Pas toujours facile, mais on peut pour retrouver tous ses comptes s'aider de son gestionnaire de mots de passe (une astuce un peu plus bas).

## Réduire sa surface d'exposition existante
Une autre étape : supprimez toute application que vous n’utilisez pas sur votre téléphone (par exemple, toute application que vous n’avez pas ouvert depuis 30 jours). Pour rappel, [chaque action que vous effectuez dans n’importe quelle application peut potentiellement être envoyée à un courtier en données, ou un des Big Tech](https://tuta.com/fr/blog/app-tracking) (Google, Facebook). C’est ce qui permet de construire un profil utilisateur le plus précis possible, à travers non pas une seule application mais tout l’appareil. **Tout** est bon à prendre pour les annonceurs publicitaires : l’application météo envoie des données précises de localisation, l’application de livraison de nourriture envoie des données précises sur les habitudes alimentaires… C'est d'autant plus de points de profilage pour ensuite vous envoyer la publicité la plus ciblée possible.

C'est la même chose avec les extensions de navigateur sur l'ordinateur, que chaque site peut interroger et utiliser pour la collecte massives de données ([dernier exemple en date : Linkedin](https://www.blog-nouvelles-technologies.fr/364696/linkedin-browsergate-extensions-chrome-espionnage-fingerprinting-2026/)), ou bien qui sont en elles-même un risque si leur auteur a des intentions malhonnêtes ([affaire Shadypanda : comment des milliers d'utilisateurs se sont fait voler leur identifiants de session et autres informations](https://continuumgrc.com/fr/ShadyPanda-et-extensions-de-navigateur-malveillantes/)).

Rappelez-vous : chaque outil, application, extension, est une fenêtre d'exposition et de risque supplémentaire. Alors prenez quelques minutes pour ouvrir la liste sur votre téléphone et navigateur, et supprimez à la fois le compte et l'application de chaque service qui n'est pas strictement indispensable.

## Réduire la collecte d'informations de son téléphone
Quid des applications dont on ne peut pas se passer ? Réglez votre téléphone pour en limiter les capacités de tracking :
- [Sur iOS](https://support.apple.com/fr-fr/guide/iphone/iph4f4cbd242/ios): Réglages > Confidentialité et sécurité > Suivi. Désactiver « Autoriser les demandes de suivi des apps ».
- [Sur Android](https://policies.google.com/technologies/ads?hl=fr): Paramètres > Confidentialité > Annonces > « Supprimer l'identifiant publicitaire ».
Cela limite grandement les possibilités de suivi des applications et "lisse" votre profil utilisateur, vous rendant moins identifiable.

## Réduire la collecte d'informations via l'IA
À l'ère de l'IA la collecte de données par les grandes entreprises de la tech est décuplée, à la fois en quantité et en quantité. L'utilisateur livre lui-même ses pensées les plus profondes à un outil assez opaque dont on ignore à quelles fins, échéances et conditions elles sont stockées. Réfléchissez à toutes les données collectées lorsque l'on échange avec une IA : elle connaît l'entièreté du voyage que l'on planifie, l'état de nos finances lorsqu'on lui demande de l'aide pour calculer ses taxes, ou bien notre état de santé lorsqu'on lui pose des questions sur certains symptômes. Beaucoup d'utilisateurs utilisent l'IA en complément ou remplacement d'un psychologue. Nous livrons avec enthousiasme nos pensées les plus profondes à des entreprises étrangères, et acceptons de fait qu'elles les enregistrent et les utilisent *ad vitam aeternam* sans que l'on en ait la moindre idée!

C'est peut-être impensable au sein du cadre juridique et légal aujourd'hui, mais il n'est pas inimaginable qu'une assurance interroge demain les entreprises derrière l'IA pour juger de la pertinence d'assurer un client. On ne peut ni affirmer avec certitude que le cadre légal reste inchangé dans le futur, ni que les entreprises suppriment nos données au bout d'un certain temps. La probabilité va même plutôt dans l'autre sens : les lois ont toujours changé au cours de l'Histoire, et les entreprises gardent nos données aussi longtemps qu'elles le peuvent pour des utilisations futures auxquelles on ne pense même pas aujourd'hui.

Que faire, donc, pour réduire la valeur du profil utilisateur construit via nos échanges avec l'IA ?
Éviter à tout prix de partager tous les éléments de sa vie, d'autant plus si ce que l'on gagne en retour est limité. Je me souviens du trend instagram du "starter pack" (dans lequel je suis tombé), qui consistait à se décrire soi-même à l'IA pour lui demander de générer son "starter pack" avant de pouvoir le partager sur les réseaux sociaux. L'interêt ? Quelques minutes de dopamine au moment de partager la photo finale. Les bénéfices pour Open AI ou Google ? Mettre la main sur encore plus de données, pour renforcer la valeur de votre profil qu'ils vendent à d'autres.

![Trois images générées par IA façon 'figurine starter pack', une tendance où l'on décrit son profil à l'IA pour générer un portrait façon emballage de jouet](./images/start-pack.jpg)

Dans bien des cas il est souhaitable de simplement se passer d'IA. Mais pour les cas les plus poussés, l'IA reste une technologie qu'il devient difficile de laisser de côté. Pour ceux-ci il existe plusieurs IA, certes possiblement un peu moins performantes mais qui promettent plus de confidentialité à leurs utilisateurs. Je ne les ai pas tous essayé, mais voilà quelques exemples:
- https://duck.ai/
- https://lumo.proton.me
- https://confer.to/
- https://venice.ai/

Enfin, il existe la possibilité d'exécuter des IA en local plutôt que via le cloud. Vos données restent ainsi sur votre machine. Mais en 2026 c'est encore nettement moins performant, et plus compliqué à mettre en place, alors plutôt qu'explorer cette alternative en détails ici, j'en ferai l'objet d'un futur article.

## Préférer des solutions chiffrées, locales, souveraines
Les logiciels et outils proposés par les grandes enterprises de tech américaines sont très confortables à utiliser. Interface utilisateur propre, écosystème dans lequel chaque outil inter-opère, facilité de partage avec d'autres utilisateurs... Mais tout cela a un prix : ces entreprises utilisent vos données pour se rémunérer. Pour faciliter toutes ces fonctionnalités, elles n'ont pas d'incitation à chiffrer vos données, qui sont donc stockées "en clair" sur leurs serveurs. L'entreprise, ainsi que les autorités peuvent ainsi accéder plus ou moins librement à ces photos, messages, fichiers personnels. Imaginez Mark Zuckerberg et la police qui fouillent votre boîte aux lettres, ou bien à vos côtés dans le salon lorsque vous consultez vos albums photo de famille.

Que diriez-vous si je vous disais qu'il est possible d'avoir 80 à 90% des bénéfices et fonctionnalités des Google, Microsoft, Whatsapp et consorts mais sans intrusion dans sa vie privée ? Il suffit de passer un peu de temps à chercher des entreprises qui fournissent ces mêmes services, mais sans doute à taille plus réduite, et qui font du respect à la vie privée leur avantage compétitif face aux géants de la tech.

Pour l'inspiration, voici quelques changements que j'ai effectué :
- Remplacer son navigateur Google Chrome par [Firefox](https://www.firefox.com/fr/), avec l'extension [ublock origin](https://ublockorigin.com/) pour bloquer les trackers sur la majorité des sites. Bonus : l'extension bloque aussi les publicités !
- Remplacer son Outlook ou Gmail et la suite Microsoft ou Google Drive par [Proton](https://proton.me/fr), qui offre : e-mail, drive, VPN, gestionnaire de mot de passe, éditeur de documents, de feuilles de calcul, calendrier et vidéoconférence. Le tout intégralement chiffré. Eux-mêmes n'ont mathématiquement pas la possibilité d'accéder à vos données, et cela vaut donc aussi pour n'importe quel acteur tiers (autorités, pirates...). Proton est une entreprise suisse, donc européenne !
- Remplacer ses messageries (SMS, messenger, instagram, whatsapp) par [Signal](https://signal.org/fr/), là aussi chiffré de bout en bout. Impossible pour aucun acteur de lire vos échanges. Mark Zuckerberg ne pourra plus entrer dans votre salon et écouter les conversations que vous entretenez avec votre partenaire à propos de vos finances ou de l'état santé de vos enfants.
- Remplacer iCloud photos (qui fait néanmoins un bon boulot quand le chiffrement icloud est activé...) et Google photos par [Ente](https://ente.com/fr). Encore une fois, tout est chiffré.

Utilisez [ce site](https://european-alternatives.eu/) pour trouver d'autres alternatives européennes aux solutions Big Tech. Ces solutions pairent souvent souveraineté avec respect des droits privés. Pour les plus experts d'entre vous, le subreddit [r/degoogle](https://www.reddit.com/r/degoogle/) regorge également d'idées.

![Collage de logos d'applications et services alternatifs superposés à un logo Google délavé, représentant des remplaçants respectueux de la vie privée face à la Big Tech](./images/degoogle.png)

Beaucoup de ces solutions proposent des formules gratuites, dont on arrive néanmoins rapidement aux limites. Mais il me paraît important d'accepter de payer quelques euros par mois pour ces services qui ne font pas de la vente de mes données leur business model. Souvent ces plus petites solutions font tout pour jouer des coudes avec les plus gros acteurs, et ils chouchoutent leurs clients. Les fonctionnalités sortent beaucoup plus rapidement. On a vraiment l'impression de gagner au change et l'on s'attache à ces produits plus facilement. L'équivalent de passer du fast-food à une cuisine plus locale, saine et source de bonheur.
Enfin, la plupart ont des services de migration des données, qui facilitent la transition depuis les solutions des grandes entreprises tech. Bien sûr il vaut mieux prendre son temps et faire ces transitions étape par étape, pour avoir le temps de s'habituer à chacune. 

## Fortifier ses mots de passe avec un gestionnaire
Une des pires choses qu'il puisse vous arriver sur internet est la fuite du mot de passe que vous utilisez sur absolument tous les sites sur lesquels vous êtes inscrits. Souvenez-vous https://haveibeenpwned.com/ : des sites se font pirater tous les jours. Pour un peu que les développeurs du site aient suivi de bonnes pratiques de sécurité, un piratage n'implique pas forcément que votre mot de passe ait été récupéré en clair et soit utilisable partout. Mais il est impossible de le savoir à l'avance, et il vaut donc mieux prévenir que guérir. Première tactique, comme vu précédemment : réduire sa fenêtre d'exposition en suivant le principe de minimisation. Réduire le nombre de sites sur lesquels on est inscrit.

Pour tous les sites sur lesquels on l'est, il faut utiliser un gestionnaire de mot de passe, pour générer un mot de passe **unique** pour chaque site. C'est beaucoup moins compliqué qu'il n'y paraît. C'est même plus pratique au quotidien, car la plupart des gestionnaires ont une fonctionnalité d'auto-remplissage des champs de connexion. Cela évite donc d'avoir à se souvenir de ses identifiants et de son mot de passe et de les remplir à la main. Et ça marche aussi sur le téléphone ! 
Quelle marche à suivre alors ?
1. Télécharger les extensions de navigateur et applications mobile [Proton Pass](https://proton.me/fr/pass), ou [Bitwarden](https://bitwarden.com/fr-fr/products/personal/), ou le gestionnaire de votre choix après avoir fait vos recherches (privilégier bien évidemment une solution chiffrée et si possible open-source).
2. Créer un compte Proton ou Bitwarden via l'extension. Pas besoin de faire quoi que ce soit pour l'instant.
3. Au quotidien, une popup du gestionnaire apparaît lorsque vous vous connectez à un site que vous utilisez régulièrement. Le gestionnaire enregistre automatiquement les identifiants que vous aurez renseigné pour ce site, il suffit de cliquer sur "accepter". Lors des futures connexions les champs du site seront automatiquement remplis par le gestionnaire.
4. Lorsque vous vous sentez prêts et avez un peu de temps devant vous, renouvelez votre mot de passe sur un site ou deux via les paramètres de votre compte sur le site. Utilisez la fonctionnalité de génération du mot de passe du gestionnaire, qui créera un mot de passe unique et assez complexe pour ne pas être facilement trouvé par un pirate potentiel. Renouvelez l'expérience pour chacun des sites que vous utilisez, au fur et à mesure.

Au cours du temps et après avoir renouvelé tous vos mots de passe, celui du gestionnaire devient le seul dont vous avez besoin de mémoriser. Il faut en trouver un assez complexe, mais dont vous vous souviendrez quoi qu'il arrive. Je recommande une phrase entière qui signifie quelque chose pour vous, avec des chiffres et caractères spéciaux.

## Devenir insaisissable
En dernier recours, lorsque la création d'un compte sur un site ou une application est indispensable, il est toujours possible de livrer le moins d'informations possibles. Peut-être par exemple que le champ téléphone est optionnel. Ou l'adresse postale. 
Pour ce qui est des adresses e-mail, il est possible via certains services comme [iCloud](https://support.apple.com/fr-fr/guide/icloud/mm074af79454/icloud), [Proton](https://proton.me/fr/pass/aliases) ou [SimpleLogin](https://simplelogin.io/fr/) de créer des alias. Késako ?

Au lieu de donner toujours votre même adresse e-mail très personnelle à une multitude de sites internet, vous créez un alias par site. Par exemple, au lieu de donner prénom.nom@protonmail.com à la votre salle de sport, vous donnez l'alias que vous avez généré : alias-salle-de-sport@passmail.com. La salle de sport ne voit que alias-salle-de-sport@passmail.com, mais tous les e-mails que la salle de sport vous envoie arrivent sur prénom.nom@protonmail.com. Cela a plusieurs avantages : 
- Dans le cas d'un piratage des serveurs de votre salle de sport ([hello Basic-Fit](https://www.lemonde.fr/pixels/article/2026/04/13/fuite-de-donnees-chez-basic-fit-un-million-de-membres-concernes-des-coordonnees-bancaires-piratees_6679702_4408996.html)), si votre e-mail est récupéré par un arnaqueur, vous verrez alors que du spam arrive via cet alias, que vous pourrez désactiver sans avoir à désactiver votre adresse principale.
- Sans parler de piratage, certaines entreprises n'hésitent pas à vendre vos données à des courtiers. Vous saurez lesquelles lorsque vous verrez également du spam arriver sur un alias spécifique.
- Enfin, séparer son identité numérique entre une multitude d'alias complique le profilage par les trackers lorsque vous naviguez sur plusieurs sites ou applications.

![Schéma montrant des alias e-mail pour différents services redirigeant vers une adresse réelle, l'un des alias étant désactivé après une fuite](./images/alias.png)

Une analogie dans la vraie vie : donner l'adresse d'une boîte aux lettres en ville plutôt que celle de sa résidence personnelle. En réalité pas grand monde ne fait ça, car (heureusement) il y a peu de raisons à cette abondance de précaution et confidentialité, et maintenir une boîte aux lettres coûte cher.
Sur internet en revanche il y a moins d'excuses, car le pouvoir de nuisance potentiel des spammeurs est bien plus grand (vous inonder d'e-mails de phishing, qui leur coûte 0€) et car maintenir un alias est gratuit.

Votre adresse e-mail principale, immuable à moins de recréer un compte doit être votre trésor le plus précieux, qui ne doit jamais fuiter ou être exposé au public. Toutes les autres adresses peuvent être traitées comme désactivables à n'importe quel moment.

En utilisant des alias e-mail ainsi que des mots de passe générés via votre gestionnaire, vous avez une identité différente par site, que les trackers associent à un utilisateur différent (d'autant plus si vous désactivez la plupart des trackers avec une extension de type ublock origin), rendant ainsi votre profilage nettement plus compliqué.
Vous devenez "anti-fragile": vous cessez de reposer sur une seule identité (correspondant quasiment à votre identité intrinsèque) que vous partagez partout, qui devient ainsi un point de défaillance unique s'il se retrouve dans la nature, et qui vous expose à subir du spam continu. À la place, vous utilisez une multitude d'identités dont vous pouvez vous dissocier complétement. Les activer et désactiver à la demande si l'une d'entre elles fuit. Vous devenez insaisissable.

## Répandre les bonnes pratiques
Enfin, ces mesures individuelles doivent s'accompagner d'une prise de conscience collective. Il faut exprimer son interêt pour ces sujets lors des débats publics, des élections. Demander une préservation stricte des libertés individuelles et du respect de la vie privée. Ne pas affaiblir le chiffrement, investir massivement dans les enquêtes ciblées et encadrées judiciairement, plutôt que des solutions populistes qui affectent le plus grand nombre en affaiblissant les démocraties. Soutenir un éclairage scientifique du débat. Il existe beaucoup de solutions techniques, qui, bien implémentées peuvent servir de juste milieu.
Restez ouverts et curieux, n'ayez pas peur de chercher par vous-même et d'apprendre. Partagez vos découvertes ! 

