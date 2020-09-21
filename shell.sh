#!/bin/bash

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build . --tag pingpong-dockerfiletest --build-arg JAR_FILE=./target/devOps-heroku-pipeline-1.0-SNAPSHOT.jar
docker tag pingpong-dockerfiletest  opkris/pingpong-dockerfiletest
docker push opkris/pingpong-dockerfiletest