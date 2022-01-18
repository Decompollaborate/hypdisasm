.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800AC7F0
/* 0AC3A0 800AC7F0  */  .asciz  "ERROR: Can't alloc %d bytes from heap.\n"
                        .balign 4
/* 0AC3C8 800AC818  */  .asciz  ""
                        .balign 4
/* 0AC3CC 800AC81C  */  .asciz  ""
                        .balign 4
