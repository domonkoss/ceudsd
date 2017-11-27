#!/bin/sh

BASE_DIR=`pwd`

docker run --restart unless-stopped -d -p 7474:7474 -v $BASE_DIR/data:/data -v $BASE_DIR/logs:/logs neo4j:3.0
