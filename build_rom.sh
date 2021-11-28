#!/bin/bash

set -e

if [[ $# -le 0 ]]
then
    echo "Usage: $0 [us|jp]"
    exit 1
fi

VERSION=$1

# Build ROM
make VERSION=${VERSION} ELF2ROM=../mm/tools/buildtools/elf2rom MKLDSCRIPT=../mm/tools/buildtools/mkldscript
