#!/usr/bin/env bash

# Quickly get an interactive shell

if [ ! $# -gt 1 ]; then
    echo "Usage: login-to-image.sh <image_name>"
fi
docker run -i -t --name ${2-login_to_image} $1 /bin/bash
