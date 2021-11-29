.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800AB6F0
/* 0AB2A0 800AB6F0  */  .asciz  "none"
                        .balign 4
/* 0AB2A8 800AB6F8  */  .asciz  ""
                        .balign 4
/* 0AB2AC 800AB6FC  */  .asciz  ""
                        .balign 4
