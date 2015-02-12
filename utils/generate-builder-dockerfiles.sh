#!/usr/bin/env bash

####
# Regenerate Dockerfiles for all of the available builders.
####

set -eux

# grab an up-to-date copy of mozharness for the configs
MOZHARNESS_URL="https://hg.mozilla.org/build/mozharness"

pushd /tmp
hg clone ${MOZHARNESS_URL} mozharness || \
    (cd mozharness && hg pull && hg update)
popd

# ensure, at least templorarily, that we're located in the script directory
pushd $(dirname "${BASH_SOURCE[0]}")

BUILDERS_DIR="../builders"
MOZHARNESS_DIR="/tmp/mozharness"

TEMPLATE="Dockerfile_mozharness_cfg.j2"

for build in $(ls ${BUILDERS_DIR}); do
    mozharness_config=$(find ${MOZHARNESS_DIR}/configs -name ${build}.py)
    compile_mozharness_config/compile_mozharness_config.py \
        ${mozharness_config} compile_mozharness_config/templates/${TEMPLATE} | \
        tee ${BUILDERS_DIR}/${build}/Dockerfile
done

popd
