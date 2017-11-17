#!/bin/bash

docker-compose -f /opt/docker/docker-compose.yml stop fluentd
docker rm fluentd
docker rmi hub.cargoonline.ru/fluentd
make
docker-compose -f /opt/docker/docker-compose.yml up -d
docker-compose -f /opt/docker/docker-compose.yml logs -f
