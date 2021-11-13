.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800538E0 # 0
/* 000000 800538E0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 000004 800538E4 AFA40020 */  sw          $a0, 0x20($sp)
/* 000008 800538E8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00000C 800538EC AFA50024 */  sw          $a1, 0x24($sp)
/* 000010 800538F0 AFA60028 */  sw          $a2, 0x28($sp)
/* 000014 800538F4 AFA7002C */  sw          $a3, 0x2c($sp)
/* 000018 800538F8 3C048005 */  lui         $a0, %hi(func_80053938)
/* 00001C 800538FC 24843938 */  addiu       $a0, $a0, %lo(func_80053938)
/* 000020 80053900 27A70028 */  addiu       $a3, $sp, 0x28
/* 000024 80053904 8FA60024 */  lw          $a2, 0x24($sp)
/* 000028 80053908 0C0164B4 */  jal         func_800592D0
/* 00002C 8005390C 8FA50020 */   lw         $a1, 0x20($sp)
/* 000030 80053910 04400004 */  bltz        $v0, .L80053924
/* 000034 80053914 00401825 */   move       $v1, $v0
/* 000038 80053918 8FAE0020 */  lw          $t6, 0x20($sp)
/* 00003C 8005391C 01C27821 */  addu        $t7, $t6, $v0
/* 000040 80053920 A1E00000 */  sb          $zero, 0x0($t7)
.L80053924:
/* 000044 80053924 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000048 80053928 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00004C 8005392C 00601025 */  move        $v0, $v1
/* 000050 80053930 03E00008 */  jr          $ra
/* 000054 80053934 00000000 */   nop

glabel func_80053938 # 1
/* 000058 80053938 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00005C 8005393C AFBF0014 */  sw          $ra, 0x14($sp)
/* 000060 80053940 0C01267C */  jal         func_800499F0
/* 000064 80053944 AFA60020 */   sw         $a2, 0x20($sp)
/* 000068 80053948 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00006C 8005394C 8FAE0020 */  lw          $t6, 0x20($sp)
/* 000070 80053950 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000074 80053954 03E00008 */  jr          $ra
/* 000078 80053958 004E1021 */   addu       $v0, $v0, $t6
/* 00007C 8005395C 00000000 */  nop
