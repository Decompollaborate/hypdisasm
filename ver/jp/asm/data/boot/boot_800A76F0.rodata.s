.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800A76F0
/* 0A72A0 800A76F0  */  .asciz  "判定不能"
                        .balign 4

glabel D_800A76FC
/* 0A72AC 800A76FC 3CA3D70A */  .float  0.019999999552965164

glabel D_800A7700
/* 0A72B0 800A7700 00000000 */  .word  0x00000000

glabel _string_800A7704
/* 0A72B4 800A7704  */  .asciz  "WINDOW_TYPE ERROR!\n"
                        .balign 4

glabel D_800A7718
/* 0A72C8 800A7718 0A000000 */  .word  0x0A000000

glabel D_800A771C
/* 0A72CC 800A771C 00000000 */  .word  0x00000000

glabel D_800A7720
/* 0A72D0 800A7720 F00F0000 */  .word  0xF00F0000

glabel D_800A7724
/* 0A72D4 800A7724 3F59999A */  .float  0.8500000238418579
/* 0A72D8 800A7728 00000000 */  .float  0.0
/* 0A72DC 800A772C 00000000 */  .float  0.0
