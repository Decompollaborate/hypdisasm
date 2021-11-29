.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005D930 # 0
/* 05D4E0 8005D930 00C01025 */  move        $v0, $a2
/* 05D4E4 8005D934 10C0000A */  beqz        $a2, .L8005D960
/* 05D4E8 8005D938 24C6FFFF */   addiu      $a2, $a2, -0x1
.L8005D93C:
/* 05D4EC 8005D93C 90AE0000 */  lbu         $t6, 0x0($a1)
/* 05D4F0 8005D940 90830000 */  lbu         $v1, 0x0($a0)
/* 05D4F4 8005D944 00C01025 */  move        $v0, $a2
/* 05D4F8 8005D948 A08E0000 */  sb          $t6, 0x0($a0)
/* 05D4FC 8005D94C 24840001 */  addiu       $a0, $a0, 0x1
/* 05D500 8005D950 24A50001 */  addiu       $a1, $a1, 0x1
/* 05D504 8005D954 A0A3FFFF */  sb          $v1, -0x1($a1)
/* 05D508 8005D958 14C0FFF8 */  bnez        $a2, .L8005D93C
/* 05D50C 8005D95C 24C6FFFF */   addiu      $a2, $a2, -0x1
.L8005D960:
/* 05D510 8005D960 03E00008 */  jr          $ra
/* 05D514 8005D964 00000000 */   nop

