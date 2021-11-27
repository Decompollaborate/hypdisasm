.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8001CC50 # 0
/* 01C800 8001CC50 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 01C804 8001CC54 AFBF003C */  sw          $ra, 0x3c($sp)
/* 01C808 8001CC58 AFB60038 */  sw          $s6, 0x38($sp)
/* 01C80C 8001CC5C AFB50034 */  sw          $s5, 0x34($sp)
/* 01C810 8001CC60 AFB40030 */  sw          $s4, 0x30($sp)
/* 01C814 8001CC64 AFB3002C */  sw          $s3, 0x2c($sp)
/* 01C818 8001CC68 AFB20028 */  sw          $s2, 0x28($sp)
/* 01C81C 8001CC6C AFB10024 */  sw          $s1, 0x24($sp)
/* 01C820 8001CC70 AFB00020 */  sw          $s0, 0x20($sp)
/* 01C824 8001CC74 44800000 */  mtc1        $zero, $f0
/* 01C828 8001CC78 C4840000 */  lwc1        $f4, 0x0($a0)
/* 01C82C 8001CC7C 0080B025 */  move        $s6, $a0
/* 01C830 8001CC80 46040032 */  c.eq.s      $f0, $f4
/* 01C834 8001CC84 00000000 */  nop
/* 01C838 8001CC88 4501000C */  bc1t        .L8001CCBC
/* 01C83C 8001CC8C 00000000 */   nop
/* 01C840 8001CC90 C4860004 */  lwc1        $f6, 0x4($a0)
/* 01C844 8001CC94 46060032 */  c.eq.s      $f0, $f6
/* 01C848 8001CC98 00000000 */  nop
/* 01C84C 8001CC9C 45010007 */  bc1t        .L8001CCBC
/* 01C850 8001CCA0 00000000 */   nop
/* 01C854 8001CCA4 C4880008 */  lwc1        $f8, 0x8($a0)
/* 01C858 8001CCA8 3C014000 */  lui         $at, 0x4000
/* 01C85C 8001CCAC 46080032 */  c.eq.s      $f0, $f8
/* 01C860 8001CCB0 00000000 */  nop
/* 01C864 8001CCB4 45020004 */  bc1fl       .L8001CCC8
/* 01C868 8001CCB8 C6CA0024 */   lwc1       $f10, 0x24($s6)
.L8001CCBC:
/* 01C86C 8001CCBC 1000006C */  b           .L8001CE70
/* 01C870 8001CCC0 00001025 */   move       $v0, $zero
/* 01C874 8001CCC4 C6CA0024 */  lwc1        $f10, 0x24($s6)
.L8001CCC8:
/* 01C878 8001CCC8 44818000 */  mtc1        $at, $f16
/* 01C87C 8001CCCC 27B50050 */  addiu       $s5, $sp, 0x50
/* 01C880 8001CCD0 02A03025 */  move        $a2, $s5
/* 01C884 8001CCD4 46105302 */  mul.s       $f12, $f10, $f16
/* 01C888 8001CCD8 0C04421A */  jal         func_80110868
/* 01C88C 8001CCDC 26C50044 */   addiu      $a1, $s6, 0x44
/* 01C890 8001CCE0 10400003 */  beqz        $v0, .L8001CCF0
/* 01C894 8001CCE4 3C0E800F */   lui        $t6, %hi(D_800F3EA4)
/* 01C898 8001CCE8 10000002 */  b           .L8001CCF4
/* 01C89C 8001CCEC 24140004 */   addiu      $s4, $zero, 0x4
.L8001CCF0:
/* 01C8A0 8001CCF0 0000A025 */  move        $s4, $zero
.L8001CCF4:
/* 01C8A4 8001CCF4 8DCE3EA4 */  lw          $t6, %lo(D_800F3EA4)($t6)
/* 01C8A8 8001CCF8 8ECF0038 */  lw          $t7, 0x38($s6)
/* 01C8AC 8001CCFC 36980003 */  ori         $t8, $s4, 0x3
/* 01C8B0 8001CD00 15CF0003 */  bne         $t6, $t7, .L8001CD10
/* 01C8B4 8001CD04 00000000 */   nop
/* 01C8B8 8001CD08 10000030 */  b           .L8001CDCC
/* 01C8BC 8001CD0C 0300A025 */   move       $s4, $t8
.L8001CD10:
/* 01C8C0 8001CD10 16800003 */  bnez        $s4, .L8001CD20
/* 01C8C4 8001CD14 00008025 */   move       $s0, $zero
/* 01C8C8 8001CD18 10000055 */  b           .L8001CE70
/* 01C8CC 8001CD1C 00001025 */   move       $v0, $zero
.L8001CD20:
/* 01C8D0 8001CD20 3C118009 */  lui         $s1, %hi(D_8008E16C)
/* 01C8D4 8001CD24 3C12800B */  lui         $s2, %hi(D_800A97C0)
/* 01C8D8 8001CD28 265297C0 */  addiu       $s2, $s2, %lo(D_800A97C0)
/* 01C8DC 8001CD2C 2631E16C */  addiu       $s1, $s1, %lo(D_8008E16C)
/* 01C8E0 8001CD30 24130002 */  addiu       $s3, $zero, 0x2
.L8001CD34:
/* 01C8E4 8001CD34 8E210000 */  lw          $at, 0x0($s1)
/* 01C8E8 8001CD38 AFA10000 */  sw          $at, 0x0($sp)
/* 01C8EC 8001CD3C 8E280004 */  lw          $t0, 0x4($s1)
/* 01C8F0 8001CD40 8FA40000 */  lw          $a0, 0x0($sp)
/* 01C8F4 8001CD44 AFA80004 */  sw          $t0, 0x4($sp)
/* 01C8F8 8001CD48 8E210008 */  lw          $at, 0x8($s1)
/* 01C8FC 8001CD4C 8FA50004 */  lw          $a1, 0x4($sp)
/* 01C900 8001CD50 AFA10008 */  sw          $at, 0x8($sp)
/* 01C904 8001CD54 8E27000C */  lw          $a3, 0xc($s1)
/* 01C908 8001CD58 8FA60008 */  lw          $a2, 0x8($sp)
/* 01C90C 8001CD5C AFA7000C */  sw          $a3, 0xc($sp)
/* 01C910 8001CD60 8E210010 */  lw          $at, 0x10($s1)
/* 01C914 8001CD64 AFB50014 */  sw          $s5, 0x14($sp)
/* 01C918 8001CD68 0C000E86 */  jal         func_80003A18
/* 01C91C 8001CD6C AFA10010 */   sw         $at, 0x10($sp)
/* 01C920 8001CD70 10400004 */  beqz        $v0, .L8001CD84
/* 01C924 8001CD74 00104880 */   sll        $t1, $s0, 2
/* 01C928 8001CD78 02495021 */  addu        $t2, $s2, $t1
/* 01C92C 8001CD7C 8D4B0000 */  lw          $t3, 0x0($t2)
/* 01C930 8001CD80 028BA025 */  or          $s4, $s4, $t3
.L8001CD84:
/* 01C934 8001CD84 26100001 */  addiu       $s0, $s0, 0x1
/* 01C938 8001CD88 1613FFEA */  bne         $s0, $s3, .L8001CD34
/* 01C93C 8001CD8C 26310014 */   addiu      $s1, $s1, 0x14
/* 01C940 8001CD90 328C0002 */  andi        $t4, $s4, 0x2
/* 01C944 8001CD94 1180000D */  beqz        $t4, .L8001CDCC
/* 01C948 8001CD98 3C014140 */   lui        $at, 0x4140
/* 01C94C 8001CD9C 44819000 */  mtc1        $at, $f18
/* 01C950 8001CDA0 3C01800F */  lui         $at, %hi(D_800F3E24)
/* 01C954 8001CDA4 C4263E24 */  lwc1        $f6, %lo(D_800F3E24)($at)
/* 01C958 8001CDA8 C6C40048 */  lwc1        $f4, 0x48($s6)
/* 01C95C 8001CDAC 2401FFFD */  addiu       $at, $zero, -0x3
/* 01C960 8001CDB0 02816824 */  and         $t5, $s4, $at
/* 01C964 8001CDB4 46062201 */  sub.s       $f8, $f4, $f6
/* 01C968 8001CDB8 4608903C */  c.lt.s      $f18, $f8
/* 01C96C 8001CDBC 00000000 */  nop
/* 01C970 8001CDC0 45000002 */  bc1f        .L8001CDCC
/* 01C974 8001CDC4 00000000 */   nop
/* 01C978 8001CDC8 35B40001 */  ori         $s4, $t5, 0x1
.L8001CDCC:
/* 01C97C 8001CDCC 3C0F8007 */  lui         $t7, %hi(D_80071E88)
/* 01C980 8001CDD0 8DEF1E88 */  lw          $t7, %lo(D_80071E88)($t7)
/* 01C984 8001CDD4 32980003 */  andi        $t8, $s4, 0x3
/* 01C988 8001CDD8 52CF0025 */  beql        $s6, $t7, .L8001CE70
/* 01C98C 8001CDDC 02801025 */   move       $v0, $s4
/* 01C990 8001CDE0 13000022 */  beqz        $t8, .L8001CE6C
/* 01C994 8001CDE4 3C19800F */   lui        $t9, %hi(D_800F3EA4)
/* 01C998 8001CDE8 8F393EA4 */  lw          $t9, %lo(D_800F3EA4)($t9)
/* 01C99C 8001CDEC 8EC80038 */  lw          $t0, 0x38($s6)
/* 01C9A0 8001CDF0 3C02800C */  lui         $v0, %hi(D_800BB3D0)
/* 01C9A4 8001CDF4 2442B3D0 */  addiu       $v0, $v0, %lo(D_800BB3D0)
/* 01C9A8 8001CDF8 17280005 */  bne         $t9, $t0, .L8001CE10
/* 01C9AC 8001CDFC C7A00050 */   lwc1       $f0, 0x50($sp)
/* 01C9B0 8001CE00 3C01CF00 */  lui         $at, 0xcf00
/* 01C9B4 8001CE04 44811000 */  mtc1        $at, $f2
/* 01C9B8 8001CE08 1000000E */  b           .L8001CE44
/* 01C9BC 8001CE0C C44A0000 */   lwc1       $f10, 0x0($v0)
.L8001CE10:
/* 01C9C0 8001CE10 3C014248 */  lui         $at, 0x4248
/* 01C9C4 8001CE14 44815000 */  mtc1        $at, $f10
/* 01C9C8 8001CE18 46000305 */  abs.s       $f12, $f0
/* 01C9CC 8001CE1C C7A00054 */  lwc1        $f0, 0x54($sp)
/* 01C9D0 8001CE20 460A6402 */  mul.s       $f16, $f12, $f10
/* 01C9D4 8001CE24 3C014220 */  lui         $at, 0x4220
/* 01C9D8 8001CE28 44819000 */  mtc1        $at, $f18
/* 01C9DC 8001CE2C 46000005 */  abs.s       $f0, $f0
/* 01C9E0 8001CE30 C7A40058 */  lwc1        $f4, 0x58($sp)
/* 01C9E4 8001CE34 46120202 */  mul.s       $f8, $f0, $f18
/* 01C9E8 8001CE38 46048181 */  sub.s       $f6, $f16, $f4
/* 01C9EC 8001CE3C 46064080 */  add.s       $f2, $f8, $f6
/* 01C9F0 8001CE40 C44A0000 */  lwc1        $f10, 0x0($v0)
.L8001CE44:
/* 01C9F4 8001CE44 3C01800C */  lui         $at, %hi(D_800BB3D8)
/* 01C9F8 8001CE48 460A103C */  c.lt.s      $f2, $f10
/* 01C9FC 8001CE4C 00000000 */  nop
/* 01CA00 8001CE50 45020007 */  bc1fl       .L8001CE70
/* 01CA04 8001CE54 02801025 */   move       $v0, $s4
/* 01CA08 8001CE58 AC34B3D8 */  sw          $s4, %lo(D_800BB3D8)($at)
/* 01CA0C 8001CE5C 8EC90038 */  lw          $t1, 0x38($s6)
/* 01CA10 8001CE60 3C01800C */  lui         $at, %hi(D_800BB3D4)
/* 01CA14 8001CE64 AC29B3D4 */  sw          $t1, %lo(D_800BB3D4)($at)
/* 01CA18 8001CE68 E4420000 */  swc1        $f2, 0x0($v0)
.L8001CE6C:
/* 01CA1C 8001CE6C 02801025 */  move        $v0, $s4
.L8001CE70:
/* 01CA20 8001CE70 8FBF003C */  lw          $ra, 0x3c($sp)
/* 01CA24 8001CE74 8FB00020 */  lw          $s0, 0x20($sp)
/* 01CA28 8001CE78 8FB10024 */  lw          $s1, 0x24($sp)
/* 01CA2C 8001CE7C 8FB20028 */  lw          $s2, 0x28($sp)
/* 01CA30 8001CE80 8FB3002C */  lw          $s3, 0x2c($sp)
/* 01CA34 8001CE84 8FB40030 */  lw          $s4, 0x30($sp)
/* 01CA38 8001CE88 8FB50034 */  lw          $s5, 0x34($sp)
/* 01CA3C 8001CE8C 8FB60038 */  lw          $s6, 0x38($sp)
/* 01CA40 8001CE90 03E00008 */  jr          $ra
/* 01CA44 8001CE94 27BD0068 */   addiu      $sp, $sp, 0x68

