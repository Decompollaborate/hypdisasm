#!/usr/bin/env python3

import argparse
import sys
import os

def main():
    parser = argparse.ArgumentParser(description="")
    parser.add_argument("path", help="")
    parser.add_argument("-v", "--version", help="Version (default: us)", default="us", choices=["us","jp"])
    args = parser.parse_args()

    version = args.version
    # HACK until we change usa to us everywhere
    if version == "us" and not os.path.exists(os.path.join("tables", "us")):
        version = "usa"


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
                if filename == ".text":
                    section = "text"
                    fold = "asm"
                elif filename == ".data":
                    section = "data"
                    fold = "data"
                elif filename == ".rodata":
                    section = "rodata"
                    fold = "data"
                elif filename == ".bss":
                    section = "bss"
                    fold = "data"
                continue

            print(f'    include build/{fold}/{version}/{n}/{filename}.{section}.o')

        print("endseg")




if __name__ == "__main__":
    main()
