.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8003DFF0 # 0
/* 03DBA0 8003DFF0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03DBA4 8003DFF4 AFB00018 */  sw          $s0, 0x18($sp)
/* 03DBA8 8003DFF8 AFBF001C */  sw          $ra, 0x1c($sp)
/* 03DBAC 8003DFFC 00A03825 */  move        $a3, $a1
/* 03DBB0 8003E000 AC850014 */  sw          $a1, 0x14($a0)
/* 03DBB4 8003E004 240E0001 */  addiu       $t6, $zero, 0x1
/* 03DBB8 8003E008 00808025 */  move        $s0, $a0
/* 03DBBC 8003E00C AC8E0018 */  sw          $t6, 0x18($a0)
/* 03DBC0 8003E010 00052880 */  sll         $a1, $a1, 2
/* 03DBC4 8003E014 00A72821 */  addu        $a1, $a1, $a3
/* 03DBC8 8003E018 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 03DBCC 8003E01C 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 03DBD0 8003E020 00052880 */  sll         $a1, $a1, 2
/* 03DBD4 8003E024 AFA70024 */  sw          $a3, 0x24($sp)
/* 03DBD8 8003E028 0C00DA76 */  jal         func_800369D8
/* 03DBDC 8003E02C 24060027 */   addiu      $a2, $zero, 0x27
/* 03DBE0 8003E030 8FA70024 */  lw          $a3, 0x24($sp)
/* 03DBE4 8003E034 AE020000 */  sw          $v0, 0x0($s0)
/* 03DBE8 8003E038 00002025 */  move        $a0, $zero
/* 03DBEC 8003E03C 10E00031 */  beqz        $a3, .L8003E104
/* 03DBF0 8003E040 00401825 */   move       $v1, $v0
/* 03DBF4 8003E044 30E20003 */  andi        $v0, $a3, 0x3
/* 03DBF8 8003E048 1040000C */  beqz        $v0, .L8003E07C
/* 03DBFC 8003E04C 00402825 */   move       $a1, $v0
.L8003E050:
/* 03DC00 8003E050 246FFFEC */  addiu       $t7, $v1, -0x14
/* 03DC04 8003E054 24620014 */  addiu       $v0, $v1, 0x14
/* 03DC08 8003E058 AC62000C */  sw          $v0, 0xc($v1)
/* 03DC0C 8003E05C AC6F0008 */  sw          $t7, 0x8($v1)
/* 03DC10 8003E060 AC600000 */  sw          $zero, 0x0($v1)
/* 03DC14 8003E064 AC600004 */  sw          $zero, 0x4($v1)
/* 03DC18 8003E068 AC600010 */  sw          $zero, 0x10($v1)
/* 03DC1C 8003E06C 24840001 */  addiu       $a0, $a0, 0x1
/* 03DC20 8003E070 14A4FFF7 */  bne         $a1, $a0, .L8003E050
/* 03DC24 8003E074 00401825 */   move       $v1, $v0
/* 03DC28 8003E078 10870022 */  beq         $a0, $a3, .L8003E104
.L8003E07C:
/* 03DC2C 8003E07C 24620014 */   addiu      $v0, $v1, 0x14
/* 03DC30 8003E080 2478FFEC */  addiu       $t8, $v1, -0x14
/* 03DC34 8003E084 AC62000C */  sw          $v0, 0xc($v1)
/* 03DC38 8003E088 AC600000 */  sw          $zero, 0x0($v1)
/* 03DC3C 8003E08C AC600004 */  sw          $zero, 0x4($v1)
/* 03DC40 8003E090 AC600010 */  sw          $zero, 0x10($v1)
/* 03DC44 8003E094 AC780008 */  sw          $t8, 0x8($v1)
/* 03DC48 8003E098 2459FFEC */  addiu       $t9, $v0, -0x14
/* 03DC4C 8003E09C 00401825 */  move        $v1, $v0
/* 03DC50 8003E0A0 24420014 */  addiu       $v0, $v0, 0x14
/* 03DC54 8003E0A4 AC59FFF4 */  sw          $t9, -0xc($v0)
/* 03DC58 8003E0A8 AC40FFFC */  sw          $zero, -0x4($v0)
/* 03DC5C 8003E0AC AC40FFF0 */  sw          $zero, -0x10($v0)
/* 03DC60 8003E0B0 AC40FFEC */  sw          $zero, -0x14($v0)
/* 03DC64 8003E0B4 AC62000C */  sw          $v0, 0xc($v1)
/* 03DC68 8003E0B8 2448FFEC */  addiu       $t0, $v0, -0x14
/* 03DC6C 8003E0BC 00401825 */  move        $v1, $v0
/* 03DC70 8003E0C0 24420014 */  addiu       $v0, $v0, 0x14
/* 03DC74 8003E0C4 AC48FFF4 */  sw          $t0, -0xc($v0)
/* 03DC78 8003E0C8 AC40FFFC */  sw          $zero, -0x4($v0)
/* 03DC7C 8003E0CC AC40FFF0 */  sw          $zero, -0x10($v0)
/* 03DC80 8003E0D0 AC40FFEC */  sw          $zero, -0x14($v0)
/* 03DC84 8003E0D4 AC62000C */  sw          $v0, 0xc($v1)
/* 03DC88 8003E0D8 2449FFEC */  addiu       $t1, $v0, -0x14
/* 03DC8C 8003E0DC 00401825 */  move        $v1, $v0
/* 03DC90 8003E0E0 24420014 */  addiu       $v0, $v0, 0x14
/* 03DC94 8003E0E4 AC49FFF4 */  sw          $t1, -0xc($v0)
/* 03DC98 8003E0E8 AC40FFFC */  sw          $zero, -0x4($v0)
/* 03DC9C 8003E0EC AC40FFF0 */  sw          $zero, -0x10($v0)
/* 03DCA0 8003E0F0 AC40FFEC */  sw          $zero, -0x14($v0)
/* 03DCA4 8003E0F4 AC62000C */  sw          $v0, 0xc($v1)
/* 03DCA8 8003E0F8 24840004 */  addiu       $a0, $a0, 0x4
/* 03DCAC 8003E0FC 1487FFDF */  bne         $a0, $a3, .L8003E07C
/* 03DCB0 8003E100 00401825 */   move       $v1, $v0
.L8003E104:
/* 03DCB4 8003E104 8E0A0000 */  lw          $t2, 0x0($s0)
/* 03DCB8 8003E108 2463FFEC */  addiu       $v1, $v1, -0x14
/* 03DCBC 8003E10C AD430008 */  sw          $v1, 0x8($t2)
/* 03DCC0 8003E110 8E0B0000 */  lw          $t3, 0x0($s0)
/* 03DCC4 8003E114 AC6B000C */  sw          $t3, 0xc($v1)
/* 03DCC8 8003E118 8E0D0014 */  lw          $t5, 0x14($s0)
/* 03DCCC 8003E11C 8E0C0000 */  lw          $t4, 0x0($s0)
/* 03DCD0 8003E120 000D7042 */  srl         $t6, $t5, 1
/* 03DCD4 8003E124 000E7880 */  sll         $t7, $t6, 2
/* 03DCD8 8003E128 01EE7821 */  addu        $t7, $t7, $t6
/* 03DCDC 8003E12C 000F7880 */  sll         $t7, $t7, 2
/* 03DCE0 8003E130 018F1021 */  addu        $v0, $t4, $t7
/* 03DCE4 8003E134 AE020004 */  sw          $v0, 0x4($s0)
/* 03DCE8 8003E138 8C580008 */  lw          $t8, 0x8($v0)
/* 03DCEC 8003E13C AF00000C */  sw          $zero, 0xc($t8)
/* 03DCF0 8003E140 8E190004 */  lw          $t9, 0x4($s0)
/* 03DCF4 8003E144 AF200008 */  sw          $zero, 0x8($t9)
/* 03DCF8 8003E148 AE000008 */  sw          $zero, 0x8($s0)
/* 03DCFC 8003E14C AE00000C */  sw          $zero, 0xc($s0)
/* 03DD00 8003E150 AE000010 */  sw          $zero, 0x10($s0)
/* 03DD04 8003E154 AE00001C */  sw          $zero, 0x1c($s0)
/* 03DD08 8003E158 8FBF001C */  lw          $ra, 0x1c($sp)
/* 03DD0C 8003E15C 8FB00018 */  lw          $s0, 0x18($sp)
/* 03DD10 8003E160 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03DD14 8003E164 03E00008 */  jr          $ra
/* 03DD18 8003E168 00000000 */   nop

