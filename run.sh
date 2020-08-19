#!/bin/bash

cd jenkins && make build && make run
cd ../dockprom && @ADMIN_USER=admin ADMIN_PASSWORD=admin docker-compose up -d

