#!/usr/bin/env bash

export TAG=$1

docker-compose run pmapp sh -c 'python manage.py wait_for_db && python manage.py test'
docker-compose build