glabel func_8003E16C # 1
/* 03DD1C 8003E16C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03DD20 8003E170 00803025 */  move        $a2, $a0
/* 03DD24 8003E174 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03DD28 8003E178 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 03DD2C 8003E17C 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 03DD30 8003E180 0C00DB8B */  jal         func_80036E2C
/* 03DD34 8003E184 8CC50000 */   lw         $a1, 0x0($a2)
/* 03DD38 8003E188 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03DD3C 8003E18C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03DD40 8003E190 03E00008 */  jr          $ra
/* 03DD44 8003E194 00000000 */   nop

glabel func_8003E198 # 2
/* 03DD48 8003E198 8C82000C */  lw          $v0, 0xc($a0)
/* 03DD4C 8003E19C 50400004 */  beql        $v0, $zero, .L8003E1B0
/* 03DD50 8003E1A0 ACA20008 */   sw         $v0, 0x8($a1)
/* 03DD54 8003E1A4 AC45000C */  sw          $a1, 0xc($v0)
/* 03DD58 8003E1A8 8C82000C */  lw          $v0, 0xc($a0)
/* 03DD5C 8003E1AC ACA20008 */  sw          $v0, 0x8($a1)
.L8003E1B0:
/* 03DD60 8003E1B0 AC85000C */  sw          $a1, 0xc($a0)
/* 03DD64 8003E1B4 ACA0000C */  sw          $zero, 0xc($a1)
/* 03DD68 8003E1B8 8C8E0008 */  lw          $t6, 0x8($a0)
/* 03DD6C 8003E1BC 15C00002 */  bnez        $t6, .L8003E1C8
/* 03DD70 8003E1C0 00000000 */   nop
/* 03DD74 8003E1C4 AC850008 */  sw          $a1, 0x8($a0)
.L8003E1C8:
/* 03DD78 8003E1C8 03E00008 */  jr          $ra
/* 03DD7C 8003E1CC 00000000 */   nop

glabel func_8003E1D0 # 3
/* 03DD80 8003E1D0 8C8E0008 */  lw          $t6, 0x8($a0)
/* 03DD84 8003E1D4 8CA20008 */  lw          $v0, 0x8($a1)
/* 03DD88 8003E1D8 8CA3000C */  lw          $v1, 0xc($a1)
/* 03DD8C 8003E1DC 54AE0004 */  bnel        $a1, $t6, .L8003E1F0
/* 03DD90 8003E1E0 AC43000C */   sw         $v1, 0xc($v0)
/* 03DD94 8003E1E4 10000002 */  b           .L8003E1F0
/* 03DD98 8003E1E8 AC830008 */   sw         $v1, 0x8($a0)
/* 03DD9C 8003E1EC AC43000C */  sw          $v1, 0xc($v0)
.L8003E1F0:
/* 03DDA0 8003E1F0 8C8F000C */  lw          $t7, 0xc($a0)
/* 03DDA4 8003E1F4 54AF0004 */  bnel        $a1, $t7, .L8003E208
/* 03DDA8 8003E1F8 AC620008 */   sw         $v0, 0x8($v1)
/* 03DDAC 8003E1FC 10000002 */  b           .L8003E208
/* 03DDB0 8003E200 AC82000C */   sw         $v0, 0xc($a0)
/* 03DDB4 8003E204 AC620008 */  sw          $v0, 0x8($v1)
.L8003E208:
/* 03DDB8 8003E208 8C980010 */  lw          $t8, 0x10($a0)
/* 03DDBC 8003E20C 14B80002 */  bne         $a1, $t8, .L8003E218
/* 03DDC0 8003E210 00000000 */   nop
/* 03DDC4 8003E214 AC820010 */  sw          $v0, 0x10($a0)
.L8003E218:
/* 03DDC8 8003E218 03E00008 */  jr          $ra
/* 03DDCC 8003E21C 00000000 */   nop

glabel func_8003E220 # 4
/* 03DDD0 8003E220 50A0000C */  beql        $a1, $zero, .L8003E254
/* 03DDD4 8003E224 8C850004 */   lw         $a1, 0x4($a0)
/* 03DDD8 8003E228 8C820004 */  lw          $v0, 0x4($a0)
/* 03DDDC 8003E22C 54A20005 */  bnel        $a1, $v0, .L8003E244
/* 03DDE0 8003E230 8CAF000C */   lw         $t7, 0xc($a1)
/* 03DDE4 8003E234 8C4E000C */  lw          $t6, 0xc($v0)
/* 03DDE8 8003E238 10000008 */  b           .L8003E25C
/* 03DDEC 8003E23C AC8E0004 */   sw         $t6, 0x4($a0)
/* 03DDF0 8003E240 8CAF000C */  lw          $t7, 0xc($a1)
.L8003E244:
/* 03DDF4 8003E244 8CB80008 */  lw          $t8, 0x8($a1)
/* 03DDF8 8003E248 10000004 */  b           .L8003E25C
/* 03DDFC 8003E24C AF0F000C */   sw         $t7, 0xc($t8)
/* 03DE00 8003E250 8C850004 */  lw          $a1, 0x4($a0)
.L8003E254:
/* 03DE04 8003E254 8CB9000C */  lw          $t9, 0xc($a1)
/* 03DE08 8003E258 AC990004 */  sw          $t9, 0x4($a0)
.L8003E25C:
/* 03DE0C 8003E25C 8CA2000C */  lw          $v0, 0xc($a1)
/* 03DE10 8003E260 50400004 */  beql        $v0, $zero, .L8003E274
/* 03DE14 8003E264 ACA00010 */   sw         $zero, 0x10($a1)
/* 03DE18 8003E268 8CA80008 */  lw          $t0, 0x8($a1)
/* 03DE1C 8003E26C AC480008 */  sw          $t0, 0x8($v0)
/* 03DE20 8003E270 ACA00010 */  sw          $zero, 0x10($a1)
.L8003E274:
/* 03DE24 8003E274 ACA0000C */  sw          $zero, 0xc($a1)
/* 03DE28 8003E278 ACA00008 */  sw          $zero, 0x8($a1)
/* 03DE2C 8003E27C 8C89001C */  lw          $t1, 0x1c($a0)
/* 03DE30 8003E280 00A01025 */  move        $v0, $a1
/* 03DE34 8003E284 252A0001 */  addiu       $t2, $t1, 0x1
/* 03DE38 8003E288 03E00008 */  jr          $ra
/* 03DE3C 8003E28C AC8A001C */   sw         $t2, 0x1c($a0)

glabel func_8003E290 # 5
/* 03DE40 8003E290 ACA00008 */  sw          $zero, 0x8($a1)
/* 03DE44 8003E294 ACA00004 */  sw          $zero, 0x4($a1)
/* 03DE48 8003E298 8C8E0004 */  lw          $t6, 0x4($a0)
/* 03DE4C 8003E29C ACAE000C */  sw          $t6, 0xc($a1)
/* 03DE50 8003E2A0 8C820004 */  lw          $v0, 0x4($a0)
/* 03DE54 8003E2A4 50400003 */  beql        $v0, $zero, .L8003E2B4
/* 03DE58 8003E2A8 8C8F001C */   lw         $t7, 0x1c($a0)
/* 03DE5C 8003E2AC AC450008 */  sw          $a1, 0x8($v0)
/* 03DE60 8003E2B0 8C8F001C */  lw          $t7, 0x1c($a0)
.L8003E2B4:
/* 03DE64 8003E2B4 AC850004 */  sw          $a1, 0x4($a0)
/* 03DE68 8003E2B8 25F8FFFF */  addiu       $t8, $t7, -0x1
/* 03DE6C 8003E2BC 03E00008 */  jr          $ra
/* 03DE70 8003E2C0 AC98001C */   sw         $t8, 0x1c($a0)

