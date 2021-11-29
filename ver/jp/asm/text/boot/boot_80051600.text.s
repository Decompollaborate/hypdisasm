.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80051600 # 0
/* 0511B0 80051600 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0511B4 80051604 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0511B8 80051608 0C0118DC */  jal         memcpy
/* 0511BC 8005160C AFA60020 */   sw         $a2, 0x20($sp)
/* 0511C0 80051610 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0511C4 80051614 8FAE0020 */  lw          $t6, 0x20($sp)
/* 0511C8 80051618 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0511CC 8005161C 03E00008 */  jr          $ra
/* 0511D0 80051620 004E1021 */   addu       $v0, $v0, $t6

glabel func_80051624 # 1
/* 0511D4 80051624 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0511D8 80051628 AFA40020 */  sw          $a0, 0x20($sp)
/* 0511DC 8005162C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0511E0 80051630 AFA50024 */  sw          $a1, 0x24($sp)
/* 0511E4 80051634 AFA60028 */  sw          $a2, 0x28($sp)
/* 0511E8 80051638 AFA7002C */  sw          $a3, 0x2c($sp)
/* 0511EC 8005163C 3C048005 */  lui         $a0, %hi(func_80051600)
/* 0511F0 80051640 24841600 */  addiu       $a0, $a0, %lo(func_80051600)
/* 0511F4 80051644 27A70028 */  addiu       $a3, $sp, 0x28
/* 0511F8 80051648 8FA60024 */  lw          $a2, 0x24($sp)
/* 0511FC 8005164C 0C0160BC */  jal         _Printf
/* 051200 80051650 8FA50020 */   lw         $a1, 0x20($sp)
/* 051204 80051654 04400004 */  bltz        $v0, .L80051668
/* 051208 80051658 00401825 */   move       $v1, $v0
/* 05120C 8005165C 8FAE0020 */  lw          $t6, 0x20($sp)
/* 051210 80051660 01C27821 */  addu        $t7, $t6, $v0
/* 051214 80051664 A1E00000 */  sb          $zero, 0x0($t7)
.L80051668:
/* 051218 80051668 8FBF0014 */  lw          $ra, 0x14($sp)
/* 05121C 8005166C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 051220 80051670 00601025 */  move        $v0, $v1
/* 051224 80051674 03E00008 */  jr          $ra
/* 051228 80051678 00000000 */   nop
/* 05122C 8005167C 00000000 */  nop
