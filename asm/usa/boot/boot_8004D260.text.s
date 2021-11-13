.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004D260 # 0
/* 04CE10 8004D260 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04CE14 8004D264 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04CE18 8004D268 AFA5001C */  sw          $a1, 0x1c($sp)
/* 04CE1C 8004D26C 8C8E0008 */  lw          $t6, 0x8($a0)
/* 04CE20 8004D270 51C00016 */  beql        $t6, $zero, .L8004D2CC
/* 04CE24 8004D274 8FBF0014 */   lw         $ra, 0x14($sp)
/* 04CE28 8004D278 0C013763 */  jal         func_8004DD8C
/* 04CE2C 8004D27C AFA40018 */   sw         $a0, 0x18($sp)
/* 04CE30 8004D280 8FA70018 */  lw          $a3, 0x18($sp)
/* 04CE34 8004D284 10400010 */  beq         $v0, $zero, .L8004D2C8
/* 04CE38 8004D288 00403025 */   move       $a2, $v0
/* 04CE3C 8004D28C 3C0F800A */  lui         $t7, %hi(D_8009D9C4)
/* 04CE40 8004D290 8DEFD9C4 */  lw          $t7, %lo(D_8009D9C4)($t7)
/* 04CE44 8004D294 8CF90008 */  lw          $t9, 0x8($a3)
/* 04CE48 8004D298 240A000C */  addiu       $t2, $zero, 0xc
/* 04CE4C 8004D29C 8DF80028 */  lw          $t8, 0x28($t7)
/* 04CE50 8004D2A0 8F280088 */  lw          $t0, 0x88($t9)
/* 04CE54 8004D2A4 A44A0008 */  sh          $t2, 0x8($v0)
/* 04CE58 8004D2A8 24050003 */  addiu       $a1, $zero, 0x3
/* 04CE5C 8004D2AC 03084821 */  addu        $t1, $t8, $t0
/* 04CE60 8004D2B0 AC490004 */  sw          $t1, 0x4($v0)
/* 04CE64 8004D2B4 93AB001F */  lbu         $t3, 0x1f($sp)
/* 04CE68 8004D2B8 AC400000 */  sw          $zero, 0x0($v0)
/* 04CE6C 8004D2BC AC4B000C */  sw          $t3, 0xc($v0)
/* 04CE70 8004D2C0 0C013986 */  jal         func_8004E618
/* 04CE74 8004D2C4 8CE40008 */   lw         $a0, 0x8($a3)
.L8004D2C8:
/* 04CE78 8004D2C8 8FBF0014 */  lw          $ra, 0x14($sp)
.L8004D2CC:
/* 04CE7C 8004D2CC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 04CE80 8004D2D0 03E00008 */  jr          $ra
/* 04CE84 8004D2D4 00000000 */   nop
/* 04CE88 8004D2D8 00000000 */  nop
/* 04CE8C 8004D2DC 00000000 */  nop
