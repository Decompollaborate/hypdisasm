.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004C8A0 # 0
/* 04C450 8004C8A0 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 04C454 8004C8A4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 04C458 8004C8A8 AFB30020 */  sw          $s3, 0x20($sp)
/* 04C45C 8004C8AC AFB2001C */  sw          $s2, 0x1c($sp)
/* 04C460 8004C8B0 AFB10018 */  sw          $s1, 0x18($sp)
/* 04C464 8004C8B4 AFB00014 */  sw          $s0, 0x14($sp)
/* 04C468 8004C8B8 A3A00033 */  sb          $zero, 0x33($sp)
/* 04C46C 8004C8BC 00A03825 */  move        $a3, $a1
/* 04C470 8004C8C0 ACA60004 */  sw          $a2, 0x4($a1)
/* 04C474 8004C8C4 ACA40000 */  sw          $a0, 0x0($a1)
/* 04C478 8004C8C8 ACA00008 */  sw          $zero, 0x8($a1)
/* 04C47C 8004C8CC 00C09025 */  move        $s2, $a2
/* 04C480 8004C8D0 00C02825 */  move        $a1, $a2
/* 04C484 8004C8D4 00809825 */  move        $s3, $a0
/* 04C488 8004C8D8 27A60033 */  addiu       $a2, $sp, 0x33
/* 04C48C 8004C8DC 0C01558C */  jal         __osVoiceGetStatus
/* 04C490 8004C8E0 AFA7004C */   sw         $a3, 0x4c($sp)
/* 04C494 8004C8E4 10400003 */  beqz        $v0, .L8004C8F4
/* 04C498 8004C8E8 02602025 */   move       $a0, $s3
/* 04C49C 8004C8EC 10000069 */  b           .L8004CA94
/* 04C4A0 8004C8F0 8FBF0024 */   lw         $ra, 0x24($sp)
.L8004C8F4:
/* 04C4A4 8004C8F4 0C015608 */  jal         __osContChannelReset
/* 04C4A8 8004C8F8 02402825 */   move       $a1, $s2
/* 04C4AC 8004C8FC 10400003 */  beqz        $v0, .L8004C90C
/* 04C4B0 8004C900 00000000 */   nop
/* 04C4B4 8004C904 10000062 */  b           .L8004CA90
/* 04C4B8 8004C908 24020004 */   addiu      $v0, $zero, 0x4
.L8004C90C:
/* 04C4BC 8004C90C 0C014CB8 */  jal         osGetCount
/* 04C4C0 8004C910 00000000 */   nop
/* 04C4C4 8004C914 240E0000 */  addiu       $t6, $zero, 0x0
/* 04C4C8 8004C918 AFAE0040 */  sw          $t6, 0x40($sp)
/* 04C4CC 8004C91C 0C014CB8 */  jal         osGetCount
/* 04C4D0 8004C920 AFA20044 */   sw         $v0, 0x44($sp)
/* 04C4D4 8004C924 8FA80040 */  lw          $t0, 0x40($sp)
/* 04C4D8 8004C928 8FA90044 */  lw          $t1, 0x44($sp)
/* 04C4DC 8004C92C 24180000 */  addiu       $t8, $zero, 0x0
/* 04C4E0 8004C930 03085023 */  subu        $t2, $t8, $t0
/* 04C4E4 8004C934 0049082B */  sltu        $at, $v0, $t1
/* 04C4E8 8004C938 15410015 */  bne         $t2, $at, .L8004C990
/* 04C4EC 8004C93C 00495823 */   subu       $t3, $v0, $t1
/* 04C4F0 8004C940 3C010023 */  lui         $at, 0x23
/* 04C4F4 8004C944 3421C346 */  ori         $at, $at, 0xc346
/* 04C4F8 8004C948 0161082B */  sltu        $at, $t3, $at
/* 04C4FC 8004C94C 50200011 */  beql        $at, $zero, .L8004C994
/* 04C500 8004C950 02602025 */   move       $a0, $s3
.L8004C954:
/* 04C504 8004C954 0C014CB8 */  jal         osGetCount
/* 04C508 8004C958 00000000 */   nop
/* 04C50C 8004C95C 8FAE0040 */  lw          $t6, 0x40($sp)
/* 04C510 8004C960 8FAF0044 */  lw          $t7, 0x44($sp)
/* 04C514 8004C964 240C0000 */  addiu       $t4, $zero, 0x0
/* 04C518 8004C968 018EC023 */  subu        $t8, $t4, $t6
/* 04C51C 8004C96C 004F082B */  sltu        $at, $v0, $t7
/* 04C520 8004C970 0301C023 */  subu        $t8, $t8, $at
/* 04C524 8004C974 004FC823 */  subu        $t9, $v0, $t7
/* 04C528 8004C978 17000005 */  bnez        $t8, .L8004C990
/* 04C52C 8004C97C 3C010023 */   lui        $at, 0x23
/* 04C530 8004C980 3421C346 */  ori         $at, $at, 0xc346
/* 04C534 8004C984 0321082B */  sltu        $at, $t9, $at
/* 04C538 8004C988 1420FFF2 */  bnez        $at, .L8004C954
/* 04C53C 8004C98C 00000000 */   nop
.L8004C990:
/* 04C540 8004C990 02602025 */  move        $a0, $s3
.L8004C994:
/* 04C544 8004C994 02402825 */  move        $a1, $s2
/* 04C548 8004C998 0C01558C */  jal         __osVoiceGetStatus
/* 04C54C 8004C99C 27A60033 */   addiu      $a2, $sp, 0x33
/* 04C550 8004C9A0 50400004 */  beql        $v0, $zero, .L8004C9B4
/* 04C554 8004C9A4 8FA2004C */   lw         $v0, 0x4c($sp)
/* 04C558 8004C9A8 1000003A */  b           .L8004CA94
/* 04C55C 8004C9AC 8FBF0024 */   lw         $ra, 0x24($sp)
/* 04C560 8004C9B0 8FA2004C */  lw          $v0, 0x4c($sp)
.L8004C9B4:
/* 04C564 8004C9B4 00003025 */  move        $a2, $zero
/* 04C568 8004C9B8 27A70034 */  addiu       $a3, $sp, 0x34
/* 04C56C 8004C9BC 8C440000 */  lw          $a0, 0x0($v0)
/* 04C570 8004C9C0 0C015644 */  jal         __osVoiceContRead2
/* 04C574 8004C9C4 8C450004 */   lw         $a1, 0x4($v0)
/* 04C578 8004C9C8 93A80035 */  lbu         $t0, 0x35($sp)
/* 04C57C 8004C9CC 93AA0034 */  lbu         $t2, 0x34($sp)
/* 04C580 8004C9D0 3C01800A */  lui         $at, %hi(D_8009D990)
/* 04C584 8004C9D4 00084A00 */  sll         $t1, $t0, 8
/* 04C588 8004C9D8 3C10800A */  lui         $s0, %hi(D_8009D994)
/* 04C58C 8004C9DC 3C11800A */  lui         $s1, %hi(D_8009D999)
/* 04C590 8004C9E0 012A5825 */  or          $t3, $t1, $t2
/* 04C594 8004C9E4 AC2BD990 */  sw          $t3, %lo(D_8009D990)($at)
/* 04C598 8004C9E8 2631D999 */  addiu       $s1, $s1, %lo(D_8009D999)
/* 04C59C 8004C9EC 2610D994 */  addiu       $s0, $s0, %lo(D_8009D994)
/* 04C5A0 8004C9F0 02602025 */  move        $a0, $s3
.L8004C9F4:
/* 04C5A4 8004C9F4 02402825 */  move        $a1, $s2
/* 04C5A8 8004C9F8 0C015470 */  jal         __osVoiceSetADConverter
/* 04C5AC 8004C9FC 92060000 */   lbu        $a2, 0x0($s0)
/* 04C5B0 8004CA00 10400003 */  beqz        $v0, .L8004CA10
/* 04C5B4 8004CA04 26100001 */   addiu      $s0, $s0, 0x1
/* 04C5B8 8004CA08 10000022 */  b           .L8004CA94
/* 04C5BC 8004CA0C 8FBF0024 */   lw         $ra, 0x24($sp)
.L8004CA10:
/* 04C5C0 8004CA10 5611FFF8 */  bnel        $s0, $s1, .L8004C9F4
/* 04C5C4 8004CA14 02602025 */   move       $a0, $s3
/* 04C5C8 8004CA18 02602025 */  move        $a0, $s3
/* 04C5CC 8004CA1C 02402825 */  move        $a1, $s2
/* 04C5D0 8004CA20 0C01558C */  jal         __osVoiceGetStatus
/* 04C5D4 8004CA24 27A60033 */   addiu      $a2, $sp, 0x33
/* 04C5D8 8004CA28 10400003 */  beqz        $v0, .L8004CA38
/* 04C5DC 8004CA2C 93AC0033 */   lbu        $t4, 0x33($sp)
/* 04C5E0 8004CA30 10000018 */  b           .L8004CA94
/* 04C5E4 8004CA34 8FBF0024 */   lw         $ra, 0x24($sp)
.L8004CA38:
/* 04C5E8 8004CA38 318D0002 */  andi        $t5, $t4, 0x2
/* 04C5EC 8004CA3C 11A00003 */  beqz        $t5, .L8004CA4C
/* 04C5F0 8004CA40 240E0100 */   addiu      $t6, $zero, 0x100
/* 04C5F4 8004CA44 10000012 */  b           .L8004CA90
/* 04C5F8 8004CA48 2402000F */   addiu      $v0, $zero, 0xf
.L8004CA4C:
/* 04C5FC 8004CA4C AFAE002C */  sw          $t6, 0x2c($sp)
/* 04C600 8004CA50 02602025 */  move        $a0, $s3
/* 04C604 8004CA54 02402825 */  move        $a1, $s2
/* 04C608 8004CA58 00003025 */  move        $a2, $zero
/* 04C60C 8004CA5C 0C0156D0 */  jal         __osVoiceContWrite4
/* 04C610 8004CA60 27A7002C */   addiu      $a3, $sp, 0x2c
/* 04C614 8004CA64 10400003 */  beqz        $v0, .L8004CA74
/* 04C618 8004CA68 8FA4004C */   lw         $a0, 0x4c($sp)
/* 04C61C 8004CA6C 10000009 */  b           .L8004CA94
/* 04C620 8004CA70 8FBF0024 */   lw         $ra, 0x24($sp)
.L8004CA74:
/* 04C624 8004CA74 0C01575C */  jal         __osVoiceCheckResult
/* 04C628 8004CA78 27A50033 */   addiu      $a1, $sp, 0x33
/* 04C62C 8004CA7C 304FFF00 */  andi        $t7, $v0, 0xff00
/* 04C630 8004CA80 11E00002 */  beqz        $t7, .L8004CA8C
/* 04C634 8004CA84 00401825 */   move       $v1, $v0
/* 04C638 8004CA88 24030005 */  addiu       $v1, $zero, 0x5
.L8004CA8C:
/* 04C63C 8004CA8C 00601025 */  move        $v0, $v1
.L8004CA90:
/* 04C640 8004CA90 8FBF0024 */  lw          $ra, 0x24($sp)
.L8004CA94:
/* 04C644 8004CA94 8FB00014 */  lw          $s0, 0x14($sp)
/* 04C648 8004CA98 8FB10018 */  lw          $s1, 0x18($sp)
/* 04C64C 8004CA9C 8FB2001C */  lw          $s2, 0x1c($sp)
/* 04C650 8004CAA0 8FB30020 */  lw          $s3, 0x20($sp)
/* 04C654 8004CAA4 03E00008 */  jr          $ra
/* 04C658 8004CAA8 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_8004CAAC # 1
/* 04C65C 8004CAAC 27BDFF70 */  addiu       $sp, $sp, -0x90
/* 04C660 8004CAB0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04C664 8004CAB4 AFB00018 */  sw          $s0, 0x18($sp)
/* 04C668 8004CAB8 00808025 */  move        $s0, $a0
/* 04C66C 8004CABC AFA50094 */  sw          $a1, 0x94($sp)
/* 04C670 8004CAC0 8E050004 */  lw          $a1, 0x4($s0)
/* 04C674 8004CAC4 8C840000 */  lw          $a0, 0x0($a0)
/* 04C678 8004CAC8 0C01558C */  jal         __osVoiceGetStatus
/* 04C67C 8004CACC 27A60083 */   addiu      $a2, $sp, 0x83
/* 04C680 8004CAD0 10400003 */  beqz        $v0, .L8004CAE0
/* 04C684 8004CAD4 93AE0083 */   lbu        $t6, 0x83($sp)
/* 04C688 8004CAD8 1000005C */  b           .L8004CC4C
/* 04C68C 8004CADC 8FBF001C */   lw         $ra, 0x1c($sp)
.L8004CAE0:
/* 04C690 8004CAE0 31CF0002 */  andi        $t7, $t6, 0x2
/* 04C694 8004CAE4 11E00003 */  beqz        $t7, .L8004CAF4
/* 04C698 8004CAE8 00003025 */   move       $a2, $zero
/* 04C69C 8004CAEC 10000056 */  b           .L8004CC48
/* 04C6A0 8004CAF0 2402000F */   addiu      $v0, $zero, 0xf
.L8004CAF4:
/* 04C6A4 8004CAF4 8FA20094 */  lw          $v0, 0x94($sp)
.L8004CAF8:
/* 04C6A8 8004CAF8 90590001 */  lbu         $t9, 0x1($v0)
/* 04C6AC 8004CAFC 90580000 */  lbu         $t8, 0x0($v0)
/* 04C6B0 8004CB00 24420002 */  addiu       $v0, $v0, 0x2
/* 04C6B4 8004CB04 00194A00 */  sll         $t1, $t9, 8
/* 04C6B8 8004CB08 03095025 */  or          $t2, $t8, $t1
/* 04C6BC 8004CB0C 314BFFFF */  andi        $t3, $t2, 0xffff
/* 04C6C0 8004CB10 51600004 */  beql        $t3, $zero, .L8004CB24
/* 04C6C4 8004CB14 27A40030 */   addiu      $a0, $sp, 0x30
/* 04C6C8 8004CB18 1000FFF7 */  b           .L8004CAF8
/* 04C6CC 8004CB1C 24C60002 */   addiu      $a2, $a2, 0x2
/* 04C6D0 8004CB20 27A40030 */  addiu       $a0, $sp, 0x30
.L8004CB24:
/* 04C6D4 8004CB24 24050050 */  addiu       $a1, $zero, 0x50
/* 04C6D8 8004CB28 0C014388 */  jal         bzero
/* 04C6DC 8004CB2C AFA60088 */   sw         $a2, 0x88($sp)
/* 04C6E0 8004CB30 8FA60088 */  lw          $a2, 0x88($sp)
/* 04C6E4 8004CB34 00004025 */  move        $t0, $zero
/* 04C6E8 8004CB38 24190003 */  addiu       $t9, $zero, 0x3
/* 04C6EC 8004CB3C 18C0000E */  blez        $a2, .L8004CB78
/* 04C6F0 8004CB40 27A70030 */   addiu      $a3, $sp, 0x30
/* 04C6F4 8004CB44 00066023 */  negu        $t4, $a2
/* 04C6F8 8004CB48 27AD007F */  addiu       $t5, $sp, 0x7f
/* 04C6FC 8004CB4C 018D1021 */  addu        $v0, $t4, $t5
/* 04C700 8004CB50 8FA30094 */  lw          $v1, 0x94($sp)
.L8004CB54:
/* 04C704 8004CB54 906E0000 */  lbu         $t6, 0x0($v1)
/* 04C708 8004CB58 25080002 */  addiu       $t0, $t0, 0x2
/* 04C70C 8004CB5C 0106082A */  slt         $at, $t0, $a2
/* 04C710 8004CB60 A04E0000 */  sb          $t6, 0x0($v0)
/* 04C714 8004CB64 906F0001 */  lbu         $t7, 0x1($v1)
/* 04C718 8004CB68 24420002 */  addiu       $v0, $v0, 0x2
/* 04C71C 8004CB6C 24630002 */  addiu       $v1, $v1, 0x2
/* 04C720 8004CB70 1420FFF8 */  bnez        $at, .L8004CB54
/* 04C724 8004CB74 A04FFFFD */   sb         $t7, -0x3($v0)
.L8004CB78:
/* 04C728 8004CB78 0008C023 */  negu        $t8, $t0
/* 04C72C 8004CB7C 03B84821 */  addu        $t1, $sp, $t8
/* 04C730 8004CB80 A139007A */  sb          $t9, 0x7a($t1)
/* 04C734 8004CB84 8E050004 */  lw          $a1, 0x4($s0)
/* 04C738 8004CB88 8E040000 */  lw          $a0, 0x0($s0)
/* 04C73C 8004CB8C 0C015788 */  jal         __osVoiceContWrite20
/* 04C740 8004CB90 00003025 */   move       $a2, $zero
/* 04C744 8004CB94 10400003 */  beqz        $v0, .L8004CBA4
/* 04C748 8004CB98 00003025 */   move       $a2, $zero
/* 04C74C 8004CB9C 1000002B */  b           .L8004CC4C
/* 04C750 8004CBA0 8FBF001C */   lw         $ra, 0x1c($sp)
.L8004CBA4:
/* 04C754 8004CBA4 8E040000 */  lw          $a0, 0x0($s0)
/* 04C758 8004CBA8 8E050004 */  lw          $a1, 0x4($s0)
/* 04C75C 8004CBAC 0C015788 */  jal         __osVoiceContWrite20
/* 04C760 8004CBB0 27A70044 */   addiu      $a3, $sp, 0x44
/* 04C764 8004CBB4 10400003 */  beqz        $v0, .L8004CBC4
/* 04C768 8004CBB8 00003025 */   move       $a2, $zero
/* 04C76C 8004CBBC 10000023 */  b           .L8004CC4C
/* 04C770 8004CBC0 8FBF001C */   lw         $ra, 0x1c($sp)
.L8004CBC4:
/* 04C774 8004CBC4 8E040000 */  lw          $a0, 0x0($s0)
/* 04C778 8004CBC8 8E050004 */  lw          $a1, 0x4($s0)
/* 04C77C 8004CBCC 0C015788 */  jal         __osVoiceContWrite20
/* 04C780 8004CBD0 27A70058 */   addiu      $a3, $sp, 0x58
/* 04C784 8004CBD4 10400003 */  beqz        $v0, .L8004CBE4
/* 04C788 8004CBD8 00003025 */   move       $a2, $zero
/* 04C78C 8004CBDC 1000001B */  b           .L8004CC4C
/* 04C790 8004CBE0 8FBF001C */   lw         $ra, 0x1c($sp)
.L8004CBE4:
/* 04C794 8004CBE4 8E040000 */  lw          $a0, 0x0($s0)
/* 04C798 8004CBE8 8E050004 */  lw          $a1, 0x4($s0)
/* 04C79C 8004CBEC 0C015788 */  jal         __osVoiceContWrite20
/* 04C7A0 8004CBF0 27A7006C */   addiu      $a3, $sp, 0x6c
/* 04C7A4 8004CBF4 10400003 */  beqz        $v0, .L8004CC04
/* 04C7A8 8004CBF8 02002025 */   move       $a0, $s0
/* 04C7AC 8004CBFC 10000013 */  b           .L8004CC4C
/* 04C7B0 8004CC00 8FBF001C */   lw         $ra, 0x1c($sp)
.L8004CC04:
/* 04C7B4 8004CC04 0C01575C */  jal         __osVoiceCheckResult
/* 04C7B8 8004CC08 27A50083 */   addiu      $a1, $sp, 0x83
/* 04C7BC 8004CC0C 1040000D */  beqz        $v0, .L8004CC44
/* 04C7C0 8004CC10 00401825 */   move       $v1, $v0
/* 04C7C4 8004CC14 304A0100 */  andi        $t2, $v0, 0x100
/* 04C7C8 8004CC18 11400003 */  beqz        $t2, .L8004CC28
/* 04C7CC 8004CC1C 304B0200 */   andi       $t3, $v0, 0x200
/* 04C7D0 8004CC20 10000008 */  b           .L8004CC44
/* 04C7D4 8004CC24 2403000D */   addiu      $v1, $zero, 0xd
.L8004CC28:
/* 04C7D8 8004CC28 11600003 */  beqz        $t3, .L8004CC38
/* 04C7DC 8004CC2C 304CFF00 */   andi       $t4, $v0, 0xff00
/* 04C7E0 8004CC30 10000004 */  b           .L8004CC44
/* 04C7E4 8004CC34 2403000E */   addiu      $v1, $zero, 0xe
.L8004CC38:
/* 04C7E8 8004CC38 51800003 */  beql        $t4, $zero, .L8004CC48
/* 04C7EC 8004CC3C 00601025 */   move       $v0, $v1
/* 04C7F0 8004CC40 24030005 */  addiu       $v1, $zero, 0x5
.L8004CC44:
/* 04C7F4 8004CC44 00601025 */  move        $v0, $v1
.L8004CC48:
/* 04C7F8 8004CC48 8FBF001C */  lw          $ra, 0x1c($sp)
.L8004CC4C:
/* 04C7FC 8004CC4C 8FB00018 */  lw          $s0, 0x18($sp)
/* 04C800 8004CC50 27BD0090 */  addiu       $sp, $sp, 0x90
/* 04C804 8004CC54 03E00008 */  jr          $ra
/* 04C808 8004CC58 00000000 */   nop

