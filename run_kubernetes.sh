#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="karansingh005/demolocal"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment kubedemo --image=$dockerpath

kubectl run "kubedemo" --generator=run-pod/v1 --image=$dockerpath --port=80 --labels app="kubedemo"


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward kubedemo 8000:80