glabel func_8001CE98 # 1
/* 01CA48 8001CE98 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01CA4C 8001CE9C AFBF0014 */  sw          $ra, 0x14($sp)
/* 01CA50 8001CEA0 3C048009 */  lui         $a0, %hi(D_8008E110)
/* 01CA54 8001CEA4 0C001B92 */  jal         func_80006E48
/* 01CA58 8001CEA8 2484E110 */   addiu      $a0, $a0, %lo(D_8008E110)
/* 01CA5C 8001CEAC AFA2001C */  sw          $v0, 0x1c($sp)
/* 01CA60 8001CEB0 0C001C1B */  jal         func_8000706C
/* 01CA64 8001CEB4 00402025 */   move       $a0, $v0
/* 01CA68 8001CEB8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01CA6C 8001CEBC 8FA2001C */  lw          $v0, 0x1c($sp)
/* 01CA70 8001CEC0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01CA74 8001CEC4 03E00008 */  jr          $ra
/* 01CA78 8001CEC8 00000000 */   nop

glabel func_8001CECC # 2
/* 01CA7C 8001CECC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01CA80 8001CED0 AFA40018 */  sw          $a0, 0x18($sp)
/* 01CA84 8001CED4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01CA88 8001CED8 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 01CA8C 8001CEDC 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 01CA90 8001CEE0 24050050 */  addiu       $a1, $zero, 0x50
/* 01CA94 8001CEE4 0C00DA76 */  jal         func_800369D8
/* 01CA98 8001CEE8 24060142 */   addiu      $a2, $zero, 0x142
/* 01CA9C 8001CEEC AC400000 */  sw          $zero, 0x0($v0)
/* 01CAA0 8001CEF0 3C01800C */  lui         $at, %hi(D_800BB3DC)
/* 01CAA4 8001CEF4 AC20B3DC */  sw          $zero, %lo(D_800BB3DC)($at)
/* 01CAA8 8001CEF8 AC400004 */  sw          $zero, 0x4($v0)
/* 01CAAC 8001CEFC 8FAE0018 */  lw          $t6, 0x18($sp)
/* 01CAB0 8001CF00 ADC20054 */  sw          $v0, 0x54($t6)
/* 01CAB4 8001CF04 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01CAB8 8001CF08 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01CABC 8001CF0C 03E00008 */  jr          $ra
/* 01CAC0 8001CF10 00000000 */   nop

