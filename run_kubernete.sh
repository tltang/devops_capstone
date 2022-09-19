#!/usr/bin/env bash

# This is your Docker ID/path
dockerpath=tltang168/helloworld-app:latest

# Run the Docker Hub container with kubernetes
kubectl create deployment helloworld-app --image=$dockerpath
kubectl expose deployment/helloworld-app --type="LoadBalancer" --port=80


# List kubernetes pods
kubectl get pods

# Forward the container port to a host
#kubectl port-forward --address 0.0.0.0 helloworld-app 80:80
