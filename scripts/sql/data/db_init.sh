#!/bin/sh

# mysql execute command (to change password by each person)
CMD_MYSQL="mysql -u root -proot chefk"

# get full_path
DIR=$(cd $(dirname $0); pwd)

# set sql file
SQL_INSERT_CO=$DIR/country.sql;
SQL_INSERT_CC=$DIR/country_charity.sql;
SQL_INSERT_CF=$DIR/country_fact.sql;
SQL_INSERT_IN=$DIR/ingredient.sql;
SQL_INSERT_RE=$DIR/recipe.sql;
SQL_INSERT_RM=$DIR/recipe_image.sql;
SQL_INSERT_RI=$DIR/recipe_ingredient.sql;
SQL_INSERT_RS=$DIR/recipe_step.sql;
SQL_INSERT_RG=$DIR/recipe_tag.sql;
SQL_INSERT_RT=$DIR/recipe_tool.sql;
SQL_INSERT_TG=$DIR/tag.sql;
SQL_INSERT_TL=$DIR/tool.sql;
SQL_INSERT_TY=$DIR/type.sql;
SQL_INSERT_UN=$DIR/unit.sql;

# execute sql
echo "***** country.sql start *****"
$CMD_MYSQL < $SQL_INSERT_CO
echo "***** country_charity.sql *****"
$CMD_MYSQL < $SQL_INSERT_CC
echo "***** country_fact.sql *****"
$CMD_MYSQL < $SQL_INSERT_CF
echo "***** ingredient.sql *****"
$CMD_MYSQL < $SQL_INSERT_IN
echo "***** recipe.sql *****"
$CMD_MYSQL < $SQL_INSERT_RE
echo "***** recipe_image.sql *****"
$CMD_MYSQL < $SQL_INSERT_RM
echo "***** recipe_ingredient.sql *****"
$CMD_MYSQL < $SQL_INSERT_RI
echo "***** recipe_step.sql *****"
$CMD_MYSQL < $SQL_INSERT_RS
echo "***** recipe_tag.sql *****"
$CMD_MYSQL < $SQL_INSERT_RG
echo "***** recipe_tool.sql *****"
$CMD_MYSQL < $SQL_INSERT_RT
echo "***** tag.sql *****"
$CMD_MYSQL < $SQL_INSERT_TG
echo "***** tool.sql *****"
$CMD_MYSQL < $SQL_INSERT_TL
echo "***** type.sql *****"
$CMD_MYSQL < $SQL_INSERT_TY
echo "***** unit.sql *****"
$CMD_MYSQL < $SQL_INSERT_UN
