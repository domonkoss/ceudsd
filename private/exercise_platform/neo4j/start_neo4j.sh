#!/bin/sh

BASE_DIR=`pwd`

docker run --rm -d -p 8084:7474 -v $BASE_DIR/data:/data -v $BASE_DIR/logs:/logs neo4j:3.0
