.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osEPiRawStartDma # 0
/* 059CB0 8005A100 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 059CB4 8005A104 3C03A460 */  lui         $v1, 0xa460
/* 059CB8 8005A108 34630010 */  ori         $v1, $v1, 0x10
/* 059CBC 8005A10C AFBF001C */  sw          $ra, 0x1c($sp)
/* 059CC0 8005A110 AFB00018 */  sw          $s0, 0x18($sp)
/* 059CC4 8005A114 AFA60028 */  sw          $a2, 0x28($sp)
/* 059CC8 8005A118 8C620000 */  lw          $v0, 0x0($v1)
/* 059CCC 8005A11C 00808025 */  move        $s0, $a0
/* 059CD0 8005A120 304E0003 */  andi        $t6, $v0, 0x3
/* 059CD4 8005A124 51C00006 */  beql        $t6, $zero, .L8005A140
/* 059CD8 8005A128 92020009 */   lbu        $v0, 0x9($s0)
/* 059CDC 8005A12C 8C620000 */  lw          $v0, 0x0($v1)
.L8005A130:
/* 059CE0 8005A130 304F0003 */  andi        $t7, $v0, 0x3
/* 059CE4 8005A134 55E0FFFE */  bnel        $t7, $zero, .L8005A130
/* 059CE8 8005A138 8C620000 */   lw         $v0, 0x0($v1)
/* 059CEC 8005A13C 92020009 */  lbu         $v0, 0x9($s0)
.L8005A140:
/* 059CF0 8005A140 3C04800A */  lui         $a0, %hi(__osCurrentHandle)
/* 059CF4 8005A144 92190004 */  lbu         $t9, 0x4($s0)
/* 059CF8 8005A148 0002C080 */  sll         $t8, $v0, 2
/* 059CFC 8005A14C 00982021 */  addu        $a0, $a0, $t8
/* 059D00 8005A150 8C84EE60 */  lw          $a0, %lo(__osCurrentHandle)($a0)
/* 059D04 8005A154 90880004 */  lbu         $t0, 0x4($a0)
/* 059D08 8005A158 5328003D */  beql        $t9, $t0, .L8005A250
/* 059D0C 8005A15C 00E02025 */   move       $a0, $a3
/* 059D10 8005A160 14400019 */  bnez        $v0, .L8005A1C8
/* 059D14 8005A164 00801825 */   move       $v1, $a0
/* 059D18 8005A168 92020005 */  lbu         $v0, 0x5($s0)
/* 059D1C 8005A16C 90890005 */  lbu         $t1, 0x5($a0)
/* 059D20 8005A170 3C0AA460 */  lui         $t2, %hi(D_A4600014)
/* 059D24 8005A174 3C0CA460 */  lui         $t4, %hi(D_A460001C)
/* 059D28 8005A178 10490002 */  beq         $v0, $t1, .L8005A184
/* 059D2C 8005A17C 3C0EA460 */   lui        $t6, %hi(D_A4600020)
/* 059D30 8005A180 AD420014 */  sw          $v0, %lo(D_A4600014)($t2)
.L8005A184:
/* 059D34 8005A184 92020006 */  lbu         $v0, 0x6($s0)
/* 059D38 8005A188 906B0006 */  lbu         $t3, 0x6($v1)
/* 059D3C 8005A18C 3C18A460 */  lui         $t8, %hi(D_A4600018)
/* 059D40 8005A190 504B0003 */  beql        $v0, $t3, .L8005A1A0
/* 059D44 8005A194 92020007 */   lbu        $v0, 0x7($s0)
/* 059D48 8005A198 AD82001C */  sw          $v0, %lo(D_A460001C)($t4)
/* 059D4C 8005A19C 92020007 */  lbu         $v0, 0x7($s0)
.L8005A1A0:
/* 059D50 8005A1A0 906D0007 */  lbu         $t5, 0x7($v1)
/* 059D54 8005A1A4 504D0003 */  beql        $v0, $t5, .L8005A1B4
/* 059D58 8005A1A8 92020008 */   lbu        $v0, 0x8($s0)
/* 059D5C 8005A1AC ADC20020 */  sw          $v0, %lo(D_A4600020)($t6)
/* 059D60 8005A1B0 92020008 */  lbu         $v0, 0x8($s0)
.L8005A1B4:
/* 059D64 8005A1B4 906F0008 */  lbu         $t7, 0x8($v1)
/* 059D68 8005A1B8 504F001B */  beql        $v0, $t7, .L8005A228
/* 059D6C 8005A1BC 920F0004 */   lbu        $t7, 0x4($s0)
/* 059D70 8005A1C0 10000018 */  b           .L8005A224
/* 059D74 8005A1C4 AF020018 */   sw         $v0, %lo(D_A4600018)($t8)
.L8005A1C8:
/* 059D78 8005A1C8 92020005 */  lbu         $v0, 0x5($s0)
/* 059D7C 8005A1CC 90790005 */  lbu         $t9, 0x5($v1)
/* 059D80 8005A1D0 3C08A460 */  lui         $t0, %hi(D_A4600024)
/* 059D84 8005A1D4 3C0AA460 */  lui         $t2, %hi(D_A460002C)
/* 059D88 8005A1D8 10590002 */  beq         $v0, $t9, .L8005A1E4
/* 059D8C 8005A1DC 3C0CA460 */   lui        $t4, %hi(D_A4600030)
/* 059D90 8005A1E0 AD020024 */  sw          $v0, %lo(D_A4600024)($t0)
.L8005A1E4:
/* 059D94 8005A1E4 92020006 */  lbu         $v0, 0x6($s0)
/* 059D98 8005A1E8 90690006 */  lbu         $t1, 0x6($v1)
/* 059D9C 8005A1EC 3C0EA460 */  lui         $t6, %hi(D_A4600028)
/* 059DA0 8005A1F0 50490003 */  beql        $v0, $t1, .L8005A200
/* 059DA4 8005A1F4 92020007 */   lbu        $v0, 0x7($s0)
/* 059DA8 8005A1F8 AD42002C */  sw          $v0, %lo(D_A460002C)($t2)
/* 059DAC 8005A1FC 92020007 */  lbu         $v0, 0x7($s0)
.L8005A200:
/* 059DB0 8005A200 906B0007 */  lbu         $t3, 0x7($v1)
/* 059DB4 8005A204 504B0003 */  beql        $v0, $t3, .L8005A214
/* 059DB8 8005A208 92020008 */   lbu        $v0, 0x8($s0)
/* 059DBC 8005A20C AD820030 */  sw          $v0, %lo(D_A4600030)($t4)
/* 059DC0 8005A210 92020008 */  lbu         $v0, 0x8($s0)
.L8005A214:
/* 059DC4 8005A214 906D0008 */  lbu         $t5, 0x8($v1)
/* 059DC8 8005A218 504D0003 */  beql        $v0, $t5, .L8005A228
/* 059DCC 8005A21C 920F0004 */   lbu        $t7, 0x4($s0)
/* 059DD0 8005A220 ADC20028 */  sw          $v0, %lo(D_A4600028)($t6)
.L8005A224:
/* 059DD4 8005A224 920F0004 */  lbu         $t7, 0x4($s0)
.L8005A228:
/* 059DD8 8005A228 A06F0004 */  sb          $t7, 0x4($v1)
/* 059DDC 8005A22C 92180005 */  lbu         $t8, 0x5($s0)
/* 059DE0 8005A230 A0780005 */  sb          $t8, 0x5($v1)
/* 059DE4 8005A234 92190006 */  lbu         $t9, 0x6($s0)
/* 059DE8 8005A238 A0790006 */  sb          $t9, 0x6($v1)
/* 059DEC 8005A23C 92080007 */  lbu         $t0, 0x7($s0)
/* 059DF0 8005A240 A0680007 */  sb          $t0, 0x7($v1)
/* 059DF4 8005A244 92090008 */  lbu         $t1, 0x8($s0)
/* 059DF8 8005A248 A0690008 */  sb          $t1, 0x8($v1)
/* 059DFC 8005A24C 00E02025 */  move        $a0, $a3
.L8005A250:
/* 059E00 8005A250 0C0143B0 */  jal         osVirtualToPhysical
/* 059E04 8005A254 AFA50024 */   sw         $a1, 0x24($sp)
/* 059E08 8005A258 8FA50024 */  lw          $a1, 0x24($sp)
/* 059E0C 8005A25C 3C0AA460 */  lui         $t2, %hi(D_A4600000)
/* 059E10 8005A260 AD420000 */  sw          $v0, %lo(D_A4600000)($t2)
/* 059E14 8005A264 8FAC0028 */  lw          $t4, 0x28($sp)
/* 059E18 8005A268 8E0B000C */  lw          $t3, 0xc($s0)
/* 059E1C 8005A26C 3C011FFF */  lui         $at, 0x1fff
/* 059E20 8005A270 3421FFFF */  ori         $at, $at, 0xffff
/* 059E24 8005A274 016C6825 */  or          $t5, $t3, $t4
/* 059E28 8005A278 01A17024 */  and         $t6, $t5, $at
/* 059E2C 8005A27C 3C0FA460 */  lui         $t7, %hi(D_A4600004)
/* 059E30 8005A280 10A00006 */  beqz        $a1, .L8005A29C
/* 059E34 8005A284 ADEE0004 */   sw         $t6, %lo(D_A4600004)($t7)
/* 059E38 8005A288 24010001 */  addiu       $at, $zero, 0x1
/* 059E3C 8005A28C 10A10008 */  beq         $a1, $at, .L8005A2B0
/* 059E40 8005A290 8FA90030 */   lw         $t1, 0x30($sp)
/* 059E44 8005A294 1000000D */  b           .L8005A2CC
/* 059E48 8005A298 2402FFFF */   addiu      $v0, $zero, -0x1
.L8005A29C:
/* 059E4C 8005A29C 8FB80030 */  lw          $t8, 0x30($sp)
/* 059E50 8005A2A0 3C08A460 */  lui         $t0, %hi(D_A460000C)
/* 059E54 8005A2A4 2719FFFF */  addiu       $t9, $t8, -0x1
/* 059E58 8005A2A8 10000007 */  b           .L8005A2C8
/* 059E5C 8005A2AC AD19000C */   sw         $t9, %lo(D_A460000C)($t0)
.L8005A2B0:
/* 059E60 8005A2B0 252AFFFF */  addiu       $t2, $t1, -0x1
/* 059E64 8005A2B4 3C0BA460 */  lui         $t3, %hi(D_A4600008)
/* 059E68 8005A2B8 10000003 */  b           .L8005A2C8
/* 059E6C 8005A2BC AD6A0008 */   sw         $t2, %lo(D_A4600008)($t3)
/* 059E70 8005A2C0 10000002 */  b           .L8005A2CC
/* 059E74 8005A2C4 2402FFFF */   addiu      $v0, $zero, -0x1
.L8005A2C8:
/* 059E78 8005A2C8 00001025 */  move        $v0, $zero
.L8005A2CC:
/* 059E7C 8005A2CC 8FBF001C */  lw          $ra, 0x1c($sp)
/* 059E80 8005A2D0 8FB00018 */  lw          $s0, 0x18($sp)
/* 059E84 8005A2D4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 059E88 8005A2D8 03E00008 */  jr          $ra
/* 059E8C 8005A2DC 00000000 */   nop
