.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel jtbl_800A7E70
/* 0A7A20 800A7E70 80056258 */  .word  L80056258
/* 0A7A24 800A7E74 80056264 */  .word  L80056264
/* 0A7A28 800A7E78 8005627C */  .word  L8005627C
/* 0A7A2C 800A7E7C 80056288 */  .word  L80056288
/* 0A7A30 800A7E80 80056270 */  .word  L80056270
/* 0A7A34 800A7E84 80056294 */  .word  L80056294

glabel D_800A7E88
/* 0A7A38 800A7E88 4105221B3D3FB61B */  .double  173123.404906676

glabel jtbl_800A7E90
/* 0A7A40 800A7E90 80056C50 */  .word  L80056C50
/* 0A7A44 800A7E94 80056C84 */  .word  L80056C84
/* 0A7A48 800A7E98 80056CE4 */  .word  L80056CE4
/* 0A7A4C 800A7E9C 80056CB8 */  .word  L80056CB8
/* 0A7A50 800A7EA0 80056D10 */  .word  L80056D10
/* 0A7A54 800A7EA4 80056D3C */  .word  L80056D3C
/* 0A7A58 800A7EA8 80056DA4 */  .word  L80056DA4
/* 0A7A5C 800A7EAC 80056E1C */  .word  L80056E1C

glabel D_800A7EB0
/* 0A7A60 800A7EB0 4105221B3D3FB61B */  .double  173123.404906676
/* 0A7A68 800A7EB8 0000000000000000 */  .double  0.0
