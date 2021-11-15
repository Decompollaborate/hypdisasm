.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80052920 # 0
/* 0524D0 80052920 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0524D4 80052924 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0524D8 80052928 0C0160FC */  jal         __osSiGetAccess
/* 0524DC 8005292C AFA40030 */   sw         $a0, 0x30($sp)
/* 0524E0 80052930 8FA40030 */  lw          $a0, 0x30($sp)
/* 0524E4 80052934 0C014B81 */  jal         func_80052E04
/* 0524E8 80052938 27A50024 */   addiu      $a1, $sp, 0x24
/* 0524EC 8005293C 10400003 */  beq         $v0, $zero, .L8005294C
/* 0524F0 80052940 97AE0024 */   lhu        $t6, 0x24($sp)
/* 0524F4 80052944 1000000B */  b           .L80052974
/* 0524F8 80052948 00001825 */   move       $v1, $zero
.L8005294C:
/* 0524FC 8005294C 31CFC000 */  andi        $t7, $t6, 0xc000
/* 052500 80052950 34018000 */  ori         $at, $zero, 0x8000
/* 052504 80052954 11E10005 */  beq         $t7, $at, .L8005296C
/* 052508 80052958 3401C000 */   ori        $at, $zero, 0xc000
/* 05250C 8005295C 11E10005 */  beq         $t7, $at, .L80052974
/* 052510 80052960 24030002 */   addiu      $v1, $zero, 0x2
/* 052514 80052964 10000003 */  b           .L80052974
/* 052518 80052968 00001825 */   move       $v1, $zero
.L8005296C:
/* 05251C 8005296C 10000001 */  b           .L80052974
/* 052520 80052970 24030001 */   addiu      $v1, $zero, 0x1
.L80052974:
/* 052524 80052974 0C01610D */  jal         __osSiRelAccess
/* 052528 80052978 AFA3002C */   sw         $v1, 0x2c($sp)
/* 05252C 8005297C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 052530 80052980 8FA2002C */  lw          $v0, 0x2c($sp)
/* 052534 80052984 27BD0030 */  addiu       $sp, $sp, 0x30
/* 052538 80052988 03E00008 */  jr          $ra
/* 05253C 8005298C 00000000 */   nop

