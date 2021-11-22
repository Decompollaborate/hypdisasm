.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_LoadMat_OutOfRange
/* 0A0830 800A0C80  */  .asciz  "error: loadMat: texNum out of range: texType:%d texNum:%d \n"
                        .balign 4

glabel D_800A0CBC
/* 0A086C 800A0CBC 3A83126F */  .float  0.0010000000474974513

glabel D_800A0CC0
/* 0A0870 800A0CC0 BA83126F */  .float  -0.0010000000474974513

glabel D_800A0CC4
/* 0A0874 800A0CC4 BA83126F */  .float  -0.0010000000474974513
/* 0A0878 800A0CC8 00000000 */  .float  0.0
/* 0A087C 800A0CCC 00000000 */  .float  0.0
