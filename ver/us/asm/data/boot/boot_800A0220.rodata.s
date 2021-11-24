.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800A0220
/* 09FDD0 800A0220 405FC00000000000 */  .double  127.0
/* 09FDD8 800A0228 0000000000000000 */  .double  0.0
