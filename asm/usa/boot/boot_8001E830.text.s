.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8001E830 # 0
/* 000000 8001E830 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 000004 8001E834 AFBF003C */  sw          $ra, 0x3c($sp)
/* 000008 8001E838 AFB60038 */  sw          $s6, 0x38($sp)
/* 00000C 8001E83C AFB50034 */  sw          $s5, 0x34($sp)
/* 000010 8001E840 AFB40030 */  sw          $s4, 0x30($sp)
/* 000014 8001E844 AFB3002C */  sw          $s3, 0x2c($sp)
/* 000018 8001E848 AFB20028 */  sw          $s2, 0x28($sp)
/* 00001C 8001E84C AFB10024 */  sw          $s1, 0x24($sp)
/* 000020 8001E850 AFB00020 */  sw          $s0, 0x20($sp)
/* 000024 8001E854 44800000 */  mtc1        $zero, $f0
/* 000028 8001E858 C4840000 */  lwc1        $f4, 0x0($a0)
/* 00002C 8001E85C 0080B025 */  move        $s6, $a0
/* 000030 8001E860 46040032 */  c.eq.s      $f0, $f4
/* 000034 8001E864 00000000 */  nop
/* 000038 8001E868 4501000C */  bc1t        .L8001E89C
/* 00003C 8001E86C 00000000 */   nop
/* 000040 8001E870 C4860004 */  lwc1        $f6, 0x4($a0)
/* 000044 8001E874 46060032 */  c.eq.s      $f0, $f6
/* 000048 8001E878 00000000 */  nop
/* 00004C 8001E87C 45010007 */  bc1t        .L8001E89C
/* 000050 8001E880 00000000 */   nop
/* 000054 8001E884 C4880008 */  lwc1        $f8, 0x8($a0)
/* 000058 8001E888 3C014000 */  lui         $at, 0x4000
/* 00005C 8001E88C 46080032 */  c.eq.s      $f0, $f8
/* 000060 8001E890 00000000 */  nop
/* 000064 8001E894 45020004 */  bc1fl       .L8001E8A8
/* 000068 8001E898 C6CA0024 */   lwc1       $f10, 0x24($s6)
.L8001E89C:
/* 00006C 8001E89C 1000006C */  b           .L8001EA50
/* 000070 8001E8A0 00001025 */   move       $v0, $zero
/* 000074 8001E8A4 C6CA0024 */  lwc1        $f10, 0x24($s6)
.L8001E8A8:
/* 000078 8001E8A8 44818000 */  mtc1        $at, $f16
/* 00007C 8001E8AC 27B50050 */  addiu       $s5, $sp, 0x50
/* 000080 8001E8B0 02A03025 */  move        $a2, $s5
/* 000084 8001E8B4 46105302 */  mul.s       $f12, $f10, $f16
/* 000088 8001E8B8 0C0433FE */  jal         func_8010CFF8
/* 00008C 8001E8BC 26C50044 */   addiu      $a1, $s6, 0x44
/* 000090 8001E8C0 10400003 */  beq         $v0, $zero, .L8001E8D0
/* 000094 8001E8C4 3C0E800F */   lui        $t6, %hi(D_800EF724)
/* 000098 8001E8C8 10000002 */  b           .L8001E8D4
/* 00009C 8001E8CC 24140004 */   addiu      $s4, $zero, 0x4
.L8001E8D0:
/* 0000A0 8001E8D0 0000A025 */  move        $s4, $zero
.L8001E8D4:
/* 0000A4 8001E8D4 8DCEF724 */  lw          $t6, %lo(D_800EF724)($t6)
/* 0000A8 8001E8D8 8ECF0038 */  lw          $t7, 0x38($s6)
/* 0000AC 8001E8DC 36980003 */  ori         $t8, $s4, 0x3
/* 0000B0 8001E8E0 15CF0003 */  bne         $t6, $t7, .L8001E8F0
/* 0000B4 8001E8E4 00000000 */   nop
/* 0000B8 8001E8E8 10000030 */  b           .L8001E9AC
/* 0000BC 8001E8EC 0300A025 */   move       $s4, $t8
.L8001E8F0:
/* 0000C0 8001E8F0 16800003 */  bne         $s4, $zero, .L8001E900
/* 0000C4 8001E8F4 00008025 */   move       $s0, $zero
/* 0000C8 8001E8F8 10000055 */  b           .L8001EA50
/* 0000CC 8001E8FC 00001025 */   move       $v0, $zero
.L8001E900:
/* 0000D0 8001E900 3C118009 */  lui         $s1, %hi(D_80088C88)
/* 0000D4 8001E904 3C12800A */  lui         $s2, %hi(D_800A4780)
/* 0000D8 8001E908 26524780 */  addiu       $s2, $s2, %lo(D_800A4780)
/* 0000DC 8001E90C 26318C88 */  addiu       $s1, $s1, %lo(D_80088C88)
/* 0000E0 8001E910 24130002 */  addiu       $s3, $zero, 0x2
.L8001E914:
/* 0000E4 8001E914 8E210000 */  lw          $at, 0x0($s1)
/* 0000E8 8001E918 AFA10000 */  sw          $at, 0x0($sp)
/* 0000EC 8001E91C 8E280004 */  lw          $t0, 0x4($s1)
/* 0000F0 8001E920 8FA40000 */  lw          $a0, 0x0($sp)
/* 0000F4 8001E924 AFA80004 */  sw          $t0, 0x4($sp)
/* 0000F8 8001E928 8E210008 */  lw          $at, 0x8($s1)
/* 0000FC 8001E92C 8FA50004 */  lw          $a1, 0x4($sp)
/* 000100 8001E930 AFA10008 */  sw          $at, 0x8($sp)
/* 000104 8001E934 8E27000C */  lw          $a3, 0xc($s1)
/* 000108 8001E938 8FA60008 */  lw          $a2, 0x8($sp)
/* 00010C 8001E93C AFA7000C */  sw          $a3, 0xc($sp)
/* 000110 8001E940 8E210010 */  lw          $at, 0x10($s1)
/* 000114 8001E944 AFB50014 */  sw          $s5, 0x14($sp)
/* 000118 8001E948 0C000932 */  jal         func_800024C8
/* 00011C 8001E94C AFA10010 */   sw         $at, 0x10($sp)
/* 000120 8001E950 10400004 */  beq         $v0, $zero, .L8001E964
/* 000124 8001E954 00104880 */   sll        $t1, $s0, 2
/* 000128 8001E958 02495021 */  addu        $t2, $s2, $t1
/* 00012C 8001E95C 8D4B0000 */  lw          $t3, 0x0($t2)
/* 000130 8001E960 028BA025 */  or          $s4, $s4, $t3
.L8001E964:
/* 000134 8001E964 26100001 */  addiu       $s0, $s0, 0x1
/* 000138 8001E968 1613FFEA */  bne         $s0, $s3, .L8001E914
/* 00013C 8001E96C 26310014 */   addiu      $s1, $s1, 0x14
/* 000140 8001E970 328C0002 */  andi        $t4, $s4, 0x2
/* 000144 8001E974 1180000D */  beq         $t4, $zero, .L8001E9AC
/* 000148 8001E978 3C014140 */   lui        $at, 0x4140
/* 00014C 8001E97C 44819000 */  mtc1        $at, $f18
/* 000150 8001E980 3C01800F */  lui         $at, %hi(D_800EF6A4)
/* 000154 8001E984 C426F6A4 */  lwc1        $f6, %lo(D_800EF6A4)($at)
/* 000158 8001E988 C6C40048 */  lwc1        $f4, 0x48($s6)
/* 00015C 8001E98C 2401FFFD */  addiu       $at, $zero, -0x3
/* 000160 8001E990 02816824 */  and         $t5, $s4, $at
/* 000164 8001E994 46062201 */  sub.s       $f8, $f4, $f6
/* 000168 8001E998 4608903C */  c.lt.s      $f18, $f8
/* 00016C 8001E99C 00000000 */  nop
/* 000170 8001E9A0 45000002 */  bc1f        .L8001E9AC
/* 000174 8001E9A4 00000000 */   nop
/* 000178 8001E9A8 35B40001 */  ori         $s4, $t5, 0x1
.L8001E9AC:
/* 00017C 8001E9AC 3C0F8007 */  lui         $t7, %hi(D_800760A8)
/* 000180 8001E9B0 8DEF60A8 */  lw          $t7, %lo(D_800760A8)($t7)
/* 000184 8001E9B4 32980003 */  andi        $t8, $s4, 0x3
/* 000188 8001E9B8 52CF0025 */  beql        $s6, $t7, .L8001EA50
/* 00018C 8001E9BC 02801025 */   move       $v0, $s4
/* 000190 8001E9C0 13000022 */  beq         $t8, $zero, .L8001EA4C
/* 000194 8001E9C4 3C19800F */   lui        $t9, %hi(D_800EF724)
/* 000198 8001E9C8 8F39F724 */  lw          $t9, %lo(D_800EF724)($t9)
/* 00019C 8001E9CC 8EC80038 */  lw          $t0, 0x38($s6)
/* 0001A0 8001E9D0 3C02800B */  lui         $v0, %hi(D_800B6C50)
/* 0001A4 8001E9D4 24426C50 */  addiu       $v0, $v0, %lo(D_800B6C50)
/* 0001A8 8001E9D8 17280005 */  bne         $t9, $t0, .L8001E9F0
/* 0001AC 8001E9DC C7A00050 */   lwc1       $f0, 0x50($sp)
/* 0001B0 8001E9E0 3C01CF00 */  lui         $at, 0xcf00
/* 0001B4 8001E9E4 44811000 */  mtc1        $at, $f2
/* 0001B8 8001E9E8 1000000E */  b           .L8001EA24
/* 0001BC 8001E9EC C44A0000 */   lwc1       $f10, 0x0($v0)
.L8001E9F0:
/* 0001C0 8001E9F0 3C014248 */  lui         $at, 0x4248
/* 0001C4 8001E9F4 44815000 */  mtc1        $at, $f10
/* 0001C8 8001E9F8 46000305 */  abs.s       $f12, $f0
/* 0001CC 8001E9FC C7A00054 */  lwc1        $f0, 0x54($sp)
/* 0001D0 8001EA00 460A6402 */  mul.s       $f16, $f12, $f10
/* 0001D4 8001EA04 3C014220 */  lui         $at, 0x4220
/* 0001D8 8001EA08 44819000 */  mtc1        $at, $f18
/* 0001DC 8001EA0C 46000005 */  abs.s       $f0, $f0
/* 0001E0 8001EA10 C7A40058 */  lwc1        $f4, 0x58($sp)
/* 0001E4 8001EA14 46120202 */  mul.s       $f8, $f0, $f18
/* 0001E8 8001EA18 46048181 */  sub.s       $f6, $f16, $f4
/* 0001EC 8001EA1C 46064080 */  add.s       $f2, $f8, $f6
/* 0001F0 8001EA20 C44A0000 */  lwc1        $f10, 0x0($v0)
.L8001EA24:
/* 0001F4 8001EA24 3C01800B */  lui         $at, %hi(D_800B6C58)
/* 0001F8 8001EA28 460A103C */  c.lt.s      $f2, $f10
/* 0001FC 8001EA2C 00000000 */  nop
/* 000200 8001EA30 45020007 */  bc1fl       .L8001EA50
/* 000204 8001EA34 02801025 */   move       $v0, $s4
/* 000208 8001EA38 AC346C58 */  sw          $s4, %lo(D_800B6C58)($at)
/* 00020C 8001EA3C 8EC90038 */  lw          $t1, 0x38($s6)
/* 000210 8001EA40 3C01800B */  lui         $at, %hi(D_800B6C54)
/* 000214 8001EA44 AC296C54 */  sw          $t1, %lo(D_800B6C54)($at)
/* 000218 8001EA48 E4420000 */  swc1        $f2, 0x0($v0)
.L8001EA4C:
/* 00021C 8001EA4C 02801025 */  move        $v0, $s4
.L8001EA50:
/* 000220 8001EA50 8FBF003C */  lw          $ra, 0x3c($sp)
/* 000224 8001EA54 8FB00020 */  lw          $s0, 0x20($sp)
/* 000228 8001EA58 8FB10024 */  lw          $s1, 0x24($sp)
/* 00022C 8001EA5C 8FB20028 */  lw          $s2, 0x28($sp)
/* 000230 8001EA60 8FB3002C */  lw          $s3, 0x2c($sp)
/* 000234 8001EA64 8FB40030 */  lw          $s4, 0x30($sp)
/* 000238 8001EA68 8FB50034 */  lw          $s5, 0x34($sp)
/* 00023C 8001EA6C 8FB60038 */  lw          $s6, 0x38($sp)
/* 000240 8001EA70 03E00008 */  jr          $ra
/* 000244 8001EA74 27BD0068 */   addiu      $sp, $sp, 0x68

