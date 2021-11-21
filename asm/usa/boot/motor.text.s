.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osMotorAccess # 0
/* 051890 80051CE0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 051894 80051CE4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 051898 80051CE8 AFB00018 */  sw          $s0, 0x18($sp)
/* 05189C 80051CEC 8C8E0008 */  lw          $t6, 0x8($a0)
/* 0518A0 80051CF0 8C990000 */  lw          $t9, 0x0($a0)
/* 0518A4 80051CF4 3C188010 */  lui         $t8, %hi(osPifBuffers)
/* 0518A8 80051CF8 2718DCA0 */  addiu       $t8, $t8, %lo(osPifBuffers)
/* 0518AC 80051CFC 000E7980 */  sll         $t7, $t6, 6
/* 0518B0 80051D00 33290008 */  andi        $t1, $t9, 0x8
/* 0518B4 80051D04 00808025 */  move        $s0, $a0
/* 0518B8 80051D08 00A03825 */  move        $a3, $a1
/* 0518BC 80051D0C 15200003 */  bnez        $t1, .L80051D1C
/* 0518C0 80051D10 01F84021 */   addu       $t0, $t7, $t8
/* 0518C4 80051D14 10000047 */  b           .L80051E34
/* 0518C8 80051D18 24020005 */   addiu      $v0, $zero, 0x5
.L80051D1C:
/* 0518CC 80051D1C AFA70034 */  sw          $a3, 0x34($sp)
/* 0518D0 80051D20 0C0160FC */  jal         __osSiGetAccess
/* 0518D4 80051D24 AFA80024 */   sw         $t0, 0x24($sp)
/* 0518D8 80051D28 8E0B0008 */  lw          $t3, 0x8($s0)
/* 0518DC 80051D2C 3C068010 */  lui         $a2, %hi(osPifBuffers)
/* 0518E0 80051D30 24C6DCA0 */  addiu       $a2, $a2, %lo(osPifBuffers)
/* 0518E4 80051D34 000B6180 */  sll         $t4, $t3, 6
/* 0518E8 80051D38 00CC6821 */  addu        $t5, $a2, $t4
/* 0518EC 80051D3C 240A0001 */  addiu       $t2, $zero, 0x1
/* 0518F0 80051D40 ADAA003C */  sw          $t2, 0x3c($t5)
/* 0518F4 80051D44 8FA80024 */  lw          $t0, 0x24($sp)
/* 0518F8 80051D48 8E0E0008 */  lw          $t6, 0x8($s0)
/* 0518FC 80051D4C 8FA70034 */  lw          $a3, 0x34($sp)
/* 051900 80051D50 00001825 */  move        $v1, $zero
/* 051904 80051D54 010E4021 */  addu        $t0, $t0, $t6
/* 051908 80051D58 01001025 */  move        $v0, $t0
/* 05190C 80051D5C 24040020 */  addiu       $a0, $zero, 0x20
.L80051D60:
/* 051910 80051D60 24630004 */  addiu       $v1, $v1, 0x4
/* 051914 80051D64 A0470007 */  sb          $a3, 0x7($v0)
/* 051918 80051D68 A0470008 */  sb          $a3, 0x8($v0)
/* 05191C 80051D6C A0470009 */  sb          $a3, 0x9($v0)
/* 051920 80051D70 24420004 */  addiu       $v0, $v0, 0x4
/* 051924 80051D74 1464FFFA */  bne         $v1, $a0, .L80051D60
/* 051928 80051D78 A0470002 */   sb         $a3, 0x2($v0)
/* 05192C 80051D7C 240F00FE */  addiu       $t7, $zero, 0xfe
/* 051930 80051D80 3C018010 */  lui         $at, %hi(__osContLastPoll)
/* 051934 80051D84 A02FDC50 */  sb          $t7, %lo(__osContLastPoll)($at)
/* 051938 80051D88 8E180008 */  lw          $t8, 0x8($s0)
/* 05193C 80051D8C AFA80024 */  sw          $t0, 0x24($sp)
/* 051940 80051D90 AFA70034 */  sw          $a3, 0x34($sp)
/* 051944 80051D94 0018C980 */  sll         $t9, $t8, 6
/* 051948 80051D98 00D92821 */  addu        $a1, $a2, $t9
/* 05194C 80051D9C 0C016118 */  jal         __osSiRawStartDma
/* 051950 80051DA0 24040001 */   addiu      $a0, $zero, 0x1
/* 051954 80051DA4 8E040004 */  lw          $a0, 0x4($s0)
/* 051958 80051DA8 00002825 */  move        $a1, $zero
/* 05195C 80051DAC 0C014554 */  jal         osRecvMesg
/* 051960 80051DB0 24060001 */   addiu      $a2, $zero, 0x1
/* 051964 80051DB4 8E090008 */  lw          $t1, 0x8($s0)
/* 051968 80051DB8 3C0C8010 */  lui         $t4, %hi(osPifBuffers)
/* 05196C 80051DBC 258CDCA0 */  addiu       $t4, $t4, %lo(osPifBuffers)
/* 051970 80051DC0 00095980 */  sll         $t3, $t1, 6
/* 051974 80051DC4 016C2821 */  addu        $a1, $t3, $t4
/* 051978 80051DC8 0C016118 */  jal         __osSiRawStartDma
/* 05197C 80051DCC 00002025 */   move       $a0, $zero
/* 051980 80051DD0 8E040004 */  lw          $a0, 0x4($s0)
/* 051984 80051DD4 00002825 */  move        $a1, $zero
/* 051988 80051DD8 0C014554 */  jal         osRecvMesg
/* 05198C 80051DDC 24060001 */   addiu      $a2, $zero, 0x1
/* 051990 80051DE0 8FA80024 */  lw          $t0, 0x24($sp)
/* 051994 80051DE4 8FA70034 */  lw          $a3, 0x34($sp)
/* 051998 80051DE8 91100002 */  lbu         $s0, 0x2($t0)
/* 05199C 80051DEC 320A00C0 */  andi        $t2, $s0, 0xc0
/* 0519A0 80051DF0 1540000D */  bnez        $t2, .L80051E28
/* 0519A4 80051DF4 01408025 */   move       $s0, $t2
/* 0519A8 80051DF8 54E00007 */  bnel        $a3, $zero, .L80051E18
/* 0519AC 80051DFC 910E0026 */   lbu        $t6, 0x26($t0)
/* 0519B0 80051E00 910D0026 */  lbu         $t5, 0x26($t0)
/* 0519B4 80051E04 11A00008 */  beqz        $t5, .L80051E28
/* 0519B8 80051E08 00000000 */   nop
/* 0519BC 80051E0C 10000006 */  b           .L80051E28
/* 0519C0 80051E10 24100004 */   addiu      $s0, $zero, 0x4
/* 0519C4 80051E14 910E0026 */  lbu         $t6, 0x26($t0)
.L80051E18:
/* 0519C8 80051E18 240100EB */  addiu       $at, $zero, 0xeb
/* 0519CC 80051E1C 11C10002 */  beq         $t6, $at, .L80051E28
/* 0519D0 80051E20 00000000 */   nop
/* 0519D4 80051E24 24100004 */  addiu       $s0, $zero, 0x4
.L80051E28:
/* 0519D8 80051E28 0C01610D */  jal         __osSiRelAccess
/* 0519DC 80051E2C 00000000 */   nop
/* 0519E0 80051E30 02001025 */  move        $v0, $s0
.L80051E34:
/* 0519E4 80051E34 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0519E8 80051E38 8FB00018 */  lw          $s0, 0x18($sp)
/* 0519EC 80051E3C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0519F0 80051E40 03E00008 */  jr          $ra
/* 0519F4 80051E44 00000000 */   nop

