.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005B760 # 0
/* 000000 8005B760 AC800000 */  sw          $zero, 0x0($a0)
/* 000004 8005B764 AC850004 */  sw          $a1, 0x4($a0)
/* 000008 8005B768 AC860008 */  sw          $a2, 0x8($a0)
/* 00000C 8005B76C A480000C */  sh          $zero, 0xc($a0)
/* 000010 8005B770 A480000E */  sh          $zero, 0xe($a0)
/* 000014 8005B774 03E00008 */  jr          $ra
/* 000018 8005B778 AC870010 */   sw         $a3, 0x10($a0)
/* 00001C 8005B77C 00000000 */  nop
