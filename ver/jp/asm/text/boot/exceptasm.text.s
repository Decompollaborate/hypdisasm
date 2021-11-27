.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80054C80 # 0
/* 054830 80054C80 3C1A8005 */  lui         $k0, %hi(func_80054C90)
/* 054834 80054C84 275A4C90 */  addiu       $k0, $k0, %lo(func_80054C90)
/* 054838 80054C88 03400008 */  jr          $k0
/* 05483C 80054C8C 00000000 */   nop

glabel func_80054C90 # 1
/* 054840 80054C90 3C1A8010 */  lui         $k0, %hi(D_80104C00)
/* 054844 80054C94 275A4C00 */  addiu       $k0, $k0, %lo(D_80104C00)
/* 054848 80054C98 FF410020 */  sd          $at, 0x20($k0)
/* 05484C 80054C9C 401B6000 */  mfc0        $k1, Status
/* 054850 80054CA0 AF5B0118 */  sw          $k1, 0x118($k0)
/* 054854 80054CA4 2401FFFC */  addiu       $at, $zero, -0x4
/* 054858 80054CA8 0361D824 */  and         $k1, $k1, $at
/* 05485C 80054CAC 409B6000 */  mtc0        $k1, Status
/* 054860 80054CB0 FF480058 */  sd          $t0, 0x58($k0)
/* 054864 80054CB4 FF490060 */  sd          $t1, 0x60($k0)
/* 054868 80054CB8 FF4A0068 */  sd          $t2, 0x68($k0)
/* 05486C 80054CBC AF400018 */  sw          $zero, 0x18($k0)
/* 054870 80054CC0 40086800 */  mfc0        $t0, Cause
/* 054874 80054CC4 03404025 */  move        $t0, $k0
/* 054878 80054CC8 3C1A800A */  lui         $k0, %hi(D_800A4D70)
/* 05487C 80054CCC 8F5A4D70 */  lw          $k0, %lo(D_800A4D70)($k0)
/* 054880 80054CD0 DD090020 */  ld          $t1, 0x20($t0)
/* 054884 80054CD4 FF490020 */  sd          $t1, 0x20($k0)
/* 054888 80054CD8 DD090118 */  ld          $t1, 0x118($t0)
/* 05488C 80054CDC FF490118 */  sd          $t1, 0x118($k0)
/* 054890 80054CE0 DD090058 */  ld          $t1, 0x58($t0)
/* 054894 80054CE4 FF490058 */  sd          $t1, 0x58($k0)
/* 054898 80054CE8 DD090060 */  ld          $t1, 0x60($t0)
/* 05489C 80054CEC FF490060 */  sd          $t1, 0x60($k0)
/* 0548A0 80054CF0 DD090068 */  ld          $t1, 0x68($t0)
/* 0548A4 80054CF4 FF490068 */  sd          $t1, 0x68($k0)
/* 0548A8 80054CF8 8F5B0118 */  lw          $k1, 0x118($k0)
/* 0548AC 80054CFC 00004012 */  mflo        $t0
/* 0548B0 80054D00 FF480108 */  sd          $t0, 0x108($k0)
/* 0548B4 80054D04 00004010 */  mfhi        $t0
/* 0548B8 80054D08 3369FF00 */  andi        $t1, $k1, 0xff00
/* 0548BC 80054D0C FF420028 */  sd          $v0, 0x28($k0)
/* 0548C0 80054D10 FF430030 */  sd          $v1, 0x30($k0)
/* 0548C4 80054D14 FF440038 */  sd          $a0, 0x38($k0)
/* 0548C8 80054D18 FF450040 */  sd          $a1, 0x40($k0)
/* 0548CC 80054D1C FF460048 */  sd          $a2, 0x48($k0)
/* 0548D0 80054D20 FF470050 */  sd          $a3, 0x50($k0)
/* 0548D4 80054D24 FF4B0070 */  sd          $t3, 0x70($k0)
/* 0548D8 80054D28 FF4C0078 */  sd          $t4, 0x78($k0)
/* 0548DC 80054D2C FF4D0080 */  sd          $t5, 0x80($k0)
/* 0548E0 80054D30 FF4E0088 */  sd          $t6, 0x88($k0)
/* 0548E4 80054D34 FF4F0090 */  sd          $t7, 0x90($k0)
/* 0548E8 80054D38 FF500098 */  sd          $s0, 0x98($k0)
/* 0548EC 80054D3C FF5100A0 */  sd          $s1, 0xa0($k0)
/* 0548F0 80054D40 FF5200A8 */  sd          $s2, 0xa8($k0)
/* 0548F4 80054D44 FF5300B0 */  sd          $s3, 0xb0($k0)
/* 0548F8 80054D48 FF5400B8 */  sd          $s4, 0xb8($k0)
/* 0548FC 80054D4C FF5500C0 */  sd          $s5, 0xc0($k0)
/* 054900 80054D50 FF5600C8 */  sd          $s6, 0xc8($k0)
/* 054904 80054D54 FF5700D0 */  sd          $s7, 0xd0($k0)
/* 054908 80054D58 FF5800D8 */  sd          $t8, 0xd8($k0)
/* 05490C 80054D5C FF5900E0 */  sd          $t9, 0xe0($k0)
/* 054910 80054D60 FF5C00E8 */  sd          $gp, 0xe8($k0)
/* 054914 80054D64 FF5D00F0 */  sd          $sp, 0xf0($k0)
/* 054918 80054D68 FF5E00F8 */  sd          $fp, 0xf8($k0)
/* 05491C 80054D6C FF5F0100 */  sd          $ra, 0x100($k0)
/* 054920 80054D70 11200011 */  beqz        $t1, .L80054DB8
/* 054924 80054D74 FF480110 */   sd         $t0, 0x110($k0)
/* 054928 80054D78 3C08800A */  lui         $t0, %hi(D_800A3130)
/* 05492C 80054D7C 25083130 */  addiu       $t0, $t0, %lo(D_800A3130)
/* 054930 80054D80 8D080000 */  lw          $t0, 0x0($t0)
/* 054934 80054D84 2401FFFF */  addiu       $at, $zero, -0x1
/* 054938 80054D88 01015026 */  xor         $t2, $t0, $at
/* 05493C 80054D8C 3C01FFFF */  lui         $at, 0xffff
/* 054940 80054D90 314AFF00 */  andi        $t2, $t2, 0xff00
/* 054944 80054D94 342100FF */  ori         $at, $at, 0xff
/* 054948 80054D98 012A6025 */  or          $t4, $t1, $t2
/* 05494C 80054D9C 03615824 */  and         $t3, $k1, $at
/* 054950 80054DA0 3108FF00 */  andi        $t0, $t0, 0xff00
/* 054954 80054DA4 016C5825 */  or          $t3, $t3, $t4
/* 054958 80054DA8 01284824 */  and         $t1, $t1, $t0
/* 05495C 80054DAC 0361D824 */  and         $k1, $k1, $at
/* 054960 80054DB0 AF4B0118 */  sw          $t3, 0x118($k0)
/* 054964 80054DB4 0369D825 */  or          $k1, $k1, $t1
.L80054DB8:
/* 054968 80054DB8 3C09A430 */  lui         $t1, %hi(D_A430000C)
/* 05496C 80054DBC 8D29000C */  lw          $t1, %lo(D_A430000C)($t1)
/* 054970 80054DC0 1120000B */  beqz        $t1, .L80054DF0
/* 054974 80054DC4 00000000 */   nop
/* 054978 80054DC8 3C08800A */  lui         $t0, %hi(D_800A3130)
/* 05497C 80054DCC 25083130 */  addiu       $t0, $t0, %lo(D_800A3130)
/* 054980 80054DD0 8D080000 */  lw          $t0, 0x0($t0)
/* 054984 80054DD4 8F4C0128 */  lw          $t4, 0x128($k0)
/* 054988 80054DD8 2401FFFF */  addiu       $at, $zero, -0x1
/* 05498C 80054DDC 00084402 */  srl         $t0, $t0, 16
/* 054990 80054DE0 01014026 */  xor         $t0, $t0, $at
/* 054994 80054DE4 3108003F */  andi        $t0, $t0, 0x3f
/* 054998 80054DE8 010C4024 */  and         $t0, $t0, $t4
/* 05499C 80054DEC 01284825 */  or          $t1, $t1, $t0
.L80054DF0:
/* 0549A0 80054DF0 AF490128 */  sw          $t1, 0x128($k0)
/* 0549A4 80054DF4 40087000 */  mfc0        $t0, EPC
/* 0549A8 80054DF8 AF48011C */  sw          $t0, 0x11c($k0)
/* 0549AC 80054DFC 8F480018 */  lw          $t0, 0x18($k0)
/* 0549B0 80054E00 11000014 */  beqz        $t0, .L80054E54
/* 0549B4 80054E04 00000000 */   nop
/* 0549B8 80054E08 4448F800 */  cfc1        $t0, $31
/* 0549BC 80054E0C 00000000 */  nop
/* 0549C0 80054E10 AF48012C */  sw          $t0, 0x12c($k0)
/* 0549C4 80054E14 F7400130 */  sdc1        $f0, 0x130($k0)
/* 0549C8 80054E18 F7420138 */  sdc1        $f2, 0x138($k0)
/* 0549CC 80054E1C F7440140 */  sdc1        $f4, 0x140($k0)
/* 0549D0 80054E20 F7460148 */  sdc1        $f6, 0x148($k0)
/* 0549D4 80054E24 F7480150 */  sdc1        $f8, 0x150($k0)
/* 0549D8 80054E28 F74A0158 */  sdc1        $f10, 0x158($k0)
/* 0549DC 80054E2C F74C0160 */  sdc1        $f12, 0x160($k0)
/* 0549E0 80054E30 F74E0168 */  sdc1        $f14, 0x168($k0)
/* 0549E4 80054E34 F7500170 */  sdc1        $f16, 0x170($k0)
/* 0549E8 80054E38 F7520178 */  sdc1        $f18, 0x178($k0)
/* 0549EC 80054E3C F7540180 */  sdc1        $f20, 0x180($k0)
/* 0549F0 80054E40 F7560188 */  sdc1        $f22, 0x188($k0)
/* 0549F4 80054E44 F7580190 */  sdc1        $f24, 0x190($k0)
/* 0549F8 80054E48 F75A0198 */  sdc1        $f26, 0x198($k0)
/* 0549FC 80054E4C F75C01A0 */  sdc1        $f28, 0x1a0($k0)
/* 054A00 80054E50 F75E01A8 */  sdc1        $f30, 0x1a8($k0)
.L80054E54:
/* 054A04 80054E54 40086800 */  mfc0        $t0, Cause
/* 054A08 80054E58 AF480120 */  sw          $t0, 0x120($k0)
/* 054A0C 80054E5C 24090002 */  addiu       $t1, $zero, 0x2
/* 054A10 80054E60 A7490010 */  sh          $t1, 0x10($k0)
/* 054A14 80054E64 3109007C */  andi        $t1, $t0, 0x7c
/* 054A18 80054E68 240A0024 */  addiu       $t2, $zero, 0x24
/* 054A1C 80054E6C 112A00B0 */  beq         $t1, $t2, .L80055130
/* 054A20 80054E70 00000000 */   nop
/* 054A24 80054E74 240A002C */  addiu       $t2, $zero, 0x2c
/* 054A28 80054E78 112A00FF */  beq         $t1, $t2, .L80055278
/* 054A2C 80054E7C 00000000 */   nop
/* 054A30 80054E80 240A0000 */  addiu       $t2, $zero, 0x0
/* 054A34 80054E84 152A00C3 */  bne         $t1, $t2, .L80055194
/* 054A38 80054E88 00000000 */   nop
/* 054A3C 80054E8C 03688024 */  and         $s0, $k1, $t0
.L80054E90:
/* 054A40 80054E90 3209FF00 */  andi        $t1, $s0, 0xff00
/* 054A44 80054E94 00095302 */  srl         $t2, $t1, 12
/* 054A48 80054E98 15400003 */  bnez        $t2, .L80054EA8
/* 054A4C 80054E9C 00000000 */   nop
/* 054A50 80054EA0 00095202 */  srl         $t2, $t1, 8
/* 054A54 80054EA4 214A0010 */  addi        $t2, $t2, 0x10
.L80054EA8:
/* 054A58 80054EA8 3C01800B */  lui         $at, %hi(D_800ACAF0)
/* 054A5C 80054EAC 002A0821 */  addu        $at, $at, $t2
/* 054A60 80054EB0 902ACAF0 */  lbu         $t2, %lo(D_800ACAF0)($at)
/* 054A64 80054EB4 3C01800B */  lui         $at, %hi(jtbl_800ACB10)
/* 054A68 80054EB8 002A0821 */  addu        $at, $at, $t2
/* 054A6C 80054EBC 8C2ACB10 */  lw          $t2, %lo(jtbl_800ACB10)($at)
/* 054A70 80054EC0 01400008 */  jr          $t2
/* 054A74 80054EC4 00000000 */   nop
glabel L80054EC8
/* 054A78 80054EC8 2401DFFF */  addiu       $at, $zero, -0x2001
/* 054A7C 80054ECC 1000FFF0 */  b           .L80054E90
/* 054A80 80054ED0 02018024 */   and        $s0, $s0, $at
glabel L80054ED4
/* 054A84 80054ED4 2401BFFF */  addiu       $at, $zero, -0x4001
/* 054A88 80054ED8 1000FFED */  b           .L80054E90
/* 054A8C 80054EDC 02018024 */   and        $s0, $s0, $at
glabel L80054EE0
/* 054A90 80054EE0 40095800 */  mfc0        $t1, Compare
/* 054A94 80054EE4 40895800 */  mtc0        $t1, Compare
/* 054A98 80054EE8 0C015471 */  jal         func_800551C4
/* 054A9C 80054EEC 24040018 */   addiu      $a0, $zero, 0x18
/* 054AA0 80054EF0 3C01FFFF */  lui         $at, 0xffff
/* 054AA4 80054EF4 34217FFF */  ori         $at, $at, 0x7fff
/* 054AA8 80054EF8 1000FFE5 */  b           .L80054E90
/* 054AAC 80054EFC 02018024 */   and        $s0, $s0, $at
glabel L80054F00
/* 054AB0 80054F00 2401F7FF */  addiu       $at, $zero, -0x801
/* 054AB4 80054F04 02018024 */  and         $s0, $s0, $at
/* 054AB8 80054F08 240A0004 */  addiu       $t2, $zero, 0x4
/* 054ABC 80054F0C 3C01800A */  lui         $at, %hi(D_800A4D40)
/* 054AC0 80054F10 002A0821 */  addu        $at, $at, $t2
/* 054AC4 80054F14 8C2A4D40 */  lw          $t2, %lo(D_800A4D40)($at)
/* 054AC8 80054F18 3C1D8010 */  lui         $sp, %hi(D_80104DB0)
/* 054ACC 80054F1C 27BD4DB0 */  addiu       $sp, $sp, %lo(D_80104DB0)
/* 054AD0 80054F20 24040010 */  addiu       $a0, $zero, 0x10
/* 054AD4 80054F24 11400007 */  beqz        $t2, .L80054F44
/* 054AD8 80054F28 27BD0FF0 */   addiu      $sp, $sp, 0xff0
/* 054ADC 80054F2C 0140F809 */  jalr        $t2
/* 054AE0 80054F30 00000000 */   nop
/* 054AE4 80054F34 10400003 */  beqz        $v0, .L80054F44
/* 054AE8 80054F38 24040010 */   addiu      $a0, $zero, 0x10
/* 054AEC 80054F3C 10000082 */  b           L80055148
/* 054AF0 80054F40 00000000 */   nop
.L80054F44:
/* 054AF4 80054F44 0C015471 */  jal         func_800551C4
/* 054AF8 80054F48 00000000 */   nop
/* 054AFC 80054F4C 1000FFD0 */  b           .L80054E90
/* 054B00 80054F50 00000000 */   nop
glabel L80054F54
/* 054B04 80054F54 3C08800A */  lui         $t0, %hi(D_800A3130)
/* 054B08 80054F58 25083130 */  addiu       $t0, $t0, %lo(D_800A3130)
/* 054B0C 80054F5C 8D080000 */  lw          $t0, 0x0($t0)
/* 054B10 80054F60 3C11A430 */  lui         $s1, %hi(D_A4300008)
/* 054B14 80054F64 8E310008 */  lw          $s1, %lo(D_A4300008)($s1)
/* 054B18 80054F68 00084402 */  srl         $t0, $t0, 16
/* 054B1C 80054F6C 02288824 */  and         $s1, $s1, $t0
/* 054B20 80054F70 32290001 */  andi        $t1, $s1, 0x1
/* 054B24 80054F74 11200013 */  beqz        $t1, .L80054FC4
/* 054B28 80054F78 00000000 */   nop
/* 054B2C 80054F7C 3C0CA404 */  lui         $t4, %hi(D_A4040010)
/* 054B30 80054F80 8D8C0010 */  lw          $t4, %lo(D_A4040010)($t4)
/* 054B34 80054F84 34098008 */  ori         $t1, $zero, 0x8008
/* 054B38 80054F88 3C01A404 */  lui         $at, %hi(D_A4040010)
/* 054B3C 80054F8C 318C0300 */  andi        $t4, $t4, 0x300
/* 054B40 80054F90 3231003E */  andi        $s1, $s1, 0x3e
/* 054B44 80054F94 11800007 */  beqz        $t4, .L80054FB4
/* 054B48 80054F98 AC290010 */   sw         $t1, %lo(D_A4040010)($at)
/* 054B4C 80054F9C 0C015471 */  jal         func_800551C4
/* 054B50 80054FA0 24040020 */   addiu      $a0, $zero, 0x20
/* 054B54 80054FA4 12200038 */  beqz        $s1, .L80055088
/* 054B58 80054FA8 00000000 */   nop
/* 054B5C 80054FAC 10000005 */  b           .L80054FC4
/* 054B60 80054FB0 00000000 */   nop
.L80054FB4:
/* 054B64 80054FB4 0C015471 */  jal         func_800551C4
/* 054B68 80054FB8 24040058 */   addiu      $a0, $zero, 0x58
/* 054B6C 80054FBC 12200032 */  beqz        $s1, .L80055088
/* 054B70 80054FC0 00000000 */   nop
.L80054FC4:
/* 054B74 80054FC4 32290008 */  andi        $t1, $s1, 0x8
/* 054B78 80054FC8 11200007 */  beqz        $t1, .L80054FE8
/* 054B7C 80054FCC 3C01A440 */   lui        $at, %hi(D_A4400010)
/* 054B80 80054FD0 32310037 */  andi        $s1, $s1, 0x37
/* 054B84 80054FD4 AC200010 */  sw          $zero, %lo(D_A4400010)($at)
/* 054B88 80054FD8 0C015471 */  jal         func_800551C4
/* 054B8C 80054FDC 24040038 */   addiu      $a0, $zero, 0x38
/* 054B90 80054FE0 12200029 */  beqz        $s1, .L80055088
/* 054B94 80054FE4 00000000 */   nop
.L80054FE8:
/* 054B98 80054FE8 32290004 */  andi        $t1, $s1, 0x4
/* 054B9C 80054FEC 11200009 */  beqz        $t1, .L80055014
/* 054BA0 80054FF0 00000000 */   nop
/* 054BA4 80054FF4 24090001 */  addiu       $t1, $zero, 0x1
/* 054BA8 80054FF8 3C01A450 */  lui         $at, %hi(D_A450000C)
/* 054BAC 80054FFC 3231003B */  andi        $s1, $s1, 0x3b
/* 054BB0 80055000 AC29000C */  sw          $t1, %lo(D_A450000C)($at)
/* 054BB4 80055004 0C015471 */  jal         func_800551C4
/* 054BB8 80055008 24040030 */   addiu      $a0, $zero, 0x30
/* 054BBC 8005500C 1220001E */  beqz        $s1, .L80055088
/* 054BC0 80055010 00000000 */   nop
.L80055014:
/* 054BC4 80055014 32290002 */  andi        $t1, $s1, 0x2
/* 054BC8 80055018 11200007 */  beqz        $t1, .L80055038
/* 054BCC 8005501C 3C01A480 */   lui        $at, %hi(D_A4800018)
/* 054BD0 80055020 3231003D */  andi        $s1, $s1, 0x3d
/* 054BD4 80055024 AC200018 */  sw          $zero, %lo(D_A4800018)($at)
/* 054BD8 80055028 0C015471 */  jal         func_800551C4
/* 054BDC 8005502C 24040028 */   addiu      $a0, $zero, 0x28
/* 054BE0 80055030 12200015 */  beqz        $s1, .L80055088
/* 054BE4 80055034 00000000 */   nop
.L80055038:
/* 054BE8 80055038 32290010 */  andi        $t1, $s1, 0x10
/* 054BEC 8005503C 11200009 */  beqz        $t1, .L80055064
/* 054BF0 80055040 00000000 */   nop
/* 054BF4 80055044 24090002 */  addiu       $t1, $zero, 0x2
/* 054BF8 80055048 3C01A460 */  lui         $at, %hi(D_A4600010)
/* 054BFC 8005504C 3231002F */  andi        $s1, $s1, 0x2f
/* 054C00 80055050 AC290010 */  sw          $t1, %lo(D_A4600010)($at)
/* 054C04 80055054 0C015471 */  jal         func_800551C4
/* 054C08 80055058 24040040 */   addiu      $a0, $zero, 0x40
/* 054C0C 8005505C 1220000A */  beqz        $s1, .L80055088
/* 054C10 80055060 00000000 */   nop
.L80055064:
/* 054C14 80055064 32290020 */  andi        $t1, $s1, 0x20
/* 054C18 80055068 11200007 */  beqz        $t1, .L80055088
/* 054C1C 8005506C 00000000 */   nop
/* 054C20 80055070 24090800 */  addiu       $t1, $zero, 0x800
/* 054C24 80055074 3C01A430 */  lui         $at, %hi(D_A4300000)
/* 054C28 80055078 3231001F */  andi        $s1, $s1, 0x1f
/* 054C2C 8005507C AC290000 */  sw          $t1, %lo(D_A4300000)($at)
/* 054C30 80055080 0C015471 */  jal         func_800551C4
/* 054C34 80055084 24040048 */   addiu      $a0, $zero, 0x48
.L80055088:
/* 054C38 80055088 2401FBFF */  addiu       $at, $zero, -0x401
/* 054C3C 8005508C 1000FF80 */  b           .L80054E90
/* 054C40 80055090 02018024 */   and        $s0, $s0, $at
glabel L80055094
/* 054C44 80055094 8F5B0118 */  lw          $k1, 0x118($k0)
/* 054C48 80055098 2401EFFF */  addiu       $at, $zero, -0x1001
/* 054C4C 8005509C 3C09800A */  lui         $t1, %hi(D_800A312C)
/* 054C50 800550A0 0361D824 */  and         $k1, $k1, $at
/* 054C54 800550A4 AF5B0118 */  sw          $k1, 0x118($k0)
/* 054C58 800550A8 2529312C */  addiu       $t1, $t1, %lo(D_800A312C)
/* 054C5C 800550AC 8D2A0000 */  lw          $t2, 0x0($t1)
/* 054C60 800550B0 11400003 */  beqz        $t2, .L800550C0
/* 054C64 800550B4 2401EFFF */   addiu      $at, $zero, -0x1001
/* 054C68 800550B8 10000023 */  b           L80055148
/* 054C6C 800550BC 02018024 */   and        $s0, $s0, $at
.L800550C0:
/* 054C70 800550C0 240A0001 */  addiu       $t2, $zero, 0x1
/* 054C74 800550C4 AD2A0000 */  sw          $t2, 0x0($t1)
/* 054C78 800550C8 0C015471 */  jal         func_800551C4
/* 054C7C 800550CC 24040070 */   addiu      $a0, $zero, 0x70
/* 054C80 800550D0 3C0A800A */  lui         $t2, %hi(D_800A4D68)
/* 054C84 800550D4 8D4A4D68 */  lw          $t2, %lo(D_800A4D68)($t2)
/* 054C88 800550D8 2401EFFF */  addiu       $at, $zero, -0x1001
/* 054C8C 800550DC 02018024 */  and         $s0, $s0, $at
/* 054C90 800550E0 8D5B0118 */  lw          $k1, 0x118($t2)
/* 054C94 800550E4 0361D824 */  and         $k1, $k1, $at
/* 054C98 800550E8 10000017 */  b           L80055148
/* 054C9C 800550EC AD5B0118 */   sw         $k1, 0x118($t2)
glabel L800550F0
/* 054CA0 800550F0 2401FDFF */  addiu       $at, $zero, -0x201
/* 054CA4 800550F4 01014024 */  and         $t0, $t0, $at
/* 054CA8 800550F8 40886800 */  mtc0        $t0, Cause
/* 054CAC 800550FC 0C015471 */  jal         func_800551C4
/* 054CB0 80055100 24040008 */   addiu      $a0, $zero, 0x8
/* 054CB4 80055104 2401FDFF */  addiu       $at, $zero, -0x201
/* 054CB8 80055108 1000FF61 */  b           .L80054E90
/* 054CBC 8005510C 02018024 */   and        $s0, $s0, $at
glabel L80055110
/* 054CC0 80055110 2401FEFF */  addiu       $at, $zero, -0x101
/* 054CC4 80055114 01014024 */  and         $t0, $t0, $at
/* 054CC8 80055118 40886800 */  mtc0        $t0, Cause
/* 054CCC 8005511C 0C015471 */  jal         func_800551C4
/* 054CD0 80055120 24040000 */   addiu      $a0, $zero, 0x0
/* 054CD4 80055124 2401FEFF */  addiu       $at, $zero, -0x101
/* 054CD8 80055128 1000FF59 */  b           .L80054E90
/* 054CDC 8005512C 02018024 */   and        $s0, $s0, $at
.L80055130:
/* 054CE0 80055130 24090001 */  addiu       $t1, $zero, 0x1
/* 054CE4 80055134 A7490012 */  sh          $t1, 0x12($k0)
/* 054CE8 80055138 0C015471 */  jal         func_800551C4
/* 054CEC 8005513C 24040050 */   addiu      $a0, $zero, 0x50
/* 054CF0 80055140 10000001 */  b           L80055148
/* 054CF4 80055144 00000000 */   nop
glabel L80055148
/* 054CF8 80055148 3C0A800A */  lui         $t2, %hi(D_800A4D68)
/* 054CFC 8005514C 8D4A4D68 */  lw          $t2, %lo(D_800A4D68)($t2)
/* 054D00 80055150 8F490004 */  lw          $t1, 0x4($k0)
/* 054D04 80055154 8D4B0004 */  lw          $t3, 0x4($t2)
/* 054D08 80055158 012B082A */  slt         $at, $t1, $t3
/* 054D0C 8005515C 10200007 */  beqz        $at, .L8005517C
/* 054D10 80055160 00000000 */   nop
/* 054D14 80055164 3C04800A */  lui         $a0, %hi(D_800A4D68)
/* 054D18 80055168 03402825 */  move        $a1, $k0
/* 054D1C 8005516C 0C0154EB */  jal         func_800553AC
/* 054D20 80055170 24844D68 */   addiu      $a0, $a0, %lo(D_800A4D68)
/* 054D24 80055174 08015501 */  j           func_80055404
/* 054D28 80055178 00000000 */   nop
.L8005517C:
/* 054D2C 8005517C 3C09800A */  lui         $t1, %hi(D_800A4D68)
/* 054D30 80055180 25294D68 */  addiu       $t1, $t1, %lo(D_800A4D68)
/* 054D34 80055184 8D2A0000 */  lw          $t2, 0x0($t1)
/* 054D38 80055188 AF4A0000 */  sw          $t2, 0x0($k0)
/* 054D3C 8005518C 08015501 */  j           func_80055404
/* 054D40 80055190 AD3A0000 */   sw         $k0, 0x0($t1)
.L80055194:
/* 054D44 80055194 3C01800A */  lui         $at, %hi(D_800A4D74)
/* 054D48 80055198 AC3A4D74 */  sw          $k0, %lo(D_800A4D74)($at)
/* 054D4C 8005519C 24090001 */  addiu       $t1, $zero, 0x1
/* 054D50 800551A0 A7490010 */  sh          $t1, 0x10($k0)
/* 054D54 800551A4 24090002 */  addiu       $t1, $zero, 0x2
/* 054D58 800551A8 A7490012 */  sh          $t1, 0x12($k0)
/* 054D5C 800551AC 400A4000 */  mfc0        $t2, BadVaddr
/* 054D60 800551B0 AF4A0124 */  sw          $t2, 0x124($k0)
/* 054D64 800551B4 0C015471 */  jal         func_800551C4
/* 054D68 800551B8 24040060 */   addiu      $a0, $zero, 0x60
/* 054D6C 800551BC 08015501 */  j           func_80055404
/* 054D70 800551C0 00000000 */   nop