glabel func_8003E2C4 # 6
/* 03DE74 8003E2C4 8CA30000 */  lw          $v1, 0x0($a1)
/* 03DE78 8003E2C8 8C8D0014 */  lw          $t5, 0x14($a0)
/* 03DE7C 8003E2CC 00035880 */  sll         $t3, $v1, 2
/* 03DE80 8003E2D0 01635823 */  subu        $t3, $t3, $v1
/* 03DE84 8003E2D4 000B58C0 */  sll         $t3, $t3, 3
/* 03DE88 8003E2D8 01635823 */  subu        $t3, $t3, $v1
/* 03DE8C 8003E2DC 000B5880 */  sll         $t3, $t3, 2
/* 03DE90 8003E2E0 00037302 */  srl         $t6, $v1, 12
/* 03DE94 8003E2E4 01C07827 */  not         $t7, $t6
/* 03DE98 8003E2E8 01635821 */  addu        $t3, $t3, $v1
/* 03DE9C 8003E2EC 0003C202 */  srl         $t8, $v1, 8
/* 03DEA0 8003E2F0 00034102 */  srl         $t0, $v1, 4
/* 03DEA4 8003E2F4 01004827 */  not         $t1, $t0
/* 03DEA8 8003E2F8 01F8C821 */  addu        $t9, $t7, $t8
/* 03DEAC 8003E2FC 000B58C0 */  sll         $t3, $t3, 3
/* 03DEB0 8003E300 03295026 */  xor         $t2, $t9, $t1
/* 03DEB4 8003E304 01635823 */  subu        $t3, $t3, $v1
/* 03DEB8 8003E308 014B6021 */  addu        $t4, $t2, $t3
/* 03DEBC 8003E30C 018D001B */  divu        $zero, $t4, $t5
/* 03DEC0 8003E310 00007010 */  mfhi        $t6
/* 03DEC4 8003E314 8C980000 */  lw          $t8, 0x0($a0)
/* 03DEC8 8003E318 000E7880 */  sll         $t7, $t6, 2
/* 03DECC 8003E31C 01EE7821 */  addu        $t7, $t7, $t6
/* 03DED0 8003E320 000F7880 */  sll         $t7, $t7, 2
/* 03DED4 8003E324 030F1021 */  addu        $v0, $t8, $t7
/* 03DED8 8003E328 8C470010 */  lw          $a3, 0x10($v0)
/* 03DEDC 8003E32C 15A00002 */  bnez        $t5, .L8003E338
/* 03DEE0 8003E330 00000000 */   nop
/* 03DEE4 8003E334 0007000D */  break       7
.L8003E338:
/* 03DEE8 8003E338 50A70006 */  beql        $a1, $a3, .L8003E354
/* 03DEEC 8003E33C AC460010 */   sw         $a2, 0x10($v0)
/* 03DEF0 8003E340 00E01025 */  move        $v0, $a3
.L8003E344:
/* 03DEF4 8003E344 8CE70010 */  lw          $a3, 0x10($a3)
/* 03DEF8 8003E348 54A7FFFE */  bnel        $a1, $a3, .L8003E344
/* 03DEFC 8003E34C 00E01025 */   move       $v0, $a3
/* 03DF00 8003E350 AC460010 */  sw          $a2, 0x10($v0)
.L8003E354:
/* 03DF04 8003E354 8CA10000 */  lw          $at, 0x0($a1)
/* 03DF08 8003E358 ACC10000 */  sw          $at, 0x0($a2)
/* 03DF0C 8003E35C 8CB90004 */  lw          $t9, 0x4($a1)
/* 03DF10 8003E360 ACD90004 */  sw          $t9, 0x4($a2)
/* 03DF14 8003E364 8CA10008 */  lw          $at, 0x8($a1)
/* 03DF18 8003E368 ACC10008 */  sw          $at, 0x8($a2)
/* 03DF1C 8003E36C 8CB9000C */  lw          $t9, 0xc($a1)
/* 03DF20 8003E370 ACD9000C */  sw          $t9, 0xc($a2)
/* 03DF24 8003E374 8CA10010 */  lw          $at, 0x10($a1)
/* 03DF28 8003E378 ACC10010 */  sw          $at, 0x10($a2)
/* 03DF2C 8003E37C 8C890008 */  lw          $t1, 0x8($a0)
/* 03DF30 8003E380 8CA30008 */  lw          $v1, 0x8($a1)
/* 03DF34 8003E384 54A90004 */  bnel        $a1, $t1, .L8003E398
/* 03DF38 8003E388 AC66000C */   sw         $a2, 0xc($v1)
/* 03DF3C 8003E38C 10000002 */  b           .L8003E398
/* 03DF40 8003E390 AC860008 */   sw         $a2, 0x8($a0)
/* 03DF44 8003E394 AC66000C */  sw          $a2, 0xc($v1)
.L8003E398:
/* 03DF48 8003E398 8C8A000C */  lw          $t2, 0xc($a0)
/* 03DF4C 8003E39C 8CA2000C */  lw          $v0, 0xc($a1)
/* 03DF50 8003E3A0 54AA0004 */  bnel        $a1, $t2, .L8003E3B4
/* 03DF54 8003E3A4 AC460008 */   sw         $a2, 0x8($v0)
/* 03DF58 8003E3A8 10000002 */  b           .L8003E3B4
/* 03DF5C 8003E3AC AC86000C */   sw         $a2, 0xc($a0)
/* 03DF60 8003E3B0 AC460008 */  sw          $a2, 0x8($v0)
.L8003E3B4:
/* 03DF64 8003E3B4 8C8B0010 */  lw          $t3, 0x10($a0)
/* 03DF68 8003E3B8 54AB0003 */  bnel        $a1, $t3, .L8003E3C8
/* 03DF6C 8003E3BC ACA0000C */   sw         $zero, 0xc($a1)
/* 03DF70 8003E3C0 AC860010 */  sw          $a2, 0x10($a0)
/* 03DF74 8003E3C4 ACA0000C */  sw          $zero, 0xc($a1)
.L8003E3C8:
/* 03DF78 8003E3C8 ACA00008 */  sw          $zero, 0x8($a1)
/* 03DF7C 8003E3CC 03E00008 */  jr          $ra
/* 03DF80 8003E3D0 ACA00010 */   sw         $zero, 0x10($a1)

