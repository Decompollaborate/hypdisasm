.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004BA50 # 0
/* 04B600 8004BA50 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 04B604 8004BA54 AFB00020 */  sw          $s0, 0x20($sp)
/* 04B608 8004BA58 00808025 */  move        $s0, $a0
/* 04B60C 8004BA5C AFBF0024 */  sw          $ra, 0x24($sp)
/* 04B610 8004BA60 AFA5002C */  sw          $a1, 0x2c($sp)
/* 04B614 8004BA64 240E0020 */  addiu       $t6, $zero, 0x20
/* 04B618 8004BA68 AFA60030 */  sw          $a2, 0x30($sp)
/* 04B61C 8004BA6C AFAE0010 */  sw          $t6, 0x10($sp)
/* 04B620 8004BA70 00002825 */  move        $a1, $zero
/* 04B624 8004BA74 00002025 */  move        $a0, $zero
/* 04B628 8004BA78 0C0145B0 */  jal         func_800516C0
/* 04B62C 8004BA7C 24070001 */   addiu      $a3, $zero, 0x1
/* 04B630 8004BA80 AE02000C */  sw          $v0, 0xc($s0)
/* 04B634 8004BA84 240F0020 */  addiu       $t7, $zero, 0x20
/* 04B638 8004BA88 AFAF0010 */  sw          $t7, 0x10($sp)
/* 04B63C 8004BA8C 8FA60030 */  lw          $a2, 0x30($sp)
/* 04B640 8004BA90 00002025 */  move        $a0, $zero
/* 04B644 8004BA94 00002825 */  move        $a1, $zero
/* 04B648 8004BA98 0C0145B0 */  jal         func_800516C0
/* 04B64C 8004BA9C 24070001 */   addiu      $a3, $zero, 0x1
/* 04B650 8004BAA0 AE020010 */  sw          $v0, 0x10($s0)
/* 04B654 8004BAA4 8FB9002C */  lw          $t9, 0x2c($sp)
/* 04B658 8004BAA8 2604002C */  addiu       $a0, $s0, 0x2c
/* 04B65C 8004BAAC 0320F809 */  jalr        $t9
/* 04B660 8004BAB0 00000000 */   nop
/* 04B664 8004BAB4 24070001 */  addiu       $a3, $zero, 0x1
/* 04B668 8004BAB8 AE020028 */  sw          $v0, 0x28($s0)
/* 04B66C 8004BABC AE000034 */  sw          $zero, 0x34($s0)
/* 04B670 8004BAC0 AE070038 */  sw          $a3, 0x38($s0)
/* 04B674 8004BAC4 AE00003C */  sw          $zero, 0x3c($s0)
/* 04B678 8004BAC8 24180020 */  addiu       $t8, $zero, 0x20
/* 04B67C 8004BACC AFB80010 */  sw          $t8, 0x10($sp)
/* 04B680 8004BAD0 8FA60030 */  lw          $a2, 0x30($sp)
/* 04B684 8004BAD4 00002025 */  move        $a0, $zero
/* 04B688 8004BAD8 0C0145B0 */  jal         func_800516C0
/* 04B68C 8004BADC 00002825 */   move       $a1, $zero
/* 04B690 8004BAE0 3C013F80 */  lui         $at, 0x3f80
/* 04B694 8004BAE4 44802000 */  mtc1        $zero, $f4
/* 04B698 8004BAE8 44813000 */  mtc1        $at, $f6
/* 04B69C 8004BAEC 24070001 */  addiu       $a3, $zero, 0x1
/* 04B6A0 8004BAF0 AE020040 */  sw          $v0, 0x40($s0)
/* 04B6A4 8004BAF4 AE070050 */  sw          $a3, 0x50($s0)
/* 04B6A8 8004BAF8 AE000048 */  sw          $zero, 0x48($s0)
/* 04B6AC 8004BAFC 24080050 */  addiu       $t0, $zero, 0x50
/* 04B6B0 8004BB00 E604004C */  swc1        $f4, 0x4c($s0)
/* 04B6B4 8004BB04 E6060044 */  swc1        $f6, 0x44($s0)
/* 04B6B8 8004BB08 AFA80010 */  sw          $t0, 0x10($sp)
/* 04B6BC 8004BB0C 8FA60030 */  lw          $a2, 0x30($sp)
/* 04B6C0 8004BB10 00002025 */  move        $a0, $zero
/* 04B6C4 8004BB14 0C0145B0 */  jal         func_800516C0
/* 04B6C8 8004BB18 00002825 */   move       $a1, $zero
/* 04B6CC 8004BB1C 24030001 */  addiu       $v1, $zero, 0x1
/* 04B6D0 8004BB20 AE020054 */  sw          $v0, 0x54($s0)
/* 04B6D4 8004BB24 AE030078 */  sw          $v1, 0x78($s0)
/* 04B6D8 8004BB28 AE000084 */  sw          $zero, 0x84($s0)
/* 04B6DC 8004BB2C A603005A */  sh          $v1, 0x5a($s0)
/* 04B6E0 8004BB30 A6030068 */  sh          $v1, 0x68($s0)
/* 04B6E4 8004BB34 A603006E */  sh          $v1, 0x6e($s0)
/* 04B6E8 8004BB38 A603005C */  sh          $v1, 0x5c($s0)
/* 04B6EC 8004BB3C A603005E */  sh          $v1, 0x5e($s0)
/* 04B6F0 8004BB40 A6000060 */  sh          $zero, 0x60($s0)
/* 04B6F4 8004BB44 A6000062 */  sh          $zero, 0x62($s0)
/* 04B6F8 8004BB48 A6030066 */  sh          $v1, 0x66($s0)
/* 04B6FC 8004BB4C A6000064 */  sh          $zero, 0x64($s0)
/* 04B700 8004BB50 AE000070 */  sw          $zero, 0x70($s0)
/* 04B704 8004BB54 AE000074 */  sw          $zero, 0x74($s0)
/* 04B708 8004BB58 A6000058 */  sh          $zero, 0x58($s0)
/* 04B70C 8004BB5C AE00007C */  sw          $zero, 0x7c($s0)
/* 04B710 8004BB60 AE000080 */  sw          $zero, 0x80($s0)
/* 04B714 8004BB64 8FBF0024 */  lw          $ra, 0x24($sp)
/* 04B718 8004BB68 8FB00020 */  lw          $s0, 0x20($sp)
/* 04B71C 8004BB6C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 04B720 8004BB70 03E00008 */  jr          $ra
/* 04B724 8004BB74 00000000 */   nop