glabel func_800551C4 # 2
/* 054D74 800551C4 3C0A8010 */  lui         $t2, %hi(D_801022C0)
/* 054D78 800551C8 254A22C0 */  addiu       $t2, $t2, %lo(D_801022C0)
/* 054D7C 800551CC 01445021 */  addu        $t2, $t2, $a0
/* 054D80 800551D0 8D490000 */  lw          $t1, 0x0($t2)
/* 054D84 800551D4 03E09025 */  move        $s2, $ra
/* 054D88 800551D8 11200025 */  beqz        $t1, .L80055270
/* 054D8C 800551DC 00000000 */   nop
/* 054D90 800551E0 8D2B0008 */  lw          $t3, 0x8($t1)
/* 054D94 800551E4 8D2C0010 */  lw          $t4, 0x10($t1)
/* 054D98 800551E8 016C082A */  slt         $at, $t3, $t4
/* 054D9C 800551EC 10200020 */  beqz        $at, .L80055270
/* 054DA0 800551F0 00000000 */   nop
/* 054DA4 800551F4 8D2D000C */  lw          $t5, 0xc($t1)
/* 054DA8 800551F8 01AB6821 */  addu        $t5, $t5, $t3
/* 054DAC 800551FC 01AC001A */  div         $zero, $t5, $t4
/* 054DB0 80055200 15800002 */  bnez        $t4, .L8005520C
/* 054DB4 80055204 00000000 */   nop
/* 054DB8 80055208 0007000D */  break       7
.L8005520C:
/* 054DBC 8005520C 2401FFFF */  addiu       $at, $zero, -0x1
/* 054DC0 80055210 15810004 */  bne         $t4, $at, .L80055224
/* 054DC4 80055214 3C018000 */   lui        $at, 0x8000
/* 054DC8 80055218 15A10002 */  bne         $t5, $at, .L80055224
/* 054DCC 8005521C 00000000 */   nop
/* 054DD0 80055220 0006000D */  break       6
.L80055224:
/* 054DD4 80055224 8D2C0014 */  lw          $t4, 0x14($t1)
/* 054DD8 80055228 00006810 */  mfhi        $t5
/* 054DDC 8005522C 000D6880 */  sll         $t5, $t5, 2
/* 054DE0 80055230 018D6021 */  addu        $t4, $t4, $t5
/* 054DE4 80055234 8D4D0004 */  lw          $t5, 0x4($t2)
/* 054DE8 80055238 256A0001 */  addiu       $t2, $t3, 0x1
/* 054DEC 8005523C AD8D0000 */  sw          $t5, 0x0($t4)
/* 054DF0 80055240 AD2A0008 */  sw          $t2, 0x8($t1)
/* 054DF4 80055244 8D2A0000 */  lw          $t2, 0x0($t1)
/* 054DF8 80055248 8D4B0000 */  lw          $t3, 0x0($t2)
/* 054DFC 8005524C 11600008 */  beqz        $t3, .L80055270
/* 054E00 80055250 00000000 */   nop
/* 054E04 80055254 0C0154FD */  jal         func_800553F4
/* 054E08 80055258 01202025 */   move       $a0, $t1
/* 054E0C 8005525C 00405025 */  move        $t2, $v0
/* 054E10 80055260 3C04800A */  lui         $a0, %hi(D_800A4D68)
/* 054E14 80055264 01402825 */  move        $a1, $t2
/* 054E18 80055268 0C0154EB */  jal         func_800553AC
/* 054E1C 8005526C 24844D68 */   addiu      $a0, $a0, %lo(D_800A4D68)
.L80055270:
/* 054E20 80055270 02400008 */  jr          $s2
/* 054E24 80055274 00000000 */   nop
.L80055278:
/* 054E28 80055278 3C013000 */  lui         $at, 0x3000
/* 054E2C 8005527C 01014824 */  and         $t1, $t0, $at
/* 054E30 80055280 00094F02 */  srl         $t1, $t1, 28
/* 054E34 80055284 240A0001 */  addiu       $t2, $zero, 0x1
/* 054E38 80055288 152AFFC2 */  bne         $t1, $t2, .L80055194
/* 054E3C 8005528C 00000000 */   nop
/* 054E40 80055290 8F5B0118 */  lw          $k1, 0x118($k0)
/* 054E44 80055294 3C012000 */  lui         $at, 0x2000
/* 054E48 80055298 24090001 */  addiu       $t1, $zero, 0x1
/* 054E4C 8005529C 0361D825 */  or          $k1, $k1, $at
/* 054E50 800552A0 AF490018 */  sw          $t1, 0x18($k0)
/* 054E54 800552A4 1000FFB5 */  b           .L8005517C
/* 054E58 800552A8 AF5B0118 */   sw         $k1, 0x118($k0)

