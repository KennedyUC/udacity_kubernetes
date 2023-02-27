#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
IMAGE_NAME=udacity-api
IMAGE_TAG=latest
DOCKERUSER=kennedyuche
DOCKERPATH=$DOCKERUSER/$IMAGE_NAME:$IMAGE_TAG

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag $IMAGE_NAME:$IMAGE_TAG $DOCKERPATH

# Step 3:
# Push image to a docker repository
docker push $DOCKERPATH