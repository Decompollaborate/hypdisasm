.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800A7D30
/* 0A78E0 800A7D30 3F8012EF */  .float  1.0005778074264526

glabel D_800A7D34
/* 0A78E4 800A7D34 3F7FDA28 */  .float  0.999422550201416
/* 0A78E8 800A7D38 00000000 */  .float  0.0
/* 0A78EC 800A7D3C 00000000 */  .float  0.0
