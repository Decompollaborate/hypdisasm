.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004DCB0 # 0
/* 04D860 8004DCB0 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 04D864 8004DCB4 AFBF003C */  sw          $ra, 0x3c($sp)
/* 04D868 8004DCB8 AFB60030 */  sw          $s6, 0x30($sp)
/* 04D86C 8004DCBC AFB5002C */  sw          $s5, 0x2c($sp)
/* 04D870 8004DCC0 AFB1001C */  sw          $s1, 0x1c($sp)
/* 04D874 8004DCC4 00A08825 */  move        $s1, $a1
/* 04D878 8004DCC8 0080B025 */  move        $s6, $a0
/* 04D87C 8004DCCC AFBE0038 */  sw          $fp, 0x38($sp)
/* 04D880 8004DCD0 AFB70034 */  sw          $s7, 0x34($sp)
/* 04D884 8004DCD4 AFB40028 */  sw          $s4, 0x28($sp)
/* 04D888 8004DCD8 AFB30024 */  sw          $s3, 0x24($sp)
/* 04D88C 8004DCDC AFB20020 */  sw          $s2, 0x20($sp)
/* 04D890 8004DCE0 AFB00018 */  sw          $s0, 0x18($sp)
/* 04D894 8004DCE4 AFA60070 */  sw          $a2, 0x70($sp)
/* 04D898 8004DCE8 AFA70074 */  sw          $a3, 0x74($sp)
/* 04D89C 8004DCEC 0C0150EC */  jal         func_800543B0
/* 04D8A0 8004DCF0 24150002 */   addiu      $s5, $zero, 0x2
/* 04D8A4 8004DCF4 97A50072 */  lhu         $a1, 0x72($sp)
/* 04D8A8 8004DCF8 3C1E800A */  lui         $fp, %hi(D_800A4D30)
/* 04D8AC 8004DCFC 3C178010 */  lui         $s7, %hi(D_80102380)
/* 04D8B0 8004DD00 3C148010 */  lui         $s4, %hi(D_80104A60)
/* 04D8B4 8004DD04 000570C3 */  sra         $t6, $a1, 3
/* 04D8B8 8004DD08 00057940 */  sll         $t7, $a1, 5
/* 04D8BC 8004DD0C AFAF0044 */  sw          $t7, 0x44($sp)
/* 04D8C0 8004DD10 AFAE0048 */  sw          $t6, 0x48($sp)
/* 04D8C4 8004DD14 26944A60 */  addiu       $s4, $s4, %lo(D_80104A60)
/* 04D8C8 8004DD18 26F72380 */  addiu       $s7, $s7, %lo(D_80102380)
/* 04D8CC 8004DD1C 27DE4D30 */  addiu       $fp, $fp, %lo(D_800A4D30)
.L8004DD20:
/* 04D8D0 8004DD20 92F80000 */  lbu         $t8, 0x0($s7)
/* 04D8D4 8004DD24 2401000B */  addiu       $at, $zero, 0xb
/* 04D8D8 8004DD28 97A50072 */  lhu         $a1, 0x72($sp)
/* 04D8DC 8004DD2C 17010003 */  bne         $t8, $at, .L8004DD3C
/* 04D8E0 8004DD30 02808025 */   move       $s0, $s4
/* 04D8E4 8004DD34 8FD90000 */  lw          $t9, 0x0($fp)
/* 04D8E8 8004DD38 12390023 */  beq         $s1, $t9, .L8004DDC8
.L8004DD3C:
/* 04D8EC 8004DD3C 2408000B */   addiu      $t0, $zero, 0xb
/* 04D8F0 8004DD40 A2E80000 */  sb          $t0, 0x0($s7)
/* 04D8F4 8004DD44 AFD10000 */  sw          $s1, 0x0($fp)
/* 04D8F8 8004DD48 1A200010 */  blez        $s1, .L8004DD8C
/* 04D8FC 8004DD4C 00001025 */   move       $v0, $zero
/* 04D900 8004DD50 32240003 */  andi        $a0, $s1, 0x3
/* 04D904 8004DD54 10800006 */  beqz        $a0, .L8004DD70
/* 04D908 8004DD58 00801825 */   move       $v1, $a0
.L8004DD5C:
/* 04D90C 8004DD5C 24420001 */  addiu       $v0, $v0, 0x1
/* 04D910 8004DD60 A2000000 */  sb          $zero, 0x0($s0)
/* 04D914 8004DD64 1462FFFD */  bne         $v1, $v0, .L8004DD5C
/* 04D918 8004DD68 26100001 */   addiu      $s0, $s0, 0x1
/* 04D91C 8004DD6C 10510007 */  beq         $v0, $s1, .L8004DD8C
.L8004DD70:
/* 04D920 8004DD70 24420004 */   addiu      $v0, $v0, 0x4
/* 04D924 8004DD74 A2000000 */  sb          $zero, 0x0($s0)
/* 04D928 8004DD78 A2000001 */  sb          $zero, 0x1($s0)
/* 04D92C 8004DD7C A2000002 */  sb          $zero, 0x2($s0)
/* 04D930 8004DD80 A2000003 */  sb          $zero, 0x3($s0)
/* 04D934 8004DD84 1451FFFA */  bne         $v0, $s1, .L8004DD70
/* 04D938 8004DD88 26100004 */   addiu      $s0, $s0, 0x4
.L8004DD8C:
/* 04D93C 8004DD8C 24090001 */  addiu       $t1, $zero, 0x1
/* 04D940 8004DD90 AE89003C */  sw          $t1, 0x3c($s4)
/* 04D944 8004DD94 240A00FF */  addiu       $t2, $zero, 0xff
/* 04D948 8004DD98 240B0003 */  addiu       $t3, $zero, 0x3
/* 04D94C 8004DD9C 240C0003 */  addiu       $t4, $zero, 0x3
/* 04D950 8004DDA0 240D000B */  addiu       $t5, $zero, 0xb
/* 04D954 8004DDA4 240E00FF */  addiu       $t6, $zero, 0xff
/* 04D958 8004DDA8 240F00FE */  addiu       $t7, $zero, 0xfe
/* 04D95C 8004DDAC A20A0000 */  sb          $t2, 0x0($s0)
/* 04D960 8004DDB0 A20B0001 */  sb          $t3, 0x1($s0)
/* 04D964 8004DDB4 A20C0002 */  sb          $t4, 0x2($s0)
/* 04D968 8004DDB8 A20D0003 */  sb          $t5, 0x3($s0)
/* 04D96C 8004DDBC A20E0008 */  sb          $t6, 0x8($s0)
/* 04D970 8004DDC0 10000002 */  b           .L8004DDCC
/* 04D974 8004DDC4 A20F0009 */   sb         $t7, 0x9($s0)
.L8004DDC8:
/* 04D978 8004DDC8 02918021 */  addu        $s0, $s4, $s1
.L8004DDCC:
/* 04D97C 8004DDCC 8FB80048 */  lw          $t8, 0x48($sp)
/* 04D980 8004DDD0 30A4FFFF */  andi        $a0, $a1, 0xffff
/* 04D984 8004DDD4 0C015290 */  jal         func_80054A40
/* 04D988 8004DDD8 A2180004 */   sb         $t8, 0x4($s0)
/* 04D98C 8004DDDC 8FB90044 */  lw          $t9, 0x44($sp)
/* 04D990 8004DDE0 24040001 */  addiu       $a0, $zero, 0x1
/* 04D994 8004DDE4 02802825 */  move        $a1, $s4
/* 04D998 8004DDE8 00594025 */  or          $t0, $v0, $t9
/* 04D99C 8004DDEC 0C015108 */  jal         func_80054420
/* 04D9A0 8004DDF0 A2080005 */   sb         $t0, 0x5($s0)
/* 04D9A4 8004DDF4 02C02025 */  move        $a0, $s6
/* 04D9A8 8004DDF8 00002825 */  move        $a1, $zero
/* 04D9AC 8004DDFC 0C013A48 */  jal         func_8004E920
/* 04D9B0 8004DE00 24060001 */   addiu      $a2, $zero, 0x1
/* 04D9B4 8004DE04 00002025 */  move        $a0, $zero
/* 04D9B8 8004DE08 0C015108 */  jal         func_80054420
/* 04D9BC 8004DE0C 02802825 */   move       $a1, $s4
/* 04D9C0 8004DE10 02C02025 */  move        $a0, $s6
/* 04D9C4 8004DE14 00002825 */  move        $a1, $zero
/* 04D9C8 8004DE18 0C013A48 */  jal         func_8004E920
/* 04D9CC 8004DE1C 24060001 */   addiu      $a2, $zero, 0x1
/* 04D9D0 8004DE20 92130002 */  lbu         $s3, 0x2($s0)
/* 04D9D4 8004DE24 26120006 */  addiu       $s2, $s0, 0x6
/* 04D9D8 8004DE28 02402025 */  move        $a0, $s2
/* 04D9DC 8004DE2C 326900C0 */  andi        $t1, $s3, 0xc0
/* 04D9E0 8004DE30 00099903 */  sra         $s3, $t1, 4
/* 04D9E4 8004DE34 56600014 */  bnel        $s3, $zero, .L8004DE88
/* 04D9E8 8004DE38 24130001 */   addiu      $s3, $zero, 0x1
/* 04D9EC 8004DE3C 0C013844 */  jal         func_8004E110
/* 04D9F0 8004DE40 24050002 */   addiu      $a1, $zero, 0x2
/* 04D9F4 8004DE44 920B0008 */  lbu         $t3, 0x8($s0)
/* 04D9F8 8004DE48 27A60063 */  addiu       $a2, $sp, 0x63
/* 04D9FC 8004DE4C 02402025 */  move        $a0, $s2
/* 04DA00 8004DE50 11620008 */  beq         $t3, $v0, .L8004DE74
/* 04DA04 8004DE54 8FA50074 */   lw         $a1, 0x74($sp)
/* 04DA08 8004DE58 02C02025 */  move        $a0, $s6
/* 04DA0C 8004DE5C 0C0134B4 */  jal         func_8004D2D0
/* 04DA10 8004DE60 02202825 */   move       $a1, $s1
/* 04DA14 8004DE64 1440000D */  bnez        $v0, .L8004DE9C
/* 04DA18 8004DE68 00409825 */   move       $s3, $v0
/* 04DA1C 8004DE6C 10000006 */  b           .L8004DE88
/* 04DA20 8004DE70 24130004 */   addiu      $s3, $zero, 0x4
.L8004DE74:
/* 04DA24 8004DE74 0C013E84 */  jal         func_8004FA10
/* 04DA28 8004DE78 24060002 */   addiu      $a2, $zero, 0x2
/* 04DA2C 8004DE7C 10000003 */  b           .L8004DE8C
/* 04DA30 8004DE80 24010004 */   addiu      $at, $zero, 0x4
/* 04DA34 8004DE84 24130001 */  addiu       $s3, $zero, 0x1
.L8004DE88:
/* 04DA38 8004DE88 24010004 */  addiu       $at, $zero, 0x4
.L8004DE8C:
/* 04DA3C 8004DE8C 16610003 */  bne         $s3, $at, .L8004DE9C
/* 04DA40 8004DE90 2AA20000 */   slti       $v0, $s5, 0x0
/* 04DA44 8004DE94 1040FFA2 */  beqz        $v0, .L8004DD20
/* 04DA48 8004DE98 26B5FFFF */   addiu      $s5, $s5, -0x1
.L8004DE9C:
/* 04DA4C 8004DE9C 0C0150FD */  jal         func_800543F4
/* 04DA50 8004DEA0 00000000 */   nop
/* 04DA54 8004DEA4 8FBF003C */  lw          $ra, 0x3c($sp)
/* 04DA58 8004DEA8 02601025 */  move        $v0, $s3
/* 04DA5C 8004DEAC 8FB30024 */  lw          $s3, 0x24($sp)
/* 04DA60 8004DEB0 8FB00018 */  lw          $s0, 0x18($sp)
/* 04DA64 8004DEB4 8FB1001C */  lw          $s1, 0x1c($sp)
/* 04DA68 8004DEB8 8FB20020 */  lw          $s2, 0x20($sp)
/* 04DA6C 8004DEBC 8FB40028 */  lw          $s4, 0x28($sp)
/* 04DA70 8004DEC0 8FB5002C */  lw          $s5, 0x2c($sp)
/* 04DA74 8004DEC4 8FB60030 */  lw          $s6, 0x30($sp)
/* 04DA78 8004DEC8 8FB70034 */  lw          $s7, 0x34($sp)
/* 04DA7C 8004DECC 8FBE0038 */  lw          $fp, 0x38($sp)
/* 04DA80 8004DED0 03E00008 */  jr          $ra
/* 04DA84 8004DED4 27BD0068 */   addiu      $sp, $sp, 0x68
/* 04DA88 8004DED8 00000000 */  nop
/* 04DA8C 8004DEDC 00000000 */  nop
