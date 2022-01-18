.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_80132D70
/* 028280 80132D70  */  .asciz  "warning: item %p(%s) is out of maze\n"
                        .balign 4
/* 0282A8 80132D98  */  .asciz  "%s = (%3.2f, %3.2f, %3.2f)\n"
                        .balign 4
/* 0282C4 80132DB4  */  .asciz  "obj->xyz"
                        .balign 4
/* 0282D0 80132DC0  */  .asciz  "mov_x:%f mov_z:%f fallSpeed:%f\n"
                        .balign 4
/* 0282F0 80132DE0  */  .asciz  "Error: item(%p) is no more held by object(%p).\n"
                        .balign 4

glabel D_80132E10
/* 028320 80132E10 3E4CCCCD */  .float  0.20000000298023224

glabel D_80132E14
/* 028324 80132E14 3F4CCCCD */  .float  0.800000011920929

glabel D_80132E18
/* 028328 80132E18 3C23D70A */  .float  0.009999999776482582

glabel D_80132E1C
/* 02832C 80132E1C BC23D70A */  .float  -0.009999999776482582

glabel D_80132E20
/* 028330 80132E20 3F4CCCCD */  .float  0.800000011920929

glabel D_80132E24
/* 028334 80132E24 3E99999A */  .float  0.30000001192092896

glabel D_80132E28
/* 028338 80132E28 42652EE0 */  .float  57.2957763671875

glabel D_80132E2C
/* 02833C 80132E2C 3F666666 */  .float  0.8999999761581421

glabel D_80132E30
/* 028340 80132E30 3E4CCCCD */  .float  0.20000000298023224

glabel D_80132E34
/* 028344 80132E34 3F333333 */  .float  0.699999988079071

glabel D_80132E38
/* 028348 80132E38 40511111 */  .float  3.2666666507720947

glabel D_80132E3C
/* 02834C 80132E3C BF333333 */  .float  -0.699999988079071

glabel D_80132E40
/* 028350 80132E40 BF333333 */  .float  -0.699999988079071

glabel D_80132E44
/* 028354 80132E44 BF666666 */  .float  -0.8999999761581421

glabel D_80132E48
/* 028358 80132E48 3F666666 */  .float  0.8999999761581421

glabel D_80132E4C
/* 02835C 80132E4C 3D4CCCCC */  .float  0.04999999701976776

glabel D_80132E50
/* 028360 80132E50 3C23D70A */  .float  0.009999999776482582
/* 028364 80132E54 00000000 */  .float  0.0
/* 028368 80132E58 00000000 */  .float  0.0
/* 02836C 80132E5C 00000000 */  .float  0.0
