.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osEepromRead # 0
/* 052540 80052990 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 052544 80052994 AFB1001C */  sw          $s1, 0x1c($sp)
/* 052548 80052998 AFBF0024 */  sw          $ra, 0x24($sp)
/* 05254C 8005299C AFB20020 */  sw          $s2, 0x20($sp)
/* 052550 800529A0 AFB00018 */  sw          $s0, 0x18($sp)
/* 052554 800529A4 3C118010 */  lui         $s1, %hi(__osEepPifRam)
/* 052558 800529A8 00C08025 */  move        $s0, $a2
/* 05255C 800529AC 00809025 */  move        $s2, $a0
/* 052560 800529B0 AFA50054 */  sw          $a1, 0x54($sp)
/* 052564 800529B4 0C0160FC */  jal         __osSiGetAccess
/* 052568 800529B8 2631DDA0 */   addiu      $s1, $s1, %lo(__osEepPifRam)
/* 05256C 800529BC 02402025 */  move        $a0, $s2
/* 052570 800529C0 0C014B81 */  jal         func_80052E04
/* 052574 800529C4 27A5003C */   addiu      $a1, $sp, 0x3c
/* 052578 800529C8 14400015 */  bnez        $v0, .L80052A20
/* 05257C 800529CC 00402025 */   move       $a0, $v0
/* 052580 800529D0 97AE003C */  lhu         $t6, 0x3c($sp)
/* 052584 800529D4 34018000 */  ori         $at, $zero, 0x8000
/* 052588 800529D8 93B80057 */  lbu         $t8, 0x57($sp)
/* 05258C 800529DC 31CFC000 */  andi        $t7, $t6, 0xc000
/* 052590 800529E0 11E10005 */  beq         $t7, $at, .L800529F8
/* 052594 800529E4 3401C000 */   ori        $at, $zero, 0xc000
/* 052598 800529E8 11E10008 */  beq         $t7, $at, .L80052A0C
/* 05259C 800529EC 93B90057 */   lbu        $t9, 0x57($sp)
/* 0525A0 800529F0 1000000B */  b           .L80052A20
/* 0525A4 800529F4 24040008 */   addiu      $a0, $zero, 0x8
.L800529F8:
/* 0525A8 800529F8 2B010040 */  slti        $at, $t8, 0x40
/* 0525AC 800529FC 14200008 */  bnez        $at, .L80052A20
/* 0525B0 80052A00 00000000 */   nop
/* 0525B4 80052A04 10000006 */  b           .L80052A20
/* 0525B8 80052A08 2404FFFF */   addiu      $a0, $zero, -0x1
.L80052A0C:
/* 0525BC 80052A0C 2B210100 */  slti        $at, $t9, 0x100
/* 0525C0 80052A10 14200003 */  bnez        $at, .L80052A20
/* 0525C4 80052A14 00000000 */   nop
/* 0525C8 80052A18 10000001 */  b           .L80052A20
/* 0525CC 80052A1C 2404FFFF */   addiu      $a0, $zero, -0x1
.L80052A20:
/* 0525D0 80052A20 10800005 */  beqz        $a0, .L80052A38
/* 0525D4 80052A24 93A8003E */   lbu        $t0, 0x3e($sp)
/* 0525D8 80052A28 0C01610D */  jal         __osSiRelAccess
/* 0525DC 80052A2C AFA4004C */   sw         $a0, 0x4c($sp)
/* 0525E0 80052A30 10000042 */  b           .L80052B3C
/* 0525E4 80052A34 8FA2004C */   lw         $v0, 0x4c($sp)
.L80052A38:
/* 0525E8 80052A38 31090080 */  andi        $t1, $t0, 0x80
/* 0525EC 80052A3C 11200007 */  beqz        $t1, .L80052A5C
/* 0525F0 80052A40 02402025 */   move       $a0, $s2
.L80052A44:
/* 0525F4 80052A44 0C014B81 */  jal         func_80052E04
/* 0525F8 80052A48 27A5003C */   addiu      $a1, $sp, 0x3c
/* 0525FC 80052A4C 93AA003E */  lbu         $t2, 0x3e($sp)
/* 052600 80052A50 314B0080 */  andi        $t3, $t2, 0x80
/* 052604 80052A54 5560FFFB */  bnel        $t3, $zero, .L80052A44
/* 052608 80052A58 02402025 */   move       $a0, $s2
.L80052A5C:
/* 05260C 80052A5C 0C014AD5 */  jal         __osPackEepReadData
/* 052610 80052A60 93A40057 */   lbu        $a0, 0x57($sp)
/* 052614 80052A64 3C058010 */  lui         $a1, %hi(__osEepPifRam)
/* 052618 80052A68 24A5DDA0 */  addiu       $a1, $a1, %lo(__osEepPifRam)
/* 05261C 80052A6C 0C016118 */  jal         __osSiRawStartDma
/* 052620 80052A70 24040001 */   addiu      $a0, $zero, 0x1
/* 052624 80052A74 02402025 */  move        $a0, $s2
/* 052628 80052A78 00002825 */  move        $a1, $zero
/* 05262C 80052A7C 0C014554 */  jal         osRecvMesg
/* 052630 80052A80 24060001 */   addiu      $a2, $zero, 0x1
/* 052634 80052A84 3C058010 */  lui         $a1, %hi(__osEepPifRam)
/* 052638 80052A88 24A5DDA0 */  addiu       $a1, $a1, %lo(__osEepPifRam)
/* 05263C 80052A8C 0C016118 */  jal         __osSiRawStartDma
/* 052640 80052A90 00002025 */   move       $a0, $zero
/* 052644 80052A94 240C0004 */  addiu       $t4, $zero, 0x4
/* 052648 80052A98 3C018010 */  lui         $at, %hi(__osContLastPoll)
/* 05264C 80052A9C A02CDC50 */  sb          $t4, %lo(__osContLastPoll)($at)
/* 052650 80052AA0 02402025 */  move        $a0, $s2
/* 052654 80052AA4 00002825 */  move        $a1, $zero
/* 052658 80052AA8 0C014554 */  jal         osRecvMesg
/* 05265C 80052AAC 24060001 */   addiu      $a2, $zero, 0x1
/* 052660 80052AB0 00001825 */  move        $v1, $zero
.L80052AB4:
/* 052664 80052AB4 24630001 */  addiu       $v1, $v1, 0x1
/* 052668 80052AB8 28610004 */  slti        $at, $v1, 0x4
/* 05266C 80052ABC 1420FFFD */  bnez        $at, .L80052AB4
/* 052670 80052AC0 26310001 */   addiu      $s1, $s1, 0x1
/* 052674 80052AC4 8A210000 */  lwl         $at, 0x0($s1)
/* 052678 80052AC8 9A210003 */  lwr         $at, 0x3($s1)
/* 05267C 80052ACC 27AD0030 */  addiu       $t5, $sp, 0x30
/* 052680 80052AD0 27A30038 */  addiu       $v1, $sp, 0x38
/* 052684 80052AD4 ADA10000 */  sw          $at, 0x0($t5)
/* 052688 80052AD8 8A2F0004 */  lwl         $t7, 0x4($s1)
/* 05268C 80052ADC 9A2F0007 */  lwr         $t7, 0x7($s1)
/* 052690 80052AE0 ADAF0004 */  sw          $t7, 0x4($t5)
/* 052694 80052AE4 8A210008 */  lwl         $at, 0x8($s1)
/* 052698 80052AE8 9A21000B */  lwr         $at, 0xb($s1)
/* 05269C 80052AEC ADA10008 */  sw          $at, 0x8($t5)
/* 0526A0 80052AF0 93A20031 */  lbu         $v0, 0x31($sp)
/* 0526A4 80052AF4 305800C0 */  andi        $t8, $v0, 0xc0
/* 0526A8 80052AF8 00182103 */  sra         $a0, $t8, 4
/* 0526AC 80052AFC 1480000C */  bnez        $a0, .L80052B30
/* 0526B0 80052B00 27A20030 */   addiu      $v0, $sp, 0x30
.L80052B04:
/* 0526B4 80052B04 90480004 */  lbu         $t0, 0x4($v0)
/* 0526B8 80052B08 24420004 */  addiu       $v0, $v0, 0x4
/* 0526BC 80052B0C 26100004 */  addiu       $s0, $s0, 0x4
/* 0526C0 80052B10 A208FFFC */  sb          $t0, -0x4($s0)
/* 0526C4 80052B14 90490001 */  lbu         $t1, 0x1($v0)
/* 0526C8 80052B18 A209FFFD */  sb          $t1, -0x3($s0)
/* 0526CC 80052B1C 904A0002 */  lbu         $t2, 0x2($v0)
/* 0526D0 80052B20 A20AFFFE */  sb          $t2, -0x2($s0)
/* 0526D4 80052B24 904B0003 */  lbu         $t3, 0x3($v0)
/* 0526D8 80052B28 1443FFF6 */  bne         $v0, $v1, .L80052B04
/* 0526DC 80052B2C A20BFFFF */   sb         $t3, -0x1($s0)
.L80052B30:
/* 0526E0 80052B30 0C01610D */  jal         __osSiRelAccess
/* 0526E4 80052B34 AFA4004C */   sw         $a0, 0x4c($sp)
/* 0526E8 80052B38 8FA2004C */  lw          $v0, 0x4c($sp)
.L80052B3C:
/* 0526EC 80052B3C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0526F0 80052B40 8FB00018 */  lw          $s0, 0x18($sp)
/* 0526F4 80052B44 8FB1001C */  lw          $s1, 0x1c($sp)
/* 0526F8 80052B48 8FB20020 */  lw          $s2, 0x20($sp)
/* 0526FC 80052B4C 03E00008 */  jr          $ra
/* 052700 80052B50 27BD0050 */   addiu      $sp, $sp, 0x50

