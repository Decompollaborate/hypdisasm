.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005DDB0 # 0
/* 05D960 8005DDB0 27BDFF40 */  addiu       $sp, $sp, -0xc0
/* 05D964 8005DDB4 AFBF0044 */  sw          $ra, 0x44($sp)
/* 05D968 8005DDB8 AFB50040 */  sw          $s5, 0x40($sp)
/* 05D96C 8005DDBC AFB4003C */  sw          $s4, 0x3c($sp)
/* 05D970 8005DDC0 AFB30038 */  sw          $s3, 0x38($sp)
/* 05D974 8005DDC4 AFB20034 */  sw          $s2, 0x34($sp)
/* 05D978 8005DDC8 AFB10030 */  sw          $s1, 0x30($sp)
/* 05D97C 8005DDCC AFB0002C */  sw          $s0, 0x2c($sp)
/* 05D980 8005DDD0 F7B60020 */  sdc1        $f22, 0x20($sp)
/* 05D984 8005DDD4 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 05D988 8005DDD8 AFA500C4 */  sw          $a1, 0xc4($sp)
/* 05D98C 8005DDDC 8C820024 */  lw          $v0, 0x24($a0)
/* 05D990 8005DDE0 00803025 */  move        $a2, $a0
/* 05D994 8005DDE4 27B200A0 */  addiu       $s2, $sp, 0xa0
/* 05D998 8005DDE8 04410004 */  bgez        $v0, .L8005DDFC
/* 05D99C 8005DDEC D4940000 */   ldc1       $f20, 0x0($a0)
/* 05D9A0 8005DDF0 240E0006 */  addiu       $t6, $zero, 0x6
/* 05D9A4 8005DDF4 1000000A */  b           .L8005DE20
/* 05D9A8 8005DDF8 AC8E0024 */   sw         $t6, 0x24($a0)
.L8005DDFC:
/* 05D9AC 8005DDFC 14400008 */  bne         $v0, $zero, .L8005DE20
/* 05D9B0 8005DE00 93AF00C7 */   lbu        $t7, 0xc7($sp)
/* 05D9B4 8005DE04 24010067 */  addiu       $at, $zero, 0x67
/* 05D9B8 8005DE08 11E10003 */  beq         $t7, $at, .L8005DE18
/* 05D9BC 8005DE0C AFAF0050 */   sw         $t7, 0x50($sp)
/* 05D9C0 8005DE10 24010047 */  addiu       $at, $zero, 0x47
/* 05D9C4 8005DE14 15E10002 */  bne         $t7, $at, .L8005DE20
.L8005DE18:
/* 05D9C8 8005DE18 24180001 */   addiu      $t8, $zero, 0x1
/* 05D9CC 8005DE1C ACD80024 */  sw          $t8, 0x24($a2)
.L8005DE20:
/* 05D9D0 8005DE20 27A4008A */  addiu       $a0, $sp, 0x8a
/* 05D9D4 8005DE24 00C02825 */  move        $a1, $a2
/* 05D9D8 8005DE28 0C017890 */  jal         func_8005E240
/* 05D9DC 8005DE2C AFA600C0 */   sw         $a2, 0xc0($sp)
/* 05D9E0 8005DE30 1840000F */  blez        $v0, .L8005DE70
/* 05D9E4 8005DE34 24010002 */   addiu      $at, $zero, 0x2
/* 05D9E8 8005DE38 14410004 */  bne         $v0, $at, .L8005DE4C
/* 05D9EC 8005DE3C 3C05800B */   lui        $a1, 0x800b
/* 05D9F0 8005DE40 3C05800B */  lui         $a1, %hi(D_800A8118)
/* 05D9F4 8005DE44 10000002 */  b           .L8005DE50
/* 05D9F8 8005DE48 24A58118 */   addiu      $a1, $a1, %lo(D_800A8118)
.L8005DE4C:
/* 05D9FC 8005DE4C 24A5811C */  addiu       $a1, $a1, -0x7ee4
.L8005DE50:
/* 05DA00 8005DE50 8FA200C0 */  lw          $v0, 0xc0($sp)
/* 05DA04 8005DE54 24190003 */  addiu       $t9, $zero, 0x3
/* 05DA08 8005DE58 24060003 */  addiu       $a2, $zero, 0x3
/* 05DA0C 8005DE5C AC590014 */  sw          $t9, 0x14($v0)
/* 05DA10 8005DE60 0C01267C */  jal         func_800499F0
/* 05DA14 8005DE64 8C440008 */   lw         $a0, 0x8($v0)
/* 05DA18 8005DE68 100000EB */  b           .L8005E218
/* 05DA1C 8005DE6C 8FBF0044 */   lw         $ra, 0x44($sp)
.L8005DE70:
/* 05DA20 8005DE70 14400003 */  bne         $v0, $zero, .L8005DE80
/* 05DA24 8005DE74 00003825 */   move       $a3, $zero
/* 05DA28 8005DE78 100000E0 */  b           .L8005E1FC
/* 05DA2C 8005DE7C A7A0008A */   sh         $zero, 0x8a($sp)
.L8005DE80:
/* 05DA30 8005DE80 4480B800 */  mtc1        $zero, $f23
/* 05DA34 8005DE84 4480B000 */  mtc1        $zero, $f22
/* 05DA38 8005DE88 93A800C7 */  lbu         $t0, 0xc7($sp)
/* 05DA3C 8005DE8C 87A9008A */  lh          $t1, 0x8a($sp)
/* 05DA40 8005DE90 4636A03C */  c.lt.d      $f20, $f22
/* 05DA44 8005DE94 24017597 */  addiu       $at, $zero, 0x7597
/* 05DA48 8005DE98 240F0003 */  addiu       $t7, $zero, 0x3
/* 05DA4C 8005DE9C 27B200A1 */  addiu       $s2, $sp, 0xa1
/* 05DA50 8005DEA0 45000002 */  bc1f        .L8005DEAC
/* 05DA54 8005DEA4 AFA80050 */   sw         $t0, 0x50($sp)
/* 05DA58 8005DEA8 4620A507 */  neg.d       $f20, $f20
.L8005DEAC:
/* 05DA5C 8005DEAC 01210019 */  multu       $t1, $at
/* 05DA60 8005DEB0 3C010001 */  lui         $at, 0x1
/* 05DA64 8005DEB4 342186A0 */  ori         $at, $at, 0x86a0
/* 05DA68 8005DEB8 00001825 */  move        $v1, $zero
/* 05DA6C 8005DEBC 24050006 */  addiu       $a1, $zero, 0x6
/* 05DA70 8005DEC0 00005012 */  mflo        $t2
/* 05DA74 8005DEC4 00000000 */  nop
/* 05DA78 8005DEC8 00000000 */  nop
/* 05DA7C 8005DECC 0141001A */  div         $zero, $t2, $at
/* 05DA80 8005DED0 00005812 */  mflo        $t3
/* 05DA84 8005DED4 256CFFFC */  addiu       $t4, $t3, -0x4
/* 05DA88 8005DED8 000C6C00 */  sll         $t5, $t4, 16
/* 05DA8C 8005DEDC 000D7403 */  sra         $t6, $t5, 16
/* 05DA90 8005DEE0 05C10018 */  bgez        $t6, .L8005DF44
/* 05DA94 8005DEE4 A7AC008A */   sh         $t4, 0x8a($sp)
/* 05DA98 8005DEE8 000CC400 */  sll         $t8, $t4, 16
/* 05DA9C 8005DEEC 0018CC03 */  sra         $t9, $t8, 16
/* 05DAA0 8005DEF0 01F92023 */  subu        $a0, $t7, $t9
/* 05DAA4 8005DEF4 2401FFFC */  addiu       $at, $zero, -0x4
/* 05DAA8 8005DEF8 00811024 */  and         $v0, $a0, $at
/* 05DAAC 8005DEFC 00024823 */  subu        $t1, $zero, $v0
/* 05DAB0 8005DF00 1840002C */  blez        $v0, .L8005DFB4
/* 05DAB4 8005DF04 A7A9008A */   sh         $t1, 0x8a($sp)
/* 05DAB8 8005DF08 3C04800B */  lui         $a0, %hi(D_800A80D0)
/* 05DABC 8005DF0C 248480D0 */  addiu       $a0, $a0, %lo(D_800A80D0)
.L8005DF10:
/* 05DAC0 8005DF10 304A0001 */  andi        $t2, $v0, 0x1
/* 05DAC4 8005DF14 11400006 */  beq         $t2, $zero, .L8005DF30
/* 05DAC8 8005DF18 00027043 */   sra        $t6, $v0, 1
/* 05DACC 8005DF1C 000358C0 */  sll         $t3, $v1, 3
/* 05DAD0 8005DF20 008B6821 */  addu        $t5, $a0, $t3
/* 05DAD4 8005DF24 D5A40000 */  ldc1        $f4, 0x0($t5)
/* 05DAD8 8005DF28 4624A502 */  mul.d       $f20, $f20, $f4
/* 05DADC 8005DF2C 00000000 */  nop
.L8005DF30:
/* 05DAE0 8005DF30 01C01025 */  move        $v0, $t6
/* 05DAE4 8005DF34 1DC0FFF6 */  bgtz        $t6, .L8005DF10
/* 05DAE8 8005DF38 24630001 */   addiu      $v1, $v1, 0x1
/* 05DAEC 8005DF3C 1000001E */  b           .L8005DFB8
/* 05DAF0 8005DF40 8FAE0050 */   lw         $t6, 0x50($sp)
.L8005DF44:
/* 05DAF4 8005DF44 87AC008A */  lh          $t4, 0x8a($sp)
/* 05DAF8 8005DF48 3C013FF0 */  lui         $at, 0x3ff0
/* 05DAFC 8005DF4C 00001825 */  move        $v1, $zero
/* 05DB00 8005DF50 19800018 */  blez        $t4, .L8005DFB4
/* 05DB04 8005DF54 3198FFFC */   andi       $t8, $t4, 0xfffc
/* 05DB08 8005DF58 00181400 */  sll         $v0, $t8, 16
/* 05DB0C 8005DF5C 0018CC00 */  sll         $t9, $t8, 16
/* 05DB10 8005DF60 44810800 */  mtc1        $at, $f1
/* 05DB14 8005DF64 44800000 */  mtc1        $zero, $f0
/* 05DB18 8005DF68 00194403 */  sra         $t0, $t9, 16
/* 05DB1C 8005DF6C 00027C03 */  sra         $t7, $v0, 16
/* 05DB20 8005DF70 A7B8008A */  sh          $t8, 0x8a($sp)
/* 05DB24 8005DF74 1900000E */  blez        $t0, .L8005DFB0
/* 05DB28 8005DF78 01E01025 */   move       $v0, $t7
/* 05DB2C 8005DF7C 3C04800B */  lui         $a0, %hi(D_800A80D0)
/* 05DB30 8005DF80 248480D0 */  addiu       $a0, $a0, %lo(D_800A80D0)
.L8005DF84:
/* 05DB34 8005DF84 30490001 */  andi        $t1, $v0, 0x1
/* 05DB38 8005DF88 11200006 */  beq         $t1, $zero, .L8005DFA4
/* 05DB3C 8005DF8C 00026843 */   sra        $t5, $v0, 1
/* 05DB40 8005DF90 000350C0 */  sll         $t2, $v1, 3
/* 05DB44 8005DF94 008A5821 */  addu        $t3, $a0, $t2
/* 05DB48 8005DF98 D5660000 */  ldc1        $f6, 0x0($t3)
/* 05DB4C 8005DF9C 46260002 */  mul.d       $f0, $f0, $f6
/* 05DB50 8005DFA0 00000000 */  nop
.L8005DFA4:
/* 05DB54 8005DFA4 01A01025 */  move        $v0, $t5
/* 05DB58 8005DFA8 1DA0FFF6 */  bgtz        $t5, .L8005DF84
/* 05DB5C 8005DFAC 24630001 */   addiu      $v1, $v1, 0x1
.L8005DFB0:
/* 05DB60 8005DFB0 4620A503 */  div.d       $f20, $f20, $f0
.L8005DFB4:
/* 05DB64 8005DFB4 8FAE0050 */  lw          $t6, 0x50($sp)
.L8005DFB8:
/* 05DB68 8005DFB8 24010066 */  addiu       $at, $zero, 0x66
/* 05DB6C 8005DFBC 8FAC00C0 */  lw          $t4, 0xc0($sp)
/* 05DB70 8005DFC0 15C10004 */  bne         $t6, $at, .L8005DFD4
/* 05DB74 8005DFC4 24180030 */   addiu      $t8, $zero, 0x30
/* 05DB78 8005DFC8 87A5008A */  lh          $a1, 0x8a($sp)
/* 05DB7C 8005DFCC 10000001 */  b           .L8005DFD4
/* 05DB80 8005DFD0 24A5000A */   addiu      $a1, $a1, 0xa
.L8005DFD4:
/* 05DB84 8005DFD4 8D8F0024 */  lw          $t7, 0x24($t4)
/* 05DB88 8005DFD8 00AFA821 */  addu        $s5, $a1, $t7
/* 05DB8C 8005DFDC 2AA10014 */  slti        $at, $s5, 0x14
/* 05DB90 8005DFE0 14200002 */  bne         $at, $zero, .L8005DFEC
/* 05DB94 8005DFE4 00000000 */   nop
/* 05DB98 8005DFE8 24150013 */  addiu       $s5, $zero, 0x13
.L8005DFEC:
/* 05DB9C 8005DFEC 1AA00031 */  blez        $s5, .L8005E0B4
/* 05DBA0 8005DFF0 A3B800A0 */   sb         $t8, 0xa0($sp)
/* 05DBA4 8005DFF4 4634B03C */  c.lt.d      $f22, $f20
/* 05DBA8 8005DFF8 24140030 */  addiu       $s4, $zero, 0x30
/* 05DBAC 8005DFFC 27B30064 */  addiu       $s3, $sp, 0x64
/* 05DBB0 8005E000 4502002D */  bc1fl       .L8005E0B8
/* 05DBB4 8005E004 87AD008A */   lh         $t5, 0x8a($sp)
/* 05DBB8 8005E008 4620A20D */  trunc.w.d   $f8, $f20
.L8005E00C:
/* 05DBBC 8005E00C 26B5FFF8 */  addiu       $s5, $s5, -0x8
/* 05DBC0 8005E010 26520008 */  addiu       $s2, $s2, 0x8
/* 05DBC4 8005E014 44114000 */  mfc1        $s1, $f8
/* 05DBC8 8005E018 1AA00008 */  blez        $s5, .L8005E03C
/* 05DBCC 8005E01C 00000000 */   nop
/* 05DBD0 8005E020 44915000 */  mtc1        $s1, $f10
/* 05DBD4 8005E024 3C01800B */  lui         $at, %hi(D_800A8128)
/* 05DBD8 8005E028 D4248128 */  ldc1        $f4, %lo(D_800A8128)($at)
/* 05DBDC 8005E02C 46805421 */  cvt.d.w     $f16, $f10
/* 05DBE0 8005E030 4630A481 */  sub.d       $f18, $f20, $f16
/* 05DBE4 8005E034 46249502 */  mul.d       $f20, $f18, $f4
/* 05DBE8 8005E038 00000000 */  nop
.L8005E03C:
/* 05DBEC 8005E03C 1A200011 */  blez        $s1, .L8005E084
/* 05DBF0 8005E040 24100008 */   addiu      $s0, $zero, 0x8
/* 05DBF4 8005E044 24100007 */  addiu       $s0, $zero, 0x7
/* 05DBF8 8005E048 0600000E */  bltz        $s0, .L8005E084
/* 05DBFC 8005E04C 02602025 */   move       $a0, $s3
.L8005E050:
/* 05DC00 8005E050 02202825 */  move        $a1, $s1
/* 05DC04 8005E054 0C017E34 */  jal         func_8005F8D0
/* 05DC08 8005E058 2406000A */   addiu      $a2, $zero, 0xa
/* 05DC0C 8005E05C 8FA80068 */  lw          $t0, 0x68($sp)
/* 05DC10 8005E060 2652FFFF */  addiu       $s2, $s2, -0x1
/* 05DC14 8005E064 25090030 */  addiu       $t1, $t0, 0x30
/* 05DC18 8005E068 A2490000 */  sb          $t1, 0x0($s2)
/* 05DC1C 8005E06C 8FB10064 */  lw          $s1, 0x64($sp)
/* 05DC20 8005E070 5A200005 */  blezl       $s1, .L8005E088
/* 05DC24 8005E074 2610FFFF */   addiu      $s0, $s0, -0x1
/* 05DC28 8005E078 2610FFFF */  addiu       $s0, $s0, -0x1
/* 05DC2C 8005E07C 0603FFF4 */  bgezl       $s0, .L8005E050
/* 05DC30 8005E080 02602025 */   move       $a0, $s3
.L8005E084:
/* 05DC34 8005E084 2610FFFF */  addiu       $s0, $s0, -0x1
.L8005E088:
/* 05DC38 8005E088 06000004 */  bltz        $s0, .L8005E09C
.L8005E08C:
/* 05DC3C 8005E08C 2610FFFF */   addiu      $s0, $s0, -0x1
/* 05DC40 8005E090 2652FFFF */  addiu       $s2, $s2, -0x1
/* 05DC44 8005E094 0601FFFD */  bgez        $s0, .L8005E08C
/* 05DC48 8005E098 A2540000 */   sb         $s4, 0x0($s2)
.L8005E09C:
/* 05DC4C 8005E09C 1AA00005 */  blez        $s5, .L8005E0B4
/* 05DC50 8005E0A0 26520008 */   addiu      $s2, $s2, 0x8
/* 05DC54 8005E0A4 4634B03C */  c.lt.d      $f22, $f20
/* 05DC58 8005E0A8 00000000 */  nop
/* 05DC5C 8005E0AC 4503FFD7 */  bc1tl       .L8005E00C
/* 05DC60 8005E0B0 4620A20D */   trunc.w.d  $f8, $f20
.L8005E0B4:
/* 05DC64 8005E0B4 87AD008A */  lh          $t5, 0x8a($sp)
.L8005E0B8:
/* 05DC68 8005E0B8 93AC00A1 */  lbu         $t4, 0xa1($sp)
/* 05DC6C 8005E0BC 27AB00A0 */  addiu       $t3, $sp, 0xa0
/* 05DC70 8005E0C0 24020030 */  addiu       $v0, $zero, 0x30
/* 05DC74 8005E0C4 024BA823 */  subu        $s5, $s2, $t3
/* 05DC78 8005E0C8 25AE0007 */  addiu       $t6, $t5, 0x7
/* 05DC7C 8005E0CC 26B5FFFF */  addiu       $s5, $s5, -0x1
/* 05DC80 8005E0D0 A7AE008A */  sh          $t6, 0x8a($sp)
/* 05DC84 8005E0D4 144C0009 */  bne         $v0, $t4, .L8005E0FC
/* 05DC88 8005E0D8 27B200A1 */   addiu      $s2, $sp, 0xa1
/* 05DC8C 8005E0DC 87AF008A */  lh          $t7, 0x8a($sp)
.L8005E0E0:
/* 05DC90 8005E0E0 26520001 */  addiu       $s2, $s2, 0x1
/* 05DC94 8005E0E4 26B5FFFF */  addiu       $s5, $s5, -0x1
/* 05DC98 8005E0E8 25F8FFFF */  addiu       $t8, $t7, -0x1
/* 05DC9C 8005E0EC A7B8008A */  sh          $t8, 0x8a($sp)
/* 05DCA0 8005E0F0 92590000 */  lbu         $t9, 0x0($s2)
/* 05DCA4 8005E0F4 5059FFFA */  beql        $v0, $t9, .L8005E0E0
/* 05DCA8 8005E0F8 87AF008A */   lh         $t7, 0x8a($sp)
.L8005E0FC:
/* 05DCAC 8005E0FC 8FA80050 */  lw          $t0, 0x50($sp)
/* 05DCB0 8005E100 24010066 */  addiu       $at, $zero, 0x66
/* 05DCB4 8005E104 8FAA00C0 */  lw          $t2, 0xc0($sp)
/* 05DCB8 8005E108 15010004 */  bne         $t0, $at, .L8005E11C
/* 05DCBC 8005E10C 8FA90050 */   lw         $t1, 0x50($sp)
/* 05DCC0 8005E110 87A5008A */  lh          $a1, 0x8a($sp)
/* 05DCC4 8005E114 10000009 */  b           .L8005E13C
/* 05DCC8 8005E118 24A50001 */   addiu      $a1, $a1, 0x1
.L8005E11C:
/* 05DCCC 8005E11C 24010065 */  addiu       $at, $zero, 0x65
/* 05DCD0 8005E120 11210003 */  beq         $t1, $at, .L8005E130
/* 05DCD4 8005E124 24010045 */   addiu      $at, $zero, 0x45
/* 05DCD8 8005E128 15210003 */  bne         $t1, $at, .L8005E138
/* 05DCDC 8005E12C 00001025 */   move       $v0, $zero
.L8005E130:
/* 05DCE0 8005E130 10000001 */  b           .L8005E138
/* 05DCE4 8005E134 24020001 */   addiu      $v0, $zero, 0x1
.L8005E138:
/* 05DCE8 8005E138 00402825 */  move        $a1, $v0
.L8005E13C:
/* 05DCEC 8005E13C 8D4B0024 */  lw          $t3, 0x24($t2)
/* 05DCF0 8005E140 00AB3821 */  addu        $a3, $a1, $t3
/* 05DCF4 8005E144 00076C00 */  sll         $t5, $a3, 16
/* 05DCF8 8005E148 000D3C03 */  sra         $a3, $t5, 16
/* 05DCFC 8005E14C 02A7082A */  slt         $at, $s5, $a3
/* 05DD00 8005E150 10200004 */  beq         $at, $zero, .L8005E164
/* 05DD04 8005E154 00000000 */   nop
/* 05DD08 8005E158 00153C00 */  sll         $a3, $s5, 16
/* 05DD0C 8005E15C 00076403 */  sra         $t4, $a3, 16
/* 05DD10 8005E160 01803825 */  move        $a3, $t4
.L8005E164:
/* 05DD14 8005E164 18E00025 */  blez        $a3, .L8005E1FC
/* 05DD18 8005E168 00F5082A */   slt        $at, $a3, $s5
/* 05DD1C 8005E16C 10200007 */  beq         $at, $zero, .L8005E18C
/* 05DD20 8005E170 00F21021 */   addu       $v0, $a3, $s2
/* 05DD24 8005E174 904F0000 */  lbu         $t7, 0x0($v0)
/* 05DD28 8005E178 29E10035 */  slti        $at, $t7, 0x35
/* 05DD2C 8005E17C 54200004 */  bnel        $at, $zero, .L8005E190
/* 05DD30 8005E180 24050030 */   addiu      $a1, $zero, 0x30
/* 05DD34 8005E184 10000003 */  b           .L8005E194
/* 05DD38 8005E188 24050039 */   addiu      $a1, $zero, 0x39
.L8005E18C:
/* 05DD3C 8005E18C 24050030 */  addiu       $a1, $zero, 0x30
.L8005E190:
/* 05DD40 8005E190 00F21021 */  addu        $v0, $a3, $s2
.L8005E194:
/* 05DD44 8005E194 9058FFFF */  lbu         $t8, -0x1($v0)
/* 05DD48 8005E198 24E3FFFF */  addiu       $v1, $a3, -0x1
/* 05DD4C 8005E19C 00A02025 */  move        $a0, $a1
/* 05DD50 8005E1A0 14B80009 */  bne         $a1, $t8, .L8005E1C8
/* 05DD54 8005E1A4 24010039 */   addiu      $at, $zero, 0x39
/* 05DD58 8005E1A8 00721021 */  addu        $v0, $v1, $s2
.L8005E1AC:
/* 05DD5C 8005E1AC 9049FFFF */  lbu         $t1, -0x1($v0)
/* 05DD60 8005E1B0 24E7FFFF */  addiu       $a3, $a3, -0x1
/* 05DD64 8005E1B4 0007CC00 */  sll         $t9, $a3, 16
/* 05DD68 8005E1B8 2463FFFF */  addiu       $v1, $v1, -0x1
/* 05DD6C 8005E1BC 2442FFFF */  addiu       $v0, $v0, -0x1
/* 05DD70 8005E1C0 1089FFFA */  beq         $a0, $t1, .L8005E1AC
/* 05DD74 8005E1C4 00193C03 */   sra        $a3, $t9, 16
.L8005E1C8:
/* 05DD78 8005E1C8 14810004 */  bne         $a0, $at, .L8005E1DC
/* 05DD7C 8005E1CC 02431021 */   addu       $v0, $s2, $v1
/* 05DD80 8005E1D0 904A0000 */  lbu         $t2, 0x0($v0)
/* 05DD84 8005E1D4 254B0001 */  addiu       $t3, $t2, 0x1
/* 05DD88 8005E1D8 A04B0000 */  sb          $t3, 0x0($v0)
.L8005E1DC:
/* 05DD8C 8005E1DC 04610007 */  bgez        $v1, .L8005E1FC
/* 05DD90 8005E1E0 87AC008A */   lh         $t4, 0x8a($sp)
/* 05DD94 8005E1E4 24E70001 */  addiu       $a3, $a3, 0x1
/* 05DD98 8005E1E8 00076C00 */  sll         $t5, $a3, 16
/* 05DD9C 8005E1EC 258F0001 */  addiu       $t7, $t4, 0x1
/* 05DDA0 8005E1F0 A7AF008A */  sh          $t7, 0x8a($sp)
/* 05DDA4 8005E1F4 000D3C03 */  sra         $a3, $t5, 16
/* 05DDA8 8005E1F8 2652FFFF */  addiu       $s2, $s2, -0x1
.L8005E1FC:
/* 05DDAC 8005E1FC 87B8008A */  lh          $t8, 0x8a($sp)
/* 05DDB0 8005E200 8FA400C0 */  lw          $a0, 0xc0($sp)
/* 05DDB4 8005E204 93A500C7 */  lbu         $a1, 0xc7($sp)
/* 05DDB8 8005E208 02403025 */  move        $a2, $s2
/* 05DDBC 8005E20C 0C0178BE */  jal         func_8005E2F8
/* 05DDC0 8005E210 AFB80010 */   sw         $t8, 0x10($sp)
/* 05DDC4 8005E214 8FBF0044 */  lw          $ra, 0x44($sp)
.L8005E218:
/* 05DDC8 8005E218 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 05DDCC 8005E21C D7B60020 */  ldc1        $f22, 0x20($sp)
/* 05DDD0 8005E220 8FB0002C */  lw          $s0, 0x2c($sp)
/* 05DDD4 8005E224 8FB10030 */  lw          $s1, 0x30($sp)
/* 05DDD8 8005E228 8FB20034 */  lw          $s2, 0x34($sp)
/* 05DDDC 8005E22C 8FB30038 */  lw          $s3, 0x38($sp)
/* 05DDE0 8005E230 8FB4003C */  lw          $s4, 0x3c($sp)
/* 05DDE4 8005E234 8FB50040 */  lw          $s5, 0x40($sp)
/* 05DDE8 8005E238 03E00008 */  jr          $ra
/* 05DDEC 8005E23C 27BD00C0 */   addiu      $sp, $sp, 0xc0

