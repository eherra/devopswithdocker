#!/bin/sh

repository=git@github.com:$1.git
dockerhubrepo=$2
username=$3
password=$4

# clone and get inside project root
git clone $repository && cd "$(basename "$_" .git)"

# build docker file from root
docker build -t $dockerhubrepo .

# login to Docker Hub
echo $password | docker login -u $username --password-stdin

# push to Docker Hub
docker push $dockerhubrepo:latest