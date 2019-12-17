#!/bin/bash
echo "Dropping existing database"
mysql -u biobank -h $2 -P3306 -p$3 < delete-dbs.sql

for f in ./$1/*.sql
do 
    echo "Processing File $f"
    mysql -u biobank -h $2 -P3306 -p$3 < $f
done