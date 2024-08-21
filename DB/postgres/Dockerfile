FROM postgres:latest

COPY subject subject/
COPY 00-table.sql /docker-entrypoint-initdb.d/
COPY 01-customers_table.sql /docker-entrypoint-initdb.d/
COPY 03-remove_duplicates.sql /docker-entrypoint-initdb.d/
COPY 04-fusion.sql /docker-entrypoint-initdb.d/