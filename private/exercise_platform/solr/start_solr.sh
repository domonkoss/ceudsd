#!/bin/sh

BASE_DIR=`pwd`

docker run --name ceudsd-solr -d -p 8083:8983 -v $BASE_DIR/mycores:/opt/solr/server/solr/mycores -t solr
docker exec -it --user=solr ceudsd-solr bin/solr create -c dsdcore -n data_driven_schema_configs
docker cp flights.csv ceudsd-solr:/opt/solr
docker exec -it --user=solr ceudsd-solr bin/post -c dsdcore flights.cs

