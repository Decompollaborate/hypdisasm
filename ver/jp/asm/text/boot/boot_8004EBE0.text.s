.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004EBE0 # 0
/* 04E790 8004EBE0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 04E794 8004EBE4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04E798 8004EBE8 AFA40028 */  sw          $a0, 0x28($sp)
/* 04E79C 8004EBEC AFA5002C */  sw          $a1, 0x2c($sp)
/* 04E7A0 8004EBF0 AFA60030 */  sw          $a2, 0x30($sp)
/* 04E7A4 8004EBF4 0C015594 */  jal         func_80055650
/* 04E7A8 8004EBF8 AFB00018 */   sw         $s0, 0x18($sp)
/* 04E7AC 8004EBFC 8FAE0028 */  lw          $t6, 0x28($sp)
/* 04E7B0 8004EC00 3C188010 */  lui         $t8, %hi(__osEventStateTab)
/* 04E7B4 8004EC04 8FA8002C */  lw          $t0, 0x2c($sp)
/* 04E7B8 8004EC08 271822C0 */  addiu       $t8, $t8, %lo(__osEventStateTab)
/* 04E7BC 8004EC0C 000E78C0 */  sll         $t7, $t6, 3
/* 04E7C0 8004EC10 01F8C821 */  addu        $t9, $t7, $t8
/* 04E7C4 8004EC14 AFB90020 */  sw          $t9, 0x20($sp)
/* 04E7C8 8004EC18 AF280000 */  sw          $t0, 0x0($t9)
/* 04E7CC 8004EC1C 8FAA0020 */  lw          $t2, 0x20($sp)
/* 04E7D0 8004EC20 8FA90030 */  lw          $t1, 0x30($sp)
/* 04E7D4 8004EC24 00408025 */  move        $s0, $v0
/* 04E7D8 8004EC28 02002025 */  move        $a0, $s0
/* 04E7DC 8004EC2C 0C01559C */  jal         func_80055670
/* 04E7E0 8004EC30 AD490004 */   sw         $t1, 0x4($t2)
/* 04E7E4 8004EC34 8FBF001C */  lw          $ra, 0x1c($sp)
/* 04E7E8 8004EC38 8FB00018 */  lw          $s0, 0x18($sp)
/* 04E7EC 8004EC3C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 04E7F0 8004EC40 03E00008 */  jr          $ra
/* 04E7F4 8004EC44 00000000 */   nop
/* 04E7F8 8004EC48 00000000 */  nop
/* 04E7FC 8004EC4C 00000000 */  nop