glabel func_8005D968 # 1
/* 05D518 8005D968 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 05D51C 8005D96C AFB30020 */  sw          $s3, 0x20($sp)
/* 05D520 8005D970 3C13800A */  lui         $s3, %hi(D_800A50D0)
/* 05D524 8005D974 267350D0 */  addiu       $s3, $s3, %lo(D_800A50D0)
/* 05D528 8005D978 8E6E0000 */  lw          $t6, 0x0($s3)
/* 05D52C 8005D97C AFB50028 */  sw          $s5, 0x28($sp)
/* 05D530 8005D980 AFB2001C */  sw          $s2, 0x1c($sp)
/* 05D534 8005D984 AFB10018 */  sw          $s1, 0x18($sp)
/* 05D538 8005D988 AFB00014 */  sw          $s0, 0x14($sp)
/* 05D53C 8005D98C 0085082B */  sltu        $at, $a0, $a1
/* 05D540 8005D990 00809025 */  move        $s2, $a0
/* 05D544 8005D994 00A0A825 */  move        $s5, $a1
/* 05D548 8005D998 AFBF002C */  sw          $ra, 0x2c($sp)
/* 05D54C 8005D99C AFB40024 */  sw          $s4, 0x24($sp)
/* 05D550 8005D9A0 00808025 */  move        $s0, $a0
/* 05D554 8005D9A4 1020003E */  beqz        $at, .L8005DAA0
/* 05D558 8005D9A8 00AE8821 */   addu       $s1, $a1, $t6
/* 05D55C 8005D9AC 3C14800A */  lui         $s4, %hi(D_800A50D4)
/* 05D560 8005D9B0 269450D4 */  addiu       $s4, $s4, %lo(D_800A50D4)
/* 05D564 8005D9B4 8E6F0000 */  lw          $t7, 0x0($s3)
.L8005D9B8:
/* 05D568 8005D9B8 020F8021 */  addu        $s0, $s0, $t7
/* 05D56C 8005D9BC 0215082B */  sltu        $at, $s0, $s5
/* 05D570 8005D9C0 50200009 */  beql        $at, $zero, .L8005D9E8
/* 05D574 8005D9C4 8E660000 */   lw         $a2, 0x0($s3)
/* 05D578 8005D9C8 8E990000 */  lw          $t9, 0x0($s4)
/* 05D57C 8005D9CC 02002025 */  move        $a0, $s0
/* 05D580 8005D9D0 02402825 */  move        $a1, $s2
/* 05D584 8005D9D4 0320F809 */  jalr        $t9
/* 05D588 8005D9D8 00000000 */   nop
/* 05D58C 8005D9DC 5840FFF6 */  blezl       $v0, .L8005D9B8
/* 05D590 8005D9E0 8E6F0000 */   lw         $t7, 0x0($s3)
/* 05D594 8005D9E4 8E660000 */  lw          $a2, 0x0($s3)
.L8005D9E8:
/* 05D598 8005D9E8 02268823 */  subu        $s1, $s1, $a2
/* 05D59C 8005D9EC 0251082B */  sltu        $at, $s2, $s1
/* 05D5A0 8005D9F0 5020000A */  beql        $at, $zero, .L8005DA1C
/* 05D5A4 8005D9F4 0211082B */   sltu       $at, $s0, $s1
/* 05D5A8 8005D9F8 8E990000 */  lw          $t9, 0x0($s4)
/* 05D5AC 8005D9FC 02202025 */  move        $a0, $s1
/* 05D5B0 8005DA00 02402825 */  move        $a1, $s2
/* 05D5B4 8005DA04 0320F809 */  jalr        $t9
/* 05D5B8 8005DA08 00000000 */   nop
/* 05D5BC 8005DA0C 0443FFF6 */  bgezl       $v0, .L8005D9E8
/* 05D5C0 8005DA10 8E660000 */   lw         $a2, 0x0($s3)
/* 05D5C4 8005DA14 8E660000 */  lw          $a2, 0x0($s3)
/* 05D5C8 8005DA18 0211082B */  sltu        $at, $s0, $s1
.L8005DA1C:
/* 05D5CC 8005DA1C 10200006 */  beqz        $at, .L8005DA38
/* 05D5D0 8005DA20 02402025 */   move       $a0, $s2
/* 05D5D4 8005DA24 02002025 */  move        $a0, $s0
/* 05D5D8 8005DA28 0C01764C */  jal         func_8005D930
/* 05D5DC 8005DA2C 02202825 */   move       $a1, $s1
/* 05D5E0 8005DA30 1000FFE1 */  b           .L8005D9B8
/* 05D5E4 8005DA34 8E6F0000 */   lw         $t7, 0x0($s3)
.L8005DA38:
/* 05D5E8 8005DA38 0C01764C */  jal         func_8005D930
/* 05D5EC 8005DA3C 02202825 */   move       $a1, $s1
/* 05D5F0 8005DA40 0232C023 */  subu        $t8, $s1, $s2
/* 05D5F4 8005DA44 02B14023 */  subu        $t0, $s5, $s1
/* 05D5F8 8005DA48 0308082A */  slt         $at, $t8, $t0
/* 05D5FC 8005DA4C 5420000A */  bnel        $at, $zero, .L8005DA78
/* 05D600 8005DA50 8E6B0000 */   lw         $t3, 0x0($s3)
/* 05D604 8005DA54 8E690000 */  lw          $t1, 0x0($s3)
/* 05D608 8005DA58 02A02825 */  move        $a1, $s5
/* 05D60C 8005DA5C 0C01765A */  jal         func_8005D968
/* 05D610 8005DA60 02292021 */   addu       $a0, $s1, $t1
/* 05D614 8005DA64 8E6A0000 */  lw          $t2, 0x0($s3)
/* 05D618 8005DA68 02408025 */  move        $s0, $s2
/* 05D61C 8005DA6C 10000009 */  b           .L8005DA94
/* 05D620 8005DA70 022AA823 */   subu       $s5, $s1, $t2
/* 05D624 8005DA74 8E6B0000 */  lw          $t3, 0x0($s3)
.L8005DA78:
/* 05D628 8005DA78 02402025 */  move        $a0, $s2
/* 05D62C 8005DA7C 0C01765A */  jal         func_8005D968
/* 05D630 8005DA80 022B2823 */   subu       $a1, $s1, $t3
/* 05D634 8005DA84 8E660000 */  lw          $a2, 0x0($s3)
/* 05D638 8005DA88 02269021 */  addu        $s2, $s1, $a2
/* 05D63C 8005DA8C 02408025 */  move        $s0, $s2
/* 05D640 8005DA90 02A68821 */  addu        $s1, $s5, $a2
.L8005DA94:
/* 05D644 8005DA94 0255082B */  sltu        $at, $s2, $s5
/* 05D648 8005DA98 5420FFC7 */  bnel        $at, $zero, .L8005D9B8
/* 05D64C 8005DA9C 8E6F0000 */   lw         $t7, 0x0($s3)
.L8005DAA0:
/* 05D650 8005DAA0 8FBF002C */  lw          $ra, 0x2c($sp)
/* 05D654 8005DAA4 8FB00014 */  lw          $s0, 0x14($sp)
/* 05D658 8005DAA8 8FB10018 */  lw          $s1, 0x18($sp)
/* 05D65C 8005DAAC 8FB2001C */  lw          $s2, 0x1c($sp)
/* 05D660 8005DAB0 8FB30020 */  lw          $s3, 0x20($sp)
/* 05D664 8005DAB4 8FB40024 */  lw          $s4, 0x24($sp)
/* 05D668 8005DAB8 8FB50028 */  lw          $s5, 0x28($sp)
/* 05D66C 8005DABC 03E00008 */  jr          $ra
/* 05D670 8005DAC0 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8005DAC4 # 2
/* 05D674 8005DAC4 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 05D678 8005DAC8 AFB40028 */  sw          $s4, 0x28($sp)
/* 05D67C 8005DACC AFB30024 */  sw          $s3, 0x24($sp)
/* 05D680 8005DAD0 AFB20020 */  sw          $s2, 0x20($sp)
/* 05D684 8005DAD4 AFB1001C */  sw          $s1, 0x1c($sp)
/* 05D688 8005DAD8 00C09825 */  move        $s3, $a2
/* 05D68C 8005DADC 00E0A025 */  move        $s4, $a3
/* 05D690 8005DAE0 AFBF002C */  sw          $ra, 0x2c($sp)
/* 05D694 8005DAE4 AFB00018 */  sw          $s0, 0x18($sp)
/* 05D698 8005DAE8 AFA40040 */  sw          $a0, 0x40($sp)
/* 05D69C 8005DAEC AFA50044 */  sw          $a1, 0x44($sp)
/* 05D6A0 8005DAF0 00809025 */  move        $s2, $a0
/* 05D6A4 8005DAF4 00868821 */  addu        $s1, $a0, $a2
/* 05D6A8 8005DAF8 10A00010 */  beqz        $a1, .L8005DB3C
/* 05D6AC 8005DAFC AFA00030 */   sw         $zero, 0x30($sp)
/* 05D6B0 8005DB00 24A3FFFF */  addiu       $v1, $a1, -0x1
/* 05D6B4 8005DB04 1060000D */  beqz        $v1, .L8005DB3C
/* 05D6B8 8005DB08 2470FFFF */   addiu      $s0, $v1, -0x1
.L8005DB0C:
/* 05D6BC 8005DB0C 02402025 */  move        $a0, $s2
/* 05D6C0 8005DB10 0280F809 */  jalr        $s4
/* 05D6C4 8005DB14 02202825 */   move       $a1, $s1
/* 05D6C8 8005DB18 18400004 */  blez        $v0, .L8005DB2C
/* 05D6CC 8005DB1C 02209025 */   move       $s2, $s1
/* 05D6D0 8005DB20 24180001 */  addiu       $t8, $zero, 0x1
/* 05D6D4 8005DB24 10000005 */  b           .L8005DB3C
/* 05D6D8 8005DB28 AFB80030 */   sw         $t8, 0x30($sp)
.L8005DB2C:
/* 05D6DC 8005DB2C 02001025 */  move        $v0, $s0
/* 05D6E0 8005DB30 02338821 */  addu        $s1, $s1, $s3
/* 05D6E4 8005DB34 1600FFF5 */  bnez        $s0, .L8005DB0C
/* 05D6E8 8005DB38 2610FFFF */   addiu      $s0, $s0, -0x1
.L8005DB3C:
/* 05D6EC 8005DB3C 8FB90030 */  lw          $t9, 0x30($sp)
/* 05D6F0 8005DB40 3C02800A */  lui         $v0, %hi(D_800A50D0)
/* 05D6F4 8005DB44 244250D0 */  addiu       $v0, $v0, %lo(D_800A50D0)
/* 05D6F8 8005DB48 1320000C */  beqz        $t9, .L8005DB7C
/* 05D6FC 8005DB4C 3C01800A */   lui        $at, %hi(D_800A50D4)
/* 05D700 8005DB50 AC530000 */  sw          $s3, 0x0($v0)
/* 05D704 8005DB54 8FA90044 */  lw          $t1, 0x44($sp)
/* 05D708 8005DB58 AC3450D4 */  sw          $s4, %lo(D_800A50D4)($at)
/* 05D70C 8005DB5C 8C4B0000 */  lw          $t3, 0x0($v0)
/* 05D710 8005DB60 252AFFFF */  addiu       $t2, $t1, -0x1
/* 05D714 8005DB64 8FA40040 */  lw          $a0, 0x40($sp)
/* 05D718 8005DB68 014B0019 */  multu       $t2, $t3
/* 05D71C 8005DB6C 00006012 */  mflo        $t4
/* 05D720 8005DB70 01842821 */  addu        $a1, $t4, $a0
/* 05D724 8005DB74 0C01765A */  jal         func_8005D968
/* 05D728 8005DB78 00000000 */   nop
.L8005DB7C:
/* 05D72C 8005DB7C 8FBF002C */  lw          $ra, 0x2c($sp)
/* 05D730 8005DB80 8FB00018 */  lw          $s0, 0x18($sp)
/* 05D734 8005DB84 8FB1001C */  lw          $s1, 0x1c($sp)
/* 05D738 8005DB88 8FB20020 */  lw          $s2, 0x20($sp)
/* 05D73C 8005DB8C 8FB30024 */  lw          $s3, 0x24($sp)
/* 05D740 8005DB90 8FB40028 */  lw          $s4, 0x28($sp)
/* 05D744 8005DB94 03E00008 */  jr          $ra
/* 05D748 8005DB98 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_8005DB9C # 3
/* 05D74C 8005DB9C 24CEFFFF */  addiu       $t6, $a2, -0x1
/* 05D750 8005DBA0 01C70019 */  multu       $t6, $a3
/* 05D754 8005DBA4 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 05D758 8005DBA8 AFB60030 */  sw          $s6, 0x30($sp)
/* 05D75C 8005DBAC AFBE0038 */  sw          $fp, 0x38($sp)
/* 05D760 8005DBB0 AFB5002C */  sw          $s5, 0x2c($sp)
/* 05D764 8005DBB4 AFB40028 */  sw          $s4, 0x28($sp)
/* 05D768 8005DBB8 00E0A025 */  move        $s4, $a3
/* 05D76C 8005DBBC 0080F025 */  move        $fp, $a0
/* 05D770 8005DBC0 AFBF003C */  sw          $ra, 0x3c($sp)
/* 05D774 8005DBC4 AFB70034 */  sw          $s7, 0x34($sp)
/* 05D778 8005DBC8 00007812 */  mflo        $t7
/* 05D77C 8005DBCC 00AFB021 */  addu        $s6, $a1, $t7
/* 05D780 8005DBD0 02C5082B */  sltu        $at, $s6, $a1
/* 05D784 8005DBD4 AFB30024 */  sw          $s3, 0x24($sp)
/* 05D788 8005DBD8 AFB20020 */  sw          $s2, 0x20($sp)
/* 05D78C 8005DBDC AFB1001C */  sw          $s1, 0x1c($sp)
/* 05D790 8005DBE0 AFB00018 */  sw          $s0, 0x18($sp)
/* 05D794 8005DBE4 1420002C */  bnez        $at, .L8005DC98
/* 05D798 8005DBE8 00A0A825 */   move       $s5, $a1
/* 05D79C 8005DBEC 8FB70050 */  lw          $s7, 0x50($sp)
/* 05D7A0 8005DBF0 00061042 */  srl         $v0, $a2, 1
.L8005DBF4:
/* 05D7A4 8005DBF4 1040001B */  beqz        $v0, .L8005DC64
/* 05D7A8 8005DBF8 00408825 */   move       $s1, $v0
/* 05D7AC 8005DBFC 30D20001 */  andi        $s2, $a2, 0x1
/* 05D7B0 8005DC00 12400003 */  beqz        $s2, .L8005DC10
/* 05D7B4 8005DC04 2443FFFF */   addiu      $v1, $v0, -0x1
/* 05D7B8 8005DC08 10000001 */  b           .L8005DC10
/* 05D7BC 8005DC0C 00401825 */   move       $v1, $v0
.L8005DC10:
/* 05D7C0 8005DC10 00740019 */  multu       $v1, $s4
/* 05D7C4 8005DC14 03C02025 */  move        $a0, $fp
/* 05D7C8 8005DC18 0000C012 */  mflo        $t8
/* 05D7CC 8005DC1C 03158021 */  addu        $s0, $t8, $s5
/* 05D7D0 8005DC20 02009825 */  move        $s3, $s0
/* 05D7D4 8005DC24 02E0F809 */  jalr        $s7
/* 05D7D8 8005DC28 02002825 */   move       $a1, $s0
/* 05D7DC 8005DC2C 14400003 */  bnez        $v0, .L8005DC3C
/* 05D7E0 8005DC30 02203025 */   move       $a2, $s1
/* 05D7E4 8005DC34 10000019 */  b           .L8005DC9C
/* 05D7E8 8005DC38 02001025 */   move       $v0, $s0
.L8005DC3C:
/* 05D7EC 8005DC3C 04410007 */  bgez        $v0, .L8005DC5C
/* 05D7F0 8005DC40 00000000 */   nop
/* 05D7F4 8005DC44 12400003 */  beqz        $s2, .L8005DC54
/* 05D7F8 8005DC48 0214B023 */   subu       $s6, $s0, $s4
/* 05D7FC 8005DC4C 1000000F */  b           .L8005DC8C
/* 05D800 8005DC50 02203025 */   move       $a2, $s1
.L8005DC54:
/* 05D804 8005DC54 1000000D */  b           .L8005DC8C
/* 05D808 8005DC58 2626FFFF */   addiu      $a2, $s1, -0x1
.L8005DC5C:
/* 05D80C 8005DC5C 1000000B */  b           .L8005DC8C
/* 05D810 8005DC60 0274A821 */   addu       $s5, $s3, $s4
.L8005DC64:
/* 05D814 8005DC64 10C0000C */  beqz        $a2, .L8005DC98
/* 05D818 8005DC68 03C02025 */   move       $a0, $fp
/* 05D81C 8005DC6C 02E0F809 */  jalr        $s7
/* 05D820 8005DC70 02A02825 */   move       $a1, $s5
/* 05D824 8005DC74 10400003 */  beqz        $v0, .L8005DC84
/* 05D828 8005DC78 02A01825 */   move       $v1, $s5
/* 05D82C 8005DC7C 10000007 */  b           .L8005DC9C
/* 05D830 8005DC80 00001025 */   move       $v0, $zero
.L8005DC84:
/* 05D834 8005DC84 10000005 */  b           .L8005DC9C
/* 05D838 8005DC88 00601025 */   move       $v0, $v1
.L8005DC8C:
/* 05D83C 8005DC8C 02D5082B */  sltu        $at, $s6, $s5
/* 05D840 8005DC90 5020FFD8 */  beql        $at, $zero, .L8005DBF4
/* 05D844 8005DC94 00061042 */   srl        $v0, $a2, 1
.L8005DC98:
/* 05D848 8005DC98 00001025 */  move        $v0, $zero
.L8005DC9C:
/* 05D84C 8005DC9C 8FBF003C */  lw          $ra, 0x3c($sp)
/* 05D850 8005DCA0 8FB00018 */  lw          $s0, 0x18($sp)
/* 05D854 8005DCA4 8FB1001C */  lw          $s1, 0x1c($sp)
/* 05D858 8005DCA8 8FB20020 */  lw          $s2, 0x20($sp)
/* 05D85C 8005DCAC 8FB30024 */  lw          $s3, 0x24($sp)
/* 05D860 8005DCB0 8FB40028 */  lw          $s4, 0x28($sp)
/* 05D864 8005DCB4 8FB5002C */  lw          $s5, 0x2c($sp)
/* 05D868 8005DCB8 8FB60030 */  lw          $s6, 0x30($sp)
/* 05D86C 8005DCBC 8FB70034 */  lw          $s7, 0x34($sp)
/* 05D870 8005DCC0 8FBE0038 */  lw          $fp, 0x38($sp)
/* 05D874 8005DCC4 03E00008 */  jr          $ra
/* 05D878 8005DCC8 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_8005DCCC # 4
/* 05D87C 8005DCCC 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 05D880 8005DCD0 AFBF002C */  sw          $ra, 0x2c($sp)
/* 05D884 8005DCD4 AFB50028 */  sw          $s5, 0x28($sp)
/* 05D888 8005DCD8 AFB40024 */  sw          $s4, 0x24($sp)
/* 05D88C 8005DCDC AFB30020 */  sw          $s3, 0x20($sp)
/* 05D890 8005DCE0 AFB2001C */  sw          $s2, 0x1c($sp)
/* 05D894 8005DCE4 AFB10018 */  sw          $s1, 0x18($sp)
/* 05D898 8005DCE8 AFB00014 */  sw          $s0, 0x14($sp)
/* 05D89C 8005DCEC 8CCE0000 */  lw          $t6, 0x0($a2)
/* 05D8A0 8005DCF0 00A08825 */  move        $s1, $a1
/* 05D8A4 8005DCF4 00C09825 */  move        $s3, $a2
/* 05D8A8 8005DCF8 0080A025 */  move        $s4, $a0
/* 05D8AC 8005DCFC 00E0A825 */  move        $s5, $a3
/* 05D8B0 8005DD00 11C0000F */  beqz        $t6, .L8005DD40
/* 05D8B4 8005DD04 00008025 */   move       $s0, $zero
/* 05D8B8 8005DD08 8FB20040 */  lw          $s2, 0x40($sp)
/* 05D8BC 8005DD0C 02802025 */  move        $a0, $s4
.L8005DD10:
/* 05D8C0 8005DD10 0240F809 */  jalr        $s2
/* 05D8C4 8005DD14 02202825 */   move       $a1, $s1
/* 05D8C8 8005DD18 54400004 */  bnel        $v0, $zero, .L8005DD2C
/* 05D8CC 8005DD1C 8E6F0000 */   lw         $t7, 0x0($s3)
/* 05D8D0 8005DD20 1000000F */  b           .L8005DD60
/* 05D8D4 8005DD24 02201025 */   move       $v0, $s1
/* 05D8D8 8005DD28 8E6F0000 */  lw          $t7, 0x0($s3)
.L8005DD2C:
/* 05D8DC 8005DD2C 26100001 */  addiu       $s0, $s0, 0x1
/* 05D8E0 8005DD30 02358821 */  addu        $s1, $s1, $s5
/* 05D8E4 8005DD34 020F082B */  sltu        $at, $s0, $t7
/* 05D8E8 8005DD38 5420FFF5 */  bnel        $at, $zero, .L8005DD10
/* 05D8EC 8005DD3C 02802025 */   move       $a0, $s4
.L8005DD40:
/* 05D8F0 8005DD40 02802025 */  move        $a0, $s4
/* 05D8F4 8005DD44 02202825 */  move        $a1, $s1
/* 05D8F8 8005DD48 0C0118DC */  jal         memcpy
/* 05D8FC 8005DD4C 02A03025 */   move       $a2, $s5
/* 05D900 8005DD50 8E780000 */  lw          $t8, 0x0($s3)
/* 05D904 8005DD54 02201025 */  move        $v0, $s1
/* 05D908 8005DD58 27190001 */  addiu       $t9, $t8, 0x1
/* 05D90C 8005DD5C AE790000 */  sw          $t9, 0x0($s3)
.L8005DD60:
/* 05D910 8005DD60 8FBF002C */  lw          $ra, 0x2c($sp)
/* 05D914 8005DD64 8FB00014 */  lw          $s0, 0x14($sp)
/* 05D918 8005DD68 8FB10018 */  lw          $s1, 0x18($sp)
/* 05D91C 8005DD6C 8FB2001C */  lw          $s2, 0x1c($sp)
/* 05D920 8005DD70 8FB30020 */  lw          $s3, 0x20($sp)
/* 05D924 8005DD74 8FB40024 */  lw          $s4, 0x24($sp)
/* 05D928 8005DD78 8FB50028 */  lw          $s5, 0x28($sp)
/* 05D92C 8005DD7C 03E00008 */  jr          $ra
/* 05D930 8005DD80 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8005DD84 # 5
/* 05D934 8005DD84 3C03800A */  lui         $v1, %hi(D_800A50D8)
/* 05D938 8005DD88 246350D8 */  addiu       $v1, $v1, %lo(D_800A50D8)
/* 05D93C 8005DD8C 8C6E0000 */  lw          $t6, 0x0($v1)
/* 05D940 8005DD90 3C0141C6 */  lui         $at, (0x41C64E6D >> 16)
/* 05D944 8005DD94 34214E6D */  ori         $at, $at, (0x41C64E6D & 0xFFFF)
/* 05D948 8005DD98 01C10019 */  multu       $t6, $at
/* 05D94C 8005DD9C 3C018000 */  lui         $at, 0x8000
/* 05D950 8005DDA0 00007812 */  mflo        $t7
/* 05D954 8005DDA4 25F83039 */  addiu       $t8, $t7, 0x3039
/* 05D958 8005DDA8 AC780000 */  sw          $t8, 0x0($v1)
/* 05D95C 8005DDAC 0301001B */  divu        $zero, $t8, $at
/* 05D960 8005DDB0 00001010 */  mfhi        $v0
/* 05D964 8005DDB4 03E00008 */  jr          $ra
/* 05D968 8005DDB8 00000000 */   nop

