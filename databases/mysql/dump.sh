#/bin/bash

timestamp=$(date +%s)

if [ -z "$1" ]
then
    docker exec mysql_db_1 sh -c 'exec mysqldump --all-databases -uroot -psecret' > ./dumps/all-databases-$timestamp.sql
else
    docker exec mysql_db_1 sh -c 'exec mysqldump -uroot -psecret "$1"' > ./dumps/all-databases-$timestamp.sql
fi