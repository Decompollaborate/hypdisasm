.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800AC950
/* 0AC500 800AC950 80000000 */  .word  0x80000000
/* 0AC504 800AC954 00000000 */  .word  0x00000000

glabel D_800AC958
/* 0AC508 800AC958 80000000 */  .word  0x80000000
/* 0AC50C 800AC95C 00000000 */  .word  0x00000000

glabel D_800AC960
/* 0AC510 800AC960 05550556 */  .word  0x05550556
/* 0AC514 800AC964 0559055A */  .word  0x0559055A
/* 0AC518 800AC968 05650566 */  .word  0x05650566
/* 0AC51C 800AC96C 0569056A */  .word  0x0569056A
/* 0AC520 800AC970 05950596 */  .word  0x05950596
/* 0AC524 800AC974 0599059A */  .word  0x0599059A
/* 0AC528 800AC978 05A505A6 */  .word  0x05A505A6
/* 0AC52C 800AC97C 05A905AA */  .word  0x05A905AA
/* 0AC530 800AC980 06550656 */  .word  0x06550656
/* 0AC534 800AC984 0659065A */  .word  0x0659065A
/* 0AC538 800AC988 06650666 */  .word  0x06650666
/* 0AC53C 800AC98C 0669066A */  .word  0x0669066A
/* 0AC540 800AC990 06950696 */  .word  0x06950696
/* 0AC544 800AC994 0699069A */  .word  0x0699069A
/* 0AC548 800AC998 06A506A6 */  .word  0x06A506A6
/* 0AC54C 800AC99C 06A906AA */  .word  0x06A906AA
/* 0AC550 800AC9A0 09550956 */  .word  0x09550956
/* 0AC554 800AC9A4 0959095A */  .word  0x0959095A
/* 0AC558 800AC9A8 09650966 */  .word  0x09650966
/* 0AC55C 800AC9AC 0969096A */  .word  0x0969096A
/* 0AC560 800AC9B0 09950996 */  .word  0x09950996
/* 0AC564 800AC9B4 0999099A */  .word  0x0999099A
/* 0AC568 800AC9B8 09A509A6 */  .word  0x09A509A6
/* 0AC56C 800AC9BC 09A909AA */  .word  0x09A909AA
/* 0AC570 800AC9C0 0A550A56 */  .word  0x0A550A56
/* 0AC574 800AC9C4 0A590A5A */  .word  0x0A590A5A
/* 0AC578 800AC9C8 0A650A66 */  .word  0x0A650A66
/* 0AC57C 800AC9CC 0A690A6A */  .word  0x0A690A6A
/* 0AC580 800AC9D0 0A950A96 */  .word  0x0A950A96
/* 0AC584 800AC9D4 0A990A9A */  .word  0x0A990A9A
/* 0AC588 800AC9D8 0AA50AA6 */  .word  0x0AA50AA6
/* 0AC58C 800AC9DC 0AA90AAA */  .word  0x0AA90AAA

glabel D_800AC9E0
/* 0AC590 800AC9E0 3C8EFA35 */  .float  0.01745329238474369
/* 0AC594 800AC9E4 00000000 */  .float  0.0
/* 0AC598 800AC9E8 00000000 */  .float  0.0
/* 0AC59C 800AC9EC 00000000 */  .float  0.0
