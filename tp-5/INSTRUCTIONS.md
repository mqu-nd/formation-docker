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

root@819b524f7312:/# psql --username postgres
psql (13.2 (Debian 13.2-1.pgdg100+1))
Type "help" for help.

## Modification BD et controle du résultat

Sur un terminal shell attaché au container TP5progres :

postgres=# CREATE DATABASE tp6;
CREATE DATABASE
postgres=# select * from pg_database;
  oid  |  datname  | datdba | encoding | datcollate |  datctype  | datistemplate | datallowconn | datconnlimit | datlastsysoid | datfrozenxid | datminmxid | dattablespace |               datacl
-------+-----------+--------+----------+------------+------------+---------------+--------------+--------------+---------------+--------------+------------+---------------+-------------------------------------
 13395 | postgres  |     10 |        6 | en_US.utf8 | en_US.utf8 | f             | t            |           -1 |         13394 |          479 |          1 |          1663 |
 16384 | tp5       |     10 |        6 | en_US.utf8 | en_US.utf8 | f             | t            |           -1 |         13394 |          479 |          1 |          1663 |
     1 | template1 |     10 |        6 | en_US.utf8 | en_US.utf8 | t             | t            |           -1 |         13394 |          479 |          1 |          1663 | {=c/postgres,postgres=CTc/postgres}
 13394 | template0 |     10 |        6 | en_US.utf8 | en_US.utf8 | t             | f            |           -1 |         13394 |          479 |          1 |          1663 | {=c/postgres,postgres=CTc/postgres}
 16385 | tp6       |     10 |        6 | en_US.utf8 | en_US.utf8 | f             | t            |           -1 |         13394 |          479 |          1 |          1663 |
(5 rows)

## Conclusion 

Si arret et relance du container: pas de perte des modifs
Si suppression du volumen tp5vol, perte des modfis
  
