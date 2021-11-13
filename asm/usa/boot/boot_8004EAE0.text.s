.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004EAE0 # 0
/* 000000 8004EAE0 3C02800A */  lui         $v0, %hi(D_8009D9C4)
/* 000004 8004EAE4 2442D9C4 */  addiu       $v0, $v0, %lo(D_8009D9C4)
/* 000008 8004EAE8 8C4E0000 */  lw          $t6, 0x0($v0)
/* 00000C 8004EAEC ADC00000 */  sw          $zero, 0x0($t6)
/* 000010 8004EAF0 8C4F0000 */  lw          $t7, 0x0($v0)
/* 000014 8004EAF4 ADE00004 */  sw          $zero, 0x4($t7)
/* 000018 8004EAF8 8C580000 */  lw          $t8, 0x0($v0)
/* 00001C 8004EAFC AF000008 */  sw          $zero, 0x8($t8)
/* 000020 8004EB00 8C590000 */  lw          $t9, 0x0($v0)
/* 000024 8004EB04 03E00008 */  jr          $ra
/* 000028 8004EB08 AF20000C */   sw         $zero, 0xc($t9)
/* 00002C 8004EB0C 00000000 */  nop