glabel func_8003E3D4 # 7
/* 03DF84 8003E3D4 240802E7 */  addiu       $t0, $zero, 0x2e7
/* 03DF88 8003E3D8 00C80019 */  multu       $a2, $t0
/* 03DF8C 8003E3DC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03DF90 8003E3E0 00067302 */  srl         $t6, $a2, 12
/* 03DF94 8003E3E4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 03DF98 8003E3E8 AFB20020 */  sw          $s2, 0x20($sp)
/* 03DF9C 8003E3EC AFB1001C */  sw          $s1, 0x1c($sp)
/* 03DFA0 8003E3F0 AFB00018 */  sw          $s0, 0x18($sp)
/* 03DFA4 8003E3F4 AFA5002C */  sw          $a1, 0x2c($sp)
/* 03DFA8 8003E3F8 01C07827 */  not         $t7, $t6
/* 03DFAC 8003E3FC 0006C202 */  srl         $t8, $a2, 8
/* 03DFB0 8003E400 00006012 */  mflo        $t4
/* 03DFB4 8003E404 00064902 */  srl         $t1, $a2, 4
/* 03DFB8 8003E408 8C870014 */  lw          $a3, 0x14($a0)
/* 03DFBC 8003E40C 01205027 */  not         $t2, $t1
/* 03DFC0 8003E410 01F8C821 */  addu        $t9, $t7, $t8
/* 03DFC4 8003E414 032A5826 */  xor         $t3, $t9, $t2
/* 03DFC8 8003E418 016C6821 */  addu        $t5, $t3, $t4
/* 03DFCC 8003E41C 01A7001B */  divu        $zero, $t5, $a3
/* 03DFD0 8003E420 00808825 */  move        $s1, $a0
/* 03DFD4 8003E424 00001810 */  mfhi        $v1
/* 03DFD8 8003E428 8E2E0000 */  lw          $t6, 0x0($s1)
/* 03DFDC 8003E42C 00037880 */  sll         $t7, $v1, 2
/* 03DFE0 8003E430 01E37821 */  addu        $t7, $t7, $v1
/* 03DFE4 8003E434 000F7880 */  sll         $t7, $t7, 2
/* 03DFE8 8003E438 01CF8021 */  addu        $s0, $t6, $t7
/* 03DFEC 8003E43C 8E180004 */  lw          $t8, 0x4($s0)
/* 03DFF0 8003E440 00C09025 */  move        $s2, $a2
/* 03DFF4 8003E444 14E00002 */  bnez        $a3, .L8003E450
/* 03DFF8 8003E448 00000000 */   nop
/* 03DFFC 8003E44C 0007000D */  break       7
.L8003E450:
/* 03E000 8003E450 57000007 */  bnel        $t8, $zero, .L8003E470
/* 03E004 8003E454 8E020000 */   lw         $v0, 0x0($s0)
/* 03E008 8003E458 02202025 */  move        $a0, $s1
/* 03E00C 8003E45C 0C00F888 */  jal         func_8003E220
/* 03E010 8003E460 02002825 */   move       $a1, $s0
/* 03E014 8003E464 10000028 */  b           .L8003E508
/* 03E018 8003E468 AE120000 */   sw         $s2, 0x0($s0)
/* 03E01C 8003E46C 8E020000 */  lw          $v0, 0x0($s0)
.L8003E470:
/* 03E020 8003E470 00002825 */  move        $a1, $zero
/* 03E024 8003E474 02202025 */  move        $a0, $s1
/* 03E028 8003E478 00480019 */  multu       $v0, $t0
/* 03E02C 8003E47C 00024B02 */  srl         $t1, $v0, 12
/* 03E030 8003E480 0120C827 */  not         $t9, $t1
/* 03E034 8003E484 00025202 */  srl         $t2, $v0, 8
/* 03E038 8003E488 00026102 */  srl         $t4, $v0, 4
/* 03E03C 8003E48C 01806827 */  not         $t5, $t4
/* 03E040 8003E490 032A5821 */  addu        $t3, $t9, $t2
/* 03E044 8003E494 016D7026 */  xor         $t6, $t3, $t5
/* 03E048 8003E498 00007812 */  mflo        $t7
/* 03E04C 8003E49C 01CFC021 */  addu        $t8, $t6, $t7
/* 03E050 8003E4A0 00000000 */  nop
/* 03E054 8003E4A4 0307001B */  divu        $zero, $t8, $a3
/* 03E058 8003E4A8 00004810 */  mfhi        $t1
/* 03E05C 8003E4AC 14E00002 */  bnez        $a3, .L8003E4B8
/* 03E060 8003E4B0 00000000 */   nop
/* 03E064 8003E4B4 0007000D */  break       7
.L8003E4B8:
/* 03E068 8003E4B8 1469000C */  bne         $v1, $t1, .L8003E4EC
/* 03E06C 8003E4BC 00000000 */   nop
/* 03E070 8003E4C0 0C00F888 */  jal         func_8003E220
/* 03E074 8003E4C4 02202025 */   move       $a0, $s1
/* 03E078 8003E4C8 54400004 */  bnel        $v0, $zero, .L8003E4DC
/* 03E07C 8003E4CC 8E190010 */   lw         $t9, 0x10($s0)
/* 03E080 8003E4D0 10000013 */  b           .L8003E520
/* 03E084 8003E4D4 00001025 */   move       $v0, $zero
/* 03E088 8003E4D8 8E190010 */  lw          $t9, 0x10($s0)
.L8003E4DC:
/* 03E08C 8003E4DC AC590010 */  sw          $t9, 0x10($v0)
/* 03E090 8003E4E0 AE020010 */  sw          $v0, 0x10($s0)
/* 03E094 8003E4E4 10000007 */  b           .L8003E504
/* 03E098 8003E4E8 00408025 */   move       $s0, $v0
.L8003E4EC:
/* 03E09C 8003E4EC 0C00F888 */  jal         func_8003E220
/* 03E0A0 8003E4F0 00002825 */   move       $a1, $zero
/* 03E0A4 8003E4F4 02202025 */  move        $a0, $s1
/* 03E0A8 8003E4F8 02002825 */  move        $a1, $s0
/* 03E0AC 8003E4FC 0C00F8B1 */  jal         func_8003E2C4
/* 03E0B0 8003E500 00403025 */   move       $a2, $v0
.L8003E504:
/* 03E0B4 8003E504 AE120000 */  sw          $s2, 0x0($s0)
.L8003E508:
/* 03E0B8 8003E508 8FAA002C */  lw          $t2, 0x2c($sp)
/* 03E0BC 8003E50C 02202025 */  move        $a0, $s1
/* 03E0C0 8003E510 02002825 */  move        $a1, $s0
/* 03E0C4 8003E514 0C00F866 */  jal         func_8003E198
/* 03E0C8 8003E518 AE0A0004 */   sw         $t2, 0x4($s0)
/* 03E0CC 8003E51C 24020001 */  addiu       $v0, $zero, 0x1
.L8003E520:
/* 03E0D0 8003E520 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03E0D4 8003E524 8FB00018 */  lw          $s0, 0x18($sp)
/* 03E0D8 8003E528 8FB1001C */  lw          $s1, 0x1c($sp)
/* 03E0DC 8003E52C 8FB20020 */  lw          $s2, 0x20($sp)
/* 03E0E0 8003E530 03E00008 */  jr          $ra
/* 03E0E4 8003E534 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8003E538 # 8
/* 03E0E8 8003E538 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03E0EC 8003E53C AFBF0014 */  sw          $ra, 0x14($sp)
/* 03E0F0 8003E540 8C860018 */  lw          $a2, 0x18($a0)
/* 03E0F4 8003E544 AFA40020 */  sw          $a0, 0x20($sp)
/* 03E0F8 8003E548 0C00F8F5 */  jal         func_8003E3D4
/* 03E0FC 8003E54C AFA6001C */   sw         $a2, 0x1c($sp)
/* 03E100 8003E550 8FA40020 */  lw          $a0, 0x20($sp)
/* 03E104 8003E554 10400006 */  beqz        $v0, .L8003E570
/* 03E108 8003E558 8FA6001C */   lw         $a2, 0x1c($sp)
/* 03E10C 8003E55C 8C8E0018 */  lw          $t6, 0x18($a0)
/* 03E110 8003E560 00C01025 */  move        $v0, $a2
/* 03E114 8003E564 25CF0001 */  addiu       $t7, $t6, 0x1
/* 03E118 8003E568 10000002 */  b           .L8003E574
/* 03E11C 8003E56C AC8F0018 */   sw         $t7, 0x18($a0)
.L8003E570:
/* 03E120 8003E570 00001025 */  move        $v0, $zero
.L8003E574:
/* 03E124 8003E574 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03E128 8003E578 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03E12C 8003E57C 03E00008 */  jr          $ra
/* 03E130 8003E580 00000000 */   nop

glabel func_8003E584 # 9
/* 03E134 8003E584 8C820004 */  lw          $v0, 0x4($a0)
/* 03E138 8003E588 0002702B */  sltu        $t6, $zero, $v0
/* 03E13C 8003E58C 03E00008 */  jr          $ra
/* 03E140 8003E590 01C01025 */   move       $v0, $t6

glabel func_8003E594 # 10
/* 03E144 8003E594 00055880 */  sll         $t3, $a1, 2
/* 03E148 8003E598 01655823 */  subu        $t3, $t3, $a1
/* 03E14C 8003E59C 000B58C0 */  sll         $t3, $t3, 3
/* 03E150 8003E5A0 01655823 */  subu        $t3, $t3, $a1
/* 03E154 8003E5A4 000B5880 */  sll         $t3, $t3, 2
/* 03E158 8003E5A8 00057302 */  srl         $t6, $a1, 12
/* 03E15C 8003E5AC ACC00000 */  sw          $zero, 0x0($a2)
/* 03E160 8003E5B0 01C07827 */  not         $t7, $t6
/* 03E164 8003E5B4 01655821 */  addu        $t3, $t3, $a1
/* 03E168 8003E5B8 0005C202 */  srl         $t8, $a1, 8
/* 03E16C 8003E5BC 00054102 */  srl         $t0, $a1, 4
/* 03E170 8003E5C0 8C8D0014 */  lw          $t5, 0x14($a0)
/* 03E174 8003E5C4 01004827 */  not         $t1, $t0
/* 03E178 8003E5C8 01F8C821 */  addu        $t9, $t7, $t8
/* 03E17C 8003E5CC 000B58C0 */  sll         $t3, $t3, 3
/* 03E180 8003E5D0 01655823 */  subu        $t3, $t3, $a1
/* 03E184 8003E5D4 03295026 */  xor         $t2, $t9, $t1
/* 03E188 8003E5D8 014B6021 */  addu        $t4, $t2, $t3
/* 03E18C 8003E5DC 018D001B */  divu        $zero, $t4, $t5
/* 03E190 8003E5E0 00007010 */  mfhi        $t6
/* 03E194 8003E5E4 8C980000 */  lw          $t8, 0x0($a0)
/* 03E198 8003E5E8 000E7880 */  sll         $t7, $t6, 2
/* 03E19C 8003E5EC 01EE7821 */  addu        $t7, $t7, $t6
/* 03E1A0 8003E5F0 000F7880 */  sll         $t7, $t7, 2
/* 03E1A4 8003E5F4 15A00002 */  bnez        $t5, .L8003E600
/* 03E1A8 8003E5F8 00000000 */   nop
/* 03E1AC 8003E5FC 0007000D */  break       7
.L8003E600:
/* 03E1B0 8003E600 030F1821 */  addu        $v1, $t8, $t7
/* 03E1B4 8003E604 10600010 */  beqz        $v1, .L8003E648
/* 03E1B8 8003E608 00001025 */   move       $v0, $zero
/* 03E1BC 8003E60C 8C680004 */  lw          $t0, 0x4($v1)
/* 03E1C0 8003E610 1100000D */  beqz        $t0, .L8003E648
/* 03E1C4 8003E614 00000000 */   nop
/* 03E1C8 8003E618 8C790000 */  lw          $t9, 0x0($v1)
.L8003E61C:
/* 03E1CC 8003E61C 54B90004 */  bnel        $a1, $t9, .L8003E630
/* 03E1D0 8003E620 ACC30000 */   sw         $v1, 0x0($a2)
/* 03E1D4 8003E624 03E00008 */  jr          $ra
/* 03E1D8 8003E628 00601025 */   move       $v0, $v1
/* 03E1DC 8003E62C ACC30000 */  sw          $v1, 0x0($a2)
.L8003E630:
/* 03E1E0 8003E630 8C630010 */  lw          $v1, 0x10($v1)
/* 03E1E4 8003E634 10600004 */  beqz        $v1, .L8003E648
/* 03E1E8 8003E638 00000000 */   nop
/* 03E1EC 8003E63C 8C690004 */  lw          $t1, 0x4($v1)
/* 03E1F0 8003E640 5520FFF6 */  bnel        $t1, $zero, .L8003E61C
/* 03E1F4 8003E644 8C790000 */   lw         $t9, 0x0($v1)
.L8003E648:
/* 03E1F8 8003E648 03E00008 */  jr          $ra
/* 03E1FC 8003E64C 00000000 */   nop

