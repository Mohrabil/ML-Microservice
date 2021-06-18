#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=$DOCKERHUB_USERNAME/ml-microservice

# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
echo $DOCKERHUB_PASSWORD | docker login --password-stdin -u $DOCKERHUB_USERNAME
docker tag ml-microservice $DOCKERHUB_USERNAME/ml-microservice:latest

# Push image to a docker repository
docker image push $DOCKERHUB_USERNAME/ml-microservice:latest
