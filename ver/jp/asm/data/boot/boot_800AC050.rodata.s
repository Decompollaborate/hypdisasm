.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800AC050
/* 0ABC00 800AC050  */  .asciz  "\n"
                        .balign 4
/* 0ABC04 800AC054  */  .asciz  "|    "
                        .balign 4
/* 0ABC0C 800AC05C  */  .asciz  "root:%p\n"
                        .balign 4
/* 0ABC18 800AC068  */  .asciz  "\n\n"
                        .balign 4
/* 0ABC1C 800AC06C  */  .asciz  "node %p  link: %p, %p  data: %p\n"
                        .balign 4
