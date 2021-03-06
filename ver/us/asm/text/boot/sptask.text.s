.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel _VirtualToPhysicalTask # 0
/* 054420 80054870 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 054424 80054874 AFBF0014 */  sw          $ra, 0x14($sp)
/* 054428 80054878 3C058010 */  lui         $a1, %hi(tmpTask)
/* 05442C 8005487C 24A502C0 */  addiu       $a1, $a1, %lo(tmpTask)
/* 054430 80054880 0C014984 */  jal         bcopy
/* 054434 80054884 24060040 */   addiu      $a2, $zero, 0x40
/* 054438 80054888 3C048010 */  lui         $a0, %hi(tmpTask + 0x10)
/* 05443C 8005488C 8C8402D0 */  lw          $a0, %lo(tmpTask + 0x10)($a0)
/* 054440 80054890 10800005 */  beqz        $a0, .L800548A8
/* 054444 80054894 00000000 */   nop
/* 054448 80054898 0C0143B0 */  jal         osVirtualToPhysical
/* 05444C 8005489C 00000000 */   nop
/* 054450 800548A0 3C018010 */  lui         $at, %hi(tmpTask + 0x10)
/* 054454 800548A4 AC2202D0 */  sw          $v0, %lo(tmpTask + 0x10)($at)
.L800548A8:
/* 054458 800548A8 3C048010 */  lui         $a0, %hi(tmpTask + 0x18)
/* 05445C 800548AC 8C8402D8 */  lw          $a0, %lo(tmpTask + 0x18)($a0)
/* 054460 800548B0 10800005 */  beqz        $a0, .L800548C8
/* 054464 800548B4 00000000 */   nop
/* 054468 800548B8 0C0143B0 */  jal         osVirtualToPhysical
/* 05446C 800548BC 00000000 */   nop
/* 054470 800548C0 3C018010 */  lui         $at, %hi(tmpTask + 0x18)
/* 054474 800548C4 AC2202D8 */  sw          $v0, %lo(tmpTask + 0x18)($at)
.L800548C8:
/* 054478 800548C8 3C048010 */  lui         $a0, %hi(tmpTask + 0x20)
/* 05447C 800548CC 8C8402E0 */  lw          $a0, %lo(tmpTask + 0x20)($a0)
/* 054480 800548D0 10800005 */  beqz        $a0, .L800548E8
/* 054484 800548D4 00000000 */   nop
/* 054488 800548D8 0C0143B0 */  jal         osVirtualToPhysical
/* 05448C 800548DC 00000000 */   nop
/* 054490 800548E0 3C018010 */  lui         $at, %hi(tmpTask + 0x20)
/* 054494 800548E4 AC2202E0 */  sw          $v0, %lo(tmpTask + 0x20)($at)
.L800548E8:
/* 054498 800548E8 3C048010 */  lui         $a0, %hi(tmpTask + 0x28)
/* 05449C 800548EC 8C8402E8 */  lw          $a0, %lo(tmpTask + 0x28)($a0)
/* 0544A0 800548F0 10800005 */  beqz        $a0, .L80054908
/* 0544A4 800548F4 00000000 */   nop
/* 0544A8 800548F8 0C0143B0 */  jal         osVirtualToPhysical
/* 0544AC 800548FC 00000000 */   nop
/* 0544B0 80054900 3C018010 */  lui         $at, %hi(tmpTask + 0x28)
/* 0544B4 80054904 AC2202E8 */  sw          $v0, %lo(tmpTask + 0x28)($at)
.L80054908:
/* 0544B8 80054908 3C048010 */  lui         $a0, %hi(tmpTask + 0x2C)
/* 0544BC 8005490C 8C8402EC */  lw          $a0, %lo(tmpTask + 0x2C)($a0)
/* 0544C0 80054910 10800005 */  beqz        $a0, .L80054928
/* 0544C4 80054914 00000000 */   nop
/* 0544C8 80054918 0C0143B0 */  jal         osVirtualToPhysical
/* 0544CC 8005491C 00000000 */   nop
/* 0544D0 80054920 3C018010 */  lui         $at, %hi(tmpTask + 0x2C)
/* 0544D4 80054924 AC2202EC */  sw          $v0, %lo(tmpTask + 0x2C)($at)
.L80054928:
/* 0544D8 80054928 3C048010 */  lui         $a0, %hi(tmpTask + 0x30)
/* 0544DC 8005492C 8C8402F0 */  lw          $a0, %lo(tmpTask + 0x30)($a0)
/* 0544E0 80054930 10800005 */  beqz        $a0, .L80054948
/* 0544E4 80054934 00000000 */   nop
/* 0544E8 80054938 0C0143B0 */  jal         osVirtualToPhysical
/* 0544EC 8005493C 00000000 */   nop
/* 0544F0 80054940 3C018010 */  lui         $at, %hi(tmpTask + 0x30)
/* 0544F4 80054944 AC2202F0 */  sw          $v0, %lo(tmpTask + 0x30)($at)
.L80054948:
/* 0544F8 80054948 3C048010 */  lui         $a0, %hi(tmpTask + 0x38)
/* 0544FC 8005494C 8C8402F8 */  lw          $a0, %lo(tmpTask + 0x38)($a0)
/* 054500 80054950 50800006 */  beql        $a0, $zero, .L8005496C
/* 054504 80054954 8FBF0014 */   lw         $ra, 0x14($sp)
/* 054508 80054958 0C0143B0 */  jal         osVirtualToPhysical
/* 05450C 8005495C 00000000 */   nop
/* 054510 80054960 3C018010 */  lui         $at, %hi(tmpTask + 0x38)
/* 054514 80054964 AC2202F8 */  sw          $v0, %lo(tmpTask + 0x38)($at)
/* 054518 80054968 8FBF0014 */  lw          $ra, 0x14($sp)
.L8005496C:
/* 05451C 8005496C 3C028010 */  lui         $v0, %hi(tmpTask)
/* 054520 80054970 244202C0 */  addiu       $v0, $v0, %lo(tmpTask)
/* 054524 80054974 03E00008 */  jr          $ra
/* 054528 80054978 27BD0018 */   addiu      $sp, $sp, 0x18

