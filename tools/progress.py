#!/usr/bin/env python3

import argparse
import importlib
import re
get_map_functions_sizes = importlib.import_module("64scripts.get_map_functions_sizes")

def main():
    parser = argparse.ArgumentParser(description="")
    parser.add_argument("-v", "--version", help="Version (default: us)", default="us", choices=["us","jp"])
    args = parser.parse_args()

    funcRegex = re.compile(r"^func_[0-9A-F]{8}$")
    overlayFuncRegex = re.compile(r"^func_[0-9A-F]{8}_[0-9A-F]+$")

    identifiedSize = 0
    totalSize = 0

    identifiedFunctions = 0
    totalFunctions = 0

    filesList = get_map_functions_sizes.parseMapFile(f"ver/{args.version}/build/hyp_{args.version}.map")
    for file in filesList:
        for func in file.functions:
            totalSize += func.size
            totalFunctions += 1

            # print(func)
            if funcRegex.match(func.name) is None:
                if overlayFuncRegex.match(func.name) is None:
                    identifiedSize += func.size
                    identifiedFunctions += 1

    print(f"Identified functions: {identifiedFunctions/totalFunctions*100:>9.4f}% {identifiedFunctions:>6}/{totalFunctions:>6}")
    print(f"Identified size:      {identifiedSize/totalSize*100:>9.4f}% {identifiedSize:>6}/{totalSize:>6}")


if __name__ == "__main__":
    main()
