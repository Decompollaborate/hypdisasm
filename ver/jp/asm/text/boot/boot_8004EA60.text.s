.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004EA60 # 0
/* 04E610 8004EA60 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 04E614 8004EA64 AFBF0024 */  sw          $ra, 0x24($sp)
/* 04E618 8004EA68 AFA40038 */  sw          $a0, 0x38($sp)
/* 04E61C 8004EA6C AFA5003C */  sw          $a1, 0x3c($sp)
/* 04E620 8004EA70 AFA60040 */  sw          $a2, 0x40($sp)
/* 04E624 8004EA74 AFB20020 */  sw          $s2, 0x20($sp)
/* 04E628 8004EA78 AFB1001C */  sw          $s1, 0x1c($sp)
/* 04E62C 8004EA7C 0C015594 */  jal         func_80055650
/* 04E630 8004EA80 AFB00018 */   sw         $s0, 0x18($sp)
/* 04E634 8004EA84 8FAE0038 */  lw          $t6, 0x38($sp)
/* 04E638 8004EA88 00408025 */  move        $s0, $v0
/* 04E63C 8004EA8C 8DCF0008 */  lw          $t7, 0x8($t6)
/* 04E640 8004EA90 8DD80010 */  lw          $t8, 0x10($t6)
/* 04E644 8004EA94 01F8082A */  slt         $at, $t7, $t8
/* 04E648 8004EA98 14200018 */  bnez        $at, .L8004EAFC
/* 04E64C 8004EA9C 00000000 */   nop
.L8004EAA0:
/* 04E650 8004EAA0 8FB90040 */  lw          $t9, 0x40($sp)
/* 04E654 8004EAA4 24010001 */  addiu       $at, $zero, 0x1
/* 04E658 8004EAA8 1721000A */  bne         $t9, $at, .L8004EAD4
/* 04E65C 8004EAAC 00000000 */   nop
/* 04E660 8004EAB0 3C09800A */  lui         $t1, %hi(__osRunningThread)
/* 04E664 8004EAB4 8D294D70 */  lw          $t1, %lo(__osRunningThread)($t1)
/* 04E668 8004EAB8 24080008 */  addiu       $t0, $zero, 0x8
/* 04E66C 8004EABC A5280010 */  sh          $t0, 0x10($t1)
/* 04E670 8004EAC0 8FA40038 */  lw          $a0, 0x38($sp)
/* 04E674 8004EAC4 0C0154AB */  jal         __osEnqueueAndYield
/* 04E678 8004EAC8 24840004 */   addiu      $a0, $a0, 0x4
/* 04E67C 8004EACC 10000005 */  b           .L8004EAE4
/* 04E680 8004EAD0 00000000 */   nop
.L8004EAD4:
/* 04E684 8004EAD4 0C01559C */  jal         func_80055670
/* 04E688 8004EAD8 02002025 */   move       $a0, $s0
/* 04E68C 8004EADC 1000002D */  b           .L8004EB94
/* 04E690 8004EAE0 2402FFFF */   addiu      $v0, $zero, -0x1
.L8004EAE4:
/* 04E694 8004EAE4 8FAA0038 */  lw          $t2, 0x38($sp)
/* 04E698 8004EAE8 8D4B0008 */  lw          $t3, 0x8($t2)
/* 04E69C 8004EAEC 8D4C0010 */  lw          $t4, 0x10($t2)
/* 04E6A0 8004EAF0 016C082A */  slt         $at, $t3, $t4
/* 04E6A4 8004EAF4 1020FFEA */  beqz        $at, .L8004EAA0
/* 04E6A8 8004EAF8 00000000 */   nop
.L8004EAFC:
/* 04E6AC 8004EAFC 8FAD0038 */  lw          $t5, 0x38($sp)
/* 04E6B0 8004EB00 8FA8003C */  lw          $t0, 0x3c($sp)
/* 04E6B4 8004EB04 8DAE000C */  lw          $t6, 0xc($t5)
/* 04E6B8 8004EB08 8DAF0008 */  lw          $t7, 0x8($t5)
/* 04E6BC 8004EB0C 8DB90010 */  lw          $t9, 0x10($t5)
/* 04E6C0 8004EB10 8DA90014 */  lw          $t1, 0x14($t5)
/* 04E6C4 8004EB14 01CFC021 */  addu        $t8, $t6, $t7
/* 04E6C8 8004EB18 0319001A */  div         $zero, $t8, $t9
/* 04E6CC 8004EB1C 00008810 */  mfhi        $s1
/* 04E6D0 8004EB20 00115080 */  sll         $t2, $s1, 2
/* 04E6D4 8004EB24 012A5821 */  addu        $t3, $t1, $t2
/* 04E6D8 8004EB28 AD680000 */  sw          $t0, 0x0($t3)
/* 04E6DC 8004EB2C 8FAC0038 */  lw          $t4, 0x38($sp)
/* 04E6E0 8004EB30 17200002 */  bnez        $t9, .L8004EB3C
/* 04E6E4 8004EB34 00000000 */   nop
/* 04E6E8 8004EB38 0007000D */  break       7
.L8004EB3C:
/* 04E6EC 8004EB3C 2401FFFF */  addiu       $at, $zero, -0x1
/* 04E6F0 8004EB40 17210004 */  bne         $t9, $at, .L8004EB54
/* 04E6F4 8004EB44 3C018000 */   lui        $at, 0x8000
/* 04E6F8 8004EB48 17010002 */  bne         $t8, $at, .L8004EB54
/* 04E6FC 8004EB4C 00000000 */   nop
/* 04E700 8004EB50 0006000D */  break       6
.L8004EB54:
/* 04E704 8004EB54 8D8E0008 */  lw          $t6, 0x8($t4)
/* 04E708 8004EB58 25CF0001 */  addiu       $t7, $t6, 0x1
/* 04E70C 8004EB5C AD8F0008 */  sw          $t7, 0x8($t4)
/* 04E710 8004EB60 8FB80038 */  lw          $t8, 0x38($sp)
/* 04E714 8004EB64 8F190000 */  lw          $t9, 0x0($t8)
/* 04E718 8004EB68 8F2D0000 */  lw          $t5, 0x0($t9)
/* 04E71C 8004EB6C 11A00006 */  beqz        $t5, .L8004EB88
/* 04E720 8004EB70 00000000 */   nop
/* 04E724 8004EB74 0C0154FD */  jal         __osPopThread
/* 04E728 8004EB78 03002025 */   move       $a0, $t8
/* 04E72C 8004EB7C 00409025 */  move        $s2, $v0
/* 04E730 8004EB80 0C0139BC */  jal         func_8004E6F0
/* 04E734 8004EB84 02402025 */   move       $a0, $s2
.L8004EB88:
/* 04E738 8004EB88 0C01559C */  jal         func_80055670
/* 04E73C 8004EB8C 02002025 */   move       $a0, $s0
/* 04E740 8004EB90 00001025 */  move        $v0, $zero
.L8004EB94:
/* 04E744 8004EB94 8FBF0024 */  lw          $ra, 0x24($sp)
/* 04E748 8004EB98 8FB00018 */  lw          $s0, 0x18($sp)
/* 04E74C 8004EB9C 8FB1001C */  lw          $s1, 0x1c($sp)
/* 04E750 8004EBA0 8FB20020 */  lw          $s2, 0x20($sp)
/* 04E754 8004EBA4 03E00008 */  jr          $ra
/* 04E758 8004EBA8 27BD0038 */   addiu      $sp, $sp, 0x38
/* 04E75C 8004EBAC 00000000 */  nop
