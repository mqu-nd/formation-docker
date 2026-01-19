# Travaux pratiques

Vous trouverez plusieurs TP au sein de ce repository.

Pour réaliser ces derniers vous aurez tous les éléments nécessaires dans chaque TP, c'est-à-dire, tous les scripts, applications... seront présents dans les TP. 

## Qu'est-ce qu'on retrouve dans un TP ?
- Une fiche d'instruction avec l'objectif du TP et d'autres informations si nécessaires
- Les scripts / Applications... nécessaires au TP

## Comment récupérer, rendre les TP et quel contenu ?

### Récupération du projet
Pour commencer créer un fork du projet avec votre compte github (à créer si nécessaire).

### Contenu à rendre 
Dans chaque répertoire de TP vous y ajouterez tous le nécessaire au bon foncitonnement de vos conteneurs (dockerfile, dockerignore, devcontainer, script...).

Vous y ajouterez obligatoirement un README.md au sein de chaque TP. Dans lequel vous décrivez les étapes pour la réalisation du TP (Commandes docker...)

### Rendre le projet
Pour chaque TP, veuillez déposer vos images sur votre dockerhub, sauf contre-indication. ex: < DOCKER ID >/tp1:1.0

Une fois les exercices terminés, créez une pull request depuis votre repository git vers mon repository git dont vous avez créé un fork au début. 

Ajoutez un commentaire à votre pull request avec votre Nom, Prénom et nom docker hub.


commande : 
```sh
docker login
docker push < DOCKER ID >/tp1:1.0
```
