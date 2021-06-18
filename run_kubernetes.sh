#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
# dockerpath=<>
dockerpath=$DOCKERHUB_USERNAME/ml-microservice

# Run the Docker Hub container with kubernetes
kubectl run-container ml-microservice \
    --generator=run-pod/v1 \
    --image=$dockerpath \
    --port=80 \
    --labels app=ml-microservice

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward ml-microservice 8000:80
