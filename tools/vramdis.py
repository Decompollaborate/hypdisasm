#!/usr/bin/env python3

import argparse

# (file, romOffsetStart, romOffsetEnd, VRAM)
romOffsets = {
    ("makerom"   ,     0x0,   0x1050, 0x80000400-0x1000),
    ("boot"      ,  0x1050,  0xB3C70, 0x80000450),
    ("file_B3C70", 0xB3C70,  0xDCF60, 0x8010AAF0),
}

def vramdis(offset: int):
    for fileName, romOffsetStart, romOffsetEnd, fileVram in romOffsets:
        if romOffsetStart <= offset < romOffsetEnd:
            offsetInFile = offset - romOffsetStart
            vram = offsetInFile + fileVram
            print(f"{fileName} {offsetInFile:06X} {vram:08X}")
            return

    print("Unknown vram")

def romdis(vram: int):
    reversedOffsets = sorted(romOffsets, key=lambda x: x[3], reverse=True)
    for fileName, romOffsetStart, romOffsetEnd, fileVram in reversedOffsets:
        if vram > fileVram:
            offsetInFile = vram - fileVram
            offset = offsetInFile + romOffsetStart
            print(f"{fileName} {offsetInFile:06X} {offset:06X}")
            return

    print("Unknown vram")

def main():
    parser = argparse.ArgumentParser(description="ROM - VRAM convertor tool")
    parser.add_argument("number", help="ROM offset. In hex")
    parser.add_argument("-v", "--vram", help="Treat the input as VRAM instead of a ROM offset", action="store_true")
    # TODO: Add region/format
    args = parser.parse_args()

    if args.vram:
        romdis(int(args.number, 16))
    else:
        vramdis(int(args.number, 16))


if __name__ == "__main__":
    main()
