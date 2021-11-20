.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osVoiceContWrite20 # 0
/* 0559D0 80055E20 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 0559D4 80055E24 AFBF003C */  sw          $ra, 0x3c($sp)
/* 0559D8 80055E28 AFB60030 */  sw          $s6, 0x30($sp)
/* 0559DC 80055E2C AFB5002C */  sw          $s5, 0x2c($sp)
/* 0559E0 80055E30 AFB40028 */  sw          $s4, 0x28($sp)
/* 0559E4 80055E34 AFB1001C */  sw          $s1, 0x1c($sp)
/* 0559E8 80055E38 00A08825 */  move        $s1, $a1
/* 0559EC 80055E3C 0080A825 */  move        $s5, $a0
/* 0559F0 80055E40 00E0B025 */  move        $s6, $a3
/* 0559F4 80055E44 AFBE0038 */  sw          $fp, 0x38($sp)
/* 0559F8 80055E48 AFB70034 */  sw          $s7, 0x34($sp)
/* 0559FC 80055E4C AFB30024 */  sw          $s3, 0x24($sp)
/* 055A00 80055E50 AFB20020 */  sw          $s2, 0x20($sp)
/* 055A04 80055E54 AFB00018 */  sw          $s0, 0x18($sp)
/* 055A08 80055E58 AFA60078 */  sw          $a2, 0x78($sp)
/* 055A0C 80055E5C 0C0160FC */  jal         __osSiGetAccess
/* 055A10 80055E60 24140002 */   addiu      $s4, $zero, 0x2
/* 055A14 80055E64 97A5007A */  lhu         $a1, 0x7a($sp)
/* 055A18 80055E68 3C1E800A */  lui         $fp, %hi(__osPfsLastChannel)
/* 055A1C 80055E6C 3C178010 */  lui         $s7, %hi(__osContLastPoll)
/* 055A20 80055E70 3C138010 */  lui         $s3, %hi(__osPfsPifRam)
/* 055A24 80055E74 000570C3 */  sra         $t6, $a1, 3
/* 055A28 80055E78 00057940 */  sll         $t7, $a1, 5
/* 055A2C 80055E7C AFAF0048 */  sw          $t7, 0x48($sp)
/* 055A30 80055E80 AFAE004C */  sw          $t6, 0x4c($sp)
/* 055A34 80055E84 26730390 */  addiu       $s3, $s3, %lo(__osPfsPifRam)
/* 055A38 80055E88 26F7DC50 */  addiu       $s7, $s7, %lo(__osContLastPoll)
/* 055A3C 80055E8C 27DEF8C0 */  addiu       $fp, $fp, %lo(__osPfsLastChannel)
.L80055E90:
/* 055A40 80055E90 92F80000 */  lbu         $t8, 0x0($s7)
/* 055A44 80055E94 2401000A */  addiu       $at, $zero, 0xa
/* 055A48 80055E98 97A5007A */  lhu         $a1, 0x7a($sp)
/* 055A4C 80055E9C 17010003 */  bne         $t8, $at, .L80055EAC
/* 055A50 80055EA0 02608025 */   move       $s0, $s3
/* 055A54 80055EA4 8FD90000 */  lw          $t9, 0x0($fp)
/* 055A58 80055EA8 12390023 */  beq         $s1, $t9, .L80055F38
.L80055EAC:
/* 055A5C 80055EAC 2408000A */   addiu      $t0, $zero, 0xa
/* 055A60 80055EB0 A2E80000 */  sb          $t0, 0x0($s7)
/* 055A64 80055EB4 AFD10000 */  sw          $s1, 0x0($fp)
/* 055A68 80055EB8 1A200010 */  blez        $s1, .L80055EFC
/* 055A6C 80055EBC 00001025 */   move       $v0, $zero
/* 055A70 80055EC0 32240003 */  andi        $a0, $s1, 0x3
/* 055A74 80055EC4 10800006 */  beqz        $a0, .L80055EE0
/* 055A78 80055EC8 00801825 */   move       $v1, $a0
.L80055ECC:
/* 055A7C 80055ECC 24420001 */  addiu       $v0, $v0, 0x1
/* 055A80 80055ED0 A2000000 */  sb          $zero, 0x0($s0)
/* 055A84 80055ED4 1462FFFD */  bne         $v1, $v0, .L80055ECC
/* 055A88 80055ED8 26100001 */   addiu      $s0, $s0, 0x1
/* 055A8C 80055EDC 10510007 */  beq         $v0, $s1, .L80055EFC
.L80055EE0:
/* 055A90 80055EE0 24420004 */   addiu      $v0, $v0, 0x4
/* 055A94 80055EE4 A2000000 */  sb          $zero, 0x0($s0)
/* 055A98 80055EE8 A2000001 */  sb          $zero, 0x1($s0)
/* 055A9C 80055EEC A2000002 */  sb          $zero, 0x2($s0)
/* 055AA0 80055EF0 A2000003 */  sb          $zero, 0x3($s0)
/* 055AA4 80055EF4 1451FFFA */  bne         $v0, $s1, .L80055EE0
/* 055AA8 80055EF8 26100004 */   addiu      $s0, $s0, 0x4
.L80055EFC:
/* 055AAC 80055EFC 24090001 */  addiu       $t1, $zero, 0x1
/* 055AB0 80055F00 AE69003C */  sw          $t1, 0x3c($s3)
/* 055AB4 80055F04 240A00FF */  addiu       $t2, $zero, 0xff
/* 055AB8 80055F08 240B0017 */  addiu       $t3, $zero, 0x17
/* 055ABC 80055F0C 240C0001 */  addiu       $t4, $zero, 0x1
/* 055AC0 80055F10 240D000A */  addiu       $t5, $zero, 0xa
/* 055AC4 80055F14 240E00FF */  addiu       $t6, $zero, 0xff
/* 055AC8 80055F18 240F00FE */  addiu       $t7, $zero, 0xfe
/* 055ACC 80055F1C A20A0000 */  sb          $t2, 0x0($s0)
/* 055AD0 80055F20 A20B0001 */  sb          $t3, 0x1($s0)
/* 055AD4 80055F24 A20C0002 */  sb          $t4, 0x2($s0)
/* 055AD8 80055F28 A20D0003 */  sb          $t5, 0x3($s0)
/* 055ADC 80055F2C A20E001A */  sb          $t6, 0x1a($s0)
/* 055AE0 80055F30 10000002 */  b           .L80055F3C
/* 055AE4 80055F34 A20F001B */   sb         $t7, 0x1b($s0)
.L80055F38:
/* 055AE8 80055F38 02718021 */  addu        $s0, $s3, $s1
.L80055F3C:
/* 055AEC 80055F3C 8FB8004C */  lw          $t8, 0x4c($sp)
/* 055AF0 80055F40 30A4FFFF */  andi        $a0, $a1, 0xffff
/* 055AF4 80055F44 0C0161A8 */  jal         __osContAddressCrc
/* 055AF8 80055F48 A2180004 */   sb         $t8, 0x4($s0)
/* 055AFC 80055F4C 8FB90048 */  lw          $t9, 0x48($sp)
/* 055B00 80055F50 02C02025 */  move        $a0, $s6
/* 055B04 80055F54 26050006 */  addiu       $a1, $s0, 0x6
/* 055B08 80055F58 00594025 */  or          $t0, $v0, $t9
/* 055B0C 80055F5C A2080005 */  sb          $t0, 0x5($s0)
/* 055B10 80055F60 0C014984 */  jal         bcopy
/* 055B14 80055F64 24060014 */   addiu      $a2, $zero, 0x14
/* 055B18 80055F68 24040001 */  addiu       $a0, $zero, 0x1
/* 055B1C 80055F6C 0C016118 */  jal         __osSiRawStartDma
/* 055B20 80055F70 02602825 */   move       $a1, $s3
/* 055B24 80055F74 02C02025 */  move        $a0, $s6
/* 055B28 80055F78 0C016C0C */  jal         __osVoiceContDataCrc
/* 055B2C 80055F7C 24050014 */   addiu      $a1, $zero, 0x14
/* 055B30 80055F80 305200FF */  andi        $s2, $v0, 0xff
/* 055B34 80055F84 02A02025 */  move        $a0, $s5
/* 055B38 80055F88 00002825 */  move        $a1, $zero
/* 055B3C 80055F8C 0C014554 */  jal         osRecvMesg
/* 055B40 80055F90 24060001 */   addiu      $a2, $zero, 0x1
/* 055B44 80055F94 00002025 */  move        $a0, $zero
/* 055B48 80055F98 0C016118 */  jal         __osSiRawStartDma
/* 055B4C 80055F9C 02602825 */   move       $a1, $s3
/* 055B50 80055FA0 02A02025 */  move        $a0, $s5
/* 055B54 80055FA4 00002825 */  move        $a1, $zero
/* 055B58 80055FA8 0C014554 */  jal         osRecvMesg
/* 055B5C 80055FAC 24060001 */   addiu      $a2, $zero, 0x1
/* 055B60 80055FB0 92030002 */  lbu         $v1, 0x2($s0)
/* 055B64 80055FB4 306900C0 */  andi        $t1, $v1, 0xc0
/* 055B68 80055FB8 00091903 */  sra         $v1, $t1, 4
/* 055B6C 80055FBC 5460000D */  bnel        $v1, $zero, .L80055FF4
/* 055B70 80055FC0 24030001 */   addiu      $v1, $zero, 0x1
/* 055B74 80055FC4 920B001A */  lbu         $t3, 0x1a($s0)
/* 055B78 80055FC8 02A02025 */  move        $a0, $s5
/* 055B7C 80055FCC 02202825 */  move        $a1, $s1
/* 055B80 80055FD0 51720009 */  beql        $t3, $s2, .L80055FF8
/* 055B84 80055FD4 24010004 */   addiu      $at, $zero, 0x4
/* 055B88 80055FD8 0C01558C */  jal         __osVoiceGetStatus
/* 055B8C 80055FDC 27A6006B */   addiu      $a2, $sp, 0x6b
/* 055B90 80055FE0 14400009 */  bnez        $v0, .L80056008
/* 055B94 80055FE4 00401825 */   move       $v1, $v0
/* 055B98 80055FE8 10000002 */  b           .L80055FF4
/* 055B9C 80055FEC 24030004 */   addiu      $v1, $zero, 0x4
/* 055BA0 80055FF0 24030001 */  addiu       $v1, $zero, 0x1
.L80055FF4:
/* 055BA4 80055FF4 24010004 */  addiu       $at, $zero, 0x4
.L80055FF8:
/* 055BA8 80055FF8 14610003 */  bne         $v1, $at, .L80056008
/* 055BAC 80055FFC 2A820000 */   slti       $v0, $s4, 0x0
/* 055BB0 80056000 1040FFA3 */  beqz        $v0, .L80055E90
/* 055BB4 80056004 2694FFFF */   addiu      $s4, $s4, -0x1
.L80056008:
/* 055BB8 80056008 0C01610D */  jal         __osSiRelAccess
/* 055BBC 8005600C AFA3006C */   sw         $v1, 0x6c($sp)
/* 055BC0 80056010 8FBF003C */  lw          $ra, 0x3c($sp)
/* 055BC4 80056014 8FA2006C */  lw          $v0, 0x6c($sp)
/* 055BC8 80056018 8FB00018 */  lw          $s0, 0x18($sp)
/* 055BCC 8005601C 8FB1001C */  lw          $s1, 0x1c($sp)
/* 055BD0 80056020 8FB20020 */  lw          $s2, 0x20($sp)
/* 055BD4 80056024 8FB30024 */  lw          $s3, 0x24($sp)
/* 055BD8 80056028 8FB40028 */  lw          $s4, 0x28($sp)
/* 055BDC 8005602C 8FB5002C */  lw          $s5, 0x2c($sp)
/* 055BE0 80056030 8FB60030 */  lw          $s6, 0x30($sp)
/* 055BE4 80056034 8FB70034 */  lw          $s7, 0x34($sp)
/* 055BE8 80056038 8FBE0038 */  lw          $fp, 0x38($sp)
/* 055BEC 8005603C 03E00008 */  jr          $ra
/* 055BF0 80056040 27BD0070 */   addiu      $sp, $sp, 0x70
/* 055BF4 80056044 00000000 */  nop
/* 055BF8 80056048 00000000 */  nop
/* 055BFC 8005604C 00000000 */  nop
