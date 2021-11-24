.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel __libm_qnan_f
/* 0A7A10 800A7E60 7F810000 */  .word  0x7F810000
/* 0A7A14 800A7E64 00000000 */  .float  0.0
/* 0A7A18 800A7E68 00000000 */  .float  0.0
/* 0A7A1C 800A7E6C 00000000 */  .float  0.0
