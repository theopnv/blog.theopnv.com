---
title: "Que vaut Deepin Desktop Environment (15.4) ?"
date: 2017-08-10T11:30:03+00:00
# weight: 1
# aliases: ["/first"]
tags: ["OS", "Linux"]
categories: ["OS"]
author: "Theo Penavaire"
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: false
description: "DDE 15.4 Review"
disableShare: false
disableHLJS: false
hideSummary: false
searchHidden: true
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
cover:
    image: "posts/deepin/images/desktop.png" # image path/url
    alt: "DDE 15.4 Desktop" # alt text
    relative: true # when using page bundles set this to true
---

# Que vaut Deepin Desktop Environment (15.4) ?

Après 2 ans de vie commune avec Linux, je commençais à désespérer de trouver un environnement graphique un minimum “sexy”. J’avais plus ou moins réussi à rendre attrayant XFCE, mais j’ai depuis entendu parler de [Deepin Desktop Environment](https://www.deepin.org/en/dde/) (DDE pour les intimes). Je me suis donc lancé dans son installation, sur une base Arch linux.

Mes impressions après 2 mois de test : C’est beau ! Il faut avouer que les interfaces graphiques de Linux ne font pas le poids face à la cohérence de MacOS ou Windows. DDE a donc fait le pari de s’inspirer de ces deux designs, et il en ressort un environnement très moderne ! En 2017, le flat design s’est imposé depuis un petit bout de temps sur tous les sytèmes, même les mobiles. Ca fait plaisir de le retrouver sur Linux, et autrement qu’avec des thèmes KDE, Gnome ou Unity. Il reste possible de customiser le rendu des fenêtres, les polices, et le thème des icônes grâce à des thèmes personnels, bien sûr.

## Le dock

Premier atout, et même atout majeur à mes yeux, DDE permet de choisir entre un dock “MacOS-like”, ou un dock “Windows-like”.

![MacOS-like Dock](images/dock.png)

![Windows-like Dock](images/dock_windows.png)

Je trouve l’idée superbe, cela permet de changer en un clic le look du bureau, selon l’humeur du jour. L’ordonnancement des items du dock, ainsi que leur taille est bien sûr modifiable. Il en est de même pour la position du dock, ou bien son statut : toujours caché, révélé au survol de la souris, ou bien toujours révélé. Le launcher tout à gauche permet d’accéder à l’intégralité des programmes.

## Le lock screen

Au niveau de l’écran de veille, assez similairement à celui de Gnome ou KDE, on retrouve les fonctionnalités de base : changer d’interface graphique quand on démarre, ou bien les contrôles de la musique quand on verrouille. A noter que DDE permet de customiser chaque compte utilisateur, avec un avatar, visible sur cet écran.

![Lock Screen](images/lockscreen.png)

## Le centre de contrôle

Histoire d’adopter un côté un peu «hype», pas de paramètres pour DDE, mais un «Centre de contrôle». Il ne se déploie pas dans une nouvelle fenêtre, mais sur le côté droit de l’écran. Si la praticité est un peu sacrifiée (pas beaucoup de largeur, car il occupe seulement un petit cinquième de l’écran), ce centre de contrôle a le mérite de se démarquer des réglages des autres environnements. On aime ou on aime pas. Il ressemble beaucoup, dans son design, au centre de contrôle d’IOS sur iPhone.

On trouve donc au 1er clic, un accès rapide aux contrôles de musique, ainsi qu’au réglage de la luminosité. Le wifi, Bluetooth, et l’accès aux réglages de dual-screen sont présents. Je n’ai encore eu aucun souci avec le gestionnaire de wifi Deepin. En revanche, le Bluetooth est un peu plus instable j’ai l’impression. Il vaut parfois mieux passer par un autre gestionnaire, comme Blueman. De manière générale, à mon avis, le Bluetooth est capricieux sur Linux 😉.

![Control Center](images/control_center.png)

Il y a dans la partie supérieure 3 panels :

- Raccourcis vers tous les paramètres du système
- Météo
- Notifications du système, plutôt exhaustives (presque trop), elles listent les changements de musique, les messages reçus, etc. Ces notifications s’affichent également dans des petites pop-up assez bien finies, dans le coin supérieur droit.

## Les Hot corners

Comme chez MacOs (oui, il faut bien avouer que DDE en est quasiment une copie, mais ce n’est pas forcement un inconvénient pour moi… 🙂 ), DDE propose d’affecter une action particulière au survol de chaque coin de l’écran par la souris. Pas d’action customisable malheureusement, comme le lancement d’une application particulière. On y retrouve tout de même un accès rapide au Centre de Contrôle, ou à une vue multi-fenêtres, entre autres. Fonctionnalité bien sympathique encore une fois, bien qu’il manque pour moi le raccourci le plus important, qui est de pouvoir changer de bureau en utilisant uniquement la souris, et non pas un raccourci clavier.

## Le multi-bureaux

Comme la majorité des environnements graphiques Linux, DDE permet à l’utilisateur de travailler sur plusieurs bureaux (jusqu’à 7). Comme je viens de le dire, il n’est malheureusement pas (encore ?) possible d’en changer assez rapidement grâce à un hot-corner, ou à un glissement de deux doigts simultanément sur le pavé tactile, comme sur les Mac. On est obligé d’utiliser un raccourci clavier pour changer rapidement de bureau, ou de cliquer sur l’icône “Multi-bureaux” pour passer sur cette vue, ce qui manque cruellement d’ergonomie…

![Multi desk](images/multi_desk.png)

Pour ce qui est des fonds d’écran, la galerie Deepin est plutôt bien fournie en belles photographies de paysages, ou abstraites.

## Stabilité

Pour moi, un des principes fondamentaux pour pouvoir utiliser tous les jours un environnement graphique est sa stabilité. DDE 15.4 était en version Beta, puis RC (Release Candidate) en février et mars. Ce qui semble être la version finale est sortie il y a quelques jours, le 19 avril. La majorité des problèmes graphiques que j’ai pu relever ont été corrigés au cours de ces 2 mois. DDE est effectivement très dynamique, ses développeurs arrivant à proposer des mises à jour de ses paquets assez régulièrement (tous les 7 à 10 jours). Plus de problème majeur de stabilité pour cette version 15.4 donc.

Un petit bémol cependant pour l’activation du gestionnaire de login, au démarrage. Je n’ai pas réussi à l’activer, sans que le démarrage de DDE derrière ne soit buggué (bandes noires à l’écran, pas possible de lancer d’applications… Je tourne donc pour l’instant avec Gdm, (Gnome Manager). Dommage quand on pourrait démarrer directement sur l’écran de DDE… A voir cependant si je n’ai pas raté quelque chose dans l’installation et la configuration sur Arch, et également sinon, si ce problème a été corrigé depuis la sortie de la version finale 15.4. Au rayon des bugs mineurs, certaines icônes du dock disparaissent après les mises à jour, il faut les remettre manuellement. Rien de bien problématique.

## Conclusion: DDE, une interface utilisable au quotidien ?

DDE est pour l’instant mon environnement graphique Linux favori. Pour moi, c’est presque l’environnement parfait pour ceux qui aiment changer des traditionnels Gnome, KDE ou Unity. Il répond parfaitement à mes critères, à savoir la sobriété, et le modernisme. Il est dynamique, les corrections de bugs ainsi que l’apparition de nouvelles fonctionnalités sont plutôt rapides. Plus que tout, il a su corriger ses derniers problèmes de stabilité, en en faisant un environnement utilisable tous les jours. Je l’utilise aussi bien pour le travail que pour le repos.

Il est certes moins personnalisable jusqu’au bout qu’un XFCE, mais a le mérite de rafraîchir un peu le monde Linux en 2017. Certains diront que DDE n’est qu’une pâle copie du design d’Apple, et ils n’auront pas complètement tort. Seulement, le design de Deepin ne coûte pas le même prix que celui de MacOS. 😉
