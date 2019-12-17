#!/bin/bash
echo "Dropping existing database"
mysqlsh --mysql --sql -u biobank -h $2 -P3306 -p$3 < delete-dbs.sql

for f in ./$1/*.sql
do 
    echo "Processing File $f"
    mysqlsh --mysql --sql -u biobank -h $2 -P3306 -p$3 < $f
done