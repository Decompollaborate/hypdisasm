#!/bin/bash

# Echo the executed commands
# https://stackoverflow.com/questions/2853803/how-to-echo-shell-commands-as-they-are-executed
set -x
set -e

if [[ $# -le 0 ]]
then
    echo "Usage: $0 [us|jp]"
    exit 1
fi

VERSION=$1

# Build ROM
make VERSION=${VERSION} ELF2ROM=../mm/tools/buildtools/elf2rom MKLDSCRIPT=../mm/tools/buildtools/mkldscript
