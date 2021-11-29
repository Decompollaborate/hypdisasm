.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800A98E0
/* 0A9490 800A98E0  */  .asciz  "キミ"
                        .balign 4
/* 0A9498 800A98E8  */  .asciz  ""
                        .balign 4
/* 0A949C 800A98EC  */  .asciz  ""
                        .balign 4
