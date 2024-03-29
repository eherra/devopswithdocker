#!/bin/sh

repository=git@github.com:$1.git
dockerhubrepo=$2

splitted=(${dockerhubrepo//// })

# clone and get inside project root
git clone $repository && cd "$(basename "$_" .git)"

# build docker file from root
docker build -t $dockerhubrepo .

# login to Docker Hub
docker login -u ${splitted[0]}

# after fill password on terminal

# push to Docker Hub
docker push $dockerhubrepo:latest