glabel _MakeMotorData # 1
/* 0519F8 80051E48 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 0519FC 80051E4C AFBF0014 */  sw          $ra, 0x14($sp)
/* 051A00 80051E50 00803025 */  move        $a2, $a0
/* 051A04 80051E54 240E00FF */  addiu       $t6, $zero, 0xff
/* 051A08 80051E58 240F0023 */  addiu       $t7, $zero, 0x23
/* 051A0C 80051E5C 24180001 */  addiu       $t8, $zero, 0x1
/* 051A10 80051E60 24190003 */  addiu       $t9, $zero, 0x3
/* 051A14 80051E64 240800C0 */  addiu       $t0, $zero, 0xc0
/* 051A18 80051E68 A3AE0024 */  sb          $t6, 0x24($sp)
/* 051A1C 80051E6C A3AF0025 */  sb          $t7, 0x25($sp)
/* 051A20 80051E70 A3B80026 */  sb          $t8, 0x26($sp)
/* 051A24 80051E74 A3B90027 */  sb          $t9, 0x27($sp)
/* 051A28 80051E78 A3A80028 */  sb          $t0, 0x28($sp)
/* 051A2C 80051E7C AFA60050 */  sw          $a2, 0x50($sp)
/* 051A30 80051E80 24040600 */  addiu       $a0, $zero, 0x600
/* 051A34 80051E84 0C0161A8 */  jal         __osContAddressCrc
/* 051A38 80051E88 AFA5004C */   sw         $a1, 0x4c($sp)
/* 051A3C 80051E8C 8FA60050 */  lw          $a2, 0x50($sp)
/* 051A40 80051E90 3449C000 */  ori         $t1, $v0, 0xc000
/* 051A44 80051E94 A3A90029 */  sb          $t1, 0x29($sp)
/* 051A48 80051E98 10C00012 */  beqz        $a2, .L80051EE4
/* 051A4C 80051E9C 8FA3004C */   lw         $v1, 0x4c($sp)
/* 051A50 80051EA0 18C00010 */  blez        $a2, .L80051EE4
/* 051A54 80051EA4 00001025 */   move       $v0, $zero
/* 051A58 80051EA8 30C50003 */  andi        $a1, $a2, 0x3
/* 051A5C 80051EAC 10A00006 */  beqz        $a1, .L80051EC8
/* 051A60 80051EB0 00A02025 */   move       $a0, $a1
.L80051EB4:
/* 051A64 80051EB4 24420001 */  addiu       $v0, $v0, 0x1
/* 051A68 80051EB8 A0600000 */  sb          $zero, 0x0($v1)
/* 051A6C 80051EBC 1482FFFD */  bne         $a0, $v0, .L80051EB4
/* 051A70 80051EC0 24630001 */   addiu      $v1, $v1, 0x1
/* 051A74 80051EC4 10460007 */  beq         $v0, $a2, .L80051EE4
.L80051EC8:
/* 051A78 80051EC8 24420004 */   addiu      $v0, $v0, 0x4
/* 051A7C 80051ECC A0600001 */  sb          $zero, 0x1($v1)
/* 051A80 80051ED0 A0600002 */  sb          $zero, 0x2($v1)
/* 051A84 80051ED4 A0600003 */  sb          $zero, 0x3($v1)
/* 051A88 80051ED8 24630004 */  addiu       $v1, $v1, 0x4
/* 051A8C 80051EDC 1446FFFA */  bne         $v0, $a2, .L80051EC8
/* 051A90 80051EE0 A060FFFC */   sb         $zero, -0x4($v1)
.L80051EE4:
/* 051A94 80051EE4 27AA0024 */  addiu       $t2, $sp, 0x24
/* 051A98 80051EE8 254C0024 */  addiu       $t4, $t2, 0x24
/* 051A9C 80051EEC 00606825 */  move        $t5, $v1
.L80051EF0:
/* 051AA0 80051EF0 8D410000 */  lw          $at, 0x0($t2)
/* 051AA4 80051EF4 254A000C */  addiu       $t2, $t2, 0xc
/* 051AA8 80051EF8 25AD000C */  addiu       $t5, $t5, 0xc
/* 051AAC 80051EFC A9A1FFF4 */  swl         $at, -0xc($t5)
/* 051AB0 80051F00 B9A1FFF7 */  swr         $at, -0x9($t5)
/* 051AB4 80051F04 8D41FFF8 */  lw          $at, -0x8($t2)
/* 051AB8 80051F08 A9A1FFF8 */  swl         $at, -0x8($t5)
/* 051ABC 80051F0C B9A1FFFB */  swr         $at, -0x5($t5)
/* 051AC0 80051F10 8D41FFFC */  lw          $at, -0x4($t2)
/* 051AC4 80051F14 A9A1FFFC */  swl         $at, -0x4($t5)
/* 051AC8 80051F18 154CFFF5 */  bne         $t2, $t4, .L80051EF0
/* 051ACC 80051F1C B9A1FFFF */   swr        $at, -0x1($t5)
/* 051AD0 80051F20 91410000 */  lbu         $at, 0x0($t2)
/* 051AD4 80051F24 240E00FE */  addiu       $t6, $zero, 0xfe
/* 051AD8 80051F28 24630027 */  addiu       $v1, $v1, 0x27
/* 051ADC 80051F2C A1A10000 */  sb          $at, 0x0($t5)
/* 051AE0 80051F30 914C0001 */  lbu         $t4, 0x1($t2)
/* 051AE4 80051F34 A1AC0001 */  sb          $t4, 0x1($t5)
/* 051AE8 80051F38 91410002 */  lbu         $at, 0x2($t2)
/* 051AEC 80051F3C A1A10002 */  sb          $at, 0x2($t5)
/* 051AF0 80051F40 A06E0000 */  sb          $t6, 0x0($v1)
/* 051AF4 80051F44 8FBF0014 */  lw          $ra, 0x14($sp)
/* 051AF8 80051F48 27BD0050 */  addiu       $sp, $sp, 0x50
/* 051AFC 80051F4C 03E00008 */  jr          $ra
/* 051B00 80051F50 00000000 */   nop