glabel func_8001CF14 # 3
/* 01CAC4 8001CF14 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 01CAC8 8001CF18 AFB2001C */  sw          $s2, 0x1c($sp)
/* 01CACC 8001CF1C AFBF0024 */  sw          $ra, 0x24($sp)
/* 01CAD0 8001CF20 AFB30020 */  sw          $s3, 0x20($sp)
/* 01CAD4 8001CF24 AFB10018 */  sw          $s1, 0x18($sp)
/* 01CAD8 8001CF28 AFB00014 */  sw          $s0, 0x14($sp)
/* 01CADC 8001CF2C 00809025 */  move        $s2, $a0
/* 01CAE0 8001CF30 8C900054 */  lw          $s0, 0x54($a0)
/* 01CAE4 8001CF34 3C04800C */  lui         $a0, %hi(D_800BB3D4)
/* 01CAE8 8001CF38 0C04701F */  jal         func_8011C07C
/* 01CAEC 8001CF3C 8C84B3D4 */   lw         $a0, %lo(D_800BB3D4)($a0)
/* 01CAF0 8001CF40 3C04800F */  lui         $a0, %hi(D_800F3E20)
/* 01CAF4 8001CF44 3C06800C */  lui         $a2, %hi(D_800BB3D8)
/* 01CAF8 8001CF48 00409825 */  move        $s3, $v0
/* 01CAFC 8001CF4C 8CC6B3D8 */  lw          $a2, %lo(D_800BB3D8)($a2)
/* 01CB00 8001CF50 24843E20 */  addiu       $a0, $a0, %lo(D_800F3E20)
/* 01CB04 8001CF54 0C04537E */  jal         func_80114DF8
/* 01CB08 8001CF58 00402825 */   move       $a1, $v0
/* 01CB0C 8001CF5C 1660000F */  bnez        $s3, .L8001CF9C
/* 01CB10 8001CF60 AFA2005C */   sw         $v0, 0x5c($sp)
/* 01CB14 8001CF64 8E0E0000 */  lw          $t6, 0x0($s0)
/* 01CB18 8001CF68 51C0000D */  beql        $t6, $zero, .L8001CFA0
/* 01CB1C 8001CF6C 8FB9005C */   lw         $t9, 0x5c($sp)
/* 01CB20 8001CF70 0C04701F */  jal         func_8011C07C
/* 01CB24 8001CF74 8E040004 */   lw         $a0, 0x4($s0)
/* 01CB28 8001CF78 10400007 */  beqz        $v0, .L8001CF98
/* 01CB2C 8001CF7C 00409825 */   move       $s3, $v0
/* 01CB30 8001CF80 240F0001 */  addiu       $t7, $zero, 0x1
/* 01CB34 8001CF84 AFAF005C */  sw          $t7, 0x5c($sp)
/* 01CB38 8001CF88 8E180004 */  lw          $t8, 0x4($s0)
/* 01CB3C 8001CF8C 3C01800C */  lui         $at, %hi(D_800BB3D4)
/* 01CB40 8001CF90 10000002 */  b           .L8001CF9C
/* 01CB44 8001CF94 AC38B3D4 */   sw         $t8, %lo(D_800BB3D4)($at)
.L8001CF98:
/* 01CB48 8001CF98 AFA0005C */  sw          $zero, 0x5c($sp)
.L8001CF9C:
/* 01CB4C 8001CF9C 8FB9005C */  lw          $t9, 0x5c($sp)
.L8001CFA0:
/* 01CB50 8001CFA0 132000DE */  beqz        $t9, .L8001D31C
/* 01CB54 8001CFA4 00000000 */   nop
/* 01CB58 8001CFA8 126000DC */  beqz        $s3, .L8001D31C
/* 01CB5C 8001CFAC 00000000 */   nop
/* 01CB60 8001CFB0 8E080000 */  lw          $t0, 0x0($s0)
/* 01CB64 8001CFB4 8FAB005C */  lw          $t3, 0x5c($sp)
/* 01CB68 8001CFB8 3C09800C */  lui         $t1, %hi(D_800BB3D4)
/* 01CB6C 8001CFBC 17280004 */  bne         $t9, $t0, .L8001CFD0
/* 01CB70 8001CFC0 000B60C0 */   sll        $t4, $t3, 3
/* 01CB74 8001CFC4 8D29B3D4 */  lw          $t1, %lo(D_800BB3D4)($t1)
/* 01CB78 8001CFC8 8E0A0004 */  lw          $t2, 0x4($s0)
/* 01CB7C 8001CFCC 112A0039 */  beq         $t1, $t2, .L8001D0B4
.L8001CFD0:
/* 01CB80 8001CFD0 018B6021 */   addu       $t4, $t4, $t3
/* 01CB84 8001CFD4 3C0D8009 */  lui         $t5, %hi(D_8008E194)
/* 01CB88 8001CFD8 25ADE194 */  addiu       $t5, $t5, %lo(D_8008E194)
/* 01CB8C 8001CFDC 000C6080 */  sll         $t4, $t4, 2
/* 01CB90 8001CFE0 018D8821 */  addu        $s1, $t4, $t5
/* 01CB94 8001CFE4 8E2E0000 */  lw          $t6, 0x0($s1)
/* 01CB98 8001CFE8 3C058007 */  lui         $a1, %hi(D_80068E30)
/* 01CB9C 8001CFEC 26040008 */  addiu       $a0, $s0, 0x8
/* 01CBA0 8001CFF0 000E7880 */  sll         $t7, $t6, 2
/* 01CBA4 8001CFF4 00AF2821 */  addu        $a1, $a1, $t7
/* 01CBA8 8001CFF8 0C0023F3 */  jal         func_80008FCC
/* 01CBAC 8001CFFC 8CA58E30 */   lw         $a1, %lo(D_80068E30)($a1)
/* 01CBB0 8001D000 8E380004 */  lw          $t8, 0x4($s1)
/* 01CBB4 8001D004 3C058007 */  lui         $a1, %hi(D_80069250)
/* 01CBB8 8001D008 26040014 */  addiu       $a0, $s0, 0x14
/* 01CBBC 8001D00C 0018C880 */  sll         $t9, $t8, 2
/* 01CBC0 8001D010 00B92821 */  addu        $a1, $a1, $t9
/* 01CBC4 8001D014 0C0023F3 */  jal         func_80008FCC
/* 01CBC8 8001D018 8CA59250 */   lw         $a1, %lo(D_80069250)($a1)
/* 01CBCC 8001D01C 8E280008 */  lw          $t0, 0x8($s1)
/* 01CBD0 8001D020 3C058007 */  lui         $a1, %hi(D_8006928C)
/* 01CBD4 8001D024 26040020 */  addiu       $a0, $s0, 0x20
/* 01CBD8 8001D028 00084880 */  sll         $t1, $t0, 2
/* 01CBDC 8001D02C 00A92821 */  addu        $a1, $a1, $t1
/* 01CBE0 8001D030 0C0023F3 */  jal         func_80008FCC
/* 01CBE4 8001D034 8CA5928C */   lw         $a1, %lo(D_8006928C)($a1)
/* 01CBE8 8001D038 8E2A000C */  lw          $t2, 0xc($s1)
/* 01CBEC 8001D03C 3C058007 */  lui         $a1, %hi(D_8006928C)
/* 01CBF0 8001D040 2604002C */  addiu       $a0, $s0, 0x2c
/* 01CBF4 8001D044 000A5880 */  sll         $t3, $t2, 2
/* 01CBF8 8001D048 00AB2821 */  addu        $a1, $a1, $t3
/* 01CBFC 8001D04C 0C0023F3 */  jal         func_80008FCC
/* 01CC00 8001D050 8CA5928C */   lw         $a1, %lo(D_8006928C)($a1)
/* 01CC04 8001D054 8E2C0010 */  lw          $t4, 0x10($s1)
/* 01CC08 8001D058 3C058007 */  lui         $a1, %hi(D_8006928C)
/* 01CC0C 8001D05C 26040038 */  addiu       $a0, $s0, 0x38
/* 01CC10 8001D060 000C6880 */  sll         $t5, $t4, 2
/* 01CC14 8001D064 00AD2821 */  addu        $a1, $a1, $t5
/* 01CC18 8001D068 0C0023F3 */  jal         func_80008FCC
/* 01CC1C 8001D06C 8CA5928C */   lw         $a1, %lo(D_8006928C)($a1)
/* 01CC20 8001D070 8E2E0014 */  lw          $t6, 0x14($s1)
/* 01CC24 8001D074 3C058007 */  lui         $a1, %hi(D_8006928C)
/* 01CC28 8001D078 26040044 */  addiu       $a0, $s0, 0x44
/* 01CC2C 8001D07C 000E7880 */  sll         $t7, $t6, 2
/* 01CC30 8001D080 00AF2821 */  addu        $a1, $a1, $t7
/* 01CC34 8001D084 0C0023F3 */  jal         func_80008FCC
/* 01CC38 8001D088 8CA5928C */   lw         $a1, %lo(D_8006928C)($a1)
/* 01CC3C 8001D08C 0C00789A */  jal         func_8001E268
/* 01CC40 8001D090 8E240018 */   lw         $a0, 0x18($s1)
/* 01CC44 8001D094 8E380000 */  lw          $t8, 0x0($s1)
/* 01CC48 8001D098 3C038009 */  lui         $v1, %hi(D_8008E194)
/* 01CC4C 8001D09C 2463E194 */  addiu       $v1, $v1, %lo(D_8008E194)
/* 01CC50 8001D0A0 AC780024 */  sw          $t8, 0x24($v1)
/* 01CC54 8001D0A4 C624001C */  lwc1        $f4, 0x1c($s1)
/* 01CC58 8001D0A8 E4640040 */  swc1        $f4, 0x40($v1)
/* 01CC5C 8001D0AC C6260020 */  lwc1        $f6, 0x20($s1)
/* 01CC60 8001D0B0 E4660044 */  swc1        $f6, 0x44($v1)
.L8001D0B4:
/* 01CC64 8001D0B4 8FB9005C */  lw          $t9, 0x5c($sp)
/* 01CC68 8001D0B8 3C098009 */  lui         $t1, %hi(D_8008E194)
/* 01CC6C 8001D0BC 2529E194 */  addiu       $t1, $t1, %lo(D_8008E194)
/* 01CC70 8001D0C0 001940C0 */  sll         $t0, $t9, 3
/* 01CC74 8001D0C4 01194021 */  addu        $t0, $t0, $t9
/* 01CC78 8001D0C8 00084080 */  sll         $t0, $t0, 2
/* 01CC7C 8001D0CC 3C06800B */  lui         $a2, %hi(D_800B2C64)
/* 01CC80 8001D0D0 260A0014 */  addiu       $t2, $s0, 0x14
/* 01CC84 8001D0D4 260B0020 */  addiu       $t3, $s0, 0x20
/* 01CC88 8001D0D8 260C002C */  addiu       $t4, $s0, 0x2c
/* 01CC8C 8001D0DC 260D0038 */  addiu       $t5, $s0, 0x38
/* 01CC90 8001D0E0 260E0044 */  addiu       $t6, $s0, 0x44
/* 01CC94 8001D0E4 AFAE002C */  sw          $t6, 0x2c($sp)
/* 01CC98 8001D0E8 AFAD0030 */  sw          $t5, 0x30($sp)
/* 01CC9C 8001D0EC AFAC0034 */  sw          $t4, 0x34($sp)
/* 01CCA0 8001D0F0 AFAB0038 */  sw          $t3, 0x38($sp)
/* 01CCA4 8001D0F4 AFAA003C */  sw          $t2, 0x3c($sp)
/* 01CCA8 8001D0F8 8CC62C64 */  lw          $a2, %lo(D_800B2C64)($a2)
/* 01CCAC 8001D0FC 01098821 */  addu        $s1, $t0, $t1
/* 01CCB0 8001D100 26040008 */  addiu       $a0, $s0, 0x8
/* 01CCB4 8001D104 0C002400 */  jal         func_80009000
/* 01CCB8 8001D108 27A5004C */   addiu      $a1, $sp, 0x4c
/* 01CCBC 8001D10C 3C06800B */  lui         $a2, %hi(D_800B2C64)
/* 01CCC0 8001D110 8CC62C64 */  lw          $a2, %lo(D_800B2C64)($a2)
/* 01CCC4 8001D114 8FA4003C */  lw          $a0, 0x3c($sp)
/* 01CCC8 8001D118 0C002400 */  jal         func_80009000
/* 01CCCC 8001D11C 27A5004C */   addiu      $a1, $sp, 0x4c
/* 01CCD0 8001D120 3C06800B */  lui         $a2, %hi(D_800B2C64)
/* 01CCD4 8001D124 8CC62C64 */  lw          $a2, %lo(D_800B2C64)($a2)
/* 01CCD8 8001D128 8FA40038 */  lw          $a0, 0x38($sp)
/* 01CCDC 8001D12C 0C002400 */  jal         func_80009000
/* 01CCE0 8001D130 27A5004C */   addiu      $a1, $sp, 0x4c
/* 01CCE4 8001D134 3C06800B */  lui         $a2, %hi(D_800B2C64)
/* 01CCE8 8001D138 8CC62C64 */  lw          $a2, %lo(D_800B2C64)($a2)
/* 01CCEC 8001D13C 8FA40034 */  lw          $a0, 0x34($sp)
/* 01CCF0 8001D140 0C002400 */  jal         func_80009000
/* 01CCF4 8001D144 27A5004C */   addiu      $a1, $sp, 0x4c
/* 01CCF8 8001D148 3C06800B */  lui         $a2, %hi(D_800B2C64)
/* 01CCFC 8001D14C 8CC62C64 */  lw          $a2, %lo(D_800B2C64)($a2)
/* 01CD00 8001D150 8FA40030 */  lw          $a0, 0x30($sp)
/* 01CD04 8001D154 0C002400 */  jal         func_80009000
/* 01CD08 8001D158 27A5004C */   addiu      $a1, $sp, 0x4c
/* 01CD0C 8001D15C 3C06800B */  lui         $a2, %hi(D_800B2C64)
/* 01CD10 8001D160 8CC62C64 */  lw          $a2, %lo(D_800B2C64)($a2)
/* 01CD14 8001D164 8FA4002C */  lw          $a0, 0x2c($sp)
/* 01CD18 8001D168 0C002400 */  jal         func_80009000
/* 01CD1C 8001D16C 27A5004C */   addiu      $a1, $sp, 0x4c
/* 01CD20 8001D170 C6680044 */  lwc1        $f8, 0x44($s3)
/* 01CD24 8001D174 02402025 */  move        $a0, $s2
/* 01CD28 8001D178 E6480018 */  swc1        $f8, 0x18($s2)
/* 01CD2C 8001D17C C66A0048 */  lwc1        $f10, 0x48($s3)
/* 01CD30 8001D180 C6520018 */  lwc1        $f18, 0x18($s2)
/* 01CD34 8001D184 E64A001C */  swc1        $f10, 0x1c($s2)
/* 01CD38 8001D188 C670004C */  lwc1        $f16, 0x4c($s3)
/* 01CD3C 8001D18C C644001C */  lwc1        $f4, 0x1c($s2)
/* 01CD40 8001D190 E6520044 */  swc1        $f18, 0x44($s2)
/* 01CD44 8001D194 E6500020 */  swc1        $f16, 0x20($s2)
/* 01CD48 8001D198 C6460020 */  lwc1        $f6, 0x20($s2)
/* 01CD4C 8001D19C E6440048 */  swc1        $f4, 0x48($s2)
/* 01CD50 8001D1A0 0C00212C */  jal         func_800084B0
/* 01CD54 8001D1A4 E646004C */   swc1       $f6, 0x4c($s2)
/* 01CD58 8001D1A8 860F004C */  lh          $t7, 0x4c($s0)
/* 01CD5C 8001D1AC 3C01800B */  lui         $at, %hi(D_800A97E8)
/* 01CD60 8001D1B0 C42297E8 */  lwc1        $f2, %lo(D_800A97E8)($at)
/* 01CD64 8001D1B4 448F4000 */  mtc1        $t7, $f8
/* 01CD68 8001D1B8 C6400000 */  lwc1        $f0, 0x0($s2)
/* 01CD6C 8001D1BC 24010086 */  addiu       $at, $zero, 0x86
/* 01CD70 8001D1C0 468042A0 */  cvt.s.w     $f10, $f8
/* 01CD74 8001D1C4 46025402 */  mul.s       $f16, $f10, $f2
/* 01CD78 8001D1C8 00000000 */  nop
/* 01CD7C 8001D1CC 46100482 */  mul.s       $f18, $f0, $f16
/* 01CD80 8001D1D0 E6520004 */  swc1        $f18, 0x4($s2)
/* 01CD84 8001D1D4 86180040 */  lh          $t8, 0x40($s0)
/* 01CD88 8001D1D8 44982000 */  mtc1        $t8, $f4
/* 01CD8C 8001D1DC 00000000 */  nop
/* 01CD90 8001D1E0 468021A0 */  cvt.s.w     $f6, $f4
/* 01CD94 8001D1E4 46023202 */  mul.s       $f8, $f6, $f2
/* 01CD98 8001D1E8 00000000 */  nop
/* 01CD9C 8001D1EC 46080282 */  mul.s       $f10, $f0, $f8
/* 01CDA0 8001D1F0 E64A0008 */  swc1        $f10, 0x8($s2)
/* 01CDA4 8001D1F4 96640034 */  lhu         $a0, 0x34($s3)
/* 01CDA8 8001D1F8 14810018 */  bne         $a0, $at, .L8001D25C
/* 01CDAC 8001D1FC 00000000 */   nop
/* 01CDB0 8001D200 44808000 */  mtc1        $zero, $f16
/* 01CDB4 8001D204 8E620054 */  lw          $v0, 0x54($s3)
/* 01CDB8 8001D208 24040074 */  addiu       $a0, $zero, 0x74
/* 01CDBC 8001D20C E7B00050 */  swc1        $f16, 0x50($sp)
/* 01CDC0 8001D210 84590004 */  lh          $t9, 0x4($v0)
/* 01CDC4 8001D214 3C038013 */  lui         $v1, %hi(D_80129320)
/* 01CDC8 8001D218 24639320 */  addiu       $v1, $v1, %lo(D_80129320)
/* 01CDCC 8001D21C 03240019 */  multu       $t9, $a0
/* 01CDD0 8001D220 C6720004 */  lwc1        $f18, 0x4($s3)
/* 01CDD4 8001D224 00004012 */  mflo        $t0
/* 01CDD8 8001D228 00684821 */  addu        $t1, $v1, $t0
/* 01CDDC 8001D22C C5240038 */  lwc1        $f4, 0x38($t1)
/* 01CDE0 8001D230 46049182 */  mul.s       $f6, $f18, $f4
/* 01CDE4 8001D234 E7A60054 */  swc1        $f6, 0x54($sp)
/* 01CDE8 8001D238 844A0004 */  lh          $t2, 0x4($v0)
/* 01CDEC 8001D23C C6680008 */  lwc1        $f8, 0x8($s3)
/* 01CDF0 8001D240 01440019 */  multu       $t2, $a0
/* 01CDF4 8001D244 00005812 */  mflo        $t3
/* 01CDF8 8001D248 006B6021 */  addu        $t4, $v1, $t3
/* 01CDFC 8001D24C C58A0034 */  lwc1        $f10, 0x34($t4)
/* 01CE00 8001D250 460A4402 */  mul.s       $f16, $f8, $f10
/* 01CE04 8001D254 1000001B */  b           .L8001D2C4
/* 01CE08 8001D258 E7B00058 */   swc1       $f16, 0x58($sp)
.L8001D25C:
/* 01CE0C 8001D25C 18800012 */  blez        $a0, .L8001D2A8
/* 01CE10 8001D260 28810026 */   slti       $at, $a0, 0x26
/* 01CE14 8001D264 50200011 */  beql        $at, $zero, .L8001D2AC
/* 01CE18 8001D268 44802000 */   mtc1       $zero, $f4
/* 01CE1C 8001D26C 0C0072D4 */  jal         func_8001CB50
/* 01CE20 8001D270 27A50050 */   addiu      $a1, $sp, 0x50
/* 01CE24 8001D274 C7B20054 */  lwc1        $f18, 0x54($sp)
/* 01CE28 8001D278 C6640004 */  lwc1        $f4, 0x4($s3)
/* 01CE2C 8001D27C C7A80058 */  lwc1        $f8, 0x58($sp)
/* 01CE30 8001D280 3C01800B */  lui         $at, %hi(D_800A97EC)
/* 01CE34 8001D284 46049182 */  mul.s       $f6, $f18, $f4
/* 01CE38 8001D288 44809000 */  mtc1        $zero, $f18
/* 01CE3C 8001D28C C42297EC */  lwc1        $f2, %lo(D_800A97EC)($at)
/* 01CE40 8001D290 E7A60054 */  swc1        $f6, 0x54($sp)
/* 01CE44 8001D294 C66A0008 */  lwc1        $f10, 0x8($s3)
/* 01CE48 8001D298 E7B20050 */  swc1        $f18, 0x50($sp)
/* 01CE4C 8001D29C 460A4402 */  mul.s       $f16, $f8, $f10
/* 01CE50 8001D2A0 10000008 */  b           .L8001D2C4
/* 01CE54 8001D2A4 E7B00058 */   swc1       $f16, 0x58($sp)
.L8001D2A8:
/* 01CE58 8001D2A8 44802000 */  mtc1        $zero, $f4
.L8001D2AC:
/* 01CE5C 8001D2AC 00000000 */  nop
/* 01CE60 8001D2B0 E7A40050 */  swc1        $f4, 0x50($sp)
/* 01CE64 8001D2B4 C6660024 */  lwc1        $f6, 0x24($s3)
/* 01CE68 8001D2B8 E7A60054 */  swc1        $f6, 0x54($sp)
/* 01CE6C 8001D2BC C6680024 */  lwc1        $f8, 0x24($s3)
/* 01CE70 8001D2C0 E7A80058 */  swc1        $f8, 0x58($sp)
.L8001D2C4:
/* 01CE74 8001D2C4 860D0034 */  lh          $t5, 0x34($s0)
/* 01CE78 8001D2C8 C62A0020 */  lwc1        $f10, 0x20($s1)
/* 01CE7C 8001D2CC C7B00054 */  lwc1        $f16, 0x54($sp)
/* 01CE80 8001D2D0 448D2000 */  mtc1        $t5, $f4
/* 01CE84 8001D2D4 27A40050 */  addiu       $a0, $sp, 0x50
/* 01CE88 8001D2D8 46105482 */  mul.s       $f18, $f10, $f16
/* 01CE8C 8001D2DC C630001C */  lwc1        $f16, 0x1c($s1)
/* 01CE90 8001D2E0 468021A0 */  cvt.s.w     $f6, $f4
/* 01CE94 8001D2E4 C7A40058 */  lwc1        $f4, 0x58($sp)
/* 01CE98 8001D2E8 46023202 */  mul.s       $f8, $f6, $f2
/* 01CE9C 8001D2EC 46089280 */  add.s       $f10, $f18, $f8
/* 01CEA0 8001D2F0 46048182 */  mul.s       $f6, $f16, $f4
/* 01CEA4 8001D2F4 E7AA0054 */  swc1        $f10, 0x54($sp)
/* 01CEA8 8001D2F8 860E0028 */  lh          $t6, 0x28($s0)
/* 01CEAC 8001D2FC 000E7823 */  negu        $t7, $t6
/* 01CEB0 8001D300 448F9000 */  mtc1        $t7, $f18
/* 01CEB4 8001D304 00000000 */  nop
/* 01CEB8 8001D308 46809220 */  cvt.s.w     $f8, $f18
/* 01CEBC 8001D30C 46024282 */  mul.s       $f10, $f8, $f2
/* 01CEC0 8001D310 46065401 */  sub.s       $f16, $f10, $f6
/* 01CEC4 8001D314 0C001AAA */  jal         func_80006AA8
/* 01CEC8 8001D318 E7B00058 */   swc1       $f16, 0x58($sp)
.L8001D31C:
/* 01CECC 8001D31C 3C18800C */  lui         $t8, %hi(D_800BB3D4)
/* 01CED0 8001D320 8F18B3D4 */  lw          $t8, %lo(D_800BB3D4)($t8)
/* 01CED4 8001D324 3C01800C */  lui         $at, %hi(D_800BB3DC)
/* 01CED8 8001D328 AE180004 */  sw          $t8, 0x4($s0)
/* 01CEDC 8001D32C 8FB9005C */  lw          $t9, 0x5c($sp)
/* 01CEE0 8001D330 AE190000 */  sw          $t9, 0x0($s0)
/* 01CEE4 8001D334 8FA8005C */  lw          $t0, 0x5c($sp)
/* 01CEE8 8001D338 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01CEEC 8001D33C 8FB30020 */  lw          $s3, 0x20($sp)
/* 01CEF0 8001D340 AC28B3DC */  sw          $t0, %lo(D_800BB3DC)($at)
/* 01CEF4 8001D344 3C01800C */  lui         $at, %hi(D_800BB3D8)
/* 01CEF8 8001D348 AC20B3D8 */  sw          $zero, %lo(D_800BB3D8)($at)
/* 01CEFC 8001D34C 3C01800C */  lui         $at, %hi(D_800BB3D4)
/* 01CF00 8001D350 AC20B3D4 */  sw          $zero, %lo(D_800BB3D4)($at)
/* 01CF04 8001D354 3C014F00 */  lui         $at, 0x4f00
/* 01CF08 8001D358 44812000 */  mtc1        $at, $f4
/* 01CF0C 8001D35C 3C01800C */  lui         $at, %hi(D_800BB3D0)
/* 01CF10 8001D360 8FB2001C */  lw          $s2, 0x1c($sp)
/* 01CF14 8001D364 8FB10018 */  lw          $s1, 0x18($sp)
/* 01CF18 8001D368 8FB00014 */  lw          $s0, 0x14($sp)
/* 01CF1C 8001D36C 27BD0068 */  addiu       $sp, $sp, 0x68
/* 01CF20 8001D370 03E00008 */  jr          $ra
/* 01CF24 8001D374 E424B3D0 */   swc1       $f4, %lo(D_800BB3D0)($at)

