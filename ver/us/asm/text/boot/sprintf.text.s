.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel sprintf # 0
/* 053490 800538E0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 053494 800538E4 AFA40020 */  sw          $a0, 0x20($sp)
/* 053498 800538E8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 05349C 800538EC AFA50024 */  sw          $a1, 0x24($sp)
/* 0534A0 800538F0 AFA60028 */  sw          $a2, 0x28($sp)
/* 0534A4 800538F4 AFA7002C */  sw          $a3, 0x2c($sp)
/* 0534A8 800538F8 3C048005 */  lui         $a0, %hi(proutSprintf)
/* 0534AC 800538FC 24843938 */  addiu       $a0, $a0, %lo(proutSprintf)
/* 0534B0 80053900 27A70028 */  addiu       $a3, $sp, 0x28
/* 0534B4 80053904 8FA60024 */  lw          $a2, 0x24($sp)
/* 0534B8 80053908 0C0164B4 */  jal         _Printf
/* 0534BC 8005390C 8FA50020 */   lw         $a1, 0x20($sp)
/* 0534C0 80053910 04400004 */  bltz        $v0, .L80053924
/* 0534C4 80053914 00401825 */   move       $v1, $v0
/* 0534C8 80053918 8FAE0020 */  lw          $t6, 0x20($sp)
/* 0534CC 8005391C 01C27821 */  addu        $t7, $t6, $v0
/* 0534D0 80053920 A1E00000 */  sb          $zero, 0x0($t7)
.L80053924:
/* 0534D4 80053924 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0534D8 80053928 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0534DC 8005392C 00601025 */  move        $v0, $v1
/* 0534E0 80053930 03E00008 */  jr          $ra
/* 0534E4 80053934 00000000 */   nop

glabel proutSprintf # 1
/* 0534E8 80053938 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0534EC 8005393C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0534F0 80053940 0C01267C */  jal         memcpy
/* 0534F4 80053944 AFA60020 */   sw         $a2, 0x20($sp)
/* 0534F8 80053948 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0534FC 8005394C 8FAE0020 */  lw          $t6, 0x20($sp)
/* 053500 80053950 27BD0018 */  addiu       $sp, $sp, 0x18
/* 053504 80053954 03E00008 */  jr          $ra
/* 053508 80053958 004E1021 */   addu       $v0, $v0, $t6
/* 05350C 8005395C 00000000 */  nop
