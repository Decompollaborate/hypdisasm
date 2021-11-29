.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_800A76C0
/* 0A7270 800A76C0  */  .asciz  "error: playSkit: Illegal skitType(%d)\n"
                        .balign 4
/* 0A7298 800A76E8  */  .asciz  ""
                        .balign 4
/* 0A729C 800A76EC  */  .asciz  ""
                        .balign 4
