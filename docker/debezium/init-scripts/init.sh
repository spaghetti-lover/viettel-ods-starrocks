#!/bin/sh

## Create the PostgreSQL connector
echo "Creating PostgreSQL connector..."
wget --quiet --tries=3 --output-document=/dev/null --post-file=/init-scripts/postgres-connector.json --header="Content-Type: application/json" http://debezium:8083/connectors

echo "Creating StarRocks connector..."
# curl -X POST -H "Content-Type: application/json" --data @/init-scripts/starrocks-connector.json http://debezium:8083/connectors
wget --quiet --tries=3 --output-document=/dev/null --post-file=/init-scripts/starrocks-connector.json --header="Content-Type: application/json" http://debezium:8083/connectors