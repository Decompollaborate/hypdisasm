.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800ACC60
/* 0AC810 800ACC60 412E848000000000 */  .double  1000000.0

glabel D_800ACC68
/* 0AC818 800ACC68 412E848000000000 */  .double  1000000.0

glabel D_800ACC70
/* 0AC820 800ACC70 3FE62E42FEFA39EF */  .double  0.6931471805599453

glabel D_800ACC78
/* 0AC828 800ACC78 40EFFFE000000000 */  .double  65535.0

glabel jtbl_800ACC80
/* 0AC830 800ACC80 8005A7F8 */  .word  L8005A7F8
/* 0AC834 800ACC84 8005A818 */  .word  L8005A818
/* 0AC838 800ACC88 8005A818 */  .word  L8005A818
/* 0AC83C 800ACC8C 8005A818 */  .word  L8005A818
/* 0AC840 800ACC90 8005A818 */  .word  L8005A818
/* 0AC844 800ACC94 8005A818 */  .word  L8005A818
/* 0AC848 800ACC98 8005A818 */  .word  L8005A818
/* 0AC84C 800ACC9C 8005A818 */  .word  L8005A818
/* 0AC850 800ACCA0 8005A818 */  .word  L8005A818
/* 0AC854 800ACCA4 8005A818 */  .word  L8005A818
/* 0AC858 800ACCA8 8005A818 */  .word  L8005A818
/* 0AC85C 800ACCAC 8005A5C0 */  .word  L8005A5C0
/* 0AC860 800ACCB0 8005A5C0 */  .word  L8005A5C0
/* 0AC864 800ACCB4 8005A480 */  .word  L8005A480
/* 0AC868 800ACCB8 8005A764 */  .word  L8005A764
/* 0AC86C 800ACCBC 8005A7B8 */  .word  L8005A7B8
/* 0AC870 800ACCC0 8005A5C0 */  .word  L8005A5C0
/* 0AC874 800ACCC4 00000000 */  .word  0x00000000
/* 0AC878 800ACCC8 00000000 */  .word  0x00000000
/* 0AC87C 800ACCCC 00000000 */  .word  0x00000000
