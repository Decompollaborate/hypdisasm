.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osDevMgrMain # 0
/* 059E90 8005A2E0 27BDFF88 */  addiu       $sp, $sp, -0x78
/* 059E94 8005A2E4 AFB3002C */  sw          $s3, 0x2c($sp)
/* 059E98 8005A2E8 AFBE0040 */  sw          $fp, 0x40($sp)
/* 059E9C 8005A2EC AFB7003C */  sw          $s7, 0x3c($sp)
/* 059EA0 8005A2F0 AFB60038 */  sw          $s6, 0x38($sp)
/* 059EA4 8005A2F4 AFB50034 */  sw          $s5, 0x34($sp)
/* 059EA8 8005A2F8 AFB40030 */  sw          $s4, 0x30($sp)
/* 059EAC 8005A2FC 3C130500 */  lui         $s3, 0x500
/* 059EB0 8005A300 0080A025 */  move        $s4, $a0
/* 059EB4 8005A304 AFBF0044 */  sw          $ra, 0x44($sp)
/* 059EB8 8005A308 AFB20028 */  sw          $s2, 0x28($sp)
/* 059EBC 8005A30C AFB10024 */  sw          $s1, 0x24($sp)
/* 059EC0 8005A310 AFB00020 */  sw          $s0, 0x20($sp)
/* 059EC4 8005A314 AFA00074 */  sw          $zero, 0x74($sp)
/* 059EC8 8005A318 36730510 */  ori         $s3, $s3, 0x510
/* 059ECC 8005A31C 24150024 */  addiu       $s5, $zero, 0x24
/* 059ED0 8005A320 27B60070 */  addiu       $s6, $sp, 0x70
/* 059ED4 8005A324 24170001 */  addiu       $s7, $zero, 0x1
/* 059ED8 8005A328 241E001D */  addiu       $fp, $zero, 0x1d
.L8005A32C:
/* 059EDC 8005A32C 8E840008 */  lw          $a0, 0x8($s4)
.L8005A330:
/* 059EE0 8005A330 27A50074 */  addiu       $a1, $sp, 0x74
/* 059EE4 8005A334 0C014554 */  jal         osRecvMesg
/* 059EE8 8005A338 02E03025 */   move       $a2, $s7
/* 059EEC 8005A33C 8FAE0074 */  lw          $t6, 0x74($sp)
/* 059EF0 8005A340 8FA80074 */  lw          $t0, 0x74($sp)
/* 059EF4 8005A344 8DC40014 */  lw          $a0, 0x14($t6)
/* 059EF8 8005A348 50800081 */  beql        $a0, $zero, .L8005A550
/* 059EFC 8005A34C 95090000 */   lhu        $t1, 0x0($t0)
/* 059F00 8005A350 908F0004 */  lbu         $t7, 0x4($a0)
/* 059F04 8005A354 24010002 */  addiu       $at, $zero, 0x2
/* 059F08 8005A358 55E1007D */  bnel        $t7, $at, .L8005A550
/* 059F0C 8005A35C 95090000 */   lhu        $t1, 0x0($t0)
/* 059F10 8005A360 8C820014 */  lw          $v0, 0x14($a0)
/* 059F14 8005A364 24010001 */  addiu       $at, $zero, 0x1
/* 059F18 8005A368 24900014 */  addiu       $s0, $a0, 0x14
/* 059F1C 8005A36C 10400003 */  beq         $v0, $zero, .L8005A37C
/* 059F20 8005A370 27A5006C */   addiu      $a1, $sp, 0x6c
/* 059F24 8005A374 54410076 */  bnel        $v0, $at, .L8005A550
/* 059F28 8005A378 95090000 */   lhu        $t1, 0x0($t0)
.L8005A37C:
/* 059F2C 8005A37C 96180006 */  lhu         $t8, 0x6($s0)
/* 059F30 8005A380 96020004 */  lhu         $v0, 0x4($s0)
/* 059F34 8005A384 2408FFFF */  addiu       $t0, $zero, -0x1
/* 059F38 8005A388 03150019 */  multu       $t8, $s5
/* 059F3C 8005A38C 24010003 */  addiu       $at, $zero, 0x3
/* 059F40 8005A390 AE080008 */  sw          $t0, 0x8($s0)
/* 059F44 8005A394 00009025 */  move        $s2, $zero
/* 059F48 8005A398 02E03025 */  move        $a2, $s7
/* 059F4C 8005A39C 0000C812 */  mflo        $t9
/* 059F50 8005A3A0 02198821 */  addu        $s1, $s0, $t9
/* 059F54 8005A3A4 10410006 */  beq         $v0, $at, .L8005A3C0
/* 059F58 8005A3A8 26310018 */   addiu      $s1, $s1, 0x18
/* 059F5C 8005A3AC 8E290004 */  lw          $t1, 0x4($s1)
/* 059F60 8005A3B0 8E2A000C */  lw          $t2, 0xc($s1)
/* 059F64 8005A3B4 012A5823 */  subu        $t3, $t1, $t2
/* 059F68 8005A3B8 AE2B0004 */  sw          $t3, 0x4($s1)
/* 059F6C 8005A3BC 96020004 */  lhu         $v0, 0x4($s0)
.L8005A3C0:
/* 059F70 8005A3C0 24010002 */  addiu       $at, $zero, 0x2
/* 059F74 8005A3C4 14410007 */  bne         $v0, $at, .L8005A3E4
/* 059F78 8005A3C8 8FAC0074 */   lw         $t4, 0x74($sp)
/* 059F7C 8005A3CC 8D8D0014 */  lw          $t5, 0x14($t4)
/* 059F80 8005A3D0 8DAE0014 */  lw          $t6, 0x14($t5)
/* 059F84 8005A3D4 15C00003 */  bne         $t6, $zero, .L8005A3E4
/* 059F88 8005A3D8 00000000 */   nop
/* 059F8C 8005A3DC 10000001 */  b           .L8005A3E4
/* 059F90 8005A3E0 02E09025 */   move       $s2, $s7
.L8005A3E4:
/* 059F94 8005A3E4 0C014554 */  jal         osRecvMesg
/* 059F98 8005A3E8 8E840010 */   lw         $a0, 0x10($s4)
/* 059F9C 8005A3EC 3C040010 */  lui         $a0, 0x10
/* 059FA0 8005A3F0 0C017A30 */  jal         __osResetGlobalIntMask
/* 059FA4 8005A3F4 34840401 */   ori        $a0, $a0, 0x401
/* 059FA8 8005A3F8 8E060010 */  lw          $a2, 0x10($s0)
/* 059FAC 8005A3FC 8FAF0074 */  lw          $t7, 0x74($sp)
/* 059FB0 8005A400 3C018000 */  lui         $at, 0x8000
/* 059FB4 8005A404 00C1C025 */  or          $t8, $a2, $at
/* 059FB8 8005A408 03003025 */  move        $a2, $t8
/* 059FBC 8005A40C 02602825 */  move        $a1, $s3
/* 059FC0 8005A410 0C017A48 */  jal         __osEPiRawWriteIo
/* 059FC4 8005A414 8DE40014 */   lw         $a0, 0x14($t7)
.L8005A418:
/* 059FC8 8005A418 8E84000C */  lw          $a0, 0xc($s4)
/* 059FCC 8005A41C 02C02825 */  move        $a1, $s6
/* 059FD0 8005A420 0C014554 */  jal         osRecvMesg
/* 059FD4 8005A424 02E03025 */   move       $a2, $s7
/* 059FD8 8005A428 8FB90074 */  lw          $t9, 0x74($sp)
/* 059FDC 8005A42C 8F240014 */  lw          $a0, 0x14($t9)
/* 059FE0 8005A430 24900014 */  addiu       $s0, $a0, 0x14
/* 059FE4 8005A434 96080006 */  lhu         $t0, 0x6($s0)
/* 059FE8 8005A438 01150019 */  multu       $t0, $s5
/* 059FEC 8005A43C 00004812 */  mflo        $t1
/* 059FF0 8005A440 02098821 */  addu        $s1, $s0, $t1
/* 059FF4 8005A444 8E2A0018 */  lw          $t2, 0x18($s1)
/* 059FF8 8005A448 26310018 */  addiu       $s1, $s1, 0x18
/* 059FFC 8005A44C 57CA0027 */  bnel        $fp, $t2, .L8005A4EC
/* 05A000 8005A450 8FA50074 */   lw         $a1, 0x74($sp)
/* 05A004 8005A454 8E060010 */  lw          $a2, 0x10($s0)
/* 05A008 8005A458 3C011000 */  lui         $at, 0x1000
/* 05A00C 8005A45C 02602825 */  move        $a1, $s3
/* 05A010 8005A460 00C15825 */  or          $t3, $a2, $at
/* 05A014 8005A464 0C017A48 */  jal         __osEPiRawWriteIo
/* 05A018 8005A468 01603025 */   move       $a2, $t3
/* 05A01C 8005A46C 8FAC0074 */  lw          $t4, 0x74($sp)
/* 05A020 8005A470 02602825 */  move        $a1, $s3
/* 05A024 8005A474 8E060010 */  lw          $a2, 0x10($s0)
/* 05A028 8005A478 0C017A48 */  jal         __osEPiRawWriteIo
/* 05A02C 8005A47C 8D840014 */   lw         $a0, 0x14($t4)
/* 05A030 8005A480 8FAD0074 */  lw          $t5, 0x74($sp)
/* 05A034 8005A484 3C050500 */  lui         $a1, 0x500
/* 05A038 8005A488 34A50508 */  ori         $a1, $a1, 0x508
/* 05A03C 8005A48C 27A60054 */  addiu       $a2, $sp, 0x54
/* 05A040 8005A490 0C017AA0 */  jal         __osEPiRawReadIo
/* 05A044 8005A494 8DA40014 */   lw         $a0, 0x14($t5)
/* 05A048 8005A498 8FAE0054 */  lw          $t6, 0x54($sp)
/* 05A04C 8005A49C 8FB80074 */  lw          $t8, 0x74($sp)
/* 05A050 8005A4A0 02602825 */  move        $a1, $s3
/* 05A054 8005A4A4 000E7980 */  sll         $t7, $t6, 6
/* 05A058 8005A4A8 05E30008 */  bgezl       $t7, .L8005A4CC
/* 05A05C 8005A4AC 24080004 */   addiu      $t0, $zero, 0x4
/* 05A060 8005A4B0 8E060010 */  lw          $a2, 0x10($s0)
/* 05A064 8005A4B4 3C010100 */  lui         $at, 0x100
/* 05A068 8005A4B8 8F040014 */  lw          $a0, 0x14($t8)
/* 05A06C 8005A4BC 00C1C825 */  or          $t9, $a2, $at
/* 05A070 8005A4C0 0C017A48 */  jal         __osEPiRawWriteIo
/* 05A074 8005A4C4 03203025 */   move       $a2, $t9
/* 05A078 8005A4C8 24080004 */  addiu       $t0, $zero, 0x4
.L8005A4CC:
/* 05A07C 8005A4CC AE280000 */  sw          $t0, 0x0($s1)
/* 05A080 8005A4D0 24090002 */  addiu       $t1, $zero, 0x2
/* 05A084 8005A4D4 3C0AA460 */  lui         $t2, %hi(D_A4600010)
/* 05A088 8005A4D8 3C040010 */  lui         $a0, 0x10
/* 05A08C 8005A4DC AD490010 */  sw          $t1, %lo(D_A4600010)($t2)
/* 05A090 8005A4E0 0C017AF8 */  jal         __osSetGlobalIntMask
/* 05A094 8005A4E4 34840C01 */   ori        $a0, $a0, 0xc01
/* 05A098 8005A4E8 8FA50074 */  lw          $a1, 0x74($sp)
.L8005A4EC:
/* 05A09C 8005A4EC 00003025 */  move        $a2, $zero
/* 05A0A0 8005A4F0 0C014C64 */  jal         osSendMesg
/* 05A0A4 8005A4F4 8CA40004 */   lw         $a0, 0x4($a1)
/* 05A0A8 8005A4F8 16570007 */  bne         $s2, $s7, .L8005A518
/* 05A0AC 8005A4FC 8FAC0074 */   lw         $t4, 0x74($sp)
/* 05A0B0 8005A500 8D8D0014 */  lw          $t5, 0x14($t4)
/* 05A0B4 8005A504 8DAE002C */  lw          $t6, 0x2c($t5)
/* 05A0B8 8005A508 55C00004 */  bnel        $t6, $zero, .L8005A51C
/* 05A0BC 8005A50C 8E840010 */   lw         $a0, 0x10($s4)
/* 05A0C0 8005A510 1000FFC1 */  b           .L8005A418
/* 05A0C4 8005A514 00009025 */   move       $s2, $zero
.L8005A518:
/* 05A0C8 8005A518 8E840010 */  lw          $a0, 0x10($s4)
.L8005A51C:
/* 05A0CC 8005A51C 00002825 */  move        $a1, $zero
/* 05A0D0 8005A520 0C014C64 */  jal         osSendMesg
/* 05A0D4 8005A524 00003025 */   move       $a2, $zero
/* 05A0D8 8005A528 8FAF0074 */  lw          $t7, 0x74($sp)
/* 05A0DC 8005A52C 8DF80014 */  lw          $t8, 0x14($t7)
/* 05A0E0 8005A530 9719001A */  lhu         $t9, 0x1a($t8)
/* 05A0E4 8005A534 56F9FF7E */  bnel        $s7, $t9, .L8005A330
/* 05A0E8 8005A538 8E840008 */   lw         $a0, 0x8($s4)
/* 05A0EC 8005A53C 0C0145A4 */  jal         osYieldThread
/* 05A0F0 8005A540 00000000 */   nop
/* 05A0F4 8005A544 1000FF7A */  b           .L8005A330
/* 05A0F8 8005A548 8E840008 */   lw         $a0, 0x8($s4)
/* 05A0FC 8005A54C 95090000 */  lhu         $t1, 0x0($t0)
.L8005A550:
/* 05A100 8005A550 252AFFF6 */  addiu       $t2, $t1, -0xa
/* 05A104 8005A554 2D410007 */  sltiu       $at, $t2, 0x7
/* 05A108 8005A558 10200047 */  beq         $at, $zero, L8005A678
/* 05A10C 8005A55C 000A5080 */   sll        $t2, $t2, 2
/* 05A110 8005A560 3C01800B */  lui         $at, %hi(jtbl_800A8010)
/* 05A114 8005A564 002A0821 */  addu        $at, $at, $t2
/* 05A118 8005A568 8C2A8010 */  lw          $t2, %lo(jtbl_800A8010)($at)
/* 05A11C 8005A56C 01400008 */  jr          $t2
/* 05A120 8005A570 00000000 */   nop
glabel L8005A574
/* 05A124 8005A574 8E840010 */  lw          $a0, 0x10($s4)
/* 05A128 8005A578 27A5006C */  addiu       $a1, $sp, 0x6c
/* 05A12C 8005A57C 0C014554 */  jal         osRecvMesg
/* 05A130 8005A580 02E03025 */   move       $a2, $s7
/* 05A134 8005A584 8FAB0074 */  lw          $t3, 0x74($sp)
/* 05A138 8005A588 8E990014 */  lw          $t9, 0x14($s4)
/* 05A13C 8005A58C 00002025 */  move        $a0, $zero
/* 05A140 8005A590 8D65000C */  lw          $a1, 0xc($t3)
/* 05A144 8005A594 8D660008 */  lw          $a2, 0x8($t3)
/* 05A148 8005A598 0320F809 */  jalr        $t9
/* 05A14C 8005A59C 8D670010 */   lw         $a3, 0x10($t3)
/* 05A150 8005A5A0 10000036 */  b           .L8005A67C
/* 05A154 8005A5A4 00408025 */   move       $s0, $v0
glabel L8005A5A8
/* 05A158 8005A5A8 8E840010 */  lw          $a0, 0x10($s4)
/* 05A15C 8005A5AC 27A5006C */  addiu       $a1, $sp, 0x6c
/* 05A160 8005A5B0 0C014554 */  jal         osRecvMesg
/* 05A164 8005A5B4 02E03025 */   move       $a2, $s7
/* 05A168 8005A5B8 8FAC0074 */  lw          $t4, 0x74($sp)
/* 05A16C 8005A5BC 8E990014 */  lw          $t9, 0x14($s4)
/* 05A170 8005A5C0 02E02025 */  move        $a0, $s7
/* 05A174 8005A5C4 8D85000C */  lw          $a1, 0xc($t4)
/* 05A178 8005A5C8 8D860008 */  lw          $a2, 0x8($t4)
/* 05A17C 8005A5CC 0320F809 */  jalr        $t9
/* 05A180 8005A5D0 8D870010 */   lw         $a3, 0x10($t4)
/* 05A184 8005A5D4 10000029 */  b           .L8005A67C
/* 05A188 8005A5D8 00408025 */   move       $s0, $v0
glabel L8005A5DC
/* 05A18C 8005A5DC 8E840010 */  lw          $a0, 0x10($s4)
/* 05A190 8005A5E0 27A5006C */  addiu       $a1, $sp, 0x6c
/* 05A194 8005A5E4 0C014554 */  jal         osRecvMesg
/* 05A198 8005A5E8 02E03025 */   move       $a2, $s7
/* 05A19C 8005A5EC 8FAD0074 */  lw          $t5, 0x74($sp)
/* 05A1A0 8005A5F0 00002825 */  move        $a1, $zero
/* 05A1A4 8005A5F4 8DAE0010 */  lw          $t6, 0x10($t5)
/* 05A1A8 8005A5F8 8DA40014 */  lw          $a0, 0x14($t5)
/* 05A1AC 8005A5FC 8DA6000C */  lw          $a2, 0xc($t5)
/* 05A1B0 8005A600 8DA70008 */  lw          $a3, 0x8($t5)
/* 05A1B4 8005A604 AFAE0010 */  sw          $t6, 0x10($sp)
/* 05A1B8 8005A608 8E990018 */  lw          $t9, 0x18($s4)
/* 05A1BC 8005A60C 0320F809 */  jalr        $t9
/* 05A1C0 8005A610 00000000 */   nop
/* 05A1C4 8005A614 10000019 */  b           .L8005A67C
/* 05A1C8 8005A618 00408025 */   move       $s0, $v0
glabel L8005A61C
/* 05A1CC 8005A61C 8E840010 */  lw          $a0, 0x10($s4)
/* 05A1D0 8005A620 27A5006C */  addiu       $a1, $sp, 0x6c
/* 05A1D4 8005A624 0C014554 */  jal         osRecvMesg
/* 05A1D8 8005A628 02E03025 */   move       $a2, $s7
/* 05A1DC 8005A62C 8FAF0074 */  lw          $t7, 0x74($sp)
/* 05A1E0 8005A630 02E02825 */  move        $a1, $s7
/* 05A1E4 8005A634 8DF80010 */  lw          $t8, 0x10($t7)
/* 05A1E8 8005A638 8DE40014 */  lw          $a0, 0x14($t7)
/* 05A1EC 8005A63C 8DE6000C */  lw          $a2, 0xc($t7)
/* 05A1F0 8005A640 8DE70008 */  lw          $a3, 0x8($t7)
/* 05A1F4 8005A644 AFB80010 */  sw          $t8, 0x10($sp)
/* 05A1F8 8005A648 8E990018 */  lw          $t9, 0x18($s4)
/* 05A1FC 8005A64C 0320F809 */  jalr        $t9
/* 05A200 8005A650 00000000 */   nop
/* 05A204 8005A654 10000009 */  b           .L8005A67C
/* 05A208 8005A658 00408025 */   move       $s0, $v0
glabel L8005A65C
/* 05A20C 8005A65C 8FA50074 */  lw          $a1, 0x74($sp)
/* 05A210 8005A660 00003025 */  move        $a2, $zero
/* 05A214 8005A664 2410FFFF */  addiu       $s0, $zero, -0x1
/* 05A218 8005A668 0C014C64 */  jal         osSendMesg
/* 05A21C 8005A66C 8CA40004 */   lw         $a0, 0x4($a1)
/* 05A220 8005A670 10000002 */  b           .L8005A67C
/* 05A224 8005A674 00000000 */   nop
glabel L8005A678
/* 05A228 8005A678 2410FFFF */  addiu       $s0, $zero, -0x1
.L8005A67C:
/* 05A22C 8005A67C 1600FF2B */  bne         $s0, $zero, .L8005A32C
/* 05A230 8005A680 02C02825 */   move       $a1, $s6
/* 05A234 8005A684 8E84000C */  lw          $a0, 0xc($s4)
/* 05A238 8005A688 0C014554 */  jal         osRecvMesg
/* 05A23C 8005A68C 02E03025 */   move       $a2, $s7
/* 05A240 8005A690 8FA50074 */  lw          $a1, 0x74($sp)
/* 05A244 8005A694 00003025 */  move        $a2, $zero
/* 05A248 8005A698 0C014C64 */  jal         osSendMesg
/* 05A24C 8005A69C 8CA40004 */   lw         $a0, 0x4($a1)
/* 05A250 8005A6A0 8E840010 */  lw          $a0, 0x10($s4)
/* 05A254 8005A6A4 00002825 */  move        $a1, $zero
/* 05A258 8005A6A8 0C014C64 */  jal         osSendMesg
/* 05A25C 8005A6AC 00003025 */   move       $a2, $zero
/* 05A260 8005A6B0 1000FF1F */  b           .L8005A330
/* 05A264 8005A6B4 8E840008 */   lw         $a0, 0x8($s4)
/* 05A268 8005A6B8 00000000 */  nop
/* 05A26C 8005A6BC 00000000 */  nop
/* 05A270 8005A6C0 8FBF0044 */  lw          $ra, 0x44($sp)
/* 05A274 8005A6C4 8FB00020 */  lw          $s0, 0x20($sp)
/* 05A278 8005A6C8 8FB10024 */  lw          $s1, 0x24($sp)
/* 05A27C 8005A6CC 8FB20028 */  lw          $s2, 0x28($sp)
/* 05A280 8005A6D0 8FB3002C */  lw          $s3, 0x2c($sp)
/* 05A284 8005A6D4 8FB40030 */  lw          $s4, 0x30($sp)
/* 05A288 8005A6D8 8FB50034 */  lw          $s5, 0x34($sp)
/* 05A28C 8005A6DC 8FB60038 */  lw          $s6, 0x38($sp)
/* 05A290 8005A6E0 8FB7003C */  lw          $s7, 0x3c($sp)
/* 05A294 8005A6E4 8FBE0040 */  lw          $fp, 0x40($sp)
/* 05A298 8005A6E8 03E00008 */  jr          $ra
/* 05A29C 8005A6EC 27BD0078 */   addiu      $sp, $sp, 0x78