glabel func_80052990 # 1
/* 052540 80052990 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 052544 80052994 AFB1001C */  sw          $s1, 0x1c($sp)
/* 052548 80052998 AFBF0024 */  sw          $ra, 0x24($sp)
/* 05254C 8005299C AFB20020 */  sw          $s2, 0x20($sp)
/* 052550 800529A0 AFB00018 */  sw          $s0, 0x18($sp)
/* 052554 800529A4 3C118010 */  lui         $s1, %hi(D_800FDDA0)
/* 052558 800529A8 00C08025 */  move        $s0, $a2
/* 05255C 800529AC 00809025 */  move        $s2, $a0
/* 052560 800529B0 AFA50054 */  sw          $a1, 0x54($sp)
/* 052564 800529B4 0C0160FC */  jal         __osSiGetAccess
/* 052568 800529B8 2631DDA0 */   addiu      $s1, $s1, %lo(D_800FDDA0)
/* 05256C 800529BC 02402025 */  move        $a0, $s2
/* 052570 800529C0 0C014B81 */  jal         func_80052E04
/* 052574 800529C4 27A5003C */   addiu      $a1, $sp, 0x3c
/* 052578 800529C8 14400015 */  bne         $v0, $zero, .L80052A20
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
/* 0525AC 800529FC 14200008 */  bne         $at, $zero, .L80052A20
/* 0525B0 80052A00 00000000 */   nop
/* 0525B4 80052A04 10000006 */  b           .L80052A20
/* 0525B8 80052A08 2404FFFF */   addiu      $a0, $zero, -0x1
.L80052A0C:
/* 0525BC 80052A0C 2B210100 */  slti        $at, $t9, 0x100
/* 0525C0 80052A10 14200003 */  bne         $at, $zero, .L80052A20
/* 0525C4 80052A14 00000000 */   nop
/* 0525C8 80052A18 10000001 */  b           .L80052A20
/* 0525CC 80052A1C 2404FFFF */   addiu      $a0, $zero, -0x1
.L80052A20:
/* 0525D0 80052A20 10800005 */  beq         $a0, $zero, .L80052A38
/* 0525D4 80052A24 93A8003E */   lbu        $t0, 0x3e($sp)
/* 0525D8 80052A28 0C01610D */  jal         __osSiRelAccess
/* 0525DC 80052A2C AFA4004C */   sw         $a0, 0x4c($sp)
/* 0525E0 80052A30 10000042 */  b           .L80052B3C
/* 0525E4 80052A34 8FA2004C */   lw         $v0, 0x4c($sp)
.L80052A38:
/* 0525E8 80052A38 31090080 */  andi        $t1, $t0, 0x80
/* 0525EC 80052A3C 11200007 */  beq         $t1, $zero, .L80052A5C
/* 0525F0 80052A40 02402025 */   move       $a0, $s2
.L80052A44:
/* 0525F4 80052A44 0C014B81 */  jal         func_80052E04
/* 0525F8 80052A48 27A5003C */   addiu      $a1, $sp, 0x3c
/* 0525FC 80052A4C 93AA003E */  lbu         $t2, 0x3e($sp)
/* 052600 80052A50 314B0080 */  andi        $t3, $t2, 0x80
/* 052604 80052A54 5560FFFB */  bnel        $t3, $zero, .L80052A44
/* 052608 80052A58 02402025 */   move       $a0, $s2
.L80052A5C:
/* 05260C 80052A5C 0C014AD5 */  jal         func_80052B54
/* 052610 80052A60 93A40057 */   lbu        $a0, 0x57($sp)
/* 052614 80052A64 3C058010 */  lui         $a1, %hi(D_800FDDA0)
/* 052618 80052A68 24A5DDA0 */  addiu       $a1, $a1, %lo(D_800FDDA0)
/* 05261C 80052A6C 0C016118 */  jal         __osSiRawStartDma
/* 052620 80052A70 24040001 */   addiu      $a0, $zero, 0x1
/* 052624 80052A74 02402025 */  move        $a0, $s2
/* 052628 80052A78 00002825 */  move        $a1, $zero
/* 05262C 80052A7C 0C014554 */  jal         osRecvMesg
/* 052630 80052A80 24060001 */   addiu      $a2, $zero, 0x1
/* 052634 80052A84 3C058010 */  lui         $a1, %hi(D_800FDDA0)
/* 052638 80052A88 24A5DDA0 */  addiu       $a1, $a1, %lo(D_800FDDA0)
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
/* 05266C 80052ABC 1420FFFD */  bne         $at, $zero, .L80052AB4
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
/* 0526AC 80052AFC 1480000C */  bne         $a0, $zero, .L80052B30
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

glabel func_80052B54 # 2
/* 052704 80052B54 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 052708 80052B58 3C038010 */  lui         $v1, %hi(D_800FDDA0)
/* 05270C 80052B5C 2463DDA0 */  addiu       $v1, $v1, %lo(D_800FDDA0)
/* 052710 80052B60 240F0001 */  addiu       $t7, $zero, 0x1
/* 052714 80052B64 AC6F003C */  sw          $t7, 0x3c($v1)
/* 052718 80052B68 24180002 */  addiu       $t8, $zero, 0x2
/* 05271C 80052B6C 24190008 */  addiu       $t9, $zero, 0x8
/* 052720 80052B70 24080004 */  addiu       $t0, $zero, 0x4
/* 052724 80052B74 3C018010 */  lui         $at, %hi(D_800FDDA0)
/* 052728 80052B78 3C028010 */  lui         $v0, %hi(D_800FDDA0 + 0x1)
/* 05272C 80052B7C AFA40018 */  sw          $a0, 0x18($sp)
/* 052730 80052B80 A3B80008 */  sb          $t8, 0x8($sp)
/* 052734 80052B84 A3B90009 */  sb          $t9, 0x9($sp)
/* 052738 80052B88 A3A8000A */  sb          $t0, 0xa($sp)
/* 05273C 80052B8C A3A4000B */  sb          $a0, 0xb($sp)
/* 052740 80052B90 2442DDA1 */  addiu       $v0, $v0, %lo(D_800FDDA0 + 0x1)
/* 052744 80052B94 A020DDA0 */  sb          $zero, %lo(D_800FDDA0)($at)
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