glabel func_800552AC # 3
/* 054E5C 800552AC 3C05800A */  lui         $a1, %hi(D_800A4D70)
/* 054E60 800552B0 8CA54D70 */  lw          $a1, %lo(D_800A4D70)($a1)
/* 054E64 800552B4 40086000 */  mfc0        $t0, Status
/* 054E68 800552B8 8CBB0018 */  lw          $k1, 0x18($a1)
/* 054E6C 800552BC 35080002 */  ori         $t0, $t0, 0x2
/* 054E70 800552C0 ACA80118 */  sw          $t0, 0x118($a1)
/* 054E74 800552C4 FCB00098 */  sd          $s0, 0x98($a1)
/* 054E78 800552C8 FCB100A0 */  sd          $s1, 0xa0($a1)
/* 054E7C 800552CC FCB200A8 */  sd          $s2, 0xa8($a1)
/* 054E80 800552D0 FCB300B0 */  sd          $s3, 0xb0($a1)
/* 054E84 800552D4 FCB400B8 */  sd          $s4, 0xb8($a1)
/* 054E88 800552D8 FCB500C0 */  sd          $s5, 0xc0($a1)
/* 054E8C 800552DC FCB600C8 */  sd          $s6, 0xc8($a1)
/* 054E90 800552E0 FCB700D0 */  sd          $s7, 0xd0($a1)
/* 054E94 800552E4 FCBC00E8 */  sd          $gp, 0xe8($a1)
/* 054E98 800552E8 FCBD00F0 */  sd          $sp, 0xf0($a1)
/* 054E9C 800552EC FCBE00F8 */  sd          $fp, 0xf8($a1)
/* 054EA0 800552F0 FCBF0100 */  sd          $ra, 0x100($a1)
/* 054EA4 800552F4 13600009 */  beqz        $k1, .L8005531C
/* 054EA8 800552F8 ACBF011C */   sw         $ra, 0x11c($a1)
/* 054EAC 800552FC 445BF800 */  cfc1        $k1, $31
/* 054EB0 80055300 F4B40180 */  sdc1        $f20, 0x180($a1)
/* 054EB4 80055304 F4B60188 */  sdc1        $f22, 0x188($a1)
/* 054EB8 80055308 F4B80190 */  sdc1        $f24, 0x190($a1)
/* 054EBC 8005530C F4BA0198 */  sdc1        $f26, 0x198($a1)
/* 054EC0 80055310 F4BC01A0 */  sdc1        $f28, 0x1a0($a1)
/* 054EC4 80055314 F4BE01A8 */  sdc1        $f30, 0x1a8($a1)
/* 054EC8 80055318 ACBB012C */  sw          $k1, 0x12c($a1)
.L8005531C:
/* 054ECC 8005531C 8CBB0118 */  lw          $k1, 0x118($a1)
/* 054ED0 80055320 3369FF00 */  andi        $t1, $k1, 0xff00
/* 054ED4 80055324 1120000D */  beqz        $t1, .L8005535C
/* 054ED8 80055328 00000000 */   nop
/* 054EDC 8005532C 3C08800A */  lui         $t0, %hi(D_800A3130)
/* 054EE0 80055330 25083130 */  addiu       $t0, $t0, %lo(D_800A3130)
/* 054EE4 80055334 8D080000 */  lw          $t0, 0x0($t0)
/* 054EE8 80055338 2401FFFF */  addiu       $at, $zero, -0x1
/* 054EEC 8005533C 01014026 */  xor         $t0, $t0, $at
/* 054EF0 80055340 3C01FFFF */  lui         $at, 0xffff
/* 054EF4 80055344 3108FF00 */  andi        $t0, $t0, 0xff00
/* 054EF8 80055348 342100FF */  ori         $at, $at, 0xff
/* 054EFC 8005534C 01284825 */  or          $t1, $t1, $t0
/* 054F00 80055350 0361D824 */  and         $k1, $k1, $at
/* 054F04 80055354 0369D825 */  or          $k1, $k1, $t1
/* 054F08 80055358 ACBB0118 */  sw          $k1, 0x118($a1)
.L8005535C:
/* 054F0C 8005535C 3C1BA430 */  lui         $k1, %hi(D_A430000C)
/* 054F10 80055360 8F7B000C */  lw          $k1, %lo(D_A430000C)($k1)
/* 054F14 80055364 1360000B */  beqz        $k1, .L80055394
/* 054F18 80055368 00000000 */   nop
/* 054F1C 8005536C 3C1A800A */  lui         $k0, %hi(D_800A3130)
/* 054F20 80055370 275A3130 */  addiu       $k0, $k0, %lo(D_800A3130)
/* 054F24 80055374 8F5A0000 */  lw          $k0, 0x0($k0)
/* 054F28 80055378 8CA80128 */  lw          $t0, 0x128($a1)
/* 054F2C 8005537C 2401FFFF */  addiu       $at, $zero, -0x1
/* 054F30 80055380 001AD402 */  srl         $k0, $k0, 16
/* 054F34 80055384 0341D026 */  xor         $k0, $k0, $at
/* 054F38 80055388 335A003F */  andi        $k0, $k0, 0x3f
/* 054F3C 8005538C 0348D024 */  and         $k0, $k0, $t0
/* 054F40 80055390 037AD825 */  or          $k1, $k1, $k0
.L80055394:
/* 054F44 80055394 10800003 */  beqz        $a0, .L800553A4
/* 054F48 80055398 ACBB0128 */   sw         $k1, 0x128($a1)
/* 054F4C 8005539C 0C0154EB */  jal         func_800553AC
/* 054F50 800553A0 00000000 */   nop
.L800553A4:
/* 054F54 800553A4 08015501 */  j           func_80055404
/* 054F58 800553A8 00000000 */   nop

