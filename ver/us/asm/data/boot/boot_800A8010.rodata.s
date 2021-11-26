.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel jtbl_800A8010
/* 0A7BC0 800A8010 8005A65C */  .word  L8005A65C
/* 0A7BC4 800A8014 8005A574 */  .word  L8005A574
/* 0A7BC8 800A8018 8005A5A8 */  .word  L8005A5A8
/* 0A7BCC 800A801C 8005A678 */  .word  L8005A678
/* 0A7BD0 800A8020 8005A678 */  .word  L8005A678
/* 0A7BD4 800A8024 8005A5DC */  .word  L8005A5DC
/* 0A7BD8 800A8028 8005A61C */  .word  L8005A61C
/* 0A7BDC 800A802C 00000000 */  .word  0x00000000
