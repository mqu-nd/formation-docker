-------------- https://qastack.fr/programming/37694987/connecting-to-postgresql-in-a-docker-container-from-outside ----------------
               https://hub.docker.com/_/postgres
               
- creation de container et volume postgres-data
docker run --name postgres-test -e POSTGRES_PASSWORD=password -p 5432:5432 -v postgres-data:/var/lib/postgresql/data -d postgres:latest

- lancement de postgres dans le containers
docker exec -it postgres-test psql -U postgres

- creation de la base de données
CREATE DATABASE test;
\c test
CREATE TABLE test_table(something int);
CREATE TABLE
INSERT INTO test_table VALUES (123);
SELECT * FROM test_table;


