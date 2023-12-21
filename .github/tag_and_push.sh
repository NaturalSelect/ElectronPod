#!/bin/bash

TAG="commit-$(date +%s)"

docker tag $(docker images | grep electronpod | awk '{print $1}') naturalselect/electronpod:${TAG}
docker push naturalselect/electronpod:${TAG}
docker push naturalselect/electronpod:latest