glabel func_8005DDBC # 6
/* 05D96C 8005DDBC 3C01800A */  lui         $at, %hi(D_800A50D8)
/* 05D970 8005DDC0 03E00008 */  jr          $ra
/* 05D974 8005DDC4 AC2450D8 */   sw         $a0, %lo(D_800A50D8)($at)

glabel func_8005DDC8 # 7
/* 05D978 8005DDC8 04810003 */  bgez        $a0, .L8005DDD8
/* 05D97C 8005DDCC 00801825 */   move       $v1, $a0
/* 05D980 8005DDD0 03E00008 */  jr          $ra
/* 05D984 8005DDD4 00041023 */   negu       $v0, $a0
.L8005DDD8:
/* 05D988 8005DDD8 03E00008 */  jr          $ra
/* 05D98C 8005DDDC 00601025 */   move       $v0, $v1

glabel func_8005DDE0 # 8
/* 05D990 8005DDE0 04810003 */  bgez        $a0, .L8005DDF0
/* 05D994 8005DDE4 00801825 */   move       $v1, $a0
/* 05D998 8005DDE8 03E00008 */  jr          $ra
/* 05D99C 8005DDEC 00041023 */   negu       $v0, $a0
.L8005DDF0:
/* 05D9A0 8005DDF0 03E00008 */  jr          $ra
/* 05D9A4 8005DDF4 00601025 */   move       $v0, $v1

