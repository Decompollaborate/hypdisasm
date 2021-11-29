.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004A330 # 0
/* 049EE0 8004A330 3C0E800A */  lui         $t6, %hi(D_800A2E64)
/* 049EE4 8004A334 8DCE2E64 */  lw          $t6, %lo(D_800A2E64)($t6)
/* 049EE8 8004A338 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 049EEC 8004A33C AFBF0014 */  sw          $ra, 0x14($sp)
/* 049EF0 8004A340 8DCF0000 */  lw          $t7, 0x0($t6)
/* 049EF4 8004A344 00803025 */  move        $a2, $a0
/* 049EF8 8004A348 24040001 */  addiu       $a0, $zero, 0x1
/* 049EFC 8004A34C 51E00020 */  beql        $t7, $zero, .L8004A3D0
/* 049F00 8004A350 24040001 */   addiu      $a0, $zero, 0x1
/* 049F04 8004A354 AFA00018 */  sw          $zero, 0x18($sp)
/* 049F08 8004A358 0C0145C8 */  jal         osSetIntMask
/* 049F0C 8004A35C AFA60020 */   sw         $a2, 0x20($sp)
/* 049F10 8004A360 3C04800A */  lui         $a0, %hi(D_800A2E64)
/* 049F14 8004A364 8C842E64 */  lw          $a0, %lo(D_800A2E64)($a0)
/* 049F18 8004A368 8FA50018 */  lw          $a1, 0x18($sp)
/* 049F1C 8004A36C 8FA60020 */  lw          $a2, 0x20($sp)
/* 049F20 8004A370 8C830000 */  lw          $v1, 0x0($a0)
/* 049F24 8004A374 00403825 */  move        $a3, $v0
/* 049F28 8004A378 50600011 */  beql        $v1, $zero, .L8004A3C0
/* 049F2C 8004A37C 00E02025 */   move       $a0, $a3
.L8004A380:
/* 049F30 8004A380 5466000B */  bnel        $v1, $a2, .L8004A3B0
/* 049F34 8004A384 00602825 */   move       $a1, $v1
/* 049F38 8004A388 50A00005 */  beql        $a1, $zero, .L8004A3A0
/* 049F3C 8004A38C 8C790000 */   lw         $t9, 0x0($v1)
/* 049F40 8004A390 8C780000 */  lw          $t8, 0x0($v1)
/* 049F44 8004A394 10000003 */  b           .L8004A3A4
/* 049F48 8004A398 ACB80000 */   sw         $t8, 0x0($a1)
/* 049F4C 8004A39C 8C790000 */  lw          $t9, 0x0($v1)
.L8004A3A0:
/* 049F50 8004A3A0 AC990000 */  sw          $t9, 0x0($a0)
.L8004A3A4:
/* 049F54 8004A3A4 10000005 */  b           .L8004A3BC
/* 049F58 8004A3A8 ACC00000 */   sw         $zero, 0x0($a2)
/* 049F5C 8004A3AC 00602825 */  move        $a1, $v1
.L8004A3B0:
/* 049F60 8004A3B0 8C630000 */  lw          $v1, 0x0($v1)
/* 049F64 8004A3B4 1460FFF2 */  bnez        $v1, .L8004A380
/* 049F68 8004A3B8 00000000 */   nop
.L8004A3BC:
/* 049F6C 8004A3BC 00E02025 */  move        $a0, $a3
.L8004A3C0:
/* 049F70 8004A3C0 0C0145C8 */  jal         osSetIntMask
/* 049F74 8004A3C4 AFA60020 */   sw         $a2, 0x20($sp)
/* 049F78 8004A3C8 8FA60020 */  lw          $a2, 0x20($sp)
/* 049F7C 8004A3CC 24040001 */  addiu       $a0, $zero, 0x1
.L8004A3D0:
/* 049F80 8004A3D0 0C0145C8 */  jal         osSetIntMask
/* 049F84 8004A3D4 AFA60020 */   sw         $a2, 0x20($sp)
/* 049F88 8004A3D8 3C04800A */  lui         $a0, %hi(D_800A2E64)
/* 049F8C 8004A3DC 8C842E64 */  lw          $a0, %lo(D_800A2E64)($a0)
/* 049F90 8004A3E0 8FA60020 */  lw          $a2, 0x20($sp)
/* 049F94 8004A3E4 00402825 */  move        $a1, $v0
/* 049F98 8004A3E8 8C88000C */  lw          $t0, 0xc($a0)
/* 049F9C 8004A3EC 54C80004 */  bnel        $a2, $t0, .L8004A400
/* 049FA0 8004A3F0 8C890004 */   lw         $t1, 0x4($a0)
/* 049FA4 8004A3F4 1000000A */  b           .L8004A420
/* 049FA8 8004A3F8 AC80000C */   sw         $zero, 0xc($a0)
/* 049FAC 8004A3FC 8C890004 */  lw          $t1, 0x4($a0)
.L8004A400:
/* 049FB0 8004A400 54C90004 */  bnel        $a2, $t1, .L8004A414
/* 049FB4 8004A404 8C8A0008 */   lw         $t2, 0x8($a0)
/* 049FB8 8004A408 10000005 */  b           .L8004A420
/* 049FBC 8004A40C AC800004 */   sw         $zero, 0x4($a0)
/* 049FC0 8004A410 8C8A0008 */  lw          $t2, 0x8($a0)
.L8004A414:
/* 049FC4 8004A414 14CA0002 */  bne         $a2, $t2, .L8004A420
/* 049FC8 8004A418 00000000 */   nop
/* 049FCC 8004A41C AC800008 */  sw          $zero, 0x8($a0)
.L8004A420:
/* 049FD0 8004A420 0C0145C8 */  jal         osSetIntMask
/* 049FD4 8004A424 00A02025 */   move       $a0, $a1
/* 049FD8 8004A428 8FBF0014 */  lw          $ra, 0x14($sp)
/* 049FDC 8004A42C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 049FE0 8004A430 03E00008 */  jr          $ra
/* 049FE4 8004A434 00000000 */   nop
/* 049FE8 8004A438 00000000 */  nop
/* 049FEC 8004A43C 00000000 */  nop
