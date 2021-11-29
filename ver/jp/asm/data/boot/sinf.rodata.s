.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800AC9F0
/* 0AC5A0 800AC9F0 3FF00000 */  .word  0x3FF00000
/* 0AC5A4 800AC9F4 00000000 */  .word  0x00000000
/* 0AC5A8 800AC9F8 BFC55554 */  .word  0xBFC55554
/* 0AC5AC 800AC9FC BC83656D */  .word  0xBC83656D
/* 0AC5B0 800ACA00 3F8110ED */  .word  0x3F8110ED
/* 0AC5B4 800ACA04 3804C2A0 */  .word  0x3804C2A0
/* 0AC5B8 800ACA08 BF29F6FF */  .word  0xBF29F6FF
/* 0AC5BC 800ACA0C EEA56814 */  .word  0xEEA56814
/* 0AC5C0 800ACA10 3EC5DBDF */  .word  0x3EC5DBDF
/* 0AC5C4 800ACA14 0E314BFE */  .word  0x0E314BFE

glabel D_800ACA18
/* 0AC5C8 800ACA18 3FD45F306DC9C883 */  .double  0.3183098861837907

glabel D_800ACA20
/* 0AC5D0 800ACA20 400921FB50000000 */  .double  3.1415926218032837

glabel D_800ACA28
/* 0AC5D8 800ACA28 3E6110B4611A6263 */  .double  3.178650954705639e-08

glabel D_800ACA30
/* 0AC5E0 800ACA30 00000000 */  .float  0.0
/* 0AC5E4 800ACA34 00000000 */  .float  0.0
/* 0AC5E8 800ACA38 00000000 */  .float  0.0
/* 0AC5EC 800ACA3C 00000000 */  .float  0.0
