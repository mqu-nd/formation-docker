# Formation Docker - TP7

## Création d'un stack pour le developpement

Objectif :

Dans ce TP, vous trouverez une application qui vous faudra dockerizer pour favoriser un environement de developpement.

Voici comment elle est construite :
- Back : node js (v12)
- Front : React JS 
- Base de donnée, au choix en fonction de paramètre 
  - sqlite (par défaut)
  - mysql => Pour activer la base de donnée ajouter les variables d'environements suivantes 
    - HOST
    - USER
    - PASSWORD
    - DB

