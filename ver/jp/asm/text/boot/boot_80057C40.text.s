.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80057C40 # 0
/* 0577F0 80057C40 3C0EA404 */  lui         $t6, %hi(D_A4040010)
/* 0577F4 80057C44 8DC50010 */  lw          $a1, %lo(D_A4040010)($t6)
/* 0577F8 80057C48 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 0577FC 80057C4C 30AF0001 */  andi        $t7, $a1, 0x1
/* 057800 80057C50 15E00003 */  bnez        $t7, .L80057C60
/* 057804 80057C54 00000000 */   nop
/* 057808 80057C58 10000004 */  b           .L80057C6C
/* 05780C 80057C5C 2402FFFF */   addiu      $v0, $zero, -0x1
.L80057C60:
/* 057810 80057C60 3C18A408 */  lui         $t8, %hi(D_A4080000)
/* 057814 80057C64 AF040000 */  sw          $a0, %lo(D_A4080000)($t8)
/* 057818 80057C68 00001025 */  move        $v0, $zero
.L80057C6C:
/* 05781C 80057C6C 03E00008 */  jr          $ra
/* 057820 80057C70 27BD0008 */   addiu      $sp, $sp, 0x8
/* 057824 80057C74 00000000 */  nop
/* 057828 80057C78 00000000 */  nop
/* 05782C 80057C7C 00000000 */  nop
