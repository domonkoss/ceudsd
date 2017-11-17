#!/bin/sh

BASE_DIR=`pwd`

docker run --name ceudsd-mysql --restart unless-stopped -p 3306:3306 -v $BASE_DIR/mysql/mysql-files:/var/lib/mysql-files/ -v $BASE_DIR/mysql/db:/var/lib/mysql -v $BASE_DIR/mysql/docker-entrypoint-initdb.d:/docker-entrypoint-initdb.d -e MYSQL_ROOT_PASSWORD=ceudsd666 -d mysql/mysql-server:5.7
docker run -p 80:8080 --restart unless-stopped -v $BASE_DIR/zeppelin/conf:/zeppelin/conf -v $BASE_DIR/zeppelin/logs:/logs -v $BASE_DIR/zeppelin/interpreter/mysql:/zeppelin/interpreter/mysql -v $BASE_DIR/zeppelin/notebook:/notebook -e ZEPPELIN_LOG_DIR='/logs' -e ZEPPELIN_NOTEBOOK_DIR='/notebook' --link ceudsd-mysql:mysql --name zeppelin -d apache/zeppelin:0.7.3
