#!/bin/sh

# replace main nginx file
rm /etc/nginx/sites-enabled/default
cp ./nginx/nginx.conf /etc/nginx/sites-enabled/default