glabel osSpTaskLoad # 1
/* 05452C 8005497C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 054530 80054980 AFBF0024 */  sw          $ra, 0x24($sp)
/* 054534 80054984 AFB00014 */  sw          $s0, 0x14($sp)
/* 054538 80054988 00808025 */  move        $s0, $a0
/* 05453C 8005498C AFB30020 */  sw          $s3, 0x20($sp)
/* 054540 80054990 AFB2001C */  sw          $s2, 0x1c($sp)
/* 054544 80054994 0C01521C */  jal         _VirtualToPhysicalTask
/* 054548 80054998 AFB10018 */   sw         $s1, 0x18($sp)
/* 05454C 8005499C 8C4E0004 */  lw          $t6, 0x4($v0)
/* 054550 800549A0 00409025 */  move        $s2, $v0
/* 054554 800549A4 02402025 */  move        $a0, $s2
/* 054558 800549A8 31CF0001 */  andi        $t7, $t6, 0x1
/* 05455C 800549AC 11E00013 */  beqz        $t7, .L800549FC
/* 054560 800549B0 00000000 */   nop
/* 054564 800549B4 8C580038 */  lw          $t8, 0x38($v0)
/* 054568 800549B8 8C59003C */  lw          $t9, 0x3c($v0)
/* 05456C 800549BC 2401FFFE */  addiu       $at, $zero, -0x2
/* 054570 800549C0 AC580018 */  sw          $t8, 0x18($v0)
/* 054574 800549C4 AC59001C */  sw          $t9, 0x1c($v0)
/* 054578 800549C8 8E080004 */  lw          $t0, 0x4($s0)
/* 05457C 800549CC 01014824 */  and         $t1, $t0, $at
/* 054580 800549D0 AE090004 */  sw          $t1, 0x4($s0)
/* 054584 800549D4 8C4A0004 */  lw          $t2, 0x4($v0)
/* 054588 800549D8 314B0004 */  andi        $t3, $t2, 0x4
/* 05458C 800549DC 11600007 */  beqz        $t3, .L800549FC
/* 054590 800549E0 00000000 */   nop
/* 054594 800549E4 8E0C0038 */  lw          $t4, 0x38($s0)
/* 054598 800549E8 3C01A000 */  lui         $at, 0xa000
/* 05459C 800549EC 258D0BFC */  addiu       $t5, $t4, 0xbfc
/* 0545A0 800549F0 01A17025 */  or          $t6, $t5, $at
/* 0545A4 800549F4 8DCF0000 */  lw          $t7, 0x0($t6)
/* 0545A8 800549F8 AC4F0010 */  sw          $t7, 0x10($v0)
.L800549FC:
/* 0545AC 800549FC 0C0151DC */  jal         osWriteBackDCache
/* 0545B0 80054A00 24050040 */   addiu      $a1, $zero, 0x40
/* 0545B4 80054A04 0C016A80 */  jal         __osSpSetStatus
/* 0545B8 80054A08 24042B00 */   addiu      $a0, $zero, 0x2b00
/* 0545BC 80054A0C 3C130400 */  lui         $s3, (0x4001000 >> 16)
/* 0545C0 80054A10 36731000 */  ori         $s3, $s3, (0x4001000 & 0xFFFF)
/* 0545C4 80054A14 0C0164A8 */  jal         __osSpSetPc
/* 0545C8 80054A18 02602025 */   move       $a0, $s3
/* 0545CC 80054A1C 2411FFFF */  addiu       $s1, $zero, -0x1
/* 0545D0 80054A20 54510006 */  bnel        $v0, $s1, .L80054A3C
/* 0545D4 80054A24 3C100400 */   lui        $s0, 0x400
.L80054A28:
/* 0545D8 80054A28 0C0164A8 */  jal         __osSpSetPc
/* 0545DC 80054A2C 02602025 */   move       $a0, $s3
/* 0545E0 80054A30 1051FFFD */  beq         $v0, $s1, .L80054A28
/* 0545E4 80054A34 00000000 */   nop
/* 0545E8 80054A38 3C100400 */  lui         $s0, (0x4000FC0 >> 16)
.L80054A3C:
/* 0545EC 80054A3C 36100FC0 */  ori         $s0, $s0, (0x4000FC0 & 0xFFFF)
/* 0545F0 80054A40 02002825 */  move        $a1, $s0
/* 0545F4 80054A44 24040001 */  addiu       $a0, $zero, 0x1
/* 0545F8 80054A48 02403025 */  move        $a2, $s2
/* 0545FC 80054A4C 0C016A88 */  jal         __osSpRawStartDma
/* 054600 80054A50 24070040 */   addiu      $a3, $zero, 0x40
/* 054604 80054A54 14510007 */  bne         $v0, $s1, .L80054A74
/* 054608 80054A58 24040001 */   addiu      $a0, $zero, 0x1
.L80054A5C:
/* 05460C 80054A5C 02002825 */  move        $a1, $s0
/* 054610 80054A60 02403025 */  move        $a2, $s2
/* 054614 80054A64 0C016A88 */  jal         __osSpRawStartDma
/* 054618 80054A68 24070040 */   addiu      $a3, $zero, 0x40
/* 05461C 80054A6C 5051FFFB */  beql        $v0, $s1, .L80054A5C
/* 054620 80054A70 24040001 */   addiu      $a0, $zero, 0x1
.L80054A74:
/* 054624 80054A74 0C016AAC */  jal         __osSpDeviceBusy
/* 054628 80054A78 00000000 */   nop
/* 05462C 80054A7C 50400006 */  beql        $v0, $zero, .L80054A98
/* 054630 80054A80 24040001 */   addiu      $a0, $zero, 0x1
.L80054A84:
/* 054634 80054A84 0C016AAC */  jal         __osSpDeviceBusy
/* 054638 80054A88 00000000 */   nop
/* 05463C 80054A8C 1440FFFD */  bnez        $v0, .L80054A84
/* 054640 80054A90 00000000 */   nop
/* 054644 80054A94 24040001 */  addiu       $a0, $zero, 0x1
.L80054A98:
/* 054648 80054A98 02602825 */  move        $a1, $s3
/* 05464C 80054A9C 8E460008 */  lw          $a2, 0x8($s2)
/* 054650 80054AA0 0C016A88 */  jal         __osSpRawStartDma
/* 054654 80054AA4 8E47000C */   lw         $a3, 0xc($s2)
/* 054658 80054AA8 14510007 */  bne         $v0, $s1, .L80054AC8
/* 05465C 80054AAC 24040001 */   addiu      $a0, $zero, 0x1
.L80054AB0:
/* 054660 80054AB0 02602825 */  move        $a1, $s3
/* 054664 80054AB4 8E460008 */  lw          $a2, 0x8($s2)
/* 054668 80054AB8 0C016A88 */  jal         __osSpRawStartDma
/* 05466C 80054ABC 8E47000C */   lw         $a3, 0xc($s2)
/* 054670 80054AC0 5051FFFB */  beql        $v0, $s1, .L80054AB0
/* 054674 80054AC4 24040001 */   addiu      $a0, $zero, 0x1
.L80054AC8:
/* 054678 80054AC8 8FBF0024 */  lw          $ra, 0x24($sp)
/* 05467C 80054ACC 8FB00014 */  lw          $s0, 0x14($sp)
/* 054680 80054AD0 8FB10018 */  lw          $s1, 0x18($sp)
/* 054684 80054AD4 8FB2001C */  lw          $s2, 0x1c($sp)
/* 054688 80054AD8 8FB30020 */  lw          $s3, 0x20($sp)
/* 05468C 80054ADC 03E00008 */  jr          $ra
/* 054690 80054AE0 27BD0028 */   addiu      $sp, $sp, 0x28

