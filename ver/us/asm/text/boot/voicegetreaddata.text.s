.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osVoiceGetReadData # 0
/* 054820 80054C70 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 054824 80054C74 AFBF0024 */  sw          $ra, 0x24($sp)
/* 054828 80054C78 AFB20020 */  sw          $s2, 0x20($sp)
/* 05482C 80054C7C AFB1001C */  sw          $s1, 0x1c($sp)
/* 054830 80054C80 AFB00018 */  sw          $s0, 0x18($sp)
/* 054834 80054C84 8C820008 */  lw          $v0, 0x8($a0)
/* 054838 80054C88 24010001 */  addiu       $at, $zero, 0x1
/* 05483C 80054C8C 00A08825 */  move        $s1, $a1
/* 054840 80054C90 1041000A */  beq         $v0, $at, .L80054CBC
/* 054844 80054C94 00809025 */   move       $s2, $a0
/* 054848 80054C98 24010002 */  addiu       $at, $zero, 0x2
/* 05484C 80054C9C 10410026 */  beq         $v0, $at, .L80054D38
/* 054850 80054CA0 24010003 */   addiu      $at, $zero, 0x3
/* 054854 80054CA4 1041003E */  beq         $v0, $at, .L80054DA0
/* 054858 80054CA8 24010004 */   addiu      $at, $zero, 0x4
/* 05485C 80054CAC 504100B8 */  beql        $v0, $at, .L80054F90
/* 054860 80054CB0 240D0004 */   addiu      $t5, $zero, 0x4
/* 054864 80054CB4 100000DA */  b           .L80055020
/* 054868 80054CB8 24020005 */   addiu      $v0, $zero, 0x5
.L80054CBC:
/* 05486C 80054CBC 8E440000 */  lw          $a0, 0x0($s2)
/* 054870 80054CC0 8E450004 */  lw          $a1, 0x4($s2)
/* 054874 80054CC4 0C01558C */  jal         __osVoiceGetStatus
/* 054878 80054CC8 27A6005F */   addiu      $a2, $sp, 0x5f
/* 05487C 80054CCC 10400003 */  beqz        $v0, .L80054CDC
/* 054880 80054CD0 93AE005F */   lbu        $t6, 0x5f($sp)
/* 054884 80054CD4 100000D3 */  b           .L80055024
/* 054888 80054CD8 8FBF0024 */   lw         $ra, 0x24($sp)
.L80054CDC:
/* 05488C 80054CDC 31CF0001 */  andi        $t7, $t6, 0x1
/* 054890 80054CE0 11E00003 */  beqz        $t7, .L80054CF0
/* 054894 80054CE4 27A70038 */   addiu      $a3, $sp, 0x38
/* 054898 80054CE8 100000CD */  b           .L80055020
/* 05489C 80054CEC 2402000C */   addiu      $v0, $zero, 0xc
.L80054CF0:
/* 0548A0 80054CF0 8E440000 */  lw          $a0, 0x0($s2)
/* 0548A4 80054CF4 8E450004 */  lw          $a1, 0x4($s2)
/* 0548A8 80054CF8 0C015644 */  jal         __osVoiceContRead2
/* 0548AC 80054CFC 00003025 */   move       $a2, $zero
/* 0548B0 80054D00 10400003 */  beqz        $v0, .L80054D10
/* 0548B4 80054D04 93B80038 */   lbu        $t8, 0x38($sp)
/* 0548B8 80054D08 100000C6 */  b           .L80055024
/* 0548BC 80054D0C 8FBF0024 */   lw         $ra, 0x24($sp)
.L80054D10:
/* 0548C0 80054D10 33190007 */  andi        $t9, $t8, 0x7
/* 0548C4 80054D14 A259000C */  sb          $t9, 0xc($s2)
/* 0548C8 80054D18 3C018010 */  lui         $at, %hi(D_80100300)
/* 0548CC 80054D1C 13200006 */  beqz        $t9, .L80054D38
/* 0548D0 80054D20 A0390300 */   sb         $t9, %lo(D_80100300)($at)
/* 0548D4 80054D24 24010007 */  addiu       $at, $zero, 0x7
/* 0548D8 80054D28 53210004 */  beql        $t9, $at, .L80054D3C
/* 0548DC 80054D2C 24090002 */   addiu      $t1, $zero, 0x2
/* 0548E0 80054D30 100000BB */  b           .L80055020
/* 0548E4 80054D34 2402000C */   addiu      $v0, $zero, 0xc
.L80054D38:
/* 0548E8 80054D38 24090002 */  addiu       $t1, $zero, 0x2
.L80054D3C:
/* 0548EC 80054D3C 27B00038 */  addiu       $s0, $sp, 0x38
/* 0548F0 80054D40 AE490008 */  sw          $t1, 0x8($s2)
/* 0548F4 80054D44 8E440000 */  lw          $a0, 0x0($s2)
/* 0548F8 80054D48 8E450004 */  lw          $a1, 0x4($s2)
/* 0548FC 80054D4C 0C01558C */  jal         __osVoiceGetStatus
/* 054900 80054D50 27A6005F */   addiu      $a2, $sp, 0x5f
/* 054904 80054D54 10400003 */  beqz        $v0, .L80054D64
/* 054908 80054D58 93AA005F */   lbu        $t2, 0x5f($sp)
/* 05490C 80054D5C 100000B1 */  b           .L80055024
/* 054910 80054D60 8FBF0024 */   lw         $ra, 0x24($sp)
.L80054D64:
/* 054914 80054D64 314B0002 */  andi        $t3, $t2, 0x2
/* 054918 80054D68 11600003 */  beqz        $t3, .L80054D78
/* 05491C 80054D6C 240C0600 */   addiu      $t4, $zero, 0x600
/* 054920 80054D70 100000AB */  b           .L80055020
/* 054924 80054D74 2402000F */   addiu      $v0, $zero, 0xf
.L80054D78:
/* 054928 80054D78 AE0C0000 */  sw          $t4, 0x0($s0)
/* 05492C 80054D7C 8E450004 */  lw          $a1, 0x4($s2)
/* 054930 80054D80 8E440000 */  lw          $a0, 0x0($s2)
/* 054934 80054D84 00003025 */  move        $a2, $zero
/* 054938 80054D88 0C0156D0 */  jal         __osVoiceContWrite4
/* 05493C 80054D8C 02003825 */   move       $a3, $s0
/* 054940 80054D90 50400004 */  beql        $v0, $zero, .L80054DA4
/* 054944 80054D94 240D0003 */   addiu      $t5, $zero, 0x3
/* 054948 80054D98 100000A2 */  b           .L80055024
/* 05494C 80054D9C 8FBF0024 */   lw         $ra, 0x24($sp)
.L80054DA0:
/* 054950 80054DA0 240D0003 */  addiu       $t5, $zero, 0x3
.L80054DA4:
/* 054954 80054DA4 27B00038 */  addiu       $s0, $sp, 0x38
/* 054958 80054DA8 AE4D0008 */  sw          $t5, 0x8($s2)
/* 05495C 80054DAC 8E440000 */  lw          $a0, 0x0($s2)
/* 054960 80054DB0 8E450004 */  lw          $a1, 0x4($s2)
/* 054964 80054DB4 0C01558C */  jal         __osVoiceGetStatus
/* 054968 80054DB8 27A6005F */   addiu      $a2, $sp, 0x5f
/* 05496C 80054DBC 10400003 */  beqz        $v0, .L80054DCC
/* 054970 80054DC0 93AE005F */   lbu        $t6, 0x5f($sp)
/* 054974 80054DC4 10000097 */  b           .L80055024
/* 054978 80054DC8 8FBF0024 */   lw         $ra, 0x24($sp)
.L80054DCC:
/* 05497C 80054DCC 31CF0001 */  andi        $t7, $t6, 0x1
/* 054980 80054DD0 11E00003 */  beqz        $t7, .L80054DE0
/* 054984 80054DD4 00003025 */   move       $a2, $zero
/* 054988 80054DD8 10000091 */  b           .L80055020
/* 05498C 80054DDC 2402000F */   addiu      $v0, $zero, 0xf
.L80054DE0:
/* 054990 80054DE0 8E440000 */  lw          $a0, 0x0($s2)
/* 054994 80054DE4 8E450004 */  lw          $a1, 0x4($s2)
/* 054998 80054DE8 0C016AB8 */  jal         __osVoiceContRead36
/* 05499C 80054DEC 02003825 */   move       $a3, $s0
/* 0549A0 80054DF0 10400003 */  beqz        $v0, .L80054E00
/* 0549A4 80054DF4 00404025 */   move       $t0, $v0
/* 0549A8 80054DF8 1000008A */  b           .L80055024
/* 0549AC 80054DFC 8FBF0024 */   lw         $ra, 0x24($sp)
.L80054E00:
/* 0549B0 80054E00 93B8003D */  lbu         $t8, 0x3d($sp)
/* 0549B4 80054E04 93A9003C */  lbu         $t1, 0x3c($sp)
/* 0549B8 80054E08 24070001 */  addiu       $a3, $zero, 0x1
/* 0549BC 80054E0C 0018CA00 */  sll         $t9, $t8, 8
/* 0549C0 80054E10 03295021 */  addu        $t2, $t9, $t1
/* 0549C4 80054E14 A62A0000 */  sh          $t2, 0x0($s1)
/* 0549C8 80054E18 93AB003E */  lbu         $t3, 0x3e($sp)
/* 0549CC 80054E1C 24017FFF */  addiu       $at, $zero, 0x7fff
/* 0549D0 80054E20 A62B0002 */  sh          $t3, 0x2($s1)
/* 0549D4 80054E24 93AC0041 */  lbu         $t4, 0x41($sp)
/* 0549D8 80054E28 93AE0040 */  lbu         $t6, 0x40($sp)
/* 0549DC 80054E2C 000C6A00 */  sll         $t5, $t4, 8
/* 0549E0 80054E30 01AE7821 */  addu        $t7, $t5, $t6
/* 0549E4 80054E34 A62F0004 */  sh          $t7, 0x4($s1)
/* 0549E8 80054E38 93B80043 */  lbu         $t8, 0x43($sp)
/* 0549EC 80054E3C 93A90042 */  lbu         $t1, 0x42($sp)
/* 0549F0 80054E40 0018CA00 */  sll         $t9, $t8, 8
/* 0549F4 80054E44 03295021 */  addu        $t2, $t9, $t1
/* 0549F8 80054E48 A62A0006 */  sh          $t2, 0x6($s1)
/* 0549FC 80054E4C 93AB0045 */  lbu         $t3, 0x45($sp)
/* 054A00 80054E50 93AD0044 */  lbu         $t5, 0x44($sp)
/* 054A04 80054E54 000B6200 */  sll         $t4, $t3, 8
/* 054A08 80054E58 018D7021 */  addu        $t6, $t4, $t5
/* 054A0C 80054E5C A62E0008 */  sh          $t6, 0x8($s1)
/* 054A10 80054E60 93AF0047 */  lbu         $t7, 0x47($sp)
/* 054A14 80054E64 93B90046 */  lbu         $t9, 0x46($sp)
/* 054A18 80054E68 00077040 */  sll         $t6, $a3, 1
/* 054A1C 80054E6C 000FC200 */  sll         $t8, $t7, 8
/* 054A20 80054E70 03194821 */  addu        $t1, $t8, $t9
/* 054A24 80054E74 A629000A */  sh          $t1, 0xa($s1)
/* 054A28 80054E78 93AA0049 */  lbu         $t2, 0x49($sp)
/* 054A2C 80054E7C 93AC0048 */  lbu         $t4, 0x48($sp)
/* 054A30 80054E80 00077880 */  sll         $t7, $a3, 2
/* 054A34 80054E84 000A5A00 */  sll         $t3, $t2, 8
/* 054A38 80054E88 016C6821 */  addu        $t5, $t3, $t4
/* 054A3C 80054E8C A62D0014 */  sh          $t5, 0x14($s1)
/* 054A40 80054E90 020F1821 */  addu        $v1, $s0, $t7
/* 054A44 80054E94 9078000F */  lbu         $t8, 0xf($v1)
/* 054A48 80054E98 9069000E */  lbu         $t1, 0xe($v1)
/* 054A4C 80054E9C 022E1021 */  addu        $v0, $s1, $t6
/* 054A50 80054EA0 0018CA00 */  sll         $t9, $t8, 8
/* 054A54 80054EA4 03295021 */  addu        $t2, $t9, $t1
/* 054A58 80054EA8 A44A000A */  sh          $t2, 0xa($v0)
/* 054A5C 80054EAC 906B0011 */  lbu         $t3, 0x11($v1)
/* 054A60 80054EB0 906D0010 */  lbu         $t5, 0x10($v1)
/* 054A64 80054EB4 24EF0001 */  addiu       $t7, $a3, 0x1
/* 054A68 80054EB8 000B6200 */  sll         $t4, $t3, 8
/* 054A6C 80054EBC 000FC080 */  sll         $t8, $t7, 2
/* 054A70 80054EC0 018D7021 */  addu        $t6, $t4, $t5
/* 054A74 80054EC4 02182021 */  addu        $a0, $s0, $t8
/* 054A78 80054EC8 A44E0014 */  sh          $t6, 0x14($v0)
/* 054A7C 80054ECC 9099000F */  lbu         $t9, 0xf($a0)
/* 054A80 80054ED0 908A000E */  lbu         $t2, 0xe($a0)
/* 054A84 80054ED4 24F80002 */  addiu       $t8, $a3, 0x2
/* 054A88 80054ED8 00194A00 */  sll         $t1, $t9, 8
/* 054A8C 80054EDC 012A5821 */  addu        $t3, $t1, $t2
/* 054A90 80054EE0 A44B000C */  sh          $t3, 0xc($v0)
/* 054A94 80054EE4 908C0011 */  lbu         $t4, 0x11($a0)
/* 054A98 80054EE8 908E0010 */  lbu         $t6, 0x10($a0)
/* 054A9C 80054EEC 0018C880 */  sll         $t9, $t8, 2
/* 054AA0 80054EF0 000C6A00 */  sll         $t5, $t4, 8
/* 054AA4 80054EF4 01AE7821 */  addu        $t7, $t5, $t6
/* 054AA8 80054EF8 A44F0016 */  sh          $t7, 0x16($v0)
/* 054AAC 80054EFC 02192821 */  addu        $a1, $s0, $t9
/* 054AB0 80054F00 90A9000F */  lbu         $t1, 0xf($a1)
/* 054AB4 80054F04 90AB000E */  lbu         $t3, 0xe($a1)
/* 054AB8 80054F08 24F90003 */  addiu       $t9, $a3, 0x3
/* 054ABC 80054F0C 00095200 */  sll         $t2, $t1, 8
/* 054AC0 80054F10 014B6021 */  addu        $t4, $t2, $t3
/* 054AC4 80054F14 A44C000E */  sh          $t4, 0xe($v0)
/* 054AC8 80054F18 90AD0011 */  lbu         $t5, 0x11($a1)
/* 054ACC 80054F1C 90AF0010 */  lbu         $t7, 0x10($a1)
/* 054AD0 80054F20 00194880 */  sll         $t1, $t9, 2
/* 054AD4 80054F24 000D7200 */  sll         $t6, $t5, 8
/* 054AD8 80054F28 01CFC021 */  addu        $t8, $t6, $t7
/* 054ADC 80054F2C A4580018 */  sh          $t8, 0x18($v0)
/* 054AE0 80054F30 02093021 */  addu        $a2, $s0, $t1
/* 054AE4 80054F34 90CA000F */  lbu         $t2, 0xf($a2)
/* 054AE8 80054F38 90CC000E */  lbu         $t4, 0xe($a2)
/* 054AEC 80054F3C 3C038010 */  lui         $v1, %hi(D_80100300)
/* 054AF0 80054F40 000A5A00 */  sll         $t3, $t2, 8
/* 054AF4 80054F44 016C6821 */  addu        $t5, $t3, $t4
/* 054AF8 80054F48 A44D0010 */  sh          $t5, 0x10($v0)
/* 054AFC 80054F4C 90CE0011 */  lbu         $t6, 0x11($a2)
/* 054B00 80054F50 90D80010 */  lbu         $t8, 0x10($a2)
/* 054B04 80054F54 000E7A00 */  sll         $t7, $t6, 8
/* 054B08 80054F58 01F8C821 */  addu        $t9, $t7, $t8
/* 054B0C 80054F5C A459001A */  sh          $t9, 0x1a($v0)
/* 054B10 80054F60 9629000A */  lhu         $t1, 0xa($s1)
/* 054B14 80054F64 55210003 */  bnel        $t1, $at, .L80054F74
/* 054B18 80054F68 93AA005A */   lbu        $t2, 0x5a($sp)
/* 054B1C 80054F6C A6200002 */  sh          $zero, 0x2($s1)
/* 054B20 80054F70 93AA005A */  lbu         $t2, 0x5a($sp)
.L80054F74:
/* 054B24 80054F74 90630300 */  lbu         $v1, %lo(D_80100300)($v1)
/* 054B28 80054F78 314B0007 */  andi        $t3, $t2, 0x7
/* 054B2C 80054F7C 10600026 */  beqz        $v1, .L80055018
/* 054B30 80054F80 A24B000C */   sb         $t3, 0xc($s2)
/* 054B34 80054F84 316C00FF */  andi        $t4, $t3, 0xff
/* 054B38 80054F88 11800023 */  beqz        $t4, .L80055018
/* 054B3C 80054F8C 240D0004 */   addiu      $t5, $zero, 0x4
.L80054F90:
/* 054B40 80054F90 27B00038 */  addiu       $s0, $sp, 0x38
/* 054B44 80054F94 AE4D0008 */  sw          $t5, 0x8($s2)
/* 054B48 80054F98 8E440000 */  lw          $a0, 0x0($s2)
/* 054B4C 80054F9C 8E450004 */  lw          $a1, 0x4($s2)
/* 054B50 80054FA0 0C01558C */  jal         __osVoiceGetStatus
/* 054B54 80054FA4 27A6005F */   addiu      $a2, $sp, 0x5f
/* 054B58 80054FA8 10400003 */  beqz        $v0, .L80054FB8
/* 054B5C 80054FAC 93AE005F */   lbu        $t6, 0x5f($sp)
/* 054B60 80054FB0 1000001C */  b           .L80055024
/* 054B64 80054FB4 8FBF0024 */   lw         $ra, 0x24($sp)
.L80054FB8:
/* 054B68 80054FB8 31CF0001 */  andi        $t7, $t6, 0x1
/* 054B6C 80054FBC 11E00003 */  beqz        $t7, .L80054FCC
/* 054B70 80054FC0 00003025 */   move       $a2, $zero
/* 054B74 80054FC4 10000016 */  b           .L80055020
/* 054B78 80054FC8 2402000F */   addiu      $v0, $zero, 0xf
.L80054FCC:
/* 054B7C 80054FCC 8E440000 */  lw          $a0, 0x0($s2)
/* 054B80 80054FD0 8E450004 */  lw          $a1, 0x4($s2)
/* 054B84 80054FD4 0C015644 */  jal         __osVoiceContRead2
/* 054B88 80054FD8 02003825 */   move       $a3, $s0
/* 054B8C 80054FDC 10400003 */  beqz        $v0, .L80054FEC
/* 054B90 80054FE0 00404025 */   move       $t0, $v0
/* 054B94 80054FE4 1000000F */  b           .L80055024
/* 054B98 80054FE8 8FBF0024 */   lw         $ra, 0x24($sp)
.L80054FEC:
/* 054B9C 80054FEC 92180000 */  lbu         $t8, 0x0($s0)
/* 054BA0 80054FF0 33190007 */  andi        $t9, $t8, 0x7
/* 054BA4 80054FF4 A259000C */  sb          $t9, 0xc($s2)
/* 054BA8 80054FF8 92090000 */  lbu         $t1, 0x0($s0)
/* 054BAC 80054FFC 312A0007 */  andi        $t2, $t1, 0x7
/* 054BB0 80055000 51400006 */  beql        $t2, $zero, .L8005501C
/* 054BB4 80055004 AE400008 */   sw         $zero, 0x8($s2)
/* 054BB8 80055008 10000005 */  b           .L80055020
/* 054BBC 8005500C 2402000F */   addiu      $v0, $zero, 0xf
/* 054BC0 80055010 10000003 */  b           .L80055020
/* 054BC4 80055014 24020005 */   addiu      $v0, $zero, 0x5
.L80055018:
/* 054BC8 80055018 AE400008 */  sw          $zero, 0x8($s2)
.L8005501C:
/* 054BCC 8005501C 01001025 */  move        $v0, $t0
.L80055020:
/* 054BD0 80055020 8FBF0024 */  lw          $ra, 0x24($sp)
.L80055024:
/* 054BD4 80055024 8FB00018 */  lw          $s0, 0x18($sp)
/* 054BD8 80055028 8FB1001C */  lw          $s1, 0x1c($sp)
/* 054BDC 8005502C 8FB20020 */  lw          $s2, 0x20($sp)
/* 054BE0 80055030 03E00008 */  jr          $ra
/* 054BE4 80055034 27BD0068 */   addiu      $sp, $sp, 0x68
/* 054BE8 80055038 00000000 */  nop
/* 054BEC 8005503C 00000000 */  nop
