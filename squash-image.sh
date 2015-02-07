#!/usr/bin/env bash

# do all of the docker squash steps....

if [ ! $# -gt 1 ]; then
    echo "Usage: ./squash-image.sh <image> [docker-squash options| ...]"
fi

docker save $1 > image.tar
sudo docker-squash -i image.tar -o squashed.tar ${@:2}
cat squashed.tar | docker load
rm image.tar
rm squashed.tar
