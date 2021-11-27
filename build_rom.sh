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

# Create build directories
mkdir -p ver/${VERSION}/build/
find ver/${VERSION}/asm/ -type d | sed 's/asm\//build\/asm\//' | xargs mkdir -p

# Binary copy the baserom
find ver/${VERSION}/baserom -type f -name "*.bin" | sed 's/\.bin/\.o/ ; s/baserom\//build\/baserom\//' | xargs make VERSION=${VERSION}

# Build asm
find ver/${VERSION}/asm -type f -name "*.s" | sed 's/\.s/\.o/ ; s/asm\//build\/asm\//' | xargs make VERSION=${VERSION}

# Build ROM
make ELF2ROM=../mm/tools/buildtools/elf2rom MKLDSCRIPT=../mm/tools/buildtools/mkldscript
