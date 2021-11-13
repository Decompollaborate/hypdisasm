.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004D120 # 0
/* 000000 8004D120 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000004 8004D124 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000008 8004D128 8C850008 */  lw          $a1, 0x8($a0)
/* 00000C 8004D12C 00803825 */  move        $a3, $a0
/* 000010 8004D130 50A0001F */  beql        $a1, $zero, .L8004D1B0
/* 000014 8004D134 8FBF0014 */   lw         $ra, 0x14($sp)
/* 000018 8004D138 8CAE0088 */  lw          $t6, 0x88($a1)
/* 00001C 8004D13C 51C00017 */  beql        $t6, $zero, .L8004D19C
/* 000020 8004D140 00A02025 */   move       $a0, $a1
/* 000024 8004D144 0C013763 */  jal         func_8004DD8C
/* 000028 8004D148 AFA40018 */   sw         $a0, 0x18($sp)
/* 00002C 8004D14C 8FA70018 */  lw          $a3, 0x18($sp)
/* 000030 8004D150 10400016 */  beq         $v0, $zero, .L8004D1AC
/* 000034 8004D154 00403025 */   move       $a2, $v0
/* 000038 8004D158 3C0F800A */  lui         $t7, %hi(D_8009D9C4)
/* 00003C 8004D15C 8DEFD9C4 */  lw          $t7, %lo(D_8009D9C4)($t7)
/* 000040 8004D160 8CF90008 */  lw          $t9, 0x8($a3)
/* 000044 8004D164 24050003 */  addiu       $a1, $zero, 0x3
/* 000048 8004D168 8DF80028 */  lw          $t8, 0x28($t7)
/* 00004C 8004D16C 8F280088 */  lw          $t0, 0x88($t9)
/* 000050 8004D170 A4400008 */  sh          $zero, 0x8($v0)
/* 000054 8004D174 03084821 */  addu        $t1, $t8, $t0
/* 000058 8004D178 AC490004 */  sw          $t1, 0x4($v0)
/* 00005C 8004D17C 8CEA0008 */  lw          $t2, 0x8($a3)
/* 000060 8004D180 AC4A000C */  sw          $t2, 0xc($v0)
/* 000064 8004D184 8CE40008 */  lw          $a0, 0x8($a3)
/* 000068 8004D188 0C013986 */  jal         func_8004E618
/* 00006C 8004D18C AFA70018 */   sw         $a3, 0x18($sp)
/* 000070 8004D190 10000005 */  b           .L8004D1A8
/* 000074 8004D194 8FA70018 */   lw         $a3, 0x18($sp)
/* 000078 8004D198 00A02025 */  move        $a0, $a1
.L8004D19C:
/* 00007C 8004D19C 0C013790 */  jal         func_8004DE40
/* 000080 8004D1A0 AFA70018 */   sw         $a3, 0x18($sp)
/* 000084 8004D1A4 8FA70018 */  lw          $a3, 0x18($sp)
.L8004D1A8:
/* 000088 8004D1A8 ACE00008 */  sw          $zero, 0x8($a3)
.L8004D1AC:
/* 00008C 8004D1AC 8FBF0014 */  lw          $ra, 0x14($sp)
.L8004D1B0:
/* 000090 8004D1B0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000094 8004D1B4 03E00008 */  jr          $ra
/* 000098 8004D1B8 00000000 */   nop
/* 00009C 8004D1BC 00000000 */  nop
