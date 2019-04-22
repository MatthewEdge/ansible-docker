#!/bin/sh

# Spin up the Control machine and N build nodes
# Opens a bash prompt after provisioning for development
docker-compose down
docker-compose build --parallel
docker-compose up -d --scale buildnode=2
docker-compose run control bash
