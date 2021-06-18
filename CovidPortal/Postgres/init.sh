#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER cpuser with encrypted password 'cpuser';
    CREATE DATABASE covidportal;
    GRANT ALL PRIVILEGES ON DATABASE covidportal TO cpuser;
EOSQL
