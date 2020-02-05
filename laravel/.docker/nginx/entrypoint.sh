#!/bin/ash
rm /etc/nginx/conf.d/default.conf
cp /var/www/.docker/nginx/nginx.conf /etc/nginx/conf.d

nginx -g "daemon off;"
