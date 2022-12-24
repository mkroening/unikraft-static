#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'
dir=${0%/*}

pushd "$dir" > /dev/null

platform=$1

kraft configure -F -m x86_64 -p $platform
kraft prepare
kraft build -j $(nproc)

make -f Makefile.$platform.static

popd > /dev/null