glabel func_8005DDF8 # 9
/* 05D9A8 8005DDF8 54800004 */  bnel        $a0, $zero, .L8005DE0C
/* 05D9AC 8005DDFC 90820000 */   lbu        $v0, 0x0($a0)
/* 05D9B0 8005DE00 03E00008 */  jr          $ra
/* 05D9B4 8005DE04 00001025 */   move       $v0, $zero
/* 05D9B8 8005DE08 90820000 */  lbu         $v0, 0x0($a0)
.L8005DE0C:
/* 05D9BC 8005DE0C 24030020 */  addiu       $v1, $zero, 0x20
/* 05D9C0 8005DE10 24050009 */  addiu       $a1, $zero, 0x9
/* 05D9C4 8005DE14 50620004 */  beql        $v1, $v0, .L8005DE28
/* 05D9C8 8005DE18 90820001 */   lbu        $v0, 0x1($a0)
/* 05D9CC 8005DE1C 54A20009 */  bnel        $a1, $v0, .L8005DE44
/* 05D9D0 8005DE20 00801025 */   move       $v0, $a0
/* 05D9D4 8005DE24 90820001 */  lbu         $v0, 0x1($a0)
.L8005DE28:
/* 05D9D8 8005DE28 24050009 */  addiu       $a1, $zero, 0x9
/* 05D9DC 8005DE2C 24840001 */  addiu       $a0, $a0, 0x1
/* 05D9E0 8005DE30 5062FFFD */  beql        $v1, $v0, .L8005DE28
/* 05D9E4 8005DE34 90820001 */   lbu        $v0, 0x1($a0)
/* 05D9E8 8005DE38 50A2FFFB */  beql        $a1, $v0, .L8005DE28
/* 05D9EC 8005DE3C 90820001 */   lbu        $v0, 0x1($a0)
/* 05D9F0 8005DE40 00801025 */  move        $v0, $a0
.L8005DE44:
/* 05D9F4 8005DE44 03E00008 */  jr          $ra
/* 05D9F8 8005DE48 00000000 */   nop

