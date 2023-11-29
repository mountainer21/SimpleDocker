#!/bin/bash

docker build -t serv .  
docker run -it -p 80:81 --name temp -d serv /bin/bash
curl localhost:80
curl localhost:80/status
open http://localhost:80/
# brew install docker
dockle --accept-key=NGINX_GPGKEY serv
echo "****delete******"
read symbol
. ./clean.sh