glabel func_8004BB78 # 1
/* 04B728 8004BB78 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 04B72C 8004BB7C AFB00040 */  sw          $s0, 0x40($sp)
/* 04B730 8004BB80 00808025 */  move        $s0, $a0
/* 04B734 8004BB84 AFBF0064 */  sw          $ra, 0x64($sp)
/* 04B738 8004BB88 AFB60058 */  sw          $s6, 0x58($sp)
/* 04B73C 8004BB8C AFA5006C */  sw          $a1, 0x6c($sp)
/* 04B740 8004BB90 240E002C */  addiu       $t6, $zero, 0x2c
/* 04B744 8004BB94 00C0B025 */  move        $s6, $a2
/* 04B748 8004BB98 AFBE0060 */  sw          $fp, 0x60($sp)
/* 04B74C 8004BB9C AFB7005C */  sw          $s7, 0x5c($sp)
/* 04B750 8004BBA0 AFB50054 */  sw          $s5, 0x54($sp)
/* 04B754 8004BBA4 AFB40050 */  sw          $s4, 0x50($sp)
/* 04B758 8004BBA8 AFB3004C */  sw          $s3, 0x4c($sp)
/* 04B75C 8004BBAC AFB20048 */  sw          $s2, 0x48($sp)
/* 04B760 8004BBB0 AFB10044 */  sw          $s1, 0x44($sp)
/* 04B764 8004BBB4 F7BA0038 */  sdc1        $f26, 0x38($sp)
/* 04B768 8004BBB8 F7B80030 */  sdc1        $f24, 0x30($sp)
/* 04B76C 8004BBBC F7B60028 */  sdc1        $f22, 0x28($sp)
/* 04B770 8004BBC0 F7B40020 */  sdc1        $f20, 0x20($sp)
/* 04B774 8004BBC4 AFAE0010 */  sw          $t6, 0x10($sp)
/* 04B778 8004BBC8 00002825 */  move        $a1, $zero
/* 04B77C 8004BBCC 00002025 */  move        $a0, $zero
/* 04B780 8004BBD0 0C0145B0 */  jal         func_800516C0
/* 04B784 8004BBD4 24070001 */   addiu      $a3, $zero, 0x1
/* 04B788 8004BBD8 8FA3006C */  lw          $v1, 0x6c($sp)
/* 04B78C 8004BBDC AE020000 */  sw          $v0, 0x0($s0)
/* 04B790 8004BBE0 3C13800A */  lui         $s3, %hi(D_800A30E8)
/* 04B794 8004BBE4 906F001C */  lbu         $t7, 0x1c($v1)
/* 04B798 8004BBE8 0040A825 */  move        $s5, $v0
/* 04B79C 8004BBEC 267330E8 */  addiu       $s3, $s3, %lo(D_800A30E8)
/* 04B7A0 8004BBF0 25F8FFFF */  addiu       $t8, $t7, -0x1
/* 04B7A4 8004BBF4 2F010006 */  sltiu       $at, $t8, 0x6
/* 04B7A8 8004BBF8 10200017 */  beqz        $at, .L8004BC58
/* 04B7AC 8004BBFC 0018C080 */   sll        $t8, $t8, 2
/* 04B7B0 8004BC00 3C01800B */  lui         $at, %hi(jtbl_800AC900)
/* 04B7B4 8004BC04 00380821 */  addu        $at, $at, $t8
/* 04B7B8 8004BC08 8C38C900 */  lw          $t8, %lo(jtbl_800AC900)($at)
/* 04B7BC 8004BC0C 03000008 */  jr          $t8
/* 04B7C0 8004BC10 00000000 */   nop
glabel L8004BC14
/* 04B7C4 8004BC14 3C13800A */  lui         $s3, %hi(D_800A2F7E + 0x2)
/* 04B7C8 8004BC18 1000000F */  b           .L8004BC58
/* 04B7CC 8004BC1C 26732F80 */   addiu      $s3, $s3, %lo(D_800A2F7E + 0x2)
glabel L8004BC20
/* 04B7D0 8004BC20 3C13800A */  lui         $s3, %hi(D_800A2FE8)
/* 04B7D4 8004BC24 1000000C */  b           .L8004BC58
/* 04B7D8 8004BC28 26732FE8 */   addiu      $s3, $s3, %lo(D_800A2FE8)
glabel L8004BC2C
/* 04B7DC 8004BC2C 3C13800A */  lui         $s3, %hi(D_800A3070)
/* 04B7E0 8004BC30 10000009 */  b           .L8004BC58
/* 04B7E4 8004BC34 26733070 */   addiu      $s3, $s3, %lo(D_800A3070)
glabel L8004BC38
/* 04B7E8 8004BC38 3C13800A */  lui         $s3, %hi(D_800A3098)
/* 04B7EC 8004BC3C 10000006 */  b           .L8004BC58
/* 04B7F0 8004BC40 26733098 */   addiu      $s3, $s3, %lo(D_800A3098)
glabel L8004BC44
/* 04B7F4 8004BC44 3C13800A */  lui         $s3, %hi(D_800A30C0)
/* 04B7F8 8004BC48 10000003 */  b           .L8004BC58
/* 04B7FC 8004BC4C 267330C0 */   addiu      $s3, $s3, %lo(D_800A30C0)
glabel L8004BC50
/* 04B800 8004BC50 10000001 */  b           .L8004BC58
/* 04B804 8004BC54 8C730020 */   lw         $s3, 0x20($v1)
.L8004BC58:
/* 04B808 8004BC58 8E790000 */  lw          $t9, 0x0($s3)
/* 04B80C 8004BC5C 24090028 */  addiu       $t1, $zero, 0x28
/* 04B810 8004BC60 24110002 */  addiu       $s1, $zero, 0x2
/* 04B814 8004BC64 A2B90024 */  sb          $t9, 0x24($s5)
/* 04B818 8004BC68 8E680004 */  lw          $t0, 0x4($s3)
/* 04B81C 8004BC6C 00002025 */  move        $a0, $zero
/* 04B820 8004BC70 00002825 */  move        $a1, $zero
/* 04B824 8004BC74 AEA8001C */  sw          $t0, 0x1c($s5)
/* 04B828 8004BC78 AFA90010 */  sw          $t1, 0x10($sp)
/* 04B82C 8004BC7C 02C03025 */  move        $a2, $s6
/* 04B830 8004BC80 0C0145B0 */  jal         func_800516C0
/* 04B834 8004BC84 332700FF */   andi       $a3, $t9, 0xff
/* 04B838 8004BC88 AEA20020 */  sw          $v0, 0x20($s5)
/* 04B83C 8004BC8C 8EA7001C */  lw          $a3, 0x1c($s5)
/* 04B840 8004BC90 240A0002 */  addiu       $t2, $zero, 0x2
/* 04B844 8004BC94 AFAA0010 */  sw          $t2, 0x10($sp)
/* 04B848 8004BC98 00002025 */  move        $a0, $zero
/* 04B84C 8004BC9C 00002825 */  move        $a1, $zero
/* 04B850 8004BCA0 0C0145B0 */  jal         func_800516C0
/* 04B854 8004BCA4 02C03025 */   move       $a2, $s6
/* 04B858 8004BCA8 8EAB001C */  lw          $t3, 0x1c($s5)
/* 04B85C 8004BCAC AEA20014 */  sw          $v0, 0x14($s5)
/* 04B860 8004BCB0 AEA20018 */  sw          $v0, 0x18($s5)
/* 04B864 8004BCB4 1160000C */  beqz        $t3, .L8004BCE8
/* 04B868 8004BCB8 00001825 */   move       $v1, $zero
/* 04B86C 8004BCBC 8EAC0014 */  lw          $t4, 0x14($s5)
.L8004BCC0:
/* 04B870 8004BCC0 00036840 */  sll         $t5, $v1, 1
/* 04B874 8004BCC4 24630001 */  addiu       $v1, $v1, 0x1
/* 04B878 8004BCC8 018D7021 */  addu        $t6, $t4, $t5
/* 04B87C 8004BCCC A5C00000 */  sh          $zero, 0x0($t6)
/* 04B880 8004BCD0 8EB8001C */  lw          $t8, 0x1c($s5)
/* 04B884 8004BCD4 306FFFFF */  andi        $t7, $v1, 0xffff
/* 04B888 8004BCD8 01E01825 */  move        $v1, $t7
/* 04B88C 8004BCDC 01F8082B */  sltu        $at, $t7, $t8
/* 04B890 8004BCE0 5420FFF7 */  bnel        $at, $zero, .L8004BCC0
/* 04B894 8004BCE4 8EAC0014 */   lw         $t4, 0x14($s5)
.L8004BCE8:
/* 04B898 8004BCE8 92B90024 */  lbu         $t9, 0x24($s5)
/* 04B89C 8004BCEC 0000A025 */  move        $s4, $zero
/* 04B8A0 8004BCF0 3C013F80 */  lui         $at, 0x3f80
/* 04B8A4 8004BCF4 1B20009C */  blez        $t9, .L8004BF68
/* 04B8A8 8004BCF8 241E0001 */   addiu      $fp, $zero, 0x1
/* 04B8AC 8004BCFC 4481C000 */  mtc1        $at, $f24
/* 04B8B0 8004BD00 3C01447A */  lui         $at, 0x447a
/* 04B8B4 8004BD04 4481B000 */  mtc1        $at, $f22
/* 04B8B8 8004BD08 3C01800B */  lui         $at, %hi(D_800AC918)
/* 04B8BC 8004BD0C 4480D000 */  mtc1        $zero, $f26
/* 04B8C0 8004BD10 D434C918 */  ldc1        $f20, %lo(D_800AC918)($at)
/* 04B8C4 8004BD14 24170028 */  addiu       $s7, $zero, 0x28
.L8004BD18:
/* 04B8C8 8004BD18 02970019 */  multu       $s4, $s7
/* 04B8CC 8004BD1C 00115080 */  sll         $t2, $s1, 2
/* 04B8D0 8004BD20 8EA80020 */  lw          $t0, 0x20($s5)
/* 04B8D4 8004BD24 026A5821 */  addu        $t3, $s3, $t2
/* 04B8D8 8004BD28 8D6C0000 */  lw          $t4, 0x0($t3)
/* 04B8DC 8004BD2C 26310001 */  addiu       $s1, $s1, 0x1
/* 04B8E0 8004BD30 322DFFFF */  andi        $t5, $s1, 0xffff
/* 04B8E4 8004BD34 000D7080 */  sll         $t6, $t5, 2
/* 04B8E8 8004BD38 026E7821 */  addu        $t7, $s3, $t6
/* 04B8EC 8004BD3C 25B10001 */  addiu       $s1, $t5, 0x1
/* 04B8F0 8004BD40 00004812 */  mflo        $t1
/* 04B8F4 8004BD44 01098021 */  addu        $s0, $t0, $t1
/* 04B8F8 8004BD48 AE0C0000 */  sw          $t4, 0x0($s0)
/* 04B8FC 8004BD4C 8DF80000 */  lw          $t8, 0x0($t7)
/* 04B900 8004BD50 3239FFFF */  andi        $t9, $s1, 0xffff
/* 04B904 8004BD54 00194080 */  sll         $t0, $t9, 2
/* 04B908 8004BD58 02684821 */  addu        $t1, $s3, $t0
/* 04B90C 8004BD5C AE180004 */  sw          $t8, 0x4($s0)
/* 04B910 8004BD60 8D2A0000 */  lw          $t2, 0x0($t1)
/* 04B914 8004BD64 27310001 */  addiu       $s1, $t9, 0x1
/* 04B918 8004BD68 322BFFFF */  andi        $t3, $s1, 0xffff
/* 04B91C 8004BD6C 000B6080 */  sll         $t4, $t3, 2
/* 04B920 8004BD70 026C6821 */  addu        $t5, $s3, $t4
/* 04B924 8004BD74 A60A000A */  sh          $t2, 0xa($s0)
/* 04B928 8004BD78 8DAE0000 */  lw          $t6, 0x0($t5)
/* 04B92C 8004BD7C 25710001 */  addiu       $s1, $t3, 0x1
/* 04B930 8004BD80 322FFFFF */  andi        $t7, $s1, 0xffff
/* 04B934 8004BD84 000FC080 */  sll         $t8, $t7, 2
/* 04B938 8004BD88 0278C821 */  addu        $t9, $s3, $t8
/* 04B93C 8004BD8C A60E0008 */  sh          $t6, 0x8($s0)
/* 04B940 8004BD90 8F280000 */  lw          $t0, 0x0($t9)
/* 04B944 8004BD94 25F10001 */  addiu       $s1, $t7, 0x1
/* 04B948 8004BD98 3229FFFF */  andi        $t1, $s1, 0xffff
/* 04B94C 8004BD9C 00095080 */  sll         $t2, $t1, 2
/* 04B950 8004BDA0 026A5821 */  addu        $t3, $s3, $t2
/* 04B954 8004BDA4 A608000C */  sh          $t0, 0xc($s0)
/* 04B958 8004BDA8 8D620000 */  lw          $v0, 0x0($t3)
/* 04B95C 8004BDAC 01208825 */  move        $s1, $t1
/* 04B960 8004BDB0 0220C825 */  move        $t9, $s1
/* 04B964 8004BDB4 10400040 */  beqz        $v0, .L8004BEB8
/* 04B968 8004BDB8 27310002 */   addiu      $s1, $t9, 0x2
/* 04B96C 8004BDBC 44822000 */  mtc1        $v0, $f4
/* 04B970 8004BDC0 8FAC006C */  lw          $t4, 0x6c($sp)
/* 04B974 8004BDC4 8E0F0004 */  lw          $t7, 0x4($s0)
/* 04B978 8004BDC8 468021A0 */  cvt.s.w     $f6, $f4
/* 04B97C 8004BDCC 8D8D0018 */  lw          $t5, 0x18($t4)
/* 04B980 8004BDD0 8E180000 */  lw          $t8, 0x0($s0)
/* 04B984 8004BDD4 25310001 */  addiu       $s1, $t1, 0x1
/* 04B988 8004BDD8 448D8000 */  mtc1        $t5, $f16
/* 04B98C 8004BDDC 322EFFFF */  andi        $t6, $s1, 0xffff
/* 04B990 8004BDE0 46163203 */  div.s       $f8, $f6, $f22
/* 04B994 8004BDE4 01F8C823 */  subu        $t9, $t7, $t8
/* 04B998 8004BDE8 01C08825 */  move        $s1, $t6
/* 04B99C 8004BDEC 00114080 */  sll         $t0, $s1, 2
/* 04B9A0 8004BDF0 468084A1 */  cvt.d.w     $f18, $f16
/* 04B9A4 8004BDF4 02684821 */  addu        $t1, $s3, $t0
/* 04B9A8 8004BDF8 3C0141F0 */  lui         $at, 0x41f0
/* 04B9AC 8004BDFC 46004021 */  cvt.d.s     $f0, $f8
/* 04B9B0 8004BE00 44994000 */  mtc1        $t9, $f8
/* 04B9B4 8004BE04 46200280 */  add.d       $f10, $f0, $f0
/* 04B9B8 8004BE08 46804421 */  cvt.d.w     $f16, $f8
/* 04B9BC 8004BE0C 46325103 */  div.d       $f4, $f10, $f18
/* 04B9C0 8004BE10 462021A0 */  cvt.s.d     $f6, $f4
/* 04B9C4 8004BE14 07210005 */  bgez        $t9, .L8004BE2C
/* 04B9C8 8004BE18 E6060010 */   swc1       $f6, 0x10($s0)
/* 04B9CC 8004BE1C 44815800 */  mtc1        $at, $f11
/* 04B9D0 8004BE20 44805000 */  mtc1        $zero, $f10
/* 04B9D4 8004BE24 00000000 */  nop
/* 04B9D8 8004BE28 462A8400 */  add.d       $f16, $f16, $f10
.L8004BE2C:
/* 04B9DC 8004BE2C 8D2A0000 */  lw          $t2, 0x0($t1)
/* 04B9E0 8004BE30 26310001 */  addiu       $s1, $s1, 0x1
/* 04B9E4 8004BE34 322BFFFF */  andi        $t3, $s1, 0xffff
/* 04B9E8 8004BE38 448A9000 */  mtc1        $t2, $f18
/* 04B9EC 8004BE3C E6180014 */  swc1        $f24, 0x14($s0)
/* 04B9F0 8004BE40 AE000018 */  sw          $zero, 0x18($s0)
/* 04B9F4 8004BE44 46809120 */  cvt.s.w     $f4, $f18
/* 04B9F8 8004BE48 240C0034 */  addiu       $t4, $zero, 0x34
/* 04B9FC 8004BE4C 01608825 */  move        $s1, $t3
/* 04BA00 8004BE50 00002025 */  move        $a0, $zero
/* 04BA04 8004BE54 00002825 */  move        $a1, $zero
/* 04BA08 8004BE58 02C03025 */  move        $a2, $s6
/* 04BA0C 8004BE5C 460021A1 */  cvt.d.s     $f6, $f4
/* 04BA10 8004BE60 03C03825 */  move        $a3, $fp
/* 04BA14 8004BE64 46343203 */  div.d       $f8, $f6, $f20
/* 04BA18 8004BE68 46304282 */  mul.d       $f10, $f8, $f16
/* 04BA1C 8004BE6C 462054A0 */  cvt.s.d     $f18, $f10
/* 04BA20 8004BE70 E612001C */  swc1        $f18, 0x1c($s0)
/* 04BA24 8004BE74 0C0145B0 */  jal         func_800516C0
/* 04BA28 8004BE78 AFAC0010 */   sw         $t4, 0x10($sp)
/* 04BA2C 8004BE7C AE020024 */  sw          $v0, 0x24($s0)
/* 04BA30 8004BE80 240D0020 */  addiu       $t5, $zero, 0x20
/* 04BA34 8004BE84 AFAD0010 */  sw          $t5, 0x10($sp)
/* 04BA38 8004BE88 00002025 */  move        $a0, $zero
/* 04BA3C 8004BE8C 00002825 */  move        $a1, $zero
/* 04BA40 8004BE90 02C03025 */  move        $a2, $s6
/* 04BA44 8004BE94 0C0145B0 */  jal         func_800516C0
/* 04BA48 8004BE98 03C03825 */   move       $a3, $fp
/* 04BA4C 8004BE9C 8E0E0024 */  lw          $t6, 0x24($s0)
/* 04BA50 8004BEA0 ADC20014 */  sw          $v0, 0x14($t6)
/* 04BA54 8004BEA4 8E0F0024 */  lw          $t7, 0x24($s0)
/* 04BA58 8004BEA8 E5FA0020 */  swc1        $f26, 0x20($t7)
/* 04BA5C 8004BEAC 8E180024 */  lw          $t8, 0x24($s0)
/* 04BA60 8004BEB0 10000004 */  b           .L8004BEC4
/* 04BA64 8004BEB4 AF1E0024 */   sw         $fp, 0x24($t8)
.L8004BEB8:
/* 04BA68 8004BEB8 3228FFFF */  andi        $t0, $s1, 0xffff
/* 04BA6C 8004BEBC AE000024 */  sw          $zero, 0x24($s0)
/* 04BA70 8004BEC0 01008825 */  move        $s1, $t0
.L8004BEC4:
/* 04BA74 8004BEC4 00114880 */  sll         $t1, $s1, 2
/* 04BA78 8004BEC8 02699021 */  addu        $s2, $s3, $t1
/* 04BA7C 8004BECC 8E4A0000 */  lw          $t2, 0x0($s2)
/* 04BA80 8004BED0 00002025 */  move        $a0, $zero
/* 04BA84 8004BED4 00002825 */  move        $a1, $zero
/* 04BA88 8004BED8 11400019 */  beqz        $t2, .L8004BF40
/* 04BA8C 8004BEDC 02C03025 */   move       $a2, $s6
/* 04BA90 8004BEE0 240B0030 */  addiu       $t3, $zero, 0x30
/* 04BA94 8004BEE4 AFAB0010 */  sw          $t3, 0x10($sp)
/* 04BA98 8004BEE8 0C0145B0 */  jal         func_800516C0
/* 04BA9C 8004BEEC 03C03825 */   move       $a3, $fp
/* 04BAA0 8004BEF0 AE020020 */  sw          $v0, 0x20($s0)
/* 04BAA4 8004BEF4 240C0008 */  addiu       $t4, $zero, 0x8
/* 04BAA8 8004BEF8 AFAC0010 */  sw          $t4, 0x10($sp)
/* 04BAAC 8004BEFC 00002025 */  move        $a0, $zero
/* 04BAB0 8004BF00 00002825 */  move        $a1, $zero
/* 04BAB4 8004BF04 02C03025 */  move        $a2, $s6
/* 04BAB8 8004BF08 0C0145B0 */  jal         func_800516C0
/* 04BABC 8004BF0C 03C03825 */   move       $a3, $fp
/* 04BAC0 8004BF10 8E0D0020 */  lw          $t5, 0x20($s0)
/* 04BAC4 8004BF14 26310001 */  addiu       $s1, $s1, 0x1
/* 04BAC8 8004BF18 3238FFFF */  andi        $t8, $s1, 0xffff
/* 04BACC 8004BF1C ADA20028 */  sw          $v0, 0x28($t5)
/* 04BAD0 8004BF20 8E0F0020 */  lw          $t7, 0x20($s0)
/* 04BAD4 8004BF24 8E4E0000 */  lw          $t6, 0x0($s2)
/* 04BAD8 8004BF28 03008825 */  move        $s1, $t8
/* 04BADC 8004BF2C A5EE0000 */  sh          $t6, 0x0($t7)
/* 04BAE0 8004BF30 0C014C6C */  jal         func_800531B0
/* 04BAE4 8004BF34 8E040020 */   lw         $a0, 0x20($s0)
/* 04BAE8 8004BF38 10000006 */  b           .L8004BF54
/* 04BAEC 8004BF3C 92A90024 */   lbu        $t1, 0x24($s5)
.L8004BF40:
/* 04BAF0 8004BF40 26310001 */  addiu       $s1, $s1, 0x1
/* 04BAF4 8004BF44 3239FFFF */  andi        $t9, $s1, 0xffff
/* 04BAF8 8004BF48 AE000020 */  sw          $zero, 0x20($s0)
/* 04BAFC 8004BF4C 03208825 */  move        $s1, $t9
/* 04BB00 8004BF50 92A90024 */  lbu         $t1, 0x24($s5)
.L8004BF54:
/* 04BB04 8004BF54 26940001 */  addiu       $s4, $s4, 0x1
/* 04BB08 8004BF58 3288FFFF */  andi        $t0, $s4, 0xffff
/* 04BB0C 8004BF5C 0109082A */  slt         $at, $t0, $t1
/* 04BB10 8004BF60 1420FF6D */  bnez        $at, .L8004BD18
/* 04BB14 8004BF64 0100A025 */   move       $s4, $t0
.L8004BF68:
/* 04BB18 8004BF68 8FBF0064 */  lw          $ra, 0x64($sp)
/* 04BB1C 8004BF6C D7B40020 */  ldc1        $f20, 0x20($sp)
/* 04BB20 8004BF70 D7B60028 */  ldc1        $f22, 0x28($sp)
/* 04BB24 8004BF74 D7B80030 */  ldc1        $f24, 0x30($sp)
/* 04BB28 8004BF78 D7BA0038 */  ldc1        $f26, 0x38($sp)
/* 04BB2C 8004BF7C 8FB00040 */  lw          $s0, 0x40($sp)
/* 04BB30 8004BF80 8FB10044 */  lw          $s1, 0x44($sp)
/* 04BB34 8004BF84 8FB20048 */  lw          $s2, 0x48($sp)
/* 04BB38 8004BF88 8FB3004C */  lw          $s3, 0x4c($sp)
/* 04BB3C 8004BF8C 8FB40050 */  lw          $s4, 0x50($sp)
/* 04BB40 8004BF90 8FB50054 */  lw          $s5, 0x54($sp)
/* 04BB44 8004BF94 8FB60058 */  lw          $s6, 0x58($sp)
/* 04BB48 8004BF98 8FB7005C */  lw          $s7, 0x5c($sp)
/* 04BB4C 8004BF9C 8FBE0060 */  lw          $fp, 0x60($sp)
/* 04BB50 8004BFA0 03E00008 */  jr          $ra
/* 04BB54 8004BFA4 27BD0068 */   addiu      $sp, $sp, 0x68
/* 04BB58 8004BFA8 00000000 */  nop
/* 04BB5C 8004BFAC 00000000 */  nop
