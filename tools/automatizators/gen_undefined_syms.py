#!/usr/bin/env python3

import argparse
import sys
import os

def main():
    parser = argparse.ArgumentParser(description="Parses the context files outputed by the disassembler and prints the undefined symbols to the screen in a linker script compatible format")
    parser.add_argument("-v", "--version", help="Version (default: us)", default="us", choices=["us","jp"])
    args = parser.parse_args()

    version = args.version
    # HACK until we change usa to us everywhere
    if version == "us" and not os.path.exists(os.path.join("context", "us")):
        version = "usa"

    undefinedSymbols = dict()
    definedSymbols = {0x80000400: "entrypoint"}

    contextFolder = os.path.join("context", version)
    for files in os.listdir(contextFolder):
        contPath = os.path.join(contextFolder, files)
        with open(contPath) as f:
            for line in f:
                line = line.strip()
                row = line.split(",")

                if not line.startswith("symbol,") and not line.startswith("function,") and not line.startswith("fake_function,"):
                    continue

                vram = int(row[2], 16)
                name = row[3]
                if row[-1] == "True":
                    definedSymbols[vram] = name
                elif row[-1] == "False":
                    undefinedSymbols[vram] = name
                elif line.startswith("fake_function,"):
                    undefinedSymbols[vram] = name

    for vram, name in sorted(undefinedSymbols.items()):
        if vram in definedSymbols and name in definedSymbols.values():
            continue
        print(f"{name} = 0x{vram:08X};")

if __name__ == "__main__":
    main()
