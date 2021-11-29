.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800A7730
/* 0A72E0 800A7730 3D4CCCCD */  .float  0.05000000074505806

glabel D_800A7734
/* 0A72E4 800A7734 3B5A740E */  .float  0.0033333334140479565
/* 0A72E8 800A7738 00000000 */  .float  0.0
/* 0A72EC 800A773C 00000000 */  .float  0.0
