.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_MeltSize
/* 0A4E80 800A52D0  */  .asciz  "meltSize = %u\n"
                        .balign 4
/* 0A4E90 800A52E0  */  .asciz  "zipped block size = %u\n"
                        .balign 4
/* 0A4EA8 800A52F8  */  .asciz  "setFilterColor:%d,%d,%d,%d\n"
                        .balign 4
/* 0A4EC4 800A5314  */  .asciz  "sunset start at %f\n"
                        .balign 4

glabel D_800A5328
/* 0A4ED8 800A5328 3A83126F */  .float  0.0010000000474974513

glabel D_800A532C
/* 0A4EDC 800A532C BA83126F */  .float  -0.0010000000474974513

glabel D_800A5330
/* 0A4EE0 800A5330 3B808081 */  .float  0.003921568859368563

glabel D_800A5334
/* 0A4EE4 800A5334 3A83126F */  .float  0.0010000000474974513

glabel D_800A5338
/* 0A4EE8 800A5338 BA83126F */  .float  -0.0010000000474974513

glabel D_800A533C
/* 0A4EEC 800A533C 3FAAAAAB */  .float  1.3333333730697632

glabel jtbl_800A5340
/* 0A4EF0 800A5340 800033A0 */  .word  L800033A0
/* 0A4EF4 800A5344 8000351C */  .word  L8000351C
/* 0A4EF8 800A5348 80003534 */  .word  L80003534
/* 0A4EFC 800A534C 80003544 */  .word  L80003544
/* 0A4F00 800A5350 80003414 */  .word  L80003414
/* 0A4F04 800A5354 80003424 */  .word  L80003424
/* 0A4F08 800A5358 80003434 */  .word  L80003434
/* 0A4F0C 800A535C 800034A4 */  .word  L800034A4
/* 0A4F10 800A5360 80003554 */  .word  L80003554
/* 0A4F14 800A5364 8000355C */  .word  L8000355C
/* 0A4F18 800A5368 8000355C */  .word  L8000355C
/* 0A4F1C 800A536C 80003434 */  .word  L80003434
/* 0A4F20 800A5370 80003434 */  .word  L80003434
/* 0A4F24 800A5374 80003478 */  .word  L80003478
/* 0A4F28 800A5378 800034A4 */  .word  L800034A4
/* 0A4F2C 800A537C 800034E4 */  .word  L800034E4
/* 0A4F30 800A5380 800034E4 */  .word  L800034E4
/* 0A4F34 800A5384 800034A4 */  .word  L800034A4
/* 0A4F38 800A5388 80003404 */  .word  L80003404
/* 0A4F3C 800A538C 00000000 */  .word  0x00000000

glabel D_800A5390
/* 0A4F40 800A5390 3EB0C6F7A0B5ED8D */  .double  1e-06
/* 0A4F48 800A5398 0000000000000000 */  .double  0.0
