#!/usr/bin/env bash

# Quickly get an interactive shell

if [ ! $# -gt 1 ]; then
    echo "Usage: login-to-image.sh <image_name>"
fi
docker run -i -t -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --rm ${@:2} $1 /bin/bash
