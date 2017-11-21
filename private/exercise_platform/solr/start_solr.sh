#!/bin/sh

BASE_DIR=`pwd`

docker run --restart unless-stopped --name ceudsd-solr -d -p 8083:8983 -v $BASE_DIR/mycores:/opt/solr/server/solr/mycores -t solr

