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

glabel D_800A7EC0
/* 0A7A70 800A7EC0 00141818 */  .word  0x00141818
/* 0A7A74 800A7EC4 1C1C1C1C */  .word  0x1C1C1C1C
/* 0A7A78 800A7EC8 20202020 */  .word  0x20202020
/* 0A7A7C 800A7ECC 20202020 */  .word  0x20202020
/* 0A7A80 800A7ED0 00040808 */  .word  0x00040808
/* 0A7A84 800A7ED4 0C0C0C0C */  .word  0x0C0C0C0C
/* 0A7A88 800A7ED8 10101010 */  .word  0x10101010
/* 0A7A8C 800A7EDC 10101010 */  .word  0x10101010

glabel jtbl_800A7EE0
/* 0A7A90 800A7EE0 80057AE0 */  .word  L80057AE0
/* 0A7A94 800A7EE4 80057AA8 */  .word  L80057AA8
/* 0A7A98 800A7EE8 80057A88 */  .word  L80057A88
/* 0A7A9C 800A7EEC 800578C4 */  .word  L800578C4
/* 0A7AA0 800A7EF0 80057880 */  .word  L80057880
/* 0A7AA4 800A7EF4 80057A2C */  .word  L80057A2C
/* 0A7AA8 800A7EF8 80057848 */  .word  L80057848
/* 0A7AAC 800A7EFC 80057854 */  .word  L80057854
/* 0A7AB0 800A7F00 80057860 */  .word  L80057860
/* 0A7AB4 800A7F04 00000000 */  .word  0x00000000
/* 0A7AB8 800A7F08 00000000 */  .word  0x00000000
/* 0A7ABC 800A7F0C 00000000 */  .word  0x00000000