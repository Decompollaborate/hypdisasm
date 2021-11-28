.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005D610 # 0
/* 05D1C0 8005D610 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 05D1C4 8005D614 AFBF001C */  sw          $ra, 0x1c($sp)
/* 05D1C8 8005D618 AFA40028 */  sw          $a0, 0x28($sp)
/* 05D1CC 8005D61C 0C015594 */  jal         func_80055650
/* 05D1D0 8005D620 AFB00018 */   sw         $s0, 0x18($sp)
/* 05D1D4 8005D624 3C0E800A */  lui         $t6, %hi(__OSGlobalIntMask)
/* 05D1D8 8005D628 8DCE3130 */  lw          $t6, %lo(__OSGlobalIntMask)($t6)
/* 05D1DC 8005D62C 8FAF0028 */  lw          $t7, 0x28($sp)
/* 05D1E0 8005D630 00408025 */  move        $s0, $v0
/* 05D1E4 8005D634 3C01800A */  lui         $at, %hi(__OSGlobalIntMask)
/* 05D1E8 8005D638 01CFC025 */  or          $t8, $t6, $t7
/* 05D1EC 8005D63C AC383130 */  sw          $t8, %lo(__OSGlobalIntMask)($at)
/* 05D1F0 8005D640 0C01559C */  jal         func_80055670
/* 05D1F4 8005D644 02002025 */   move       $a0, $s0
/* 05D1F8 8005D648 8FBF001C */  lw          $ra, 0x1c($sp)
/* 05D1FC 8005D64C 8FB00018 */  lw          $s0, 0x18($sp)
/* 05D200 8005D650 27BD0028 */  addiu       $sp, $sp, 0x28
/* 05D204 8005D654 03E00008 */  jr          $ra
/* 05D208 8005D658 00000000 */   nop
/* 05D20C 8005D65C 00000000 */  nop
