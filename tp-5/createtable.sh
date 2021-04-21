#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "postgress" --dbname "docker_db" <<-EOSQL
    CREATE USER docker;
    CREATE DATABASE docker;
    GRANT ALL PRIVILEGES ON DATABASE docker TO docker;
EOSQL