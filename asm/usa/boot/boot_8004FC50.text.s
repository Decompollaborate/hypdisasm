.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004FC50 # 0
/* 04F800 8004FC50 27BDFF60 */  addiu       $sp, $sp, -0xa0
/* 04F804 8004FC54 AFB30030 */  sw          $s3, 0x30($sp)
/* 04F808 8004FC58 AFB00024 */  sw          $s0, 0x24($sp)
/* 04F80C 8004FC5C 00808025 */  move        $s0, $a0
/* 04F810 8004FC60 00C09825 */  move        $s3, $a2
/* 04F814 8004FC64 AFBF003C */  sw          $ra, 0x3c($sp)
/* 04F818 8004FC68 AFB50038 */  sw          $s5, 0x38($sp)
/* 04F81C 8004FC6C AFB40034 */  sw          $s4, 0x34($sp)
/* 04F820 8004FC70 AFB2002C */  sw          $s2, 0x2c($sp)
/* 04F824 8004FC74 AFB10028 */  sw          $s1, 0x28($sp)
/* 04F828 8004FC78 AFA500A4 */  sw          $a1, 0xa4($sp)
/* 04F82C 8004FC7C 14C00003 */  bnez        $a2, .L8004FC8C
/* 04F830 8004FC80 00005025 */   move       $t2, $zero
/* 04F834 8004FC84 10000101 */  b           .L8005008C
/* 04F838 8004FC88 00E01025 */   move       $v0, $a3
.L8004FC8C:
/* 04F83C 8004FC8C 8E0E0024 */  lw          $t6, 0x24($s0)
/* 04F840 8004FC90 3C0100FF */  lui         $at, 0xff
/* 04F844 8004FC94 3421FFFF */  ori         $at, $at, 0xffff
/* 04F848 8004FC98 01C17824 */  and         $t7, $t6, $at
/* 04F84C 8004FC9C 3C010B00 */  lui         $at, 0xb00
/* 04F850 8004FCA0 01E1C025 */  or          $t8, $t7, $at
/* 04F854 8004FCA4 ACF80000 */  sw          $t8, 0x0($a3)
/* 04F858 8004FCA8 8E190020 */  lw          $t9, 0x20($s0)
/* 04F85C 8004FCAC 3C011FFF */  lui         $at, 0x1fff
/* 04F860 8004FCB0 3421FFFF */  ori         $at, $at, 0xffff
/* 04F864 8004FCB4 8F2C0010 */  lw          $t4, 0x10($t9)
/* 04F868 8004FCB8 24F50008 */  addiu       $s5, $a3, 0x8
/* 04F86C 8004FCBC 02604025 */  move        $t0, $s3
/* 04F870 8004FCC0 258D0008 */  addiu       $t5, $t4, 0x8
/* 04F874 8004FCC4 01A17024 */  and         $t6, $t5, $at
/* 04F878 8004FCC8 ACEE0004 */  sw          $t6, 0x4($a3)
/* 04F87C 8004FCCC 8E030030 */  lw          $v1, 0x30($s0)
/* 04F880 8004FCD0 8E040018 */  lw          $a0, 0x18($s0)
/* 04F884 8004FCD4 24190010 */  addiu       $t9, $zero, 0x10
/* 04F888 8004FCD8 00737821 */  addu        $t7, $v1, $s3
/* 04F88C 8004FCDC 008F282B */  sltu        $a1, $a0, $t7
/* 04F890 8004FCE0 10A00004 */  beqz        $a1, .L8004FCF4
/* 04F894 8004FCE4 00000000 */   nop
/* 04F898 8004FCE8 8E05001C */  lw          $a1, 0x1c($s0)
/* 04F89C 8004FCEC 0005C02B */  sltu        $t8, $zero, $a1
/* 04F8A0 8004FCF0 03002825 */  move        $a1, $t8
.L8004FCF4:
/* 04F8A4 8004FCF4 10A00003 */  beqz        $a1, .L8004FD04
/* 04F8A8 8004FCF8 24010009 */   addiu      $at, $zero, 0x9
/* 04F8AC 8004FCFC 10000001 */  b           .L8004FD04
/* 04F8B0 8004FD00 00834023 */   subu       $t0, $a0, $v1
.L8004FD04:
/* 04F8B4 8004FD04 8E030034 */  lw          $v1, 0x34($s0)
/* 04F8B8 8004FD08 00002025 */  move        $a0, $zero
/* 04F8BC 8004FD0C 8FAD00A4 */  lw          $t5, 0xa4($sp)
/* 04F8C0 8004FD10 10600003 */  beqz        $v1, .L8004FD20
/* 04F8C4 8004FD14 00000000 */   nop
/* 04F8C8 8004FD18 10000001 */  b           .L8004FD20
/* 04F8CC 8004FD1C 03232023 */   subu       $a0, $t9, $v1
.L8004FD20:
/* 04F8D0 8004FD20 01043023 */  subu        $a2, $t0, $a0
/* 04F8D4 8004FD24 04C10002 */  bgez        $a2, .L8004FD30
/* 04F8D8 8004FD28 00000000 */   nop
/* 04F8DC 8004FD2C 00003025 */  move        $a2, $zero
.L8004FD30:
/* 04F8E0 8004FD30 10A0007B */  beqz        $a1, .L8004FF20
/* 04F8E4 8004FD34 24D1000F */   addiu      $s1, $a2, 0xf
/* 04F8E8 8004FD38 85AE0000 */  lh          $t6, 0x0($t5)
/* 04F8EC 8004FD3C 24D1000F */  addiu       $s1, $a2, 0xf
/* 04F8F0 8004FD40 00116103 */  sra         $t4, $s1, 4
/* 04F8F4 8004FD44 AFA00014 */  sw          $zero, 0x14($sp)
/* 04F8F8 8004FD48 AFAE0010 */  sw          $t6, 0x10($sp)
/* 04F8FC 8004FD4C 8E0F0038 */  lw          $t7, 0x38($s0)
/* 04F900 8004FD50 000CA0C0 */  sll         $s4, $t4, 3
/* 04F904 8004FD54 028CA021 */  addu        $s4, $s4, $t4
/* 04F908 8004FD58 02803825 */  move        $a3, $s4
/* 04F90C 8004FD5C AFA8007C */  sw          $t0, 0x7c($sp)
/* 04F910 8004FD60 01808825 */  move        $s1, $t4
/* 04F914 8004FD64 02A02025 */  move        $a0, $s5
/* 04F918 8004FD68 02002825 */  move        $a1, $s0
/* 04F91C 8004FD6C 0C01409C */  jal         func_80050270
/* 04F920 8004FD70 AFAF0018 */   sw         $t7, 0x18($sp)
/* 04F924 8004FD74 8E030034 */  lw          $v1, 0x34($s0)
/* 04F928 8004FD78 8FA8007C */  lw          $t0, 0x7c($sp)
/* 04F92C 8004FD7C 8FAB00A4 */  lw          $t3, 0xa4($sp)
/* 04F930 8004FD80 10600006 */  beqz        $v1, .L8004FD9C
/* 04F934 8004FD84 0040A825 */   move       $s5, $v0
/* 04F938 8004FD88 85780000 */  lh          $t8, 0x0($t3)
/* 04F93C 8004FD8C 0003C840 */  sll         $t9, $v1, 1
/* 04F940 8004FD90 03196021 */  addu        $t4, $t8, $t9
/* 04F944 8004FD94 10000004 */  b           .L8004FDA8
/* 04F948 8004FD98 A56C0000 */   sh         $t4, 0x0($t3)
.L8004FD9C:
/* 04F94C 8004FD9C 856D0000 */  lh          $t5, 0x0($t3)
/* 04F950 8004FDA0 25AE0020 */  addiu       $t6, $t5, 0x20
/* 04F954 8004FDA4 A56E0000 */  sh          $t6, 0x0($t3)
.L8004FDA8:
/* 04F958 8004FDA8 8E020014 */  lw          $v0, 0x14($s0)
/* 04F95C 8004FDAC 240A0009 */  addiu       $t2, $zero, 0x9
/* 04F960 8004FDB0 8E180020 */  lw          $t8, 0x20($s0)
/* 04F964 8004FDB4 00026102 */  srl         $t4, $v0, 4
/* 04F968 8004FDB8 018A0019 */  multu       $t4, $t2
/* 04F96C 8004FDBC 304F000F */  andi        $t7, $v0, 0xf
/* 04F970 8004FDC0 AE0F0034 */  sw          $t7, 0x34($s0)
/* 04F974 8004FDC4 8F190000 */  lw          $t9, 0x0($t8)
/* 04F978 8004FDC8 0113082A */  slt         $at, $t0, $s3
/* 04F97C 8004FDCC AE020030 */  sw          $v0, 0x30($s0)
/* 04F980 8004FDD0 00081840 */  sll         $v1, $t0, 1
/* 04F984 8004FDD4 00006812 */  mflo        $t5
/* 04F988 8004FDD8 032D7021 */  addu        $t6, $t9, $t5
/* 04F98C 8004FDDC 25CF0009 */  addiu       $t7, $t6, 0x9
/* 04F990 8004FDE0 AE0F003C */  sw          $t7, 0x3c($s0)
/* 04F994 8004FDE4 10200042 */  beqz        $at, .L8004FEF0
/* 04F998 8004FDE8 85690000 */   lh         $t1, 0x0($t3)
.L8004FDEC:
/* 04F99C 8004FDEC 26380001 */  addiu       $t8, $s1, 0x1
/* 04F9A0 8004FDF0 00186140 */  sll         $t4, $t8, 5
/* 04F9A4 8004FDF4 01899021 */  addu        $s2, $t4, $t1
/* 04F9A8 8004FDF8 8E02001C */  lw          $v0, 0x1c($s0)
/* 04F9AC 8004FDFC 26520010 */  addiu       $s2, $s2, 0x10
/* 04F9B0 8004FE00 2401FFE0 */  addiu       $at, $zero, -0x20
/* 04F9B4 8004FE04 0241C824 */  and         $t9, $s2, $at
/* 04F9B8 8004FE08 2401FFFF */  addiu       $at, $zero, -0x1
/* 04F9BC 8004FE0C 240A0009 */  addiu       $t2, $zero, 0x9
/* 04F9C0 8004FE10 02689823 */  subu        $s3, $s3, $t0
/* 04F9C4 8004FE14 03209025 */  move        $s2, $t9
/* 04F9C8 8004FE18 10410004 */  beq         $v0, $at, .L8004FE2C
/* 04F9CC 8004FE1C 01234821 */   addu       $t1, $t1, $v1
/* 04F9D0 8004FE20 10400002 */  beqz        $v0, .L8004FE2C
/* 04F9D4 8004FE24 244DFFFF */   addiu      $t5, $v0, -0x1
/* 04F9D8 8004FE28 AE0D001C */  sw          $t5, 0x1c($s0)
.L8004FE2C:
/* 04F9DC 8004FE2C 8E0E0018 */  lw          $t6, 0x18($s0)
/* 04F9E0 8004FE30 8E0F0014 */  lw          $t7, 0x14($s0)
/* 04F9E4 8004FE34 01CF1023 */  subu        $v0, $t6, $t7
/* 04F9E8 8004FE38 0262082B */  sltu        $at, $s3, $v0
/* 04F9EC 8004FE3C 10200003 */  beqz        $at, .L8004FE4C
/* 04F9F0 8004FE40 00404025 */   move       $t0, $v0
/* 04F9F4 8004FE44 10000001 */  b           .L8004FE4C
/* 04F9F8 8004FE48 02604025 */   move       $t0, $s3
.L8004FE4C:
/* 04F9FC 8004FE4C 8E180034 */  lw          $t8, 0x34($s0)
/* 04FA00 8004FE50 01183021 */  addu        $a2, $t0, $t8
/* 04FA04 8004FE54 24C6FFF0 */  addiu       $a2, $a2, -0x10
/* 04FA08 8004FE58 04C30003 */  bgezl       $a2, .L8004FE68
/* 04FA0C 8004FE5C 24D1000F */   addiu      $s1, $a2, 0xf
/* 04FA10 8004FE60 00003025 */  move        $a2, $zero
/* 04FA14 8004FE64 24D1000F */  addiu       $s1, $a2, 0xf
.L8004FE68:
/* 04FA18 8004FE68 00116103 */  sra         $t4, $s1, 4
/* 04FA1C 8004FE6C 018A0019 */  multu       $t4, $t2
/* 04FA20 8004FE70 AFB20010 */  sw          $s2, 0x10($sp)
/* 04FA24 8004FE74 AFA00014 */  sw          $zero, 0x14($sp)
/* 04FA28 8004FE78 8E190038 */  lw          $t9, 0x38($s0)
/* 04FA2C 8004FE7C AFA90070 */  sw          $t1, 0x70($sp)
/* 04FA30 8004FE80 AFA8007C */  sw          $t0, 0x7c($sp)
/* 04FA34 8004FE84 372D0002 */  ori         $t5, $t9, 0x2
/* 04FA38 8004FE88 AFAD0018 */  sw          $t5, 0x18($sp)
/* 04FA3C 8004FE8C 01808825 */  move        $s1, $t4
/* 04FA40 8004FE90 02A02025 */  move        $a0, $s5
/* 04FA44 8004FE94 0000A012 */  mflo        $s4
/* 04FA48 8004FE98 02803825 */  move        $a3, $s4
/* 04FA4C 8004FE9C 0C01409C */  jal         func_80050270
/* 04FA50 8004FEA0 02002825 */   move       $a1, $s0
/* 04FA54 8004FEA4 8E0E0034 */  lw          $t6, 0x34($s0)
/* 04FA58 8004FEA8 8FA8007C */  lw          $t0, 0x7c($sp)
/* 04FA5C 8004FEAC 3C0100FF */  lui         $at, 0xff
/* 04FA60 8004FEB0 000E7840 */  sll         $t7, $t6, 1
/* 04FA64 8004FEB4 8FA90070 */  lw          $t1, 0x70($sp)
/* 04FA68 8004FEB8 01F2C021 */  addu        $t8, $t7, $s2
/* 04FA6C 8004FEBC 3421FFFF */  ori         $at, $at, 0xffff
/* 04FA70 8004FEC0 03016024 */  and         $t4, $t8, $at
/* 04FA74 8004FEC4 3C010A00 */  lui         $at, 0xa00
/* 04FA78 8004FEC8 00081840 */  sll         $v1, $t0, 1
/* 04FA7C 8004FECC 306FFFFF */  andi        $t7, $v1, 0xffff
/* 04FA80 8004FED0 0181C825 */  or          $t9, $t4, $at
/* 04FA84 8004FED4 00097400 */  sll         $t6, $t1, 16
/* 04FA88 8004FED8 01CFC025 */  or          $t8, $t6, $t7
/* 04FA8C 8004FEDC 0113082A */  slt         $at, $t0, $s3
/* 04FA90 8004FEE0 AC580004 */  sw          $t8, 0x4($v0)
/* 04FA94 8004FEE4 AC590000 */  sw          $t9, 0x0($v0)
/* 04FA98 8004FEE8 1420FFC0 */  bnez        $at, .L8004FDEC
/* 04FA9C 8004FEEC 24550008 */   addiu      $s5, $v0, 0x8
.L8004FEF0:
/* 04FAA0 8004FEF0 8E0C0034 */  lw          $t4, 0x34($s0)
/* 04FAA4 8004FEF4 8E0E0030 */  lw          $t6, 0x30($s0)
/* 04FAA8 8004FEF8 8E18003C */  lw          $t8, 0x3c($s0)
/* 04FAAC 8004FEFC 0193C821 */  addu        $t9, $t4, $s3
/* 04FAB0 8004FF00 332D000F */  andi        $t5, $t9, 0xf
/* 04FAB4 8004FF04 01D37821 */  addu        $t7, $t6, $s3
/* 04FAB8 8004FF08 03146021 */  addu        $t4, $t8, $s4
/* 04FABC 8004FF0C AE0D0034 */  sw          $t5, 0x34($s0)
/* 04FAC0 8004FF10 AE0F0030 */  sw          $t7, 0x30($s0)
/* 04FAC4 8004FF14 AE0C003C */  sw          $t4, 0x3c($s0)
/* 04FAC8 8004FF18 1000005C */  b           .L8005008C
/* 04FACC 8004FF1C 02A01025 */   move       $v0, $s5
.L8004FF20:
/* 04FAD0 8004FF20 8E020020 */  lw          $v0, 0x20($s0)
/* 04FAD4 8004FF24 8E0D003C */  lw          $t5, 0x3c($s0)
/* 04FAD8 8004FF28 0011C903 */  sra         $t9, $s1, 4
/* 04FADC 8004FF2C 8C4F0000 */  lw          $t7, 0x0($v0)
/* 04FAE0 8004FF30 0019A0C0 */  sll         $s4, $t9, 3
/* 04FAE4 8004FF34 8C4C0004 */  lw          $t4, 0x4($v0)
/* 04FAE8 8004FF38 0299A021 */  addu        $s4, $s4, $t9
/* 04FAEC 8004FF3C 01B47021 */  addu        $t6, $t5, $s4
/* 04FAF0 8004FF40 01CFC023 */  subu        $t8, $t6, $t7
/* 04FAF4 8004FF44 030C1823 */  subu        $v1, $t8, $t4
/* 04FAF8 8004FF48 04610002 */  bgez        $v1, .L8004FF54
/* 04FAFC 8004FF4C 03208825 */   move       $s1, $t9
/* 04FB00 8004FF50 00001825 */  move        $v1, $zero
.L8004FF54:
/* 04FB04 8004FF54 0061001A */  div         $zero, $v1, $at
/* 04FB08 8004FF58 00001012 */  mflo        $v0
/* 04FB0C 8004FF5C 00114100 */  sll         $t0, $s1, 4
/* 04FB10 8004FF60 00029100 */  sll         $s2, $v0, 4
/* 04FB14 8004FF64 01044821 */  addu        $t1, $t0, $a0
/* 04FB18 8004FF68 0132082A */  slt         $at, $t1, $s2
/* 04FB1C 8004FF6C 10200002 */  beqz        $at, .L8004FF78
/* 04FB20 8004FF70 8FAB00A4 */   lw         $t3, 0xa4($sp)
/* 04FB24 8004FF74 01209025 */  move        $s2, $t1
.L8004FF78:
/* 04FB28 8004FF78 324D000F */  andi        $t5, $s2, 0xf
/* 04FB2C 8004FF7C 024D7023 */  subu        $t6, $s2, $t5
/* 04FB30 8004FF80 01D3082A */  slt         $at, $t6, $s3
/* 04FB34 8004FF84 10200026 */  beqz        $at, .L80050020
/* 04FB38 8004FF88 02833823 */   subu       $a3, $s4, $v1
/* 04FB3C 8004FF8C 856F0000 */  lh          $t7, 0x0($t3)
/* 04FB40 8004FF90 AFA00014 */  sw          $zero, 0x14($sp)
/* 04FB44 8004FF94 240A0001 */  addiu       $t2, $zero, 0x1
/* 04FB48 8004FF98 AFAF0010 */  sw          $t7, 0x10($sp)
/* 04FB4C 8004FF9C 8E180038 */  lw          $t8, 0x38($s0)
/* 04FB50 8004FFA0 AFAA006C */  sw          $t2, 0x6c($sp)
/* 04FB54 8004FFA4 AFA90044 */  sw          $t1, 0x44($sp)
/* 04FB58 8004FFA8 02A02025 */  move        $a0, $s5
/* 04FB5C 8004FFAC 02002825 */  move        $a1, $s0
/* 04FB60 8004FFB0 01123023 */  subu        $a2, $t0, $s2
/* 04FB64 8004FFB4 0C01409C */  jal         func_80050270
/* 04FB68 8004FFB8 AFB80018 */   sw         $t8, 0x18($sp)
/* 04FB6C 8004FFBC 8E030034 */  lw          $v1, 0x34($s0)
/* 04FB70 8004FFC0 8FA90044 */  lw          $t1, 0x44($sp)
/* 04FB74 8004FFC4 8FAA006C */  lw          $t2, 0x6c($sp)
/* 04FB78 8004FFC8 8FAB00A4 */  lw          $t3, 0xa4($sp)
/* 04FB7C 8004FFCC 10600006 */  beqz        $v1, .L8004FFE8
/* 04FB80 8004FFD0 0040A825 */   move       $s5, $v0
/* 04FB84 8004FFD4 856C0000 */  lh          $t4, 0x0($t3)
/* 04FB88 8004FFD8 0003C840 */  sll         $t9, $v1, 1
/* 04FB8C 8004FFDC 01996821 */  addu        $t5, $t4, $t9
/* 04FB90 8004FFE0 10000004 */  b           .L8004FFF4
/* 04FB94 8004FFE4 A56D0000 */   sh         $t5, 0x0($t3)
.L8004FFE8:
/* 04FB98 8004FFE8 856E0000 */  lh          $t6, 0x0($t3)
/* 04FB9C 8004FFEC 25CF0020 */  addiu       $t7, $t6, 0x20
/* 04FBA0 8004FFF0 A56F0000 */  sh          $t7, 0x0($t3)
.L8004FFF4:
/* 04FBA4 8004FFF4 8E180034 */  lw          $t8, 0x34($s0)
/* 04FBA8 8004FFF8 8E0D0030 */  lw          $t5, 0x30($s0)
/* 04FBAC 8004FFFC 8E0F003C */  lw          $t7, 0x3c($s0)
/* 04FBB0 80050000 03136021 */  addu        $t4, $t8, $s3
/* 04FBB4 80050004 3199000F */  andi        $t9, $t4, 0xf
/* 04FBB8 80050008 01B37021 */  addu        $t6, $t5, $s3
/* 04FBBC 8005000C 01F4C021 */  addu        $t8, $t7, $s4
/* 04FBC0 80050010 AE190034 */  sw          $t9, 0x34($s0)
/* 04FBC4 80050014 AE0E0030 */  sw          $t6, 0x30($s0)
/* 04FBC8 80050018 10000007 */  b           .L80050038
/* 04FBCC 8005001C AE18003C */   sw         $t8, 0x3c($s0)
.L80050020:
/* 04FBD0 80050020 8E0C0008 */  lw          $t4, 0x8($s0)
/* 04FBD4 80050024 AE000034 */  sw          $zero, 0x34($s0)
/* 04FBD8 80050028 AD800010 */  sw          $zero, 0x10($t4)
/* 04FBDC 8005002C 8E19003C */  lw          $t9, 0x3c($s0)
/* 04FBE0 80050030 03346821 */  addu        $t5, $t9, $s4
/* 04FBE4 80050034 AE0D003C */  sw          $t5, 0x3c($s0)
.L80050038:
/* 04FBE8 80050038 12400013 */  beqz        $s2, .L80050088
/* 04FBEC 8005003C 02A01025 */   move       $v0, $s5
/* 04FBF0 80050040 11400005 */  beqz        $t2, .L80050058
/* 04FBF4 80050044 AE000034 */   sw         $zero, 0x34($s0)
/* 04FBF8 80050048 01321823 */  subu        $v1, $t1, $s2
/* 04FBFC 8005004C 00037040 */  sll         $t6, $v1, 1
/* 04FC00 80050050 10000002 */  b           .L8005005C
/* 04FC04 80050054 01C01825 */   move       $v1, $t6
.L80050058:
/* 04FC08 80050058 00001825 */  move        $v1, $zero
.L8005005C:
/* 04FC0C 8005005C 856F0000 */  lh          $t7, 0x0($t3)
/* 04FC10 80050060 3C0100FF */  lui         $at, 0xff
/* 04FC14 80050064 3421FFFF */  ori         $at, $at, 0xffff
/* 04FC18 80050068 01E3C021 */  addu        $t8, $t7, $v1
/* 04FC1C 8005006C 03016024 */  and         $t4, $t8, $at
/* 04FC20 80050070 3C010200 */  lui         $at, 0x200
/* 04FC24 80050074 0181C825 */  or          $t9, $t4, $at
/* 04FC28 80050078 00126840 */  sll         $t5, $s2, 1
/* 04FC2C 8005007C AC4D0004 */  sw          $t5, 0x4($v0)
/* 04FC30 80050080 AC590000 */  sw          $t9, 0x0($v0)
/* 04FC34 80050084 26B50008 */  addiu       $s5, $s5, 0x8
.L80050088:
/* 04FC38 80050088 02A01025 */  move        $v0, $s5
.L8005008C:
/* 04FC3C 8005008C 8FBF003C */  lw          $ra, 0x3c($sp)
/* 04FC40 80050090 8FB00024 */  lw          $s0, 0x24($sp)
/* 04FC44 80050094 8FB10028 */  lw          $s1, 0x28($sp)
/* 04FC48 80050098 8FB2002C */  lw          $s2, 0x2c($sp)
/* 04FC4C 8005009C 8FB30030 */  lw          $s3, 0x30($sp)
/* 04FC50 800500A0 8FB40034 */  lw          $s4, 0x34($sp)
/* 04FC54 800500A4 8FB50038 */  lw          $s5, 0x38($sp)
/* 04FC58 800500A8 03E00008 */  jr          $ra
/* 04FC5C 800500AC 27BD00A0 */   addiu      $sp, $sp, 0xa0

