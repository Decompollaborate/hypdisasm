.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80059CA0 # 0
/* 059850 80059CA0 AC800000 */  sw          $zero, 0x0($a0)
/* 059854 80059CA4 AC850004 */  sw          $a1, 0x4($a0)
/* 059858 80059CA8 AC860008 */  sw          $a2, 0x8($a0)
/* 05985C 80059CAC A480000C */  sh          $zero, 0xc($a0)
/* 059860 80059CB0 A480000E */  sh          $zero, 0xe($a0)
/* 059864 80059CB4 03E00008 */  jr          $ra
/* 059868 80059CB8 AC870010 */   sw         $a3, 0x10($a0)
/* 05986C 80059CBC 00000000 */  nop
