.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800A7E10
/* 0A79C0 800A7E10 3FF0000000000000 */  .double  1.0
/* 0A79C8 800A7E18 BFC55554BC83656D */  .double  -0.16666659550427756
/* 0A79D0 800A7E20 3F8110ED3804C2A0 */  .double  0.008333066246082155
/* 0A79D8 800A7E28 BF29F6FFEEA56814 */  .double  -0.0001980960290193795
/* 0A79E0 800A7E30 3EC5DBDF0E314BFE */  .double  2.605780637968037e-06

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
