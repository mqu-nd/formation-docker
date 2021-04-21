# Formation Docker - TP5

## Gestion de la persistence des données

*Pour ce TP vous n'aurez pas d'image à déposer sur votre registry docker hub*

Objectif :

Type de stockage = Volume

Persister les données d'un postgres avec un accès sur la base de donnée depuis la machine hôte pour s'y connecter et y mener des actions, tels que création de table, ajout de ligne.

Montrer que les données sont bien pérsisté dans le conteneur pour ensuite les supprimer.

Ici nous souhaitons stocker ces données sur un volume dédié.

Tips : Accéder à la base de données avec un gestionnaire de base de données (ex : dbeaver, pgadmin, extension visual studio, etc)


