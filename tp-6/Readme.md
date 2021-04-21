# Creation de container

Dans le répertoire TP6 avec changement de répertoire pour les data de la bd

docker run -d --name TP6postgres -e POSTGRES_PASSWORD=tp6 \
  -e PGDATA=/var/lib/postgresql/data/tp6 \
  --mount type=bind,source=$(pwd),target=/var/lib/postgresql/data/tp6 postgres

#Test

idem TP5

# Conclusion

Les modifications persistent

