#!/usr/bin/env python3

import os


overlays = ["file_DCF60", "file_107190", "file_10F7F0", "file_1426B0", "file_182B40", "file_19C470", "file_1C5E50", "file_1FE3D0", "file_2535D0", "file_29CA40", "file_2BD950", "file_2DA640", "file_31AA90", "file_3728F0", "file_3C8950", "file_3E3D00", "file_3F6EF0", "file_417E50", "file_430E20", "file_44E2E0", "file_456EF0", "file_47EBD0", "file_4A49D0"]


for ovl in overlays:
    folderPath = f"ver/us/asm/text/{ovl}"
    for file in os.listdir(folderPath):
        contPath = os.path.join(folderPath, file)
        with open(contPath) as f:
            functions = []
            for line in f:
                if "glabel " in line:
                    funcName = line.replace("glabel ", "").split(" # ")[0]
                    vram = funcName.split("func_")[1]
                    functions.append((vram, funcName))

            with open(f"ver/us/tables/functions_{ovl}.csv", "w") as out:
                fileOffset = ovl.split("file_")[1]
                for vram, funcName in functions:
                    out.write(f"{vram},{funcName}_{fileOffset}\n")
