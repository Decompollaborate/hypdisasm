.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800A53A0
/* 0A4F50 800A53A0 405FC00000000000 */  .double  127.0
/* 0A4F58 800A53A8 0000000000000000 */  .double  0.0
