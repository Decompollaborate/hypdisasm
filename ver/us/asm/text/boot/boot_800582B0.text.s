.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800582B0 # 0
/* 057E60 800582B0 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 057E64 800582B4 24820040 */  addiu       $v0, $a0, 0x40
/* 057E68 800582B8 24A30010 */  addiu       $v1, $a1, 0x10
/* 057E6C 800582BC 03A05025 */  move        $t2, $sp
/* 057E70 800582C0 00A03825 */  move        $a3, $a1
.L800582C4:
/* 057E74 800582C4 C4840000 */  lwc1        $f4, 0x0($a0)
/* 057E78 800582C8 C4E60000 */  lwc1        $f6, 0x0($a3)
/* 057E7C 800582CC C48A0004 */  lwc1        $f10, 0x4($a0)
/* 057E80 800582D0 C4F00010 */  lwc1        $f16, 0x10($a3)
/* 057E84 800582D4 46062202 */  mul.s       $f8, $f4, $f6
/* 057E88 800582D8 C4840008 */  lwc1        $f4, 0x8($a0)
/* 057E8C 800582DC C4E60020 */  lwc1        $f6, 0x20($a3)
/* 057E90 800582E0 46105482 */  mul.s       $f18, $f10, $f16
/* 057E94 800582E4 C48A000C */  lwc1        $f10, 0xc($a0)
/* 057E98 800582E8 C4F00030 */  lwc1        $f16, 0x30($a3)
/* 057E9C 800582EC 24E70004 */  addiu       $a3, $a3, 0x4
/* 057EA0 800582F0 254A0004 */  addiu       $t2, $t2, 0x4
/* 057EA4 800582F4 46124200 */  add.s       $f8, $f8, $f18
/* 057EA8 800582F8 46062482 */  mul.s       $f18, $f4, $f6
/* 057EAC 800582FC 46124200 */  add.s       $f8, $f8, $f18
/* 057EB0 80058300 46105482 */  mul.s       $f18, $f10, $f16
/* 057EB4 80058304 46124200 */  add.s       $f8, $f8, $f18
/* 057EB8 80058308 14E3FFEE */  bne         $a3, $v1, .L800582C4
/* 057EBC 8005830C E548FFFC */   swc1       $f8, -0x4($t2)
/* 057EC0 80058310 24840010 */  addiu       $a0, $a0, 0x10
/* 057EC4 80058314 5482FFEB */  bnel        $a0, $v0, .L800582C4
/* 057EC8 80058318 00A03825 */   move       $a3, $a1
/* 057ECC 8005831C E4C8003C */  swc1        $f8, 0x3c($a2)
/* 057ED0 80058320 8FA80000 */  lw          $t0, 0x0($sp)
/* 057ED4 80058324 8FA90004 */  lw          $t1, 0x4($sp)
/* 057ED8 80058328 8FAA0008 */  lw          $t2, 0x8($sp)
/* 057EDC 8005832C 8FAB000C */  lw          $t3, 0xc($sp)
/* 057EE0 80058330 8FAC0010 */  lw          $t4, 0x10($sp)
/* 057EE4 80058334 8FAD0014 */  lw          $t5, 0x14($sp)
/* 057EE8 80058338 8FAE0018 */  lw          $t6, 0x18($sp)
/* 057EEC 8005833C 8FAF001C */  lw          $t7, 0x1c($sp)
/* 057EF0 80058340 8FB80020 */  lw          $t8, 0x20($sp)
/* 057EF4 80058344 8FB90024 */  lw          $t9, 0x24($sp)
/* 057EF8 80058348 8FA20028 */  lw          $v0, 0x28($sp)
/* 057EFC 8005834C 8FA3002C */  lw          $v1, 0x2c($sp)
/* 057F00 80058350 8FA40030 */  lw          $a0, 0x30($sp)
/* 057F04 80058354 8FA50034 */  lw          $a1, 0x34($sp)
/* 057F08 80058358 8FA70038 */  lw          $a3, 0x38($sp)
/* 057F0C 8005835C 27BD0040 */  addiu       $sp, $sp, 0x40
/* 057F10 80058360 ACC80000 */  sw          $t0, 0x0($a2)
/* 057F14 80058364 ACC90004 */  sw          $t1, 0x4($a2)
/* 057F18 80058368 ACCA0008 */  sw          $t2, 0x8($a2)
/* 057F1C 8005836C ACCB000C */  sw          $t3, 0xc($a2)
/* 057F20 80058370 ACCC0010 */  sw          $t4, 0x10($a2)
/* 057F24 80058374 ACCD0014 */  sw          $t5, 0x14($a2)
/* 057F28 80058378 ACCE0018 */  sw          $t6, 0x18($a2)
/* 057F2C 8005837C ACCF001C */  sw          $t7, 0x1c($a2)
/* 057F30 80058380 ACD80020 */  sw          $t8, 0x20($a2)
/* 057F34 80058384 ACD90024 */  sw          $t9, 0x24($a2)
/* 057F38 80058388 ACC20028 */  sw          $v0, 0x28($a2)
/* 057F3C 8005838C ACC3002C */  sw          $v1, 0x2c($a2)
/* 057F40 80058390 ACC40030 */  sw          $a0, 0x30($a2)
/* 057F44 80058394 ACC50034 */  sw          $a1, 0x34($a2)
/* 057F48 80058398 03E00008 */  jr          $ra
/* 057F4C 8005839C ACC70038 */   sw         $a3, 0x38($a2)
