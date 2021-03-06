.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osVoiceContRead2 # 0
/* 0554C0 80055910 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 0554C4 80055914 AFBF003C */  sw          $ra, 0x3c($sp)
/* 0554C8 80055918 AFB60030 */  sw          $s6, 0x30($sp)
/* 0554CC 8005591C AFB5002C */  sw          $s5, 0x2c($sp)
/* 0554D0 80055920 AFB1001C */  sw          $s1, 0x1c($sp)
/* 0554D4 80055924 00A08825 */  move        $s1, $a1
/* 0554D8 80055928 0080B025 */  move        $s6, $a0
/* 0554DC 8005592C AFBE0038 */  sw          $fp, 0x38($sp)
/* 0554E0 80055930 AFB70034 */  sw          $s7, 0x34($sp)
/* 0554E4 80055934 AFB40028 */  sw          $s4, 0x28($sp)
/* 0554E8 80055938 AFB30024 */  sw          $s3, 0x24($sp)
/* 0554EC 8005593C AFB20020 */  sw          $s2, 0x20($sp)
/* 0554F0 80055940 AFB00018 */  sw          $s0, 0x18($sp)
/* 0554F4 80055944 AFA60070 */  sw          $a2, 0x70($sp)
/* 0554F8 80055948 AFA70074 */  sw          $a3, 0x74($sp)
/* 0554FC 8005594C 0C0160FC */  jal         __osSiGetAccess
/* 055500 80055950 24150002 */   addiu      $s5, $zero, 0x2
/* 055504 80055954 97A50072 */  lhu         $a1, 0x72($sp)
/* 055508 80055958 3C1E800A */  lui         $fp, %hi(__osPfsLastChannel)
/* 05550C 8005595C 3C178010 */  lui         $s7, %hi(__osContLastPoll)
/* 055510 80055960 3C148010 */  lui         $s4, %hi(__osPfsPifRam)
/* 055514 80055964 000570C3 */  sra         $t6, $a1, 3
/* 055518 80055968 00057940 */  sll         $t7, $a1, 5
/* 05551C 8005596C AFAF0044 */  sw          $t7, 0x44($sp)
/* 055520 80055970 AFAE0048 */  sw          $t6, 0x48($sp)
/* 055524 80055974 26940390 */  addiu       $s4, $s4, %lo(__osPfsPifRam)
/* 055528 80055978 26F7DC50 */  addiu       $s7, $s7, %lo(__osContLastPoll)
/* 05552C 8005597C 27DEF8C0 */  addiu       $fp, $fp, %lo(__osPfsLastChannel)
.L80055980:
/* 055530 80055980 92F80000 */  lbu         $t8, 0x0($s7)
/* 055534 80055984 2401000B */  addiu       $at, $zero, 0xb
/* 055538 80055988 97A50072 */  lhu         $a1, 0x72($sp)
/* 05553C 8005598C 17010003 */  bne         $t8, $at, .L8005599C
/* 055540 80055990 02808025 */   move       $s0, $s4
/* 055544 80055994 8FD90000 */  lw          $t9, 0x0($fp)
/* 055548 80055998 12390023 */  beq         $s1, $t9, .L80055A28
.L8005599C:
/* 05554C 8005599C 2408000B */   addiu      $t0, $zero, 0xb
/* 055550 800559A0 A2E80000 */  sb          $t0, 0x0($s7)
/* 055554 800559A4 AFD10000 */  sw          $s1, 0x0($fp)
/* 055558 800559A8 1A200010 */  blez        $s1, .L800559EC
/* 05555C 800559AC 00001025 */   move       $v0, $zero
/* 055560 800559B0 32240003 */  andi        $a0, $s1, 0x3
/* 055564 800559B4 10800006 */  beqz        $a0, .L800559D0
/* 055568 800559B8 00801825 */   move       $v1, $a0
.L800559BC:
/* 05556C 800559BC 24420001 */  addiu       $v0, $v0, 0x1
/* 055570 800559C0 A2000000 */  sb          $zero, 0x0($s0)
/* 055574 800559C4 1462FFFD */  bne         $v1, $v0, .L800559BC
/* 055578 800559C8 26100001 */   addiu      $s0, $s0, 0x1
/* 05557C 800559CC 10510007 */  beq         $v0, $s1, .L800559EC
.L800559D0:
/* 055580 800559D0 24420004 */   addiu      $v0, $v0, 0x4
/* 055584 800559D4 A2000000 */  sb          $zero, 0x0($s0)
/* 055588 800559D8 A2000001 */  sb          $zero, 0x1($s0)
/* 05558C 800559DC A2000002 */  sb          $zero, 0x2($s0)
/* 055590 800559E0 A2000003 */  sb          $zero, 0x3($s0)
/* 055594 800559E4 1451FFFA */  bne         $v0, $s1, .L800559D0
/* 055598 800559E8 26100004 */   addiu      $s0, $s0, 0x4
.L800559EC:
/* 05559C 800559EC 24090001 */  addiu       $t1, $zero, 0x1
/* 0555A0 800559F0 AE89003C */  sw          $t1, 0x3c($s4)
/* 0555A4 800559F4 240A00FF */  addiu       $t2, $zero, 0xff
/* 0555A8 800559F8 240B0003 */  addiu       $t3, $zero, 0x3
/* 0555AC 800559FC 240C0003 */  addiu       $t4, $zero, 0x3
/* 0555B0 80055A00 240D000B */  addiu       $t5, $zero, 0xb
/* 0555B4 80055A04 240E00FF */  addiu       $t6, $zero, 0xff
/* 0555B8 80055A08 240F00FE */  addiu       $t7, $zero, 0xfe
/* 0555BC 80055A0C A20A0000 */  sb          $t2, 0x0($s0)
/* 0555C0 80055A10 A20B0001 */  sb          $t3, 0x1($s0)
/* 0555C4 80055A14 A20C0002 */  sb          $t4, 0x2($s0)
/* 0555C8 80055A18 A20D0003 */  sb          $t5, 0x3($s0)
/* 0555CC 80055A1C A20E0008 */  sb          $t6, 0x8($s0)
/* 0555D0 80055A20 10000002 */  b           .L80055A2C
/* 0555D4 80055A24 A20F0009 */   sb         $t7, 0x9($s0)
.L80055A28:
/* 0555D8 80055A28 02918021 */  addu        $s0, $s4, $s1
.L80055A2C:
/* 0555DC 80055A2C 8FB80048 */  lw          $t8, 0x48($sp)
/* 0555E0 80055A30 30A4FFFF */  andi        $a0, $a1, 0xffff
/* 0555E4 80055A34 0C0161A8 */  jal         __osContAddressCrc
/* 0555E8 80055A38 A2180004 */   sb         $t8, 0x4($s0)
/* 0555EC 80055A3C 8FB90044 */  lw          $t9, 0x44($sp)
/* 0555F0 80055A40 24040001 */  addiu       $a0, $zero, 0x1
/* 0555F4 80055A44 02802825 */  move        $a1, $s4
/* 0555F8 80055A48 00594025 */  or          $t0, $v0, $t9
/* 0555FC 80055A4C 0C016118 */  jal         __osSiRawStartDma
/* 055600 80055A50 A2080005 */   sb         $t0, 0x5($s0)
/* 055604 80055A54 02C02025 */  move        $a0, $s6
/* 055608 80055A58 00002825 */  move        $a1, $zero
/* 05560C 80055A5C 0C014554 */  jal         osRecvMesg
/* 055610 80055A60 24060001 */   addiu      $a2, $zero, 0x1
/* 055614 80055A64 00002025 */  move        $a0, $zero
/* 055618 80055A68 0C016118 */  jal         __osSiRawStartDma
/* 05561C 80055A6C 02802825 */   move       $a1, $s4
/* 055620 80055A70 02C02025 */  move        $a0, $s6
/* 055624 80055A74 00002825 */  move        $a1, $zero
/* 055628 80055A78 0C014554 */  jal         osRecvMesg
/* 05562C 80055A7C 24060001 */   addiu      $a2, $zero, 0x1
/* 055630 80055A80 92130002 */  lbu         $s3, 0x2($s0)
/* 055634 80055A84 26120006 */  addiu       $s2, $s0, 0x6
/* 055638 80055A88 02402025 */  move        $a0, $s2
/* 05563C 80055A8C 326900C0 */  andi        $t1, $s3, 0xc0
/* 055640 80055A90 00099903 */  sra         $s3, $t1, 4
/* 055644 80055A94 56600014 */  bnel        $s3, $zero, .L80055AE8
/* 055648 80055A98 24130001 */   addiu      $s3, $zero, 0x1
/* 05564C 80055A9C 0C016C0C */  jal         __osVoiceContDataCrc
/* 055650 80055AA0 24050002 */   addiu      $a1, $zero, 0x2
/* 055654 80055AA4 920B0008 */  lbu         $t3, 0x8($s0)
/* 055658 80055AA8 27A60063 */  addiu       $a2, $sp, 0x63
/* 05565C 80055AAC 02402025 */  move        $a0, $s2
/* 055660 80055AB0 11620008 */  beq         $t3, $v0, .L80055AD4
/* 055664 80055AB4 8FA50074 */   lw         $a1, 0x74($sp)
/* 055668 80055AB8 02C02025 */  move        $a0, $s6
/* 05566C 80055ABC 0C01558C */  jal         __osVoiceGetStatus
/* 055670 80055AC0 02202825 */   move       $a1, $s1
/* 055674 80055AC4 1440000D */  bnez        $v0, .L80055AFC
/* 055678 80055AC8 00409825 */   move       $s3, $v0
/* 05567C 80055ACC 10000006 */  b           .L80055AE8
/* 055680 80055AD0 24130004 */   addiu      $s3, $zero, 0x4
.L80055AD4:
/* 055684 80055AD4 0C014984 */  jal         bcopy
/* 055688 80055AD8 24060002 */   addiu      $a2, $zero, 0x2
/* 05568C 80055ADC 10000003 */  b           .L80055AEC
/* 055690 80055AE0 24010004 */   addiu      $at, $zero, 0x4
/* 055694 80055AE4 24130001 */  addiu       $s3, $zero, 0x1
.L80055AE8:
/* 055698 80055AE8 24010004 */  addiu       $at, $zero, 0x4
.L80055AEC:
/* 05569C 80055AEC 16610003 */  bne         $s3, $at, .L80055AFC
/* 0556A0 80055AF0 2AA20000 */   slti       $v0, $s5, 0x0
/* 0556A4 80055AF4 1040FFA2 */  beqz        $v0, .L80055980
/* 0556A8 80055AF8 26B5FFFF */   addiu      $s5, $s5, -0x1
.L80055AFC:
/* 0556AC 80055AFC 0C01610D */  jal         __osSiRelAccess
/* 0556B0 80055B00 00000000 */   nop
/* 0556B4 80055B04 8FBF003C */  lw          $ra, 0x3c($sp)
/* 0556B8 80055B08 02601025 */  move        $v0, $s3
/* 0556BC 80055B0C 8FB30024 */  lw          $s3, 0x24($sp)
/* 0556C0 80055B10 8FB00018 */  lw          $s0, 0x18($sp)
/* 0556C4 80055B14 8FB1001C */  lw          $s1, 0x1c($sp)
/* 0556C8 80055B18 8FB20020 */  lw          $s2, 0x20($sp)
/* 0556CC 80055B1C 8FB40028 */  lw          $s4, 0x28($sp)
/* 0556D0 80055B20 8FB5002C */  lw          $s5, 0x2c($sp)
/* 0556D4 80055B24 8FB60030 */  lw          $s6, 0x30($sp)
/* 0556D8 80055B28 8FB70034 */  lw          $s7, 0x34($sp)
/* 0556DC 80055B2C 8FBE0038 */  lw          $fp, 0x38($sp)
/* 0556E0 80055B30 03E00008 */  jr          $ra
/* 0556E4 80055B34 27BD0068 */   addiu      $sp, $sp, 0x68
/* 0556E8 80055B38 00000000 */  nop
/* 0556EC 80055B3C 00000000 */  nop
