.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005DB10 # 0
/* 000000 8005DB10 27BDFF70 */  addiu       $sp, $sp, -0x90
/* 000004 8005DB14 AFB10020 */  sw          $s1, 0x20($sp)
/* 000008 8005DB18 30A200FF */  andi        $v0, $a1, 0xff
/* 00000C 8005DB1C 24030058 */  addiu       $v1, $zero, 0x58
/* 000010 8005DB20 00808825 */  move        $s1, $a0
/* 000014 8005DB24 AFBF002C */  sw          $ra, 0x2c($sp)
/* 000018 8005DB28 AFB30028 */  sw          $s3, 0x28($sp)
/* 00001C 8005DB2C AFB20024 */  sw          $s2, 0x24($sp)
/* 000020 8005DB30 AFB0001C */  sw          $s0, 0x1c($sp)
/* 000024 8005DB34 14620004 */  bne         $v1, $v0, .L8005DB48
/* 000028 8005DB38 AFA50094 */   sw         $a1, 0x94($sp)
/* 00002C 8005DB3C 3C13800A */  lui         $s3, %hi(D_8009FBF4)
/* 000030 8005DB40 10000003 */  b           .L8005DB50
/* 000034 8005DB44 2673FBF4 */   addiu      $s3, $s3, %lo(D_8009FBF4)
.L8005DB48:
/* 000038 8005DB48 3C13800A */  lui         $s3, %hi(D_8009FBE0)
/* 00003C 8005DB4C 2673FBE0 */  addiu       $s3, $s3, %lo(D_8009FBE0)
.L8005DB50:
/* 000040 8005DB50 2401006F */  addiu       $at, $zero, 0x6f
/* 000044 8005DB54 14410003 */  bne         $v0, $at, .L8005DB64
/* 000048 8005DB58 24100018 */   addiu      $s0, $zero, 0x18
/* 00004C 8005DB5C 10000009 */  b           .L8005DB84
/* 000050 8005DB60 24090008 */   addiu      $t1, $zero, 0x8
.L8005DB64:
/* 000054 8005DB64 24010078 */  addiu       $at, $zero, 0x78
/* 000058 8005DB68 10410005 */  beq         $v0, $at, .L8005DB80
/* 00005C 8005DB6C 24080010 */   addiu      $t0, $zero, 0x10
/* 000060 8005DB70 10620003 */  beq         $v1, $v0, .L8005DB80
/* 000064 8005DB74 00000000 */   nop
/* 000068 8005DB78 10000001 */  b           .L8005DB80
/* 00006C 8005DB7C 2408000A */   addiu      $t0, $zero, 0xa
.L8005DB80:
/* 000070 8005DB80 01004825 */  move        $t1, $t0
.L8005DB84:
/* 000074 8005DB84 8E380000 */  lw          $t8, 0x0($s1)
/* 000078 8005DB88 8E390004 */  lw          $t9, 0x4($s1)
/* 00007C 8005DB8C 24010064 */  addiu       $at, $zero, 0x64
/* 000080 8005DB90 AFB80060 */  sw          $t8, 0x60($sp)
/* 000084 8005DB94 AFB80040 */  sw          $t8, 0x40($sp)
/* 000088 8005DB98 AFB90044 */  sw          $t9, 0x44($sp)
/* 00008C 8005DB9C 10410004 */  beq         $v0, $at, .L8005DBB0
/* 000090 8005DBA0 AFB90064 */   sw         $t9, 0x64($sp)
/* 000094 8005DBA4 24010069 */  addiu       $at, $zero, 0x69
/* 000098 8005DBA8 54410010 */  bnel        $v0, $at, .L8005DBEC
/* 00009C 8005DBAC 8FAA0060 */   lw         $t2, 0x60($sp)
.L8005DBB0:
/* 0000A0 8005DBB0 8FAC0040 */  lw          $t4, 0x40($sp)
/* 0000A4 8005DBB4 5D80000D */  bgtzl       $t4, .L8005DBEC
/* 0000A8 8005DBB8 8FAA0060 */   lw         $t2, 0x60($sp)
/* 0000AC 8005DBBC 05800003 */  bltz        $t4, .L8005DBCC
/* 0000B0 8005DBC0 8FAE0060 */   lw         $t6, 0x60($sp)
/* 0000B4 8005DBC4 10000009 */  b           .L8005DBEC
/* 0000B8 8005DBC8 8FAA0060 */   lw         $t2, 0x60($sp)
.L8005DBCC:
/* 0000BC 8005DBCC 8FAF0064 */  lw          $t7, 0x64($sp)
/* 0000C0 8005DBD0 01C0C027 */  nor         $t8, $t6, $zero
/* 0000C4 8005DBD4 2DE10001 */  sltiu       $at, $t7, 0x1
/* 0000C8 8005DBD8 0301C021 */  addu        $t8, $t8, $at
/* 0000CC 8005DBDC 000FC823 */  subu        $t9, $zero, $t7
/* 0000D0 8005DBE0 AFB90064 */  sw          $t9, 0x64($sp)
/* 0000D4 8005DBE4 AFB80060 */  sw          $t8, 0x60($sp)
/* 0000D8 8005DBE8 8FAA0060 */  lw          $t2, 0x60($sp)
.L8005DBEC:
/* 0000DC 8005DBEC 8FAB0064 */  lw          $t3, 0x64($sp)
/* 0000E0 8005DBF0 24080017 */  addiu       $t0, $zero, 0x17
/* 0000E4 8005DBF4 15400006 */  bne         $t2, $zero, .L8005DC10
/* 0000E8 8005DBF8 8FA40060 */   lw         $a0, 0x60($sp)
/* 0000EC 8005DBFC 55600005 */  bnel        $t3, $zero, .L8005DC14
/* 0000F0 8005DC00 24100017 */   addiu      $s0, $zero, 0x17
/* 0000F4 8005DC04 8E2C0024 */  lw          $t4, 0x24($s1)
/* 0000F8 8005DC08 51800010 */  beql        $t4, $zero, .L8005DC4C
/* 0000FC 8005DC0C 27B20078 */   addiu      $s2, $sp, 0x78
.L8005DC10:
/* 000100 8005DC10 24100017 */  addiu       $s0, $zero, 0x17
.L8005DC14:
/* 000104 8005DC14 8FA50064 */  lw          $a1, 0x64($sp)
/* 000108 8005DC18 01203825 */  move        $a3, $t1
/* 00010C 8005DC1C 000937C3 */  sra         $a2, $t1, 31
/* 000110 8005DC20 AFA8004C */  sw          $t0, 0x4c($sp)
/* 000114 8005DC24 0C0148DF */  jal         func_8005237C
/* 000118 8005DC28 AFA90070 */   sw         $t1, 0x70($sp)
/* 00011C 8005DC2C 8FA8004C */  lw          $t0, 0x4c($sp)
/* 000120 8005DC30 00737021 */  addu        $t6, $v1, $s3
/* 000124 8005DC34 91CF0000 */  lbu         $t7, 0x0($t6)
/* 000128 8005DC38 27B20078 */  addiu       $s2, $sp, 0x78
/* 00012C 8005DC3C 8FA90070 */  lw          $t1, 0x70($sp)
/* 000130 8005DC40 0248C021 */  addu        $t8, $s2, $t0
/* 000134 8005DC44 A30F0000 */  sb          $t7, 0x0($t8)
/* 000138 8005DC48 27B20078 */  addiu       $s2, $sp, 0x78
.L8005DC4C:
/* 00013C 8005DC4C 8FA40060 */  lw          $a0, 0x60($sp)
/* 000140 8005DC50 8FA50064 */  lw          $a1, 0x64($sp)
/* 000144 8005DC54 01203825 */  move        $a3, $t1
/* 000148 8005DC58 000937C3 */  sra         $a2, $t1, 31
/* 00014C 8005DC5C 0C0148EE */  jal         func_800523B8
/* 000150 8005DC60 AFA90070 */   sw         $t1, 0x70($sp)
/* 000154 8005DC64 8FA90070 */  lw          $t1, 0x70($sp)
/* 000158 8005DC68 AE230004 */  sw          $v1, 0x4($s1)
/* 00015C 8005DC6C 0440002B */  bltz        $v0, .L8005DD1C
/* 000160 8005DC70 AE220000 */   sw         $v0, 0x0($s1)
/* 000164 8005DC74 1C400003 */  bgtz        $v0, .L8005DC84
/* 000168 8005DC78 00000000 */   nop
/* 00016C 8005DC7C 50600028 */  beql        $v1, $zero, .L8005DD20
/* 000170 8005DC80 240C0018 */   addiu      $t4, $zero, 0x18
.L8005DC84:
/* 000174 8005DC84 1A000025 */  blez        $s0, .L8005DD1C
/* 000178 8005DC88 000967C3 */   sra        $t4, $t1, 31
/* 00017C 8005DC8C 8E2A0000 */  lw          $t2, 0x0($s1)
/* 000180 8005DC90 8E2B0004 */  lw          $t3, 0x4($s1)
/* 000184 8005DC94 AFA9003C */  sw          $t1, 0x3c($sp)
/* 000188 8005DC98 AFAC0038 */  sw          $t4, 0x38($sp)
/* 00018C 8005DC9C AFAA0040 */  sw          $t2, 0x40($sp)
/* 000190 8005DCA0 AFAB0044 */  sw          $t3, 0x44($sp)
/* 000194 8005DCA4 8FAE0038 */  lw          $t6, 0x38($sp)
.L8005DCA8:
/* 000198 8005DCA8 8FAF003C */  lw          $t7, 0x3c($sp)
/* 00019C 8005DCAC 27A40050 */  addiu       $a0, $sp, 0x50
/* 0001A0 8005DCB0 8FA60040 */  lw          $a2, 0x40($sp)
/* 0001A4 8005DCB4 8FA70044 */  lw          $a3, 0x44($sp)
/* 0001A8 8005DCB8 AFAE0010 */  sw          $t6, 0x10($sp)
/* 0001AC 8005DCBC 0C017E55 */  jal         func_8005F954
/* 0001B0 8005DCC0 AFAF0014 */   sw         $t7, 0x14($sp)
/* 0001B4 8005DCC4 8FB80050 */  lw          $t8, 0x50($sp)
/* 0001B8 8005DCC8 8FB90054 */  lw          $t9, 0x54($sp)
/* 0001BC 8005DCCC 2604FFFF */  addiu       $a0, $s0, -0x1
/* 0001C0 8005DCD0 AE380000 */  sw          $t8, 0x0($s1)
/* 0001C4 8005DCD4 AE390004 */  sw          $t9, 0x4($s1)
/* 0001C8 8005DCD8 8FAB005C */  lw          $t3, 0x5c($sp)
/* 0001CC 8005DCDC 02447821 */  addu        $t7, $s2, $a0
/* 0001D0 8005DCE0 00808025 */  move        $s0, $a0
/* 0001D4 8005DCE4 01736821 */  addu        $t5, $t3, $s3
/* 0001D8 8005DCE8 91AE0000 */  lbu         $t6, 0x0($t5)
/* 0001DC 8005DCEC A1EE0000 */  sb          $t6, 0x0($t7)
/* 0001E0 8005DCF0 8E380000 */  lw          $t8, 0x0($s1)
/* 0001E4 8005DCF4 8E390004 */  lw          $t9, 0x4($s1)
/* 0001E8 8005DCF8 AFB80040 */  sw          $t8, 0x40($sp)
/* 0001EC 8005DCFC 07000007 */  bltz        $t8, .L8005DD1C
/* 0001F0 8005DD00 AFB90044 */   sw         $t9, 0x44($sp)
/* 0001F4 8005DD04 1F000003 */  bgtz        $t8, .L8005DD14
/* 0001F8 8005DD08 00000000 */   nop
/* 0001FC 8005DD0C 53200004 */  beql        $t9, $zero, .L8005DD20
/* 000200 8005DD10 240C0018 */   addiu      $t4, $zero, 0x18
.L8005DD14:
/* 000204 8005DD14 5E00FFE4 */  bgtzl       $s0, .L8005DCA8
/* 000208 8005DD18 8FAE0038 */   lw         $t6, 0x38($sp)
.L8005DD1C:
/* 00020C 8005DD1C 240C0018 */  addiu       $t4, $zero, 0x18
.L8005DD20:
/* 000210 8005DD20 01903023 */  subu        $a2, $t4, $s0
/* 000214 8005DD24 AE260014 */  sw          $a2, 0x14($s1)
/* 000218 8005DD28 8E240008 */  lw          $a0, 0x8($s1)
/* 00021C 8005DD2C 0C01267C */  jal         func_800499F0
/* 000220 8005DD30 02502821 */   addu       $a1, $s2, $s0
/* 000224 8005DD34 8E250014 */  lw          $a1, 0x14($s1)
/* 000228 8005DD38 8E240024 */  lw          $a0, 0x24($s1)
/* 00022C 8005DD3C 00A4082A */  slt         $at, $a1, $a0
/* 000230 8005DD40 10200002 */  beq         $at, $zero, .L8005DD4C
/* 000234 8005DD44 00856823 */   subu       $t5, $a0, $a1
/* 000238 8005DD48 AE2D0010 */  sw          $t5, 0x10($s1)
.L8005DD4C:
/* 00023C 8005DD4C 04830010 */  bgezl       $a0, .L8005DD90
/* 000240 8005DD50 8FBF002C */   lw         $ra, 0x2c($sp)
/* 000244 8005DD54 8E2E0030 */  lw          $t6, 0x30($s1)
/* 000248 8005DD58 24010010 */  addiu       $at, $zero, 0x10
/* 00024C 8005DD5C 31CF0014 */  andi        $t7, $t6, 0x14
/* 000250 8005DD60 55E1000B */  bnel        $t7, $at, .L8005DD90
/* 000254 8005DD64 8FBF002C */   lw         $ra, 0x2c($sp)
/* 000258 8005DD68 8E380028 */  lw          $t8, 0x28($s1)
/* 00025C 8005DD6C 8E39000C */  lw          $t9, 0xc($s1)
/* 000260 8005DD70 8E220010 */  lw          $v0, 0x10($s1)
/* 000264 8005DD74 03195023 */  subu        $t2, $t8, $t9
/* 000268 8005DD78 01425823 */  subu        $t3, $t2, $v0
/* 00026C 8005DD7C 01658023 */  subu        $s0, $t3, $a1
/* 000270 8005DD80 1A000002 */  blez        $s0, .L8005DD8C
/* 000274 8005DD84 00506021 */   addu       $t4, $v0, $s0
/* 000278 8005DD88 AE2C0010 */  sw          $t4, 0x10($s1)
.L8005DD8C:
/* 00027C 8005DD8C 8FBF002C */  lw          $ra, 0x2c($sp)
.L8005DD90:
/* 000280 8005DD90 8FB0001C */  lw          $s0, 0x1c($sp)
/* 000284 8005DD94 8FB10020 */  lw          $s1, 0x20($sp)
/* 000288 8005DD98 8FB20024 */  lw          $s2, 0x24($sp)
/* 00028C 8005DD9C 8FB30028 */  lw          $s3, 0x28($sp)
/* 000290 8005DDA0 03E00008 */  jr          $ra
/* 000294 8005DDA4 27BD0090 */   addiu      $sp, $sp, 0x90
/* 000298 8005DDA8 00000000 */  nop
/* 00029C 8005DDAC 00000000 */  nop
