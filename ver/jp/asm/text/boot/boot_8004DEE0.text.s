.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004DEE0 # 0
/* 04DA90 8004DEE0 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 04DA94 8004DEE4 AFBF003C */  sw          $ra, 0x3c($sp)
/* 04DA98 8004DEE8 AFB60030 */  sw          $s6, 0x30($sp)
/* 04DA9C 8004DEEC AFB5002C */  sw          $s5, 0x2c($sp)
/* 04DAA0 8004DEF0 AFB1001C */  sw          $s1, 0x1c($sp)
/* 04DAA4 8004DEF4 00A08825 */  move        $s1, $a1
/* 04DAA8 8004DEF8 0080B025 */  move        $s6, $a0
/* 04DAAC 8004DEFC AFBE0038 */  sw          $fp, 0x38($sp)
/* 04DAB0 8004DF00 AFB70034 */  sw          $s7, 0x34($sp)
/* 04DAB4 8004DF04 AFB40028 */  sw          $s4, 0x28($sp)
/* 04DAB8 8004DF08 AFB30024 */  sw          $s3, 0x24($sp)
/* 04DABC 8004DF0C AFB20020 */  sw          $s2, 0x20($sp)
/* 04DAC0 8004DF10 AFB00018 */  sw          $s0, 0x18($sp)
/* 04DAC4 8004DF14 AFA60070 */  sw          $a2, 0x70($sp)
/* 04DAC8 8004DF18 AFA70074 */  sw          $a3, 0x74($sp)
/* 04DACC 8004DF1C 0C0150EC */  jal         func_800543B0
/* 04DAD0 8004DF20 24150002 */   addiu      $s5, $zero, 0x2
/* 04DAD4 8004DF24 97A50072 */  lhu         $a1, 0x72($sp)
/* 04DAD8 8004DF28 3C1E800A */  lui         $fp, %hi(D_800A4D30)
/* 04DADC 8004DF2C 3C178010 */  lui         $s7, %hi(D_80102380)
/* 04DAE0 8004DF30 3C148010 */  lui         $s4, %hi(D_80104A60)
/* 04DAE4 8004DF34 000570C3 */  sra         $t6, $a1, 3
/* 04DAE8 8004DF38 00057940 */  sll         $t7, $a1, 5
/* 04DAEC 8004DF3C AFAF0044 */  sw          $t7, 0x44($sp)
/* 04DAF0 8004DF40 AFAE0048 */  sw          $t6, 0x48($sp)
/* 04DAF4 8004DF44 26944A60 */  addiu       $s4, $s4, %lo(D_80104A60)
/* 04DAF8 8004DF48 26F72380 */  addiu       $s7, $s7, %lo(D_80102380)
/* 04DAFC 8004DF4C 27DE4D30 */  addiu       $fp, $fp, %lo(D_800A4D30)
.L8004DF50:
/* 04DB00 8004DF50 92F80000 */  lbu         $t8, 0x0($s7)
/* 04DB04 8004DF54 24010009 */  addiu       $at, $zero, 0x9
/* 04DB08 8004DF58 97A50072 */  lhu         $a1, 0x72($sp)
/* 04DB0C 8004DF5C 17010003 */  bne         $t8, $at, .L8004DF6C
/* 04DB10 8004DF60 02808025 */   move       $s0, $s4
/* 04DB14 8004DF64 8FD90000 */  lw          $t9, 0x0($fp)
/* 04DB18 8004DF68 12390023 */  beq         $s1, $t9, .L8004DFF8
.L8004DF6C:
/* 04DB1C 8004DF6C 24080009 */   addiu      $t0, $zero, 0x9
/* 04DB20 8004DF70 A2E80000 */  sb          $t0, 0x0($s7)
/* 04DB24 8004DF74 AFD10000 */  sw          $s1, 0x0($fp)
/* 04DB28 8004DF78 1A200010 */  blez        $s1, .L8004DFBC
/* 04DB2C 8004DF7C 00001025 */   move       $v0, $zero
/* 04DB30 8004DF80 32240003 */  andi        $a0, $s1, 0x3
/* 04DB34 8004DF84 10800006 */  beqz        $a0, .L8004DFA0
/* 04DB38 8004DF88 00801825 */   move       $v1, $a0
.L8004DF8C:
/* 04DB3C 8004DF8C 24420001 */  addiu       $v0, $v0, 0x1
/* 04DB40 8004DF90 A2000000 */  sb          $zero, 0x0($s0)
/* 04DB44 8004DF94 1462FFFD */  bne         $v1, $v0, .L8004DF8C
/* 04DB48 8004DF98 26100001 */   addiu      $s0, $s0, 0x1
/* 04DB4C 8004DF9C 10510007 */  beq         $v0, $s1, .L8004DFBC
.L8004DFA0:
/* 04DB50 8004DFA0 24420004 */   addiu      $v0, $v0, 0x4
/* 04DB54 8004DFA4 A2000000 */  sb          $zero, 0x0($s0)
/* 04DB58 8004DFA8 A2000001 */  sb          $zero, 0x1($s0)
/* 04DB5C 8004DFAC A2000002 */  sb          $zero, 0x2($s0)
/* 04DB60 8004DFB0 A2000003 */  sb          $zero, 0x3($s0)
/* 04DB64 8004DFB4 1451FFFA */  bne         $v0, $s1, .L8004DFA0
/* 04DB68 8004DFB8 26100004 */   addiu      $s0, $s0, 0x4
.L8004DFBC:
/* 04DB6C 8004DFBC 24090001 */  addiu       $t1, $zero, 0x1
/* 04DB70 8004DFC0 AE89003C */  sw          $t1, 0x3c($s4)
/* 04DB74 8004DFC4 240A00FF */  addiu       $t2, $zero, 0xff
/* 04DB78 8004DFC8 240B0003 */  addiu       $t3, $zero, 0x3
/* 04DB7C 8004DFCC 240C0025 */  addiu       $t4, $zero, 0x25
/* 04DB80 8004DFD0 240D0009 */  addiu       $t5, $zero, 0x9
/* 04DB84 8004DFD4 240E00FF */  addiu       $t6, $zero, 0xff
/* 04DB88 8004DFD8 240F00FE */  addiu       $t7, $zero, 0xfe
/* 04DB8C 8004DFDC A20A0000 */  sb          $t2, 0x0($s0)
/* 04DB90 8004DFE0 A20B0001 */  sb          $t3, 0x1($s0)
/* 04DB94 8004DFE4 A20C0002 */  sb          $t4, 0x2($s0)
/* 04DB98 8004DFE8 A20D0003 */  sb          $t5, 0x3($s0)
/* 04DB9C 8004DFEC A20E002A */  sb          $t6, 0x2a($s0)
/* 04DBA0 8004DFF0 10000002 */  b           .L8004DFFC
/* 04DBA4 8004DFF4 A20F002B */   sb         $t7, 0x2b($s0)
.L8004DFF8:
/* 04DBA8 8004DFF8 02918021 */  addu        $s0, $s4, $s1
.L8004DFFC:
/* 04DBAC 8004DFFC 8FB80048 */  lw          $t8, 0x48($sp)
/* 04DBB0 8004E000 30A4FFFF */  andi        $a0, $a1, 0xffff
/* 04DBB4 8004E004 0C015290 */  jal         func_80054A40
/* 04DBB8 8004E008 A2180004 */   sb         $t8, 0x4($s0)
/* 04DBBC 8004E00C 8FB90044 */  lw          $t9, 0x44($sp)
/* 04DBC0 8004E010 24040001 */  addiu       $a0, $zero, 0x1
/* 04DBC4 8004E014 02802825 */  move        $a1, $s4
/* 04DBC8 8004E018 00594025 */  or          $t0, $v0, $t9
/* 04DBCC 8004E01C 0C015108 */  jal         func_80054420
/* 04DBD0 8004E020 A2080005 */   sb         $t0, 0x5($s0)
/* 04DBD4 8004E024 02C02025 */  move        $a0, $s6
/* 04DBD8 8004E028 00002825 */  move        $a1, $zero
/* 04DBDC 8004E02C 0C013A48 */  jal         func_8004E920
/* 04DBE0 8004E030 24060001 */   addiu      $a2, $zero, 0x1
/* 04DBE4 8004E034 00002025 */  move        $a0, $zero
/* 04DBE8 8004E038 0C015108 */  jal         func_80054420
/* 04DBEC 8004E03C 02802825 */   move       $a1, $s4
/* 04DBF0 8004E040 02C02025 */  move        $a0, $s6
/* 04DBF4 8004E044 00002825 */  move        $a1, $zero
/* 04DBF8 8004E048 0C013A48 */  jal         func_8004E920
/* 04DBFC 8004E04C 24060001 */   addiu      $a2, $zero, 0x1
/* 04DC00 8004E050 92130002 */  lbu         $s3, 0x2($s0)
/* 04DC04 8004E054 26120006 */  addiu       $s2, $s0, 0x6
/* 04DC08 8004E058 02402025 */  move        $a0, $s2
/* 04DC0C 8004E05C 326900C0 */  andi        $t1, $s3, 0xc0
/* 04DC10 8004E060 00099903 */  sra         $s3, $t1, 4
/* 04DC14 8004E064 56600014 */  bnel        $s3, $zero, .L8004E0B8
/* 04DC18 8004E068 24130001 */   addiu      $s3, $zero, 0x1
/* 04DC1C 8004E06C 0C013844 */  jal         func_8004E110
/* 04DC20 8004E070 24050024 */   addiu      $a1, $zero, 0x24
/* 04DC24 8004E074 920B002A */  lbu         $t3, 0x2a($s0)
/* 04DC28 8004E078 27A60063 */  addiu       $a2, $sp, 0x63
/* 04DC2C 8004E07C 02402025 */  move        $a0, $s2
/* 04DC30 8004E080 11620008 */  beq         $t3, $v0, .L8004E0A4
/* 04DC34 8004E084 8FA50074 */   lw         $a1, 0x74($sp)
/* 04DC38 8004E088 02C02025 */  move        $a0, $s6
/* 04DC3C 8004E08C 0C0134B4 */  jal         func_8004D2D0
/* 04DC40 8004E090 02202825 */   move       $a1, $s1
/* 04DC44 8004E094 1440000D */  bnez        $v0, .L8004E0CC
/* 04DC48 8004E098 00409825 */   move       $s3, $v0
/* 04DC4C 8004E09C 10000006 */  b           .L8004E0B8
/* 04DC50 8004E0A0 24130004 */   addiu      $s3, $zero, 0x4
.L8004E0A4:
/* 04DC54 8004E0A4 0C013E84 */  jal         func_8004FA10
/* 04DC58 8004E0A8 24060024 */   addiu      $a2, $zero, 0x24
/* 04DC5C 8004E0AC 10000003 */  b           .L8004E0BC
/* 04DC60 8004E0B0 24010004 */   addiu      $at, $zero, 0x4
/* 04DC64 8004E0B4 24130001 */  addiu       $s3, $zero, 0x1
.L8004E0B8:
/* 04DC68 8004E0B8 24010004 */  addiu       $at, $zero, 0x4
.L8004E0BC:
/* 04DC6C 8004E0BC 16610003 */  bne         $s3, $at, .L8004E0CC
/* 04DC70 8004E0C0 2AA20000 */   slti       $v0, $s5, 0x0
/* 04DC74 8004E0C4 1040FFA2 */  beqz        $v0, .L8004DF50
/* 04DC78 8004E0C8 26B5FFFF */   addiu      $s5, $s5, -0x1
.L8004E0CC:
/* 04DC7C 8004E0CC 0C0150FD */  jal         func_800543F4
/* 04DC80 8004E0D0 00000000 */   nop
/* 04DC84 8004E0D4 8FBF003C */  lw          $ra, 0x3c($sp)
/* 04DC88 8004E0D8 02601025 */  move        $v0, $s3
/* 04DC8C 8004E0DC 8FB30024 */  lw          $s3, 0x24($sp)
/* 04DC90 8004E0E0 8FB00018 */  lw          $s0, 0x18($sp)
/* 04DC94 8004E0E4 8FB1001C */  lw          $s1, 0x1c($sp)
/* 04DC98 8004E0E8 8FB20020 */  lw          $s2, 0x20($sp)
/* 04DC9C 8004E0EC 8FB40028 */  lw          $s4, 0x28($sp)
/* 04DCA0 8004E0F0 8FB5002C */  lw          $s5, 0x2c($sp)
/* 04DCA4 8004E0F4 8FB60030 */  lw          $s6, 0x30($sp)
/* 04DCA8 8004E0F8 8FB70034 */  lw          $s7, 0x34($sp)
/* 04DCAC 8004E0FC 8FBE0038 */  lw          $fp, 0x38($sp)
/* 04DCB0 8004E100 03E00008 */  jr          $ra
/* 04DCB4 8004E104 27BD0068 */   addiu      $sp, $sp, 0x68
/* 04DCB8 8004E108 00000000 */  nop
/* 04DCBC 8004E10C 00000000 */  nop
