#!/usr/bin/env python3

import os


overlays = [
    "file_E04F0",
    "file_106240",
    "file_10E9B0",
    "file_142F90",
    "file_18F180",
    "file_1AB4D0",
    "file_1D8A80",
    "file_212780",
    "file_271450",
    "file_2BFDC0",
    "file_2E38B0",
    "file_302700",
    "file_354650",
    "file_3BBC40",
    "file_424670",
    "file_43D7F0",
    "file_451B40",
    "file_477610",
    "file_491F20",
    "file_4B2C50",
    "file_4BC020",
    "file_4EBA40",
    "file_51A420",
]


for ovl in overlays:
    folderPath = f"ver/jp/asm/text/{ovl}"
    for file in os.listdir(folderPath):
        contPath = os.path.join(folderPath, file)
        with open(contPath) as f:
            functions = []
            for line in f:
                if "glabel func_" in line:
                    funcName = line.replace("glabel ", "").split(" # ")[0]
                    vram = funcName.split("func_")[1]
                    functions.append((vram, funcName))

            with open(f"ver/jp/tables/functions_{ovl}.csv", "w") as out:
                fileOffset = ovl.split("file_")[1]
                for vram, funcName in functions:
                    out.write(f"{vram},{funcName}_{fileOffset}\n")

