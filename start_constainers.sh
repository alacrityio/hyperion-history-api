#!/bin/bash

cd docker
docker stop hyperion-indexer
docker stop hyperion-api
docker rm hyperion-indexer
docker rm hyperion-api
docker-compose up -d
docker-compose logs -f | grep indexer