glabel func_8005DE4C # 10
/* 05D9FC 8005DE4C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 05DA00 8005DE50 14800003 */  bnez        $a0, .L8005DE60
/* 05DA04 8005DE54 AFBF0014 */   sw         $ra, 0x14($sp)
/* 05DA08 8005DE58 10000018 */  b           .L8005DEBC
/* 05DA0C 8005DE5C 00001025 */   move       $v0, $zero
.L8005DE60:
/* 05DA10 8005DE60 0C01777E */  jal         func_8005DDF8
/* 05DA14 8005DE64 00000000 */   nop
/* 05DA18 8005DE68 90450000 */  lbu         $a1, 0x0($v0)
/* 05DA1C 8005DE6C 00402025 */  move        $a0, $v0
/* 05DA20 8005DE70 00001825 */  move        $v1, $zero
/* 05DA24 8005DE74 28A10030 */  slti        $at, $a1, 0x30
/* 05DA28 8005DE78 1420000F */  bnez        $at, .L8005DEB8
/* 05DA2C 8005DE7C 28A1003A */   slti       $at, $a1, 0x3a
/* 05DA30 8005DE80 1020000D */  beqz        $at, .L8005DEB8
/* 05DA34 8005DE84 2405000A */   addiu      $a1, $zero, 0xa
/* 05DA38 8005DE88 90420000 */  lbu         $v0, 0x0($v0)
.L8005DE8C:
/* 05DA3C 8005DE8C 00650019 */  multu       $v1, $a1
/* 05DA40 8005DE90 24840001 */  addiu       $a0, $a0, 0x1
/* 05DA44 8005DE94 00007012 */  mflo        $t6
/* 05DA48 8005DE98 004E1821 */  addu        $v1, $v0, $t6
/* 05DA4C 8005DE9C 90820000 */  lbu         $v0, 0x0($a0)
/* 05DA50 8005DEA0 2463FFD0 */  addiu       $v1, $v1, -0x30
/* 05DA54 8005DEA4 28410030 */  slti        $at, $v0, 0x30
/* 05DA58 8005DEA8 14200003 */  bnez        $at, .L8005DEB8
/* 05DA5C 8005DEAC 2841003A */   slti       $at, $v0, 0x3a
/* 05DA60 8005DEB0 1420FFF6 */  bnez        $at, .L8005DE8C
/* 05DA64 8005DEB4 00000000 */   nop
.L8005DEB8:
/* 05DA68 8005DEB8 00601025 */  move        $v0, $v1
.L8005DEBC:
/* 05DA6C 8005DEBC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 05DA70 8005DEC0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 05DA74 8005DEC4 03E00008 */  jr          $ra
/* 05DA78 8005DEC8 00000000 */   nop