glabel func_80052BE0 # 3
/* 052790 80052BE0 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 052794 80052BE4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 052798 80052BE8 AFB10018 */  sw          $s1, 0x18($sp)
/* 05279C 80052BEC 00808825 */  move        $s1, $a0
/* 0527A0 80052BF0 AFB00014 */  sw          $s0, 0x14($sp)
/* 0527A4 80052BF4 AFA5004C */  sw          $a1, 0x4c($sp)
/* 0527A8 80052BF8 0C0160FC */  jal         __osSiGetAccess
/* 0527AC 80052BFC AFA60050 */   sw         $a2, 0x50($sp)
/* 0527B0 80052C00 27B0002C */  addiu       $s0, $sp, 0x2c
/* 0527B4 80052C04 02002825 */  move        $a1, $s0
/* 0527B8 80052C08 0C014B81 */  jal         func_80052E04
/* 0527BC 80052C0C 02202025 */   move       $a0, $s1
/* 0527C0 80052C10 14400015 */  bne         $v0, $zero, .L80052C68
/* 0527C4 80052C14 00401825 */   move       $v1, $v0
/* 0527C8 80052C18 97AE002C */  lhu         $t6, 0x2c($sp)
/* 0527CC 80052C1C 34018000 */  ori         $at, $zero, 0x8000
/* 0527D0 80052C20 93B8004F */  lbu         $t8, 0x4f($sp)
/* 0527D4 80052C24 31CFC000 */  andi        $t7, $t6, 0xc000
/* 0527D8 80052C28 11E10005 */  beq         $t7, $at, .L80052C40
/* 0527DC 80052C2C 3401C000 */   ori        $at, $zero, 0xc000
/* 0527E0 80052C30 11E10008 */  beq         $t7, $at, .L80052C54
/* 0527E4 80052C34 93B9004F */   lbu        $t9, 0x4f($sp)
/* 0527E8 80052C38 1000000B */  b           .L80052C68
/* 0527EC 80052C3C 24030008 */   addiu      $v1, $zero, 0x8
.L80052C40:
/* 0527F0 80052C40 2B010040 */  slti        $at, $t8, 0x40
/* 0527F4 80052C44 14200008 */  bne         $at, $zero, .L80052C68
/* 0527F8 80052C48 00000000 */   nop
/* 0527FC 80052C4C 10000006 */  b           .L80052C68
/* 052800 80052C50 2403FFFF */   addiu      $v1, $zero, -0x1
.L80052C54:
/* 052804 80052C54 2B210100 */  slti        $at, $t9, 0x100
/* 052808 80052C58 14200003 */  bne         $at, $zero, .L80052C68
/* 05280C 80052C5C 00000000 */   nop
/* 052810 80052C60 10000001 */  b           .L80052C68
/* 052814 80052C64 2403FFFF */   addiu      $v1, $zero, -0x1
.L80052C68:
/* 052818 80052C68 10600005 */  beq         $v1, $zero, .L80052C80
/* 05281C 80052C6C 93A8002E */   lbu        $t0, 0x2e($sp)
/* 052820 80052C70 0C01610D */  jal         __osSiRelAccess
/* 052824 80052C74 AFA30044 */   sw         $v1, 0x44($sp)
/* 052828 80052C78 10000032 */  b           .L80052D44
/* 05282C 80052C7C 8FA20044 */   lw         $v0, 0x44($sp)
.L80052C80:
/* 052830 80052C80 31090080 */  andi        $t1, $t0, 0x80
/* 052834 80052C84 11200007 */  beq         $t1, $zero, .L80052CA4
/* 052838 80052C88 02202025 */   move       $a0, $s1
.L80052C8C:
/* 05283C 80052C8C 0C014B81 */  jal         func_80052E04
/* 052840 80052C90 02002825 */   move       $a1, $s0
/* 052844 80052C94 93AA002E */  lbu         $t2, 0x2e($sp)
/* 052848 80052C98 314B0080 */  andi        $t3, $t2, 0x80
/* 05284C 80052C9C 5560FFFB */  bnel        $t3, $zero, .L80052C8C
/* 052850 80052CA0 02202025 */   move       $a0, $s1
.L80052CA4:
/* 052854 80052CA4 93A4004F */  lbu         $a0, 0x4f($sp)
/* 052858 80052CA8 0C014B56 */  jal         func_80052D58
/* 05285C 80052CAC 8FA50050 */   lw         $a1, 0x50($sp)
/* 052860 80052CB0 3C058010 */  lui         $a1, %hi(D_800FDDA0)
/* 052864 80052CB4 24A5DDA0 */  addiu       $a1, $a1, %lo(D_800FDDA0)
/* 052868 80052CB8 0C016118 */  jal         __osSiRawStartDma
/* 05286C 80052CBC 24040001 */   addiu      $a0, $zero, 0x1
/* 052870 80052CC0 02202025 */  move        $a0, $s1
/* 052874 80052CC4 00002825 */  move        $a1, $zero
/* 052878 80052CC8 0C014554 */  jal         osRecvMesg
/* 05287C 80052CCC 24060001 */   addiu      $a2, $zero, 0x1
/* 052880 80052CD0 3C058010 */  lui         $a1, %hi(D_800FDDA0)
/* 052884 80052CD4 24A5DDA0 */  addiu       $a1, $a1, %lo(D_800FDDA0)
/* 052888 80052CD8 0C016118 */  jal         __osSiRawStartDma
/* 05288C 80052CDC 00002025 */   move       $a0, $zero
/* 052890 80052CE0 240C0005 */  addiu       $t4, $zero, 0x5
/* 052894 80052CE4 3C018010 */  lui         $at, %hi(__osContLastPoll)
/* 052898 80052CE8 A02CDC50 */  sb          $t4, %lo(__osContLastPoll)($at)
/* 05289C 80052CEC 02202025 */  move        $a0, $s1
/* 0528A0 80052CF0 00002825 */  move        $a1, $zero
/* 0528A4 80052CF4 0C014554 */  jal         osRecvMesg
/* 0528A8 80052CF8 24060001 */   addiu      $a2, $zero, 0x1
/* 0528AC 80052CFC 3C078010 */  lui         $a3, %hi(D_800FDDA4)
/* 0528B0 80052D00 24E7DDA4 */  addiu       $a3, $a3, %lo(D_800FDDA4)
/* 0528B4 80052D04 88E10000 */  lwl         $at, 0x0($a3)
/* 0528B8 80052D08 98E10003 */  lwr         $at, 0x3($a3)
/* 0528BC 80052D0C 27AD0030 */  addiu       $t5, $sp, 0x30
/* 0528C0 80052D10 ADA10000 */  sw          $at, 0x0($t5)
/* 0528C4 80052D14 88F80004 */  lwl         $t8, 0x4($a3)
/* 0528C8 80052D18 98F80007 */  lwr         $t8, 0x7($a3)
/* 0528CC 80052D1C ADB80004 */  sw          $t8, 0x4($t5)
/* 0528D0 80052D20 88E10008 */  lwl         $at, 0x8($a3)
/* 0528D4 80052D24 98E1000B */  lwr         $at, 0xb($a3)
/* 0528D8 80052D28 ADA10008 */  sw          $at, 0x8($t5)
/* 0528DC 80052D2C 93A30031 */  lbu         $v1, 0x31($sp)
/* 0528E0 80052D30 307900C0 */  andi        $t9, $v1, 0xc0
/* 0528E4 80052D34 00194103 */  sra         $t0, $t9, 4
/* 0528E8 80052D38 0C01610D */  jal         __osSiRelAccess
/* 0528EC 80052D3C AFA80044 */   sw         $t0, 0x44($sp)
/* 0528F0 80052D40 8FA20044 */  lw          $v0, 0x44($sp)
.L80052D44:
/* 0528F4 80052D44 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0528F8 80052D48 8FB00014 */  lw          $s0, 0x14($sp)
/* 0528FC 80052D4C 8FB10018 */  lw          $s1, 0x18($sp)
/* 052900 80052D50 03E00008 */  jr          $ra
/* 052904 80052D54 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_80052D58 # 4
/* 052908 80052D58 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 05290C 80052D5C 3C078010 */  lui         $a3, %hi(D_800FDDA0)
/* 052910 80052D60 24E7DDA0 */  addiu       $a3, $a3, %lo(D_800FDDA0)
/* 052914 80052D64 240F0001 */  addiu       $t7, $zero, 0x1
/* 052918 80052D68 2418000A */  addiu       $t8, $zero, 0xa
/* 05291C 80052D6C 24190001 */  addiu       $t9, $zero, 0x1
/* 052920 80052D70 24080005 */  addiu       $t0, $zero, 0x5
/* 052924 80052D74 AFA40018 */  sw          $a0, 0x18($sp)
/* 052928 80052D78 ACEF003C */  sw          $t7, 0x3c($a3)
/* 05292C 80052D7C A3B80008 */  sb          $t8, 0x8($sp)
/* 052930 80052D80 A3B90009 */  sb          $t9, 0x9($sp)
/* 052934 80052D84 A3A8000A */  sb          $t0, 0xa($sp)
/* 052938 80052D88 A3A4000B */  sb          $a0, 0xb($sp)
/* 05293C 80052D8C 27A60008 */  addiu       $a2, $sp, 0x8
/* 052940 80052D90 27A20010 */  addiu       $v0, $sp, 0x10
.L80052D94:
/* 052944 80052D94 90A90000 */  lbu         $t1, 0x0($a1)
/* 052948 80052D98 24C60001 */  addiu       $a2, $a2, 0x1
/* 05294C 80052D9C 00C2082B */  sltu        $at, $a2, $v0
/* 052950 80052DA0 24A50001 */  addiu       $a1, $a1, 0x1
/* 052954 80052DA4 1420FFFB */  bne         $at, $zero, .L80052D94
/* 052958 80052DA8 A0C90003 */   sb         $t1, 0x3($a2)
/* 05295C 80052DAC 3C018010 */  lui         $at, %hi(D_800FDDA0)
/* 052960 80052DB0 3C028010 */  lui         $v0, %hi(D_800FDDA0 + 0x1)
/* 052964 80052DB4 2442DDA1 */  addiu       $v0, $v0, %lo(D_800FDDA0 + 0x1)
/* 052968 80052DB8 A020DDA0 */  sb          $zero, %lo(D_800FDDA0)($at)
/* 05296C 80052DBC A0400002 */  sb          $zero, 0x2($v0)
/* 052970 80052DC0 A0400001 */  sb          $zero, 0x1($v0)
/* 052974 80052DC4 A0400000 */  sb          $zero, 0x0($v0)
/* 052978 80052DC8 27AA0008 */  addiu       $t2, $sp, 0x8
/* 05297C 80052DCC 8D410000 */  lw          $at, 0x0($t2)
/* 052980 80052DD0 240D00FE */  addiu       $t5, $zero, 0xfe
/* 052984 80052DD4 2442000F */  addiu       $v0, $v0, 0xf
/* 052988 80052DD8 A841FFF4 */  swl         $at, -0xc($v0)
/* 05298C 80052DDC B841FFF7 */  swr         $at, -0x9($v0)
/* 052990 80052DE0 8D4C0004 */  lw          $t4, 0x4($t2)
/* 052994 80052DE4 A84CFFF8 */  swl         $t4, -0x8($v0)
/* 052998 80052DE8 B84CFFFB */  swr         $t4, -0x5($v0)
/* 05299C 80052DEC 8D410008 */  lw          $at, 0x8($t2)
/* 0529A0 80052DF0 A04D0000 */  sb          $t5, 0x0($v0)
/* 0529A4 80052DF4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0529A8 80052DF8 A841FFFC */  swl         $at, -0x4($v0)
/* 0529AC 80052DFC 03E00008 */  jr          $ra
/* 0529B0 80052E00 B841FFFF */   swr        $at, -0x1($v0)