glabel func_8001EA78 # 1
/* 000248 8001EA78 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00024C 8001EA7C AFBF0014 */  sw          $ra, 0x14($sp)
/* 000250 8001EA80 3C048009 */  lui         $a0, %hi(D_80088C50)
/* 000254 8001EA84 0C002114 */  jal         func_80008450
/* 000258 8001EA88 24848C50 */   addiu      $a0, $a0, %lo(D_80088C50)
/* 00025C 8001EA8C AFA2001C */  sw          $v0, 0x1c($sp)
/* 000260 8001EA90 0C00219D */  jal         func_80008674
/* 000264 8001EA94 00402025 */   move       $a0, $v0
/* 000268 8001EA98 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00026C 8001EA9C 8FA2001C */  lw          $v0, 0x1c($sp)
/* 000270 8001EAA0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 000274 8001EAA4 03E00008 */  jr          $ra
/* 000278 8001EAA8 00000000 */   nop

glabel func_8001EAAC # 2
/* 00027C 8001EAAC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000280 8001EAB0 AFA40018 */  sw          $a0, 0x18($sp)
/* 000284 8001EAB4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000288 8001EAB8 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 00028C 8001EABC 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 000290 8001EAC0 24050050 */  addiu       $a1, $zero, 0x50
/* 000294 8001EAC4 0C00E03D */  jal         func_800380F4
/* 000298 8001EAC8 24060142 */   addiu      $a2, $zero, 0x142
/* 00029C 8001EACC AC400000 */  sw          $zero, 0x0($v0)
/* 0002A0 8001EAD0 3C01800B */  lui         $at, %hi(D_800B6C5C)
/* 0002A4 8001EAD4 AC206C5C */  sw          $zero, %lo(D_800B6C5C)($at)
/* 0002A8 8001EAD8 AC400004 */  sw          $zero, 0x4($v0)
/* 0002AC 8001EADC 8FAE0018 */  lw          $t6, 0x18($sp)
/* 0002B0 8001EAE0 ADC20054 */  sw          $v0, 0x54($t6)
/* 0002B4 8001EAE4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0002B8 8001EAE8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0002BC 8001EAEC 03E00008 */  jr          $ra
/* 0002C0 8001EAF0 00000000 */   nop

