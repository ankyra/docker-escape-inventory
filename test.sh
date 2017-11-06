#!/bin/bash -e

docker run --rm -t $INPUT_docker_repository$INPUT_docker_image:latest ls /usr/bin/escape-inventory
