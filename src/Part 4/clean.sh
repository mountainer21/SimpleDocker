#!/bin/bash
chmod +x clean.sh
docker stop temp
docker rm temp
docker rmi -f serv