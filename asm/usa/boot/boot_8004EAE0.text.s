.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004EAE0 # 0
/* 04E690 8004EAE0 3C02800A */  lui         $v0, %hi(D_8009D9C4)
/* 04E694 8004EAE4 2442D9C4 */  addiu       $v0, $v0, %lo(D_8009D9C4)
/* 04E698 8004EAE8 8C4E0000 */  lw          $t6, 0x0($v0)
/* 04E69C 8004EAEC ADC00000 */  sw          $zero, 0x0($t6)
/* 04E6A0 8004EAF0 8C4F0000 */  lw          $t7, 0x0($v0)
/* 04E6A4 8004EAF4 ADE00004 */  sw          $zero, 0x4($t7)
/* 04E6A8 8004EAF8 8C580000 */  lw          $t8, 0x0($v0)
/* 04E6AC 8004EAFC AF000008 */  sw          $zero, 0x8($t8)
/* 04E6B0 8004EB00 8C590000 */  lw          $t9, 0x0($v0)
/* 04E6B4 8004EB04 03E00008 */  jr          $ra
/* 04E6B8 8004EB08 AF20000C */   sw         $zero, 0xc($t9)
/* 04E6BC 8004EB0C 00000000 */  nop