glabel osSpTaskStartGo # 2
/* 054694 80054AE4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 054698 80054AE8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 05469C 80054AEC 0C016AAC */  jal         __osSpDeviceBusy
/* 0546A0 80054AF0 AFA40018 */   sw         $a0, 0x18($sp)
/* 0546A4 80054AF4 10400005 */  beqz        $v0, .L80054B0C
/* 0546A8 80054AF8 00000000 */   nop
.L80054AFC:
/* 0546AC 80054AFC 0C016AAC */  jal         __osSpDeviceBusy
/* 0546B0 80054B00 00000000 */   nop
/* 0546B4 80054B04 1440FFFD */  bnez        $v0, .L80054AFC
/* 0546B8 80054B08 00000000 */   nop
.L80054B0C:
/* 0546BC 80054B0C 0C016A80 */  jal         __osSpSetStatus
/* 0546C0 80054B10 24040125 */   addiu      $a0, $zero, 0x125
/* 0546C4 80054B14 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0546C8 80054B18 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0546CC 80054B1C 03E00008 */  jr          $ra
/* 0546D0 80054B20 00000000 */   nop
/* 0546D4 80054B24 00000000 */  nop
/* 0546D8 80054B28 00000000 */  nop
/* 0546DC 80054B2C 00000000 */  nop
