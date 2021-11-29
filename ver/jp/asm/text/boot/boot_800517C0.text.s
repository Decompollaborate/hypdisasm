.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800517C0 # 0
/* 051370 800517C0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 051374 800517C4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 051378 800517C8 0C015594 */  jal         func_80055650
/* 05137C 800517CC AFB00018 */   sw         $s0, 0x18($sp)
/* 051380 800517D0 3C0F800A */  lui         $t7, %hi(__osRunningThread)
/* 051384 800517D4 8DEF4D70 */  lw          $t7, %lo(__osRunningThread)($t7)
/* 051388 800517D8 240E0002 */  addiu       $t6, $zero, 0x2
/* 05138C 800517DC 3C04800A */  lui         $a0, %hi(__osRunQueue)
/* 051390 800517E0 00408025 */  move        $s0, $v0
/* 051394 800517E4 24844D68 */  addiu       $a0, $a0, %lo(__osRunQueue)
/* 051398 800517E8 0C0154AB */  jal         __osEnqueueAndYield
/* 05139C 800517EC A5EE0010 */   sh         $t6, 0x10($t7)
/* 0513A0 800517F0 0C01559C */  jal         func_80055670
/* 0513A4 800517F4 02002025 */   move       $a0, $s0
/* 0513A8 800517F8 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0513AC 800517FC 8FB00018 */  lw          $s0, 0x18($sp)
/* 0513B0 80051800 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0513B4 80051804 03E00008 */  jr          $ra
/* 0513B8 80051808 00000000 */   nop
/* 0513BC 8005180C 00000000 */  nop
