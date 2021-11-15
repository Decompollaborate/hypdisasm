.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osVoiceSetADConverter # 0
/* 054D70 800551C0 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 054D74 800551C4 AFBF003C */  sw          $ra, 0x3c($sp)
/* 054D78 800551C8 AFB40028 */  sw          $s4, 0x28($sp)
/* 054D7C 800551CC AFB30024 */  sw          $s3, 0x24($sp)
/* 054D80 800551D0 AFB1001C */  sw          $s1, 0x1c($sp)
/* 054D84 800551D4 00A08825 */  move        $s1, $a1
/* 054D88 800551D8 0080A025 */  move        $s4, $a0
/* 054D8C 800551DC AFBE0038 */  sw          $fp, 0x38($sp)
/* 054D90 800551E0 AFB70034 */  sw          $s7, 0x34($sp)
/* 054D94 800551E4 AFB60030 */  sw          $s6, 0x30($sp)
/* 054D98 800551E8 AFB5002C */  sw          $s5, 0x2c($sp)
/* 054D9C 800551EC AFB20020 */  sw          $s2, 0x20($sp)
/* 054DA0 800551F0 AFB00018 */  sw          $s0, 0x18($sp)
/* 054DA4 800551F4 AFA60070 */  sw          $a2, 0x70($sp)
/* 054DA8 800551F8 0C0160FC */  jal         __osSiGetAccess
/* 054DAC 800551FC 24130002 */   addiu      $s3, $zero, 0x2
/* 054DB0 80055200 93A50073 */  lbu         $a1, 0x73($sp)
/* 054DB4 80055204 3C16800A */  lui         $s6, %hi(__osPfsLastChannel)
/* 054DB8 80055208 3C158010 */  lui         $s5, %hi(__osContLastPoll)
/* 054DBC 8005520C 000570C0 */  sll         $t6, $a1, 3
/* 054DC0 80055210 31CFFFFF */  andi        $t7, $t6, 0xffff
/* 054DC4 80055214 3C128010 */  lui         $s2, %hi(__osPfsPifRam)
/* 054DC8 80055218 26520390 */  addiu       $s2, $s2, %lo(__osPfsPifRam)
/* 054DCC 8005521C AFAF0048 */  sw          $t7, 0x48($sp)
/* 054DD0 80055220 26B5DC50 */  addiu       $s5, $s5, %lo(__osContLastPoll)
/* 054DD4 80055224 26D6F8C0 */  addiu       $s6, $s6, %lo(__osPfsLastChannel)
/* 054DD8 80055228 241E0001 */  addiu       $fp, $zero, 0x1
/* 054DDC 8005522C 2417000D */  addiu       $s7, $zero, 0xd
.L80055230:
/* 054DE0 80055230 92B80000 */  lbu         $t8, 0x0($s5)
/* 054DE4 80055234 2401000D */  addiu       $at, $zero, 0xd
/* 054DE8 80055238 93A50073 */  lbu         $a1, 0x73($sp)
/* 054DEC 8005523C 17010004 */  bne         $t8, $at, .L80055250
/* 054DF0 80055240 02408025 */   move       $s0, $s2
/* 054DF4 80055244 8ED90000 */  lw          $t9, 0x0($s6)
/* 054DF8 80055248 5239001E */  beql        $s1, $t9, .L800552C4
/* 054DFC 8005524C 02518021 */   addu       $s0, $s2, $s1
.L80055250:
/* 054E00 80055250 A2B70000 */  sb          $s7, 0x0($s5)
/* 054E04 80055254 AED10000 */  sw          $s1, 0x0($s6)
/* 054E08 80055258 1A200010 */  blez        $s1, .L8005529C
/* 054E0C 8005525C 00001025 */   move       $v0, $zero
/* 054E10 80055260 32240003 */  andi        $a0, $s1, 0x3
/* 054E14 80055264 10800006 */  beq         $a0, $zero, .L80055280
/* 054E18 80055268 00801825 */   move       $v1, $a0
.L8005526C:
/* 054E1C 8005526C 24420001 */  addiu       $v0, $v0, 0x1
/* 054E20 80055270 A2000000 */  sb          $zero, 0x0($s0)
/* 054E24 80055274 1462FFFD */  bne         $v1, $v0, .L8005526C
/* 054E28 80055278 26100001 */   addiu      $s0, $s0, 0x1
/* 054E2C 8005527C 10510007 */  beq         $v0, $s1, .L8005529C
.L80055280:
/* 054E30 80055280 24420004 */   addiu      $v0, $v0, 0x4
/* 054E34 80055284 A2000000 */  sb          $zero, 0x0($s0)
/* 054E38 80055288 A2000001 */  sb          $zero, 0x1($s0)
/* 054E3C 8005528C A2000002 */  sb          $zero, 0x2($s0)
/* 054E40 80055290 A2000003 */  sb          $zero, 0x3($s0)
/* 054E44 80055294 1451FFFA */  bne         $v0, $s1, .L80055280
/* 054E48 80055298 26100004 */   addiu      $s0, $s0, 0x4
.L8005529C:
/* 054E4C 8005529C AE5E003C */  sw          $fp, 0x3c($s2)
/* 054E50 800552A0 24080003 */  addiu       $t0, $zero, 0x3
/* 054E54 800552A4 240900FE */  addiu       $t1, $zero, 0xfe
/* 054E58 800552A8 A2080000 */  sb          $t0, 0x0($s0)
/* 054E5C 800552AC A21E0001 */  sb          $fp, 0x1($s0)
/* 054E60 800552B0 A2170002 */  sb          $s7, 0x2($s0)
/* 054E64 800552B4 A2000005 */  sb          $zero, 0x5($s0)
/* 054E68 800552B8 10000002 */  b           .L800552C4
/* 054E6C 800552BC A2090006 */   sb         $t1, 0x6($s0)
/* 054E70 800552C0 02518021 */  addu        $s0, $s2, $s1
.L800552C4:
/* 054E74 800552C4 A2050003 */  sb          $a1, 0x3($s0)
/* 054E78 800552C8 0C0161A8 */  jal         __osContAddressCrc
/* 054E7C 800552CC 97A4004A */   lhu        $a0, 0x4a($sp)
/* 054E80 800552D0 A2020004 */  sb          $v0, 0x4($s0)
/* 054E84 800552D4 24040001 */  addiu       $a0, $zero, 0x1
/* 054E88 800552D8 0C016118 */  jal         __osSiRawStartDma
/* 054E8C 800552DC 02402825 */   move       $a1, $s2
/* 054E90 800552E0 02802025 */  move        $a0, $s4
/* 054E94 800552E4 00002825 */  move        $a1, $zero
/* 054E98 800552E8 0C014554 */  jal         osRecvMesg
/* 054E9C 800552EC 24060001 */   addiu      $a2, $zero, 0x1
/* 054EA0 800552F0 00002025 */  move        $a0, $zero
/* 054EA4 800552F4 0C016118 */  jal         __osSiRawStartDma
/* 054EA8 800552F8 02402825 */   move       $a1, $s2
/* 054EAC 800552FC 02802025 */  move        $a0, $s4
/* 054EB0 80055300 00002825 */  move        $a1, $zero
/* 054EB4 80055304 0C014554 */  jal         osRecvMesg
/* 054EB8 80055308 24060001 */   addiu      $a2, $zero, 0x1
/* 054EBC 8005530C 92030001 */  lbu         $v1, 0x1($s0)
/* 054EC0 80055310 306A00C0 */  andi        $t2, $v1, 0xc0
/* 054EC4 80055314 000A1903 */  sra         $v1, $t2, 4
/* 054EC8 80055318 5460000E */  bnel        $v1, $zero, .L80055354
/* 054ECC 8005531C 24030001 */   addiu      $v1, $zero, 0x1
/* 054ED0 80055320 920C0005 */  lbu         $t4, 0x5($s0)
/* 054ED4 80055324 02802025 */  move        $a0, $s4
/* 054ED8 80055328 02202825 */  move        $a1, $s1
/* 054EDC 8005532C 318D0001 */  andi        $t5, $t4, 0x1
/* 054EE0 80055330 51A00009 */  beql        $t5, $zero, .L80055358
/* 054EE4 80055334 24010004 */   addiu      $at, $zero, 0x4
/* 054EE8 80055338 0C01558C */  jal         __osVoiceGetStatus
/* 054EEC 8005533C 27A6005B */   addiu      $a2, $sp, 0x5b
/* 054EF0 80055340 14400009 */  bne         $v0, $zero, .L80055368
/* 054EF4 80055344 00401825 */   move       $v1, $v0
/* 054EF8 80055348 10000002 */  b           .L80055354
/* 054EFC 8005534C 24030004 */   addiu      $v1, $zero, 0x4
/* 054F00 80055350 24030001 */  addiu       $v1, $zero, 0x1
.L80055354:
/* 054F04 80055354 24010004 */  addiu       $at, $zero, 0x4
.L80055358:
/* 054F08 80055358 14610003 */  bne         $v1, $at, .L80055368
/* 054F0C 8005535C 2A620000 */   slti       $v0, $s3, 0x0
/* 054F10 80055360 1040FFB3 */  beq         $v0, $zero, .L80055230
/* 054F14 80055364 2673FFFF */   addiu      $s3, $s3, -0x1
.L80055368:
/* 054F18 80055368 0C01610D */  jal         __osSiRelAccess
/* 054F1C 8005536C AFA30064 */   sw         $v1, 0x64($sp)
/* 054F20 80055370 8FBF003C */  lw          $ra, 0x3c($sp)
/* 054F24 80055374 8FA20064 */  lw          $v0, 0x64($sp)
/* 054F28 80055378 8FB00018 */  lw          $s0, 0x18($sp)
/* 054F2C 8005537C 8FB1001C */  lw          $s1, 0x1c($sp)
/* 054F30 80055380 8FB20020 */  lw          $s2, 0x20($sp)
/* 054F34 80055384 8FB30024 */  lw          $s3, 0x24($sp)
/* 054F38 80055388 8FB40028 */  lw          $s4, 0x28($sp)
/* 054F3C 8005538C 8FB5002C */  lw          $s5, 0x2c($sp)
/* 054F40 80055390 8FB60030 */  lw          $s6, 0x30($sp)
/* 054F44 80055394 8FB70034 */  lw          $s7, 0x34($sp)
/* 054F48 80055398 8FBE0038 */  lw          $fp, 0x38($sp)
/* 054F4C 8005539C 03E00008 */  jr          $ra
/* 054F50 800553A0 27BD0068 */   addiu      $sp, $sp, 0x68
/* 054F54 800553A4 00000000 */  nop
/* 054F58 800553A8 00000000 */  nop
/* 054F5C 800553AC 00000000 */  nop
