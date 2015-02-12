#!/usr/bin/env bash

# Publish new dockerfiles

set -eu

if [ $# -lt 1 ]; then
    echo "Usage: publish.sh <docker_prefix: e.g mrrrgn>"
    exit
fi

utils/generate-builder-dockerfiles.sh
utils/squash-and-publish.sh $1
