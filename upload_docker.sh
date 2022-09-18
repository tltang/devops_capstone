#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Create dockerpath
dockerpath1=tltang168/helloworld-app:1.0
dockerpath2=tltang168/helloworld-app:latest

# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=tltang168
docker tag tltang168/helloworld-app $dockerpath1
docker tag tltang168/helloworld-app $dockerpath2

# Push image to a docker repository
docker push $dockerpath1
docker push $dockerpath2