glabel func_8001D378 # 4
/* 01CF28 8001D378 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01CF2C 8001D37C AFBF0014 */  sw          $ra, 0x14($sp)
/* 01CF30 8001D380 AFA40020 */  sw          $a0, 0x20($sp)
/* 01CF34 8001D384 8C870054 */  lw          $a3, 0x54($a0)
/* 01CF38 8001D388 3C04800B */  lui         $a0, %hi(D_800B1A70)
/* 01CF3C 8001D38C 24841A70 */  addiu       $a0, $a0, %lo(D_800B1A70)
/* 01CF40 8001D390 8CEF0000 */  lw          $t7, 0x0($a3)
/* 01CF44 8001D394 24050005 */  addiu       $a1, $zero, 0x5
/* 01CF48 8001D398 55E00004 */  bnel        $t7, $zero, .L8001D3AC
/* 01CF4C 8001D39C 84E60010 */   lh         $a2, 0x10($a3)
/* 01CF50 8001D3A0 10000033 */  b           .L8001D470
/* 01CF54 8001D3A4 00001025 */   move       $v0, $zero
/* 01CF58 8001D3A8 84E60010 */  lh          $a2, 0x10($a3)
.L8001D3AC:
/* 01CF5C 8001D3AC 0C002AAB */  jal         func_8000AAAC
/* 01CF60 8001D3B0 AFA7001C */   sw         $a3, 0x1c($sp)
/* 01CF64 8001D3B4 3C04800B */  lui         $a0, %hi(D_800B1A70)
/* 01CF68 8001D3B8 24841A70 */  addiu       $a0, $a0, %lo(D_800B1A70)
/* 01CF6C 8001D3BC 8C820000 */  lw          $v0, 0x0($a0)
/* 01CF70 8001D3C0 8FA7001C */  lw          $a3, 0x1c($sp)
/* 01CF74 8001D3C4 3C19E700 */  lui         $t9, 0xe700
/* 01CF78 8001D3C8 24580008 */  addiu       $t8, $v0, 0x8
/* 01CF7C 8001D3CC AC980000 */  sw          $t8, 0x0($a0)
/* 01CF80 8001D3D0 AC400004 */  sw          $zero, 0x4($v0)
/* 01CF84 8001D3D4 AC590000 */  sw          $t9, 0x0($v0)
/* 01CF88 8001D3D8 8C820000 */  lw          $v0, 0x0($a0)
/* 01CF8C 8001D3DC 3C09FA00 */  lui         $t1, 0xfa00
/* 01CF90 8001D3E0 2401FF00 */  addiu       $at, $zero, -0x100
/* 01CF94 8001D3E4 24480008 */  addiu       $t0, $v0, 0x8
/* 01CF98 8001D3E8 AC880000 */  sw          $t0, 0x0($a0)
/* 01CF9C 8001D3EC AC490000 */  sw          $t1, 0x0($v0)
/* 01CFA0 8001D3F0 84EA001C */  lh          $t2, 0x1c($a3)
/* 01CFA4 8001D3F4 3C0E8007 */  lui         $t6, %hi(D_80071E88)
/* 01CFA8 8001D3F8 3C08E200 */  lui         $t0, 0xe200
/* 01CFAC 8001D3FC 314B00FF */  andi        $t3, $t2, 0xff
/* 01CFB0 8001D400 01616025 */  or          $t4, $t3, $at
/* 01CFB4 8001D404 AC4C0004 */  sw          $t4, 0x4($v0)
/* 01CFB8 8001D408 8DCE1E88 */  lw          $t6, %lo(D_80071E88)($t6)
/* 01CFBC 8001D40C 8CED0004 */  lw          $t5, 0x4($a3)
/* 01CFC0 8001D410 3C0BE200 */  lui         $t3, 0xe200
/* 01CFC4 8001D414 8DCF0054 */  lw          $t7, 0x54($t6)
/* 01CFC8 8001D418 3508001C */  ori         $t0, $t0, 0x1c
/* 01CFCC 8001D41C 356B001C */  ori         $t3, $t3, 0x1c
/* 01CFD0 8001D420 8DF8018C */  lw          $t8, 0x18c($t7)
/* 01CFD4 8001D424 55B8000A */  bnel        $t5, $t8, .L8001D450
/* 01CFD8 8001D428 8C820000 */   lw         $v0, 0x0($a0)
/* 01CFDC 8001D42C 8C820000 */  lw          $v0, 0x0($a0)
/* 01CFE0 8001D430 3C090050 */  lui         $t1, 0x50
/* 01CFE4 8001D434 35294240 */  ori         $t1, $t1, 0x4240
/* 01CFE8 8001D438 24590008 */  addiu       $t9, $v0, 0x8
/* 01CFEC 8001D43C AC990000 */  sw          $t9, 0x0($a0)
/* 01CFF0 8001D440 AC490004 */  sw          $t1, 0x4($v0)
/* 01CFF4 8001D444 10000008 */  b           .L8001D468
/* 01CFF8 8001D448 AC480000 */   sw         $t0, 0x0($v0)
/* 01CFFC 8001D44C 8C820000 */  lw          $v0, 0x0($a0)
.L8001D450:
/* 01D000 8001D450 3C0C0050 */  lui         $t4, 0x50
/* 01D004 8001D454 358C4A50 */  ori         $t4, $t4, 0x4a50
/* 01D008 8001D458 244A0008 */  addiu       $t2, $v0, 0x8
/* 01D00C 8001D45C AC8A0000 */  sw          $t2, 0x0($a0)
/* 01D010 8001D460 AC4C0004 */  sw          $t4, 0x4($v0)
/* 01D014 8001D464 AC4B0000 */  sw          $t3, 0x0($v0)
.L8001D468:
/* 01D018 8001D468 8FAE0020 */  lw          $t6, 0x20($sp)
/* 01D01C 8001D46C 8DC20030 */  lw          $v0, 0x30($t6)
.L8001D470:
/* 01D020 8001D470 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01D024 8001D474 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01D028 8001D478 03E00008 */  jr          $ra
/* 01D02C 8001D47C 00000000 */   nop

