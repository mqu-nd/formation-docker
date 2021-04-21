# Formation Docker - TP5

## Gestion de la persistence des données

*Pour ce TP vous n'aurez pas d'image à déposer sur votre registry docker hub*

Objectif :

Type de stockage = Volume

Persister les données d'un postgres avec un accès sur la base de donnée depuis la machine hôte pour s'y connecter et y mener des actions, tels que création de table, ajout de ligne.

Montrer que les données sont bien pérsisté dans le conteneur pour ensuite les supprimer.

Ici nous souhaitons stocker ces données sur un volume dédié.

Tips : Accéder à la base de données avec un gestionnaire de base de données (ex : dbeaver, pgadmin, extension visual studio, etc)


# Commandes

## Création du container

docker run -d --name TP5postgres -e  POSTGRES_PASSWORD=tp5 -v tp5vol:/var/lib/postgresql/data postgres

docker run -d --name TP5postgres -e  POSTGRES_PASSWORD=tp5 --mount type=volume,source=tp5vol,target=/var/lib/postgresql/data postgres 


root@819b524f7312:/# psql --username postgres
psql (13.2 (Debian 13.2-1.pgdg100+1))
Type "help" for help.

## Modification BD et controle du résultat

Sur un terminal shell attaché au container TP5progres :

root@17a47d246a63:/# psql --username postgres
psql (13.2 (Debian 13.2-1.pgdg100+1))
Type "help" for help.

postgres=# select datname from pg_database;
  datname  
-----------
 postgres
 template1
 template0
(3 rows)

postgres=# CREATE DATABASE tp5;
CREATE DATABASE
postgres=# select datname from pg_database;
  datname  
-----------
 postgres
 tp5
 template1
 template0
(4 rows)

## Conclusion 

Si arret et relance du container: pas de perte des modifs
Si suppression du volumen tp5vol, perte des modfis
  