glabel func_8005E240 # 1
/* 05DDF0 8005E240 94A60000 */  lhu         $a2, 0x0($a1)
/* 05DDF4 8005E244 240107FF */  addiu       $at, $zero, 0x7ff
/* 05DDF8 8005E248 30C37FF0 */  andi        $v1, $a2, 0x7ff0
/* 05DDFC 8005E24C 00037103 */  sra         $t6, $v1, 4
/* 05DE00 8005E250 000E7C00 */  sll         $t7, $t6, 16
/* 05DE04 8005E254 000F1C03 */  sra         $v1, $t7, 16
/* 05DE08 8005E258 14610018 */  bne         $v1, $at, .L8005E2BC
/* 05DE0C 8005E25C 00000000 */   nop
/* 05DE10 8005E260 A4800000 */  sh          $zero, 0x0($a0)
/* 05DE14 8005E264 94B90000 */  lhu         $t9, 0x0($a1)
/* 05DE18 8005E268 24030002 */  addiu       $v1, $zero, 0x2
/* 05DE1C 8005E26C 00031400 */  sll         $v0, $v1, 16
/* 05DE20 8005E270 3328000F */  andi        $t0, $t9, 0xf
/* 05DE24 8005E274 1500000A */  bne         $t0, $zero, .L8005E2A0
/* 05DE28 8005E278 00026403 */   sra        $t4, $v0, 16
/* 05DE2C 8005E27C 94A90002 */  lhu         $t1, 0x2($a1)
/* 05DE30 8005E280 15200007 */  bne         $t1, $zero, .L8005E2A0
/* 05DE34 8005E284 00000000 */   nop
/* 05DE38 8005E288 94AA0004 */  lhu         $t2, 0x4($a1)
/* 05DE3C 8005E28C 15400004 */  bne         $t2, $zero, .L8005E2A0
/* 05DE40 8005E290 00000000 */   nop
/* 05DE44 8005E294 94AB0006 */  lhu         $t3, 0x6($a1)
/* 05DE48 8005E298 51600004 */  beql        $t3, $zero, .L8005E2AC
/* 05DE4C 8005E29C 24030001 */   addiu      $v1, $zero, 0x1
.L8005E2A0:
/* 05DE50 8005E2A0 03E00008 */  jr          $ra
/* 05DE54 8005E2A4 01801025 */   move       $v0, $t4
/* 05DE58 8005E2A8 24030001 */  addiu       $v1, $zero, 0x1
.L8005E2AC:
/* 05DE5C 8005E2AC 00031400 */  sll         $v0, $v1, 16
/* 05DE60 8005E2B0 00026403 */  sra         $t4, $v0, 16
/* 05DE64 8005E2B4 03E00008 */  jr          $ra
/* 05DE68 8005E2B8 01801025 */   move       $v0, $t4
.L8005E2BC:
/* 05DE6C 8005E2BC 18600007 */  blez        $v1, .L8005E2DC
/* 05DE70 8005E2C0 30CD800F */   andi       $t5, $a2, 0x800f
/* 05DE74 8005E2C4 35AE3FF0 */  ori         $t6, $t5, 0x3ff0
/* 05DE78 8005E2C8 A4AE0000 */  sh          $t6, 0x0($a1)
/* 05DE7C 8005E2CC 246FFC02 */  addiu       $t7, $v1, -0x3fe
/* 05DE80 8005E2D0 A48F0000 */  sh          $t7, 0x0($a0)
/* 05DE84 8005E2D4 03E00008 */  jr          $ra
/* 05DE88 8005E2D8 2402FFFF */   addiu      $v0, $zero, -0x1
.L8005E2DC:
/* 05DE8C 8005E2DC 04610003 */  bgez        $v1, .L8005E2EC
/* 05DE90 8005E2E0 00001025 */   move       $v0, $zero
/* 05DE94 8005E2E4 03E00008 */  jr          $ra
/* 05DE98 8005E2E8 24020002 */   addiu      $v0, $zero, 0x2
.L8005E2EC:
/* 05DE9C 8005E2EC A4800000 */  sh          $zero, 0x0($a0)
/* 05DEA0 8005E2F0 03E00008 */  jr          $ra
/* 05DEA4 8005E2F4 00000000 */   nop

