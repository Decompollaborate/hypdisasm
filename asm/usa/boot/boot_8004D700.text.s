.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004D700 # 0
/* 04D2B0 8004D700 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04D2B4 8004D704 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04D2B8 8004D708 00802825 */  move        $a1, $a0
/* 04D2BC 8004D70C AFA50018 */  sw          $a1, 0x18($sp)
/* 04D2C0 8004D710 0C014E80 */  jal         func_80053A00
/* 04D2C4 8004D714 24040001 */   addiu      $a0, $zero, 0x1
/* 04D2C8 8004D718 3C03800A */  lui         $v1, %hi(D_8009D9C4)
/* 04D2CC 8004D71C 2463D9C4 */  addiu       $v1, $v1, %lo(D_8009D9C4)
/* 04D2D0 8004D720 8C6E0000 */  lw          $t6, 0x0($v1)
/* 04D2D4 8004D724 8FA50018 */  lw          $a1, 0x18($sp)
/* 04D2D8 8004D728 00402025 */  move        $a0, $v0
/* 04D2DC 8004D72C 8DCF002C */  lw          $t7, 0x2c($t6)
/* 04D2E0 8004D730 ACAF0010 */  sw          $t7, 0x10($a1)
/* 04D2E4 8004D734 8C780000 */  lw          $t8, 0x0($v1)
/* 04D2E8 8004D738 8F190000 */  lw          $t9, 0x0($t8)
/* 04D2EC 8004D73C ACB90000 */  sw          $t9, 0x0($a1)
/* 04D2F0 8004D740 8C680000 */  lw          $t0, 0x0($v1)
/* 04D2F4 8004D744 0C014E80 */  jal         func_80053A00
/* 04D2F8 8004D748 AD050000 */   sw         $a1, 0x0($t0)
/* 04D2FC 8004D74C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 04D300 8004D750 27BD0018 */  addiu       $sp, $sp, 0x18
/* 04D304 8004D754 03E00008 */  jr          $ra
/* 04D308 8004D758 00000000 */   nop

glabel func_8004D75C # 1
/* 04D30C 8004D75C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04D310 8004D760 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04D314 8004D764 00802825 */  move        $a1, $a0
/* 04D318 8004D768 AFA50018 */  sw          $a1, 0x18($sp)
/* 04D31C 8004D76C 0C014E80 */  jal         func_80053A00
/* 04D320 8004D770 24040001 */   addiu      $a0, $zero, 0x1
/* 04D324 8004D774 3C03800A */  lui         $v1, %hi(D_8009D9C4)
/* 04D328 8004D778 2463D9C4 */  addiu       $v1, $v1, %lo(D_8009D9C4)
/* 04D32C 8004D77C 8C6E0000 */  lw          $t6, 0x0($v1)
/* 04D330 8004D780 8FA50018 */  lw          $a1, 0x18($sp)
/* 04D334 8004D784 00403025 */  move        $a2, $v0
/* 04D338 8004D788 8DCF002C */  lw          $t7, 0x2c($t6)
/* 04D33C 8004D78C ACAF0010 */  sw          $t7, 0x10($a1)
/* 04D340 8004D790 8C780000 */  lw          $t8, 0x0($v1)
/* 04D344 8004D794 8F190000 */  lw          $t9, 0x0($t8)
/* 04D348 8004D798 ACB90000 */  sw          $t9, 0x0($a1)
/* 04D34C 8004D79C 8C680000 */  lw          $t0, 0x0($v1)
/* 04D350 8004D7A0 AD050000 */  sw          $a1, 0x0($t0)
/* 04D354 8004D7A4 8C640000 */  lw          $a0, 0x0($v1)
/* 04D358 8004D7A8 8C89000C */  lw          $t1, 0xc($a0)
/* 04D35C 8004D7AC 15200002 */  bne         $t1, $zero, .L8004D7B8
/* 04D360 8004D7B0 00000000 */   nop
/* 04D364 8004D7B4 AC85000C */  sw          $a1, 0xc($a0)
.L8004D7B8:
/* 04D368 8004D7B8 0C014E80 */  jal         func_80053A00
/* 04D36C 8004D7BC 00C02025 */   move       $a0, $a2
/* 04D370 8004D7C0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 04D374 8004D7C4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 04D378 8004D7C8 03E00008 */  jr          $ra
/* 04D37C 8004D7CC 00000000 */   nop

glabel func_8004D7D0 # 2
/* 04D380 8004D7D0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04D384 8004D7D4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04D388 8004D7D8 00802825 */  move        $a1, $a0
/* 04D38C 8004D7DC AFA50018 */  sw          $a1, 0x18($sp)
/* 04D390 8004D7E0 0C014E80 */  jal         func_80053A00
/* 04D394 8004D7E4 24040001 */   addiu      $a0, $zero, 0x1
/* 04D398 8004D7E8 3C03800A */  lui         $v1, %hi(D_8009D9C4)
/* 04D39C 8004D7EC 2463D9C4 */  addiu       $v1, $v1, %lo(D_8009D9C4)
/* 04D3A0 8004D7F0 8C6E0000 */  lw          $t6, 0x0($v1)
/* 04D3A4 8004D7F4 8FA50018 */  lw          $a1, 0x18($sp)
/* 04D3A8 8004D7F8 00403025 */  move        $a2, $v0
/* 04D3AC 8004D7FC 8DCF002C */  lw          $t7, 0x2c($t6)
/* 04D3B0 8004D800 ACAF0010 */  sw          $t7, 0x10($a1)
/* 04D3B4 8004D804 8C780000 */  lw          $t8, 0x0($v1)
/* 04D3B8 8004D808 8F190000 */  lw          $t9, 0x0($t8)
/* 04D3BC 8004D80C ACB90000 */  sw          $t9, 0x0($a1)
/* 04D3C0 8004D810 8C680000 */  lw          $t0, 0x0($v1)
/* 04D3C4 8004D814 AD050000 */  sw          $a1, 0x0($t0)
/* 04D3C8 8004D818 8C640000 */  lw          $a0, 0x0($v1)
/* 04D3CC 8004D81C 8C890004 */  lw          $t1, 0x4($a0)
/* 04D3D0 8004D820 55200004 */  bnel        $t1, $zero, .L8004D834
/* 04D3D4 8004D824 8C8A0008 */   lw         $t2, 0x8($a0)
/* 04D3D8 8004D828 10000005 */  b           .L8004D840
/* 04D3DC 8004D82C AC850004 */   sw         $a1, 0x4($a0)
/* 04D3E0 8004D830 8C8A0008 */  lw          $t2, 0x8($a0)
.L8004D834:
/* 04D3E4 8004D834 15400002 */  bne         $t2, $zero, .L8004D840
/* 04D3E8 8004D838 00000000 */   nop
/* 04D3EC 8004D83C AC850008 */  sw          $a1, 0x8($a0)
.L8004D840:
/* 04D3F0 8004D840 0C014E80 */  jal         func_80053A00
/* 04D3F4 8004D844 00C02025 */   move       $a0, $a2
/* 04D3F8 8004D848 8FBF0014 */  lw          $ra, 0x14($sp)
/* 04D3FC 8004D84C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 04D400 8004D850 03E00008 */  jr          $ra
/* 04D404 8004D854 00000000 */   nop
/* 04D408 8004D858 00000000 */  nop
/* 04D40C 8004D85C 00000000 */  nop
