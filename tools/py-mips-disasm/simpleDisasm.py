#!/usr/bin/python3

from __future__ import annotations

import argparse

from mips.Utils import *
from mips.GlobalConfig import GlobalConfig, printQuietless, printVerbose
from mips.MipsText import Text
from mips.MipsData import Data
from mips.MipsRodata import Rodata
from mips.MipsBss import Bss
from mips.MipsContext import Context


def simpleDisasmFile(array_of_bytes: bytearray, outputPath: str, offsetStart: int, offsetEnd: int, vram: int, context: Context, isHandwritten: bool=False, newStuffSuffix: str=""):
    head, tail = os.path.split(outputPath)

    if offsetEnd >= 0:
        printVerbose(f"Parsing until offset {toHex(offsetEnd, 2)}")
        array_of_bytes = array_of_bytes[:offsetEnd]
    if offsetStart >= 0:
        printVerbose(f"Parsing since offset {toHex(offsetStart, 2)}")
        array_of_bytes = array_of_bytes[offsetStart:]

    f = Text(array_of_bytes, tail, "ver", context)
    f.isHandwritten = isHandwritten
    f.newStuffSuffix = newStuffSuffix

    if vram >= 0:
        printVerbose(f"Using VRAM {toHex(vram, 2)}")
        f.setVRamStart(vram)

    printVerbose("Analyzing")
    f.analyze()
    f.setCommentOffset(offsetStart)

    printVerbose()
    printVerbose(f"Found {f.nFuncs} functions.")

    nBoundaries = len(f.fileBoundaries)
    if nBoundaries > 0:
        printVerbose(f"Found {nBoundaries} file boundaries.")

        for i in range(len(f.fileBoundaries)-1):
            start = f.fileBoundaries[i]
            end = f.fileBoundaries[i+1]

            functionsInBoundary = 0
            for func in f.functions:
                funcOffset = func.vram - vram
                if start <= funcOffset < end:
                    functionsInBoundary += 1
            printVerbose("\t", toHex(start, 6)[2:], toHex(end-start, 3)[2:], "\t functions:", functionsInBoundary)

        start = f.fileBoundaries[-1]
        end = f.size + f.offset

        functionsInBoundary = 0
        for func in f.functions:
            funcOffset = func.vram - vram
            if start <= funcOffset < end:
                functionsInBoundary += 1
        printVerbose("\t", toHex(start, 6)[2:], toHex(end-start, 3)[2:], "\t functions:", functionsInBoundary)

        printVerbose()

    return f


def simpleDisasmData(array_of_bytes: bytearray, outputPath: str, offsetStart: int, offsetEnd: int, vram: int, context: Context, isHandwritten: bool=False, newStuffSuffix: str=""):
    head, tail = os.path.split(outputPath)

    if offsetEnd >= 0:
        printVerbose(f"Parsing until offset {toHex(offsetEnd, 2)}")
        array_of_bytes = array_of_bytes[:offsetEnd]
    if offsetStart >= 0:
        printVerbose(f"Parsing since offset {toHex(offsetStart, 2)}")
        array_of_bytes = array_of_bytes[offsetStart:]

    f = Data(array_of_bytes, tail, "ver", context)
    f.isHandwritten = isHandwritten
    f.newStuffSuffix = newStuffSuffix

    if vram >= 0:
        printVerbose(f"Using VRAM {toHex(vram, 2)}")
        f.setVRamStart(vram)

    printVerbose("Analyzing")
    f.analyze()
    f.setCommentOffset(offsetStart)

    printVerbose()

    return f


def simpleDisasmRodata(array_of_bytes: bytearray, outputPath: str, offsetStart: int, offsetEnd: int, vram: int, context: Context, isHandwritten: bool=False, newStuffSuffix: str=""):
    head, tail = os.path.split(outputPath)

    if offsetEnd >= 0:
        printVerbose(f"Parsing until offset {toHex(offsetEnd, 2)}")
        array_of_bytes = array_of_bytes[:offsetEnd]
    if offsetStart >= 0:
        printVerbose(f"Parsing since offset {toHex(offsetStart, 2)}")
        array_of_bytes = array_of_bytes[offsetStart:]

    f = Rodata(array_of_bytes, tail, "ver", context)
    f.isHandwritten = isHandwritten
    f.newStuffSuffix = newStuffSuffix

    if vram >= 0:
        printVerbose(f"Using VRAM {toHex(vram, 2)}")
        f.setVRamStart(vram)

    printVerbose("Analyzing")
    f.analyze()
    f.setCommentOffset(offsetStart)

    printVerbose()

    return f


