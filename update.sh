#!/bin/bash
apt update
apt upgrade -y

docker compose stop
docker compose down

docker compose pull
docker compose build
docker compose up -d
