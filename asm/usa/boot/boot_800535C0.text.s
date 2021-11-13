.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800535C0 # 0
/* 000000 800535C0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000004 800535C4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000008 800535C8 0C015FFC */  jal         func_80057FF0
/* 00000C 800535CC AFA40018 */   sw         $a0, 0x18($sp)
/* 000010 800535D0 93AE001B */  lbu         $t6, 0x1b($sp)
/* 000014 800535D4 00402025 */  move        $a0, $v0
/* 000018 800535D8 3C02800A */  lui         $v0, 0x800a
/* 00001C 800535DC 11C00007 */  beq         $t6, $zero, .L800535FC
/* 000020 800535E0 00000000 */   nop
/* 000024 800535E4 3C02800A */  lui         $v0, %hi(D_8009F954)
/* 000028 800535E8 8C42F954 */  lw          $v0, %lo(D_8009F954)($v0)
/* 00002C 800535EC 944F0000 */  lhu         $t7, 0x0($v0)
/* 000030 800535F0 35F80020 */  ori         $t8, $t7, 0x20
/* 000034 800535F4 10000005 */  b           .L8005360C
/* 000038 800535F8 A4580000 */   sh         $t8, 0x0($v0)
.L800535FC:
/* 00003C 800535FC 8C42F954 */  lw          $v0, -0x6ac($v0)
/* 000040 80053600 94590000 */  lhu         $t9, 0x0($v0)
/* 000044 80053604 3328FFDF */  andi        $t0, $t9, 0xffdf
/* 000048 80053608 A4480000 */  sh          $t0, 0x0($v0)
.L8005360C:
/* 00004C 8005360C 0C016018 */  jal         func_80058060
/* 000050 80053610 00000000 */   nop
/* 000054 80053614 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000058 80053618 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00005C 8005361C 03E00008 */  jr          $ra
/* 000060 80053620 00000000 */   nop
/* 000064 80053624 00000000 */  nop
/* 000068 80053628 00000000 */  nop
/* 00006C 8005362C 00000000 */  nop
