#!/usr/bin/env bash

# Step 1: Build image and add a descriptive tag
docker build -t ml-training:latest .
docker tag ml-training:latest datht20fpt/ml_traning:latest

# Step 2: List docker images
docker images ls

# Step 3: Run flask app
docker run -p 8000:80 ml-training:latest
