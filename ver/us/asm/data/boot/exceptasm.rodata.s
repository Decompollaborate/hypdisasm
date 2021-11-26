.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

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
