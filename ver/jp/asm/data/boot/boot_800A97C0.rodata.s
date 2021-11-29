.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800A97C0
/* 0A9370 800A97C0 00000002 */  .word  0x00000002
/* 0A9374 800A97C4 00000001 */  .word  0x00000001
/* 0A9378 800A97C8 74617267 */  .word  0x74617267
/* 0A937C 800A97CC 65744963 */  .word  0x65744963
/* 0A9380 800A97D0 6F6E2063 */  .word  0x6F6E2063
/* 0A9384 800A97D4 68616E67 */  .word  0x68616E67
/* 0A9388 800A97D8 653A2025 */  .word  0x653A2025
/* 0A938C 800A97DC 64202D3E */  .word  0x64202D3E
/* 0A9390 800A97E0 2025640A */  .word  0x2025640A
/* 0A9394 800A97E4 00000000 */  .word  0x00000000

glabel D_800A97E8
/* 0A9398 800A97E8 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A97EC
/* 0A939C 800A97EC 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A97F0
/* 0A93A0 800A97F0 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A97F4
/* 0A93A4 800A97F4 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A97F8
/* 0A93A8 800A97F8 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A97FC
/* 0A93AC 800A97FC 3DCCCCCD */  .float  0.10000000149011612

glabel _string_800A9800
/* 0A93B0 800A9800  */  .asciz  "landMarkNew(%f,%f,%f)\n"
                        .balign 4

glabel D_800A9818
/* 0A93C8 800A9818  */  .asciz  "^4たいほう^^\nかいぞくたちのぶき"
                        .balign 4

glabel D_800A9838
/* 0A93E8 800A9838 3DCCCCCD */  .float  0.10000000149011612
/* 0A93EC 800A983C 00000000 */  .float  0.0
