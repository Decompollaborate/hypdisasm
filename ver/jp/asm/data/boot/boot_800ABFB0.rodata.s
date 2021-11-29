.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_800ABFB0
/* 0ABB60 800ABFB0  */  .asciz  "Conflict using of ROM: %p(size 0x%x) and %p(size 0x%x)\n"
                        .balign 4
/* 0ABB98 800ABFE8  */  .asciz  "Out of cache_memory.\n"
                        .balign 4
/* 0ABBB0 800AC000  */  .asciz  "Shortage of Cache_block_num.\n"
                        .balign 4
/* 0ABBD0 800AC020  */  .asciz  "caRequestRomCopy(%p, %p, 0x%x, %p)\n"
                        .balign 4
/* 0ABBF4 800AC044  */  .asciz  ""
                        .balign 4
/* 0ABBF8 800AC048  */  .asciz  ""
                        .balign 4
/* 0ABBFC 800AC04C  */  .asciz  ""
                        .balign 4
