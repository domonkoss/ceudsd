#!/bin/sh

BASE_DIR=`pwd`

docker run -d -p 8787:8787 -e ROOT=TRUE -v $BASE_DIR/files:/home/rstudio rocker/rstudio

