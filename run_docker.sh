#!/usr/bin/env bash

## Complete the following steps to get Docker running locally
IMAGE_NAME=udacity-api
IMAGE_TAG=latest
LOCAL_PORT=8000
DOCKER_PORT=80

# Step 1:
# Build image and add a descriptive tag
docker build -t=${IMAGE_NAME}:${IMAGE_TAG} .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run -p ${LOCAL_PORT}:${DOCKER_PORT} ${IMAGE_NAME}:${IMAGE_TAG}