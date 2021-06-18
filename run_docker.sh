#!/usr/bin/env bash

# Build image and add a descriptive tag
docker build --tag=ml-microservice .

# List docker images
docker image ls

# Run flask app
docker run -p 8080:80 ml-microservice
