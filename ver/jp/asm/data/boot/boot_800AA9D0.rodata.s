.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_800AA9D0
/* 0AA580 800AA9D0  */  .asciz  "extracted %u bytes.\n"
                        .balign 4
/* 0AA598 800AA9E8  */  .asciz  "relOfs = %u, relNum = %u\n"
                        .balign 4
/* 0AA5B4 800AAA04  */  .asciz  "romCopy complete.\n"
                        .balign 4
/* 0AA5C8 800AAA18  */  .asciz  ""
                        .balign 4
/* 0AA5CC 800AAA1C  */  .asciz  ""
                        .balign 4
