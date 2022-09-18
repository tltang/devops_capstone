#!/usr/bin/env bash

# Build image and add a descriptive tag
docker build --tag=tltang168/helloworld-app .

# List docker images
docker image ls

# Run flask app
docker run -p 80:80 helloworld-app
