.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16
/* 0AC3D0 800AC820  */  .asciz  "error: strcpy: dst or src is NULL pointer. dst:%p src:%p\n"
                        .balign 4
/* 0AC40C 800AC85C  */  .asciz  ""
                        .balign 4

glabel D_800AC860
/* 0AC410 800AC860 7FFFFFFF */  .word  0x7FFFFFFF
/* 0AC414 800AC864 FFFFFFFF */  .word  0xFFFFFFFF
/* 0AC418 800AC868 0000000000000000 */  .double  0.0