glabel func_8004CC5C # 2
/* 04C80C 8004CC5C 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 04C810 8004CC60 AFB00018 */  sw          $s0, 0x18($sp)
/* 04C814 8004CC64 00808025 */  move        $s0, $a0
/* 04C818 8004CC68 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04C81C 8004CC6C AFA5006C */  sw          $a1, 0x6c($sp)
/* 04C820 8004CC70 00C03825 */  move        $a3, $a2
/* 04C824 8004CC74 8E050004 */  lw          $a1, 0x4($s0)
/* 04C828 8004CC78 8C840000 */  lw          $a0, 0x0($a0)
/* 04C82C 8004CC7C AFA70070 */  sw          $a3, 0x70($sp)
/* 04C830 8004CC80 0C01558C */  jal         __osVoiceGetStatus
/* 04C834 8004CC84 27A6005B */   addiu      $a2, $sp, 0x5b
/* 04C838 8004CC88 10400003 */  beqz        $v0, .L8004CC98
/* 04C83C 8004CC8C 8FA70070 */   lw         $a3, 0x70($sp)
/* 04C840 8004CC90 10000040 */  b           .L8004CD94
/* 04C844 8004CC94 8FBF001C */   lw         $ra, 0x1c($sp)
.L8004CC98:
/* 04C848 8004CC98 93AE005B */  lbu         $t6, 0x5b($sp)
/* 04C84C 8004CC9C 30E80001 */  andi        $t0, $a3, 0x1
/* 04C850 8004CCA0 27A40030 */  addiu       $a0, $sp, 0x30
/* 04C854 8004CCA4 31CF0002 */  andi        $t7, $t6, 0x2
/* 04C858 8004CCA8 11E00003 */  beqz        $t7, .L8004CCB8
/* 04C85C 8004CCAC 24050028 */   addiu      $a1, $zero, 0x28
/* 04C860 8004CCB0 10000037 */  b           .L8004CD90
/* 04C864 8004CCB4 2402000F */   addiu      $v0, $zero, 0xf
.L8004CCB8:
/* 04C868 8004CCB8 11000003 */  beqz        $t0, .L8004CCC8
/* 04C86C 8004CCBC 00E03025 */   move       $a2, $a3
/* 04C870 8004CCC0 10000001 */  b           .L8004CCC8
/* 04C874 8004CCC4 24E60001 */   addiu      $a2, $a3, 0x1
.L8004CCC8:
/* 04C878 8004CCC8 AFA6005C */  sw          $a2, 0x5c($sp)
/* 04C87C 8004CCCC 0C014388 */  jal         bzero
/* 04C880 8004CCD0 AFA8002C */   sw         $t0, 0x2c($sp)
/* 04C884 8004CCD4 8FA6005C */  lw          $a2, 0x5c($sp)
/* 04C888 8004CCD8 8FA8002C */  lw          $t0, 0x2c($sp)
/* 04C88C 8004CCDC 24180004 */  addiu       $t8, $zero, 0x4
/* 04C890 8004CCE0 0006C823 */  negu        $t9, $a2
/* 04C894 8004CCE4 03B94821 */  addu        $t1, $sp, $t9
/* 04C898 8004CCE8 A1380056 */  sb          $t8, 0x56($t1)
/* 04C89C 8004CCEC 18C0000E */  blez        $a2, .L8004CD28
/* 04C8A0 8004CCF0 00002025 */   move       $a0, $zero
/* 04C8A4 8004CCF4 00065023 */  negu        $t2, $a2
/* 04C8A8 8004CCF8 27AB0030 */  addiu       $t3, $sp, 0x30
/* 04C8AC 8004CCFC 014B1021 */  addu        $v0, $t2, $t3
/* 04C8B0 8004CD00 8FA3006C */  lw          $v1, 0x6c($sp)
.L8004CD04:
/* 04C8B4 8004CD04 906C0000 */  lbu         $t4, 0x0($v1)
/* 04C8B8 8004CD08 24840002 */  addiu       $a0, $a0, 0x2
/* 04C8BC 8004CD0C 0086082A */  slt         $at, $a0, $a2
/* 04C8C0 8004CD10 A04C0028 */  sb          $t4, 0x28($v0)
/* 04C8C4 8004CD14 906D0001 */  lbu         $t5, 0x1($v1)
/* 04C8C8 8004CD18 24420002 */  addiu       $v0, $v0, 0x2
/* 04C8CC 8004CD1C 24630002 */  addiu       $v1, $v1, 0x2
/* 04C8D0 8004CD20 1420FFF8 */  bnez        $at, .L8004CD04
/* 04C8D4 8004CD24 A04D0027 */   sb         $t5, 0x27($v0)
.L8004CD28:
/* 04C8D8 8004CD28 11000002 */  beqz        $t0, .L8004CD34
/* 04C8DC 8004CD2C 00003025 */   move       $a2, $zero
/* 04C8E0 8004CD30 A3A00057 */  sb          $zero, 0x57($sp)
.L8004CD34:
/* 04C8E4 8004CD34 8E040000 */  lw          $a0, 0x0($s0)
/* 04C8E8 8004CD38 8E050004 */  lw          $a1, 0x4($s0)
/* 04C8EC 8004CD3C 0C015788 */  jal         __osVoiceContWrite20
/* 04C8F0 8004CD40 27A70030 */   addiu      $a3, $sp, 0x30
/* 04C8F4 8004CD44 14400003 */  bnez        $v0, .L8004CD54
/* 04C8F8 8004CD48 02002025 */   move       $a0, $s0
/* 04C8FC 8004CD4C 0C01575C */  jal         __osVoiceCheckResult
/* 04C900 8004CD50 27A5005B */   addiu      $a1, $sp, 0x5b
.L8004CD54:
/* 04C904 8004CD54 8E040000 */  lw          $a0, 0x0($s0)
/* 04C908 8004CD58 8E050004 */  lw          $a1, 0x4($s0)
/* 04C90C 8004CD5C 00003025 */  move        $a2, $zero
/* 04C910 8004CD60 0C015788 */  jal         __osVoiceContWrite20
/* 04C914 8004CD64 27A70044 */   addiu      $a3, $sp, 0x44
/* 04C918 8004CD68 14400008 */  bnez        $v0, .L8004CD8C
/* 04C91C 8004CD6C 00401825 */   move       $v1, $v0
/* 04C920 8004CD70 02002025 */  move        $a0, $s0
/* 04C924 8004CD74 0C01575C */  jal         __osVoiceCheckResult
/* 04C928 8004CD78 27A5005B */   addiu      $a1, $sp, 0x5b
/* 04C92C 8004CD7C 304EFF00 */  andi        $t6, $v0, 0xff00
/* 04C930 8004CD80 11C00002 */  beqz        $t6, .L8004CD8C
/* 04C934 8004CD84 00401825 */   move       $v1, $v0
/* 04C938 8004CD88 24030005 */  addiu       $v1, $zero, 0x5
.L8004CD8C:
/* 04C93C 8004CD8C 00601025 */  move        $v0, $v1
.L8004CD90:
/* 04C940 8004CD90 8FBF001C */  lw          $ra, 0x1c($sp)
.L8004CD94:
/* 04C944 8004CD94 8FB00018 */  lw          $s0, 0x18($sp)
/* 04C948 8004CD98 27BD0068 */  addiu       $sp, $sp, 0x68
/* 04C94C 8004CD9C 03E00008 */  jr          $ra
/* 04C950 8004CDA0 00000000 */   nop

