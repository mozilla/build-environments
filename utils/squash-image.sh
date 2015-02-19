#!/usr/bin/env bash

set -eux

# flatten out an image!

if [ ! $# -gt 1 ]; then
    echo "Usage: ./squash-image.sh <image> <tag_name>"
    exit
fi
ID=$(docker run -d $1 /bin/bash)
docker export $ID | docker import - $2
docker kill $ID || true
docker rm $ID
