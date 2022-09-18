#!/usr/bin/env bash

# Build image and add a descriptive tag
docker build -t helloworld-app .

# List docker images
docker images

# Run flask app
docker run -it --rm -p 80:80 helloworld-app