glabel func_8005E2F8 # 2
/* 05DEA8 8005E2F8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 05DEAC 8005E2FC AFA7002C */  sw          $a3, 0x2c($sp)
/* 05DEB0 8005E300 00077400 */  sll         $t6, $a3, 16
/* 05DEB4 8005E304 000E3C03 */  sra         $a3, $t6, 16
/* 05DEB8 8005E308 AFB10018 */  sw          $s1, 0x18($sp)
/* 05DEBC 8005E30C AFB00014 */  sw          $s0, 0x14($sp)
/* 05DEC0 8005E310 00808025 */  move        $s0, $a0
/* 05DEC4 8005E314 00C08825 */  move        $s1, $a2
/* 05DEC8 8005E318 AFBF001C */  sw          $ra, 0x1c($sp)
/* 05DECC 8005E31C 1CE00004 */  bgtz        $a3, .L8005E330
/* 05DED0 8005E320 AFA50024 */   sw         $a1, 0x24($sp)
/* 05DED4 8005E324 3C11800B */  lui         $s1, %hi(D_800A8120)
/* 05DED8 8005E328 26318120 */  addiu       $s1, $s1, %lo(D_800A8120)
/* 05DEDC 8005E32C 24070001 */  addiu       $a3, $zero, 0x1
.L8005E330:
/* 05DEE0 8005E330 93A30027 */  lbu         $v1, 0x27($sp)
/* 05DEE4 8005E334 24020066 */  addiu       $v0, $zero, 0x66
/* 05DEE8 8005E338 24040067 */  addiu       $a0, $zero, 0x67
/* 05DEEC 8005E33C 5043000E */  beql        $v0, $v1, .L8005E378
/* 05DEF0 8005E340 87A80032 */   lh         $t0, 0x32($sp)
/* 05DEF4 8005E344 10830003 */  beq         $a0, $v1, .L8005E354
/* 05DEF8 8005E348 24010047 */   addiu      $at, $zero, 0x47
/* 05DEFC 8005E34C 146100A5 */  bne         $v1, $at, .L8005E5E4
/* 05DF00 8005E350 00000000 */   nop
.L8005E354:
/* 05DF04 8005E354 87A80032 */  lh          $t0, 0x32($sp)
/* 05DF08 8005E358 2901FFFC */  slti        $at, $t0, -0x4
/* 05DF0C 8005E35C 142000A1 */  bne         $at, $zero, .L8005E5E4
/* 05DF10 8005E360 00000000 */   nop
/* 05DF14 8005E364 8E180024 */  lw          $t8, 0x24($s0)
/* 05DF18 8005E368 0118082A */  slt         $at, $t0, $t8
/* 05DF1C 8005E36C 1020009D */  beq         $at, $zero, .L8005E5E4
/* 05DF20 8005E370 00000000 */   nop
/* 05DF24 8005E374 87A80032 */  lh          $t0, 0x32($sp)
.L8005E378:
/* 05DF28 8005E378 02202825 */  move        $a1, $s1
/* 05DF2C 8005E37C 25080001 */  addiu       $t0, $t0, 0x1
/* 05DF30 8005E380 0008CC00 */  sll         $t9, $t0, 16
/* 05DF34 8005E384 1043000E */  beq         $v0, $v1, .L8005E3C0
/* 05DF38 8005E388 00194403 */   sra        $t0, $t9, 16
/* 05DF3C 8005E38C 8E0A0030 */  lw          $t2, 0x30($s0)
/* 05DF40 8005E390 8E020024 */  lw          $v0, 0x24($s0)
/* 05DF44 8005E394 314B0008 */  andi        $t3, $t2, 0x8
/* 05DF48 8005E398 15600005 */  bne         $t3, $zero, .L8005E3B0
/* 05DF4C 8005E39C 00E2082A */   slt        $at, $a3, $v0
/* 05DF50 8005E3A0 50200004 */  beql        $at, $zero, .L8005E3B4
/* 05DF54 8005E3A4 00486023 */   subu       $t4, $v0, $t0
/* 05DF58 8005E3A8 AE070024 */  sw          $a3, 0x24($s0)
/* 05DF5C 8005E3AC 00E01025 */  move        $v0, $a3
.L8005E3B0:
/* 05DF60 8005E3B0 00486023 */  subu        $t4, $v0, $t0
.L8005E3B4:
/* 05DF64 8005E3B4 05810002 */  bgez        $t4, .L8005E3C0
/* 05DF68 8005E3B8 AE0C0024 */   sw         $t4, 0x24($s0)
/* 05DF6C 8005E3BC AE000024 */  sw          $zero, 0x24($s0)
.L8005E3C0:
/* 05DF70 8005E3C0 1D000034 */  bgtz        $t0, .L8005E494
/* 05DF74 8005E3C4 00E8082A */   slt        $at, $a3, $t0
/* 05DF78 8005E3C8 8E0F0008 */  lw          $t7, 0x8($s0)
/* 05DF7C 8005E3CC 8E180014 */  lw          $t8, 0x14($s0)
/* 05DF80 8005E3D0 240E0030 */  addiu       $t6, $zero, 0x30
/* 05DF84 8005E3D4 00081823 */  subu        $v1, $zero, $t0
/* 05DF88 8005E3D8 01F8C821 */  addu        $t9, $t7, $t8
/* 05DF8C 8005E3DC A32E0000 */  sb          $t6, 0x0($t9)
/* 05DF90 8005E3E0 8E090014 */  lw          $t1, 0x14($s0)
/* 05DF94 8005E3E4 8E020024 */  lw          $v0, 0x24($s0)
/* 05DF98 8005E3E8 252A0001 */  addiu       $t2, $t1, 0x1
/* 05DF9C 8005E3EC 1C400005 */  bgtz        $v0, .L8005E404
/* 05DFA0 8005E3F0 AE0A0014 */   sw         $t2, 0x14($s0)
/* 05DFA4 8005E3F4 8E0B0030 */  lw          $t3, 0x30($s0)
/* 05DFA8 8005E3F8 316C0008 */  andi        $t4, $t3, 0x8
/* 05DFAC 8005E3FC 5180000B */  beql        $t4, $zero, .L8005E42C
/* 05DFB0 8005E400 0043082A */   slt        $at, $v0, $v1
.L8005E404:
/* 05DFB4 8005E404 8E0F0008 */  lw          $t7, 0x8($s0)
/* 05DFB8 8005E408 8E180014 */  lw          $t8, 0x14($s0)
/* 05DFBC 8005E40C 240D002E */  addiu       $t5, $zero, 0x2e
/* 05DFC0 8005E410 01F87021 */  addu        $t6, $t7, $t8
/* 05DFC4 8005E414 A1CD0000 */  sb          $t5, 0x0($t6)
/* 05DFC8 8005E418 8E190014 */  lw          $t9, 0x14($s0)
/* 05DFCC 8005E41C 8E020024 */  lw          $v0, 0x24($s0)
/* 05DFD0 8005E420 27290001 */  addiu       $t1, $t9, 0x1
/* 05DFD4 8005E424 AE090014 */  sw          $t1, 0x14($s0)
/* 05DFD8 8005E428 0043082A */  slt         $at, $v0, $v1
.L8005E42C:
/* 05DFDC 8005E42C 50200006 */  beql        $at, $zero, .L8005E448
/* 05DFE0 8005E430 00486021 */   addu       $t4, $v0, $t0
/* 05DFE4 8005E434 00024023 */  subu        $t0, $zero, $v0
/* 05DFE8 8005E438 00085400 */  sll         $t2, $t0, 16
/* 05DFEC 8005E43C 000A4403 */  sra         $t0, $t2, 16
/* 05DFF0 8005E440 00081823 */  subu        $v1, $zero, $t0
/* 05DFF4 8005E444 00486021 */  addu        $t4, $v0, $t0
.L8005E448:
/* 05DFF8 8005E448 0187082A */  slt         $at, $t4, $a3
/* 05DFFC 8005E44C AE030018 */  sw          $v1, 0x18($s0)
/* 05E000 8005E450 10200004 */  beq         $at, $zero, .L8005E464
/* 05E004 8005E454 AE0C0024 */   sw         $t4, 0x24($s0)
/* 05E008 8005E458 000C3C00 */  sll         $a3, $t4, 16
/* 05E00C 8005E45C 00077C03 */  sra         $t7, $a3, 16
/* 05E010 8005E460 01E03825 */  move        $a3, $t7
.L8005E464:
/* 05E014 8005E464 8E180008 */  lw          $t8, 0x8($s0)
/* 05E018 8005E468 8E0D0014 */  lw          $t5, 0x14($s0)
/* 05E01C 8005E46C AE07001C */  sw          $a3, 0x1c($s0)
/* 05E020 8005E470 A7A7002E */  sh          $a3, 0x2e($sp)
/* 05E024 8005E474 00E03025 */  move        $a2, $a3
/* 05E028 8005E478 0C01267C */  jal         func_800499F0
/* 05E02C 8005E47C 030D2021 */   addu       $a0, $t8, $t5
/* 05E030 8005E480 87A7002E */  lh          $a3, 0x2e($sp)
/* 05E034 8005E484 8E0E0024 */  lw          $t6, 0x24($s0)
/* 05E038 8005E488 01C7C823 */  subu        $t9, $t6, $a3
/* 05E03C 8005E48C 100000F4 */  b           .L8005E860
/* 05E040 8005E490 AE190020 */   sw         $t9, 0x20($s0)
.L8005E494:
/* 05E044 8005E494 10200021 */  beq         $at, $zero, .L8005E51C
/* 05E048 8005E498 02202825 */   move       $a1, $s1
/* 05E04C 8005E49C 8E090008 */  lw          $t1, 0x8($s0)
/* 05E050 8005E4A0 8E0A0014 */  lw          $t2, 0x14($s0)
/* 05E054 8005E4A4 A7A80032 */  sh          $t0, 0x32($sp)
/* 05E058 8005E4A8 A7A7002E */  sh          $a3, 0x2e($sp)
/* 05E05C 8005E4AC 02202825 */  move        $a1, $s1
/* 05E060 8005E4B0 00E03025 */  move        $a2, $a3
/* 05E064 8005E4B4 0C01267C */  jal         func_800499F0
/* 05E068 8005E4B8 012A2021 */   addu       $a0, $t1, $t2
/* 05E06C 8005E4BC 87A7002E */  lh          $a3, 0x2e($sp)
/* 05E070 8005E4C0 87A80032 */  lh          $t0, 0x32($sp)
/* 05E074 8005E4C4 8E0B0014 */  lw          $t3, 0x14($s0)
/* 05E078 8005E4C8 8E020024 */  lw          $v0, 0x24($s0)
/* 05E07C 8005E4CC 01077823 */  subu        $t7, $t0, $a3
/* 05E080 8005E4D0 01676021 */  addu        $t4, $t3, $a3
/* 05E084 8005E4D4 AE0C0014 */  sw          $t4, 0x14($s0)
/* 05E088 8005E4D8 1C400005 */  bgtz        $v0, .L8005E4F0
/* 05E08C 8005E4DC AE0F0018 */   sw         $t7, 0x18($s0)
/* 05E090 8005E4E0 8E180030 */  lw          $t8, 0x30($s0)
/* 05E094 8005E4E4 330D0008 */  andi        $t5, $t8, 0x8
/* 05E098 8005E4E8 11A0000A */  beq         $t5, $zero, .L8005E514
/* 05E09C 8005E4EC 00000000 */   nop
.L8005E4F0:
/* 05E0A0 8005E4F0 8E190008 */  lw          $t9, 0x8($s0)
/* 05E0A4 8005E4F4 8E090014 */  lw          $t1, 0x14($s0)
/* 05E0A8 8005E4F8 240E002E */  addiu       $t6, $zero, 0x2e
/* 05E0AC 8005E4FC 03295021 */  addu        $t2, $t9, $t1
/* 05E0B0 8005E500 A14E0000 */  sb          $t6, 0x0($t2)
/* 05E0B4 8005E504 8E0B001C */  lw          $t3, 0x1c($s0)
/* 05E0B8 8005E508 8E020024 */  lw          $v0, 0x24($s0)
/* 05E0BC 8005E50C 256C0001 */  addiu       $t4, $t3, 0x1
/* 05E0C0 8005E510 AE0C001C */  sw          $t4, 0x1c($s0)
.L8005E514:
/* 05E0C4 8005E514 100000D2 */  b           .L8005E860
/* 05E0C8 8005E518 AE020020 */   sw         $v0, 0x20($s0)
.L8005E51C:
/* 05E0CC 8005E51C 8E0F0008 */  lw          $t7, 0x8($s0)
/* 05E0D0 8005E520 8E180014 */  lw          $t8, 0x14($s0)
/* 05E0D4 8005E524 A7A80032 */  sh          $t0, 0x32($sp)
/* 05E0D8 8005E528 A7A7002E */  sh          $a3, 0x2e($sp)
/* 05E0DC 8005E52C 01003025 */  move        $a2, $t0
/* 05E0E0 8005E530 0C01267C */  jal         func_800499F0
/* 05E0E4 8005E534 01F82021 */   addu       $a0, $t7, $t8
/* 05E0E8 8005E538 87A7002E */  lh          $a3, 0x2e($sp)
/* 05E0EC 8005E53C 87A80032 */  lh          $t0, 0x32($sp)
/* 05E0F0 8005E540 8E0D0014 */  lw          $t5, 0x14($s0)
/* 05E0F4 8005E544 8E020024 */  lw          $v0, 0x24($s0)
/* 05E0F8 8005E548 00E83823 */  subu        $a3, $a3, $t0
/* 05E0FC 8005E54C 00074C00 */  sll         $t1, $a3, 16
/* 05E100 8005E550 01A8C821 */  addu        $t9, $t5, $t0
/* 05E104 8005E554 AE190014 */  sw          $t9, 0x14($s0)
/* 05E108 8005E558 1C400005 */  bgtz        $v0, .L8005E570
/* 05E10C 8005E55C 00093C03 */   sra        $a3, $t1, 16
/* 05E110 8005E560 8E0A0030 */  lw          $t2, 0x30($s0)
/* 05E114 8005E564 314B0008 */  andi        $t3, $t2, 0x8
/* 05E118 8005E568 5160000B */  beql        $t3, $zero, .L8005E598
/* 05E11C 8005E56C 0047082A */   slt        $at, $v0, $a3
.L8005E570:
/* 05E120 8005E570 8E0F0008 */  lw          $t7, 0x8($s0)
/* 05E124 8005E574 8E180014 */  lw          $t8, 0x14($s0)
/* 05E128 8005E578 240C002E */  addiu       $t4, $zero, 0x2e
/* 05E12C 8005E57C 01F86821 */  addu        $t5, $t7, $t8
/* 05E130 8005E580 A1AC0000 */  sb          $t4, 0x0($t5)
/* 05E134 8005E584 8E190014 */  lw          $t9, 0x14($s0)
/* 05E138 8005E588 8E020024 */  lw          $v0, 0x24($s0)
/* 05E13C 8005E58C 27290001 */  addiu       $t1, $t9, 0x1
/* 05E140 8005E590 AE090014 */  sw          $t1, 0x14($s0)
/* 05E144 8005E594 0047082A */  slt         $at, $v0, $a3
.L8005E598:
/* 05E148 8005E598 10200004 */  beq         $at, $zero, .L8005E5AC
/* 05E14C 8005E59C 01112821 */   addu       $a1, $t0, $s1
/* 05E150 8005E5A0 00023C00 */  sll         $a3, $v0, 16
/* 05E154 8005E5A4 00077403 */  sra         $t6, $a3, 16
/* 05E158 8005E5A8 01C03825 */  move        $a3, $t6
.L8005E5AC:
/* 05E15C 8005E5AC 8E0A0008 */  lw          $t2, 0x8($s0)
/* 05E160 8005E5B0 8E0B0014 */  lw          $t3, 0x14($s0)
/* 05E164 8005E5B4 A7A7002E */  sh          $a3, 0x2e($sp)
/* 05E168 8005E5B8 00E03025 */  move        $a2, $a3
/* 05E16C 8005E5BC 0C01267C */  jal         func_800499F0
/* 05E170 8005E5C0 014B2021 */   addu       $a0, $t2, $t3
/* 05E174 8005E5C4 87A7002E */  lh          $a3, 0x2e($sp)
/* 05E178 8005E5C8 8E0F0014 */  lw          $t7, 0x14($s0)
/* 05E17C 8005E5CC 8E0C0024 */  lw          $t4, 0x24($s0)
/* 05E180 8005E5D0 01E7C021 */  addu        $t8, $t7, $a3
/* 05E184 8005E5D4 01876823 */  subu        $t5, $t4, $a3
/* 05E188 8005E5D8 AE180014 */  sw          $t8, 0x14($s0)
/* 05E18C 8005E5DC 100000A0 */  b           .L8005E860
/* 05E190 8005E5E0 AE0D0018 */   sw         $t5, 0x18($s0)
.L8005E5E4:
/* 05E194 8005E5E4 10830004 */  beq         $a0, $v1, .L8005E5F8
/* 05E198 8005E5E8 87A80032 */   lh         $t0, 0x32($sp)
/* 05E19C 8005E5EC 24010047 */  addiu       $at, $zero, 0x47
/* 05E1A0 8005E5F0 54610013 */  bnel        $v1, $at, .L8005E640
/* 05E1A4 8005E5F4 8E0F0008 */   lw         $t7, 0x8($s0)
.L8005E5F8:
/* 05E1A8 8005E5F8 8E020024 */  lw          $v0, 0x24($s0)
/* 05E1AC 8005E5FC 240E0065 */  addiu       $t6, $zero, 0x65
/* 05E1B0 8005E600 00E2082A */  slt         $at, $a3, $v0
/* 05E1B4 8005E604 50200004 */  beql        $at, $zero, .L8005E618
/* 05E1B8 8005E608 2459FFFF */   addiu      $t9, $v0, -0x1
/* 05E1BC 8005E60C AE070024 */  sw          $a3, 0x24($s0)
/* 05E1C0 8005E610 00E01025 */  move        $v0, $a3
/* 05E1C4 8005E614 2459FFFF */  addiu       $t9, $v0, -0x1
.L8005E618:
/* 05E1C8 8005E618 07210002 */  bgez        $t9, .L8005E624
/* 05E1CC 8005E61C AE190024 */   sw         $t9, 0x24($s0)
/* 05E1D0 8005E620 AE000024 */  sw          $zero, 0x24($s0)
.L8005E624:
/* 05E1D4 8005E624 54830004 */  bnel        $a0, $v1, .L8005E638
/* 05E1D8 8005E628 240A0045 */   addiu      $t2, $zero, 0x45
/* 05E1DC 8005E62C 10000003 */  b           .L8005E63C
/* 05E1E0 8005E630 A3AE0027 */   sb         $t6, 0x27($sp)
/* 05E1E4 8005E634 240A0045 */  addiu       $t2, $zero, 0x45
.L8005E638:
/* 05E1E8 8005E638 A3AA0027 */  sb          $t2, 0x27($sp)
.L8005E63C:
/* 05E1EC 8005E63C 8E0F0008 */  lw          $t7, 0x8($s0)
.L8005E640:
/* 05E1F0 8005E640 8E180014 */  lw          $t8, 0x14($s0)
/* 05E1F4 8005E644 922B0000 */  lbu         $t3, 0x0($s1)
/* 05E1F8 8005E648 26310001 */  addiu       $s1, $s1, 0x1
/* 05E1FC 8005E64C 01F86021 */  addu        $t4, $t7, $t8
/* 05E200 8005E650 A18B0000 */  sb          $t3, 0x0($t4)
/* 05E204 8005E654 8E0D0014 */  lw          $t5, 0x14($s0)
/* 05E208 8005E658 8E020024 */  lw          $v0, 0x24($s0)
/* 05E20C 8005E65C 25B90001 */  addiu       $t9, $t5, 0x1
/* 05E210 8005E660 1C400005 */  bgtz        $v0, .L8005E678
/* 05E214 8005E664 AE190014 */   sw         $t9, 0x14($s0)
/* 05E218 8005E668 8E090030 */  lw          $t1, 0x30($s0)
/* 05E21C 8005E66C 312E0008 */  andi        $t6, $t1, 0x8
/* 05E220 8005E670 11C0000A */  beq         $t6, $zero, .L8005E69C
/* 05E224 8005E674 00000000 */   nop
.L8005E678:
/* 05E228 8005E678 8E0F0008 */  lw          $t7, 0x8($s0)
/* 05E22C 8005E67C 8E180014 */  lw          $t8, 0x14($s0)
/* 05E230 8005E680 240A002E */  addiu       $t2, $zero, 0x2e
/* 05E234 8005E684 01F85821 */  addu        $t3, $t7, $t8
/* 05E238 8005E688 A16A0000 */  sb          $t2, 0x0($t3)
/* 05E23C 8005E68C 8E0C0014 */  lw          $t4, 0x14($s0)
/* 05E240 8005E690 8E020024 */  lw          $v0, 0x24($s0)
/* 05E244 8005E694 258D0001 */  addiu       $t5, $t4, 0x1
/* 05E248 8005E698 AE0D0014 */  sw          $t5, 0x14($s0)
.L8005E69C:
/* 05E24C 8005E69C 5840001A */  blezl       $v0, .L8005E708
/* 05E250 8005E6A0 8E190008 */   lw         $t9, 0x8($s0)
/* 05E254 8005E6A4 24E7FFFF */  addiu       $a3, $a3, -0x1
/* 05E258 8005E6A8 0007CC00 */  sll         $t9, $a3, 16
/* 05E25C 8005E6AC 00193C03 */  sra         $a3, $t9, 16
/* 05E260 8005E6B0 0047082A */  slt         $at, $v0, $a3
/* 05E264 8005E6B4 10200004 */  beq         $at, $zero, .L8005E6C8
/* 05E268 8005E6B8 02202825 */   move       $a1, $s1
/* 05E26C 8005E6BC 00023C00 */  sll         $a3, $v0, 16
/* 05E270 8005E6C0 00077403 */  sra         $t6, $a3, 16
/* 05E274 8005E6C4 01C03825 */  move        $a3, $t6
.L8005E6C8:
/* 05E278 8005E6C8 8E0F0008 */  lw          $t7, 0x8($s0)
/* 05E27C 8005E6CC 8E180014 */  lw          $t8, 0x14($s0)
/* 05E280 8005E6D0 A7A80032 */  sh          $t0, 0x32($sp)
/* 05E284 8005E6D4 A7A7002E */  sh          $a3, 0x2e($sp)
/* 05E288 8005E6D8 00E03025 */  move        $a2, $a3
/* 05E28C 8005E6DC 0C01267C */  jal         func_800499F0
/* 05E290 8005E6E0 01F82021 */   addu       $a0, $t7, $t8
/* 05E294 8005E6E4 87A7002E */  lh          $a3, 0x2e($sp)
/* 05E298 8005E6E8 8E0A0014 */  lw          $t2, 0x14($s0)
/* 05E29C 8005E6EC 8E0C0024 */  lw          $t4, 0x24($s0)
/* 05E2A0 8005E6F0 87A80032 */  lh          $t0, 0x32($sp)
/* 05E2A4 8005E6F4 01475821 */  addu        $t3, $t2, $a3
/* 05E2A8 8005E6F8 01876823 */  subu        $t5, $t4, $a3
/* 05E2AC 8005E6FC AE0B0014 */  sw          $t3, 0x14($s0)
/* 05E2B0 8005E700 AE0D0018 */  sw          $t5, 0x18($s0)
/* 05E2B4 8005E704 8E190008 */  lw          $t9, 0x8($s0)
.L8005E708:
/* 05E2B8 8005E708 8E090014 */  lw          $t1, 0x14($s0)
/* 05E2BC 8005E70C 93AE0027 */  lbu         $t6, 0x27($sp)
/* 05E2C0 8005E710 03298821 */  addu        $s1, $t9, $t1
/* 05E2C4 8005E714 26310001 */  addiu       $s1, $s1, 0x1
/* 05E2C8 8005E718 05000005 */  bltz        $t0, .L8005E730
/* 05E2CC 8005E71C A22EFFFF */   sb         $t6, -0x1($s1)
/* 05E2D0 8005E720 240F002B */  addiu       $t7, $zero, 0x2b
/* 05E2D4 8005E724 A22F0000 */  sb          $t7, 0x0($s1)
/* 05E2D8 8005E728 10000008 */  b           .L8005E74C
/* 05E2DC 8005E72C 26310001 */   addiu      $s1, $s1, 0x1
.L8005E730:
/* 05E2E0 8005E730 00084023 */  subu        $t0, $zero, $t0
/* 05E2E4 8005E734 00085400 */  sll         $t2, $t0, 16
/* 05E2E8 8005E738 2418002D */  addiu       $t8, $zero, 0x2d
/* 05E2EC 8005E73C 000A5C03 */  sra         $t3, $t2, 16
/* 05E2F0 8005E740 A2380000 */  sb          $t8, 0x0($s1)
/* 05E2F4 8005E744 26310001 */  addiu       $s1, $s1, 0x1
/* 05E2F8 8005E748 01604025 */  move        $t0, $t3
.L8005E74C:
/* 05E2FC 8005E74C 29010064 */  slti        $at, $t0, 0x64
/* 05E300 8005E750 5420002A */  bnel        $at, $zero, .L8005E7FC
/* 05E304 8005E754 2402000A */   addiu      $v0, $zero, 0xa
/* 05E308 8005E758 290103E8 */  slti        $at, $t0, 0x3e8
/* 05E30C 8005E75C 14200013 */  bne         $at, $zero, .L8005E7AC
/* 05E310 8005E760 240203E8 */   addiu      $v0, $zero, 0x3e8
/* 05E314 8005E764 0102001A */  div         $zero, $t0, $v0
/* 05E318 8005E768 14400002 */  bne         $v0, $zero, .L8005E774
/* 05E31C 8005E76C 00000000 */   nop
/* 05E320 8005E770 0007000D */  break       7
.L8005E774:
/* 05E324 8005E774 2401FFFF */  addiu       $at, $zero, -0x1
/* 05E328 8005E778 14410004 */  bne         $v0, $at, .L8005E78C
/* 05E32C 8005E77C 3C018000 */   lui        $at, 0x8000
/* 05E330 8005E780 15010002 */  bne         $t0, $at, .L8005E78C
/* 05E334 8005E784 00000000 */   nop
/* 05E338 8005E788 0006000D */  break       6
.L8005E78C:
/* 05E33C 8005E78C 00004010 */  mfhi        $t0
/* 05E340 8005E790 0008CC00 */  sll         $t9, $t0, 16
/* 05E344 8005E794 00006012 */  mflo        $t4
/* 05E348 8005E798 258D0030 */  addiu       $t5, $t4, 0x30
/* 05E34C 8005E79C 00194C03 */  sra         $t1, $t9, 16
/* 05E350 8005E7A0 01204025 */  move        $t0, $t1
/* 05E354 8005E7A4 A22D0000 */  sb          $t5, 0x0($s1)
/* 05E358 8005E7A8 26310001 */  addiu       $s1, $s1, 0x1
.L8005E7AC:
/* 05E35C 8005E7AC 24020064 */  addiu       $v0, $zero, 0x64
/* 05E360 8005E7B0 0102001A */  div         $zero, $t0, $v0
/* 05E364 8005E7B4 14400002 */  bne         $v0, $zero, .L8005E7C0
/* 05E368 8005E7B8 00000000 */   nop
/* 05E36C 8005E7BC 0007000D */  break       7
.L8005E7C0:
/* 05E370 8005E7C0 2401FFFF */  addiu       $at, $zero, -0x1
/* 05E374 8005E7C4 14410004 */  bne         $v0, $at, .L8005E7D8
/* 05E378 8005E7C8 3C018000 */   lui        $at, 0x8000
/* 05E37C 8005E7CC 15010002 */  bne         $t0, $at, .L8005E7D8
/* 05E380 8005E7D0 00000000 */   nop
/* 05E384 8005E7D4 0006000D */  break       6
.L8005E7D8:
/* 05E388 8005E7D8 00004010 */  mfhi        $t0
/* 05E38C 8005E7DC 0008C400 */  sll         $t8, $t0, 16
/* 05E390 8005E7E0 00007012 */  mflo        $t6
/* 05E394 8005E7E4 25CF0030 */  addiu       $t7, $t6, 0x30
/* 05E398 8005E7E8 00185403 */  sra         $t2, $t8, 16
/* 05E39C 8005E7EC 01404025 */  move        $t0, $t2
/* 05E3A0 8005E7F0 A22F0000 */  sb          $t7, 0x0($s1)
/* 05E3A4 8005E7F4 26310001 */  addiu       $s1, $s1, 0x1
/* 05E3A8 8005E7F8 2402000A */  addiu       $v0, $zero, 0xa
.L8005E7FC:
/* 05E3AC 8005E7FC 0102001A */  div         $zero, $t0, $v0
/* 05E3B0 8005E800 14400002 */  bne         $v0, $zero, .L8005E80C
/* 05E3B4 8005E804 00000000 */   nop
/* 05E3B8 8005E808 0007000D */  break       7
.L8005E80C:
/* 05E3BC 8005E80C 2401FFFF */  addiu       $at, $zero, -0x1
/* 05E3C0 8005E810 14410004 */  bne         $v0, $at, .L8005E824
/* 05E3C4 8005E814 3C018000 */   lui        $at, 0x8000
/* 05E3C8 8005E818 15010002 */  bne         $t0, $at, .L8005E824
/* 05E3CC 8005E81C 00000000 */   nop
/* 05E3D0 8005E820 0006000D */  break       6
.L8005E824:
/* 05E3D4 8005E824 00004010 */  mfhi        $t0
/* 05E3D8 8005E828 00086C00 */  sll         $t5, $t0, 16
/* 05E3DC 8005E82C 000DCC03 */  sra         $t9, $t5, 16
/* 05E3E0 8005E830 00005812 */  mflo        $t3
/* 05E3E4 8005E834 256C0030 */  addiu       $t4, $t3, 0x30
/* 05E3E8 8005E838 27290030 */  addiu       $t1, $t9, 0x30
/* 05E3EC 8005E83C A22C0000 */  sb          $t4, 0x0($s1)
/* 05E3F0 8005E840 A2290001 */  sb          $t1, 0x1($s1)
/* 05E3F4 8005E844 8E0E0008 */  lw          $t6, 0x8($s0)
/* 05E3F8 8005E848 8E180014 */  lw          $t8, 0x14($s0)
/* 05E3FC 8005E84C 26310002 */  addiu       $s1, $s1, 0x2
/* 05E400 8005E850 022E7823 */  subu        $t7, $s1, $t6
/* 05E404 8005E854 01F85023 */  subu        $t2, $t7, $t8
/* 05E408 8005E858 03204025 */  move        $t0, $t9
/* 05E40C 8005E85C AE0A001C */  sw          $t2, 0x1c($s0)
.L8005E860:
/* 05E410 8005E860 8E0B0030 */  lw          $t3, 0x30($s0)
/* 05E414 8005E864 24010010 */  addiu       $at, $zero, 0x10
/* 05E418 8005E868 316C0014 */  andi        $t4, $t3, 0x14
/* 05E41C 8005E86C 55810010 */  bnel        $t4, $at, .L8005E8B0
/* 05E420 8005E870 8FBF001C */   lw         $ra, 0x1c($sp)
/* 05E424 8005E874 8E0D000C */  lw          $t5, 0xc($s0)
/* 05E428 8005E878 8E190014 */  lw          $t9, 0x14($s0)
/* 05E42C 8005E87C 8E0E0018 */  lw          $t6, 0x18($s0)
/* 05E430 8005E880 8E18001C */  lw          $t8, 0x1c($s0)
/* 05E434 8005E884 8E0B0020 */  lw          $t3, 0x20($s0)
/* 05E438 8005E888 01B94821 */  addu        $t1, $t5, $t9
/* 05E43C 8005E88C 8E030028 */  lw          $v1, 0x28($s0)
/* 05E440 8005E890 012E7821 */  addu        $t7, $t1, $t6
/* 05E444 8005E894 01F85021 */  addu        $t2, $t7, $t8
/* 05E448 8005E898 014B1021 */  addu        $v0, $t2, $t3
/* 05E44C 8005E89C 0043082A */  slt         $at, $v0, $v1
/* 05E450 8005E8A0 10200002 */  beq         $at, $zero, .L8005E8AC
/* 05E454 8005E8A4 00626023 */   subu       $t4, $v1, $v0
/* 05E458 8005E8A8 AE0C0010 */  sw          $t4, 0x10($s0)
.L8005E8AC:
/* 05E45C 8005E8AC 8FBF001C */  lw          $ra, 0x1c($sp)
.L8005E8B0:
/* 05E460 8005E8B0 8FB00014 */  lw          $s0, 0x14($sp)
/* 05E464 8005E8B4 8FB10018 */  lw          $s1, 0x18($sp)
/* 05E468 8005E8B8 03E00008 */  jr          $ra
/* 05E46C 8005E8BC 27BD0020 */   addiu      $sp, $sp, 0x20

