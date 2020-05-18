#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
 dockerpath=docker-username/demolocal

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

#Optional step, if docker username is not there in actual docker path
docker tag docker $dockerpath 
# Step 3:
# Push image to a docker repository
docker push $dockerpath