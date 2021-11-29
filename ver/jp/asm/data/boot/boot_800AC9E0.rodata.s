.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800AC9E0
/* 0AC590 800AC9E0 3C8EFA35 */  .float  0.01745329238474369
/* 0AC594 800AC9E4 00000000 */  .float  0.0
/* 0AC598 800AC9E8 00000000 */  .float  0.0
/* 0AC59C 800AC9EC 00000000 */  .float  0.0
