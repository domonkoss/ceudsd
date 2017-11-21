#!/bin/sh

BASE_DIR=`pwd`

docker network create influxdb
docker run -d --name=influxdb --net=influxdb -v $BASE_DIR/db:/var/lib/influxdb influxdb
docker run -d -p 8082:8888 -e "BASE_PATH=/influx" --net=influxdb chronograf --influxdb-url=http://influxdb:8086