def simpleDisasmBss(array_of_bytes: bytearray, outputPath: str, offsetStart: int, offsetEnd: int, vram: int, context: Context, isHandwritten: bool=False, newStuffSuffix: str=""):
    head, tail = os.path.split(outputPath)

    if vram < 0:
        return

    f = Bss(vram, vram + offsetEnd - offsetStart, tail, "ver", context)
    f.isHandwritten = isHandwritten
    f.newStuffSuffix = newStuffSuffix

    if vram >= 0:
        printVerbose(f"Using VRAM {toHex(vram, 2)}")
        f.setVRamStart(vram)

    printVerbose("Analyzing")
    f.analyze()
    f.setCommentOffset(offsetStart)

    printVerbose()

    return f


def writeSection(x):
    path, f = x

    head, tail = os.path.split(path)

    # Create directories
    if head != "":
        os.makedirs(head, exist_ok=True)

    f.saveToFile(path)

    return path


def disassemblerMain():
    description = "General purpose N64-mips disassembler"
    parser = argparse.ArgumentParser(description=description)

    parser.add_argument("binary", help="Path to input binary")
    parser.add_argument("output", help="Path to output")

    parser.add_argument("--data-output", help="Path to output the data and rodata disassembly")

    parser.add_argument("--start", help="", default="0")
    parser.add_argument("--end", help="",  default="0xFFFFFF")
    parser.add_argument("--vram", help="Set the VRAM address", default="-1")

    parser.add_argument("--save-context", help="Saves the context to a file. The provided filename will be suffixed with the corresponding version.", metavar="FILENAME")

    parser.add_argument("--functions", help="Path to a functions csv", action="append")
    parser.add_argument("--variables", help="Path to a variables csv", action="append")
    parser.add_argument("--constants", help="Path to a constants csv", action="append")
    parser.add_argument("--file-splits", help="Path to a file splits csv")

    parser.add_argument("--add-filename", help="Adds the filename of the file to the generated function/variable name")

    parser.add_argument("--disasm-unknown", help="Force disassembly of functions with unknown instructions",  action="store_true")

    parser.add_argument("-v", "--verbose", help="Enable verbose mode",  action="store_true")
    parser.add_argument("-q", "--quiet", help="Silence most output",  action="store_true")

    parser.add_argument("--disable-asm-comments", help="Disables the comments in assembly code", action="store_true")
    parser.add_argument("--write-binary", help="Produce a binary of the processed file", action="store_true")
    parser.add_argument("--nuke-pointers", help="Use every technique available to remove pointers", action="store_true")

    args = parser.parse_args()

    GlobalConfig.REMOVE_POINTERS = args.nuke_pointers
    GlobalConfig.IGNORE_BRANCHES = args.nuke_pointers
    GlobalConfig.IGNORE_04 = args.nuke_pointers
    GlobalConfig.IGNORE_06 = args.nuke_pointers
    GlobalConfig.IGNORE_80 = args.nuke_pointers
    GlobalConfig.WRITE_BINARY = args.write_binary
    GlobalConfig.ASM_COMMENT = not args.disable_asm_comments
    GlobalConfig.PRODUCE_SYMBOLS_PLUS_OFFSET = True
    GlobalConfig.TRUST_USER_FUNCTIONS = True
    GlobalConfig.DISASSEMBLE_UNKNOWN_INSTRUCTIONS = args.disasm_unknown
    GlobalConfig.VERBOSE = args.verbose
    GlobalConfig.QUIET = args.quiet

    newStuffSuffix = args.add_filename
    if newStuffSuffix is None:
        newStuffSuffix = ""

    context = Context()
    if args.functions is not None:
        for funcsPath in args.functions:
            context.readFunctionsCsv(funcsPath)
    if args.variables is not None:
        for varsPath in args.variables:
            context.readVariablesCsv(varsPath)
    if args.constants is not None:
        for constantsPath in args.constants:
            context.readConstantsCsv(constantsPath)

    array_of_bytes = readFileAsBytearray(args.binary)
    input_name = os.path.splitext(os.path.split(args.binary)[1])[0]

    processedFiles = []
    lenLastLine = 80

    if args.file_splits is None:
        f =  simpleDisasmFile(array_of_bytes, args.output, int(args.start, 16), int(args.end, 16), int(args.vram, 16), context, False, newStuffSuffix)
        processedFiles.append((args.output, f))
    else:
        splits = readCsv(args.file_splits)
        splits = [x for x in splits if len(x) > 0]

        splitsCount = len(splits)

        modeCallback = None
        outputPath = args.output
        for i, row in enumerate(splits):
            offset, vram, fileName = row

            isHandwritten = False
            offset = offset.upper()
            if offset[-1] == "H":
                isHandwritten = True
                offset = offset[:-1]

            if fileName == ".text":
                modeCallback = simpleDisasmFile
                outputPath = args.output
                continue
            elif fileName == ".data":
                modeCallback = simpleDisasmData
                outputPath = args.data_output
                continue
            elif fileName == ".rodata":
                modeCallback = simpleDisasmRodata
                outputPath = args.data_output
                continue
            elif fileName == ".bss":
                modeCallback = simpleDisasmBss
                outputPath = args.data_output
                continue
            elif fileName == ".end":
                break

            vram = int(vram, 16)
            offset = int(offset, 16)
            nextOffset = 0xFFFFFF
            if i + 1 < len(splits):
                if splits[i+1][2] == ".end":
                    nextOffsetStr = splits[i+1][0]
                elif splits[i+1][2].startswith("."):
                    nextOffsetStr = splits[i+2][0]
                else:
                    nextOffsetStr = splits[i+1][0]
                if nextOffsetStr.upper()[-1] == "H":
                    nextOffsetStr = nextOffsetStr[:-1]
                nextOffset = int(nextOffsetStr, 16)

            if fileName == "":
                fileName = f"{input_name}_{vram:08X}"

            if modeCallback is None:
                eprint("Error! Section not set!")
                exit(1)
            f = modeCallback(array_of_bytes, f"{outputPath}/{fileName}", offset, nextOffset, vram, context, isHandwritten, newStuffSuffix)
            processedFiles.append((f"{outputPath}/{fileName}", f))

            printQuietless(lenLastLine*" " + "\r", end="")
            progressStr = f" Analyzing: {i/splitsCount:%}. File: {fileName}\r"
            lenLastLine = max(len(progressStr), lenLastLine)
            printQuietless(progressStr, end="", flush=True)

            printVerbose()

    processedFilesCount = len(processedFiles)
    if args.nuke_pointers:
        printVerbose("Nuking pointers...")
        for i, (path, f) in enumerate(processedFiles):
            printVerbose(f"Nuking pointers of {path}")
            printQuietless(lenLastLine*" " + "\r", end="")
            progressStr = f" Nuking pointers: {i/processedFilesCount:%}. File: {path}\r"
            lenLastLine = max(len(progressStr), lenLastLine)
            printQuietless(progressStr, end="")

            f.removePointers()

    printVerbose("Writing files...")
    for i, (path, f) in enumerate(processedFiles):
        printVerbose(f"Writing {path}")
        printQuietless(lenLastLine*" " + "\r", end="")
        progressStr = f" Writing: {i/processedFilesCount:%}. File: {path}\r"
        lenLastLine = max(len(progressStr), lenLastLine)
        printQuietless(progressStr, end="")

        writeSection((path, f))

    if args.save_context is not None:
        head, tail = os.path.split(args.save_context)
        if head != "":
            os.makedirs(head, exist_ok=True)
        name = tail
        extension = ""
        if "." in tail:
            *aux, extension = tail.split(".")
            name = ".".join(aux)
            extension = "." + extension
        name = os.path.join(head, name)
        context.saveContextToFile(f"{name}_{extension}")

    printQuietless(lenLastLine*" " + "\r", end="")
    printQuietless(f"Done: {args.binary}")

    printVerbose()
    printVerbose("Disassembling complete!")
    printVerbose("Goodbye.")


if __name__ == "__main__":
    disassemblerMain()
