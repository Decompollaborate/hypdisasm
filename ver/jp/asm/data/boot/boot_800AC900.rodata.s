.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel jtbl_800AC900
/* 0AC4B0 800AC900 8004BC14 */  .word  L8004BC14
/* 0AC4B4 800AC904 8004BC20 */  .word  L8004BC20
/* 0AC4B8 800AC908 8004BC38 */  .word  L8004BC38
/* 0AC4BC 800AC90C 8004BC44 */  .word  L8004BC44
/* 0AC4C0 800AC910 8004BC2C */  .word  L8004BC2C
/* 0AC4C4 800AC914 8004BC50 */  .word  L8004BC50

glabel D_800AC918
/* 0AC4C8 800AC918 4105221B3D3FB61B */  .double  173123.404906676

glabel D_800AC920
/* 0AC4D0 800AC920 3FFFFFD60E94EE39 */  .double  1.99996

glabel D_800AC928
/* 0AC4D8 800AC928 3FFFFEB0 */  .float  1.999959945678711
/* 0AC4DC 800AC92C 00000000 */  .float  0.0

glabel D_800AC930
/* 0AC4E0 800AC930 3F91DF469D353918 */  .double  0.017453292222222222
/* 0AC4E8 800AC938 0000000000000000 */  .double  0.0

glabel D_800AC940
/* 0AC4F0 800AC940 3F8012EF */  .float  1.0005778074264526

glabel D_800AC944
/* 0AC4F4 800AC944 3F7FDA28 */  .float  0.999422550201416
/* 0AC4F8 800AC948 00000000 */  .float  0.0
/* 0AC4FC 800AC94C 00000000 */  .float  0.0