glabel func_8005DECC # 11
/* 05DA7C 8005DECC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 05DA80 8005DED0 00802825 */  move        $a1, $a0
/* 05DA84 8005DED4 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 05DA88 8005DED8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 05DA8C 8005DEDC 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 05DA90 8005DEE0 0C00DA76 */  jal         func_800369D8
/* 05DA94 8005DEE4 240600B1 */   addiu      $a2, $zero, 0xb1
/* 05DA98 8005DEE8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 05DA9C 8005DEEC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 05DAA0 8005DEF0 03E00008 */  jr          $ra
/* 05DAA4 8005DEF4 00000000 */   nop

glabel func_8005DEF8 # 12
/* 05DAA8 8005DEF8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 05DAAC 8005DEFC 00802825 */  move        $a1, $a0
/* 05DAB0 8005DF00 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 05DAB4 8005DF04 AFBF0014 */  sw          $ra, 0x14($sp)
/* 05DAB8 8005DF08 0C00DB8B */  jal         func_80036E2C
/* 05DABC 8005DF0C 2484D0E0 */   addiu      $a0, $a0, %lo(D_800FD0E0)
/* 05DAC0 8005DF10 8FBF0014 */  lw          $ra, 0x14($sp)
/* 05DAC4 8005DF14 27BD0018 */  addiu       $sp, $sp, 0x18
/* 05DAC8 8005DF18 03E00008 */  jr          $ra
/* 05DACC 8005DF1C 00000000 */   nop

