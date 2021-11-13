.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005AAE0 # 0
/* 000000 8005AAE0 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 000004 8005AAE4 AFBF003C */  sw          $ra, 0x3c($sp)
/* 000008 8005AAE8 AFB60030 */  sw          $s6, 0x30($sp)
/* 00000C 8005AAEC AFB5002C */  sw          $s5, 0x2c($sp)
/* 000010 8005AAF0 AFB1001C */  sw          $s1, 0x1c($sp)
/* 000014 8005AAF4 00A08825 */  move        $s1, $a1
/* 000018 8005AAF8 0080B025 */  move        $s6, $a0
/* 00001C 8005AAFC AFBE0038 */  sw          $fp, 0x38($sp)
/* 000020 8005AB00 AFB70034 */  sw          $s7, 0x34($sp)
/* 000024 8005AB04 AFB40028 */  sw          $s4, 0x28($sp)
/* 000028 8005AB08 AFB30024 */  sw          $s3, 0x24($sp)
/* 00002C 8005AB0C AFB20020 */  sw          $s2, 0x20($sp)
/* 000030 8005AB10 AFB00018 */  sw          $s0, 0x18($sp)
/* 000034 8005AB14 AFA60070 */  sw          $a2, 0x70($sp)
/* 000038 8005AB18 AFA70074 */  sw          $a3, 0x74($sp)
/* 00003C 8005AB1C 0C0160FC */  jal         func_800583F0
/* 000040 8005AB20 24150002 */   addiu      $s5, $zero, 0x2
/* 000044 8005AB24 97A50072 */  lhu         $a1, 0x72($sp)
/* 000048 8005AB28 3C1E800A */  lui         $fp, %hi(D_8009F8C0)
/* 00004C 8005AB2C 3C178010 */  lui         $s7, %hi(D_800FDC50)
/* 000050 8005AB30 3C148010 */  lui         $s4, %hi(D_80100390)
/* 000054 8005AB34 000570C3 */  sra         $t6, $a1, 3
/* 000058 8005AB38 00057940 */  sll         $t7, $a1, 5
/* 00005C 8005AB3C AFAF0044 */  sw          $t7, 0x44($sp)
/* 000060 8005AB40 AFAE0048 */  sw          $t6, 0x48($sp)
/* 000064 8005AB44 26940390 */  addiu       $s4, $s4, %lo(D_80100390)
/* 000068 8005AB48 26F7DC50 */  addiu       $s7, $s7, %lo(D_800FDC50)
/* 00006C 8005AB4C 27DEF8C0 */  addiu       $fp, $fp, %lo(D_8009F8C0)
.L8005AB50:
/* 000070 8005AB50 92F80000 */  lbu         $t8, 0x0($s7)
/* 000074 8005AB54 24010009 */  addiu       $at, $zero, 0x9
/* 000078 8005AB58 97A50072 */  lhu         $a1, 0x72($sp)
/* 00007C 8005AB5C 17010003 */  bne         $t8, $at, .L8005AB6C
/* 000080 8005AB60 02808025 */   move       $s0, $s4
/* 000084 8005AB64 8FD90000 */  lw          $t9, 0x0($fp)
/* 000088 8005AB68 12390023 */  beq         $s1, $t9, .L8005ABF8
.L8005AB6C:
/* 00008C 8005AB6C 24080009 */   addiu      $t0, $zero, 0x9
/* 000090 8005AB70 A2E80000 */  sb          $t0, 0x0($s7)
/* 000094 8005AB74 AFD10000 */  sw          $s1, 0x0($fp)
/* 000098 8005AB78 1A200010 */  blez        $s1, .L8005ABBC
/* 00009C 8005AB7C 00001025 */   move       $v0, $zero
/* 0000A0 8005AB80 32240003 */  andi        $a0, $s1, 0x3
/* 0000A4 8005AB84 10800006 */  beq         $a0, $zero, .L8005ABA0
/* 0000A8 8005AB88 00801825 */   move       $v1, $a0
.L8005AB8C:
/* 0000AC 8005AB8C 24420001 */  addiu       $v0, $v0, 0x1
/* 0000B0 8005AB90 A2000000 */  sb          $zero, 0x0($s0)
/* 0000B4 8005AB94 1462FFFD */  bne         $v1, $v0, .L8005AB8C
/* 0000B8 8005AB98 26100001 */   addiu      $s0, $s0, 0x1
/* 0000BC 8005AB9C 10510007 */  beq         $v0, $s1, .L8005ABBC
.L8005ABA0:
/* 0000C0 8005ABA0 24420004 */   addiu      $v0, $v0, 0x4
/* 0000C4 8005ABA4 A2000000 */  sb          $zero, 0x0($s0)
/* 0000C8 8005ABA8 A2000001 */  sb          $zero, 0x1($s0)
/* 0000CC 8005ABAC A2000002 */  sb          $zero, 0x2($s0)
/* 0000D0 8005ABB0 A2000003 */  sb          $zero, 0x3($s0)
/* 0000D4 8005ABB4 1451FFFA */  bne         $v0, $s1, .L8005ABA0
/* 0000D8 8005ABB8 26100004 */   addiu      $s0, $s0, 0x4
.L8005ABBC:
/* 0000DC 8005ABBC 24090001 */  addiu       $t1, $zero, 0x1
/* 0000E0 8005ABC0 AE89003C */  sw          $t1, 0x3c($s4)
/* 0000E4 8005ABC4 240A00FF */  addiu       $t2, $zero, 0xff
/* 0000E8 8005ABC8 240B0003 */  addiu       $t3, $zero, 0x3
/* 0000EC 8005ABCC 240C0025 */  addiu       $t4, $zero, 0x25
/* 0000F0 8005ABD0 240D0009 */  addiu       $t5, $zero, 0x9
/* 0000F4 8005ABD4 240E00FF */  addiu       $t6, $zero, 0xff
/* 0000F8 8005ABD8 240F00FE */  addiu       $t7, $zero, 0xfe
/* 0000FC 8005ABDC A20A0000 */  sb          $t2, 0x0($s0)
/* 000100 8005ABE0 A20B0001 */  sb          $t3, 0x1($s0)
/* 000104 8005ABE4 A20C0002 */  sb          $t4, 0x2($s0)
/* 000108 8005ABE8 A20D0003 */  sb          $t5, 0x3($s0)
/* 00010C 8005ABEC A20E002A */  sb          $t6, 0x2a($s0)
/* 000110 8005ABF0 10000002 */  b           .L8005ABFC
/* 000114 8005ABF4 A20F002B */   sb         $t7, 0x2b($s0)
.L8005ABF8:
/* 000118 8005ABF8 02918021 */  addu        $s0, $s4, $s1
.L8005ABFC:
/* 00011C 8005ABFC 8FB80048 */  lw          $t8, 0x48($sp)
/* 000120 8005AC00 30A4FFFF */  andi        $a0, $a1, 0xffff
/* 000124 8005AC04 0C0161A8 */  jal         __osContAddressCrc
/* 000128 8005AC08 A2180004 */   sb         $t8, 0x4($s0)
/* 00012C 8005AC0C 8FB90044 */  lw          $t9, 0x44($sp)
/* 000130 8005AC10 24040001 */  addiu       $a0, $zero, 0x1
/* 000134 8005AC14 02802825 */  move        $a1, $s4
/* 000138 8005AC18 00594025 */  or          $t0, $v0, $t9
/* 00013C 8005AC1C 0C016118 */  jal         func_80058460
/* 000140 8005AC20 A2080005 */   sb         $t0, 0x5($s0)
/* 000144 8005AC24 02C02025 */  move        $a0, $s6
/* 000148 8005AC28 00002825 */  move        $a1, $zero
/* 00014C 8005AC2C 0C014554 */  jal         func_80051550
/* 000150 8005AC30 24060001 */   addiu      $a2, $zero, 0x1
/* 000154 8005AC34 00002025 */  move        $a0, $zero
/* 000158 8005AC38 0C016118 */  jal         func_80058460
/* 00015C 8005AC3C 02802825 */   move       $a1, $s4
/* 000160 8005AC40 02C02025 */  move        $a0, $s6
/* 000164 8005AC44 00002825 */  move        $a1, $zero
/* 000168 8005AC48 0C014554 */  jal         func_80051550
/* 00016C 8005AC4C 24060001 */   addiu      $a2, $zero, 0x1
/* 000170 8005AC50 92130002 */  lbu         $s3, 0x2($s0)
/* 000174 8005AC54 26120006 */  addiu       $s2, $s0, 0x6
/* 000178 8005AC58 02402025 */  move        $a0, $s2
/* 00017C 8005AC5C 326900C0 */  andi        $t1, $s3, 0xc0
/* 000180 8005AC60 00099903 */  sra         $s3, $t1, 4
/* 000184 8005AC64 56600014 */  bnel        $s3, $zero, .L8005ACB8
/* 000188 8005AC68 24130001 */   addiu      $s3, $zero, 0x1
/* 00018C 8005AC6C 0C016C0C */  jal         __osVoiceContDataCrc
/* 000190 8005AC70 24050024 */   addiu      $a1, $zero, 0x24
/* 000194 8005AC74 920B002A */  lbu         $t3, 0x2a($s0)
/* 000198 8005AC78 27A60063 */  addiu       $a2, $sp, 0x63
/* 00019C 8005AC7C 02402025 */  move        $a0, $s2
/* 0001A0 8005AC80 11620008 */  beq         $t3, $v0, .L8005ACA4
/* 0001A4 8005AC84 8FA50074 */   lw         $a1, 0x74($sp)
/* 0001A8 8005AC88 02C02025 */  move        $a0, $s6
/* 0001AC 8005AC8C 0C01558C */  jal         func_80055630
/* 0001B0 8005AC90 02202825 */   move       $a1, $s1
/* 0001B4 8005AC94 1440000D */  bne         $v0, $zero, .L8005ACCC
/* 0001B8 8005AC98 00409825 */   move       $s3, $v0
/* 0001BC 8005AC9C 10000006 */  b           .L8005ACB8
/* 0001C0 8005ACA0 24130004 */   addiu      $s3, $zero, 0x4
.L8005ACA4:
/* 0001C4 8005ACA4 0C014984 */  jal         func_80052610
/* 0001C8 8005ACA8 24060024 */   addiu      $a2, $zero, 0x24
/* 0001CC 8005ACAC 10000003 */  b           .L8005ACBC
/* 0001D0 8005ACB0 24010004 */   addiu      $at, $zero, 0x4
/* 0001D4 8005ACB4 24130001 */  addiu       $s3, $zero, 0x1
.L8005ACB8:
/* 0001D8 8005ACB8 24010004 */  addiu       $at, $zero, 0x4
.L8005ACBC:
/* 0001DC 8005ACBC 16610003 */  bne         $s3, $at, .L8005ACCC
/* 0001E0 8005ACC0 2AA20000 */   slti       $v0, $s5, 0x0
/* 0001E4 8005ACC4 1040FFA2 */  beq         $v0, $zero, .L8005AB50
/* 0001E8 8005ACC8 26B5FFFF */   addiu      $s5, $s5, -0x1
.L8005ACCC:
/* 0001EC 8005ACCC 0C01610D */  jal         func_80058434
/* 0001F0 8005ACD0 00000000 */   nop
/* 0001F4 8005ACD4 8FBF003C */  lw          $ra, 0x3c($sp)
/* 0001F8 8005ACD8 02601025 */  move        $v0, $s3
/* 0001FC 8005ACDC 8FB30024 */  lw          $s3, 0x24($sp)
/* 000200 8005ACE0 8FB00018 */  lw          $s0, 0x18($sp)
/* 000204 8005ACE4 8FB1001C */  lw          $s1, 0x1c($sp)
/* 000208 8005ACE8 8FB20020 */  lw          $s2, 0x20($sp)
/* 00020C 8005ACEC 8FB40028 */  lw          $s4, 0x28($sp)
/* 000210 8005ACF0 8FB5002C */  lw          $s5, 0x2c($sp)
/* 000214 8005ACF4 8FB60030 */  lw          $s6, 0x30($sp)
/* 000218 8005ACF8 8FB70034 */  lw          $s7, 0x34($sp)
/* 00021C 8005ACFC 8FBE0038 */  lw          $fp, 0x38($sp)
/* 000220 8005AD00 03E00008 */  jr          $ra
/* 000224 8005AD04 27BD0068 */   addiu      $sp, $sp, 0x68
/* 000228 8005AD08 00000000 */  nop
/* 00022C 8005AD0C 00000000 */  nop
