.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osEepromProbe # 0
/* 0524D0 80052920 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0524D4 80052924 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0524D8 80052928 0C0160FC */  jal         __osSiGetAccess
/* 0524DC 8005292C AFA40030 */   sw         $a0, 0x30($sp)
/* 0524E0 80052930 8FA40030 */  lw          $a0, 0x30($sp)
/* 0524E4 80052934 0C014B81 */  jal         func_80052E04
/* 0524E8 80052938 27A50024 */   addiu      $a1, $sp, 0x24
/* 0524EC 8005293C 10400003 */  beqz        $v0, .L8005294C
/* 0524F0 80052940 97AE0024 */   lhu        $t6, 0x24($sp)
/* 0524F4 80052944 1000000B */  b           .L80052974
/* 0524F8 80052948 00001825 */   move       $v1, $zero
.L8005294C:
/* 0524FC 8005294C 31CFC000 */  andi        $t7, $t6, 0xc000
/* 052500 80052950 34018000 */  ori         $at, $zero, 0x8000
/* 052504 80052954 11E10005 */  beq         $t7, $at, .L8005296C
/* 052508 80052958 3401C000 */   ori        $at, $zero, 0xc000
/* 05250C 8005295C 11E10005 */  beq         $t7, $at, .L80052974
/* 052510 80052960 24030002 */   addiu      $v1, $zero, 0x2
/* 052514 80052964 10000003 */  b           .L80052974
/* 052518 80052968 00001825 */   move       $v1, $zero
.L8005296C:
/* 05251C 8005296C 10000001 */  b           .L80052974
/* 052520 80052970 24030001 */   addiu      $v1, $zero, 0x1
.L80052974:
/* 052524 80052974 0C01610D */  jal         __osSiRelAccess
/* 052528 80052978 AFA3002C */   sw         $v1, 0x2c($sp)
/* 05252C 8005297C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 052530 80052980 8FA2002C */  lw          $v0, 0x2c($sp)
/* 052534 80052984 27BD0030 */  addiu       $sp, $sp, 0x30
/* 052538 80052988 03E00008 */  jr          $ra
/* 05253C 8005298C 00000000 */   nop