glabel __osPackEepReadData # 1
/* 052704 80052B54 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 052708 80052B58 3C038010 */  lui         $v1, %hi(__osEepPifRam)
/* 05270C 80052B5C 2463DDA0 */  addiu       $v1, $v1, %lo(__osEepPifRam)
/* 052710 80052B60 240F0001 */  addiu       $t7, $zero, 0x1
/* 052714 80052B64 AC6F003C */  sw          $t7, 0x3c($v1)
/* 052718 80052B68 24180002 */  addiu       $t8, $zero, 0x2
/* 05271C 80052B6C 24190008 */  addiu       $t9, $zero, 0x8
/* 052720 80052B70 24080004 */  addiu       $t0, $zero, 0x4
/* 052724 80052B74 3C018010 */  lui         $at, %hi(__osEepPifRam)
/* 052728 80052B78 3C028010 */  lui         $v0, %hi(__osEepPifRam + 0x1)
/* 05272C 80052B7C AFA40018 */  sw          $a0, 0x18($sp)
/* 052730 80052B80 A3B80008 */  sb          $t8, 0x8($sp)
/* 052734 80052B84 A3B90009 */  sb          $t9, 0x9($sp)
/* 052738 80052B88 A3A8000A */  sb          $t0, 0xa($sp)
/* 05273C 80052B8C A3A4000B */  sb          $a0, 0xb($sp)
/* 052740 80052B90 2442DDA1 */  addiu       $v0, $v0, %lo(__osEepPifRam + 0x1)
/* 052744 80052B94 A020DDA0 */  sb          $zero, %lo(__osEepPifRam)($at)
/* 052748 80052B98 A0400002 */  sb          $zero, 0x2($v0)
/* 05274C 80052B9C A0400001 */  sb          $zero, 0x1($v0)
/* 052750 80052BA0 A0400000 */  sb          $zero, 0x0($v0)
/* 052754 80052BA4 27A90008 */  addiu       $t1, $sp, 0x8
/* 052758 80052BA8 8D210000 */  lw          $at, 0x0($t1)
/* 05275C 80052BAC 240C00FE */  addiu       $t4, $zero, 0xfe
/* 052760 80052BB0 2442000F */  addiu       $v0, $v0, 0xf
/* 052764 80052BB4 A841FFF4 */  swl         $at, -0xc($v0)
/* 052768 80052BB8 B841FFF7 */  swr         $at, -0x9($v0)
/* 05276C 80052BBC 8D2B0004 */  lw          $t3, 0x4($t1)
/* 052770 80052BC0 A84BFFF8 */  swl         $t3, -0x8($v0)
/* 052774 80052BC4 B84BFFFB */  swr         $t3, -0x5($v0)
/* 052778 80052BC8 8D210008 */  lw          $at, 0x8($t1)
/* 05277C 80052BCC A04C0000 */  sb          $t4, 0x0($v0)
/* 052780 80052BD0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 052784 80052BD4 A841FFFC */  swl         $at, -0x4($v0)
/* 052788 80052BD8 03E00008 */  jr          $ra
/* 05278C 80052BDC B841FFFF */   swr        $at, -0x1($v0)
