.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005CF30 # 0
/* 05CAE0 8005CF30 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 05CAE4 8005CF34 AFBF002C */  sw          $ra, 0x2c($sp)
/* 05CAE8 8005CF38 AFB20028 */  sw          $s2, 0x28($sp)
/* 05CAEC 8005CF3C AFB10024 */  sw          $s1, 0x24($sp)
/* 05CAF0 8005CF40 AFB00020 */  sw          $s0, 0x20($sp)
/* 05CAF4 8005CF44 AFA50064 */  sw          $a1, 0x64($sp)
/* 05CAF8 8005CF48 8C910000 */  lw          $s1, 0x0($a0)
/* 05CAFC 8005CF4C 240E0140 */  addiu       $t6, $zero, 0x140
/* 05CB00 8005CF50 00808025 */  move        $s0, $a0
/* 05CB04 8005CF54 00C09025 */  move        $s2, $a2
/* 05CB08 8005CF58 14C00003 */  bne         $a2, $zero, .L8005CF68
/* 05CB0C 8005CF5C A7AE0056 */   sh         $t6, 0x56($sp)
/* 05CB10 8005CF60 1000006B */  b           .L8005D110
/* 05CB14 8005CF64 8FA20070 */   lw         $v0, 0x70($sp)
.L8005CF68:
/* 05CB18 8005CF68 8E0F001C */  lw          $t7, 0x1c($s0)
/* 05CB1C 8005CF6C 8FB80070 */  lw          $t8, 0x70($sp)
/* 05CB20 8005CF70 51E00018 */  beql        $t7, $zero, .L8005CFD4
/* 05CB24 8005CF74 C6020018 */   lwc1       $f2, 0x18($s0)
/* 05CB28 8005CF78 AFB80010 */  sw          $t8, 0x10($sp)
/* 05CB2C 8005CF7C 8E390004 */  lw          $t9, 0x4($s1)
/* 05CB30 8005CF80 02202025 */  move        $a0, $s1
/* 05CB34 8005CF84 27A50056 */  addiu       $a1, $sp, 0x56
/* 05CB38 8005CF88 0320F809 */  jalr        $t9
/* 05CB3C 8005CF8C 02403025 */   move       $a2, $s2
/* 05CB40 8005CF90 87A80056 */  lh          $t0, 0x56($sp)
/* 05CB44 8005CF94 3C0100FF */  lui         $at, 0xff
/* 05CB48 8005CF98 3421FFFF */  ori         $at, $at, 0xffff
/* 05CB4C 8005CF9C 01014824 */  and         $t1, $t0, $at
/* 05CB50 8005CFA0 3C010A00 */  lui         $at, 0xa00
/* 05CB54 8005CFA4 01215025 */  or          $t2, $t1, $at
/* 05CB58 8005CFA8 AC4A0000 */  sw          $t2, 0x0($v0)
/* 05CB5C 8005CFAC 8FAB0064 */  lw          $t3, 0x64($sp)
/* 05CB60 8005CFB0 00127840 */  sll         $t7, $s2, 1
/* 05CB64 8005CFB4 31F8FFFF */  andi        $t8, $t7, 0xffff
/* 05CB68 8005CFB8 856D0000 */  lh          $t5, 0x0($t3)
/* 05CB6C 8005CFBC 24510008 */  addiu       $s1, $v0, 0x8
/* 05CB70 8005CFC0 000D7400 */  sll         $t6, $t5, 16
/* 05CB74 8005CFC4 01D8C825 */  or          $t9, $t6, $t8
/* 05CB78 8005CFC8 10000050 */  b           .L8005D10C
/* 05CB7C 8005CFCC AC590004 */   sw         $t9, 0x4($v0)
/* 05CB80 8005CFD0 C6020018 */  lwc1        $f2, 0x18($s0)
.L8005CFD4:
/* 05CB84 8005CFD4 3C01800B */  lui         $at, %hi(D_800A80A0)
/* 05CB88 8005CFD8 D42480A0 */  ldc1        $f4, %lo(D_800A80A0)($at)
/* 05CB8C 8005CFDC 460011A1 */  cvt.d.s     $f6, $f2
/* 05CB90 8005CFE0 3C01800B */  lui         $at, 0x800b
/* 05CB94 8005CFE4 4626203C */  c.lt.d      $f4, $f6
/* 05CB98 8005CFE8 00000000 */  nop
/* 05CB9C 8005CFEC 45020005 */  bc1fl       .L8005D004
/* 05CBA0 8005CFF0 3C014700 */   lui        $at, %hi(D_46FF80A8)
/* 05CBA4 8005CFF4 C42880A8 */  lwc1        $f8, %lo(D_46FF80A8)($at)
/* 05CBA8 8005CFF8 E6080018 */  swc1        $f8, 0x18($s0)
/* 05CBAC 8005CFFC C6020018 */  lwc1        $f2, 0x18($s0)
/* 05CBB0 8005D000 3C014700 */  lui         $at, 0x4700
.L8005D004:
/* 05CBB4 8005D004 44816000 */  mtc1        $at, $f12
/* 05CBB8 8005D008 02202025 */  move        $a0, $s1
/* 05CBBC 8005D00C 27A50056 */  addiu       $a1, $sp, 0x56
/* 05CBC0 8005D010 460C1282 */  mul.s       $f10, $f2, $f12
/* 05CBC4 8005D014 4600540D */  trunc.w.s   $f16, $f10
/* 05CBC8 8005D018 44098000 */  mfc1        $t1, $f16
/* 05CBCC 8005D01C 44928000 */  mtc1        $s2, $f16
/* 05CBD0 8005D020 44899000 */  mtc1        $t1, $f18
/* 05CBD4 8005D024 00000000 */  nop
/* 05CBD8 8005D028 46809120 */  cvt.s.w     $f4, $f18
/* 05CBDC 8005D02C 468084A0 */  cvt.s.w     $f18, $f16
/* 05CBE0 8005D030 E6040018 */  swc1        $f4, 0x18($s0)
/* 05CBE4 8005D034 C6060018 */  lwc1        $f6, 0x18($s0)
/* 05CBE8 8005D038 460C3203 */  div.s       $f8, $f6, $f12
/* 05CBEC 8005D03C C6060020 */  lwc1        $f6, 0x20($s0)
/* 05CBF0 8005D040 E6080018 */  swc1        $f8, 0x18($s0)
/* 05CBF4 8005D044 C60A0018 */  lwc1        $f10, 0x18($s0)
/* 05CBF8 8005D048 46125102 */  mul.s       $f4, $f10, $f18
/* 05CBFC 8005D04C 46043000 */  add.s       $f0, $f6, $f4
/* 05CC00 8005D050 4600020D */  trunc.w.s   $f8, $f0
/* 05CC04 8005D054 44064000 */  mfc1        $a2, $f8
/* 05CC08 8005D058 00000000 */  nop
/* 05CC0C 8005D05C 44868000 */  mtc1        $a2, $f16
/* 05CC10 8005D060 00000000 */  nop
/* 05CC14 8005D064 468082A0 */  cvt.s.w     $f10, $f16
/* 05CC18 8005D068 460A0481 */  sub.s       $f18, $f0, $f10
/* 05CC1C 8005D06C E6120020 */  swc1        $f18, 0x20($s0)
/* 05CC20 8005D070 8FAB0070 */  lw          $t3, 0x70($sp)
/* 05CC24 8005D074 AFAB0010 */  sw          $t3, 0x10($sp)
/* 05CC28 8005D078 8E390004 */  lw          $t9, 0x4($s1)
/* 05CC2C 8005D07C 0320F809 */  jalr        $t9
/* 05CC30 8005D080 00000000 */   nop
/* 05CC34 8005D084 87AD0056 */  lh          $t5, 0x56($sp)
/* 05CC38 8005D088 3C014700 */  lui         $at, 0x4700
/* 05CC3C 8005D08C 44812000 */  mtc1        $at, $f4
/* 05CC40 8005D090 C6060018 */  lwc1        $f6, 0x18($s0)
/* 05CC44 8005D094 3C010800 */  lui         $at, 0x800
/* 05CC48 8005D098 31AFFFFF */  andi        $t7, $t5, 0xffff
/* 05CC4C 8005D09C 01E17025 */  or          $t6, $t7, $at
/* 05CC50 8005D0A0 AC4E0000 */  sw          $t6, 0x0($v0)
/* 05CC54 8005D0A4 8FB80064 */  lw          $t8, 0x64($sp)
/* 05CC58 8005D0A8 46043202 */  mul.s       $f8, $f6, $f4
/* 05CC5C 8005D0AC 00125840 */  sll         $t3, $s2, 1
/* 05CC60 8005D0B0 87090000 */  lh          $t1, 0x0($t8)
/* 05CC64 8005D0B4 3179FFFF */  andi        $t9, $t3, 0xffff
/* 05CC68 8005D0B8 244D0008 */  addiu       $t5, $v0, 0x8
/* 05CC6C 8005D0BC 00095400 */  sll         $t2, $t1, 16
/* 05CC70 8005D0C0 01596025 */  or          $t4, $t2, $t9
/* 05CC74 8005D0C4 4600440D */  trunc.w.s   $f16, $f8
/* 05CC78 8005D0C8 AC4C0004 */  sw          $t4, 0x4($v0)
/* 05CC7C 8005D0CC AFAD0038 */  sw          $t5, 0x38($sp)
/* 05CC80 8005D0D0 8E0F0024 */  lw          $t7, 0x24($s0)
/* 05CC84 8005D0D4 44038000 */  mfc1        $v1, $f16
/* 05CC88 8005D0D8 3C010500 */  lui         $at, 0x500
/* 05CC8C 8005D0DC 31EE00FF */  andi        $t6, $t7, 0xff
/* 05CC90 8005D0E0 000EC400 */  sll         $t8, $t6, 16
/* 05CC94 8005D0E4 03014025 */  or          $t0, $t8, $at
/* 05CC98 8005D0E8 3069FFFF */  andi        $t1, $v1, 0xffff
/* 05CC9C 8005D0EC 01095825 */  or          $t3, $t0, $t1
/* 05CCA0 8005D0F0 AC4B0008 */  sw          $t3, 0x8($v0)
/* 05CCA4 8005D0F4 8E040014 */  lw          $a0, 0x14($s0)
/* 05CCA8 8005D0F8 0C0143B0 */  jal         osVirtualToPhysical
/* 05CCAC 8005D0FC 24510010 */   addiu      $s1, $v0, 0x10
/* 05CCB0 8005D100 8FAA0038 */  lw          $t2, 0x38($sp)
/* 05CCB4 8005D104 AD420004 */  sw          $v0, 0x4($t2)
/* 05CCB8 8005D108 AE000024 */  sw          $zero, 0x24($s0)
.L8005D10C:
/* 05CCBC 8005D10C 02201025 */  move        $v0, $s1
.L8005D110:
/* 05CCC0 8005D110 8FBF002C */  lw          $ra, 0x2c($sp)
/* 05CCC4 8005D114 8FB00020 */  lw          $s0, 0x20($sp)
/* 05CCC8 8005D118 8FB10024 */  lw          $s1, 0x24($sp)
/* 05CCCC 8005D11C 8FB20028 */  lw          $s2, 0x28($sp)
/* 05CCD0 8005D120 03E00008 */  jr          $ra
/* 05CCD4 8005D124 27BD0060 */   addiu      $sp, $sp, 0x60

