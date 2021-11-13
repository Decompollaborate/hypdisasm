.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005EBE0 # 0
/* 000000 8005EBE0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 000004 8005EBE4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 000008 8005EBE8 AFA40028 */  sw          $a0, 0x28($sp)
/* 00000C 8005EBEC 0C015FFC */  jal         func_80057FF0
/* 000010 8005EBF0 AFB00018 */   sw         $s0, 0x18($sp)
/* 000014 8005EBF4 3C0E800A */  lui         $t6, %hi(D_8009DC80)
/* 000018 8005EBF8 8DCEDC80 */  lw          $t6, %lo(D_8009DC80)($t6)
/* 00001C 8005EBFC 8FAF0028 */  lw          $t7, 0x28($sp)
/* 000020 8005EC00 00408025 */  move        $s0, $v0
/* 000024 8005EC04 3C01800A */  lui         $at, %hi(D_8009DC80)
/* 000028 8005EC08 01CFC025 */  or          $t8, $t6, $t7
/* 00002C 8005EC0C AC38DC80 */  sw          $t8, %lo(D_8009DC80)($at)
/* 000030 8005EC10 0C016018 */  jal         func_80058060
/* 000034 8005EC14 02002025 */   move       $a0, $s0
/* 000038 8005EC18 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00003C 8005EC1C 8FB00018 */  lw          $s0, 0x18($sp)
/* 000040 8005EC20 27BD0028 */  addiu       $sp, $sp, 0x28
/* 000044 8005EC24 03E00008 */  jr          $ra
/* 000048 8005EC28 00000000 */   nop
/* 00004C 8005EC2C 00000000 */  nop
