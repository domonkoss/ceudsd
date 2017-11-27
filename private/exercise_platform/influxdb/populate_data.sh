#!/bin/sh

docker cp NOAA_data.txt influxdb:/tmp/
docker exec -it influxdb influx -import -path=/tmp/NOAA_data.txt -precision=s