glabel osMotorInit # 2
/* 051B04 80051F54 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 051B08 80051F58 AFBF001C */  sw          $ra, 0x1c($sp)
/* 051B0C 80051F5C AFB00018 */  sw          $s0, 0x18($sp)
/* 051B10 80051F60 AFA40048 */  sw          $a0, 0x48($sp)
/* 051B14 80051F64 AFA60050 */  sw          $a2, 0x50($sp)
/* 051B18 80051F68 ACA40004 */  sw          $a0, 0x4($a1)
/* 051B1C 80051F6C 8FAF0050 */  lw          $t7, 0x50($sp)
/* 051B20 80051F70 241800FF */  addiu       $t8, $zero, 0xff
/* 051B24 80051F74 00A08025 */  move        $s0, $a1
/* 051B28 80051F78 A0B80065 */  sb          $t8, 0x65($a1)
/* 051B2C 80051F7C ACA00000 */  sw          $zero, 0x0($a1)
/* 051B30 80051F80 00A02025 */  move        $a0, $a1
/* 051B34 80051F84 ACAF0008 */  sw          $t7, 0x8($a1)
/* 051B38 80051F88 0C016204 */  jal         __osPfsSelectBank
/* 051B3C 80051F8C 240500FE */   addiu      $a1, $zero, 0xfe
/* 051B40 80051F90 24010002 */  addiu       $at, $zero, 0x2
/* 051B44 80051F94 14410005 */  bne         $v0, $at, .L80051FAC
/* 051B48 80051F98 00401825 */   move       $v1, $v0
/* 051B4C 80051F9C 02002025 */  move        $a0, $s0
/* 051B50 80051FA0 0C016204 */  jal         __osPfsSelectBank
/* 051B54 80051FA4 24050080 */   addiu      $a1, $zero, 0x80
/* 051B58 80051FA8 00401825 */  move        $v1, $v0
.L80051FAC:
/* 051B5C 80051FAC 10400003 */  beqz        $v0, .L80051FBC
/* 051B60 80051FB0 8FA40048 */   lw         $a0, 0x48($sp)
/* 051B64 80051FB4 10000039 */  b           .L8005209C
/* 051B68 80051FB8 00601025 */   move       $v0, $v1
.L80051FBC:
/* 051B6C 80051FBC 8FA50050 */  lw          $a1, 0x50($sp)
/* 051B70 80051FC0 24060400 */  addiu       $a2, $zero, 0x400
/* 051B74 80051FC4 0C016224 */  jal         __osContRamRead
/* 051B78 80051FC8 27A70024 */   addiu      $a3, $sp, 0x24
/* 051B7C 80051FCC 24010002 */  addiu       $at, $zero, 0x2
/* 051B80 80051FD0 14410002 */  bne         $v0, $at, .L80051FDC
/* 051B84 80051FD4 00401825 */   move       $v1, $v0
/* 051B88 80051FD8 24030004 */  addiu       $v1, $zero, 0x4
.L80051FDC:
/* 051B8C 80051FDC 10600003 */  beqz        $v1, .L80051FEC
/* 051B90 80051FE0 93B90043 */   lbu        $t9, 0x43($sp)
/* 051B94 80051FE4 1000002D */  b           .L8005209C
/* 051B98 80051FE8 00601025 */   move       $v0, $v1
.L80051FEC:
/* 051B9C 80051FEC 240100FE */  addiu       $at, $zero, 0xfe
/* 051BA0 80051FF0 17210003 */  bne         $t9, $at, .L80052000
/* 051BA4 80051FF4 02002025 */   move       $a0, $s0
/* 051BA8 80051FF8 10000028 */  b           .L8005209C
/* 051BAC 80051FFC 2402000B */   addiu      $v0, $zero, 0xb
.L80052000:
/* 051BB0 80052000 0C016204 */  jal         __osPfsSelectBank
/* 051BB4 80052004 24050080 */   addiu      $a1, $zero, 0x80
/* 051BB8 80052008 24010002 */  addiu       $at, $zero, 0x2
/* 051BBC 8005200C 14410002 */  bne         $v0, $at, .L80052018
/* 051BC0 80052010 00401825 */   move       $v1, $v0
/* 051BC4 80052014 24030004 */  addiu       $v1, $zero, 0x4
.L80052018:
/* 051BC8 80052018 10600003 */  beqz        $v1, .L80052028
/* 051BCC 8005201C 8FA40048 */   lw         $a0, 0x48($sp)
/* 051BD0 80052020 1000001E */  b           .L8005209C
/* 051BD4 80052024 00601025 */   move       $v0, $v1
.L80052028:
/* 051BD8 80052028 8FA50050 */  lw          $a1, 0x50($sp)
/* 051BDC 8005202C 24060400 */  addiu       $a2, $zero, 0x400
/* 051BE0 80052030 0C016224 */  jal         __osContRamRead
/* 051BE4 80052034 27A70024 */   addiu      $a3, $sp, 0x24
/* 051BE8 80052038 24010002 */  addiu       $at, $zero, 0x2
/* 051BEC 8005203C 14410002 */  bne         $v0, $at, .L80052048
/* 051BF0 80052040 00401825 */   move       $v1, $v0
/* 051BF4 80052044 24030004 */  addiu       $v1, $zero, 0x4
.L80052048:
/* 051BF8 80052048 10600003 */  beqz        $v1, .L80052058
/* 051BFC 8005204C 93A80043 */   lbu        $t0, 0x43($sp)
/* 051C00 80052050 10000012 */  b           .L8005209C
/* 051C04 80052054 00601025 */   move       $v0, $v1
.L80052058:
/* 051C08 80052058 24010080 */  addiu       $at, $zero, 0x80
/* 051C0C 8005205C 51010004 */  beql        $t0, $at, .L80052070
/* 051C10 80052060 8E090000 */   lw         $t1, 0x0($s0)
/* 051C14 80052064 1000000D */  b           .L8005209C
/* 051C18 80052068 2402000B */   addiu      $v0, $zero, 0xb
/* 051C1C 8005206C 8E090000 */  lw          $t1, 0x0($s0)
.L80052070:
/* 051C20 80052070 8FA40050 */  lw          $a0, 0x50($sp)
/* 051C24 80052074 3C0D8010 */  lui         $t5, %hi(osPifBuffers)
/* 051C28 80052078 312A0008 */  andi        $t2, $t1, 0x8
/* 051C2C 8005207C 15400004 */  bnez        $t2, .L80052090
/* 051C30 80052080 00046180 */   sll        $t4, $a0, 6
/* 051C34 80052084 25ADDCA0 */  addiu       $t5, $t5, %lo(osPifBuffers)
/* 051C38 80052088 0C014792 */  jal         _MakeMotorData
/* 051C3C 8005208C 018D2821 */   addu       $a1, $t4, $t5
.L80052090:
/* 051C40 80052090 240E0008 */  addiu       $t6, $zero, 0x8
/* 051C44 80052094 AE0E0000 */  sw          $t6, 0x0($s0)
/* 051C48 80052098 00001025 */  move        $v0, $zero
.L8005209C:
/* 051C4C 8005209C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 051C50 800520A0 8FB00018 */  lw          $s0, 0x18($sp)
/* 051C54 800520A4 27BD0048 */  addiu       $sp, $sp, 0x48
/* 051C58 800520A8 03E00008 */  jr          $ra
/* 051C5C 800520AC 00000000 */   nop
