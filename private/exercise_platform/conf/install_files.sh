#!/bin/sh

# replace main nginx file
rm -rf /etc/nginx/sites-enabled/default
rm -rf /etc/nginx/nginx.conf

cp ./nginx/nginx.conf /etc/nginx/nginx.conf
cp ./nginx/default /etc/nginx/sites-enabled/default

# replace the main webpage
rm -rf /var/www/http/index.html
cp ./http/index.html /var/www/http/