glabel func_8003E650 # 11
/* 03E200 8003E650 00065880 */  sll         $t3, $a2, 2
/* 03E204 8003E654 01665823 */  subu        $t3, $t3, $a2
/* 03E208 8003E658 000B58C0 */  sll         $t3, $t3, 3
/* 03E20C 8003E65C 01665823 */  subu        $t3, $t3, $a2
/* 03E210 8003E660 000B5880 */  sll         $t3, $t3, 2
/* 03E214 8003E664 00067302 */  srl         $t6, $a2, 12
/* 03E218 8003E668 ACE00000 */  sw          $zero, 0x0($a3)
/* 03E21C 8003E66C 01C07827 */  not         $t7, $t6
/* 03E220 8003E670 01665821 */  addu        $t3, $t3, $a2
/* 03E224 8003E674 0006C202 */  srl         $t8, $a2, 8
/* 03E228 8003E678 00064102 */  srl         $t0, $a2, 4
/* 03E22C 8003E67C 8C8D0014 */  lw          $t5, 0x14($a0)
/* 03E230 8003E680 01004827 */  not         $t1, $t0
/* 03E234 8003E684 01F8C821 */  addu        $t9, $t7, $t8
/* 03E238 8003E688 000B58C0 */  sll         $t3, $t3, 3
/* 03E23C 8003E68C 01665823 */  subu        $t3, $t3, $a2
/* 03E240 8003E690 03295026 */  xor         $t2, $t9, $t1
/* 03E244 8003E694 014B6021 */  addu        $t4, $t2, $t3
/* 03E248 8003E698 018D001B */  divu        $zero, $t4, $t5
/* 03E24C 8003E69C 00007010 */  mfhi        $t6
/* 03E250 8003E6A0 8C980000 */  lw          $t8, 0x0($a0)
/* 03E254 8003E6A4 000E7880 */  sll         $t7, $t6, 2
/* 03E258 8003E6A8 01EE7821 */  addu        $t7, $t7, $t6
/* 03E25C 8003E6AC 000F7880 */  sll         $t7, $t7, 2
/* 03E260 8003E6B0 15A00002 */  bnez        $t5, .L8003E6BC
/* 03E264 8003E6B4 00000000 */   nop
/* 03E268 8003E6B8 0007000D */  break       7
.L8003E6BC:
/* 03E26C 8003E6BC 030F1821 */  addu        $v1, $t8, $t7
/* 03E270 8003E6C0 50600013 */  beql        $v1, $zero, .L8003E710
/* 03E274 8003E6C4 00001025 */   move       $v0, $zero
/* 03E278 8003E6C8 8C620004 */  lw          $v0, 0x4($v1)
/* 03E27C 8003E6CC 50400010 */  beql        $v0, $zero, .L8003E710
/* 03E280 8003E6D0 00001025 */   move       $v0, $zero
/* 03E284 8003E6D4 8C680000 */  lw          $t0, 0x0($v1)
.L8003E6D8:
/* 03E288 8003E6D8 54C80006 */  bnel        $a2, $t0, .L8003E6F4
/* 03E28C 8003E6DC ACE30000 */   sw         $v1, 0x0($a3)
/* 03E290 8003E6E0 54A20004 */  bnel        $a1, $v0, .L8003E6F4
/* 03E294 8003E6E4 ACE30000 */   sw         $v1, 0x0($a3)
/* 03E298 8003E6E8 03E00008 */  jr          $ra
/* 03E29C 8003E6EC 00601025 */   move       $v0, $v1
/* 03E2A0 8003E6F0 ACE30000 */  sw          $v1, 0x0($a3)
.L8003E6F4:
/* 03E2A4 8003E6F4 8C630010 */  lw          $v1, 0x10($v1)
/* 03E2A8 8003E6F8 50600005 */  beql        $v1, $zero, .L8003E710
/* 03E2AC 8003E6FC 00001025 */   move       $v0, $zero
/* 03E2B0 8003E700 8C620004 */  lw          $v0, 0x4($v1)
/* 03E2B4 8003E704 5440FFF4 */  bnel        $v0, $zero, .L8003E6D8
/* 03E2B8 8003E708 8C680000 */   lw         $t0, 0x0($v1)
/* 03E2BC 8003E70C 00001025 */  move        $v0, $zero
.L8003E710:
/* 03E2C0 8003E710 03E00008 */  jr          $ra
/* 03E2C4 8003E714 00000000 */   nop

glabel func_8003E718 # 12
/* 03E2C8 8003E718 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03E2CC 8003E71C AFBF0014 */  sw          $ra, 0x14($sp)
/* 03E2D0 8003E720 AFA40020 */  sw          $a0, 0x20($sp)
/* 03E2D4 8003E724 AFA60028 */  sw          $a2, 0x28($sp)
/* 03E2D8 8003E728 8CAE0004 */  lw          $t6, 0x4($a1)
/* 03E2DC 8003E72C AFA50024 */  sw          $a1, 0x24($sp)
/* 03E2E0 8003E730 0C00F874 */  jal         func_8003E1D0
/* 03E2E4 8003E734 AFAE001C */   sw         $t6, 0x1c($sp)
/* 03E2E8 8003E738 8FA20028 */  lw          $v0, 0x28($sp)
/* 03E2EC 8003E73C 8FA70024 */  lw          $a3, 0x24($sp)
/* 03E2F0 8003E740 50400005 */  beql        $v0, $zero, .L8003E758
/* 03E2F4 8003E744 8CE50010 */   lw         $a1, 0x10($a3)
/* 03E2F8 8003E748 8CEF0010 */  lw          $t7, 0x10($a3)
/* 03E2FC 8003E74C 10000009 */  b           .L8003E774
/* 03E300 8003E750 AC4F0010 */   sw         $t7, 0x10($v0)
/* 03E304 8003E754 8CE50010 */  lw          $a1, 0x10($a3)
.L8003E758:
/* 03E308 8003E758 8FA40020 */  lw          $a0, 0x20($sp)
/* 03E30C 8003E75C 00E03025 */  move        $a2, $a3
/* 03E310 8003E760 50A00005 */  beql        $a1, $zero, .L8003E778
/* 03E314 8003E764 8FA40020 */   lw         $a0, 0x20($sp)
/* 03E318 8003E768 0C00F8B1 */  jal         func_8003E2C4
/* 03E31C 8003E76C AFA50018 */   sw         $a1, 0x18($sp)
/* 03E320 8003E770 8FA70018 */  lw          $a3, 0x18($sp)
.L8003E774:
/* 03E324 8003E774 8FA40020 */  lw          $a0, 0x20($sp)
.L8003E778:
/* 03E328 8003E778 0C00F8A4 */  jal         func_8003E290
/* 03E32C 8003E77C 00E02825 */   move       $a1, $a3
/* 03E330 8003E780 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03E334 8003E784 8FA2001C */  lw          $v0, 0x1c($sp)
/* 03E338 8003E788 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03E33C 8003E78C 03E00008 */  jr          $ra
/* 03E340 8003E790 00000000 */   nop

