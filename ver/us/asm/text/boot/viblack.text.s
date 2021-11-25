.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osViBlack # 0
/* 053170 800535C0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 053174 800535C4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 053178 800535C8 0C015FFC */  jal         __osDisableInt
/* 05317C 800535CC AFA40018 */   sw         $a0, 0x18($sp)
/* 053180 800535D0 93AE001B */  lbu         $t6, 0x1b($sp)
/* 053184 800535D4 00402025 */  move        $a0, $v0
/* 053188 800535D8 3C02800A */  lui         $v0, %hi(__osViNext)
/* 05318C 800535DC 11C00007 */  beqz        $t6, .L800535FC
/* 053190 800535E0 00000000 */   nop
/* 053194 800535E4 3C02800A */  lui         $v0, %hi(__osViNext)
/* 053198 800535E8 8C42F954 */  lw          $v0, %lo(__osViNext)($v0)
/* 05319C 800535EC 944F0000 */  lhu         $t7, 0x0($v0)
/* 0531A0 800535F0 35F80020 */  ori         $t8, $t7, 0x20
/* 0531A4 800535F4 10000005 */  b           .L8005360C
/* 0531A8 800535F8 A4580000 */   sh         $t8, 0x0($v0)
.L800535FC:
/* 0531AC 800535FC 8C42F954 */  lw          $v0, %lo(__osViNext)($v0)
/* 0531B0 80053600 94590000 */  lhu         $t9, 0x0($v0)
/* 0531B4 80053604 3328FFDF */  andi        $t0, $t9, 0xffdf
/* 0531B8 80053608 A4480000 */  sh          $t0, 0x0($v0)
.L8005360C:
/* 0531BC 8005360C 0C016018 */  jal         __osRestoreInt
/* 0531C0 80053610 00000000 */   nop
/* 0531C4 80053614 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0531C8 80053618 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0531CC 8005361C 03E00008 */  jr          $ra
/* 0531D0 80053620 00000000 */   nop
/* 0531D4 80053624 00000000 */  nop
/* 0531D8 80053628 00000000 */  nop
/* 0531DC 8005362C 00000000 */  nop
