.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004F0F0 # 0
/* 04ECA0 8004F0F0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 04ECA4 8004F0F4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04ECA8 8004F0F8 AFA40020 */  sw          $a0, 0x20($sp)
/* 04ECAC 8004F0FC 0C0150EC */  jal         func_800543B0
/* 04ECB0 8004F100 AFA0001C */   sw         $zero, 0x1c($sp)
/* 04ECB4 8004F104 93AE0023 */  lbu         $t6, 0x23($sp)
/* 04ECB8 8004F108 29C10005 */  slti        $at, $t6, 0x5
/* 04ECBC 8004F10C 14200005 */  bnez        $at, .L8004F124
/* 04ECC0 8004F110 00000000 */   nop
/* 04ECC4 8004F114 240F0004 */  addiu       $t7, $zero, 0x4
/* 04ECC8 8004F118 3C018010 */  lui         $at, %hi(D_80102380 + 0x1)
/* 04ECCC 8004F11C 10000004 */  b           .L8004F130
/* 04ECD0 8004F120 A02F2381 */   sb         $t7, %lo(D_80102380 + 0x1)($at)
.L8004F124:
/* 04ECD4 8004F124 93B80023 */  lbu         $t8, 0x23($sp)
/* 04ECD8 8004F128 3C018010 */  lui         $at, %hi(D_80102380 + 0x1)
/* 04ECDC 8004F12C A0382381 */  sb          $t8, %lo(D_80102380 + 0x1)($at)
.L8004F130:
/* 04ECE0 8004F130 241900FE */  addiu       $t9, $zero, 0xfe
/* 04ECE4 8004F134 3C018010 */  lui         $at, %hi(D_80102380)
/* 04ECE8 8004F138 0C0150FD */  jal         func_800543F4
/* 04ECEC 8004F13C A0392380 */   sb         $t9, %lo(D_80102380)($at)
/* 04ECF0 8004F140 8FBF0014 */  lw          $ra, 0x14($sp)
/* 04ECF4 8004F144 8FA2001C */  lw          $v0, 0x1c($sp)
/* 04ECF8 8004F148 27BD0020 */  addiu       $sp, $sp, 0x20
/* 04ECFC 8004F14C 03E00008 */  jr          $ra
/* 04ED00 8004F150 00000000 */   nop
/* 04ED04 8004F154 00000000 */  nop
/* 04ED08 8004F158 00000000 */  nop
/* 04ED0C 8004F15C 00000000 */  nop