glabel func_8003E794 # 13
/* 03E344 8003E794 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03E348 8003E798 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03E34C 8003E79C AFA40020 */  sw          $a0, 0x20($sp)
/* 03E350 8003E7A0 0C00F965 */  jal         func_8003E594
/* 03E354 8003E7A4 27A60018 */   addiu      $a2, $sp, 0x18
/* 03E358 8003E7A8 14400003 */  bnez        $v0, .L8003E7B8
/* 03E35C 8003E7AC 00402825 */   move       $a1, $v0
/* 03E360 8003E7B0 10000004 */  b           .L8003E7C4
/* 03E364 8003E7B4 00001025 */   move       $v0, $zero
.L8003E7B8:
/* 03E368 8003E7B8 8FA40020 */  lw          $a0, 0x20($sp)
/* 03E36C 8003E7BC 0C00F9C6 */  jal         func_8003E718
/* 03E370 8003E7C0 8FA60018 */   lw         $a2, 0x18($sp)
.L8003E7C4:
/* 03E374 8003E7C4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03E378 8003E7C8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03E37C 8003E7CC 03E00008 */  jr          $ra
/* 03E380 8003E7D0 00000000 */   nop

glabel func_8003E7D4 # 14
/* 03E384 8003E7D4 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 03E388 8003E7D8 AFBF0024 */  sw          $ra, 0x24($sp)
/* 03E38C 8003E7DC AFB30020 */  sw          $s3, 0x20($sp)
/* 03E390 8003E7E0 AFB2001C */  sw          $s2, 0x1c($sp)
/* 03E394 8003E7E4 00809025 */  move        $s2, $a0
/* 03E398 8003E7E8 00A09825 */  move        $s3, $a1
/* 03E39C 8003E7EC AFB10018 */  sw          $s1, 0x18($sp)
/* 03E3A0 8003E7F0 AFB00014 */  sw          $s0, 0x14($sp)
/* 03E3A4 8003E7F4 0C00F965 */  jal         func_8003E594
/* 03E3A8 8003E7F8 27A60030 */   addiu      $a2, $sp, 0x30
/* 03E3AC 8003E7FC 10400028 */  beqz        $v0, .L8003E8A0
/* 03E3B0 8003E800 00408025 */   move       $s0, $v0
/* 03E3B4 8003E804 8FAE0030 */  lw          $t6, 0x30($sp)
/* 03E3B8 8003E808 51C00004 */  beql        $t6, $zero, .L8003E81C
/* 03E3BC 8003E80C AFA2002C */   sw         $v0, 0x2c($sp)
/* 03E3C0 8003E810 10000004 */  b           .L8003E824
/* 03E3C4 8003E814 AFA0002C */   sw         $zero, 0x2c($sp)
/* 03E3C8 8003E818 AFA2002C */  sw          $v0, 0x2c($sp)
.L8003E81C:
/* 03E3CC 8003E81C AFA20030 */  sw          $v0, 0x30($sp)
/* 03E3D0 8003E820 8C500010 */  lw          $s0, 0x10($v0)
.L8003E824:
/* 03E3D4 8003E824 52000019 */  beql        $s0, $zero, .L8003E88C
/* 03E3D8 8003E828 8FAA002C */   lw         $t2, 0x2c($sp)
/* 03E3DC 8003E82C 8E0F0004 */  lw          $t7, 0x4($s0)
/* 03E3E0 8003E830 51E00016 */  beql        $t7, $zero, .L8003E88C
/* 03E3E4 8003E834 8FAA002C */   lw         $t2, 0x2c($sp)
/* 03E3E8 8003E838 8E180000 */  lw          $t8, 0x0($s0)
.L8003E83C:
/* 03E3EC 8003E83C 8E110010 */  lw          $s1, 0x10($s0)
/* 03E3F0 8003E840 02402025 */  move        $a0, $s2
/* 03E3F4 8003E844 12780003 */  beq         $s3, $t8, .L8003E854
/* 03E3F8 8003E848 00000000 */   nop
/* 03E3FC 8003E84C 10000009 */  b           .L8003E874
/* 03E400 8003E850 AFB00030 */   sw         $s0, 0x30($sp)
.L8003E854:
/* 03E404 8003E854 0C00F874 */  jal         func_8003E1D0
/* 03E408 8003E858 02002825 */   move       $a1, $s0
/* 03E40C 8003E85C 8E190010 */  lw          $t9, 0x10($s0)
/* 03E410 8003E860 8FA80030 */  lw          $t0, 0x30($sp)
/* 03E414 8003E864 02402025 */  move        $a0, $s2
/* 03E418 8003E868 02002825 */  move        $a1, $s0
/* 03E41C 8003E86C 0C00F8A4 */  jal         func_8003E290
/* 03E420 8003E870 AD190010 */   sw         $t9, 0x10($t0)
.L8003E874:
/* 03E424 8003E874 12200004 */  beqz        $s1, .L8003E888
/* 03E428 8003E878 02208025 */   move       $s0, $s1
/* 03E42C 8003E87C 8E290004 */  lw          $t1, 0x4($s1)
/* 03E430 8003E880 5520FFEE */  bnel        $t1, $zero, .L8003E83C
/* 03E434 8003E884 8E180000 */   lw         $t8, 0x0($s0)
.L8003E888:
/* 03E438 8003E888 8FAA002C */  lw          $t2, 0x2c($sp)
.L8003E88C:
/* 03E43C 8003E88C 02402025 */  move        $a0, $s2
/* 03E440 8003E890 11400003 */  beqz        $t2, .L8003E8A0
/* 03E444 8003E894 01402825 */   move       $a1, $t2
/* 03E448 8003E898 0C00F9C6 */  jal         func_8003E718
/* 03E44C 8003E89C 00003025 */   move       $a2, $zero
.L8003E8A0:
/* 03E450 8003E8A0 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03E454 8003E8A4 8FB00014 */  lw          $s0, 0x14($sp)
/* 03E458 8003E8A8 8FB10018 */  lw          $s1, 0x18($sp)
/* 03E45C 8003E8AC 8FB2001C */  lw          $s2, 0x1c($sp)
/* 03E460 8003E8B0 8FB30020 */  lw          $s3, 0x20($sp)
/* 03E464 8003E8B4 03E00008 */  jr          $ra
/* 03E468 8003E8B8 27BD0038 */   addiu      $sp, $sp, 0x38

glabel func_8003E8BC # 15
/* 03E46C 8003E8BC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03E470 8003E8C0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03E474 8003E8C4 AFA40020 */  sw          $a0, 0x20($sp)
/* 03E478 8003E8C8 0C00F994 */  jal         func_8003E650
/* 03E47C 8003E8CC 27A70018 */   addiu      $a3, $sp, 0x18
/* 03E480 8003E8D0 14400003 */  bnez        $v0, .L8003E8E0
/* 03E484 8003E8D4 00402825 */   move       $a1, $v0
/* 03E488 8003E8D8 10000004 */  b           .L8003E8EC
/* 03E48C 8003E8DC 00001025 */   move       $v0, $zero
.L8003E8E0:
/* 03E490 8003E8E0 8FA40020 */  lw          $a0, 0x20($sp)
/* 03E494 8003E8E4 0C00F9C6 */  jal         func_8003E718
/* 03E498 8003E8E8 8FA60018 */   lw         $a2, 0x18($sp)
.L8003E8EC:
/* 03E49C 8003E8EC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03E4A0 8003E8F0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03E4A4 8003E8F4 03E00008 */  jr          $ra
/* 03E4A8 8003E8F8 00000000 */   nop