glabel func_8001D480 # 5
/* 01D030 8001D480 3C02800C */  lui         $v0, %hi(D_800BB3D4)
/* 01D034 8001D484 03E00008 */  jr          $ra
/* 01D038 8001D488 8C42B3D4 */   lw         $v0, %lo(D_800BB3D4)($v0)

glabel func_8001D48C # 6
/* 01D03C 8001D48C 3C02800C */  lui         $v0, %hi(D_800BB3DC)
/* 01D040 8001D490 03E00008 */  jr          $ra
/* 01D044 8001D494 8C42B3DC */   lw         $v0, %lo(D_800BB3DC)($v0)

glabel func_8001D498 # 7
/* 01D048 8001D498 44842000 */  mtc1        $a0, $f4
/* 01D04C 8001D49C 3C01800B */  lui         $at, %hi(D_800A97F0)
/* 01D050 8001D4A0 C42897F0 */  lwc1        $f8, %lo(D_800A97F0)($at)
/* 01D054 8001D4A4 468021A0 */  cvt.s.w     $f6, $f4
/* 01D058 8001D4A8 3C028009 */  lui         $v0, %hi(D_8008E16C)
/* 01D05C 8001D4AC 2442E16C */  addiu       $v0, $v0, %lo(D_8008E16C)
/* 01D060 8001D4B0 46083002 */  mul.s       $f0, $f6, $f8
/* 01D064 8001D4B4 E4400008 */  swc1        $f0, 0x8($v0)
/* 01D068 8001D4B8 03E00008 */  jr          $ra
/* 01D06C 8001D4BC E440000C */   swc1       $f0, 0xc($v0)

