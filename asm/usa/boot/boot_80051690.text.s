.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80051690 # 0
/* 000000 80051690 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 000004 80051694 AFBF001C */  sw          $ra, 0x1c($sp)
/* 000008 80051698 0C015FFC */  jal         func_80057FF0
/* 00000C 8005169C AFB00018 */   sw         $s0, 0x18($sp)
/* 000010 800516A0 3C0F800A */  lui         $t7, %hi(D_8009F8A0)
/* 000014 800516A4 8DEFF8A0 */  lw          $t7, %lo(D_8009F8A0)($t7)
/* 000018 800516A8 240E0002 */  addiu       $t6, $zero, 0x2
/* 00001C 800516AC 3C04800A */  lui         $a0, %hi(D_8009F898)
/* 000020 800516B0 00408025 */  move        $s0, $v0
/* 000024 800516B4 2484F898 */  addiu       $a0, $a0, %lo(D_8009F898)
/* 000028 800516B8 0C015F11 */  jal         func_80057C44
/* 00002C 800516BC A5EE0010 */   sh         $t6, 0x10($t7)
/* 000030 800516C0 0C016018 */  jal         func_80058060
/* 000034 800516C4 02002025 */   move       $a0, $s0
/* 000038 800516C8 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00003C 800516CC 8FB00018 */  lw          $s0, 0x18($sp)
/* 000040 800516D0 27BD0028 */  addiu       $sp, $sp, 0x28
/* 000044 800516D4 03E00008 */  jr          $ra
/* 000048 800516D8 00000000 */   nop
/* 00004C 800516DC 00000000 */  nop
