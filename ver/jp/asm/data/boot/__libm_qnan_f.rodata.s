.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel __libm_qnan_f
/* 0AC640 800ACA90 7F810000 */  .word  0x7F810000
/* 0AC644 800ACA94 00000000 */  .float  0.0
/* 0AC648 800ACA98 00000000 */  .float  0.0
/* 0AC64C 800ACA9C 00000000 */  .float  0.0
