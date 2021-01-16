#!/bin/bash

mongoimport \
--host localhost \
--username ${DB_USER} \
--password ${DB_PASS} \
--db ${MONGO_INITDB_DATABASE} \
--authenticationDatabase ${MONGO_INITDB_DATABASE} \
--collection=books \
--type json \
--file /docker-entrypoint-initdb.d/cscl_db.json \
