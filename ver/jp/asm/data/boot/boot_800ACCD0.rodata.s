.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel jtbl_800ACCD0
/* 0AC880 800ACCD0 8005B4A0 */  .word  L8005B4A0
/* 0AC884 800ACCD4 8005B530 */  .word  L8005B530
/* 0AC888 800ACCD8 8005B530 */  .word  L8005B530
/* 0AC88C 800ACCDC 8005B4A8 */  .word  L8005B4A8
/* 0AC890 800ACCE0 8005B530 */  .word  L8005B530
/* 0AC894 800ACCE4 8005B530 */  .word  L8005B530
/* 0AC898 800ACCE8 8005B514 */  .word  L8005B514
/* 0AC89C 800ACCEC 8005B524 */  .word  L8005B524
/* 0AC8A0 800ACCF0 8005B4E4 */  .word  L8005B4E4
/* 0AC8A4 800ACCF4 00000000 */  .word  0x00000000

glabel D_800ACCF8
/* 0AC8A8 800ACCF8 3FFFFFD60E94EE39 */  .double  1.99996

glabel D_800ACD00
/* 0AC8B0 800ACD00 3FFFFEB0 */  .float  1.999959945678711
/* 0AC8B4 800ACD04 00000000 */  .float  0.0
/* 0AC8B8 800ACD08 00000000 */  .float  0.0
/* 0AC8BC 800ACD0C 00000000 */  .float  0.0
