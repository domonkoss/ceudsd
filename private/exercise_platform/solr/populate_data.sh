#!/bin/sh

docker exec -it --user=solr ceudsd-solr bin/solr create -c dsdcore -n data_driven_schema_configs
docker cp flights.csv ceudsd-solr:/opt/solr
docker exec -it --user=solr ceudsd-solr bin/post -c dsdcore flights.csv