glabel func_8001D4C0 # 8
/* 01D070 8001D4C0 44842000 */  mtc1        $a0, $f4
/* 01D074 8001D4C4 3C01800B */  lui         $at, %hi(D_800A97F4)
/* 01D078 8001D4C8 C42897F4 */  lwc1        $f8, %lo(D_800A97F4)($at)
/* 01D07C 8001D4CC 468021A0 */  cvt.s.w     $f6, $f4
/* 01D080 8001D4D0 3C018009 */  lui         $at, %hi(D_8008E17C)
/* 01D084 8001D4D4 46083282 */  mul.s       $f10, $f6, $f8
/* 01D088 8001D4D8 03E00008 */  jr          $ra
/* 01D08C 8001D4DC E42AE17C */   swc1       $f10, %lo(D_8008E17C)($at)

glabel func_8001D4E0 # 9
/* 01D090 8001D4E0 44842000 */  mtc1        $a0, $f4
/* 01D094 8001D4E4 3C01800B */  lui         $at, %hi(D_800A97F8)
/* 01D098 8001D4E8 C42897F8 */  lwc1        $f8, %lo(D_800A97F8)($at)
/* 01D09C 8001D4EC 468021A0 */  cvt.s.w     $f6, $f4
/* 01D0A0 8001D4F0 3C028009 */  lui         $v0, %hi(D_8008E16C)
/* 01D0A4 8001D4F4 2442E16C */  addiu       $v0, $v0, %lo(D_8008E16C)
/* 01D0A8 8001D4F8 46083002 */  mul.s       $f0, $f6, $f8
/* 01D0AC 8001D4FC E440001C */  swc1        $f0, 0x1c($v0)
/* 01D0B0 8001D500 03E00008 */  jr          $ra
/* 01D0B4 8001D504 E4400020 */   swc1       $f0, 0x20($v0)

glabel func_8001D508 # 10
/* 01D0B8 8001D508 44842000 */  mtc1        $a0, $f4
/* 01D0BC 8001D50C 3C01800B */  lui         $at, %hi(D_800A97FC)
/* 01D0C0 8001D510 C42897FC */  lwc1        $f8, %lo(D_800A97FC)($at)
/* 01D0C4 8001D514 468021A0 */  cvt.s.w     $f6, $f4
/* 01D0C8 8001D518 3C018009 */  lui         $at, %hi(D_8008E190)
/* 01D0CC 8001D51C 46083282 */  mul.s       $f10, $f6, $f8
/* 01D0D0 8001D520 03E00008 */  jr          $ra
/* 01D0D4 8001D524 E42AE190 */   swc1       $f10, %lo(D_8008E190)($at)
/* 01D0D8 8001D528 00000000 */  nop
/* 01D0DC 8001D52C 00000000 */  nop
