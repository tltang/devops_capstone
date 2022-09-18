#!/usr/bin/env bash

COMMIT_HASH=$(git log -1 --pretty=%h)
dockerpath=tltang168/helloworld-app

# Run the Docker Hub container with kubernetes
kubectl set image deployments/helloworld-app helloworld-app=tltang168/helloworld-app:$COMMIT_HASH

# List kubernetes pods
kubectl describe pods
