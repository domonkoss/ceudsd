#!/bin/sh

BASE_DIR=`pwd`

#docker network create influxdb
#docker run -d --name=influxdb --net=influxdb -v $BASE_DIR/db:/var/lib/influxdb influxdb
#docker run -d -p 8082:8888 -e "BASE_PATH=/influx" --net=influxdb chronograf --influxdb-url=http://influxdb:8086

docker run -d -p 8082:8083 -p 8086:8086 --name=influxdb --net=influxdb influxdb:1.0.2

