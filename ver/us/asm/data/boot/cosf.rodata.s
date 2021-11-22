.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800A7E10
/* 0A79C0 800A7E10 3FF00000 */  .word  0x3FF00000
/* 0A79C4 800A7E14 00000000 */  .word  0x00000000
/* 0A79C8 800A7E18 BFC55554 */  .word  0xBFC55554
/* 0A79CC 800A7E1C BC83656D */  .word  0xBC83656D
/* 0A79D0 800A7E20 3F8110ED */  .word  0x3F8110ED
/* 0A79D4 800A7E24 3804C2A0 */  .word  0x3804C2A0
/* 0A79D8 800A7E28 BF29F6FF */  .word  0xBF29F6FF
/* 0A79DC 800A7E2C EEA56814 */  .word  0xEEA56814
/* 0A79E0 800A7E30 3EC5DBDF */  .word  0x3EC5DBDF
/* 0A79E4 800A7E34 0E314BFE */  .word  0x0E314BFE

glabel D_800A7E38
/* 0A79E8 800A7E38 3FD45F306DC9C883 */  .double  0.3183098861837907

glabel D_800A7E40
/* 0A79F0 800A7E40 400921FB50000000 */  .double  3.1415926218032837

glabel D_800A7E48
/* 0A79F8 800A7E48 3E6110B4611A6263 */  .double  3.178650954705639e-08

glabel D_800A7E50
/* 0A7A00 800A7E50 00000000 */  .float  0.0
/* 0A7A04 800A7E54 00000000 */  .float  0.0
/* 0A7A08 800A7E58 00000000 */  .float  0.0
/* 0A7A0C 800A7E5C 00000000 */  .float  0.0
