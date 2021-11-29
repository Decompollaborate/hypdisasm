.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004AF10 # 0
/* 04AAC0 8004AF10 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 04AAC4 8004AF14 3C0E0B00 */  lui         $t6, (0xB000020 >> 16)
/* 04AAC8 8004AF18 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04AACC 8004AF1C AFA5002C */  sw          $a1, 0x2c($sp)
/* 04AAD0 8004AF20 35CE0020 */  ori         $t6, $t6, (0xB000020 & 0xFFFF)
/* 04AAD4 8004AF24 00803825 */  move        $a3, $a0
/* 04AAD8 8004AF28 ACCE0000 */  sw          $t6, 0x0($a2)
/* 04AADC 8004AF2C AFA70028 */  sw          $a3, 0x28($sp)
/* 04AAE0 8004AF30 AFA60030 */  sw          $a2, 0x30($sp)
/* 04AAE4 8004AF34 0C0140F4 */  jal         osVirtualToPhysical
/* 04AAE8 8004AF38 24840008 */   addiu      $a0, $a0, 0x8
/* 04AAEC 8004AF3C 8FA60030 */  lw          $a2, 0x30($sp)
/* 04AAF0 8004AF40 8FA70028 */  lw          $a3, 0x28($sp)
/* 04AAF4 8004AF44 3C010E00 */  lui         $at, 0xe00
/* 04AAF8 8004AF48 24C30008 */  addiu       $v1, $a2, 0x8
/* 04AAFC 8004AF4C 246F0008 */  addiu       $t7, $v1, 0x8
/* 04AB00 8004AF50 ACC20004 */  sw          $v0, 0x4($a2)
/* 04AB04 8004AF54 AFAF0024 */  sw          $t7, 0x24($sp)
/* 04AB08 8004AF58 8CF8002C */  lw          $t8, 0x2c($a3)
/* 04AB0C 8004AF5C 84EA0002 */  lh          $t2, 0x2($a3)
/* 04AB10 8004AF60 331900FF */  andi        $t9, $t8, 0xff
/* 04AB14 8004AF64 00194400 */  sll         $t0, $t9, 16
/* 04AB18 8004AF68 01014825 */  or          $t1, $t0, $at
/* 04AB1C 8004AF6C 314BFFFF */  andi        $t3, $t2, 0xffff
/* 04AB20 8004AF70 012B6025 */  or          $t4, $t1, $t3
/* 04AB24 8004AF74 AC6C0000 */  sw          $t4, 0x0($v1)
/* 04AB28 8004AF78 8CE40028 */  lw          $a0, 0x28($a3)
/* 04AB2C 8004AF7C 0C0140F4 */  jal         osVirtualToPhysical
/* 04AB30 8004AF80 AFA30018 */   sw         $v1, 0x18($sp)
/* 04AB34 8004AF84 8FAE002C */  lw          $t6, 0x2c($sp)
/* 04AB38 8004AF88 3C0100FF */  lui         $at, (0xFFFFFF >> 16)
/* 04AB3C 8004AF8C 8FA50018 */  lw          $a1, 0x18($sp)
/* 04AB40 8004AF90 3421FFFF */  ori         $at, $at, (0xFFFFFF & 0xFFFF)
/* 04AB44 8004AF94 000E4203 */  sra         $t0, $t6, 8
/* 04AB48 8004AF98 8FA70028 */  lw          $a3, 0x28($sp)
/* 04AB4C 8004AF9C 00085600 */  sll         $t2, $t0, 24
/* 04AB50 8004AFA0 00416824 */  and         $t5, $v0, $at
/* 04AB54 8004AFA4 01AA4825 */  or          $t1, $t5, $t2
/* 04AB58 8004AFA8 ACA90004 */  sw          $t1, 0x4($a1)
/* 04AB5C 8004AFAC ACE0002C */  sw          $zero, 0x2c($a3)
/* 04AB60 8004AFB0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 04AB64 8004AFB4 8FA20024 */  lw          $v0, 0x24($sp)
/* 04AB68 8004AFB8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 04AB6C 8004AFBC 03E00008 */  jr          $ra
/* 04AB70 8004AFC0 00000000 */   nop