glabel func_8001EAF4 # 3
/* 0002C4 8001EAF4 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 0002C8 8001EAF8 AFB2001C */  sw          $s2, 0x1c($sp)
/* 0002CC 8001EAFC AFBF0024 */  sw          $ra, 0x24($sp)
/* 0002D0 8001EB00 AFB30020 */  sw          $s3, 0x20($sp)
/* 0002D4 8001EB04 AFB10018 */  sw          $s1, 0x18($sp)
/* 0002D8 8001EB08 AFB00014 */  sw          $s0, 0x14($sp)
/* 0002DC 8001EB0C 00809025 */  move        $s2, $a0
/* 0002E0 8001EB10 8C900054 */  lw          $s0, 0x54($a0)
/* 0002E4 8001EB14 3C04800B */  lui         $a0, 0x800b
/* 0002E8 8001EB18 0C0462B3 */  jal         func_80118ACC
/* 0002EC 8001EB1C 8C846C54 */   lw         $a0, 0x6c54($a0)
/* 0002F0 8001EB20 3C04800F */  lui         $a0, %hi(D_800EF6A0)
/* 0002F4 8001EB24 3C06800B */  lui         $a2, %hi(D_800B6C58)
/* 0002F8 8001EB28 00409825 */  move        $s3, $v0
/* 0002FC 8001EB2C 8CC66C58 */  lw          $a2, %lo(D_800B6C58)($a2)
/* 000300 8001EB30 2484F6A0 */  addiu       $a0, $a0, %lo(D_800EF6A0)
/* 000304 8001EB34 0C0445E1 */  jal         func_80111784
/* 000308 8001EB38 00402825 */   move       $a1, $v0
/* 00030C 8001EB3C 1660000F */  bne         $s3, $zero, .L8001EB7C
/* 000310 8001EB40 AFA2005C */   sw         $v0, 0x5c($sp)
/* 000314 8001EB44 8E0E0000 */  lw          $t6, 0x0($s0)
/* 000318 8001EB48 51C0000D */  beql        $t6, $zero, .L8001EB80
/* 00031C 8001EB4C 8FB9005C */   lw         $t9, 0x5c($sp)
/* 000320 8001EB50 0C0462B3 */  jal         func_80118ACC
/* 000324 8001EB54 8E040004 */   lw         $a0, 0x4($s0)
/* 000328 8001EB58 10400007 */  beq         $v0, $zero, .L8001EB78
/* 00032C 8001EB5C 00409825 */   move       $s3, $v0
/* 000330 8001EB60 240F0001 */  addiu       $t7, $zero, 0x1
/* 000334 8001EB64 AFAF005C */  sw          $t7, 0x5c($sp)
/* 000338 8001EB68 8E180004 */  lw          $t8, 0x4($s0)
/* 00033C 8001EB6C 3C01800B */  lui         $at, %hi(D_800B6C54)
/* 000340 8001EB70 10000002 */  b           .L8001EB7C
/* 000344 8001EB74 AC386C54 */   sw         $t8, %lo(D_800B6C54)($at)
.L8001EB78:
/* 000348 8001EB78 AFA0005C */  sw          $zero, 0x5c($sp)
.L8001EB7C:
/* 00034C 8001EB7C 8FB9005C */  lw          $t9, 0x5c($sp)
.L8001EB80:
/* 000350 8001EB80 132000DE */  beq         $t9, $zero, .L8001EEFC
/* 000354 8001EB84 00000000 */   nop
/* 000358 8001EB88 126000DC */  beq         $s3, $zero, .L8001EEFC
/* 00035C 8001EB8C 00000000 */   nop
/* 000360 8001EB90 8E080000 */  lw          $t0, 0x0($s0)
/* 000364 8001EB94 8FAB005C */  lw          $t3, 0x5c($sp)
/* 000368 8001EB98 3C09800B */  lui         $t1, %hi(D_800B6C54)
/* 00036C 8001EB9C 17280004 */  bne         $t9, $t0, .L8001EBB0
/* 000370 8001EBA0 000B60C0 */   sll        $t4, $t3, 3
/* 000374 8001EBA4 8D296C54 */  lw          $t1, %lo(D_800B6C54)($t1)
/* 000378 8001EBA8 8E0A0004 */  lw          $t2, 0x4($s0)
/* 00037C 8001EBAC 112A0039 */  beq         $t1, $t2, .L8001EC94
.L8001EBB0:
/* 000380 8001EBB0 018B6021 */   addu       $t4, $t4, $t3
/* 000384 8001EBB4 3C0D8009 */  lui         $t5, %hi(D_80088CB0)
/* 000388 8001EBB8 25AD8CB0 */  addiu       $t5, $t5, %lo(D_80088CB0)
/* 00038C 8001EBBC 000C6080 */  sll         $t4, $t4, 2
/* 000390 8001EBC0 018D8821 */  addu        $s1, $t4, $t5
/* 000394 8001EBC4 8E2E0000 */  lw          $t6, 0x0($s1)
/* 000398 8001EBC8 3C058007 */  lui         $a1, %hi(D_8006B090)
/* 00039C 8001EBCC 26040008 */  addiu       $a0, $s0, 0x8
/* 0003A0 8001EBD0 000E7880 */  sll         $t7, $t6, 2
/* 0003A4 8001EBD4 00AF2821 */  addu        $a1, $a1, $t7
/* 0003A8 8001EBD8 0C002973 */  jal         func_8000A5CC
/* 0003AC 8001EBDC 8CA5B090 */   lw         $a1, %lo(D_8006B090)($a1)
/* 0003B0 8001EBE0 8E380004 */  lw          $t8, 0x4($s1)
/* 0003B4 8001EBE4 3C058007 */  lui         $a1, %hi(D_8006B4B0)
/* 0003B8 8001EBE8 26040014 */  addiu       $a0, $s0, 0x14
/* 0003BC 8001EBEC 0018C880 */  sll         $t9, $t8, 2
/* 0003C0 8001EBF0 00B92821 */  addu        $a1, $a1, $t9
/* 0003C4 8001EBF4 0C002973 */  jal         func_8000A5CC
/* 0003C8 8001EBF8 8CA5B4B0 */   lw         $a1, %lo(D_8006B4B0)($a1)
/* 0003CC 8001EBFC 8E280008 */  lw          $t0, 0x8($s1)
/* 0003D0 8001EC00 3C058007 */  lui         $a1, %hi(D_8006B4EC)
/* 0003D4 8001EC04 26040020 */  addiu       $a0, $s0, 0x20
/* 0003D8 8001EC08 00084880 */  sll         $t1, $t0, 2
/* 0003DC 8001EC0C 00A92821 */  addu        $a1, $a1, $t1
/* 0003E0 8001EC10 0C002973 */  jal         func_8000A5CC
/* 0003E4 8001EC14 8CA5B4EC */   lw         $a1, %lo(D_8006B4EC)($a1)
/* 0003E8 8001EC18 8E2A000C */  lw          $t2, 0xc($s1)
/* 0003EC 8001EC1C 3C058007 */  lui         $a1, %hi(D_8006B4EC)
/* 0003F0 8001EC20 2604002C */  addiu       $a0, $s0, 0x2c
/* 0003F4 8001EC24 000A5880 */  sll         $t3, $t2, 2
/* 0003F8 8001EC28 00AB2821 */  addu        $a1, $a1, $t3
/* 0003FC 8001EC2C 0C002973 */  jal         func_8000A5CC
/* 000400 8001EC30 8CA5B4EC */   lw         $a1, %lo(D_8006B4EC)($a1)
/* 000404 8001EC34 8E2C0010 */  lw          $t4, 0x10($s1)
/* 000408 8001EC38 3C058007 */  lui         $a1, %hi(D_8006B4EC)
/* 00040C 8001EC3C 26040038 */  addiu       $a0, $s0, 0x38
/* 000410 8001EC40 000C6880 */  sll         $t5, $t4, 2
/* 000414 8001EC44 00AD2821 */  addu        $a1, $a1, $t5
/* 000418 8001EC48 0C002973 */  jal         func_8000A5CC
/* 00041C 8001EC4C 8CA5B4EC */   lw         $a1, %lo(D_8006B4EC)($a1)
/* 000420 8001EC50 8E2E0014 */  lw          $t6, 0x14($s1)
/* 000424 8001EC54 3C058007 */  lui         $a1, %hi(D_8006B4EC)
/* 000428 8001EC58 26040044 */  addiu       $a0, $s0, 0x44
/* 00042C 8001EC5C 000E7880 */  sll         $t7, $t6, 2
/* 000430 8001EC60 00AF2821 */  addu        $a1, $a1, $t7
/* 000434 8001EC64 0C002973 */  jal         func_8000A5CC
/* 000438 8001EC68 8CA5B4EC */   lw         $a1, %lo(D_8006B4EC)($a1)
/* 00043C 8001EC6C 0C007F92 */  jal         func_8001FE48
/* 000440 8001EC70 8E240018 */   lw         $a0, 0x18($s1)
/* 000444 8001EC74 8E380000 */  lw          $t8, 0x0($s1)
/* 000448 8001EC78 3C038009 */  lui         $v1, %hi(D_80088CB0)
/* 00044C 8001EC7C 24638CB0 */  addiu       $v1, $v1, %lo(D_80088CB0)
/* 000450 8001EC80 AC780024 */  sw          $t8, 0x24($v1)
/* 000454 8001EC84 C624001C */  lwc1        $f4, 0x1c($s1)
/* 000458 8001EC88 E4640040 */  swc1        $f4, 0x40($v1)
/* 00045C 8001EC8C C6260020 */  lwc1        $f6, 0x20($s1)
/* 000460 8001EC90 E4660044 */  swc1        $f6, 0x44($v1)
.L8001EC94:
/* 000464 8001EC94 8FB9005C */  lw          $t9, 0x5c($sp)
/* 000468 8001EC98 3C098009 */  lui         $t1, %hi(D_80088CB0)
/* 00046C 8001EC9C 25298CB0 */  addiu       $t1, $t1, %lo(D_80088CB0)
/* 000470 8001ECA0 001940C0 */  sll         $t0, $t9, 3
/* 000474 8001ECA4 01194021 */  addu        $t0, $t0, $t9
/* 000478 8001ECA8 00084080 */  sll         $t0, $t0, 2
/* 00047C 8001ECAC 3C06800B */  lui         $a2, %hi(D_800AE4E4)
/* 000480 8001ECB0 260A0014 */  addiu       $t2, $s0, 0x14
/* 000484 8001ECB4 260B0020 */  addiu       $t3, $s0, 0x20
/* 000488 8001ECB8 260C002C */  addiu       $t4, $s0, 0x2c
/* 00048C 8001ECBC 260D0038 */  addiu       $t5, $s0, 0x38
/* 000490 8001ECC0 260E0044 */  addiu       $t6, $s0, 0x44
/* 000494 8001ECC4 AFAE002C */  sw          $t6, 0x2c($sp)
/* 000498 8001ECC8 AFAD0030 */  sw          $t5, 0x30($sp)
/* 00049C 8001ECCC AFAC0034 */  sw          $t4, 0x34($sp)
/* 0004A0 8001ECD0 AFAB0038 */  sw          $t3, 0x38($sp)
/* 0004A4 8001ECD4 AFAA003C */  sw          $t2, 0x3c($sp)
/* 0004A8 8001ECD8 8CC6E4E4 */  lw          $a2, %lo(D_800AE4E4)($a2)
/* 0004AC 8001ECDC 01098821 */  addu        $s1, $t0, $t1
/* 0004B0 8001ECE0 26040008 */  addiu       $a0, $s0, 0x8
/* 0004B4 8001ECE4 0C002980 */  jal         func_8000A600
/* 0004B8 8001ECE8 27A5004C */   addiu      $a1, $sp, 0x4c
/* 0004BC 8001ECEC 3C06800B */  lui         $a2, %hi(D_800AE4E4)
/* 0004C0 8001ECF0 8CC6E4E4 */  lw          $a2, %lo(D_800AE4E4)($a2)
/* 0004C4 8001ECF4 8FA4003C */  lw          $a0, 0x3c($sp)
/* 0004C8 8001ECF8 0C002980 */  jal         func_8000A600
/* 0004CC 8001ECFC 27A5004C */   addiu      $a1, $sp, 0x4c
/* 0004D0 8001ED00 3C06800B */  lui         $a2, %hi(D_800AE4E4)
/* 0004D4 8001ED04 8CC6E4E4 */  lw          $a2, %lo(D_800AE4E4)($a2)
/* 0004D8 8001ED08 8FA40038 */  lw          $a0, 0x38($sp)
/* 0004DC 8001ED0C 0C002980 */  jal         func_8000A600
/* 0004E0 8001ED10 27A5004C */   addiu      $a1, $sp, 0x4c
/* 0004E4 8001ED14 3C06800B */  lui         $a2, %hi(D_800AE4E4)
/* 0004E8 8001ED18 8CC6E4E4 */  lw          $a2, %lo(D_800AE4E4)($a2)
/* 0004EC 8001ED1C 8FA40034 */  lw          $a0, 0x34($sp)
/* 0004F0 8001ED20 0C002980 */  jal         func_8000A600
/* 0004F4 8001ED24 27A5004C */   addiu      $a1, $sp, 0x4c
/* 0004F8 8001ED28 3C06800B */  lui         $a2, %hi(D_800AE4E4)
/* 0004FC 8001ED2C 8CC6E4E4 */  lw          $a2, %lo(D_800AE4E4)($a2)
/* 000500 8001ED30 8FA40030 */  lw          $a0, 0x30($sp)
/* 000504 8001ED34 0C002980 */  jal         func_8000A600
/* 000508 8001ED38 27A5004C */   addiu      $a1, $sp, 0x4c
/* 00050C 8001ED3C 3C06800B */  lui         $a2, %hi(D_800AE4E4)
/* 000510 8001ED40 8CC6E4E4 */  lw          $a2, %lo(D_800AE4E4)($a2)
/* 000514 8001ED44 8FA4002C */  lw          $a0, 0x2c($sp)
/* 000518 8001ED48 0C002980 */  jal         func_8000A600
/* 00051C 8001ED4C 27A5004C */   addiu      $a1, $sp, 0x4c
/* 000520 8001ED50 C6680044 */  lwc1        $f8, 0x44($s3)
/* 000524 8001ED54 02402025 */  move        $a0, $s2
/* 000528 8001ED58 E6480018 */  swc1        $f8, 0x18($s2)
/* 00052C 8001ED5C C66A0048 */  lwc1        $f10, 0x48($s3)
/* 000530 8001ED60 C6520018 */  lwc1        $f18, 0x18($s2)
/* 000534 8001ED64 E64A001C */  swc1        $f10, 0x1c($s2)
/* 000538 8001ED68 C670004C */  lwc1        $f16, 0x4c($s3)
/* 00053C 8001ED6C C644001C */  lwc1        $f4, 0x1c($s2)
/* 000540 8001ED70 E6520044 */  swc1        $f18, 0x44($s2)
/* 000544 8001ED74 E6500020 */  swc1        $f16, 0x20($s2)
/* 000548 8001ED78 C6460020 */  lwc1        $f6, 0x20($s2)
/* 00054C 8001ED7C E6440048 */  swc1        $f4, 0x48($s2)
/* 000550 8001ED80 0C0026AE */  jal         func_80009AB8
/* 000554 8001ED84 E646004C */   swc1       $f6, 0x4c($s2)
/* 000558 8001ED88 860F004C */  lh          $t7, 0x4c($s0)
/* 00055C 8001ED8C 3C01800A */  lui         $at, %hi(D_800A47A8)
/* 000560 8001ED90 C42247A8 */  lwc1        $f2, %lo(D_800A47A8)($at)
/* 000564 8001ED94 448F4000 */  mtc1        $t7, $f8
/* 000568 8001ED98 C6400000 */  lwc1        $f0, 0x0($s2)
/* 00056C 8001ED9C 24010086 */  addiu       $at, $zero, 0x86
/* 000570 8001EDA0 468042A0 */  cvt.s.w     $f10, $f8
/* 000574 8001EDA4 46025402 */  mul.s       $f16, $f10, $f2
/* 000578 8001EDA8 00000000 */  nop
/* 00057C 8001EDAC 46100482 */  mul.s       $f18, $f0, $f16
/* 000580 8001EDB0 E6520004 */  swc1        $f18, 0x4($s2)
/* 000584 8001EDB4 86180040 */  lh          $t8, 0x40($s0)
/* 000588 8001EDB8 44982000 */  mtc1        $t8, $f4
/* 00058C 8001EDBC 00000000 */  nop
/* 000590 8001EDC0 468021A0 */  cvt.s.w     $f6, $f4
/* 000594 8001EDC4 46023202 */  mul.s       $f8, $f6, $f2
/* 000598 8001EDC8 00000000 */  nop
/* 00059C 8001EDCC 46080282 */  mul.s       $f10, $f0, $f8
/* 0005A0 8001EDD0 E64A0008 */  swc1        $f10, 0x8($s2)
/* 0005A4 8001EDD4 96640034 */  lhu         $a0, 0x34($s3)
/* 0005A8 8001EDD8 14810018 */  bne         $a0, $at, .L8001EE3C
/* 0005AC 8001EDDC 00000000 */   nop
/* 0005B0 8001EDE0 44808000 */  mtc1        $zero, $f16
/* 0005B4 8001EDE4 8E620054 */  lw          $v0, 0x54($s3)
/* 0005B8 8001EDE8 24040074 */  addiu       $a0, $zero, 0x74
/* 0005BC 8001EDEC E7B00050 */  swc1        $f16, 0x50($sp)
/* 0005C0 8001EDF0 84590004 */  lh          $t9, 0x4($v0)
/* 0005C4 8001EDF4 3C038012 */  lui         $v1, %hi(D_80125A40)
/* 0005C8 8001EDF8 24635A40 */  addiu       $v1, $v1, %lo(D_80125A40)
/* 0005CC 8001EDFC 03240019 */  multu       $t9, $a0
/* 0005D0 8001EE00 C6720004 */  lwc1        $f18, 0x4($s3)
/* 0005D4 8001EE04 00004012 */  mflo        $t0
/* 0005D8 8001EE08 00684821 */  addu        $t1, $v1, $t0
/* 0005DC 8001EE0C C5240038 */  lwc1        $f4, 0x38($t1)
/* 0005E0 8001EE10 46049182 */  mul.s       $f6, $f18, $f4
/* 0005E4 8001EE14 E7A60054 */  swc1        $f6, 0x54($sp)
/* 0005E8 8001EE18 844A0004 */  lh          $t2, 0x4($v0)
/* 0005EC 8001EE1C C6680008 */  lwc1        $f8, 0x8($s3)
/* 0005F0 8001EE20 01440019 */  multu       $t2, $a0
/* 0005F4 8001EE24 00005812 */  mflo        $t3
/* 0005F8 8001EE28 006B6021 */  addu        $t4, $v1, $t3
/* 0005FC 8001EE2C C58A0034 */  lwc1        $f10, 0x34($t4)
/* 000600 8001EE30 460A4402 */  mul.s       $f16, $f8, $f10
/* 000604 8001EE34 1000001B */  b           .L8001EEA4
/* 000608 8001EE38 E7B00058 */   swc1       $f16, 0x58($sp)
.L8001EE3C:
/* 00060C 8001EE3C 18800012 */  blez        $a0, .L8001EE88
/* 000610 8001EE40 28810026 */   slti       $at, $a0, 0x26
/* 000614 8001EE44 50200011 */  beql        $at, $zero, .L8001EE8C
/* 000618 8001EE48 44802000 */   mtc1       $zero, $f4
/* 00061C 8001EE4C 0C0079CC */  jal         func_8001E730
/* 000620 8001EE50 27A50050 */   addiu      $a1, $sp, 0x50
/* 000624 8001EE54 C7B20054 */  lwc1        $f18, 0x54($sp)
/* 000628 8001EE58 C6640004 */  lwc1        $f4, 0x4($s3)
/* 00062C 8001EE5C C7A80058 */  lwc1        $f8, 0x58($sp)
/* 000630 8001EE60 3C01800A */  lui         $at, %hi(D_800A47AC)
/* 000634 8001EE64 46049182 */  mul.s       $f6, $f18, $f4
/* 000638 8001EE68 44809000 */  mtc1        $zero, $f18
/* 00063C 8001EE6C C42247AC */  lwc1        $f2, %lo(D_800A47AC)($at)
/* 000640 8001EE70 E7A60054 */  swc1        $f6, 0x54($sp)
/* 000644 8001EE74 C66A0008 */  lwc1        $f10, 0x8($s3)
/* 000648 8001EE78 E7B20050 */  swc1        $f18, 0x50($sp)
/* 00064C 8001EE7C 460A4402 */  mul.s       $f16, $f8, $f10
/* 000650 8001EE80 10000008 */  b           .L8001EEA4
/* 000654 8001EE84 E7B00058 */   swc1       $f16, 0x58($sp)
.L8001EE88:
/* 000658 8001EE88 44802000 */  mtc1        $zero, $f4
.L8001EE8C:
/* 00065C 8001EE8C 00000000 */  nop
/* 000660 8001EE90 E7A40050 */  swc1        $f4, 0x50($sp)
/* 000664 8001EE94 C6660024 */  lwc1        $f6, 0x24($s3)
/* 000668 8001EE98 E7A60054 */  swc1        $f6, 0x54($sp)
/* 00066C 8001EE9C C6680024 */  lwc1        $f8, 0x24($s3)
/* 000670 8001EEA0 E7A80058 */  swc1        $f8, 0x58($sp)
.L8001EEA4:
/* 000674 8001EEA4 860D0034 */  lh          $t5, 0x34($s0)
/* 000678 8001EEA8 C62A0020 */  lwc1        $f10, 0x20($s1)
/* 00067C 8001EEAC C7B00054 */  lwc1        $f16, 0x54($sp)
/* 000680 8001EEB0 448D2000 */  mtc1        $t5, $f4
/* 000684 8001EEB4 27A40050 */  addiu       $a0, $sp, 0x50
/* 000688 8001EEB8 46105482 */  mul.s       $f18, $f10, $f16
/* 00068C 8001EEBC C630001C */  lwc1        $f16, 0x1c($s1)
/* 000690 8001EEC0 468021A0 */  cvt.s.w     $f6, $f4
/* 000694 8001EEC4 C7A40058 */  lwc1        $f4, 0x58($sp)
/* 000698 8001EEC8 46023202 */  mul.s       $f8, $f6, $f2
/* 00069C 8001EECC 46089280 */  add.s       $f10, $f18, $f8
/* 0006A0 8001EED0 46048182 */  mul.s       $f6, $f16, $f4
/* 0006A4 8001EED4 E7AA0054 */  swc1        $f10, 0x54($sp)
/* 0006A8 8001EED8 860E0028 */  lh          $t6, 0x28($s0)
/* 0006AC 8001EEDC 000E7823 */  subu        $t7, $zero, $t6
/* 0006B0 8001EEE0 448F9000 */  mtc1        $t7, $f18
/* 0006B4 8001EEE4 00000000 */  nop
/* 0006B8 8001EEE8 46809220 */  cvt.s.w     $f8, $f18
/* 0006BC 8001EEEC 46024282 */  mul.s       $f10, $f8, $f2
/* 0006C0 8001EEF0 46065401 */  sub.s       $f16, $f10, $f6
/* 0006C4 8001EEF4 0C00202A */  jal         func_800080A8
/* 0006C8 8001EEF8 E7B00058 */   swc1       $f16, 0x58($sp)
.L8001EEFC:
/* 0006CC 8001EEFC 3C18800B */  lui         $t8, %hi(D_800B6C54)
/* 0006D0 8001EF00 8F186C54 */  lw          $t8, %lo(D_800B6C54)($t8)
/* 0006D4 8001EF04 3C01800B */  lui         $at, %hi(D_800B6C5C)
/* 0006D8 8001EF08 AE180004 */  sw          $t8, 0x4($s0)
/* 0006DC 8001EF0C 8FB9005C */  lw          $t9, 0x5c($sp)
/* 0006E0 8001EF10 AE190000 */  sw          $t9, 0x0($s0)
/* 0006E4 8001EF14 8FA8005C */  lw          $t0, 0x5c($sp)
/* 0006E8 8001EF18 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0006EC 8001EF1C 8FB30020 */  lw          $s3, 0x20($sp)
/* 0006F0 8001EF20 AC286C5C */  sw          $t0, %lo(D_800B6C5C)($at)
/* 0006F4 8001EF24 3C01800B */  lui         $at, %hi(D_800B6C58)
/* 0006F8 8001EF28 AC206C58 */  sw          $zero, %lo(D_800B6C58)($at)
/* 0006FC 8001EF2C 3C01800B */  lui         $at, %hi(D_800B6C54)
/* 000700 8001EF30 AC206C54 */  sw          $zero, %lo(D_800B6C54)($at)
/* 000704 8001EF34 3C014F00 */  lui         $at, 0x4f00
/* 000708 8001EF38 44812000 */  mtc1        $at, $f4
/* 00070C 8001EF3C 3C01800B */  lui         $at, %hi(D_800B6C50)
/* 000710 8001EF40 8FB2001C */  lw          $s2, 0x1c($sp)
/* 000714 8001EF44 8FB10018 */  lw          $s1, 0x18($sp)
/* 000718 8001EF48 8FB00014 */  lw          $s0, 0x14($sp)
/* 00071C 8001EF4C 27BD0068 */  addiu       $sp, $sp, 0x68
/* 000720 8001EF50 03E00008 */  jr          $ra
/* 000724 8001EF54 E4246C50 */   swc1       $f4, %lo(D_800B6C50)($at)

