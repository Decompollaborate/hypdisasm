.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel jtbl_800AC8D0
/* 0AC480 800AC8D0 8004B488 */  .word  L8004B488
/* 0AC484 800AC8D4 8004B4BC */  .word  L8004B4BC
/* 0AC488 800AC8D8 8004B51C */  .word  L8004B51C
/* 0AC48C 800AC8DC 8004B4F0 */  .word  L8004B4F0
/* 0AC490 800AC8E0 8004B548 */  .word  L8004B548
/* 0AC494 800AC8E4 8004B574 */  .word  L8004B574
/* 0AC498 800AC8E8 8004B5DC */  .word  L8004B5DC
/* 0AC49C 800AC8EC 8004B654 */  .word  L8004B654

glabel D_800AC8F0
/* 0AC4A0 800AC8F0 4105221B3D3FB61B */  .double  173123.404906676
/* 0AC4A8 800AC8F8 0000000000000000 */  .double  0.0
