#!/bin/bash

# Echo the executed commands
# https://stackoverflow.com/questions/2853803/how-to-echo-shell-commands-as-they-are-executed
set -x

BASE_ROM="baserom_us.z64"
SPEC="spec_us"
UNDEFINED_SYMS="undefined_syms_us.txt"
ELF="hyp_us.elf"
TARGET_ROM="hyp_us.z64"

rm -f "${ELF}" "${TARGET_ROM}"

./tools/extract_baserom.elf us "${BASE_ROM}"

# Create build directories
mkdir -p build/baserom/us
find asm/us/ -type d | sed 's/asm\//build\/asm\//' | xargs mkdir -p
find data/us/ -type d | sed 's/data\//build\/data\//' | xargs mkdir -p

# Binary copy the baserom
find baserom/us/ -type f -name "*.bin" | sed 's/\.bin/\.o/ ; s/baserom\//build\/baserom\//' | xargs make

# Build asm
find asm/us/ -type f -name "*.s" | sed 's/\.s/\.o/ ; s/asm\//build\/asm\//' | xargs make
find data/us/ -type f -name "*.s" | sed 's/\.s/\.o/ ; s/data\//build\/data\//' | xargs make

# undefined syms
cpp -P "${UNDEFINED_SYMS}" > build/"${UNDEFINED_SYMS}"

# spec
cpp -P "${SPEC}" > build/"${SPEC}"
../mm/tools/buildtools/mkldscript build/"${SPEC}" build/ldscript_us.txt

# Link into an elf
mips-linux-gnu-ld -T build/"${UNDEFINED_SYMS}" -T build/ldscript_us.txt --no-check-sections --accept-unknown-input-arch --emit-relocs -Map build/hyp_us.map -o "${ELF}"

# Generate ROM
../mm/tools/buildtools/elf2rom -cic 6102 "${ELF}" "${TARGET_ROM}"

# Check matching
md5sum "${TARGET_ROM}"
md5sum -c checksum_us.md5
