.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800A7D40
/* 0A78F0 800A7D40 05550556 */  .word  0x05550556
/* 0A78F4 800A7D44 0559055A */  .word  0x0559055A
/* 0A78F8 800A7D48 05650566 */  .word  0x05650566
/* 0A78FC 800A7D4C 0569056A */  .word  0x0569056A
/* 0A7900 800A7D50 05950596 */  .word  0x05950596
/* 0A7904 800A7D54 0599059A */  .word  0x0599059A
/* 0A7908 800A7D58 05A505A6 */  .word  0x05A505A6
/* 0A790C 800A7D5C 05A905AA */  .word  0x05A905AA
/* 0A7910 800A7D60 06550656 */  .word  0x06550656
/* 0A7914 800A7D64 0659065A */  .word  0x0659065A
/* 0A7918 800A7D68 06650666 */  .word  0x06650666
/* 0A791C 800A7D6C 0669066A */  .word  0x0669066A
/* 0A7920 800A7D70 06950696 */  .word  0x06950696
/* 0A7924 800A7D74 0699069A */  .word  0x0699069A
/* 0A7928 800A7D78 06A506A6 */  .word  0x06A506A6
/* 0A792C 800A7D7C 06A906AA */  .word  0x06A906AA
/* 0A7930 800A7D80 09550956 */  .word  0x09550956
/* 0A7934 800A7D84 0959095A */  .word  0x0959095A
/* 0A7938 800A7D88 09650966 */  .word  0x09650966
/* 0A793C 800A7D8C 0969096A */  .word  0x0969096A
/* 0A7940 800A7D90 09950996 */  .word  0x09950996
/* 0A7944 800A7D94 0999099A */  .word  0x0999099A
/* 0A7948 800A7D98 09A509A6 */  .word  0x09A509A6
/* 0A794C 800A7D9C 09A909AA */  .word  0x09A909AA
/* 0A7950 800A7DA0 0A550A56 */  .word  0x0A550A56
/* 0A7954 800A7DA4 0A590A5A */  .word  0x0A590A5A
/* 0A7958 800A7DA8 0A650A66 */  .word  0x0A650A66
/* 0A795C 800A7DAC 0A690A6A */  .word  0x0A690A6A
/* 0A7960 800A7DB0 0A950A96 */  .word  0x0A950A96
/* 0A7964 800A7DB4 0A990A9A */  .word  0x0A990A9A
/* 0A7968 800A7DB8 0AA50AA6 */  .word  0x0AA50AA6
/* 0A796C 800A7DBC 0AA90AAA */  .word  0x0AA90AAA
