# Création du container

`docker run -d --name TP5postgres -e POSTGRES_PASSWORD=tp5 -p 5432:5432 -v tp5vol:/var/lib/postgresql/data postgres`

ou

`docker run -d --name TP5postgres -e POSTGRES_PASSWORD=tp5 -p 5432:5432 --mount type=volume,source=tp5vol,target=/var/lib/postgresql/data postgres`

# Tests Docker

Sur un terminal shell attaché au container TP5progres :

```
root@17a47d246a63:/# psql --username postgres psql (13.2 (Debian 13.2-1.pgdg100+1)) Type "help" for help.
postgres=# select datname from pg_database; datname

postgres template1 template0 (3 rows)
postgres=# CREATE DATABASE tp5; CREATE DATABASE postgres=# select datname from pg_database; datname

postgres tp5 template1 template0 (4 rows)
```

# Conclusion

- Si arret et relance du container: pas de perte des modifs.
- Si suppression du volumen tp5vol, perte des modifs.
