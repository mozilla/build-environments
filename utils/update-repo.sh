#!/usr/bin/env bash

# Commit and push to a branch (named automatic by default) if any dockerfiles
# have been modified

set -eux

BRANCH=${1-automated}
REPO=${2-origin}

MODIFIED_BUILDERS=$(git status | awk /Dockerfile/)
if [[ -n ${MODIFIED_BUILDERS} ]]; then
    git checkout -b ${1-automated}
    git add . --all
    git commit -m "Update Dockerfiles (automated)"
    git push ${REPO} ${BRANCH}
fi
