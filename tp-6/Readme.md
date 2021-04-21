# Base de données seule

## Creation de container

Dans le répertoire TP6 avec changement de répertoire pour les data de la bd

docker run -d --name TP6postgres -e POSTGRES_PASSWORD=tp6 \
  -e PGDATA=/var/lib/postgresql/data/tp6 \
  --mount type=bind,source=$(pwd),target=/var/lib/postgresql/data/tp6 postgres

## Test

idem TP5

## Conclusion

Les modifications persistent

# Base de données avec pgadmin

# Creation des containers

```
PS C:\Users\Administrateur\Documents\Docker\TP6> docker network create tp6net
cfba00fb9984f3291fd150a6d474afdc3b5a7f5437420fcf66da7e7177351324
PS C:\Users\Administrateur\Documents\Docker\TP6> docker run -d --name tp6postgres --network tp6net -e POSTGRES_PASSWORD=tp6 --mount type=bind,source=$(pwd),target=/var/lib/postgresql/data postgres
1bda0b9289c0f97d420bda5facb9f459bb6dcd77c0e6e3c90f8efc8ce8542c68
PS C:\Users\Administrateur\Documents\Docker\TP6> docker run -p 80:80 --name tp6pgadmin --network tp6net -e 'PGADMIN_DEFAULT_EMAIL=omaffeis@nowhere.com' -e 'PGADMIN_DEFAULT_PASSWORD=SuperSecret' -d dpage/pgadmin4
ed1f120830fc672c7afac1ae8396a1f7349a09f86f6b42944861f4ab66ab66f4
```

# Connexion à pgadmin

Ouverture d'un browser sur http://localhost
Connexion avec omaffeis@nowhere.com 
Configuration d'une connexion 'server' dans pgadmin avec l'hote tp6admin


