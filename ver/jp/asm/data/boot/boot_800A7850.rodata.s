.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_800A7850
/* 0A7400 800A7850  */  .asciz  "Unknown holdPos:%d\n"
                        .balign 4
/* 0A7414 800A7864  */  .asciz  "haraType:%d jointTotal:%d jointTableSize:%d\n"
                        .balign 4
/* 0A7444 800A7894  */  .asciz  "ERROR: model %p(%s) is out of maze\n"
                        .balign 4

glabel D_800A78B8
/* 0A7468 800A78B8 3E4CCCCD */  .float  0.20000000298023224

glabel D_800A78BC
/* 0A746C 800A78BC BECCCCCD */  .float  -0.4000000059604645

glabel D_800A78C0
/* 0A7470 800A78C0 3ECCCCCD */  .float  0.4000000059604645

glabel D_800A78C4
/* 0A7474 800A78C4 BF7D70A4 */  .float  -0.9900000095367432

glabel D_800A78C8
/* 0A7478 800A78C8 BF4CCCCD */  .float  -0.800000011920929

glabel D_800A78CC
/* 0A747C 800A78CC 3E4CCCCD */  .float  0.20000000298023224

glabel D_800A78D0
/* 0A7480 800A78D0 3E99999A */  .float  0.30000001192092896

glabel jtbl_800A78D4
/* 0A7484 800A78D4 80014C98 */  .word  L80014C98
/* 0A7488 800A78D8 80014D10 */  .word  L80014D10
/* 0A748C 800A78DC 80014D30 */  .word  L80014D30
/* 0A7490 800A78E0 80014D50 */  .word  L80014D50
/* 0A7494 800A78E4 80014D74 */  .word  L80014D74
/* 0A7498 800A78E8 80014D8C */  .word  L80014D8C

glabel D_800A78EC
/* 0A749C 800A78EC 3A83126F */  .float  0.0010000000474974513

glabel D_800A78F0
/* 0A74A0 800A78F0 40511111 */  .float  3.2666666507720947

glabel D_800A78F4
/* 0A74A4 800A78F4 3D4CCCCD */  .float  0.05000000074505806

glabel D_800A78F8
/* 0A74A8 800A78F8 3CF5C28F */  .float  0.029999999329447746
/* 0A74AC 800A78FC 00000000 */  .float  0.0