glabel func_800500B0 # 1
/* 04FC60 800500B0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04FC64 800500B4 24010004 */  addiu       $at, $zero, 0x4
/* 04FC68 800500B8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04FC6C 800500BC 10A10050 */  beq         $a1, $at, .L80050200
/* 04FC70 800500C0 00803825 */   move       $a3, $a0
/* 04FC74 800500C4 24010005 */  addiu       $at, $zero, 0x5
/* 04FC78 800500C8 54A10066 */  bnel        $a1, $at, .L80050264
/* 04FC7C 800500CC 8FBF0014 */   lw         $ra, 0x14($sp)
/* 04FC80 800500D0 AC860020 */  sw          $a2, 0x20($a0)
/* 04FC84 800500D4 8CCE0000 */  lw          $t6, 0x0($a2)
/* 04FC88 800500D8 AC800030 */  sw          $zero, 0x30($a0)
/* 04FC8C 800500DC AC8E003C */  sw          $t6, 0x3c($a0)
/* 04FC90 800500E0 90C20008 */  lbu         $v0, 0x8($a2)
/* 04FC94 800500E4 50400007 */  beql        $v0, $zero, .L80050104
/* 04FC98 800500E8 8CE20020 */   lw         $v0, 0x20($a3)
/* 04FC9C 800500EC 24040001 */  addiu       $a0, $zero, 0x1
/* 04FCA0 800500F0 50440033 */  beql        $v0, $a0, .L800501C0
/* 04FCA4 800500F4 8CE20020 */   lw         $v0, 0x20($a3)
/* 04FCA8 800500F8 1000005A */  b           .L80050264
/* 04FCAC 800500FC 8FBF0014 */   lw         $ra, 0x14($sp)
/* 04FCB0 80050100 8CE20020 */  lw          $v0, 0x20($a3)
.L80050104:
/* 04FCB4 80050104 24050009 */  addiu       $a1, $zero, 0x9
/* 04FCB8 80050108 8C4F0004 */  lw          $t7, 0x4($v0)
/* 04FCBC 8005010C 01E5001A */  div         $zero, $t7, $a1
/* 04FCC0 80050110 0000C012 */  mflo        $t8
/* 04FCC4 80050114 14A00002 */  bnez        $a1, .L80050120
/* 04FCC8 80050118 00000000 */   nop
/* 04FCCC 8005011C 0007000D */  break       7
.L80050120:
/* 04FCD0 80050120 2401FFFF */  addiu       $at, $zero, -0x1
/* 04FCD4 80050124 14A10004 */  bne         $a1, $at, .L80050138
/* 04FCD8 80050128 3C018000 */   lui        $at, 0x8000
/* 04FCDC 8005012C 15E10002 */  bne         $t7, $at, .L80050138
/* 04FCE0 80050130 00000000 */   nop
/* 04FCE4 80050134 0006000D */  break       6
.L80050138:
/* 04FCE8 80050138 03050019 */  multu       $t8, $a1
/* 04FCEC 8005013C 0000C812 */  mflo        $t9
/* 04FCF0 80050140 AC590004 */  sw          $t9, 0x4($v0)
/* 04FCF4 80050144 8CE20020 */  lw          $v0, 0x20($a3)
/* 04FCF8 80050148 8C440010 */  lw          $a0, 0x10($v0)
/* 04FCFC 8005014C 8C880000 */  lw          $t0, 0x0($a0)
/* 04FD00 80050150 8C8A0004 */  lw          $t2, 0x4($a0)
/* 04FD04 80050154 00084900 */  sll         $t1, $t0, 4
/* 04FD08 80050158 012A0019 */  multu       $t1, $t2
/* 04FD0C 8005015C 00005812 */  mflo        $t3
/* 04FD10 80050160 ACEB0024 */  sw          $t3, 0x24($a3)
/* 04FD14 80050164 8C43000C */  lw          $v1, 0xc($v0)
/* 04FD18 80050168 50600011 */  beql        $v1, $zero, .L800501B0
/* 04FD1C 8005016C ACE0001C */   sw         $zero, 0x1c($a3)
/* 04FD20 80050170 8C6C0000 */  lw          $t4, 0x0($v1)
/* 04FD24 80050174 8CE50010 */  lw          $a1, 0x10($a3)
/* 04FD28 80050178 24060020 */  addiu       $a2, $zero, 0x20
/* 04FD2C 8005017C ACEC0014 */  sw          $t4, 0x14($a3)
/* 04FD30 80050180 8C4D000C */  lw          $t5, 0xc($v0)
/* 04FD34 80050184 8DAE0004 */  lw          $t6, 0x4($t5)
/* 04FD38 80050188 ACEE0018 */  sw          $t6, 0x18($a3)
/* 04FD3C 8005018C 8C4F000C */  lw          $t7, 0xc($v0)
/* 04FD40 80050190 8DF80008 */  lw          $t8, 0x8($t7)
/* 04FD44 80050194 ACF8001C */  sw          $t8, 0x1c($a3)
/* 04FD48 80050198 8C44000C */  lw          $a0, 0xc($v0)
/* 04FD4C 8005019C 0C014984 */  jal         bcopy
/* 04FD50 800501A0 2484000C */   addiu      $a0, $a0, 0xc
/* 04FD54 800501A4 1000002F */  b           .L80050264
/* 04FD58 800501A8 8FBF0014 */   lw         $ra, 0x14($sp)
/* 04FD5C 800501AC ACE0001C */  sw          $zero, 0x1c($a3)
.L800501B0:
/* 04FD60 800501B0 ACE00018 */  sw          $zero, 0x18($a3)
/* 04FD64 800501B4 1000002A */  b           .L80050260
/* 04FD68 800501B8 ACE00014 */   sw         $zero, 0x14($a3)
/* 04FD6C 800501BC 8CE20020 */  lw          $v0, 0x20($a3)
.L800501C0:
/* 04FD70 800501C0 8C43000C */  lw          $v1, 0xc($v0)
/* 04FD74 800501C4 5060000B */  beql        $v1, $zero, .L800501F4
/* 04FD78 800501C8 ACE0001C */   sw         $zero, 0x1c($a3)
/* 04FD7C 800501CC 8C790000 */  lw          $t9, 0x0($v1)
/* 04FD80 800501D0 ACF90014 */  sw          $t9, 0x14($a3)
/* 04FD84 800501D4 8C48000C */  lw          $t0, 0xc($v0)
/* 04FD88 800501D8 8D090004 */  lw          $t1, 0x4($t0)
/* 04FD8C 800501DC ACE90018 */  sw          $t1, 0x18($a3)
/* 04FD90 800501E0 8C4A000C */  lw          $t2, 0xc($v0)
/* 04FD94 800501E4 8D4B0008 */  lw          $t3, 0x8($t2)
/* 04FD98 800501E8 1000001D */  b           .L80050260
/* 04FD9C 800501EC ACEB001C */   sw         $t3, 0x1c($a3)
/* 04FDA0 800501F0 ACE0001C */  sw          $zero, 0x1c($a3)
.L800501F4:
/* 04FDA4 800501F4 ACE00018 */  sw          $zero, 0x18($a3)
/* 04FDA8 800501F8 10000019 */  b           .L80050260
/* 04FDAC 800501FC ACE00014 */   sw         $zero, 0x14($a3)
.L80050200:
/* 04FDB0 80050200 8CE20020 */  lw          $v0, 0x20($a3)
/* 04FDB4 80050204 24040001 */  addiu       $a0, $zero, 0x1
/* 04FDB8 80050208 ACE00034 */  sw          $zero, 0x34($a3)
/* 04FDBC 8005020C ACE40038 */  sw          $a0, 0x38($a3)
/* 04FDC0 80050210 10400013 */  beqz        $v0, .L80050260
/* 04FDC4 80050214 ACE00030 */   sw         $zero, 0x30($a3)
/* 04FDC8 80050218 8C4C0000 */  lw          $t4, 0x0($v0)
/* 04FDCC 8005021C ACEC003C */  sw          $t4, 0x3c($a3)
/* 04FDD0 80050220 90430008 */  lbu         $v1, 0x8($v0)
/* 04FDD4 80050224 14600007 */  bnez        $v1, .L80050244
/* 04FDD8 80050228 00000000 */   nop
/* 04FDDC 8005022C 8C43000C */  lw          $v1, 0xc($v0)
/* 04FDE0 80050230 5060000C */  beql        $v1, $zero, .L80050264
/* 04FDE4 80050234 8FBF0014 */   lw         $ra, 0x14($sp)
/* 04FDE8 80050238 8C6D0008 */  lw          $t5, 0x8($v1)
/* 04FDEC 8005023C 10000008 */  b           .L80050260
/* 04FDF0 80050240 ACED001C */   sw         $t5, 0x1c($a3)
.L80050244:
/* 04FDF4 80050244 54830007 */  bnel        $a0, $v1, .L80050264
/* 04FDF8 80050248 8FBF0014 */   lw         $ra, 0x14($sp)
/* 04FDFC 8005024C 8C43000C */  lw          $v1, 0xc($v0)
/* 04FE00 80050250 50600004 */  beql        $v1, $zero, .L80050264
/* 04FE04 80050254 8FBF0014 */   lw         $ra, 0x14($sp)
/* 04FE08 80050258 8C6E0008 */  lw          $t6, 0x8($v1)
/* 04FE0C 8005025C ACEE001C */  sw          $t6, 0x1c($a3)
.L80050260:
/* 04FE10 80050260 8FBF0014 */  lw          $ra, 0x14($sp)
.L80050264:
/* 04FE14 80050264 27BD0018 */  addiu       $sp, $sp, 0x18
/* 04FE18 80050268 03E00008 */  jr          $ra
/* 04FE1C 8005026C 00000000 */   nop