glabel func_8004CDA4 # 3
/* 04C954 8004CDA4 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 04C958 8004CDA8 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04C95C 8004CDAC AFB00018 */  sw          $s0, 0x18($sp)
/* 04C960 8004CDB0 00808025 */  move        $s0, $a0
/* 04C964 8004CDB4 AFA50034 */  sw          $a1, 0x34($sp)
/* 04C968 8004CDB8 8E050004 */  lw          $a1, 0x4($s0)
/* 04C96C 8004CDBC 8C840000 */  lw          $a0, 0x0($a0)
/* 04C970 8004CDC0 0C01558C */  jal         __osVoiceGetStatus
/* 04C974 8004CDC4 27A6002B */   addiu      $a2, $sp, 0x2b
/* 04C978 8004CDC8 10400003 */  beqz        $v0, .L8004CDD8
/* 04C97C 8004CDCC 93AE002B */   lbu        $t6, 0x2b($sp)
/* 04C980 8004CDD0 1000001D */  b           .L8004CE48
/* 04C984 8004CDD4 8FBF001C */   lw         $ra, 0x1c($sp)
.L8004CDD8:
/* 04C988 8004CDD8 31CF0002 */  andi        $t7, $t6, 0x2
/* 04C98C 8004CDDC 11E00003 */  beqz        $t7, .L8004CDEC
/* 04C990 8004CDE0 27A70024 */   addiu      $a3, $sp, 0x24
/* 04C994 8004CDE4 10000017 */  b           .L8004CE44
/* 04C998 8004CDE8 2402000F */   addiu      $v0, $zero, 0xf
.L8004CDEC:
/* 04C99C 8004CDEC 97A20036 */  lhu         $v0, 0x36($sp)
/* 04C9A0 8004CDF0 3C180200 */  lui         $t8, 0x200
/* 04C9A4 8004CDF4 AFB80024 */  sw          $t8, 0x24($sp)
/* 04C9A8 8004CDF8 3048FF00 */  andi        $t0, $v0, 0xff00
/* 04C9AC 8004CDFC 00084A03 */  sra         $t1, $t0, 8
/* 04C9B0 8004CE00 A0E90003 */  sb          $t1, 0x3($a3)
/* 04C9B4 8004CE04 A0E20002 */  sb          $v0, 0x2($a3)
/* 04C9B8 8004CE08 8E050004 */  lw          $a1, 0x4($s0)
/* 04C9BC 8004CE0C 8E040000 */  lw          $a0, 0x0($s0)
/* 04C9C0 8004CE10 0C0156D0 */  jal         __osVoiceContWrite4
/* 04C9C4 8004CE14 00003025 */   move       $a2, $zero
/* 04C9C8 8004CE18 10400003 */  beqz        $v0, .L8004CE28
/* 04C9CC 8004CE1C 02002025 */   move       $a0, $s0
/* 04C9D0 8004CE20 10000009 */  b           .L8004CE48
/* 04C9D4 8004CE24 8FBF001C */   lw         $ra, 0x1c($sp)
.L8004CE28:
/* 04C9D8 8004CE28 0C01575C */  jal         __osVoiceCheckResult
/* 04C9DC 8004CE2C 27A5002B */   addiu      $a1, $sp, 0x2b
/* 04C9E0 8004CE30 304AFF00 */  andi        $t2, $v0, 0xff00
/* 04C9E4 8004CE34 11400002 */  beqz        $t2, .L8004CE40
/* 04C9E8 8004CE38 00401825 */   move       $v1, $v0
/* 04C9EC 8004CE3C 24030005 */  addiu       $v1, $zero, 0x5
.L8004CE40:
/* 04C9F0 8004CE40 00601025 */  move        $v0, $v1
.L8004CE44:
/* 04C9F4 8004CE44 8FBF001C */  lw          $ra, 0x1c($sp)
.L8004CE48:
/* 04C9F8 8004CE48 8FB00018 */  lw          $s0, 0x18($sp)
/* 04C9FC 8004CE4C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 04CA00 8004CE50 03E00008 */  jr          $ra
/* 04CA04 8004CE54 00000000 */   nop
/* 04CA08 8004CE58 00000000 */  nop
/* 04CA0C 8004CE5C 00000000 */  nop
