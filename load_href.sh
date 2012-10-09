#!/bin/bash

createdb hockey

psql hockey -f create_schema_href.sql

cp href/games.csv /tmp/href_games.csv
psql hockey -f load_href_games.sql
rm /tmp/href_games.csv

psql hockey -f create_href_teams.sql

exit 1
