#!/bin/bash

# Echo the executed commands
# https://stackoverflow.com/questions/2853803/how-to-echo-shell-commands-as-they-are-executed
set -x
set -e

BASE_ROM="baserom_us.z64"
SPEC="spec_us"
UNDEFINED_SYMS="undefined_syms_us.txt"
ELF="hyp_us.elf"
TARGET_ROM="hyp_us.z64"

rm -f ver/us/build/"${ELF}" "${TARGET_ROM}"

./tools/extract_baserom.elf us ver/us/"${BASE_ROM}"

# Create build directories
mkdir -p ver/us/build/
find ver/us/asm/ -type d | sed 's/asm\//build\/asm\//' | xargs mkdir -p

# Binary copy the baserom
find ver/us/baserom -type f -name "*.bin" | sed 's/\.bin/\.o/ ; s/baserom\//build\/baserom\//' | xargs make

# Build asm
find ver/us/asm -type f -name "*.s" | sed 's/\.s/\.o/ ; s/asm\//build\/asm\//' | xargs make

# undefined syms
cpp -P ver/us/"${UNDEFINED_SYMS}" > ver/us/build/"${UNDEFINED_SYMS}"

# spec
cpp -P ver/us/"${SPEC}" > ver/us/build/"${SPEC}"
../mm/tools/buildtools/mkldscript ver/us/build/"${SPEC}" ver/us/build/ldscript_us.txt

# Link into an elf
mips-linux-gnu-ld -T ver/us/build/"${UNDEFINED_SYMS}" -T ver/us/build/ldscript_us.txt --no-check-sections --accept-unknown-input-arch --emit-relocs -Map ver/us/build/hyp_us.map -o ver/us/build/"${ELF}"

# Generate ROM
../mm/tools/buildtools/elf2rom -cic 6102 ver/us/build/"${ELF}" "${TARGET_ROM}"

# Check matching
md5sum "${TARGET_ROM}"
md5sum -c ver/us/checksum_us.md5
