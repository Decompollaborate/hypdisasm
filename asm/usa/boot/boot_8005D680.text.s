.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005D680 # 0
/* 05D230 8005D680 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 05D234 8005D684 8FAF0078 */  lw          $t7, 0x78($sp)
/* 05D238 8005D688 AFB5002C */  sw          $s5, 0x2c($sp)
/* 05D23C 8005D68C AFB40028 */  sw          $s4, 0x28($sp)
/* 05D240 8005D690 AFB1001C */  sw          $s1, 0x1c($sp)
/* 05D244 8005D694 AFA60070 */  sw          $a2, 0x70($sp)
/* 05D248 8005D698 30CEFFFF */  andi        $t6, $a2, 0xffff
/* 05D24C 8005D69C 24010001 */  addiu       $at, $zero, 0x1
/* 05D250 8005D6A0 01C03025 */  move        $a2, $t6
/* 05D254 8005D6A4 00A08825 */  move        $s1, $a1
/* 05D258 8005D6A8 0080A825 */  move        $s5, $a0
/* 05D25C 8005D6AC AFBF003C */  sw          $ra, 0x3c($sp)
/* 05D260 8005D6B0 AFBE0038 */  sw          $fp, 0x38($sp)
/* 05D264 8005D6B4 AFB70034 */  sw          $s7, 0x34($sp)
/* 05D268 8005D6B8 AFB60030 */  sw          $s6, 0x30($sp)
/* 05D26C 8005D6BC AFB30024 */  sw          $s3, 0x24($sp)
/* 05D270 8005D6C0 AFB20020 */  sw          $s2, 0x20($sp)
/* 05D274 8005D6C4 AFB00018 */  sw          $s0, 0x18($sp)
/* 05D278 8005D6C8 AFA70074 */  sw          $a3, 0x74($sp)
/* 05D27C 8005D6CC 11E10008 */  beq         $t7, $at, .L8005D6F0
/* 05D280 8005D6D0 24140002 */   addiu      $s4, $zero, 0x2
/* 05D284 8005D6D4 29C10007 */  slti        $at, $t6, 0x7
/* 05D288 8005D6D8 50200006 */  beql        $at, $zero, .L8005D6F4
/* 05D28C 8005D6DC 00C08025 */   move       $s0, $a2
/* 05D290 8005D6E0 51C00004 */  beql        $t6, $zero, .L8005D6F4
/* 05D294 8005D6E4 00C08025 */   move       $s0, $a2
/* 05D298 8005D6E8 1000006C */  b           .L8005D89C
/* 05D29C 8005D6EC 00001025 */   move       $v0, $zero
.L8005D6F0:
/* 05D2A0 8005D6F0 00C08025 */  move        $s0, $a2
.L8005D6F4:
/* 05D2A4 8005D6F4 0C0160FC */  jal         __osSiGetAccess
/* 05D2A8 8005D6F8 A7A60072 */   sh         $a2, 0x72($sp)
/* 05D2AC 8005D6FC 0010C0C3 */  sra         $t8, $s0, 3
/* 05D2B0 8005D700 0010C940 */  sll         $t9, $s0, 5
/* 05D2B4 8005D704 3C17800A */  lui         $s7, %hi(__osPfsLastChannel)
/* 05D2B8 8005D708 3C168010 */  lui         $s6, %hi(__osContLastPoll)
/* 05D2BC 8005D70C 3C138010 */  lui         $s3, %hi(__osPfsPifRam)
/* 05D2C0 8005D710 26730390 */  addiu       $s3, $s3, %lo(__osPfsPifRam)
/* 05D2C4 8005D714 26D6DC50 */  addiu       $s6, $s6, %lo(__osContLastPoll)
/* 05D2C8 8005D718 26F7F8C0 */  addiu       $s7, $s7, %lo(__osPfsLastChannel)
/* 05D2CC 8005D71C AFB90040 */  sw          $t9, 0x40($sp)
/* 05D2D0 8005D720 AFB80044 */  sw          $t8, 0x44($sp)
/* 05D2D4 8005D724 241E0003 */  addiu       $fp, $zero, 0x3
.L8005D728:
/* 05D2D8 8005D728 92C80000 */  lbu         $t0, 0x0($s6)
/* 05D2DC 8005D72C 24010003 */  addiu       $at, $zero, 0x3
/* 05D2E0 8005D730 02608025 */  move        $s0, $s3
/* 05D2E4 8005D734 15010004 */  bne         $t0, $at, .L8005D748
/* 05D2E8 8005D738 00001025 */   move       $v0, $zero
/* 05D2EC 8005D73C 8EE90000 */  lw          $t1, 0x0($s7)
/* 05D2F0 8005D740 52290022 */  beql        $s1, $t1, .L8005D7CC
/* 05D2F4 8005D744 02718021 */   addu       $s0, $s3, $s1
.L8005D748:
/* 05D2F8 8005D748 A2DE0000 */  sb          $fp, 0x0($s6)
/* 05D2FC 8005D74C 1A200010 */  blez        $s1, .L8005D790
/* 05D300 8005D750 AEF10000 */   sw         $s1, 0x0($s7)
/* 05D304 8005D754 32240003 */  andi        $a0, $s1, 0x3
/* 05D308 8005D758 10800006 */  beqz        $a0, .L8005D774
/* 05D30C 8005D75C 00801825 */   move       $v1, $a0
.L8005D760:
/* 05D310 8005D760 24420001 */  addiu       $v0, $v0, 0x1
/* 05D314 8005D764 A2000000 */  sb          $zero, 0x0($s0)
/* 05D318 8005D768 1462FFFD */  bne         $v1, $v0, .L8005D760
/* 05D31C 8005D76C 26100001 */   addiu      $s0, $s0, 0x1
/* 05D320 8005D770 10510007 */  beq         $v0, $s1, .L8005D790
.L8005D774:
/* 05D324 8005D774 24420004 */   addiu      $v0, $v0, 0x4
/* 05D328 8005D778 A2000000 */  sb          $zero, 0x0($s0)
/* 05D32C 8005D77C A2000001 */  sb          $zero, 0x1($s0)
/* 05D330 8005D780 A2000002 */  sb          $zero, 0x2($s0)
/* 05D334 8005D784 A2000003 */  sb          $zero, 0x3($s0)
/* 05D338 8005D788 1451FFFA */  bne         $v0, $s1, .L8005D774
/* 05D33C 8005D78C 26100004 */   addiu      $s0, $s0, 0x4
.L8005D790:
/* 05D340 8005D790 240A0001 */  addiu       $t2, $zero, 0x1
/* 05D344 8005D794 AE6A003C */  sw          $t2, 0x3c($s3)
/* 05D348 8005D798 240B00FF */  addiu       $t3, $zero, 0xff
/* 05D34C 8005D79C 240C0023 */  addiu       $t4, $zero, 0x23
/* 05D350 8005D7A0 240D0001 */  addiu       $t5, $zero, 0x1
/* 05D354 8005D7A4 240E00FF */  addiu       $t6, $zero, 0xff
/* 05D358 8005D7A8 240F00FE */  addiu       $t7, $zero, 0xfe
/* 05D35C 8005D7AC A20B0000 */  sb          $t3, 0x0($s0)
/* 05D360 8005D7B0 A20C0001 */  sb          $t4, 0x1($s0)
/* 05D364 8005D7B4 A20D0002 */  sb          $t5, 0x2($s0)
/* 05D368 8005D7B8 A21E0003 */  sb          $fp, 0x3($s0)
/* 05D36C 8005D7BC A20E0026 */  sb          $t6, 0x26($s0)
/* 05D370 8005D7C0 10000002 */  b           .L8005D7CC
/* 05D374 8005D7C4 A20F0027 */   sb         $t7, 0x27($s0)
/* 05D378 8005D7C8 02718021 */  addu        $s0, $s3, $s1
.L8005D7CC:
/* 05D37C 8005D7CC 8FB80044 */  lw          $t8, 0x44($sp)
/* 05D380 8005D7D0 A2180004 */  sb          $t8, 0x4($s0)
/* 05D384 8005D7D4 0C0161A8 */  jal         __osContAddressCrc
/* 05D388 8005D7D8 97A40072 */   lhu        $a0, 0x72($sp)
/* 05D38C 8005D7DC 8FB90040 */  lw          $t9, 0x40($sp)
/* 05D390 8005D7E0 26050006 */  addiu       $a1, $s0, 0x6
/* 05D394 8005D7E4 24060020 */  addiu       $a2, $zero, 0x20
/* 05D398 8005D7E8 00594025 */  or          $t0, $v0, $t9
/* 05D39C 8005D7EC A2080005 */  sb          $t0, 0x5($s0)
/* 05D3A0 8005D7F0 0C014984 */  jal         bcopy
/* 05D3A4 8005D7F4 8FA40074 */   lw         $a0, 0x74($sp)
/* 05D3A8 8005D7F8 24040001 */  addiu       $a0, $zero, 0x1
/* 05D3AC 8005D7FC 0C016118 */  jal         __osSiRawStartDma
/* 05D3B0 8005D800 02602825 */   move       $a1, $s3
/* 05D3B4 8005D804 0C0161DC */  jal         __osContDataCrc
/* 05D3B8 8005D808 8FA40074 */   lw         $a0, 0x74($sp)
/* 05D3BC 8005D80C 305200FF */  andi        $s2, $v0, 0xff
/* 05D3C0 8005D810 02A02025 */  move        $a0, $s5
/* 05D3C4 8005D814 00002825 */  move        $a1, $zero
/* 05D3C8 8005D818 0C014554 */  jal         osRecvMesg
/* 05D3CC 8005D81C 24060001 */   addiu      $a2, $zero, 0x1
/* 05D3D0 8005D820 00002025 */  move        $a0, $zero
/* 05D3D4 8005D824 0C016118 */  jal         __osSiRawStartDma
/* 05D3D8 8005D828 02602825 */   move       $a1, $s3
/* 05D3DC 8005D82C 02A02025 */  move        $a0, $s5
/* 05D3E0 8005D830 00002825 */  move        $a1, $zero
/* 05D3E4 8005D834 0C014554 */  jal         osRecvMesg
/* 05D3E8 8005D838 24060001 */   addiu      $a2, $zero, 0x1
/* 05D3EC 8005D83C 92030002 */  lbu         $v1, 0x2($s0)
/* 05D3F0 8005D840 306900C0 */  andi        $t1, $v1, 0xc0
/* 05D3F4 8005D844 00091903 */  sra         $v1, $t1, 4
/* 05D3F8 8005D848 5460000C */  bnel        $v1, $zero, .L8005D87C
/* 05D3FC 8005D84C 24030001 */   addiu      $v1, $zero, 0x1
/* 05D400 8005D850 920B0026 */  lbu         $t3, 0x26($s0)
/* 05D404 8005D854 02A02025 */  move        $a0, $s5
/* 05D408 8005D858 51720009 */  beql        $t3, $s2, .L8005D880
/* 05D40C 8005D85C 24010004 */   addiu      $at, $zero, 0x4
/* 05D410 8005D860 0C017634 */  jal         func_8005D8D0
/* 05D414 8005D864 02202825 */   move       $a1, $s1
/* 05D418 8005D868 14400009 */  bnez        $v0, .L8005D890
/* 05D41C 8005D86C 00401825 */   move       $v1, $v0
/* 05D420 8005D870 10000002 */  b           .L8005D87C
/* 05D424 8005D874 24030004 */   addiu      $v1, $zero, 0x4
/* 05D428 8005D878 24030001 */  addiu       $v1, $zero, 0x1
.L8005D87C:
/* 05D42C 8005D87C 24010004 */  addiu       $at, $zero, 0x4
.L8005D880:
/* 05D430 8005D880 14610003 */  bne         $v1, $at, .L8005D890
/* 05D434 8005D884 2A820000 */   slti       $v0, $s4, 0x0
/* 05D438 8005D888 1040FFA7 */  beqz        $v0, .L8005D728
/* 05D43C 8005D88C 2694FFFF */   addiu      $s4, $s4, -0x1
.L8005D890:
/* 05D440 8005D890 0C01610D */  jal         __osSiRelAccess
/* 05D444 8005D894 AFA30064 */   sw         $v1, 0x64($sp)
/* 05D448 8005D898 8FA20064 */  lw          $v0, 0x64($sp)
.L8005D89C:
/* 05D44C 8005D89C 8FBF003C */  lw          $ra, 0x3c($sp)
/* 05D450 8005D8A0 8FB00018 */  lw          $s0, 0x18($sp)
/* 05D454 8005D8A4 8FB1001C */  lw          $s1, 0x1c($sp)
/* 05D458 8005D8A8 8FB20020 */  lw          $s2, 0x20($sp)
/* 05D45C 8005D8AC 8FB30024 */  lw          $s3, 0x24($sp)
/* 05D460 8005D8B0 8FB40028 */  lw          $s4, 0x28($sp)
/* 05D464 8005D8B4 8FB5002C */  lw          $s5, 0x2c($sp)
/* 05D468 8005D8B8 8FB60030 */  lw          $s6, 0x30($sp)
/* 05D46C 8005D8BC 8FB70034 */  lw          $s7, 0x34($sp)
/* 05D470 8005D8C0 8FBE0038 */  lw          $fp, 0x38($sp)
/* 05D474 8005D8C4 03E00008 */  jr          $ra
/* 05D478 8005D8C8 27BD0068 */   addiu      $sp, $sp, 0x68
/* 05D47C 8005D8CC 00000000 */  nop