glabel func_8004AFC4 # 1
/* 04AB74 8004AFC4 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 04AB78 8004AFC8 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04AB7C 8004AFCC AFB00018 */  sw          $s0, 0x18($sp)
/* 04AB80 8004AFD0 8C89001C */  lw          $t1, 0x1c($a0)
/* 04AB84 8004AFD4 8C820014 */  lw          $v0, 0x14($a0)
/* 04AB88 8004AFD8 00804025 */  move        $t0, $a0
/* 04AB8C 8004AFDC 00097040 */  sll         $t6, $t1, 1
/* 04AB90 8004AFE0 00A2082B */  sltu        $at, $a1, $v0
/* 04AB94 8004AFE4 00C05825 */  move        $t3, $a2
/* 04AB98 8004AFE8 10200002 */  beqz        $at, .L8004AFF4
/* 04AB9C 8004AFEC 004E1821 */   addu       $v1, $v0, $t6
/* 04ABA0 8004AFF0 00AE2821 */  addu        $a1, $a1, $t6
.L8004AFF4:
/* 04ABA4 8004AFF4 24A60170 */  addiu       $a2, $a1, 0x170
/* 04ABA8 8004AFF8 0066082B */  sltu        $at, $v1, $a2
/* 04ABAC 8004AFFC 1020002E */  beqz        $at, .L8004B0B8
/* 04ABB0 8004B000 24F00008 */   addiu      $s0, $a3, 0x8
/* 04ABB4 8004B004 00655023 */  subu        $t2, $v1, $a1
/* 04ABB8 8004B008 000A7843 */  sra         $t7, $t2, 1
/* 04ABBC 8004B00C 000FC040 */  sll         $t8, $t7, 1
/* 04ABC0 8004B010 33190FFF */  andi        $t9, $t8, 0xfff
/* 04ABC4 8004B014 00196300 */  sll         $t4, $t9, 12
/* 04ABC8 8004B018 3C010600 */  lui         $at, 0x600
/* 04ABCC 8004B01C 01816825 */  or          $t5, $t4, $at
/* 04ABD0 8004B020 316E0FFF */  andi        $t6, $t3, 0xfff
/* 04ABD4 8004B024 01AE7825 */  or          $t7, $t5, $t6
/* 04ABD8 8004B028 ACEF0000 */  sw          $t7, 0x0($a3)
/* 04ABDC 8004B02C AFAB0050 */  sw          $t3, 0x50($sp)
/* 04ABE0 8004B030 AFB80020 */  sw          $t8, 0x20($sp)
/* 04ABE4 8004B034 AFA70030 */  sw          $a3, 0x30($sp)
/* 04ABE8 8004B038 AFA80048 */  sw          $t0, 0x48($sp)
/* 04ABEC 8004B03C AFA60024 */  sw          $a2, 0x24($sp)
/* 04ABF0 8004B040 AFA30034 */  sw          $v1, 0x34($sp)
/* 04ABF4 8004B044 24F00008 */  addiu       $s0, $a3, 0x8
/* 04ABF8 8004B048 0C0140F4 */  jal         osVirtualToPhysical
/* 04ABFC 8004B04C 00A02025 */   move       $a0, $a1
/* 04AC00 8004B050 8FA30034 */  lw          $v1, 0x34($sp)
/* 04AC04 8004B054 8FA60024 */  lw          $a2, 0x24($sp)
/* 04AC08 8004B058 8FAA0020 */  lw          $t2, 0x20($sp)
/* 04AC0C 8004B05C 8FAB0050 */  lw          $t3, 0x50($sp)
/* 04AC10 8004B060 00C3C023 */  subu        $t8, $a2, $v1
/* 04AC14 8004B064 0018C843 */  sra         $t9, $t8, 1
/* 04AC18 8004B068 00196040 */  sll         $t4, $t9, 1
/* 04AC1C 8004B06C 8FA90030 */  lw          $t1, 0x30($sp)
/* 04AC20 8004B070 318D0FFF */  andi        $t5, $t4, 0xfff
/* 04AC24 8004B074 8FA80048 */  lw          $t0, 0x48($sp)
/* 04AC28 8004B078 000D7300 */  sll         $t6, $t5, 12
/* 04AC2C 8004B07C 3C010600 */  lui         $at, 0x600
/* 04AC30 8004B080 016AC021 */  addu        $t8, $t3, $t2
/* 04AC34 8004B084 33190FFF */  andi        $t9, $t8, 0xfff
/* 04AC38 8004B088 01C17825 */  or          $t7, $t6, $at
/* 04AC3C 8004B08C 01F96025 */  or          $t4, $t7, $t9
/* 04AC40 8004B090 02002825 */  move        $a1, $s0
/* 04AC44 8004B094 AD220004 */  sw          $v0, 0x4($t1)
/* 04AC48 8004B098 ACAC0000 */  sw          $t4, 0x0($a1)
/* 04AC4C 8004B09C 8D040014 */  lw          $a0, 0x14($t0)
/* 04AC50 8004B0A0 AFA5002C */  sw          $a1, 0x2c($sp)
/* 04AC54 8004B0A4 0C0140F4 */  jal         osVirtualToPhysical
/* 04AC58 8004B0A8 26100008 */   addiu      $s0, $s0, 0x8
/* 04AC5C 8004B0AC 8FA5002C */  lw          $a1, 0x2c($sp)
/* 04AC60 8004B0B0 1000000A */  b           .L8004B0DC
/* 04AC64 8004B0B4 ACA20004 */   sw         $v0, 0x4($a1)
.L8004B0B8:
/* 04AC68 8004B0B8 316D0FFF */  andi        $t5, $t3, 0xfff
/* 04AC6C 8004B0BC 3C010617 */  lui         $at, 0x617
/* 04AC70 8004B0C0 01A17025 */  or          $t6, $t5, $at
/* 04AC74 8004B0C4 ACEE0000 */  sw          $t6, 0x0($a3)
/* 04AC78 8004B0C8 AFA70028 */  sw          $a3, 0x28($sp)
/* 04AC7C 8004B0CC 0C0140F4 */  jal         osVirtualToPhysical
/* 04AC80 8004B0D0 00A02025 */   move       $a0, $a1
/* 04AC84 8004B0D4 8FA30028 */  lw          $v1, 0x28($sp)
/* 04AC88 8004B0D8 AC620004 */  sw          $v0, 0x4($v1)
.L8004B0DC:
/* 04AC8C 8004B0DC 8FBF001C */  lw          $ra, 0x1c($sp)
/* 04AC90 8004B0E0 02001025 */  move        $v0, $s0
/* 04AC94 8004B0E4 8FB00018 */  lw          $s0, 0x18($sp)
/* 04AC98 8004B0E8 03E00008 */  jr          $ra
/* 04AC9C 8004B0EC 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_8004B0F0 # 2
/* 04ACA0 8004B0F0 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 04ACA4 8004B0F4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04ACA8 8004B0F8 AFB00018 */  sw          $s0, 0x18($sp)
/* 04ACAC 8004B0FC 8C89001C */  lw          $t1, 0x1c($a0)
/* 04ACB0 8004B100 8C820014 */  lw          $v0, 0x14($a0)
/* 04ACB4 8004B104 00804025 */  move        $t0, $a0
/* 04ACB8 8004B108 00097040 */  sll         $t6, $t1, 1
/* 04ACBC 8004B10C 00A2082B */  sltu        $at, $a1, $v0
/* 04ACC0 8004B110 00C05825 */  move        $t3, $a2
/* 04ACC4 8004B114 10200002 */  beqz        $at, .L8004B120
/* 04ACC8 8004B118 004E1821 */   addu       $v1, $v0, $t6
/* 04ACCC 8004B11C 00AE2821 */  addu        $a1, $a1, $t6
.L8004B120:
/* 04ACD0 8004B120 00071040 */  sll         $v0, $a3, 1
/* 04ACD4 8004B124 00453021 */  addu        $a2, $v0, $a1
/* 04ACD8 8004B128 0066082B */  sltu        $at, $v1, $a2
/* 04ACDC 8004B12C 1020002F */  beqz        $at, .L8004B1EC
/* 04ACE0 8004B130 8FAA0058 */   lw         $t2, 0x58($sp)
/* 04ACE4 8004B134 00654823 */  subu        $t1, $v1, $a1
/* 04ACE8 8004B138 00097843 */  sra         $t7, $t1, 1
/* 04ACEC 8004B13C 000FC040 */  sll         $t8, $t7, 1
/* 04ACF0 8004B140 33190FFF */  andi        $t9, $t8, 0xfff
/* 04ACF4 8004B144 8FAA0058 */  lw          $t2, 0x58($sp)
/* 04ACF8 8004B148 00196300 */  sll         $t4, $t9, 12
/* 04ACFC 8004B14C 3C010400 */  lui         $at, 0x400
/* 04AD00 8004B150 01816825 */  or          $t5, $t4, $at
/* 04AD04 8004B154 316E0FFF */  andi        $t6, $t3, 0xfff
/* 04AD08 8004B158 01AE7825 */  or          $t7, $t5, $t6
/* 04AD0C 8004B15C AD4F0000 */  sw          $t7, 0x0($t2)
/* 04AD10 8004B160 AFAB0050 */  sw          $t3, 0x50($sp)
/* 04AD14 8004B164 AFB80024 */  sw          $t8, 0x24($sp)
/* 04AD18 8004B168 AFA80048 */  sw          $t0, 0x48($sp)
/* 04AD1C 8004B16C AFA60020 */  sw          $a2, 0x20($sp)
/* 04AD20 8004B170 AFA30034 */  sw          $v1, 0x34($sp)
/* 04AD24 8004B174 00A02025 */  move        $a0, $a1
/* 04AD28 8004B178 AFAA0030 */  sw          $t2, 0x30($sp)
/* 04AD2C 8004B17C 0C0140F4 */  jal         osVirtualToPhysical
/* 04AD30 8004B180 25500008 */   addiu      $s0, $t2, 0x8
/* 04AD34 8004B184 8FA30034 */  lw          $v1, 0x34($sp)
/* 04AD38 8004B188 8FA60020 */  lw          $a2, 0x20($sp)
/* 04AD3C 8004B18C 8FA90024 */  lw          $t1, 0x24($sp)
/* 04AD40 8004B190 8FAB0050 */  lw          $t3, 0x50($sp)
/* 04AD44 8004B194 00C3C023 */  subu        $t8, $a2, $v1
/* 04AD48 8004B198 0018C843 */  sra         $t9, $t8, 1
/* 04AD4C 8004B19C 00196040 */  sll         $t4, $t9, 1
/* 04AD50 8004B1A0 8FA70030 */  lw          $a3, 0x30($sp)
/* 04AD54 8004B1A4 318D0FFF */  andi        $t5, $t4, 0xfff
/* 04AD58 8004B1A8 8FA80048 */  lw          $t0, 0x48($sp)
/* 04AD5C 8004B1AC 000D7300 */  sll         $t6, $t5, 12
/* 04AD60 8004B1B0 3C010400 */  lui         $at, 0x400
/* 04AD64 8004B1B4 0169C021 */  addu        $t8, $t3, $t1
/* 04AD68 8004B1B8 33190FFF */  andi        $t9, $t8, 0xfff
/* 04AD6C 8004B1BC 01C17825 */  or          $t7, $t6, $at
/* 04AD70 8004B1C0 01F96025 */  or          $t4, $t7, $t9
/* 04AD74 8004B1C4 02002825 */  move        $a1, $s0
/* 04AD78 8004B1C8 ACE20004 */  sw          $v0, 0x4($a3)
/* 04AD7C 8004B1CC ACAC0000 */  sw          $t4, 0x0($a1)
/* 04AD80 8004B1D0 8D040014 */  lw          $a0, 0x14($t0)
/* 04AD84 8004B1D4 AFA5002C */  sw          $a1, 0x2c($sp)
/* 04AD88 8004B1D8 0C0140F4 */  jal         osVirtualToPhysical
/* 04AD8C 8004B1DC 26100008 */   addiu      $s0, $s0, 0x8
/* 04AD90 8004B1E0 8FA5002C */  lw          $a1, 0x2c($sp)
/* 04AD94 8004B1E4 1000000E */  b           .L8004B220
/* 04AD98 8004B1E8 ACA20004 */   sw         $v0, 0x4($a1)
.L8004B1EC:
/* 04AD9C 8004B1EC 304D0FFF */  andi        $t5, $v0, 0xfff
/* 04ADA0 8004B1F0 000D7300 */  sll         $t6, $t5, 12
/* 04ADA4 8004B1F4 3C010400 */  lui         $at, 0x400
/* 04ADA8 8004B1F8 01C1C025 */  or          $t8, $t6, $at
/* 04ADAC 8004B1FC 316F0FFF */  andi        $t7, $t3, 0xfff
/* 04ADB0 8004B200 030FC825 */  or          $t9, $t8, $t7
/* 04ADB4 8004B204 AD590000 */  sw          $t9, 0x0($t2)
/* 04ADB8 8004B208 AFAA0028 */  sw          $t2, 0x28($sp)
/* 04ADBC 8004B20C 25500008 */  addiu       $s0, $t2, 0x8
/* 04ADC0 8004B210 0C0140F4 */  jal         osVirtualToPhysical
/* 04ADC4 8004B214 00A02025 */   move       $a0, $a1
/* 04ADC8 8004B218 8FA30028 */  lw          $v1, 0x28($sp)
/* 04ADCC 8004B21C AC620004 */  sw          $v0, 0x4($v1)
.L8004B220:
/* 04ADD0 8004B220 8FBF001C */  lw          $ra, 0x1c($sp)
/* 04ADD4 8004B224 02001025 */  move        $v0, $s0
/* 04ADD8 8004B228 8FB00018 */  lw          $s0, 0x18($sp)
/* 04ADDC 8004B22C 03E00008 */  jr          $ra
/* 04ADE0 8004B230 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_8004B234 # 3
/* 04ADE4 8004B234 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 04ADE8 8004B238 AFBF0024 */  sw          $ra, 0x24($sp)
/* 04ADEC 8004B23C AFB00020 */  sw          $s0, 0x20($sp)
/* 04ADF0 8004B240 AFA60070 */  sw          $a2, 0x70($sp)
/* 04ADF4 8004B244 8CAE0024 */  lw          $t6, 0x24($a1)
/* 04ADF8 8004B248 00A08025 */  move        $s0, $a1
/* 04ADFC 8004B24C 00805025 */  move        $t2, $a0
/* 04AE00 8004B250 11C0006F */  beqz        $t6, .L8004B410
/* 04AE04 8004B254 00E05825 */   move       $t3, $a3
/* 04AE08 8004B258 8CAF0004 */  lw          $t7, 0x4($a1)
/* 04AE0C 8004B25C 8CB80000 */  lw          $t8, 0x0($a1)
/* 04AE10 8004B260 00A02025 */  move        $a0, $a1
/* 04AE14 8004B264 240500B8 */  addiu       $a1, $zero, 0xb8
/* 04AE18 8004B268 01F8C823 */  subu        $t9, $t7, $t8
/* 04AE1C 8004B26C AFB90040 */  sw          $t9, 0x40($sp)
/* 04AE20 8004B270 AFA70074 */  sw          $a3, 0x74($sp)
/* 04AE24 8004B274 0C014DA4 */  jal         func_80053690
/* 04AE28 8004B278 AFAA0068 */   sw         $t2, 0x68($sp)
/* 04AE2C 8004B27C 8FAD0040 */  lw          $t5, 0x40($sp)
/* 04AE30 8004B280 3C014700 */  lui         $at, 0x4700
/* 04AE34 8004B284 44817000 */  mtc1        $at, $f14
/* 04AE38 8004B288 448D3000 */  mtc1        $t5, $f6
/* 04AE3C 8004B28C 3C013FF0 */  lui         $at, 0x3ff0
/* 04AE40 8004B290 44812800 */  mtc1        $at, $f5
/* 04AE44 8004B294 46803220 */  cvt.s.w     $f8, $f6
/* 04AE48 8004B298 44802000 */  mtc1        $zero, $f4
/* 04AE4C 8004B29C 241800B8 */  addiu       $t8, $zero, 0xb8
/* 04AE50 8004B2A0 8FA40068 */  lw          $a0, 0x68($sp)
/* 04AE54 8004B2A4 8FAB0074 */  lw          $t3, 0x74($sp)
/* 04AE58 8004B2A8 240602E0 */  addiu       $a2, $zero, 0x2e0
/* 04AE5C 8004B2AC 46080283 */  div.s       $f10, $f0, $f8
/* 04AE60 8004B2B0 460E5402 */  mul.s       $f16, $f10, $f14
/* 04AE64 8004B2B4 4600848D */  trunc.w.s   $f18, $f16
/* 04AE68 8004B2B8 440F9000 */  mfc1        $t7, $f18
/* 04AE6C 8004B2BC 00000000 */  nop
/* 04AE70 8004B2C0 448F3000 */  mtc1        $t7, $f6
/* 04AE74 8004B2C4 00000000 */  nop
/* 04AE78 8004B2C8 46803220 */  cvt.s.w     $f8, $f6
/* 04AE7C 8004B2CC 460E4283 */  div.s       $f10, $f8, $f14
/* 04AE80 8004B2D0 44984000 */  mtc1        $t8, $f8
/* 04AE84 8004B2D4 46005421 */  cvt.d.s     $f16, $f10
/* 04AE88 8004B2D8 468042A0 */  cvt.s.w     $f10, $f8
/* 04AE8C 8004B2DC 46302481 */  sub.d       $f18, $f4, $f16
/* 04AE90 8004B2E0 462090A0 */  cvt.s.d     $f2, $f18
/* 04AE94 8004B2E4 460A1102 */  mul.s       $f4, $f2, $f10
/* 04AE98 8004B2E8 E7A2004C */  swc1        $f2, 0x4c($sp)
/* 04AE9C 8004B2EC 8E020024 */  lw          $v0, 0x24($s0)
/* 04AEA0 8004B2F0 C4460020 */  lwc1        $f6, 0x20($v0)
/* 04AEA4 8004B2F4 46043300 */  add.s       $f12, $f6, $f4
/* 04AEA8 8004B2F8 4600640D */  trunc.w.s   $f16, $f12
/* 04AEAC 8004B2FC 44098000 */  mfc1        $t1, $f16
/* 04AEB0 8004B300 00000000 */  nop
/* 04AEB4 8004B304 44899000 */  mtc1        $t1, $f18
/* 04AEB8 8004B308 00000000 */  nop
/* 04AEBC 8004B30C 46809220 */  cvt.s.w     $f8, $f18
/* 04AEC0 8004B310 46086281 */  sub.s       $f10, $f12, $f8
/* 04AEC4 8004B314 E44A0020 */  swc1        $f10, 0x20($v0)
/* 04AEC8 8004B318 8E0E0018 */  lw          $t6, 0x18($s0)
/* 04AECC 8004B31C 8E0D0004 */  lw          $t5, 0x4($s0)
/* 04AED0 8004B320 01AE7823 */  subu        $t7, $t5, $t6
/* 04AED4 8004B324 8C8D0018 */  lw          $t5, 0x18($a0)
/* 04AED8 8004B328 000FC023 */  negu        $t8, $t7
/* 04AEDC 8004B32C 0018C840 */  sll         $t9, $t8, 1
/* 04AEE0 8004B330 01B94021 */  addu        $t0, $t5, $t9
/* 04AEE4 8004B334 31030007 */  andi        $v1, $t0, 0x7
/* 04AEE8 8004B338 00037043 */  sra         $t6, $v1, 1
/* 04AEEC 8004B33C 000E6040 */  sll         $t4, $t6, 1
/* 04AEF0 8004B340 010C2823 */  subu        $a1, $t0, $t4
/* 04AEF4 8004B344 AFAC002C */  sw          $t4, 0x2c($sp)
/* 04AEF8 8004B348 01C01825 */  move        $v1, $t6
/* 04AEFC 8004B34C AFAB0010 */  sw          $t3, 0x10($sp)
/* 04AF00 8004B350 012E3821 */  addu        $a3, $t1, $t6
/* 04AF04 8004B354 0C012C3C */  jal         func_8004B0F0
/* 04AF08 8004B358 AFA90030 */   sw         $t1, 0x30($sp)
/* 04AF0C 8004B35C 8E0F0024 */  lw          $t7, 0x24($s0)
/* 04AF10 8004B360 24430008 */  addiu       $v1, $v0, 0x8
/* 04AF14 8004B364 8DE40014 */  lw          $a0, 0x14($t7)
/* 04AF18 8004B368 AFA20034 */  sw          $v0, 0x34($sp)
/* 04AF1C 8004B36C 0C0140F4 */  jal         osVirtualToPhysical
/* 04AF20 8004B370 AFA30064 */   sw         $v1, 0x64($sp)
/* 04AF24 8004B374 3C0100FF */  lui         $at, (0xFFFFFF >> 16)
/* 04AF28 8004B378 3421FFFF */  ori         $at, $at, (0xFFFFFF & 0xFFFF)
/* 04AF2C 8004B37C 0041C024 */  and         $t8, $v0, $at
/* 04AF30 8004B380 8FA50034 */  lw          $a1, 0x34($sp)
/* 04AF34 8004B384 3C010500 */  lui         $at, 0x500
/* 04AF38 8004B388 03016825 */  or          $t5, $t8, $at
/* 04AF3C 8004B38C 8FA90030 */  lw          $t1, 0x30($sp)
/* 04AF40 8004B390 8FA30064 */  lw          $v1, 0x64($sp)
/* 04AF44 8004B394 3C014700 */  lui         $at, 0x4700
/* 04AF48 8004B398 ACAD0000 */  sw          $t5, 0x0($a1)
/* 04AF4C 8004B39C C7A6004C */  lwc1        $f6, 0x4c($sp)
/* 04AF50 8004B3A0 44812000 */  mtc1        $at, $f4
/* 04AF54 8004B3A4 8E0D0024 */  lw          $t5, 0x24($s0)
/* 04AF58 8004B3A8 8FB9002C */  lw          $t9, 0x2c($sp)
/* 04AF5C 8004B3AC 46043402 */  mul.s       $f16, $f6, $f4
/* 04AF60 8004B3B0 4600848D */  trunc.w.s   $f18, $f16
/* 04AF64 8004B3B4 440E9000 */  mfc1        $t6, $f18
/* 04AF68 8004B3B8 00000000 */  nop
/* 04AF6C 8004B3BC 31CFFFFF */  andi        $t7, $t6, 0xffff
/* 04AF70 8004B3C0 8DAE0024 */  lw          $t6, 0x24($t5)
/* 04AF74 8004B3C4 000FC380 */  sll         $t8, $t7, 14
/* 04AF78 8004B3C8 000E7F80 */  sll         $t7, $t6, 30
/* 04AF7C 8004B3CC 01F86825 */  or          $t5, $t7, $t8
/* 04AF80 8004B3D0 272E02E0 */  addiu       $t6, $t9, 0x2e0
/* 04AF84 8004B3D4 31CF0FFF */  andi        $t7, $t6, 0xfff
/* 04AF88 8004B3D8 8FAE0070 */  lw          $t6, 0x70($sp)
/* 04AF8C 8004B3DC 000FC080 */  sll         $t8, $t7, 2
/* 04AF90 8004B3E0 01B8C825 */  or          $t9, $t5, $t8
/* 04AF94 8004B3E4 000EC203 */  sra         $t8, $t6, 8
/* 04AF98 8004B3E8 330E0003 */  andi        $t6, $t8, 0x3
/* 04AF9C 8004B3EC 032E7825 */  or          $t7, $t9, $t6
/* 04AFA0 8004B3F0 ACAF0004 */  sw          $t7, 0x4($a1)
/* 04AFA4 8004B3F4 8E0D0024 */  lw          $t5, 0x24($s0)
/* 04AFA8 8004B3F8 ADA00024 */  sw          $zero, 0x24($t5)
/* 04AFAC 8004B3FC 8E180018 */  lw          $t8, 0x18($s0)
/* 04AFB0 8004B400 0309C821 */  addu        $t9, $t8, $t1
/* 04AFB4 8004B404 272EFF48 */  addiu       $t6, $t9, -0xb8
/* 04AFB8 8004B408 1000000C */  b           .L8004B43C
/* 04AFBC 8004B40C AE0E0018 */   sw         $t6, 0x18($s0)
.L8004B410:
/* 04AFC0 8004B410 8E0D0004 */  lw          $t5, 0x4($s0)
/* 04AFC4 8004B414 8D4F0018 */  lw          $t7, 0x18($t2)
/* 04AFC8 8004B418 AFAB0010 */  sw          $t3, 0x10($sp)
/* 04AFCC 8004B41C 000DC023 */  negu        $t8, $t5
/* 04AFD0 8004B420 0018C840 */  sll         $t9, $t8, 1
/* 04AFD4 8004B424 01402025 */  move        $a0, $t2
/* 04AFD8 8004B428 8FA60070 */  lw          $a2, 0x70($sp)
/* 04AFDC 8004B42C 240700B8 */  addiu       $a3, $zero, 0xb8
/* 04AFE0 8004B430 0C012C3C */  jal         func_8004B0F0
/* 04AFE4 8004B434 01F92821 */   addu       $a1, $t7, $t9
/* 04AFE8 8004B438 00401825 */  move        $v1, $v0
.L8004B43C:
/* 04AFEC 8004B43C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 04AFF0 8004B440 8FB00020 */  lw          $s0, 0x20($sp)
/* 04AFF4 8004B444 27BD0068 */  addiu       $sp, $sp, 0x68
/* 04AFF8 8004B448 03E00008 */  jr          $ra
/* 04AFFC 8004B44C 00601025 */   move       $v0, $v1

