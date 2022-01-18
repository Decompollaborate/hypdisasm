.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800ACA40
/* 0AC5F0 800ACA40 3FF0000000000000 */  .double  1.0
/* 0AC5F8 800ACA48 BFC55554BC83656D */  .double  -0.16666659550427756
/* 0AC600 800ACA50 3F8110ED3804C2A0 */  .double  0.008333066246082155
/* 0AC608 800ACA58 BF29F6FFEEA56814 */  .double  -0.0001980960290193795
/* 0AC610 800ACA60 3EC5DBDF0E314BFE */  .double  2.605780637968037e-06

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
