.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800592A0 # 0
/* 000000 800592A0 3C0EA404 */  lui         $t6, %hi(D_A4040010)
/* 000004 800592A4 8DC20010 */  lw          $v0, %lo(D_A4040010)($t6)
/* 000008 800592A8 3C18A408 */  lui         $t8, %hi(D_A4080000)
/* 00000C 800592AC 304F0001 */  andi        $t7, $v0, 0x1
/* 000010 800592B0 15E00003 */  bne         $t7, $zero, .L800592C0
/* 000014 800592B4 00001025 */   move       $v0, $zero
/* 000018 800592B8 03E00008 */  jr          $ra
/* 00001C 800592BC 2402FFFF */   addiu      $v0, $zero, -0x1
.L800592C0:
/* 000020 800592C0 AF040000 */  sw          $a0, %lo(D_A4080000)($t8)
/* 000024 800592C4 03E00008 */  jr          $ra
/* 000028 800592C8 00000000 */   nop
/* 00002C 800592CC 00000000 */  nop
