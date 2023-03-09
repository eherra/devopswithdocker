#!/bin/sh

repository=$1
username=$2

# clone and get inside project root
git clone $repository && cd "$(basename "$_" .git)"

# build docker file from root
docker build -t $username/imagetask33 .

# login to Docker Hub
docker login -u "$username"

# after fill password on terminal

# push to Docker Hub
docker push $username/imagetask33:latest