glabel func_8005D128 # 1
/* 05CCD8 8005D128 24AEFFFF */  addiu       $t6, $a1, -0x1
/* 05CCDC 8005D12C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 05CCE0 8005D130 2DC10009 */  sltiu       $at, $t6, 0x9
/* 05CCE4 8005D134 AFBF0014 */  sw          $ra, 0x14($sp)
/* 05CCE8 8005D138 1020002B */  beq         $at, $zero, L8005D1E8
/* 05CCEC 8005D13C 00803825 */   move       $a3, $a0
/* 05CCF0 8005D140 000E7080 */  sll         $t6, $t6, 2
/* 05CCF4 8005D144 3C01800B */  lui         $at, %hi(jtbl_800A80AC)
/* 05CCF8 8005D148 002E0821 */  addu        $at, $at, $t6
/* 05CCFC 8005D14C 8C2E80AC */  lw          $t6, %lo(jtbl_800A80AC)($at)
/* 05CD00 8005D150 01C00008 */  jr          $t6
/* 05CD04 8005D154 00000000 */   nop
glabel L8005D158
/* 05CD08 8005D158 10000029 */  b           .L8005D200
/* 05CD0C 8005D15C ACE60000 */   sw         $a2, 0x0($a3)
glabel L8005D160
/* 05CD10 8005D160 8CE40000 */  lw          $a0, 0x0($a3)
/* 05CD14 8005D164 44802000 */  mtc1        $zero, $f4
/* 05CD18 8005D168 240F0001 */  addiu       $t7, $zero, 0x1
/* 05CD1C 8005D16C ACEF0024 */  sw          $t7, 0x24($a3)
/* 05CD20 8005D170 ACE00030 */  sw          $zero, 0x30($a3)
/* 05CD24 8005D174 ACE0001C */  sw          $zero, 0x1c($a3)
/* 05CD28 8005D178 10800021 */  beq         $a0, $zero, .L8005D200
/* 05CD2C 8005D17C E4E40020 */   swc1       $f4, 0x20($a3)
/* 05CD30 8005D180 8C990008 */  lw          $t9, 0x8($a0)
/* 05CD34 8005D184 24050004 */  addiu       $a1, $zero, 0x4
/* 05CD38 8005D188 00003025 */  move        $a2, $zero
/* 05CD3C 8005D18C 0320F809 */  jalr        $t9
/* 05CD40 8005D190 00000000 */   nop
/* 05CD44 8005D194 1000001B */  b           .L8005D204
/* 05CD48 8005D198 8FBF0014 */   lw         $ra, 0x14($sp)
glabel L8005D19C
/* 05CD4C 8005D19C 8CE40000 */  lw          $a0, 0x0($a3)
/* 05CD50 8005D1A0 24180001 */  addiu       $t8, $zero, 0x1
/* 05CD54 8005D1A4 ACF80030 */  sw          $t8, 0x30($a3)
/* 05CD58 8005D1A8 50800016 */  beql        $a0, $zero, .L8005D204
/* 05CD5C 8005D1AC 8FBF0014 */   lw         $ra, 0x14($sp)
/* 05CD60 8005D1B0 8C990008 */  lw          $t9, 0x8($a0)
/* 05CD64 8005D1B4 24050009 */  addiu       $a1, $zero, 0x9
/* 05CD68 8005D1B8 00003025 */  move        $a2, $zero
/* 05CD6C 8005D1BC 0320F809 */  jalr        $t9
/* 05CD70 8005D1C0 00000000 */   nop
/* 05CD74 8005D1C4 1000000F */  b           .L8005D204
/* 05CD78 8005D1C8 8FBF0014 */   lw         $ra, 0x14($sp)
glabel L8005D1CC
/* 05CD7C 8005D1CC AFA6001C */  sw          $a2, 0x1c($sp)
/* 05CD80 8005D1D0 C7A6001C */  lwc1        $f6, 0x1c($sp)
/* 05CD84 8005D1D4 1000000A */  b           .L8005D200
/* 05CD88 8005D1D8 E4E60018 */   swc1       $f6, 0x18($a3)
glabel L8005D1DC
/* 05CD8C 8005D1DC 24080001 */  addiu       $t0, $zero, 0x1
/* 05CD90 8005D1E0 10000007 */  b           .L8005D200
/* 05CD94 8005D1E4 ACE8001C */   sw         $t0, 0x1c($a3)
glabel L8005D1E8
/* 05CD98 8005D1E8 8CE40000 */  lw          $a0, 0x0($a3)
/* 05CD9C 8005D1EC 50800005 */  beql        $a0, $zero, .L8005D204
/* 05CDA0 8005D1F0 8FBF0014 */   lw         $ra, 0x14($sp)
/* 05CDA4 8005D1F4 8C990008 */  lw          $t9, 0x8($a0)
/* 05CDA8 8005D1F8 0320F809 */  jalr        $t9
/* 05CDAC 8005D1FC 00000000 */   nop
.L8005D200:
/* 05CDB0 8005D200 8FBF0014 */  lw          $ra, 0x14($sp)
.L8005D204:
/* 05CDB4 8005D204 27BD0028 */  addiu       $sp, $sp, 0x28
/* 05CDB8 8005D208 00001025 */  move        $v0, $zero
/* 05CDBC 8005D20C 03E00008 */  jr          $ra
/* 05CDC0 8005D210 00000000 */   nop
/* 05CDC4 8005D214 00000000 */  nop
/* 05CDC8 8005D218 00000000 */  nop
/* 05CDCC 8005D21C 00000000 */  nop