glabel func_8003E8FC # 16
/* 03E4AC 8003E8FC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03E4B0 8003E900 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03E4B4 8003E904 0C00F965 */  jal         func_8003E594
/* 03E4B8 8003E908 27A60018 */   addiu      $a2, $sp, 0x18
/* 03E4BC 8003E90C 14400003 */  bnez        $v0, .L8003E91C
/* 03E4C0 8003E910 00401825 */   move       $v1, $v0
/* 03E4C4 8003E914 10000002 */  b           .L8003E920
/* 03E4C8 8003E918 00001025 */   move       $v0, $zero
.L8003E91C:
/* 03E4CC 8003E91C 8C620004 */  lw          $v0, 0x4($v1)
.L8003E920:
/* 03E4D0 8003E920 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03E4D4 8003E924 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03E4D8 8003E928 03E00008 */  jr          $ra
/* 03E4DC 8003E92C 00000000 */   nop

glabel func_8003E930 # 17
/* 03E4E0 8003E930 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03E4E4 8003E934 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03E4E8 8003E938 AFA40020 */  sw          $a0, 0x20($sp)
/* 03E4EC 8003E93C 0C00F965 */  jal         func_8003E594
/* 03E4F0 8003E940 27A60018 */   addiu      $a2, $sp, 0x18
/* 03E4F4 8003E944 14400003 */  bnez        $v0, .L8003E954
/* 03E4F8 8003E948 00402825 */   move       $a1, $v0
/* 03E4FC 8003E94C 10000009 */  b           .L8003E974
/* 03E500 8003E950 00001025 */   move       $v0, $zero
.L8003E954:
/* 03E504 8003E954 8FA40020 */  lw          $a0, 0x20($sp)
/* 03E508 8003E958 0C00F874 */  jal         func_8003E1D0
/* 03E50C 8003E95C AFA5001C */   sw         $a1, 0x1c($sp)
/* 03E510 8003E960 8FA40020 */  lw          $a0, 0x20($sp)
/* 03E514 8003E964 0C00F866 */  jal         func_8003E198
/* 03E518 8003E968 8FA5001C */   lw         $a1, 0x1c($sp)
/* 03E51C 8003E96C 8FAE001C */  lw          $t6, 0x1c($sp)
/* 03E520 8003E970 8DC20004 */  lw          $v0, 0x4($t6)
.L8003E974:
/* 03E524 8003E974 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03E528 8003E978 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03E52C 8003E97C 03E00008 */  jr          $ra
/* 03E530 8003E980 00000000 */   nop

glabel func_8003E984 # 18
/* 03E534 8003E984 8C820008 */  lw          $v0, 0x8($a0)
/* 03E538 8003E988 14400003 */  bnez        $v0, .L8003E998
/* 03E53C 8003E98C AC820010 */   sw         $v0, 0x10($a0)
/* 03E540 8003E990 03E00008 */  jr          $ra
/* 03E544 8003E994 00001025 */   move       $v0, $zero
.L8003E998:
/* 03E548 8003E998 8C8E0010 */  lw          $t6, 0x10($a0)
/* 03E54C 8003E99C 8DC20004 */  lw          $v0, 0x4($t6)
/* 03E550 8003E9A0 03E00008 */  jr          $ra
/* 03E554 8003E9A4 00000000 */   nop

glabel func_8003E9A8 # 19
/* 03E558 8003E9A8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03E55C 8003E9AC AFBF0014 */  sw          $ra, 0x14($sp)
/* 03E560 8003E9B0 8C830010 */  lw          $v1, 0x10($a0)
/* 03E564 8003E9B4 54600006 */  bnel        $v1, $zero, .L8003E9D0
/* 03E568 8003E9B8 8C6E000C */   lw         $t6, 0xc($v1)
/* 03E56C 8003E9BC 0C00FA61 */  jal         func_8003E984
/* 03E570 8003E9C0 00000000 */   nop
/* 03E574 8003E9C4 10000009 */  b           .L8003E9EC
/* 03E578 8003E9C8 8FBF0014 */   lw         $ra, 0x14($sp)
/* 03E57C 8003E9CC 8C6E000C */  lw          $t6, 0xc($v1)
.L8003E9D0:
/* 03E580 8003E9D0 AC8E0010 */  sw          $t6, 0x10($a0)
/* 03E584 8003E9D4 15C00003 */  bnez        $t6, .L8003E9E4
/* 03E588 8003E9D8 01C01825 */   move       $v1, $t6
/* 03E58C 8003E9DC 10000002 */  b           .L8003E9E8
/* 03E590 8003E9E0 00001025 */   move       $v0, $zero
.L8003E9E4:
/* 03E594 8003E9E4 8C620004 */  lw          $v0, 0x4($v1)
.L8003E9E8:
/* 03E598 8003E9E8 8FBF0014 */  lw          $ra, 0x14($sp)
.L8003E9EC:
/* 03E59C 8003E9EC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03E5A0 8003E9F0 03E00008 */  jr          $ra
/* 03E5A4 8003E9F4 00000000 */   nop

glabel func_8003E9F8 # 20
/* 03E5A8 8003E9F8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03E5AC 8003E9FC AFBF0014 */  sw          $ra, 0x14($sp)
/* 03E5B0 8003EA00 27A6001C */  addiu       $a2, $sp, 0x1c
/* 03E5B4 8003EA04 0C00F965 */  jal         func_8003E594
/* 03E5B8 8003EA08 AFA40020 */   sw         $a0, 0x20($sp)
/* 03E5BC 8003EA0C 8FA40020 */  lw          $a0, 0x20($sp)
/* 03E5C0 8003EA10 AC820010 */  sw          $v0, 0x10($a0)
/* 03E5C4 8003EA14 14400003 */  bnez        $v0, .L8003EA24
/* 03E5C8 8003EA18 8FBF0014 */   lw         $ra, 0x14($sp)
/* 03E5CC 8003EA1C 10000003 */  b           .L8003EA2C
/* 03E5D0 8003EA20 00001025 */   move       $v0, $zero
.L8003EA24:
/* 03E5D4 8003EA24 8C8E0010 */  lw          $t6, 0x10($a0)
/* 03E5D8 8003EA28 8DC20004 */  lw          $v0, 0x4($t6)
.L8003EA2C:
/* 03E5DC 8003EA2C 03E00008 */  jr          $ra
/* 03E5E0 8003EA30 27BD0020 */   addiu      $sp, $sp, 0x20

glabel func_8003EA34 # 21
/* 03E5E4 8003EA34 8C830010 */  lw          $v1, 0x10($a0)
/* 03E5E8 8003EA38 8C6E0010 */  lw          $t6, 0x10($v1)
.L8003EA3C:
/* 03E5EC 8003EA3C AC8E0010 */  sw          $t6, 0x10($a0)
/* 03E5F0 8003EA40 15C00003 */  bnez        $t6, .L8003EA50
/* 03E5F4 8003EA44 01C01825 */   move       $v1, $t6
/* 03E5F8 8003EA48 03E00008 */  jr          $ra
/* 03E5FC 8003EA4C 00001025 */   move       $v0, $zero
.L8003EA50:
/* 03E600 8003EA50 8C6F0000 */  lw          $t7, 0x0($v1)
/* 03E604 8003EA54 54AFFFF9 */  bnel        $a1, $t7, .L8003EA3C
/* 03E608 8003EA58 8C6E0010 */   lw         $t6, 0x10($v1)
/* 03E60C 8003EA5C 8C620004 */  lw          $v0, 0x4($v1)
/* 03E610 8003EA60 03E00008 */  jr          $ra
/* 03E614 8003EA64 00000000 */   nop

glabel func_8003EA68 # 22
/* 03E618 8003EA68 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03E61C 8003EA6C AFBF0014 */  sw          $ra, 0x14($sp)
/* 03E620 8003EA70 8C820010 */  lw          $v0, 0x10($a0)
/* 03E624 8003EA74 54400004 */  bnel        $v0, $zero, .L8003EA88
/* 03E628 8003EA78 8C450004 */   lw         $a1, 0x4($v0)
/* 03E62C 8003EA7C 10000004 */  b           .L8003EA90
/* 03E630 8003EA80 00001025 */   move       $v0, $zero
/* 03E634 8003EA84 8C450004 */  lw          $a1, 0x4($v0)
.L8003EA88:
/* 03E638 8003EA88 0C00FA2F */  jal         func_8003E8BC
/* 03E63C 8003EA8C 8C460000 */   lw         $a2, 0x0($v0)
.L8003EA90:
/* 03E640 8003EA90 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03E644 8003EA94 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03E648 8003EA98 03E00008 */  jr          $ra
/* 03E64C 8003EA9C 00000000 */   nop