glabel func_800553AC # 4
/* 054F5C 800553AC 8C980000 */  lw          $t8, 0x0($a0)
/* 054F60 800553B0 8CAF0004 */  lw          $t7, 0x4($a1)
/* 054F64 800553B4 0080C825 */  move        $t9, $a0
/* 054F68 800553B8 8F0E0004 */  lw          $t6, 0x4($t8)
/* 054F6C 800553BC 01CF082A */  slt         $at, $t6, $t7
/* 054F70 800553C0 14200007 */  bnez        $at, .L800553E0
/* 054F74 800553C4 00000000 */   nop
.L800553C8:
/* 054F78 800553C8 0300C825 */  move        $t9, $t8
/* 054F7C 800553CC 8F180000 */  lw          $t8, 0x0($t8)
/* 054F80 800553D0 8F0E0004 */  lw          $t6, 0x4($t8)
/* 054F84 800553D4 01CF082A */  slt         $at, $t6, $t7
/* 054F88 800553D8 1020FFFB */  beqz        $at, .L800553C8
/* 054F8C 800553DC 00000000 */   nop
.L800553E0:
/* 054F90 800553E0 8F380000 */  lw          $t8, 0x0($t9)
/* 054F94 800553E4 ACB80000 */  sw          $t8, 0x0($a1)
/* 054F98 800553E8 AF250000 */  sw          $a1, 0x0($t9)
/* 054F9C 800553EC 03E00008 */  jr          $ra
/* 054FA0 800553F0 ACA40008 */   sw         $a0, 0x8($a1)