glabel func_80052E04 # 5
/* 0529B4 80052E04 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0529B8 80052E08 3C028010 */  lui         $v0, %hi(D_800FDDA0)
/* 0529BC 80052E0C 3C038010 */  lui         $v1, %hi(D_800FDDE0)
/* 0529C0 80052E10 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0529C4 80052E14 AFA40030 */  sw          $a0, 0x30($sp)
/* 0529C8 80052E18 AFA50034 */  sw          $a1, 0x34($sp)
/* 0529CC 80052E1C 2463DDE0 */  addiu       $v1, $v1, %lo(D_800FDDE0)
/* 0529D0 80052E20 2442DDA0 */  addiu       $v0, $v0, %lo(D_800FDDA0)
.L80052E24:
/* 0529D4 80052E24 24420004 */  addiu       $v0, $v0, 0x4
/* 0529D8 80052E28 0043082B */  sltu        $at, $v0, $v1
/* 0529DC 80052E2C 1420FFFD */  bne         $at, $zero, .L80052E24
/* 0529E0 80052E30 AC40FFFC */   sw         $zero, -0x4($v0)
/* 0529E4 80052E34 3C058010 */  lui         $a1, %hi(D_800FDDA0)
/* 0529E8 80052E38 24A5DDA0 */  addiu       $a1, $a1, %lo(D_800FDDA0)
/* 0529EC 80052E3C 240E0001 */  addiu       $t6, $zero, 0x1
/* 0529F0 80052E40 ACAE003C */  sw          $t6, 0x3c($a1)
/* 0529F4 80052E44 00A01025 */  move        $v0, $a1
/* 0529F8 80052E48 00001825 */  move        $v1, $zero
.L80052E4C:
/* 0529FC 80052E4C 24630001 */  addiu       $v1, $v1, 0x1
/* 052A00 80052E50 28610004 */  slti        $at, $v1, 0x4
/* 052A04 80052E54 A0400000 */  sb          $zero, 0x0($v0)
/* 052A08 80052E58 1420FFFC */  bne         $at, $zero, .L80052E4C
/* 052A0C 80052E5C 24420001 */   addiu      $v0, $v0, 0x1
/* 052A10 80052E60 240F00FF */  addiu       $t7, $zero, 0xff
/* 052A14 80052E64 24180001 */  addiu       $t8, $zero, 0x1
/* 052A18 80052E68 24190003 */  addiu       $t9, $zero, 0x3
/* 052A1C 80052E6C 240800FF */  addiu       $t0, $zero, 0xff
/* 052A20 80052E70 240900FF */  addiu       $t1, $zero, 0xff
/* 052A24 80052E74 240A00FF */  addiu       $t2, $zero, 0xff
/* 052A28 80052E78 240B00FF */  addiu       $t3, $zero, 0xff
/* 052A2C 80052E7C A3AF001C */  sb          $t7, 0x1c($sp)
/* 052A30 80052E80 A3B8001D */  sb          $t8, 0x1d($sp)
/* 052A34 80052E84 A3B9001E */  sb          $t9, 0x1e($sp)
/* 052A38 80052E88 A3A0001F */  sb          $zero, 0x1f($sp)
/* 052A3C 80052E8C A3A80020 */  sb          $t0, 0x20($sp)
/* 052A40 80052E90 A3A90021 */  sb          $t1, 0x21($sp)
/* 052A44 80052E94 A3AA0022 */  sb          $t2, 0x22($sp)
/* 052A48 80052E98 A3AB0023 */  sb          $t3, 0x23($sp)
/* 052A4C 80052E9C 27AC001C */  addiu       $t4, $sp, 0x1c
/* 052A50 80052EA0 8D810000 */  lw          $at, 0x0($t4)
/* 052A54 80052EA4 241800FE */  addiu       $t8, $zero, 0xfe
/* 052A58 80052EA8 24420008 */  addiu       $v0, $v0, 0x8
/* 052A5C 80052EAC A841FFF8 */  swl         $at, -0x8($v0)
/* 052A60 80052EB0 B841FFFB */  swr         $at, -0x5($v0)
/* 052A64 80052EB4 8D8F0004 */  lw          $t7, 0x4($t4)
/* 052A68 80052EB8 A0580000 */  sb          $t8, 0x0($v0)
/* 052A6C 80052EBC 24040001 */  addiu       $a0, $zero, 0x1
/* 052A70 80052EC0 A84FFFFC */  swl         $t7, -0x4($v0)
/* 052A74 80052EC4 0C016118 */  jal         __osSiRawStartDma
/* 052A78 80052EC8 B84FFFFF */   swr        $t7, -0x1($v0)
/* 052A7C 80052ECC 8FA40030 */  lw          $a0, 0x30($sp)
/* 052A80 80052ED0 00002825 */  move        $a1, $zero
/* 052A84 80052ED4 0C014554 */  jal         osRecvMesg
/* 052A88 80052ED8 24060001 */   addiu      $a2, $zero, 0x1
/* 052A8C 80052EDC 241900FE */  addiu       $t9, $zero, 0xfe
/* 052A90 80052EE0 3C018010 */  lui         $at, %hi(__osContLastPoll)
/* 052A94 80052EE4 3C058010 */  lui         $a1, %hi(D_800FDDA0)
/* 052A98 80052EE8 A039DC50 */  sb          $t9, %lo(__osContLastPoll)($at)
/* 052A9C 80052EEC 24A5DDA0 */  addiu       $a1, $a1, %lo(D_800FDDA0)
/* 052AA0 80052EF0 0C016118 */  jal         __osSiRawStartDma
/* 052AA4 80052EF4 00002025 */   move       $a0, $zero
/* 052AA8 80052EF8 8FA40030 */  lw          $a0, 0x30($sp)
/* 052AAC 80052EFC 00002825 */  move        $a1, $zero
/* 052AB0 80052F00 24060001 */  addiu       $a2, $zero, 0x1
/* 052AB4 80052F04 0C014554 */  jal         osRecvMesg
/* 052AB8 80052F08 AFA2002C */   sw         $v0, 0x2c($sp)
/* 052ABC 80052F0C 8FA3002C */  lw          $v1, 0x2c($sp)
/* 052AC0 80052F10 3C028010 */  lui         $v0, %hi(D_800FDDA0 + 0x1)
/* 052AC4 80052F14 2442DDA1 */  addiu       $v0, $v0, %lo(D_800FDDA0 + 0x1)
/* 052AC8 80052F18 10600003 */  beq         $v1, $zero, .L80052F28
/* 052ACC 80052F1C 3C018010 */   lui        $at, %hi(D_800FDDA0)
/* 052AD0 80052F20 1000001E */  b           .L80052F9C
/* 052AD4 80052F24 00601025 */   move       $v0, $v1
.L80052F28:
/* 052AD8 80052F28 A020DDA0 */  sb          $zero, %lo(D_800FDDA0)($at)
/* 052ADC 80052F2C 88410003 */  lwl         $at, 0x3($v0)
/* 052AE0 80052F30 98410006 */  lwr         $at, 0x6($v0)
/* 052AE4 80052F34 A0400002 */  sb          $zero, 0x2($v0)
/* 052AE8 80052F38 A0400001 */  sb          $zero, 0x1($v0)
/* 052AEC 80052F3C A0400000 */  sb          $zero, 0x0($v0)
/* 052AF0 80052F40 8FA40034 */  lw          $a0, 0x34($sp)
/* 052AF4 80052F44 27A8001C */  addiu       $t0, $sp, 0x1c
/* 052AF8 80052F48 AD010000 */  sw          $at, 0x0($t0)
/* 052AFC 80052F4C 884A0007 */  lwl         $t2, 0x7($v0)
/* 052B00 80052F50 984A000A */  lwr         $t2, 0xa($v0)
/* 052B04 80052F54 24420003 */  addiu       $v0, $v0, 0x3
/* 052B08 80052F58 00001025 */  move        $v0, $zero
/* 052B0C 80052F5C AD0A0004 */  sw          $t2, 0x4($t0)
/* 052B10 80052F60 93AB001E */  lbu         $t3, 0x1e($sp)
/* 052B14 80052F64 316E00C0 */  andi        $t6, $t3, 0xc0
/* 052B18 80052F68 000E6903 */  sra         $t5, $t6, 4
/* 052B1C 80052F6C A08D0003 */  sb          $t5, 0x3($a0)
/* 052B20 80052F70 93AC0021 */  lbu         $t4, 0x21($sp)
/* 052B24 80052F74 93B80020 */  lbu         $t8, 0x20($sp)
/* 052B28 80052F78 31A300FF */  andi        $v1, $t5, 0xff
/* 052B2C 80052F7C 000C7A00 */  sll         $t7, $t4, 8
/* 052B30 80052F80 01F8C825 */  or          $t9, $t7, $t8
/* 052B34 80052F84 A4990000 */  sh          $t9, 0x0($a0)
/* 052B38 80052F88 93A90022 */  lbu         $t1, 0x22($sp)
/* 052B3C 80052F8C 10600003 */  beq         $v1, $zero, .L80052F9C
/* 052B40 80052F90 A0890002 */   sb         $t1, 0x2($a0)
/* 052B44 80052F94 10000001 */  b           .L80052F9C
/* 052B48 80052F98 00601025 */   move       $v0, $v1
.L80052F9C:
/* 052B4C 80052F9C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 052B50 80052FA0 27BD0030 */  addiu       $sp, $sp, 0x30
/* 052B54 80052FA4 03E00008 */  jr          $ra
/* 052B58 80052FA8 00000000 */   nop
/* 052B5C 80052FAC 00000000 */  nop
