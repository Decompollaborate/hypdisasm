#!/usr/bin/env python3

import argparse
import sys

# TODO: Use file CSVs

# (file, romOffsetStart, romOffsetEnd, VRAM)
versionRomOffsets = { 
    "us": [
        ("makerom"   ,     0x0,   0x1050, 0x80000400-0x1000),
        ("boot"      ,  0x1050,  0xB3C70, 0x80000450),
        ("file_B3C70", 0xB3C70,  0xDCF60, 0x8010AAF0),
    ],
    "jp": [
        ("makerom"   ,     0x0,   0x1050, 0x80000400-0x1000),
        ("boot"      ,  0x1050,  0xAD7F0, 0x80000450),
    ]
}

def printAddress(fileName, offsetInFile, romAddress, vramAddress):
    if csv:
        print(f"{romAddress:06X},{vramAddress:08X},{fileName},{offsetInFile:06X}");
    else:
        print(f"ROM: {romAddress:06X} VRAM: {vramAddress:08X} located 0x{offsetInFile:X} into file {fileName}");


def vramdis(romAddress: int):
    for fileName, romOffsetStart, romOffsetEnd, fileVram in romOffsets:
        if romOffsetStart <= romAddress < romOffsetEnd:
            offsetInFile = romAddress - romOffsetStart
            vramAddress = offsetInFile + fileVram
            printAddress(fileName, offsetInFile, romAddress, vramAddress)
            # print(f"{fileName} {offsetInFile:06X} {vram:08X}")
            return

    print("Unknown ROM address", file=sys.stderr)
    exit(1)

def romdis(vramAddress: int):
    reversedOffsets = sorted(romOffsets, key=lambda x: x[3], reverse=True)
    for fileName, romOffsetStart, romOffsetEnd, fileVram in reversedOffsets:
        if vramAddress > fileVram:
            offsetInFile = vramAddress - fileVram
            romAddress = offsetInFile + romOffsetStart
            printAddress(fileName, offsetInFile, romAddress, vramAddress)
            # print(f"{fileName} {offsetInFile:06X} {romOffset:06X}")
            return

    print("Unknown VRAM address", file=sys.stderr)
    exit(1)


def main():
    parser = argparse.ArgumentParser(description="ROM - VRAM convertor tool")
    parser.add_argument("address", help="ROM or VRAM address (in hex)")
    parser.add_argument("-v", "--version", help="Version (default: us)", default="us", choices=["us","jp"])
    parser.add_argument("-c", help="Print csv format", action="store_true")
    args = parser.parse_args()

    global romOffsets
    romOffsets = versionRomOffsets[args.version]
    global csv
    csv = args.c

    address = int(args.address, 16);
    if address & 0x80000000:
        romdis(address)
    else:
        vramdis(address)


if __name__ == "__main__":
    main()
