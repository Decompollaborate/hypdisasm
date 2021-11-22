#!/usr/bin/env python3

import argparse
import sys
import os

def main():
    parser = argparse.ArgumentParser(description="Generates a spec seg based on a csv file")
    parser.add_argument("path", help="Path to a csv file with the splits of a file")
    parser.add_argument("-v", "--version", help="Version (default: us)", default="us", choices=["us","jp"])
    args = parser.parse_args()

    version = args.version

    with open(args.path) as f:
        head, tail = os.path.split(args.path)
        n = tail.split("files_")[1].split(".csv")[0]

        print("beginseg")
        print(f'    name "{n}"')

        section = "text"
        fold = "asm"

        for line in f:
            line = line.strip()
            line = line.split("#")[0]

            if len(line) == 0:
                continue

            offset, vram, filename = line.split(",")
            if filename.startswith("."):
                if filename == ".end":
                    continue
                print()
                if filename == ".text":
                    section = "text"
                    fold = "asm"
                    print("    // text")
                elif filename == ".data":
                    section = "data"
                    fold = "data"
                    print("    // data")
                elif filename == ".rodata":
                    section = "rodata"
                    fold = "data"
                    print("    // rodata")
                elif filename == ".bss":
                    section = "bss"
                    fold = "data"
                    print("    // bss")
                continue

            print(f'    include "build/{fold}/{version}/{n}/{filename}.{section}.o"')

        print("endseg")




if __name__ == "__main__":
    main()