glabel func_80050270 # 2
/* 04FE20 80050270 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 04FE24 80050274 AFB10018 */  sw          $s1, 0x18($sp)
/* 04FE28 80050278 AFB00014 */  sw          $s0, 0x14($sp)
/* 04FE2C 8005027C 00808025 */  move        $s0, $a0
/* 04FE30 80050280 00A08825 */  move        $s1, $a1
/* 04FE34 80050284 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04FE38 80050288 18E0001B */  blez        $a3, .L800502F8
/* 04FE3C 8005028C AFA60028 */   sw         $a2, 0x28($sp)
/* 04FE40 80050290 8CA4003C */  lw          $a0, 0x3c($a1)
/* 04FE44 80050294 8E26002C */  lw          $a2, 0x2c($s1)
/* 04FE48 80050298 AFA7002C */  sw          $a3, 0x2c($sp)
/* 04FE4C 8005029C 8E390028 */  lw          $t9, 0x28($s1)
/* 04FE50 800502A0 00E02825 */  move        $a1, $a3
/* 04FE54 800502A4 0320F809 */  jalr        $t9
/* 04FE58 800502A8 00000000 */   nop
/* 04FE5C 800502AC 8FA7002C */  lw          $a3, 0x2c($sp)
/* 04FE60 800502B0 30450007 */  andi        $a1, $v0, 0x7
/* 04FE64 800502B4 87AB0036 */  lh          $t3, 0x36($sp)
/* 04FE68 800502B8 00E53821 */  addu        $a3, $a3, $a1
/* 04FE6C 800502BC 30EE0007 */  andi        $t6, $a3, 0x7
/* 04FE70 800502C0 00EE7823 */  subu        $t7, $a3, $t6
/* 04FE74 800502C4 25F80008 */  addiu       $t8, $t7, 0x8
/* 04FE78 800502C8 33080FFF */  andi        $t0, $t8, 0xfff
/* 04FE7C 800502CC 00084B00 */  sll         $t1, $t0, 12
/* 04FE80 800502D0 3C010400 */  lui         $at, 0x400
/* 04FE84 800502D4 01215025 */  or          $t2, $t1, $at
/* 04FE88 800502D8 02002025 */  move        $a0, $s0
/* 04FE8C 800502DC 316C0FFF */  andi        $t4, $t3, 0xfff
/* 04FE90 800502E0 014C6825 */  or          $t5, $t2, $t4
/* 04FE94 800502E4 0045C823 */  subu        $t9, $v0, $a1
/* 04FE98 800502E8 AC990004 */  sw          $t9, 0x4($a0)
/* 04FE9C 800502EC AC8D0000 */  sw          $t5, 0x0($a0)
/* 04FEA0 800502F0 10000002 */  b           .L800502FC
/* 04FEA4 800502F4 26100008 */   addiu      $s0, $s0, 0x8
.L800502F8:
/* 04FEA8 800502F8 00002825 */  move        $a1, $zero
.L800502FC:
/* 04FEAC 800502FC 8FA40038 */  lw          $a0, 0x38($sp)
/* 04FEB0 80050300 02001025 */  move        $v0, $s0
/* 04FEB4 80050304 3C0F0F00 */  lui         $t7, 0xf00
/* 04FEB8 80050308 308E0002 */  andi        $t6, $a0, 0x2
/* 04FEBC 8005030C 11C00008 */  beqz        $t6, .L80050330
/* 04FEC0 80050310 0004CF00 */   sll        $t9, $a0, 28
/* 04FEC4 80050314 AC4F0000 */  sw          $t7, 0x0($v0)
/* 04FEC8 80050318 8E380010 */  lw          $t8, 0x10($s1)
/* 04FECC 8005031C 3C011FFF */  lui         $at, 0x1fff
/* 04FED0 80050320 3421FFFF */  ori         $at, $at, 0xffff
/* 04FED4 80050324 03014024 */  and         $t0, $t8, $at
/* 04FED8 80050328 AC480004 */  sw          $t0, 0x4($v0)
/* 04FEDC 8005032C 26100008 */  addiu       $s0, $s0, 0x8
.L80050330:
/* 04FEE0 80050330 8E29000C */  lw          $t1, 0xc($s1)
/* 04FEE4 80050334 3C011FFF */  lui         $at, 0x1fff
/* 04FEE8 80050338 3421FFFF */  ori         $at, $at, 0xffff
/* 04FEEC 8005033C 01215824 */  and         $t3, $t1, $at
/* 04FEF0 80050340 3C0100FF */  lui         $at, 0xff
/* 04FEF4 80050344 3421FFFF */  ori         $at, $at, 0xffff
/* 04FEF8 80050348 01615024 */  and         $t2, $t3, $at
/* 04FEFC 8005034C 3C010100 */  lui         $at, 0x100
/* 04FF00 80050350 01416025 */  or          $t4, $t2, $at
/* 04FF04 80050354 02001825 */  move        $v1, $s0
/* 04FF08 80050358 AC6C0000 */  sw          $t4, 0x0($v1)
/* 04FF0C 8005035C 8FAE0028 */  lw          $t6, 0x28($sp)
/* 04FF10 80050360 87AD0032 */  lh          $t5, 0x32($sp)
/* 04FF14 80050364 30AB000F */  andi        $t3, $a1, 0xf
/* 04FF18 80050368 000E7840 */  sll         $t7, $t6, 1
/* 04FF1C 8005036C 31F80FFF */  andi        $t8, $t7, 0xfff
/* 04FF20 80050370 00184400 */  sll         $t0, $t8, 16
/* 04FF24 80050374 03284825 */  or          $t1, $t9, $t0
/* 04FF28 80050378 000B5300 */  sll         $t2, $t3, 12
/* 04FF2C 8005037C 012A6025 */  or          $t4, $t1, $t2
/* 04FF30 80050380 31AE0FFF */  andi        $t6, $t5, 0xfff
/* 04FF34 80050384 018E7825 */  or          $t7, $t4, $t6
/* 04FF38 80050388 AC6F0004 */  sw          $t7, 0x4($v1)
/* 04FF3C 8005038C AE200038 */  sw          $zero, 0x38($s1)
/* 04FF40 80050390 8FBF001C */  lw          $ra, 0x1c($sp)
/* 04FF44 80050394 26020008 */  addiu       $v0, $s0, 0x8
/* 04FF48 80050398 8FB00014 */  lw          $s0, 0x14($sp)
/* 04FF4C 8005039C 8FB10018 */  lw          $s1, 0x18($sp)
/* 04FF50 800503A0 03E00008 */  jr          $ra
/* 04FF54 800503A4 27BD0020 */   addiu      $sp, $sp, 0x20
/* 04FF58 800503A8 00000000 */  nop
/* 04FF5C 800503AC 00000000 */  nop