glabel func_800553F4 # 5
/* 054FA4 800553F4 8C820000 */  lw          $v0, 0x0($a0)
/* 054FA8 800553F8 8C590000 */  lw          $t9, 0x0($v0)
/* 054FAC 800553FC 03E00008 */  jr          $ra
/* 054FB0 80055400 AC990000 */   sw         $t9, 0x0($a0)

glabel func_80055404 # 6
/* 054FB4 80055404 3C04800A */  lui         $a0, %hi(D_800A4D68)
/* 054FB8 80055408 0C0154FD */  jal         func_800553F4
/* 054FBC 8005540C 24844D68 */   addiu      $a0, $a0, %lo(D_800A4D68)
/* 054FC0 80055410 3C01800A */  lui         $at, %hi(D_800A4D70)
/* 054FC4 80055414 AC224D70 */  sw          $v0, %lo(D_800A4D70)($at)
/* 054FC8 80055418 24080004 */  addiu       $t0, $zero, 0x4
/* 054FCC 8005541C A4480010 */  sh          $t0, 0x10($v0)
/* 054FD0 80055420 0040D025 */  move        $k0, $v0
/* 054FD4 80055424 3C08800A */  lui         $t0, %hi(D_800A3130)
/* 054FD8 80055428 8F5B0118 */  lw          $k1, 0x118($k0)
/* 054FDC 8005542C 25083130 */  addiu       $t0, $t0, %lo(D_800A3130)
/* 054FE0 80055430 8D080000 */  lw          $t0, 0x0($t0)
/* 054FE4 80055434 3C01FFFF */  lui         $at, 0xffff
/* 054FE8 80055438 3369FF00 */  andi        $t1, $k1, 0xff00
/* 054FEC 8005543C 342100FF */  ori         $at, $at, 0xff
/* 054FF0 80055440 3108FF00 */  andi        $t0, $t0, 0xff00
/* 054FF4 80055444 01284824 */  and         $t1, $t1, $t0
/* 054FF8 80055448 0361D824 */  and         $k1, $k1, $at
/* 054FFC 8005544C 0369D825 */  or          $k1, $k1, $t1
/* 055000 80055450 409B6000 */  mtc0        $k1, Status
/* 055004 80055454 DF5B0108 */  ld          $k1, 0x108($k0)
/* 055008 80055458 DF410020 */  ld          $at, 0x20($k0)
/* 05500C 8005545C DF420028 */  ld          $v0, 0x28($k0)
/* 055010 80055460 03600013 */  mtlo        $k1
/* 055014 80055464 DF5B0110 */  ld          $k1, 0x110($k0)
/* 055018 80055468 DF430030 */  ld          $v1, 0x30($k0)
/* 05501C 8005546C DF440038 */  ld          $a0, 0x38($k0)
/* 055020 80055470 DF450040 */  ld          $a1, 0x40($k0)
/* 055024 80055474 DF460048 */  ld          $a2, 0x48($k0)
/* 055028 80055478 DF470050 */  ld          $a3, 0x50($k0)
/* 05502C 8005547C DF480058 */  ld          $t0, 0x58($k0)
/* 055030 80055480 DF490060 */  ld          $t1, 0x60($k0)
/* 055034 80055484 DF4A0068 */  ld          $t2, 0x68($k0)
/* 055038 80055488 DF4B0070 */  ld          $t3, 0x70($k0)
/* 05503C 8005548C DF4C0078 */  ld          $t4, 0x78($k0)
/* 055040 80055490 DF4D0080 */  ld          $t5, 0x80($k0)
/* 055044 80055494 DF4E0088 */  ld          $t6, 0x88($k0)
/* 055048 80055498 DF4F0090 */  ld          $t7, 0x90($k0)
/* 05504C 8005549C DF500098 */  ld          $s0, 0x98($k0)
/* 055050 800554A0 DF5100A0 */  ld          $s1, 0xa0($k0)
/* 055054 800554A4 DF5200A8 */  ld          $s2, 0xa8($k0)
/* 055058 800554A8 DF5300B0 */  ld          $s3, 0xb0($k0)
/* 05505C 800554AC DF5400B8 */  ld          $s4, 0xb8($k0)
/* 055060 800554B0 DF5500C0 */  ld          $s5, 0xc0($k0)
/* 055064 800554B4 DF5600C8 */  ld          $s6, 0xc8($k0)
/* 055068 800554B8 DF5700D0 */  ld          $s7, 0xd0($k0)
/* 05506C 800554BC DF5800D8 */  ld          $t8, 0xd8($k0)
/* 055070 800554C0 DF5900E0 */  ld          $t9, 0xe0($k0)
/* 055074 800554C4 DF5C00E8 */  ld          $gp, 0xe8($k0)
/* 055078 800554C8 03600011 */  mthi        $k1
/* 05507C 800554CC DF5D00F0 */  ld          $sp, 0xf0($k0)
/* 055080 800554D0 DF5E00F8 */  ld          $fp, 0xf8($k0)
/* 055084 800554D4 DF5F0100 */  ld          $ra, 0x100($k0)
/* 055088 800554D8 8F5B011C */  lw          $k1, 0x11c($k0)
/* 05508C 800554DC 409B7000 */  mtc0        $k1, EPC
/* 055090 800554E0 8F5B0018 */  lw          $k1, 0x18($k0)
/* 055094 800554E4 13600013 */  beqz        $k1, .L80055534
/* 055098 800554E8 00000000 */   nop
/* 05509C 800554EC 8F5B012C */  lw          $k1, 0x12c($k0)
/* 0550A0 800554F0 44DBF800 */  ctc1        $k1, $31
/* 0550A4 800554F4 D7400130 */  ldc1        $f0, 0x130($k0)
/* 0550A8 800554F8 D7420138 */  ldc1        $f2, 0x138($k0)
/* 0550AC 800554FC D7440140 */  ldc1        $f4, 0x140($k0)
/* 0550B0 80055500 D7460148 */  ldc1        $f6, 0x148($k0)
/* 0550B4 80055504 D7480150 */  ldc1        $f8, 0x150($k0)
/* 0550B8 80055508 D74A0158 */  ldc1        $f10, 0x158($k0)
/* 0550BC 8005550C D74C0160 */  ldc1        $f12, 0x160($k0)
/* 0550C0 80055510 D74E0168 */  ldc1        $f14, 0x168($k0)
/* 0550C4 80055514 D7500170 */  ldc1        $f16, 0x170($k0)
/* 0550C8 80055518 D7520178 */  ldc1        $f18, 0x178($k0)
/* 0550CC 8005551C D7540180 */  ldc1        $f20, 0x180($k0)
/* 0550D0 80055520 D7560188 */  ldc1        $f22, 0x188($k0)
/* 0550D4 80055524 D7580190 */  ldc1        $f24, 0x190($k0)
/* 0550D8 80055528 D75A0198 */  ldc1        $f26, 0x198($k0)
/* 0550DC 8005552C D75C01A0 */  ldc1        $f28, 0x1a0($k0)
/* 0550E0 80055530 D75E01A8 */  ldc1        $f30, 0x1a8($k0)
.L80055534:
/* 0550E4 80055534 8F5B0128 */  lw          $k1, 0x128($k0)
/* 0550E8 80055538 3C1A800A */  lui         $k0, %hi(D_800A3130)
/* 0550EC 8005553C 275A3130 */  addiu       $k0, $k0, %lo(D_800A3130)
/* 0550F0 80055540 8F5A0000 */  lw          $k0, 0x0($k0)
/* 0550F4 80055544 001AD402 */  srl         $k0, $k0, 16
/* 0550F8 80055548 037AD824 */  and         $k1, $k1, $k0
/* 0550FC 8005554C 001BD840 */  sll         $k1, $k1, 1
/* 055100 80055550 3C1A800B */  lui         $k0, %hi(D_800AC960)
/* 055104 80055554 275AC960 */  addiu       $k0, $k0, %lo(D_800AC960)
/* 055108 80055558 037AD821 */  addu        $k1, $k1, $k0
/* 05510C 8005555C 977B0000 */  lhu         $k1, 0x0($k1)
/* 055110 80055560 3C1AA430 */  lui         $k0, %hi(D_A430000C)
/* 055114 80055564 275A000C */  addiu       $k0, $k0, %lo(D_A430000C)
/* 055118 80055568 AF5B0000 */  sw          $k1, 0x0($k0)
/* 05511C 8005556C 00000000 */  nop
/* 055120 80055570 00000000 */  nop
/* 055124 80055574 00000000 */  nop
/* 055128 80055578 00000000 */  nop
/* 05512C 8005557C 42000018 */  eret
/* 055130 80055580 0C01706C */  jal         func_8005C1B0
/* 055134 80055584 00002025 */   move       $a0, $zero
/* 055138 80055588 00000000 */  nop
/* 05513C 8005558C 00000000 */  nop