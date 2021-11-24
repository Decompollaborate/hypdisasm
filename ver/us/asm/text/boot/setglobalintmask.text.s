.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osSetGlobalIntMask # 0
/* 05E790 8005EBE0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 05E794 8005EBE4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 05E798 8005EBE8 AFA40028 */  sw          $a0, 0x28($sp)
/* 05E79C 8005EBEC 0C015FFC */  jal         __osDisableInt
/* 05E7A0 8005EBF0 AFB00018 */   sw         $s0, 0x18($sp)
/* 05E7A4 8005EBF4 3C0E800A */  lui         $t6, %hi(__OSGlobalIntMask)
/* 05E7A8 8005EBF8 8DCEDC80 */  lw          $t6, %lo(__OSGlobalIntMask)($t6)
/* 05E7AC 8005EBFC 8FAF0028 */  lw          $t7, 0x28($sp)
/* 05E7B0 8005EC00 00408025 */  move        $s0, $v0
/* 05E7B4 8005EC04 3C01800A */  lui         $at, %hi(__OSGlobalIntMask)
/* 05E7B8 8005EC08 01CFC025 */  or          $t8, $t6, $t7
/* 05E7BC 8005EC0C AC38DC80 */  sw          $t8, %lo(__OSGlobalIntMask)($at)
/* 05E7C0 8005EC10 0C016018 */  jal         __osRestoreInt
/* 05E7C4 8005EC14 02002025 */   move       $a0, $s0
/* 05E7C8 8005EC18 8FBF001C */  lw          $ra, 0x1c($sp)
/* 05E7CC 8005EC1C 8FB00018 */  lw          $s0, 0x18($sp)
/* 05E7D0 8005EC20 27BD0028 */  addiu       $sp, $sp, 0x28
/* 05E7D4 8005EC24 03E00008 */  jr          $ra
/* 05E7D8 8005EC28 00000000 */   nop
/* 05E7DC 8005EC2C 00000000 */  nop
