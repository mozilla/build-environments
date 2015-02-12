#!/usr/bin/env bash

set -eux

# do all of the docker squash steps.
# REQUIRES: docker-squash: https://github.com/jwilder/docker-squash

if [ ! $# -gt 1 ]; then
    echo "Usage: ./squash-image.sh <image> [docker-squash options| ...]"
fi

docker save $1 > image.tar
sudo docker-squash -i image.tar -o squashed.tar ${@:2}
cat squashed.tar | docker load
rm image.tar
rm squashed.tar
