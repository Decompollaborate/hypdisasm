.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800ACA40
/* 0AC5F0 800ACA40 3FF00000 */  .word  0x3FF00000
/* 0AC5F4 800ACA44 00000000 */  .word  0x00000000
/* 0AC5F8 800ACA48 BFC55554 */  .word  0xBFC55554
/* 0AC5FC 800ACA4C BC83656D */  .word  0xBC83656D
/* 0AC600 800ACA50 3F8110ED */  .word  0x3F8110ED
/* 0AC604 800ACA54 3804C2A0 */  .word  0x3804C2A0
/* 0AC608 800ACA58 BF29F6FF */  .word  0xBF29F6FF
/* 0AC60C 800ACA5C EEA56814 */  .word  0xEEA56814
/* 0AC610 800ACA60 3EC5DBDF */  .word  0x3EC5DBDF
/* 0AC614 800ACA64 0E314BFE */  .word  0x0E314BFE

glabel D_800ACA68
/* 0AC618 800ACA68 3FD45F306DC9C883 */  .double  0.3183098861837907

glabel D_800ACA70
/* 0AC620 800ACA70 400921FB50000000 */  .double  3.1415926218032837

glabel D_800ACA78
/* 0AC628 800ACA78 3E6110B4611A6263 */  .double  3.178650954705639e-08

glabel D_800ACA80
/* 0AC630 800ACA80 00000000 */  .float  0.0
/* 0AC634 800ACA84 00000000 */  .float  0.0
/* 0AC638 800ACA88 00000000 */  .float  0.0
/* 0AC63C 800ACA8C 00000000 */  .float  0.0
