#!/usr/bin/env bash

# Quickly get an interactive shell

if [ ! $# -gt 1 ]; then
    echo "Usage: login-to-image.sh <image_name>"
fi
docker run -i -t --name login_to_image_$(date +%s) $1 /bin/bash