glabel func_8001EF58 # 4
/* 000728 8001EF58 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00072C 8001EF5C AFBF0014 */  sw          $ra, 0x14($sp)
/* 000730 8001EF60 AFA40020 */  sw          $a0, 0x20($sp)
/* 000734 8001EF64 8C870054 */  lw          $a3, 0x54($a0)
/* 000738 8001EF68 3C04800B */  lui         $a0, %hi(D_800ABDD0)
/* 00073C 8001EF6C 2484BDD0 */  addiu       $a0, $a0, %lo(D_800ABDD0)
/* 000740 8001EF70 8CEF0000 */  lw          $t7, 0x0($a3)
/* 000744 8001EF74 24050005 */  addiu       $a1, $zero, 0x5
/* 000748 8001EF78 55E00004 */  bnel        $t7, $zero, .L8001EF8C
/* 00074C 8001EF7C 84E60010 */   lh         $a2, 0x10($a3)
/* 000750 8001EF80 10000033 */  b           .L8001F050
/* 000754 8001EF84 00001025 */   move       $v0, $zero
/* 000758 8001EF88 84E60010 */  lh          $a2, 0x10($a3)
.L8001EF8C:
/* 00075C 8001EF8C 0C00309B */  jal         func_8000C26C
/* 000760 8001EF90 AFA7001C */   sw         $a3, 0x1c($sp)
/* 000764 8001EF94 3C04800B */  lui         $a0, %hi(D_800ABDD0)
/* 000768 8001EF98 2484BDD0 */  addiu       $a0, $a0, %lo(D_800ABDD0)
/* 00076C 8001EF9C 8C820000 */  lw          $v0, 0x0($a0)
/* 000770 8001EFA0 8FA7001C */  lw          $a3, 0x1c($sp)
/* 000774 8001EFA4 3C19E700 */  lui         $t9, 0xe700
/* 000778 8001EFA8 24580008 */  addiu       $t8, $v0, 0x8
/* 00077C 8001EFAC AC980000 */  sw          $t8, 0x0($a0)
/* 000780 8001EFB0 AC400004 */  sw          $zero, 0x4($v0)
/* 000784 8001EFB4 AC590000 */  sw          $t9, 0x0($v0)
/* 000788 8001EFB8 8C820000 */  lw          $v0, 0x0($a0)
/* 00078C 8001EFBC 3C09FA00 */  lui         $t1, 0xfa00
/* 000790 8001EFC0 2401FF00 */  addiu       $at, $zero, -0x100
/* 000794 8001EFC4 24480008 */  addiu       $t0, $v0, 0x8
/* 000798 8001EFC8 AC880000 */  sw          $t0, 0x0($a0)
/* 00079C 8001EFCC AC490000 */  sw          $t1, 0x0($v0)
/* 0007A0 8001EFD0 84EA001C */  lh          $t2, 0x1c($a3)
/* 0007A4 8001EFD4 3C0E8007 */  lui         $t6, %hi(D_800760A8)
/* 0007A8 8001EFD8 3C08E200 */  lui         $t0, 0xe200
/* 0007AC 8001EFDC 314B00FF */  andi        $t3, $t2, 0xff
/* 0007B0 8001EFE0 01616025 */  or          $t4, $t3, $at
/* 0007B4 8001EFE4 AC4C0004 */  sw          $t4, 0x4($v0)
/* 0007B8 8001EFE8 8DCE60A8 */  lw          $t6, %lo(D_800760A8)($t6)
/* 0007BC 8001EFEC 8CED0004 */  lw          $t5, 0x4($a3)
/* 0007C0 8001EFF0 3C0BE200 */  lui         $t3, 0xe200
/* 0007C4 8001EFF4 8DCF0054 */  lw          $t7, 0x54($t6)
/* 0007C8 8001EFF8 3508001C */  ori         $t0, $t0, 0x1c
/* 0007CC 8001EFFC 356B001C */  ori         $t3, $t3, 0x1c
/* 0007D0 8001F000 8DF80190 */  lw          $t8, 0x190($t7)
/* 0007D4 8001F004 55B8000A */  bnel        $t5, $t8, .L8001F030
/* 0007D8 8001F008 8C820000 */   lw         $v0, 0x0($a0)
/* 0007DC 8001F00C 8C820000 */  lw          $v0, 0x0($a0)
/* 0007E0 8001F010 3C090050 */  lui         $t1, 0x50
/* 0007E4 8001F014 35294240 */  ori         $t1, $t1, 0x4240
/* 0007E8 8001F018 24590008 */  addiu       $t9, $v0, 0x8
/* 0007EC 8001F01C AC990000 */  sw          $t9, 0x0($a0)
/* 0007F0 8001F020 AC490004 */  sw          $t1, 0x4($v0)
/* 0007F4 8001F024 10000008 */  b           .L8001F048
/* 0007F8 8001F028 AC480000 */   sw         $t0, 0x0($v0)
/* 0007FC 8001F02C 8C820000 */  lw          $v0, 0x0($a0)
.L8001F030:
/* 000800 8001F030 3C0C0050 */  lui         $t4, 0x50
/* 000804 8001F034 358C4A50 */  ori         $t4, $t4, 0x4a50
/* 000808 8001F038 244A0008 */  addiu       $t2, $v0, 0x8
/* 00080C 8001F03C AC8A0000 */  sw          $t2, 0x0($a0)
/* 000810 8001F040 AC4C0004 */  sw          $t4, 0x4($v0)
/* 000814 8001F044 AC4B0000 */  sw          $t3, 0x0($v0)
.L8001F048:
/* 000818 8001F048 8FAE0020 */  lw          $t6, 0x20($sp)
/* 00081C 8001F04C 8DC20030 */  lw          $v0, 0x30($t6)
.L8001F050:
/* 000820 8001F050 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000824 8001F054 27BD0020 */  addiu       $sp, $sp, 0x20
/* 000828 8001F058 03E00008 */  jr          $ra
/* 00082C 8001F05C 00000000 */   nop

