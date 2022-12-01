#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="datht20fpt/ml_traning"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run datht20fptapp --image=$dockerpath:latest --port=80 --labels="app=datht20fptapp,env=prod"

# Step 3:
# List kubernetes pods

kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward datht20fptapp 8000:80
