#!/bin/bash
set -e
service mysql start
mysql -uroot -p < pokemon.sql
service mysql stop