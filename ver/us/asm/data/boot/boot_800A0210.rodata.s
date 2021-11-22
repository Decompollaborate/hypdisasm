.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800A0210
/* 09FDC0 800A0210 3EB0C6F7A0B5ED8D */  .double  1e-06
/* 09FDC8 800A0218 0000000000000000 */  .double  0.0
