.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80051710 # 0
/* 0512C0 80051710 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0512C4 80051714 AFBF001C */  sw          $ra, 0x1c($sp)
/* 0512C8 80051718 AFA40028 */  sw          $a0, 0x28($sp)
/* 0512CC 8005171C AFA5002C */  sw          $a1, 0x2c($sp)
/* 0512D0 80051720 AFA60030 */  sw          $a2, 0x30($sp)
/* 0512D4 80051724 0C015FFC */  jal         __osDisableInt
/* 0512D8 80051728 AFB00018 */   sw         $s0, 0x18($sp)
/* 0512DC 8005172C 8FAE0028 */  lw          $t6, 0x28($sp)
/* 0512E0 80051730 3C188010 */  lui         $t8, %hi(D_800FDB90)
/* 0512E4 80051734 8FA8002C */  lw          $t0, 0x2c($sp)
/* 0512E8 80051738 2718DB90 */  addiu       $t8, $t8, %lo(D_800FDB90)
/* 0512EC 8005173C 000E78C0 */  sll         $t7, $t6, 3
/* 0512F0 80051740 01F8C821 */  addu        $t9, $t7, $t8
/* 0512F4 80051744 AFB90020 */  sw          $t9, 0x20($sp)
/* 0512F8 80051748 AF280000 */  sw          $t0, 0x0($t9)
/* 0512FC 8005174C 8FAA0020 */  lw          $t2, 0x20($sp)
/* 051300 80051750 8FA90030 */  lw          $t1, 0x30($sp)
/* 051304 80051754 2401000E */  addiu       $at, $zero, 0xe
/* 051308 80051758 00408025 */  move        $s0, $v0
/* 05130C 8005175C AD490004 */  sw          $t1, 0x4($t2)
/* 051310 80051760 8FAB0028 */  lw          $t3, 0x28($sp)
/* 051314 80051764 15610010 */  bne         $t3, $at, .L800517A8
/* 051318 80051768 00000000 */   nop
/* 05131C 8005176C 3C0C800A */  lui         $t4, %hi(D_8009DC7C)
/* 051320 80051770 8D8CDC7C */  lw          $t4, %lo(D_8009DC7C)($t4)
/* 051324 80051774 11800009 */  beq         $t4, $zero, .L8005179C
/* 051328 80051778 00000000 */   nop
/* 05132C 8005177C 3C0D800A */  lui         $t5, %hi(D_8009DC90)
/* 051330 80051780 8DADDC90 */  lw          $t5, %lo(D_8009DC90)($t5)
/* 051334 80051784 15A00005 */  bne         $t5, $zero, .L8005179C
/* 051338 80051788 00000000 */   nop
/* 05133C 8005178C 8FA4002C */  lw          $a0, 0x2c($sp)
/* 051340 80051790 8FA50030 */  lw          $a1, 0x30($sp)
/* 051344 80051794 0C014C64 */  jal         func_80053190
/* 051348 80051798 00003025 */   move       $a2, $zero
.L8005179C:
/* 05134C 8005179C 240E0001 */  addiu       $t6, $zero, 0x1
/* 051350 800517A0 3C01800A */  lui         $at, %hi(D_8009DC90)
/* 051354 800517A4 AC2EDC90 */  sw          $t6, %lo(D_8009DC90)($at)
.L800517A8:
/* 051358 800517A8 0C016018 */  jal         __osRestoreInt
/* 05135C 800517AC 02002025 */   move       $a0, $s0
/* 051360 800517B0 8FBF001C */  lw          $ra, 0x1c($sp)
/* 051364 800517B4 8FB00018 */  lw          $s0, 0x18($sp)
/* 051368 800517B8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 05136C 800517BC 03E00008 */  jr          $ra
/* 051370 800517C0 00000000 */   nop
/* 051374 800517C4 00000000 */  nop
/* 051378 800517C8 00000000 */  nop
/* 05137C 800517CC 00000000 */  nop
