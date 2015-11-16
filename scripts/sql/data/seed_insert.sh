#!/bin/sh
# command: sh seed_insert.sh

# mysql execute command (to change password by each person)
CMD_MYSQL="mysql -u root -proot chefk"

# get full_path
DIR=$(cd $(dirname $0); pwd)

# set sql file
SQL_INSERT=$DIR/seed_for_development.sql;

# execute sql
echo "***** seed_for_development.sql start *****"
$CMD_MYSQL < $SQL_INSERT
