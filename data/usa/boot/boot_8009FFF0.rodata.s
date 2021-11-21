.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_NoValidControllers
/* 09FBA0 8009FFF0  */  .asciz  "no-validControllers\n"
                        .balign 4
/* 09FBB8 800A0008  */  .asciz  ""
                        .balign 4
/* 09FBBC 800A000C  */  .asciz  ""
                        .balign 4