/* Possibly handwritten function */
glabel func_8003EAA0 # 23
/* 03E650 8003EAA0 8C870000 */  lw          $a3, 0x0($a0)
/* 03E654 8003EAA4 3C060800 */  lui         $a2, 0x800
/* 03E658 8003EAA8 8C880004 */  lw          $t0, 0x4($a0)
/* 03E65C 8003EAAC 00E63820 */  add         $a3, $a3, $a2
/* 03E660 8003EAB0 44870000 */  mtc1        $a3, $f0
/* 03E664 8003EAB4 8C890008 */  lw          $t1, 0x8($a0)
/* 03E668 8003EAB8 46000024 */  cvt.w.s     $f0, $f0
/* 03E66C 8003EABC 01064020 */  add         $t0, $t0, $a2
/* 03E670 8003EAC0 01264820 */  add         $t1, $t1, $a2
/* 03E674 8003EAC4 44881000 */  mtc1        $t0, $f2
/* 03E678 8003EAC8 44892000 */  mtc1        $t1, $f4
/* 03E67C 8003EACC 460010A4 */  cvt.w.s     $f2, $f2
/* 03E680 8003EAD0 44070000 */  mfc1        $a3, $f0
/* 03E684 8003EAD4 A4A00026 */  sh          $zero, 0x26($a1)
/* 03E688 8003EAD8 A8A70000 */  swl         $a3, 0x0($a1)
/* 03E68C 8003EADC A4A70020 */  sh          $a3, 0x20($a1)
/* 03E690 8003EAE0 46002124 */  cvt.w.s     $f4, $f4
/* 03E694 8003EAE4 44081000 */  mfc1        $t0, $f2
/* 03E698 8003EAE8 8C87000C */  lw          $a3, 0xc($a0)
/* 03E69C 8003EAEC A8A80002 */  swl         $t0, 0x2($a1)
/* 03E6A0 8003EAF0 A4A80022 */  sh          $t0, 0x22($a1)
/* 03E6A4 8003EAF4 8C880010 */  lw          $t0, 0x10($a0)
/* 03E6A8 8003EAF8 44092000 */  mfc1        $t1, $f4
/* 03E6AC 8003EAFC 00E63820 */  add         $a3, $a3, $a2
/* 03E6B0 8003EB00 A8A90004 */  swl         $t1, 0x4($a1)
/* 03E6B4 8003EB04 A8A00006 */  swl         $zero, 0x6($a1)
/* 03E6B8 8003EB08 A4A90024 */  sh          $t1, 0x24($a1)
/* 03E6BC 8003EB0C 44870000 */  mtc1        $a3, $f0
/* 03E6C0 8003EB10 8C890014 */  lw          $t1, 0x14($a0)
/* 03E6C4 8003EB14 46000024 */  cvt.w.s     $f0, $f0
/* 03E6C8 8003EB18 01064020 */  add         $t0, $t0, $a2
/* 03E6CC 8003EB1C 01264820 */  add         $t1, $t1, $a2
/* 03E6D0 8003EB20 44881000 */  mtc1        $t0, $f2
/* 03E6D4 8003EB24 44892000 */  mtc1        $t1, $f4
/* 03E6D8 8003EB28 460010A4 */  cvt.w.s     $f2, $f2
/* 03E6DC 8003EB2C 44070000 */  mfc1        $a3, $f0
/* 03E6E0 8003EB30 A4A0002E */  sh          $zero, 0x2e($a1)
/* 03E6E4 8003EB34 A8A70008 */  swl         $a3, 0x8($a1)
/* 03E6E8 8003EB38 A4A70028 */  sh          $a3, 0x28($a1)
/* 03E6EC 8003EB3C 46002124 */  cvt.w.s     $f4, $f4
/* 03E6F0 8003EB40 44081000 */  mfc1        $t0, $f2
/* 03E6F4 8003EB44 8C870018 */  lw          $a3, 0x18($a0)
/* 03E6F8 8003EB48 A8A8000A */  swl         $t0, 0xa($a1)
/* 03E6FC 8003EB4C A4A8002A */  sh          $t0, 0x2a($a1)
/* 03E700 8003EB50 8C88001C */  lw          $t0, 0x1c($a0)
/* 03E704 8003EB54 44092000 */  mfc1        $t1, $f4
/* 03E708 8003EB58 00E63820 */  add         $a3, $a3, $a2
/* 03E70C 8003EB5C A8A9000C */  swl         $t1, 0xc($a1)
/* 03E710 8003EB60 A8A0000E */  swl         $zero, 0xe($a1)
/* 03E714 8003EB64 A4A9002C */  sh          $t1, 0x2c($a1)
/* 03E718 8003EB68 44870000 */  mtc1        $a3, $f0
/* 03E71C 8003EB6C 8C890020 */  lw          $t1, 0x20($a0)
/* 03E720 8003EB70 46000024 */  cvt.w.s     $f0, $f0
/* 03E724 8003EB74 01064020 */  add         $t0, $t0, $a2
/* 03E728 8003EB78 01264820 */  add         $t1, $t1, $a2
/* 03E72C 8003EB7C 44881000 */  mtc1        $t0, $f2
/* 03E730 8003EB80 44892000 */  mtc1        $t1, $f4
/* 03E734 8003EB84 460010A4 */  cvt.w.s     $f2, $f2
/* 03E738 8003EB88 44070000 */  mfc1        $a3, $f0
/* 03E73C 8003EB8C A4A00036 */  sh          $zero, 0x36($a1)
/* 03E740 8003EB90 A8A70010 */  swl         $a3, 0x10($a1)
/* 03E744 8003EB94 A4A70030 */  sh          $a3, 0x30($a1)
/* 03E748 8003EB98 46002124 */  cvt.w.s     $f4, $f4
/* 03E74C 8003EB9C 44081000 */  mfc1        $t0, $f2
/* 03E750 8003EBA0 8C870024 */  lw          $a3, 0x24($a0)
/* 03E754 8003EBA4 A8A80012 */  swl         $t0, 0x12($a1)
/* 03E758 8003EBA8 A4A80032 */  sh          $t0, 0x32($a1)
/* 03E75C 8003EBAC 8C880028 */  lw          $t0, 0x28($a0)
/* 03E760 8003EBB0 44092000 */  mfc1        $t1, $f4
/* 03E764 8003EBB4 00E63820 */  add         $a3, $a3, $a2
/* 03E768 8003EBB8 A8A90014 */  swl         $t1, 0x14($a1)
/* 03E76C 8003EBBC A8A00016 */  swl         $zero, 0x16($a1)
/* 03E770 8003EBC0 A4A90034 */  sh          $t1, 0x34($a1)
/* 03E774 8003EBC4 44870000 */  mtc1        $a3, $f0
/* 03E778 8003EBC8 8C89002C */  lw          $t1, 0x2c($a0)
/* 03E77C 8003EBCC 46000024 */  cvt.w.s     $f0, $f0
/* 03E780 8003EBD0 01064020 */  add         $t0, $t0, $a2
/* 03E784 8003EBD4 01264820 */  add         $t1, $t1, $a2
/* 03E788 8003EBD8 44881000 */  mtc1        $t0, $f2
/* 03E78C 8003EBDC 44892000 */  mtc1        $t1, $f4
/* 03E790 8003EBE0 460010A4 */  cvt.w.s     $f2, $f2
/* 03E794 8003EBE4 44070000 */  mfc1        $a3, $f0
/* 03E798 8003EBE8 A4A0003E */  sh          $zero, 0x3e($a1)
/* 03E79C 8003EBEC A8A70018 */  swl         $a3, 0x18($a1)
/* 03E7A0 8003EBF0 A4A70038 */  sh          $a3, 0x38($a1)
/* 03E7A4 8003EBF4 46002124 */  cvt.w.s     $f4, $f4
/* 03E7A8 8003EBF8 44081000 */  mfc1        $t0, $f2
/* 03E7AC 8003EBFC 200A0001 */  addi        $t2, $zero, 0x1
/* 03E7B0 8003EC00 A8A8001A */  swl         $t0, 0x1a($a1)
/* 03E7B4 8003EC04 44092000 */  mfc1        $t1, $f4
/* 03E7B8 8003EC08 A4A8003A */  sh          $t0, 0x3a($a1)
/* 03E7BC 8003EC0C A8A9001C */  swl         $t1, 0x1c($a1)
/* 03E7C0 8003EC10 A4AA001E */  sh          $t2, 0x1e($a1)
/* 03E7C4 8003EC14 03E00008 */  jr          $ra
/* 03E7C8 8003EC18 A4A9003C */   sh         $t1, 0x3c($a1)
/* 03E7CC 8003EC1C 00000000 */  nop
