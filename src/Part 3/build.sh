#!/bin/bash
docker pull nginx
docker run -d -p 81:81 --name temp nginx
docker cp ./hello.c temp:etc/nginx/
docker cp ./nginx.conf temp:/etc/nginx/
docker exec temp apt-get update
docker exec temp apt-get install -y gcc spawn-fcgi libfcgi-dev
docker exec temp gcc /etc/nginx/hello.c -o /etc/nginx/webserver -l fcgi
docker exec temp spawn-fcgi -p 8080 /etc/nginx/webserver
docker exec temp nginx -s reload
open http://localhost:81/
echo "****delete******"
read symbol
. ./clean.sh
