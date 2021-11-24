.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004D120 # 0
/* 04CCD0 8004D120 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04CCD4 8004D124 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04CCD8 8004D128 8C850008 */  lw          $a1, 0x8($a0)
/* 04CCDC 8004D12C 00803825 */  move        $a3, $a0
/* 04CCE0 8004D130 50A0001F */  beql        $a1, $zero, .L8004D1B0
/* 04CCE4 8004D134 8FBF0014 */   lw         $ra, 0x14($sp)
/* 04CCE8 8004D138 8CAE0088 */  lw          $t6, 0x88($a1)
/* 04CCEC 8004D13C 51C00017 */  beql        $t6, $zero, .L8004D19C
/* 04CCF0 8004D140 00A02025 */   move       $a0, $a1
/* 04CCF4 8004D144 0C013763 */  jal         func_8004DD8C
/* 04CCF8 8004D148 AFA40018 */   sw         $a0, 0x18($sp)
/* 04CCFC 8004D14C 8FA70018 */  lw          $a3, 0x18($sp)
/* 04CD00 8004D150 10400016 */  beqz        $v0, .L8004D1AC
/* 04CD04 8004D154 00403025 */   move       $a2, $v0
/* 04CD08 8004D158 3C0F800A */  lui         $t7, %hi(D_8009D9C4)
/* 04CD0C 8004D15C 8DEFD9C4 */  lw          $t7, %lo(D_8009D9C4)($t7)
/* 04CD10 8004D160 8CF90008 */  lw          $t9, 0x8($a3)
/* 04CD14 8004D164 24050003 */  addiu       $a1, $zero, 0x3
/* 04CD18 8004D168 8DF80028 */  lw          $t8, 0x28($t7)
/* 04CD1C 8004D16C 8F280088 */  lw          $t0, 0x88($t9)
/* 04CD20 8004D170 A4400008 */  sh          $zero, 0x8($v0)
/* 04CD24 8004D174 03084821 */  addu        $t1, $t8, $t0
/* 04CD28 8004D178 AC490004 */  sw          $t1, 0x4($v0)
/* 04CD2C 8004D17C 8CEA0008 */  lw          $t2, 0x8($a3)
/* 04CD30 8004D180 AC4A000C */  sw          $t2, 0xc($v0)
/* 04CD34 8004D184 8CE40008 */  lw          $a0, 0x8($a3)
/* 04CD38 8004D188 0C013986 */  jal         func_8004E618
/* 04CD3C 8004D18C AFA70018 */   sw         $a3, 0x18($sp)
/* 04CD40 8004D190 10000005 */  b           .L8004D1A8
/* 04CD44 8004D194 8FA70018 */   lw         $a3, 0x18($sp)
/* 04CD48 8004D198 00A02025 */  move        $a0, $a1
.L8004D19C:
/* 04CD4C 8004D19C 0C013790 */  jal         func_8004DE40
/* 04CD50 8004D1A0 AFA70018 */   sw         $a3, 0x18($sp)
/* 04CD54 8004D1A4 8FA70018 */  lw          $a3, 0x18($sp)
.L8004D1A8:
/* 04CD58 8004D1A8 ACE00008 */  sw          $zero, 0x8($a3)
.L8004D1AC:
/* 04CD5C 8004D1AC 8FBF0014 */  lw          $ra, 0x14($sp)
.L8004D1B0:
/* 04CD60 8004D1B0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 04CD64 8004D1B4 03E00008 */  jr          $ra
/* 04CD68 8004D1B8 00000000 */   nop
/* 04CD6C 8004D1BC 00000000 */  nop
