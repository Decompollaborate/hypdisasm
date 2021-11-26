.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800A8030
/* 0A7BE0 800A8030 412E848000000000 */  .double  1000000.0
/* 0A7BE8 800A8038 0000000000000000 */  .double  0.0
