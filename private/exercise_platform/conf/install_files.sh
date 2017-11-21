#!/bin/sh

# replace main nginx file
rm -rf /etc/nginx/sites-enabled/default
cp ./nginx/nginx.conf /etc/nginx/sites-enabled/default

# replace the main webpage
rm -rf /var/www/http/index.html
cp ./http/index.html /var/www/http/