glabel func_8001F060 # 5
/* 000830 8001F060 3C02800B */  lui         $v0, %hi(D_800B6C54)
/* 000834 8001F064 03E00008 */  jr          $ra
/* 000838 8001F068 8C426C54 */   lw         $v0, %lo(D_800B6C54)($v0)

glabel func_8001F06C # 6
/* 00083C 8001F06C 3C02800B */  lui         $v0, %hi(D_800B6C5C)
/* 000840 8001F070 03E00008 */  jr          $ra
/* 000844 8001F074 8C426C5C */   lw         $v0, %lo(D_800B6C5C)($v0)

glabel func_8001F078 # 7
/* 000848 8001F078 44842000 */  mtc1        $a0, $f4
/* 00084C 8001F07C 3C01800A */  lui         $at, %hi(D_800A47B0)
/* 000850 8001F080 C42847B0 */  lwc1        $f8, %lo(D_800A47B0)($at)
/* 000854 8001F084 468021A0 */  cvt.s.w     $f6, $f4
/* 000858 8001F088 3C028009 */  lui         $v0, %hi(D_80088C88)
/* 00085C 8001F08C 24428C88 */  addiu       $v0, $v0, %lo(D_80088C88)
/* 000860 8001F090 46083002 */  mul.s       $f0, $f6, $f8
/* 000864 8001F094 E4400008 */  swc1        $f0, 0x8($v0)
/* 000868 8001F098 03E00008 */  jr          $ra
/* 00086C 8001F09C E440000C */   swc1       $f0, 0xc($v0)

