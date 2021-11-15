.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel _Litob # 0
/* 05D6C0 8005DB10 27BDFF70 */  addiu       $sp, $sp, -0x90
/* 05D6C4 8005DB14 AFB10020 */  sw          $s1, 0x20($sp)
/* 05D6C8 8005DB18 30A200FF */  andi        $v0, $a1, 0xff
/* 05D6CC 8005DB1C 24030058 */  addiu       $v1, $zero, 0x58
/* 05D6D0 8005DB20 00808825 */  move        $s1, $a0
/* 05D6D4 8005DB24 AFBF002C */  sw          $ra, 0x2c($sp)
/* 05D6D8 8005DB28 AFB30028 */  sw          $s3, 0x28($sp)
/* 05D6DC 8005DB2C AFB20024 */  sw          $s2, 0x24($sp)
/* 05D6E0 8005DB30 AFB0001C */  sw          $s0, 0x1c($sp)
/* 05D6E4 8005DB34 14620004 */  bne         $v1, $v0, .L8005DB48
/* 05D6E8 8005DB38 AFA50094 */   sw         $a1, 0x94($sp)
/* 05D6EC 8005DB3C 3C13800A */  lui         $s3, %hi(udigs)
/* 05D6F0 8005DB40 10000003 */  b           .L8005DB50
/* 05D6F4 8005DB44 2673FBF4 */   addiu      $s3, $s3, %lo(udigs)
.L8005DB48:
/* 05D6F8 8005DB48 3C13800A */  lui         $s3, %hi(ldigs)
/* 05D6FC 8005DB4C 2673FBE0 */  addiu       $s3, $s3, %lo(ldigs)
.L8005DB50:
/* 05D700 8005DB50 2401006F */  addiu       $at, $zero, 0x6f
/* 05D704 8005DB54 14410003 */  bne         $v0, $at, .L8005DB64
/* 05D708 8005DB58 24100018 */   addiu      $s0, $zero, 0x18
/* 05D70C 8005DB5C 10000009 */  b           .L8005DB84
/* 05D710 8005DB60 24090008 */   addiu      $t1, $zero, 0x8
.L8005DB64:
/* 05D714 8005DB64 24010078 */  addiu       $at, $zero, 0x78
/* 05D718 8005DB68 10410005 */  beq         $v0, $at, .L8005DB80
/* 05D71C 8005DB6C 24080010 */   addiu      $t0, $zero, 0x10
/* 05D720 8005DB70 10620003 */  beq         $v1, $v0, .L8005DB80
/* 05D724 8005DB74 00000000 */   nop
/* 05D728 8005DB78 10000001 */  b           .L8005DB80
/* 05D72C 8005DB7C 2408000A */   addiu      $t0, $zero, 0xa
.L8005DB80:
/* 05D730 8005DB80 01004825 */  move        $t1, $t0
.L8005DB84:
/* 05D734 8005DB84 8E380000 */  lw          $t8, 0x0($s1)
/* 05D738 8005DB88 8E390004 */  lw          $t9, 0x4($s1)
/* 05D73C 8005DB8C 24010064 */  addiu       $at, $zero, 0x64
/* 05D740 8005DB90 AFB80060 */  sw          $t8, 0x60($sp)
/* 05D744 8005DB94 AFB80040 */  sw          $t8, 0x40($sp)
/* 05D748 8005DB98 AFB90044 */  sw          $t9, 0x44($sp)
/* 05D74C 8005DB9C 10410004 */  beq         $v0, $at, .L8005DBB0
/* 05D750 8005DBA0 AFB90064 */   sw         $t9, 0x64($sp)
/* 05D754 8005DBA4 24010069 */  addiu       $at, $zero, 0x69
/* 05D758 8005DBA8 54410010 */  bnel        $v0, $at, .L8005DBEC
/* 05D75C 8005DBAC 8FAA0060 */   lw         $t2, 0x60($sp)
.L8005DBB0:
/* 05D760 8005DBB0 8FAC0040 */  lw          $t4, 0x40($sp)
/* 05D764 8005DBB4 5D80000D */  bgtzl       $t4, .L8005DBEC
/* 05D768 8005DBB8 8FAA0060 */   lw         $t2, 0x60($sp)
/* 05D76C 8005DBBC 05800003 */  bltz        $t4, .L8005DBCC
/* 05D770 8005DBC0 8FAE0060 */   lw         $t6, 0x60($sp)
/* 05D774 8005DBC4 10000009 */  b           .L8005DBEC
/* 05D778 8005DBC8 8FAA0060 */   lw         $t2, 0x60($sp)
.L8005DBCC:
/* 05D77C 8005DBCC 8FAF0064 */  lw          $t7, 0x64($sp)
/* 05D780 8005DBD0 01C0C027 */  nor         $t8, $t6, $zero
/* 05D784 8005DBD4 2DE10001 */  sltiu       $at, $t7, 0x1
/* 05D788 8005DBD8 0301C021 */  addu        $t8, $t8, $at
/* 05D78C 8005DBDC 000FC823 */  subu        $t9, $zero, $t7
/* 05D790 8005DBE0 AFB90064 */  sw          $t9, 0x64($sp)
/* 05D794 8005DBE4 AFB80060 */  sw          $t8, 0x60($sp)
/* 05D798 8005DBE8 8FAA0060 */  lw          $t2, 0x60($sp)
.L8005DBEC:
/* 05D79C 8005DBEC 8FAB0064 */  lw          $t3, 0x64($sp)
/* 05D7A0 8005DBF0 24080017 */  addiu       $t0, $zero, 0x17
/* 05D7A4 8005DBF4 15400006 */  bne         $t2, $zero, .L8005DC10
/* 05D7A8 8005DBF8 8FA40060 */   lw         $a0, 0x60($sp)
/* 05D7AC 8005DBFC 55600005 */  bnel        $t3, $zero, .L8005DC14
/* 05D7B0 8005DC00 24100017 */   addiu      $s0, $zero, 0x17
/* 05D7B4 8005DC04 8E2C0024 */  lw          $t4, 0x24($s1)
/* 05D7B8 8005DC08 51800010 */  beql        $t4, $zero, .L8005DC4C
/* 05D7BC 8005DC0C 27B20078 */   addiu      $s2, $sp, 0x78
.L8005DC10:
/* 05D7C0 8005DC10 24100017 */  addiu       $s0, $zero, 0x17
.L8005DC14:
/* 05D7C4 8005DC14 8FA50064 */  lw          $a1, 0x64($sp)
/* 05D7C8 8005DC18 01203825 */  move        $a3, $t1
/* 05D7CC 8005DC1C 000937C3 */  sra         $a2, $t1, 31
/* 05D7D0 8005DC20 AFA8004C */  sw          $t0, 0x4c($sp)
/* 05D7D4 8005DC24 0C0148DF */  jal         __ull_rem
/* 05D7D8 8005DC28 AFA90070 */   sw         $t1, 0x70($sp)
/* 05D7DC 8005DC2C 8FA8004C */  lw          $t0, 0x4c($sp)
/* 05D7E0 8005DC30 00737021 */  addu        $t6, $v1, $s3
/* 05D7E4 8005DC34 91CF0000 */  lbu         $t7, 0x0($t6)
/* 05D7E8 8005DC38 27B20078 */  addiu       $s2, $sp, 0x78
/* 05D7EC 8005DC3C 8FA90070 */  lw          $t1, 0x70($sp)
/* 05D7F0 8005DC40 0248C021 */  addu        $t8, $s2, $t0
/* 05D7F4 8005DC44 A30F0000 */  sb          $t7, 0x0($t8)
/* 05D7F8 8005DC48 27B20078 */  addiu       $s2, $sp, 0x78
.L8005DC4C:
/* 05D7FC 8005DC4C 8FA40060 */  lw          $a0, 0x60($sp)
/* 05D800 8005DC50 8FA50064 */  lw          $a1, 0x64($sp)
/* 05D804 8005DC54 01203825 */  move        $a3, $t1
/* 05D808 8005DC58 000937C3 */  sra         $a2, $t1, 31
/* 05D80C 8005DC5C 0C0148EE */  jal         __ull_div
/* 05D810 8005DC60 AFA90070 */   sw         $t1, 0x70($sp)
/* 05D814 8005DC64 8FA90070 */  lw          $t1, 0x70($sp)
/* 05D818 8005DC68 AE230004 */  sw          $v1, 0x4($s1)
/* 05D81C 8005DC6C 0440002B */  bltz        $v0, .L8005DD1C
/* 05D820 8005DC70 AE220000 */   sw         $v0, 0x0($s1)
/* 05D824 8005DC74 1C400003 */  bgtz        $v0, .L8005DC84
/* 05D828 8005DC78 00000000 */   nop
/* 05D82C 8005DC7C 50600028 */  beql        $v1, $zero, .L8005DD20
/* 05D830 8005DC80 240C0018 */   addiu      $t4, $zero, 0x18
.L8005DC84:
/* 05D834 8005DC84 1A000025 */  blez        $s0, .L8005DD1C
/* 05D838 8005DC88 000967C3 */   sra        $t4, $t1, 31
/* 05D83C 8005DC8C 8E2A0000 */  lw          $t2, 0x0($s1)
/* 05D840 8005DC90 8E2B0004 */  lw          $t3, 0x4($s1)
/* 05D844 8005DC94 AFA9003C */  sw          $t1, 0x3c($sp)
/* 05D848 8005DC98 AFAC0038 */  sw          $t4, 0x38($sp)
/* 05D84C 8005DC9C AFAA0040 */  sw          $t2, 0x40($sp)
/* 05D850 8005DCA0 AFAB0044 */  sw          $t3, 0x44($sp)
/* 05D854 8005DCA4 8FAE0038 */  lw          $t6, 0x38($sp)
.L8005DCA8:
/* 05D858 8005DCA8 8FAF003C */  lw          $t7, 0x3c($sp)
/* 05D85C 8005DCAC 27A40050 */  addiu       $a0, $sp, 0x50
/* 05D860 8005DCB0 8FA60040 */  lw          $a2, 0x40($sp)
/* 05D864 8005DCB4 8FA70044 */  lw          $a3, 0x44($sp)
/* 05D868 8005DCB8 AFAE0010 */  sw          $t6, 0x10($sp)
/* 05D86C 8005DCBC 0C017E55 */  jal         func_8005F954
/* 05D870 8005DCC0 AFAF0014 */   sw         $t7, 0x14($sp)
/* 05D874 8005DCC4 8FB80050 */  lw          $t8, 0x50($sp)
/* 05D878 8005DCC8 8FB90054 */  lw          $t9, 0x54($sp)
/* 05D87C 8005DCCC 2604FFFF */  addiu       $a0, $s0, -0x1
/* 05D880 8005DCD0 AE380000 */  sw          $t8, 0x0($s1)
/* 05D884 8005DCD4 AE390004 */  sw          $t9, 0x4($s1)
/* 05D888 8005DCD8 8FAB005C */  lw          $t3, 0x5c($sp)
/* 05D88C 8005DCDC 02447821 */  addu        $t7, $s2, $a0
/* 05D890 8005DCE0 00808025 */  move        $s0, $a0
/* 05D894 8005DCE4 01736821 */  addu        $t5, $t3, $s3
/* 05D898 8005DCE8 91AE0000 */  lbu         $t6, 0x0($t5)
/* 05D89C 8005DCEC A1EE0000 */  sb          $t6, 0x0($t7)
/* 05D8A0 8005DCF0 8E380000 */  lw          $t8, 0x0($s1)
/* 05D8A4 8005DCF4 8E390004 */  lw          $t9, 0x4($s1)
/* 05D8A8 8005DCF8 AFB80040 */  sw          $t8, 0x40($sp)
/* 05D8AC 8005DCFC 07000007 */  bltz        $t8, .L8005DD1C
/* 05D8B0 8005DD00 AFB90044 */   sw         $t9, 0x44($sp)
/* 05D8B4 8005DD04 1F000003 */  bgtz        $t8, .L8005DD14
/* 05D8B8 8005DD08 00000000 */   nop
/* 05D8BC 8005DD0C 53200004 */  beql        $t9, $zero, .L8005DD20
/* 05D8C0 8005DD10 240C0018 */   addiu      $t4, $zero, 0x18
.L8005DD14:
/* 05D8C4 8005DD14 5E00FFE4 */  bgtzl       $s0, .L8005DCA8
/* 05D8C8 8005DD18 8FAE0038 */   lw         $t6, 0x38($sp)
.L8005DD1C:
/* 05D8CC 8005DD1C 240C0018 */  addiu       $t4, $zero, 0x18
.L8005DD20:
/* 05D8D0 8005DD20 01903023 */  subu        $a2, $t4, $s0
/* 05D8D4 8005DD24 AE260014 */  sw          $a2, 0x14($s1)
/* 05D8D8 8005DD28 8E240008 */  lw          $a0, 0x8($s1)
/* 05D8DC 8005DD2C 0C01267C */  jal         func_800499F0
/* 05D8E0 8005DD30 02502821 */   addu       $a1, $s2, $s0
/* 05D8E4 8005DD34 8E250014 */  lw          $a1, 0x14($s1)
/* 05D8E8 8005DD38 8E240024 */  lw          $a0, 0x24($s1)
/* 05D8EC 8005DD3C 00A4082A */  slt         $at, $a1, $a0
/* 05D8F0 8005DD40 10200002 */  beq         $at, $zero, .L8005DD4C
/* 05D8F4 8005DD44 00856823 */   subu       $t5, $a0, $a1
/* 05D8F8 8005DD48 AE2D0010 */  sw          $t5, 0x10($s1)
.L8005DD4C:
/* 05D8FC 8005DD4C 04830010 */  bgezl       $a0, .L8005DD90
/* 05D900 8005DD50 8FBF002C */   lw         $ra, 0x2c($sp)
/* 05D904 8005DD54 8E2E0030 */  lw          $t6, 0x30($s1)
/* 05D908 8005DD58 24010010 */  addiu       $at, $zero, 0x10
/* 05D90C 8005DD5C 31CF0014 */  andi        $t7, $t6, 0x14
/* 05D910 8005DD60 55E1000B */  bnel        $t7, $at, .L8005DD90
/* 05D914 8005DD64 8FBF002C */   lw         $ra, 0x2c($sp)
/* 05D918 8005DD68 8E380028 */  lw          $t8, 0x28($s1)
/* 05D91C 8005DD6C 8E39000C */  lw          $t9, 0xc($s1)
/* 05D920 8005DD70 8E220010 */  lw          $v0, 0x10($s1)
/* 05D924 8005DD74 03195023 */  subu        $t2, $t8, $t9
/* 05D928 8005DD78 01425823 */  subu        $t3, $t2, $v0
/* 05D92C 8005DD7C 01658023 */  subu        $s0, $t3, $a1
/* 05D930 8005DD80 1A000002 */  blez        $s0, .L8005DD8C
/* 05D934 8005DD84 00506021 */   addu       $t4, $v0, $s0
/* 05D938 8005DD88 AE2C0010 */  sw          $t4, 0x10($s1)
.L8005DD8C:
/* 05D93C 8005DD8C 8FBF002C */  lw          $ra, 0x2c($sp)
.L8005DD90:
/* 05D940 8005DD90 8FB0001C */  lw          $s0, 0x1c($sp)
/* 05D944 8005DD94 8FB10020 */  lw          $s1, 0x20($sp)
/* 05D948 8005DD98 8FB20024 */  lw          $s2, 0x24($sp)
/* 05D94C 8005DD9C 8FB30028 */  lw          $s3, 0x28($sp)
/* 05D950 8005DDA0 03E00008 */  jr          $ra
/* 05D954 8005DDA4 27BD0090 */   addiu      $sp, $sp, 0x90
/* 05D958 8005DDA8 00000000 */  nop
/* 05D95C 8005DDAC 00000000 */  nop