glabel func_8005E8C0 # 3
/* 05E470 8005E8C0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 05E474 8005E8C4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 05E478 8005E8C8 AFA40028 */  sw          $a0, 0x28($sp)
/* 05E47C 8005E8CC 0C015FFC */  jal         func_80057FF0
/* 05E480 8005E8D0 AFB00018 */   sw         $s0, 0x18($sp)
/* 05E484 8005E8D4 8FAF0028 */  lw          $t7, 0x28($sp)
/* 05E488 8005E8D8 3C0E800A */  lui         $t6, %hi(D_8009DC80)
/* 05E48C 8005E8DC 8DCEDC80 */  lw          $t6, %lo(D_8009DC80)($t6)
/* 05E490 8005E8E0 2401FBFE */  addiu       $at, $zero, -0x402
/* 05E494 8005E8E4 01E1C024 */  and         $t8, $t7, $at
/* 05E498 8005E8E8 0300C827 */  nor         $t9, $t8, $zero
/* 05E49C 8005E8EC 00408025 */  move        $s0, $v0
/* 05E4A0 8005E8F0 3C01800A */  lui         $at, %hi(D_8009DC80)
/* 05E4A4 8005E8F4 01D94024 */  and         $t0, $t6, $t9
/* 05E4A8 8005E8F8 AC28DC80 */  sw          $t0, %lo(D_8009DC80)($at)
/* 05E4AC 8005E8FC 0C016018 */  jal         func_80058060
/* 05E4B0 8005E900 02002025 */   move       $a0, $s0
/* 05E4B4 8005E904 8FBF001C */  lw          $ra, 0x1c($sp)
/* 05E4B8 8005E908 8FB00018 */  lw          $s0, 0x18($sp)
/* 05E4BC 8005E90C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 05E4C0 8005E910 03E00008 */  jr          $ra
/* 05E4C4 8005E914 00000000 */   nop
/* 05E4C8 8005E918 00000000 */  nop
/* 05E4CC 8005E91C 00000000 */  nop