glabel func_8004B450 # 4
/* 04B000 8004B450 24A3FFFE */  addiu       $v1, $a1, -0x2
/* 04B004 8004B454 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04B008 8004B458 306E0007 */  andi        $t6, $v1, 0x7
/* 04B00C 8004B45C AFBF0014 */  sw          $ra, 0x14($sp)
/* 04B010 8004B460 2DC10008 */  sltiu       $at, $t6, 0x8
/* 04B014 8004B464 00803825 */  move        $a3, $a0
/* 04B018 8004B468 1020008B */  beqz        $at, .L8004B698
/* 04B01C 8004B46C 8CC80000 */   lw         $t0, 0x0($a2)
/* 04B020 8004B470 000E7080 */  sll         $t6, $t6, 2
/* 04B024 8004B474 3C01800B */  lui         $at, %hi(jtbl_800AC8D0)
/* 04B028 8004B478 002E0821 */  addu        $at, $at, $t6
/* 04B02C 8004B47C 8C2EC8D0 */  lw          $t6, %lo(jtbl_800AC8D0)($at)
/* 04B030 8004B480 01C00008 */  jr          $t6
/* 04B034 8004B484 00000000 */   nop
glabel L8004B488
/* 04B038 8004B488 2401FFF8 */  addiu       $at, $zero, -0x8
/* 04B03C 8004B48C 01017824 */  and         $t7, $t0, $at
/* 04B040 8004B490 8CF80020 */  lw          $t8, 0x20($a3)
/* 04B044 8004B494 04610003 */  bgez        $v1, .L8004B4A4
/* 04B048 8004B498 0003C8C3 */   sra        $t9, $v1, 3
/* 04B04C 8004B49C 24610007 */  addiu       $at, $v1, 0x7
/* 04B050 8004B4A0 0001C8C3 */  sra         $t9, $at, 3
.L8004B4A4:
/* 04B054 8004B4A4 00194880 */  sll         $t1, $t9, 2
/* 04B058 8004B4A8 01394821 */  addu        $t1, $t1, $t9
/* 04B05C 8004B4AC 000948C0 */  sll         $t1, $t1, 3
/* 04B060 8004B4B0 03095021 */  addu        $t2, $t8, $t1
/* 04B064 8004B4B4 10000078 */  b           .L8004B698
/* 04B068 8004B4B8 AD4F0000 */   sw         $t7, 0x0($t2)
glabel L8004B4BC
/* 04B06C 8004B4BC 2401FFF8 */  addiu       $at, $zero, -0x8
/* 04B070 8004B4C0 01015824 */  and         $t3, $t0, $at
/* 04B074 8004B4C4 8CEC0020 */  lw          $t4, 0x20($a3)
/* 04B078 8004B4C8 04610003 */  bgez        $v1, .L8004B4D8
/* 04B07C 8004B4CC 000368C3 */   sra        $t5, $v1, 3
/* 04B080 8004B4D0 24610007 */  addiu       $at, $v1, 0x7
/* 04B084 8004B4D4 000168C3 */  sra         $t5, $at, 3
.L8004B4D8:
/* 04B088 8004B4D8 000D7080 */  sll         $t6, $t5, 2
/* 04B08C 8004B4DC 01CD7021 */  addu        $t6, $t6, $t5
/* 04B090 8004B4E0 000E70C0 */  sll         $t6, $t6, 3
/* 04B094 8004B4E4 018EC821 */  addu        $t9, $t4, $t6
/* 04B098 8004B4E8 1000006B */  b           .L8004B698
/* 04B09C 8004B4EC AF2B0004 */   sw         $t3, 0x4($t9)
glabel L8004B4F0
/* 04B0A0 8004B4F0 8CF80020 */  lw          $t8, 0x20($a3)
/* 04B0A4 8004B4F4 04610003 */  bgez        $v1, .L8004B504
/* 04B0A8 8004B4F8 000348C3 */   sra        $t1, $v1, 3
/* 04B0AC 8004B4FC 24610007 */  addiu       $at, $v1, 0x7
/* 04B0B0 8004B500 000148C3 */  sra         $t1, $at, 3
.L8004B504:
/* 04B0B4 8004B504 00097880 */  sll         $t7, $t1, 2
/* 04B0B8 8004B508 01E97821 */  addu        $t7, $t7, $t1
/* 04B0BC 8004B50C 000F78C0 */  sll         $t7, $t7, 3
/* 04B0C0 8004B510 030F5021 */  addu        $t2, $t8, $t7
/* 04B0C4 8004B514 10000060 */  b           .L8004B698
/* 04B0C8 8004B518 A5480008 */   sh         $t0, 0x8($t2)
glabel L8004B51C
/* 04B0CC 8004B51C 8CED0020 */  lw          $t5, 0x20($a3)
/* 04B0D0 8004B520 04610003 */  bgez        $v1, .L8004B530
/* 04B0D4 8004B524 000360C3 */   sra        $t4, $v1, 3
/* 04B0D8 8004B528 24610007 */  addiu       $at, $v1, 0x7
/* 04B0DC 8004B52C 000160C3 */  sra         $t4, $at, 3
.L8004B530:
/* 04B0E0 8004B530 000C7080 */  sll         $t6, $t4, 2
/* 04B0E4 8004B534 01CC7021 */  addu        $t6, $t6, $t4
/* 04B0E8 8004B538 000E70C0 */  sll         $t6, $t6, 3
/* 04B0EC 8004B53C 01AE5821 */  addu        $t3, $t5, $t6
/* 04B0F0 8004B540 10000055 */  b           .L8004B698
/* 04B0F4 8004B544 A568000A */   sh         $t0, 0xa($t3)
glabel L8004B548
/* 04B0F8 8004B548 8CF90020 */  lw          $t9, 0x20($a3)
/* 04B0FC 8004B54C 04610003 */  bgez        $v1, .L8004B55C
/* 04B100 8004B550 000348C3 */   sra        $t1, $v1, 3
/* 04B104 8004B554 24610007 */  addiu       $at, $v1, 0x7
/* 04B108 8004B558 000148C3 */  sra         $t1, $at, 3
.L8004B55C:
/* 04B10C 8004B55C 0009C080 */  sll         $t8, $t1, 2
/* 04B110 8004B560 0309C021 */  addu        $t8, $t8, $t1
/* 04B114 8004B564 0018C0C0 */  sll         $t8, $t8, 3
/* 04B118 8004B568 03387821 */  addu        $t7, $t9, $t8
/* 04B11C 8004B56C 1000004A */  b           .L8004B698
/* 04B120 8004B570 A5E8000C */   sh         $t0, 0xc($t7)
glabel L8004B574
/* 04B124 8004B574 44882000 */  mtc1        $t0, $f4
/* 04B128 8004B578 3C01447A */  lui         $at, 0x447a
/* 04B12C 8004B57C 44814000 */  mtc1        $at, $f8
/* 04B130 8004B580 468021A0 */  cvt.s.w     $f6, $f4
/* 04B134 8004B584 3C0A800A */  lui         $t2, %hi(D_800A2E64)
/* 04B138 8004B588 8D4A2E64 */  lw          $t2, %lo(D_800A2E64)($t2)
/* 04B13C 8004B58C 8CED0020 */  lw          $t5, 0x20($a3)
/* 04B140 8004B590 8D4C004C */  lw          $t4, 0x4c($t2)
/* 04B144 8004B594 46083283 */  div.s       $f10, $f6, $f8
/* 04B148 8004B598 448C9000 */  mtc1        $t4, $f18
/* 04B14C 8004B59C 00000000 */  nop
/* 04B150 8004B5A0 46809121 */  cvt.d.w     $f4, $f18
/* 04B154 8004B5A4 46005021 */  cvt.d.s     $f0, $f10
/* 04B158 8004B5A8 46200400 */  add.d       $f16, $f0, $f0
/* 04B15C 8004B5AC 46248183 */  div.d       $f6, $f16, $f4
/* 04B160 8004B5B0 46203220 */  cvt.s.d     $f8, $f6
/* 04B164 8004B5B4 04610003 */  bgez        $v1, .L8004B5C4
/* 04B168 8004B5B8 000370C3 */   sra        $t6, $v1, 3
/* 04B16C 8004B5BC 24610007 */  addiu       $at, $v1, 0x7
/* 04B170 8004B5C0 000170C3 */  sra         $t6, $at, 3
.L8004B5C4:
/* 04B174 8004B5C4 000E5880 */  sll         $t3, $t6, 2
/* 04B178 8004B5C8 016E5821 */  addu        $t3, $t3, $t6
/* 04B17C 8004B5CC 000B58C0 */  sll         $t3, $t3, 3
/* 04B180 8004B5D0 01AB4821 */  addu        $t1, $t5, $t3
/* 04B184 8004B5D4 10000030 */  b           .L8004B698
/* 04B188 8004B5D8 E5280010 */   swc1       $f8, 0x10($t1)
glabel L8004B5DC
/* 04B18C 8004B5DC 8CF90020 */  lw          $t9, 0x20($a3)
/* 04B190 8004B5E0 04610003 */  bgez        $v1, .L8004B5F0
/* 04B194 8004B5E4 0003C0C3 */   sra        $t8, $v1, 3
/* 04B198 8004B5E8 24610007 */  addiu       $at, $v1, 0x7
/* 04B19C 8004B5EC 0001C0C3 */  sra         $t8, $at, 3
.L8004B5F0:
/* 04B1A0 8004B5F0 00187880 */  sll         $t7, $t8, 2
/* 04B1A4 8004B5F4 01F87821 */  addu        $t7, $t7, $t8
/* 04B1A8 8004B5F8 000F78C0 */  sll         $t7, $t7, 3
/* 04B1AC 8004B5FC 032F1021 */  addu        $v0, $t9, $t7
/* 04B1B0 8004B600 8C4A0004 */  lw          $t2, 0x4($v0)
/* 04B1B4 8004B604 8C4C0000 */  lw          $t4, 0x0($v0)
/* 04B1B8 8004B608 44882000 */  mtc1        $t0, $f4
/* 04B1BC 8004B60C 3C0141F0 */  lui         $at, 0x41f0
/* 04B1C0 8004B610 014C7023 */  subu        $t6, $t2, $t4
/* 04B1C4 8004B614 448E5000 */  mtc1        $t6, $f10
/* 04B1C8 8004B618 468021A0 */  cvt.s.w     $f6, $f4
/* 04B1CC 8004B61C 05C10005 */  bgez        $t6, .L8004B634
/* 04B1D0 8004B620 468054A1 */   cvt.d.w    $f18, $f10
/* 04B1D4 8004B624 44818800 */  mtc1        $at, $f17
/* 04B1D8 8004B628 44808000 */  mtc1        $zero, $f16
/* 04B1DC 8004B62C 00000000 */  nop
/* 04B1E0 8004B630 46309480 */  add.d       $f18, $f18, $f16
.L8004B634:
/* 04B1E4 8004B634 3C01800B */  lui         $at, %hi(D_800AC8F0)
/* 04B1E8 8004B638 D42AC8F0 */  ldc1        $f10, %lo(D_800AC8F0)($at)
/* 04B1EC 8004B63C 46003221 */  cvt.d.s     $f8, $f6
/* 04B1F0 8004B640 462A4403 */  div.d       $f16, $f8, $f10
/* 04B1F4 8004B644 46309102 */  mul.d       $f4, $f18, $f16
/* 04B1F8 8004B648 462021A0 */  cvt.s.d     $f6, $f4
/* 04B1FC 8004B64C 10000012 */  b           .L8004B698
/* 04B200 8004B650 E446001C */   swc1       $f6, 0x1c($v0)
glabel L8004B654
/* 04B204 8004B654 04610003 */  bgez        $v1, .L8004B664
/* 04B208 8004B658 000310C3 */   sra        $v0, $v1, 3
/* 04B20C 8004B65C 24610007 */  addiu       $at, $v1, 0x7
/* 04B210 8004B660 000110C3 */  sra         $v0, $at, 3
.L8004B664:
/* 04B214 8004B664 8CEB0020 */  lw          $t3, 0x20($a3)
/* 04B218 8004B668 00026880 */  sll         $t5, $v0, 2
/* 04B21C 8004B66C 01A26821 */  addu        $t5, $t5, $v0
/* 04B220 8004B670 000D68C0 */  sll         $t5, $t5, 3
/* 04B224 8004B674 016D4821 */  addu        $t1, $t3, $t5
/* 04B228 8004B678 8D250020 */  lw          $a1, 0x20($t1)
/* 04B22C 8004B67C 50A00007 */  beql        $a1, $zero, .L8004B69C
/* 04B230 8004B680 8FBF0014 */   lw         $ra, 0x14($sp)
/* 04B234 8004B684 A4A80000 */  sh          $t0, 0x0($a1)
/* 04B238 8004B688 8CF80020 */  lw          $t8, 0x20($a3)
/* 04B23C 8004B68C 030DC821 */  addu        $t9, $t8, $t5
/* 04B240 8004B690 0C014C6C */  jal         func_800531B0
/* 04B244 8004B694 8F240020 */   lw         $a0, 0x20($t9)
.L8004B698:
/* 04B248 8004B698 8FBF0014 */  lw          $ra, 0x14($sp)
.L8004B69C:
/* 04B24C 8004B69C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 04B250 8004B6A0 00001025 */  move        $v0, $zero
/* 04B254 8004B6A4 03E00008 */  jr          $ra
/* 04B258 8004B6A8 00000000 */   nop

