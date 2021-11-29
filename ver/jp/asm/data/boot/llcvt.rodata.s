.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800AC950
/* 0AC500 800AC950 80000000 */  .word  0x80000000
/* 0AC504 800AC954 00000000 */  .word  0x00000000

glabel D_800AC958
/* 0AC508 800AC958 80000000 */  .word  0x80000000
/* 0AC50C 800AC95C 00000000 */  .word  0x00000000
