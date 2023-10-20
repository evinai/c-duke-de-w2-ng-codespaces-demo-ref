#!/usr/bin/env bash

# Build image
docker build --tag=clickhello .

# List docker images
docker image ls

# # Run container
docker run -it clickhello python app.py --name "Togay"