#!/bin/bash

# Echo the executed commands
# https://stackoverflow.com/questions/2853803/how-to-echo-shell-commands-as-they-are-executed
set -x

BASE_ROM="baserom_usa.z64"
SPEC="spec_usa"
UNDEFINED_SYMS="undefined_syms_usa.txt"
ELF="hyp_usa.elf"
TARGET_ROM="hyp_usa.z64"

rm -f "${ELF}" "${TARGET_ROM}"

./tools/extract_baserom.elf usa "${BASE_ROM}"

# Create build directories
mkdir -p build/baserom/usa
find asm/usa/ -type d | sed 's/asm\//build\/asm\//' | xargs mkdir -p
find data/usa/ -type d | sed 's/data\//build\/data\//' | xargs mkdir -p

# Binary copy the baserom
find baserom/usa/ -type f -name "*.bin" | sed 's/\.bin/\.o/ ; s/baserom\//build\/baserom\//' | xargs make

# Build asm
find asm/usa/ -type f -name "*.s" | sed 's/\.s/\.o/ ; s/asm\//build\/asm\//' | xargs make
find data/usa/ -type f -name "*.s" | sed 's/\.s/\.o/ ; s/data\//build\/data\//' | xargs make

# undefined syms
cpp -P "${UNDEFINED_SYMS}" > build/"${UNDEFINED_SYMS}"

# spec
cpp -P "${SPEC}" > build/"${SPEC}"
../mm/tools/buildtools/mkldscript build/"${SPEC}" build/ldscript_usa.txt

# Link into an elf
mips-linux-gnu-ld -T build/"${UNDEFINED_SYMS}" -T build/ldscript_usa.txt --no-check-sections --accept-unknown-input-arch --emit-relocs -Map build/hyp_usa.map -o "${ELF}"

# Generate ROM
../mm/tools/buildtools/elf2rom -cic 6102 "${ELF}" "${TARGET_ROM}"

# Check matching
md5sum "${TARGET_ROM}"
md5sum -c checksum_usa.md5
