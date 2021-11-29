.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_800A56B0
/* 0A5260 800A56B0  */  .asciz  "error: calcAnime: Illegal keyType(%d)\n"
                        .balign 4

glabel D_800A56D8
/* 0A5288 800A56D8 3D088889 */  .float  0.03333333507180214
/* 0A528C 800A56DC 00000000 */  .float  0.0
