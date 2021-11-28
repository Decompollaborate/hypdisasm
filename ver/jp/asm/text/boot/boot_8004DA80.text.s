.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004DA80 # 0
/* 04D630 8004DA80 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 04D634 8004DA84 AFBF003C */  sw          $ra, 0x3c($sp)
/* 04D638 8004DA88 AFB60030 */  sw          $s6, 0x30($sp)
/* 04D63C 8004DA8C AFB5002C */  sw          $s5, 0x2c($sp)
/* 04D640 8004DA90 AFB40028 */  sw          $s4, 0x28($sp)
/* 04D644 8004DA94 AFB1001C */  sw          $s1, 0x1c($sp)
/* 04D648 8004DA98 00A08825 */  move        $s1, $a1
/* 04D64C 8004DA9C 0080A825 */  move        $s5, $a0
/* 04D650 8004DAA0 00E0B025 */  move        $s6, $a3
/* 04D654 8004DAA4 AFBE0038 */  sw          $fp, 0x38($sp)
/* 04D658 8004DAA8 AFB70034 */  sw          $s7, 0x34($sp)
/* 04D65C 8004DAAC AFB30024 */  sw          $s3, 0x24($sp)
/* 04D660 8004DAB0 AFB20020 */  sw          $s2, 0x20($sp)
/* 04D664 8004DAB4 AFB00018 */  sw          $s0, 0x18($sp)
/* 04D668 8004DAB8 AFA60078 */  sw          $a2, 0x78($sp)
/* 04D66C 8004DABC 0C0150EC */  jal         func_800543B0
/* 04D670 8004DAC0 24140002 */   addiu      $s4, $zero, 0x2
/* 04D674 8004DAC4 97A5007A */  lhu         $a1, 0x7a($sp)
/* 04D678 8004DAC8 3C1E800A */  lui         $fp, %hi(D_800A4D30)
/* 04D67C 8004DACC 3C178010 */  lui         $s7, %hi(D_80102380)
/* 04D680 8004DAD0 3C138010 */  lui         $s3, %hi(D_80104A60)
/* 04D684 8004DAD4 000570C3 */  sra         $t6, $a1, 3
/* 04D688 8004DAD8 00057940 */  sll         $t7, $a1, 5
/* 04D68C 8004DADC AFAF0048 */  sw          $t7, 0x48($sp)
/* 04D690 8004DAE0 AFAE004C */  sw          $t6, 0x4c($sp)
/* 04D694 8004DAE4 26734A60 */  addiu       $s3, $s3, %lo(D_80104A60)
/* 04D698 8004DAE8 26F72380 */  addiu       $s7, $s7, %lo(D_80102380)
/* 04D69C 8004DAEC 27DE4D30 */  addiu       $fp, $fp, %lo(D_800A4D30)
.L8004DAF0:
/* 04D6A0 8004DAF0 92F80000 */  lbu         $t8, 0x0($s7)
/* 04D6A4 8004DAF4 2401000A */  addiu       $at, $zero, 0xa
/* 04D6A8 8004DAF8 97A5007A */  lhu         $a1, 0x7a($sp)
/* 04D6AC 8004DAFC 17010003 */  bne         $t8, $at, .L8004DB0C
/* 04D6B0 8004DB00 02608025 */   move       $s0, $s3
/* 04D6B4 8004DB04 8FD90000 */  lw          $t9, 0x0($fp)
/* 04D6B8 8004DB08 12390023 */  beq         $s1, $t9, .L8004DB98
.L8004DB0C:
/* 04D6BC 8004DB0C 2408000A */   addiu      $t0, $zero, 0xa
/* 04D6C0 8004DB10 A2E80000 */  sb          $t0, 0x0($s7)
/* 04D6C4 8004DB14 AFD10000 */  sw          $s1, 0x0($fp)
/* 04D6C8 8004DB18 1A200010 */  blez        $s1, .L8004DB5C
/* 04D6CC 8004DB1C 00001025 */   move       $v0, $zero
/* 04D6D0 8004DB20 32240003 */  andi        $a0, $s1, 0x3
/* 04D6D4 8004DB24 10800006 */  beqz        $a0, .L8004DB40
/* 04D6D8 8004DB28 00801825 */   move       $v1, $a0
.L8004DB2C:
/* 04D6DC 8004DB2C 24420001 */  addiu       $v0, $v0, 0x1
/* 04D6E0 8004DB30 A2000000 */  sb          $zero, 0x0($s0)
/* 04D6E4 8004DB34 1462FFFD */  bne         $v1, $v0, .L8004DB2C
/* 04D6E8 8004DB38 26100001 */   addiu      $s0, $s0, 0x1
/* 04D6EC 8004DB3C 10510007 */  beq         $v0, $s1, .L8004DB5C
.L8004DB40:
/* 04D6F0 8004DB40 24420004 */   addiu      $v0, $v0, 0x4
/* 04D6F4 8004DB44 A2000000 */  sb          $zero, 0x0($s0)
/* 04D6F8 8004DB48 A2000001 */  sb          $zero, 0x1($s0)
/* 04D6FC 8004DB4C A2000002 */  sb          $zero, 0x2($s0)
/* 04D700 8004DB50 A2000003 */  sb          $zero, 0x3($s0)
/* 04D704 8004DB54 1451FFFA */  bne         $v0, $s1, .L8004DB40
/* 04D708 8004DB58 26100004 */   addiu      $s0, $s0, 0x4
.L8004DB5C:
/* 04D70C 8004DB5C 24090001 */  addiu       $t1, $zero, 0x1
/* 04D710 8004DB60 AE69003C */  sw          $t1, 0x3c($s3)
/* 04D714 8004DB64 240A00FF */  addiu       $t2, $zero, 0xff
/* 04D718 8004DB68 240B0017 */  addiu       $t3, $zero, 0x17
/* 04D71C 8004DB6C 240C0001 */  addiu       $t4, $zero, 0x1
/* 04D720 8004DB70 240D000A */  addiu       $t5, $zero, 0xa
/* 04D724 8004DB74 240E00FF */  addiu       $t6, $zero, 0xff
/* 04D728 8004DB78 240F00FE */  addiu       $t7, $zero, 0xfe
/* 04D72C 8004DB7C A20A0000 */  sb          $t2, 0x0($s0)
/* 04D730 8004DB80 A20B0001 */  sb          $t3, 0x1($s0)
/* 04D734 8004DB84 A20C0002 */  sb          $t4, 0x2($s0)
/* 04D738 8004DB88 A20D0003 */  sb          $t5, 0x3($s0)
/* 04D73C 8004DB8C A20E001A */  sb          $t6, 0x1a($s0)
/* 04D740 8004DB90 10000002 */  b           .L8004DB9C
/* 04D744 8004DB94 A20F001B */   sb         $t7, 0x1b($s0)
.L8004DB98:
/* 04D748 8004DB98 02718021 */  addu        $s0, $s3, $s1
.L8004DB9C:
/* 04D74C 8004DB9C 8FB8004C */  lw          $t8, 0x4c($sp)
/* 04D750 8004DBA0 30A4FFFF */  andi        $a0, $a1, 0xffff
/* 04D754 8004DBA4 0C015290 */  jal         func_80054A40
/* 04D758 8004DBA8 A2180004 */   sb         $t8, 0x4($s0)
/* 04D75C 8004DBAC 8FB90048 */  lw          $t9, 0x48($sp)
/* 04D760 8004DBB0 02C02025 */  move        $a0, $s6
/* 04D764 8004DBB4 26050006 */  addiu       $a1, $s0, 0x6
/* 04D768 8004DBB8 00594025 */  or          $t0, $v0, $t9
/* 04D76C 8004DBBC A2080005 */  sb          $t0, 0x5($s0)
/* 04D770 8004DBC0 0C013E84 */  jal         bcopy
/* 04D774 8004DBC4 24060014 */   addiu      $a2, $zero, 0x14
/* 04D778 8004DBC8 24040001 */  addiu       $a0, $zero, 0x1
/* 04D77C 8004DBCC 0C015108 */  jal         func_80054420
/* 04D780 8004DBD0 02602825 */   move       $a1, $s3
/* 04D784 8004DBD4 02C02025 */  move        $a0, $s6
/* 04D788 8004DBD8 0C013844 */  jal         func_8004E110
/* 04D78C 8004DBDC 24050014 */   addiu      $a1, $zero, 0x14
/* 04D790 8004DBE0 305200FF */  andi        $s2, $v0, 0xff
/* 04D794 8004DBE4 02A02025 */  move        $a0, $s5
/* 04D798 8004DBE8 00002825 */  move        $a1, $zero
/* 04D79C 8004DBEC 0C013A48 */  jal         func_8004E920
/* 04D7A0 8004DBF0 24060001 */   addiu      $a2, $zero, 0x1
/* 04D7A4 8004DBF4 00002025 */  move        $a0, $zero
/* 04D7A8 8004DBF8 0C015108 */  jal         func_80054420
/* 04D7AC 8004DBFC 02602825 */   move       $a1, $s3
/* 04D7B0 8004DC00 02A02025 */  move        $a0, $s5
/* 04D7B4 8004DC04 00002825 */  move        $a1, $zero
/* 04D7B8 8004DC08 0C013A48 */  jal         func_8004E920
/* 04D7BC 8004DC0C 24060001 */   addiu      $a2, $zero, 0x1
/* 04D7C0 8004DC10 92030002 */  lbu         $v1, 0x2($s0)
/* 04D7C4 8004DC14 306900C0 */  andi        $t1, $v1, 0xc0
/* 04D7C8 8004DC18 00091903 */  sra         $v1, $t1, 4
/* 04D7CC 8004DC1C 5460000D */  bnel        $v1, $zero, .L8004DC54
/* 04D7D0 8004DC20 24030001 */   addiu      $v1, $zero, 0x1
/* 04D7D4 8004DC24 920B001A */  lbu         $t3, 0x1a($s0)
/* 04D7D8 8004DC28 02A02025 */  move        $a0, $s5
/* 04D7DC 8004DC2C 02202825 */  move        $a1, $s1
/* 04D7E0 8004DC30 51720009 */  beql        $t3, $s2, .L8004DC58
/* 04D7E4 8004DC34 24010004 */   addiu      $at, $zero, 0x4
/* 04D7E8 8004DC38 0C0134B4 */  jal         func_8004D2D0
/* 04D7EC 8004DC3C 27A6006B */   addiu      $a2, $sp, 0x6b
/* 04D7F0 8004DC40 14400009 */  bnez        $v0, .L8004DC68
/* 04D7F4 8004DC44 00401825 */   move       $v1, $v0
/* 04D7F8 8004DC48 10000002 */  b           .L8004DC54
/* 04D7FC 8004DC4C 24030004 */   addiu      $v1, $zero, 0x4
/* 04D800 8004DC50 24030001 */  addiu       $v1, $zero, 0x1
.L8004DC54:
/* 04D804 8004DC54 24010004 */  addiu       $at, $zero, 0x4
.L8004DC58:
/* 04D808 8004DC58 14610003 */  bne         $v1, $at, .L8004DC68
/* 04D80C 8004DC5C 2A820000 */   slti       $v0, $s4, 0x0
/* 04D810 8004DC60 1040FFA3 */  beqz        $v0, .L8004DAF0
/* 04D814 8004DC64 2694FFFF */   addiu      $s4, $s4, -0x1
.L8004DC68:
/* 04D818 8004DC68 0C0150FD */  jal         func_800543F4
/* 04D81C 8004DC6C AFA3006C */   sw         $v1, 0x6c($sp)
/* 04D820 8004DC70 8FBF003C */  lw          $ra, 0x3c($sp)
/* 04D824 8004DC74 8FA2006C */  lw          $v0, 0x6c($sp)
/* 04D828 8004DC78 8FB00018 */  lw          $s0, 0x18($sp)
/* 04D82C 8004DC7C 8FB1001C */  lw          $s1, 0x1c($sp)
/* 04D830 8004DC80 8FB20020 */  lw          $s2, 0x20($sp)
/* 04D834 8004DC84 8FB30024 */  lw          $s3, 0x24($sp)
/* 04D838 8004DC88 8FB40028 */  lw          $s4, 0x28($sp)
/* 04D83C 8004DC8C 8FB5002C */  lw          $s5, 0x2c($sp)
/* 04D840 8004DC90 8FB60030 */  lw          $s6, 0x30($sp)
/* 04D844 8004DC94 8FB70034 */  lw          $s7, 0x34($sp)
/* 04D848 8004DC98 8FBE0038 */  lw          $fp, 0x38($sp)
/* 04D84C 8004DC9C 03E00008 */  jr          $ra
/* 04D850 8004DCA0 27BD0070 */   addiu      $sp, $sp, 0x70
/* 04D854 8004DCA4 00000000 */  nop
/* 04D858 8004DCA8 00000000 */  nop
/* 04D85C 8004DCAC 00000000 */  nop