glabel func_8004B6AC # 5
/* 04B25C 8004B6AC 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 04B260 8004B6B0 3C0E800A */  lui         $t6, %hi(D_800A2E64)
/* 04B264 8004B6B4 8DCE2E64 */  lw          $t6, %lo(D_800A2E64)($t6)
/* 04B268 8004B6B8 AFBF0044 */  sw          $ra, 0x44($sp)
/* 04B26C 8004B6BC AFBE0040 */  sw          $fp, 0x40($sp)
/* 04B270 8004B6C0 AFB7003C */  sw          $s7, 0x3c($sp)
/* 04B274 8004B6C4 AFB60038 */  sw          $s6, 0x38($sp)
/* 04B278 8004B6C8 AFB50034 */  sw          $s5, 0x34($sp)
/* 04B27C 8004B6CC AFB40030 */  sw          $s4, 0x30($sp)
/* 04B280 8004B6D0 AFB3002C */  sw          $s3, 0x2c($sp)
/* 04B284 8004B6D4 AFB20028 */  sw          $s2, 0x28($sp)
/* 04B288 8004B6D8 AFB10024 */  sw          $s1, 0x24($sp)
/* 04B28C 8004B6DC AFB00020 */  sw          $s0, 0x20($sp)
/* 04B290 8004B6E0 8DCF0040 */  lw          $t7, 0x40($t6)
/* 04B294 8004B6E4 8DF30020 */  lw          $s3, 0x20($t7)
/* 04B298 8004B6E8 0C012E68 */  jal         func_8004B9A0
/* 04B29C 8004B6EC AFA0004C */   sw         $zero, 0x4c($sp)
/* 04B2A0 8004B6F0 3C180C00 */  lui         $t8, (0xC00DA83 >> 16)
/* 04B2A4 8004B6F4 3C1907C0 */  lui         $t9, (0x7C007C0 >> 16)
/* 04B2A8 8004B6F8 3C080C00 */  lui         $t0, (0xC005A82 >> 16)
/* 04B2AC 8004B6FC 3C090930 */  lui         $t1, (0x93007C0 >> 16)
/* 04B2B0 8004B700 373907C0 */  ori         $t9, $t9, (0x7C007C0 & 0xFFFF)
/* 04B2B4 8004B704 3718DA83 */  ori         $t8, $t8, (0xC00DA83 & 0xFFFF)
/* 04B2B8 8004B708 352907C0 */  ori         $t1, $t1, (0x93007C0 & 0xFFFF)
/* 04B2BC 8004B70C 35085A82 */  ori         $t0, $t0, (0xC005A82 & 0xFFFF)
/* 04B2C0 8004B710 AC580000 */  sw          $t8, 0x0($v0)
/* 04B2C4 8004B714 AC590004 */  sw          $t9, 0x4($v0)
/* 04B2C8 8004B718 AC480008 */  sw          $t0, 0x8($v0)
/* 04B2CC 8004B71C AC49000C */  sw          $t1, 0xc($v0)
/* 04B2D0 8004B720 0000A825 */  move        $s5, $zero
/* 04B2D4 8004B724 24120170 */  addiu       $s2, $zero, 0x170
/* 04B2D8 8004B728 8E650018 */  lw          $a1, 0x18($s3)
/* 04B2DC 8004B72C 02602025 */  move        $a0, $s3
/* 04B2E0 8004B730 240607C0 */  addiu       $a2, $zero, 0x7c0
/* 04B2E4 8004B734 0C012BF1 */  jal         func_8004AFC4
/* 04B2E8 8004B738 24470010 */   addiu      $a3, $v0, 0x10
/* 04B2EC 8004B73C 8FA3004C */  lw          $v1, 0x4c($sp)
/* 04B2F0 8004B740 3C0A0200 */  lui         $t2, (0x2000930 >> 16)
/* 04B2F4 8004B744 354A0930 */  ori         $t2, $t2, (0x2000930 & 0xFFFF)
/* 04B2F8 8004B748 240B0170 */  addiu       $t3, $zero, 0x170
/* 04B2FC 8004B74C AC4B0004 */  sw          $t3, 0x4($v0)
/* 04B300 8004B750 AC4A0000 */  sw          $t2, 0x0($v0)
/* 04B304 8004B754 926C0024 */  lbu         $t4, 0x24($s3)
/* 04B308 8004B758 24500008 */  addiu       $s0, $v0, 0x8
/* 04B30C 8004B75C 0000B025 */  move        $s6, $zero
/* 04B310 8004B760 1980006D */  blez        $t4, .L8004B918
/* 04B314 8004B764 3C1E0C00 */   lui        $fp, 0xc00
/* 04B318 8004B768 8E620018 */  lw          $v0, 0x18($s3)
.L8004B76C:
/* 04B31C 8004B76C 8E6D0020 */  lw          $t5, 0x20($s3)
/* 04B320 8004B770 00167080 */  sll         $t6, $s6, 2
/* 04B324 8004B774 01D67021 */  addu        $t6, $t6, $s6
/* 04B328 8004B778 000E70C0 */  sll         $t6, $t6, 3
/* 04B32C 8004B77C 01AE8821 */  addu        $s1, $t5, $t6
/* 04B330 8004B780 8E2F0000 */  lw          $t7, 0x0($s1)
/* 04B334 8004B784 8E280004 */  lw          $t0, 0x4($s1)
/* 04B338 8004B788 02602025 */  move        $a0, $s3
/* 04B33C 8004B78C 000FC023 */  negu        $t8, $t7
/* 04B340 8004B790 0018C840 */  sll         $t9, $t8, 1
/* 04B344 8004B794 00084823 */  negu        $t1, $t0
/* 04B348 8004B798 0059A021 */  addu        $s4, $v0, $t9
/* 04B34C 8004B79C 00095040 */  sll         $t2, $t1, 1
/* 04B350 8004B7A0 16830009 */  bne         $s4, $v1, .L8004B7C8
/* 04B354 8004B7A4 004AB821 */   addu       $s7, $v0, $t2
/* 04B358 8004B7A8 02405825 */  move        $t3, $s2
/* 04B35C 8004B7AC 00159400 */  sll         $s2, $s5, 16
/* 04B360 8004B7B0 000BAC00 */  sll         $s5, $t3, 16
/* 04B364 8004B7B4 00156C03 */  sra         $t5, $s5, 16
/* 04B368 8004B7B8 00126403 */  sra         $t4, $s2, 16
/* 04B36C 8004B7BC 01809025 */  move        $s2, $t4
/* 04B370 8004B7C0 10000007 */  b           .L8004B7E0
/* 04B374 8004B7C4 01A0A825 */   move       $s5, $t5
.L8004B7C8:
/* 04B378 8004B7C8 02802825 */  move        $a1, $s4
/* 04B37C 8004B7CC 02A03025 */  move        $a2, $s5
/* 04B380 8004B7D0 240700B8 */  addiu       $a3, $zero, 0xb8
/* 04B384 8004B7D4 0C012C3C */  jal         func_8004B0F0
/* 04B388 8004B7D8 AFB00010 */   sw         $s0, 0x10($sp)
/* 04B38C 8004B7DC 00408025 */  move        $s0, $v0
.L8004B7E0:
/* 04B390 8004B7E0 02602025 */  move        $a0, $s3
/* 04B394 8004B7E4 02202825 */  move        $a1, $s1
/* 04B398 8004B7E8 02403025 */  move        $a2, $s2
/* 04B39C 8004B7EC 0C012C8D */  jal         func_8004B234
/* 04B3A0 8004B7F0 02003825 */   move       $a3, $s0
/* 04B3A4 8004B7F4 86240008 */  lh          $a0, 0x8($s1)
/* 04B3A8 8004B7F8 00408025 */  move        $s0, $v0
/* 04B3AC 8004B7FC 00154400 */  sll         $t0, $s5, 16
/* 04B3B0 8004B800 10800012 */  beqz        $a0, .L8004B84C
/* 04B3B4 8004B804 308FFFFF */   andi       $t7, $a0, 0xffff
/* 04B3B8 8004B808 3249FFFF */  andi        $t1, $s2, 0xffff
/* 04B3BC 8004B80C 01095025 */  or          $t2, $t0, $t1
/* 04B3C0 8004B810 01FEC025 */  or          $t8, $t7, $fp
/* 04B3C4 8004B814 AC580000 */  sw          $t8, 0x0($v0)
/* 04B3C8 8004B818 AC4A0004 */  sw          $t2, 0x4($v0)
/* 04B3CC 8004B81C 8E2B0024 */  lw          $t3, 0x24($s1)
/* 04B3D0 8004B820 24500008 */  addiu       $s0, $v0, 0x8
/* 04B3D4 8004B824 5560000A */  bnel        $t3, $zero, .L8004B850
/* 04B3D8 8004B828 8623000A */   lh         $v1, 0xa($s1)
/* 04B3DC 8004B82C 8E2C0020 */  lw          $t4, 0x20($s1)
/* 04B3E0 8004B830 02602025 */  move        $a0, $s3
/* 04B3E4 8004B834 02E02825 */  move        $a1, $s7
/* 04B3E8 8004B838 15800004 */  bnez        $t4, .L8004B84C
/* 04B3EC 8004B83C 02403025 */   move       $a2, $s2
/* 04B3F0 8004B840 0C012BF1 */  jal         func_8004AFC4
/* 04B3F4 8004B844 02003825 */   move       $a3, $s0
/* 04B3F8 8004B848 00408025 */  move        $s0, $v0
.L8004B84C:
/* 04B3FC 8004B84C 8623000A */  lh          $v1, 0xa($s1)
.L8004B850:
/* 04B400 8004B850 02001025 */  move        $v0, $s0
/* 04B404 8004B854 26070008 */  addiu       $a3, $s0, 0x8
/* 04B408 8004B858 1060000C */  beqz        $v1, .L8004B88C
/* 04B40C 8004B85C 306EFFFF */   andi       $t6, $v1, 0xffff
/* 04B410 8004B860 0012CC00 */  sll         $t9, $s2, 16
/* 04B414 8004B864 32A8FFFF */  andi        $t0, $s5, 0xffff
/* 04B418 8004B868 03284825 */  or          $t1, $t9, $t0
/* 04B41C 8004B86C 01DE7825 */  or          $t7, $t6, $fp
/* 04B420 8004B870 AC4F0000 */  sw          $t7, 0x0($v0)
/* 04B424 8004B874 AC490004 */  sw          $t1, 0x4($v0)
/* 04B428 8004B878 02602025 */  move        $a0, $s3
/* 04B42C 8004B87C 02802825 */  move        $a1, $s4
/* 04B430 8004B880 0C012BF1 */  jal         func_8004AFC4
/* 04B434 8004B884 02A03025 */   move       $a2, $s5
/* 04B438 8004B888 00408025 */  move        $s0, $v0
.L8004B88C:
/* 04B43C 8004B88C 8E240020 */  lw          $a0, 0x20($s1)
/* 04B440 8004B890 02402825 */  move        $a1, $s2
/* 04B444 8004B894 50800005 */  beql        $a0, $zero, .L8004B8AC
/* 04B448 8004B898 8E2A0024 */   lw         $t2, 0x24($s1)
/* 04B44C 8004B89C 0C012BC4 */  jal         func_8004AF10
/* 04B450 8004B8A0 02003025 */   move       $a2, $s0
/* 04B454 8004B8A4 00408025 */  move        $s0, $v0
/* 04B458 8004B8A8 8E2A0024 */  lw          $t2, 0x24($s1)
.L8004B8AC:
/* 04B45C 8004B8AC 02602025 */  move        $a0, $s3
/* 04B460 8004B8B0 02E02825 */  move        $a1, $s7
/* 04B464 8004B8B4 15400004 */  bnez        $t2, .L8004B8C8
/* 04B468 8004B8B8 02403025 */   move       $a2, $s2
/* 04B46C 8004B8BC 0C012BF1 */  jal         func_8004AFC4
/* 04B470 8004B8C0 02003825 */   move       $a3, $s0
/* 04B474 8004B8C4 00408025 */  move        $s0, $v0
.L8004B8C8:
/* 04B478 8004B8C8 8623000C */  lh          $v1, 0xc($s1)
/* 04B47C 8004B8CC 26D60001 */  addiu       $s6, $s6, 0x1
/* 04B480 8004B8D0 00164C00 */  sll         $t1, $s6, 16
/* 04B484 8004B8D4 10600009 */  beqz        $v1, .L8004B8FC
/* 04B488 8004B8D8 0009B403 */   sra        $s6, $t1, 16
/* 04B48C 8004B8DC 02001025 */  move        $v0, $s0
/* 04B490 8004B8E0 306CFFFF */  andi        $t4, $v1, 0xffff
/* 04B494 8004B8E4 00127C00 */  sll         $t7, $s2, 16
/* 04B498 8004B8E8 35F80930 */  ori         $t8, $t7, 0x930
/* 04B49C 8004B8EC 019E6825 */  or          $t5, $t4, $fp
/* 04B4A0 8004B8F0 AC4D0000 */  sw          $t5, 0x0($v0)
/* 04B4A4 8004B8F4 AC580004 */  sw          $t8, 0x4($v0)
/* 04B4A8 8004B8F8 26100008 */  addiu       $s0, $s0, 0x8
.L8004B8FC:
/* 04B4AC 8004B8FC 926B0024 */  lbu         $t3, 0x24($s3)
/* 04B4B0 8004B900 8E390004 */  lw          $t9, 0x4($s1)
/* 04B4B4 8004B904 8E620018 */  lw          $v0, 0x18($s3)
/* 04B4B8 8004B908 02CB082A */  slt         $at, $s6, $t3
/* 04B4BC 8004B90C 00194040 */  sll         $t0, $t9, 1
/* 04B4C0 8004B910 1420FF96 */  bnez        $at, .L8004B76C
/* 04B4C4 8004B914 00481821 */   addu       $v1, $v0, $t0
.L8004B918:
/* 04B4C8 8004B918 8E63001C */  lw          $v1, 0x1c($s3)
/* 04B4CC 8004B91C 8E6C0018 */  lw          $t4, 0x18($s3)
/* 04B4D0 8004B920 8E6F0014 */  lw          $t7, 0x14($s3)
/* 04B4D4 8004B924 00037040 */  sll         $t6, $v1, 1
/* 04B4D8 8004B928 258D0170 */  addiu       $t5, $t4, 0x170
/* 04B4DC 8004B92C 01EEC021 */  addu        $t8, $t7, $t6
/* 04B4E0 8004B930 030D082B */  sltu        $at, $t8, $t5
/* 04B4E4 8004B934 10200003 */  beqz        $at, .L8004B944
/* 04B4E8 8004B938 AE6D0018 */   sw         $t5, 0x18($s3)
/* 04B4EC 8004B93C 01AEC823 */  subu        $t9, $t5, $t6
/* 04B4F0 8004B940 AE790018 */  sw          $t9, 0x18($s3)
.L8004B944:
/* 04B4F4 8004B944 02001825 */  move        $v1, $s0
/* 04B4F8 8004B948 3C080A00 */  lui         $t0, (0xA000930 >> 16)
/* 04B4FC 8004B94C 3C0907C0 */  lui         $t1, (0x7C00170 >> 16)
/* 04B500 8004B950 35290170 */  ori         $t1, $t1, (0x7C00170 & 0xFFFF)
/* 04B504 8004B954 35080930 */  ori         $t0, $t0, (0xA000930 & 0xFFFF)
/* 04B508 8004B958 AC680000 */  sw          $t0, 0x0($v1)
/* 04B50C 8004B95C AC690004 */  sw          $t1, 0x4($v1)
/* 04B510 8004B960 8FBF0044 */  lw          $ra, 0x44($sp)
/* 04B514 8004B964 26020008 */  addiu       $v0, $s0, 0x8
/* 04B518 8004B968 8FB00020 */  lw          $s0, 0x20($sp)
/* 04B51C 8004B96C 8FBE0040 */  lw          $fp, 0x40($sp)
/* 04B520 8004B970 8FB7003C */  lw          $s7, 0x3c($sp)
/* 04B524 8004B974 8FB60038 */  lw          $s6, 0x38($sp)
/* 04B528 8004B978 8FB50034 */  lw          $s5, 0x34($sp)
/* 04B52C 8004B97C 8FB40030 */  lw          $s4, 0x30($sp)
/* 04B530 8004B980 8FB3002C */  lw          $s3, 0x2c($sp)
/* 04B534 8004B984 8FB20028 */  lw          $s2, 0x28($sp)
/* 04B538 8004B988 8FB10024 */  lw          $s1, 0x24($sp)
/* 04B53C 8004B98C 03E00008 */  jr          $ra
/* 04B540 8004B990 27BD0070 */   addiu      $sp, $sp, 0x70
/* 04B544 8004B994 00000000 */  nop
/* 04B548 8004B998 00000000 */  nop
/* 04B54C 8004B99C 00000000 */  nop
