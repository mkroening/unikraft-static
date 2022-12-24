#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'
dir=${0%/*}

pushd "$dir" > /dev/null

rm -rf \
    build \
    .config \
    helloworld_static* \
    libukstatic*

popd > /dev/null
