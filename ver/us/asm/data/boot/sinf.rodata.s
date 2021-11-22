.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800A7DC0
/* 0A7970 800A7DC0 3FF00000 */  .word  0x3FF00000
/* 0A7974 800A7DC4 00000000 */  .word  0x00000000
/* 0A7978 800A7DC8 BFC55554 */  .word  0xBFC55554
/* 0A797C 800A7DCC BC83656D */  .word  0xBC83656D
/* 0A7980 800A7DD0 3F8110ED */  .word  0x3F8110ED
/* 0A7984 800A7DD4 3804C2A0 */  .word  0x3804C2A0
/* 0A7988 800A7DD8 BF29F6FF */  .word  0xBF29F6FF
/* 0A798C 800A7DDC EEA56814 */  .word  0xEEA56814
/* 0A7990 800A7DE0 3EC5DBDF */  .word  0x3EC5DBDF
/* 0A7994 800A7DE4 0E314BFE */  .word  0x0E314BFE

glabel D_800A7DE8
/* 0A7998 800A7DE8 3FD45F306DC9C883 */  .double  0.3183098861837907

glabel D_800A7DF0
/* 0A79A0 800A7DF0 400921FB50000000 */  .double  3.1415926218032837

glabel D_800A7DF8
/* 0A79A8 800A7DF8 3E6110B4611A6263 */  .double  3.178650954705639e-08

glabel D_800A7E00
/* 0A79B0 800A7E00 00000000 */  .float  0.0
/* 0A79B4 800A7E04 00000000 */  .float  0.0
/* 0A79B8 800A7E08 00000000 */  .float  0.0
/* 0A79BC 800A7E0C 00000000 */  .float  0.0