glabel func_8005DF20 # 13
/* 05DAD0 8005DF20 09000419 */  j           fakefunc_84001064
/* 05DAD4 8005DF24 20010FC0 */   addi       $at, $zero, 0xfc0
/* 05DAD8 8005DF28 8C220010 */  lw          $v0, 0x10($at)
/* 05DADC 8005DF2C 20030F7F */  addi        $v1, $zero, 0xf7f
/* 05DAE0 8005DF30 20071080 */  addi        $a3, $zero, 0x1080
/* 05DAE4 8005DF34 40870000 */  mtc0        $a3, Index
/* 05DAE8 8005DF38 40820800 */  mtc0        $v0, Random
/* 05DAEC 8005DF3C 40831000 */  mtc0        $v1, EntryLo0
.L8005DF40:
/* 05DAF0 8005DF40 40043000 */  mfc0        $a0, Wired
/* 05DAF4 8005DF44 1480FFFE */  bnez        $a0, .L8005DF40
/* 05DAF8 8005DF48 00000000 */   nop
/* 05DAFC 8005DF4C 0D00040F */  jal         func_8400103C
/* 05DB00 8005DF50 00000000 */   nop
/* 05DB04 8005DF54 00E00008 */  jr          $a3
/* 05DB08 8005DF58 40803800 */   mtc0       $zero, Reserved07
.L8005DF5C:
/* 05DB0C 8005DF5C 40082000 */  mfc0        $t0, Context
/* 05DB10 8005DF60 31080080 */  andi        $t0, $t0, 0x80
/* 05DB14 8005DF64 15000002 */  bnez        $t0, .L8005DF70
/* 05DB18 8005DF68 00000000 */   nop
/* 05DB1C 8005DF6C 03E00008 */  jr          $ra
.L8005DF70:
/* 05DB20 8005DF70 40803800 */   mtc0       $zero, Reserved07
/* 05DB24 8005DF74 34085200 */  ori         $t0, $zero, 0x5200
/* 05DB28 8005DF78 40882000 */  mtc0        $t0, Context
/* 05DB2C 8005DF7C 0000000D */  break       0
/* 05DB30 8005DF80 00000000 */  nop
/* 05DB34 8005DF84 8C220004 */  lw          $v0, 0x4($at)
/* 05DB38 8005DF88 30420002 */  andi        $v0, $v0, 0x2
/* 05DB3C 8005DF8C 10400007 */  beqz        $v0, .L8005DFAC
/* 05DB40 8005DF90 00000000 */   nop
/* 05DB44 8005DF94 0D00040F */  jal         func_8400103C
/* 05DB48 8005DF98 00000000 */   nop
/* 05DB4C 8005DF9C 40025800 */  mfc0        $v0, Compare
/* 05DB50 8005DFA0 30420100 */  andi        $v0, $v0, 0x100
/* 05DB54 8005DFA4 1C40FFED */  bgtz        $v0, .L8005DF5C
/* 05DB58 8005DFA8 00000000 */   nop
.L8005DFAC:
/* 05DB5C 8005DFAC 8C220018 */  lw          $v0, 0x18($at)
/* 05DB60 8005DFB0 8C23001C */  lw          $v1, 0x1c($at)
/* 05DB64 8005DFB4 2063FFFF */  addi        $v1, $v1, -0x1
.L8005DFB8:
/* 05DB68 8005DFB8 401E2800 */  mfc0        $fp, PageMask
/* 05DB6C 8005DFBC 17C0FFFE */  bnez        $fp, .L8005DFB8
/* 05DB70 8005DFC0 00000000 */   nop
/* 05DB74 8005DFC4 40800000 */  mtc0        $zero, Index
/* 05DB78 8005DFC8 40820800 */  mtc0        $v0, Random
/* 05DB7C 8005DFCC 40831000 */  mtc0        $v1, EntryLo0
.L8005DFD0:
/* 05DB80 8005DFD0 40043000 */  mfc0        $a0, Wired
/* 05DB84 8005DFD4 1480FFFE */  bnez        $a0, .L8005DFD0
/* 05DB88 8005DFD8 00000000 */   nop
/* 05DB8C 8005DFDC 0D00040F */  jal         func_8400103C
/* 05DB90 8005DFE0 00000000 */   nop
/* 05DB94 8005DFE4 09000402 */  j           fakefunc_84001008
/* 05DB98 8005DFE8 00000000 */   nop
/* 05DB9C 8005DFEC 00000000 */  nop
