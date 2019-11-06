#!/bin/bash

./data_dir.sh
set -e

echo "Starting LAMP with WordPress"

docker build -t "i_web:0" $(pwd)/web
docker build -t "i_mysql:0" $(pwd)/mysql

docker run -v $(pwd)/_data/mysql_home:/var/lib/mysql -h cmysql --name mysql-container  --rm -d i_mysql:0
docker run -v $(pwd)/_data/html:/var/www/html -h cweb --name web-container -p 80:80 --link mysql-container --rm -d i_web:0

