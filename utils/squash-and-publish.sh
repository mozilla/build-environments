#!/usr/bin/env bash

####
# Build all docker images in the builders directory, squash them,
# and push them to a remote repo.
####

set -eux

if [ $# -lt 1 ]; then
    echo "Usage: squash-and-publish.sh <docker_prefix: e.g mrrrgn>"
    exit
fi

pushd $(dirname "${BASH_SOURCE[0]}")

# isolate Dockerfiles which appear to have changed recently
MODIFIED_BUILDERS=$(git status | awk /Dockerfile/ | awk '{print $2}' | sort -r)

BUILDERS_DIR="../builders"
for build in ${MODIFIED_BUILDERS}; do
    builder_dir=$(dirname ${build} -z)
    builder_name=$(echo ${builder_dir} | awk -F "/" '{print $NF}')
    echo $builder_dir
    echo $builder_name
    # build the unsquashed image
    pushd ${builder_dir}
    docker build --tag="${builder_name}_unsquashed" .
    popd

    # squash that sucker
    ./squash-image.sh ${builder_name}_unsquashed -t "$1/${builder_name}"

    # remove the unsquashed image
    docker rmi ${builder_name}_unsquashed

    # publish
    docker push $1/${builder_name}

done
popd