glabel func_8001F0A0 # 8
/* 000870 8001F0A0 44842000 */  mtc1        $a0, $f4
/* 000874 8001F0A4 3C01800A */  lui         $at, %hi(D_800A47B4)
/* 000878 8001F0A8 C42847B4 */  lwc1        $f8, %lo(D_800A47B4)($at)
/* 00087C 8001F0AC 468021A0 */  cvt.s.w     $f6, $f4
/* 000880 8001F0B0 3C018009 */  lui         $at, %hi(D_80088C98)
/* 000884 8001F0B4 46083282 */  mul.s       $f10, $f6, $f8
/* 000888 8001F0B8 03E00008 */  jr          $ra
/* 00088C 8001F0BC E42A8C98 */   swc1       $f10, %lo(D_80088C98)($at)

glabel func_8001F0C0 # 9
/* 000890 8001F0C0 44842000 */  mtc1        $a0, $f4
/* 000894 8001F0C4 3C01800A */  lui         $at, %hi(D_800A47B8)
/* 000898 8001F0C8 C42847B8 */  lwc1        $f8, %lo(D_800A47B8)($at)
/* 00089C 8001F0CC 468021A0 */  cvt.s.w     $f6, $f4
/* 0008A0 8001F0D0 3C028009 */  lui         $v0, %hi(D_80088C88)
/* 0008A4 8001F0D4 24428C88 */  addiu       $v0, $v0, %lo(D_80088C88)
/* 0008A8 8001F0D8 46083002 */  mul.s       $f0, $f6, $f8
/* 0008AC 8001F0DC E440001C */  swc1        $f0, 0x1c($v0)
/* 0008B0 8001F0E0 03E00008 */  jr          $ra
/* 0008B4 8001F0E4 E4400020 */   swc1       $f0, 0x20($v0)

glabel func_8001F0E8 # 10
/* 0008B8 8001F0E8 44842000 */  mtc1        $a0, $f4
/* 0008BC 8001F0EC 3C01800A */  lui         $at, %hi(D_800A47BC)
/* 0008C0 8001F0F0 C42847BC */  lwc1        $f8, %lo(D_800A47BC)($at)
/* 0008C4 8001F0F4 468021A0 */  cvt.s.w     $f6, $f4
/* 0008C8 8001F0F8 3C018009 */  lui         $at, %hi(D_80088CAC)
/* 0008CC 8001F0FC 46083282 */  mul.s       $f10, $f6, $f8
/* 0008D0 8001F100 03E00008 */  jr          $ra
/* 0008D4 8001F104 E42A8CAC */   swc1       $f10, %lo(D_80088CAC)($at)
/* 0008D8 8001F108 00000000 */  nop
/* 0008DC 8001F10C 00000000 */  nop
