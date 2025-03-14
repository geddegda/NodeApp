#! /bin/bash

echo 'Starting deployment...'
aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 994233153404.dkr.ecr.eu-central-1.amazonaws.com
docker build -t 994233153404.dkr.ecr.eu-central-1.amazonaws.com/my-node-app:latest .
docker push 994233153404.dkr.ecr.eu-central-1.amazonaws.com/my-node-app:latest
docker image rm 994233153404.dkr.ecr.eu-central-1.amazonaws.com/my-node-app:latest
