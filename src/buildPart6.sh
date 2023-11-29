#!/bin/bash
brew install docker-compose
docker-compose build
docker-compose up
echo ***********delete***********
read r
docker stop temp src-proxynginx-1
docker rm temp src-proxynginx-1
docker rmi src-nigelmes nginx

