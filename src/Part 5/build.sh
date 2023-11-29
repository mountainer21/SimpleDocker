#!/bin/bash
docker build -t serv:new .  
docker run -it -p 80:81 --name temp -d serv:new /bin/bash
curl localhost:80
curl localhost:80/status
open http://localhost:80/
export DOCKER_CONTENT_TRUST=1
dockle --accept-key=NGINX_GPGKEY serv:new
echo "****delete******"
read symbol
. ./clean.sh

