#!/bin/bash

docker rm $(docker ps -a -f status=exited -q)
cd jenkins && make clean-images
make build && make run
cd ../dockprom && ADMIN_USER=admin ADMIN_PASSWORD=admin docker-compose up -d

