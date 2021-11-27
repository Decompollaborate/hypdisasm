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

BASE_ROM="baserom_${VERSION}.z64"
SPEC="spec_${VERSION}"
UNDEFINED_SYMS="undefined_syms_${VERSION}.txt"
ELF="hyp_${VERSION}.elf"
TARGET_ROM="hyp_${VERSION}.z64"

rm -f ver/${VERSION}/build/"${ELF}" "${TARGET_ROM}"

./tools/extract_baserom.elf ${VERSION} ver/${VERSION}/"${BASE_ROM}"

# Create build directories
mkdir -p ver/${VERSION}/build/
find ver/${VERSION}/asm/ -type d | sed 's/asm\//build\/asm\//' | xargs mkdir -p

# Binary copy the baserom
find ver/${VERSION}/baserom -type f -name "*.bin" | sed 's/\.bin/\.o/ ; s/baserom\//build\/baserom\//' | xargs make VERSION=${VERSION}

# Build asm
find ver/${VERSION}/asm -type f -name "*.s" | sed 's/\.s/\.o/ ; s/asm\//build\/asm\//' | xargs make VERSION=${VERSION}

# undefined syms
cpp -P ver/${VERSION}/"${UNDEFINED_SYMS}" > ver/${VERSION}/build/"${UNDEFINED_SYMS}"
cpp -P ver/${VERSION}/libultra_syms.txt > ver/${VERSION}/build/libultra_syms.txt
cpp -P ver/${VERSION}/hardware_regs.txt > ver/${VERSION}/build/hardware_regs.txt

# spec
cpp -P ver/${VERSION}/"${SPEC}" > ver/${VERSION}/build/"${SPEC}"
../mm/tools/buildtools/mkldscript ver/${VERSION}/build/"${SPEC}" ver/${VERSION}/build/ldscript_${VERSION}.txt

# Link into an elf
mips-linux-gnu-ld -T ver/${VERSION}/build/"${UNDEFINED_SYMS}" -T ver/${VERSION}/build/libultra_syms.txt -T ver/${VERSION}/build/hardware_regs.txt -T ver/${VERSION}/build/ldscript_${VERSION}.txt --no-check-sections --accept-unknown-input-arch --emit-relocs -Map ver/${VERSION}/build/hyp_${VERSION}.map -o ver/${VERSION}/build/"${ELF}"

# Generate ROM
../mm/tools/buildtools/elf2rom -cic 6102 ver/${VERSION}/build/"${ELF}" "${TARGET_ROM}"

# Check matching
md5sum "${TARGET_ROM}"
md5sum -c ver/${VERSION}/checksum_${VERSION}.md5
