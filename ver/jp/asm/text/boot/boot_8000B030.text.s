.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8000B030 # 0
/* 00ABE0 8000B030 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00ABE4 8000B034 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00ABE8 8000B038 C48C0020 */  lwc1        $f12, 0x20($a0)
/* 00ABEC 8000B03C C48E0014 */  lwc1        $f14, 0x14($a0)
/* 00ABF0 8000B040 3C01800A */  lui         $at, %hi(D_800A5D90)
/* 00ABF4 8000B044 460C6102 */  mul.s       $f4, $f12, $f12
/* 00ABF8 8000B048 C4285D90 */  lwc1        $f8, %lo(D_800A5D90)($at)
/* 00ABFC 8000B04C 3C01800A */  lui         $at, %hi(D_800A5D94)
/* 00AC00 8000B050 460E7182 */  mul.s       $f6, $f14, $f14
/* 00AC04 8000B054 46062000 */  add.s       $f0, $f4, $f6
/* 00AC08 8000B058 46000004 */  sqrt.s      $f0, $f0
/* 00AC0C 8000B05C 4608003C */  c.lt.s      $f0, $f8
/* 00AC10 8000B060 46000086 */  mov.s       $f2, $f0
/* 00AC14 8000B064 4502000A */  bc1fl       .L8000B090
/* 00AC18 8000B068 46026303 */   div.s      $f12, $f12, $f2
/* 00AC1C 8000B06C C42A5D94 */  lwc1        $f10, %lo(D_800A5D94)($at)
/* 00AC20 8000B070 4600503C */  c.lt.s      $f10, $f0
/* 00AC24 8000B074 00000000 */  nop
/* 00AC28 8000B078 45020005 */  bc1fl       .L8000B090
/* 00AC2C 8000B07C 46026303 */   div.s      $f12, $f12, $f2
/* 00AC30 8000B080 44800000 */  mtc1        $zero, $f0
/* 00AC34 8000B084 10000005 */  b           .L8000B09C
/* 00AC38 8000B088 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00AC3C 8000B08C 46026303 */  div.s       $f12, $f12, $f2
.L8000B090:
/* 00AC40 8000B090 0C00E6FE */  jal         func_80039BF8
/* 00AC44 8000B094 46027383 */   div.s      $f14, $f14, $f2
/* 00AC48 8000B098 8FBF0014 */  lw          $ra, 0x14($sp)
.L8000B09C:
/* 00AC4C 8000B09C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00AC50 8000B0A0 03E00008 */  jr          $ra
/* 00AC54 8000B0A4 00000000 */   nop

glabel func_8000B0A8 # 1
/* 00AC58 8000B0A8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00AC5C 8000B0AC AFBF0014 */  sw          $ra, 0x14($sp)
/* 00AC60 8000B0B0 C4820004 */  lwc1        $f2, 0x4($a0)
/* 00AC64 8000B0B4 C48C0000 */  lwc1        $f12, 0x0($a0)
/* 00AC68 8000B0B8 C48E0008 */  lwc1        $f14, 0x8($a0)
/* 00AC6C 8000B0BC 46021102 */  mul.s       $f4, $f2, $f2
/* 00AC70 8000B0C0 44804000 */  mtc1        $zero, $f8
/* 00AC74 8000B0C4 46007387 */  neg.s       $f14, $f14
/* 00AC78 8000B0C8 460C6182 */  mul.s       $f6, $f12, $f12
/* 00AC7C 8000B0CC 46062000 */  add.s       $f0, $f4, $f6
/* 00AC80 8000B0D0 46000004 */  sqrt.s      $f0, $f0
/* 00AC84 8000B0D4 E7A00018 */  swc1        $f0, 0x18($sp)
/* 00AC88 8000B0D8 C48A0020 */  lwc1        $f10, 0x20($a0)
/* 00AC8C 8000B0DC 4608503E */  c.le.s      $f10, $f8
/* 00AC90 8000B0E0 00000000 */  nop
/* 00AC94 8000B0E4 45000003 */  bc1f        .L8000B0F4
/* 00AC98 8000B0E8 00000000 */   nop
/* 00AC9C 8000B0EC 46000407 */  neg.s       $f16, $f0
/* 00ACA0 8000B0F0 E7B00018 */  swc1        $f16, 0x18($sp)
.L8000B0F4:
/* 00ACA4 8000B0F4 0C00E6FE */  jal         func_80039BF8
/* 00ACA8 8000B0F8 C7AC0018 */   lwc1       $f12, 0x18($sp)
/* 00ACAC 8000B0FC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00ACB0 8000B100 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00ACB4 8000B104 03E00008 */  jr          $ra
/* 00ACB8 8000B108 00000000 */   nop

glabel func_8000B10C # 2
/* 00ACBC 8000B10C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00ACC0 8000B110 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00ACC4 8000B114 C48C0000 */  lwc1        $f12, 0x0($a0)
/* 00ACC8 8000B118 C48E0004 */  lwc1        $f14, 0x4($a0)
/* 00ACCC 8000B11C 3C01800A */  lui         $at, %hi(D_800A5D98)
/* 00ACD0 8000B120 460C6102 */  mul.s       $f4, $f12, $f12
/* 00ACD4 8000B124 C4285D98 */  lwc1        $f8, %lo(D_800A5D98)($at)
/* 00ACD8 8000B128 3C01800A */  lui         $at, %hi(D_800A5D9C)
/* 00ACDC 8000B12C 460E7182 */  mul.s       $f6, $f14, $f14
/* 00ACE0 8000B130 46062000 */  add.s       $f0, $f4, $f6
/* 00ACE4 8000B134 46000004 */  sqrt.s      $f0, $f0
/* 00ACE8 8000B138 4608003C */  c.lt.s      $f0, $f8
/* 00ACEC 8000B13C 46000086 */  mov.s       $f2, $f0
/* 00ACF0 8000B140 4502000A */  bc1fl       .L8000B16C
/* 00ACF4 8000B144 46026303 */   div.s      $f12, $f12, $f2
/* 00ACF8 8000B148 C42A5D9C */  lwc1        $f10, %lo(D_800A5D9C)($at)
/* 00ACFC 8000B14C 4600503C */  c.lt.s      $f10, $f0
/* 00AD00 8000B150 00000000 */  nop
/* 00AD04 8000B154 45020005 */  bc1fl       .L8000B16C
/* 00AD08 8000B158 46026303 */   div.s      $f12, $f12, $f2
/* 00AD0C 8000B15C 44800000 */  mtc1        $zero, $f0
/* 00AD10 8000B160 10000005 */  b           .L8000B178
/* 00AD14 8000B164 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00AD18 8000B168 46026303 */  div.s       $f12, $f12, $f2
.L8000B16C:
/* 00AD1C 8000B16C 0C00E6FE */  jal         func_80039BF8
/* 00AD20 8000B170 46027383 */   div.s      $f14, $f14, $f2
/* 00AD24 8000B174 8FBF0014 */  lw          $ra, 0x14($sp)
.L8000B178:
/* 00AD28 8000B178 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00AD2C 8000B17C 03E00008 */  jr          $ra
/* 00AD30 8000B180 00000000 */   nop

glabel func_8000B184 # 3
/* 00AD34 8000B184 27BDFF60 */  addiu       $sp, $sp, -0xa0
/* 00AD38 8000B188 27AE00A8 */  addiu       $t6, $sp, 0xa8
/* 00AD3C 8000B18C AFBF004C */  sw          $ra, 0x4c($sp)
/* 00AD40 8000B190 AFA400A0 */  sw          $a0, 0xa0($sp)
/* 00AD44 8000B194 AFA600A8 */  sw          $a2, 0xa8($sp)
/* 00AD48 8000B198 AFA700AC */  sw          $a3, 0xac($sp)
/* 00AD4C 8000B19C 25D8003C */  addiu       $t8, $t6, 0x3c
/* 00AD50 8000B1A0 03A0C825 */  move        $t9, $sp
.L8000B1A4:
/* 00AD54 8000B1A4 8DC10000 */  lw          $at, 0x0($t6)
/* 00AD58 8000B1A8 25CE000C */  addiu       $t6, $t6, 0xc
/* 00AD5C 8000B1AC 2739000C */  addiu       $t9, $t9, 0xc
/* 00AD60 8000B1B0 AF21FFF4 */  sw          $at, -0xc($t9)
/* 00AD64 8000B1B4 8DC1FFF8 */  lw          $at, -0x8($t6)
/* 00AD68 8000B1B8 AF21FFF8 */  sw          $at, -0x8($t9)
/* 00AD6C 8000B1BC 8DC1FFFC */  lw          $at, -0x4($t6)
/* 00AD70 8000B1C0 15D8FFF8 */  bne         $t6, $t8, .L8000B1A4
/* 00AD74 8000B1C4 AF21FFFC */   sw         $at, -0x4($t9)
/* 00AD78 8000B1C8 8DC10000 */  lw          $at, 0x0($t6)
/* 00AD7C 8000B1CC 27A8005C */  addiu       $t0, $sp, 0x5c
/* 00AD80 8000B1D0 AF210000 */  sw          $at, 0x0($t9)
/* 00AD84 8000B1D4 8FA7000C */  lw          $a3, 0xc($sp)
/* 00AD88 8000B1D8 8FA60008 */  lw          $a2, 0x8($sp)
/* 00AD8C 8000B1DC 8FA50004 */  lw          $a1, 0x4($sp)
/* 00AD90 8000B1E0 8FA40000 */  lw          $a0, 0x0($sp)
/* 00AD94 8000B1E4 0C00E181 */  jal         func_80038604
/* 00AD98 8000B1E8 AFA80040 */   sw         $t0, 0x40($sp)
/* 00AD9C 8000B1EC 27A4005C */  addiu       $a0, $sp, 0x5c
/* 00ADA0 8000B1F0 8FA500A0 */  lw          $a1, 0xa0($sp)
/* 00ADA4 8000B1F4 0C00F620 */  jal         func_8003D880
/* 00ADA8 8000B1F8 27A6008C */   addiu      $a2, $sp, 0x8c
/* 00ADAC 8000B1FC 0C00E3AC */  jal         func_80038EB0
/* 00ADB0 8000B200 27A4008C */   addiu      $a0, $sp, 0x8c
/* 00ADB4 8000B204 C7A4008C */  lwc1        $f4, 0x8c($sp)
/* 00ADB8 8000B208 3C014300 */  lui         $at, 0x4300
/* 00ADBC 8000B20C 44814000 */  mtc1        $at, $f8
/* 00ADC0 8000B210 46002183 */  div.s       $f6, $f4, $f0
/* 00ADC4 8000B214 46000086 */  mov.s       $f2, $f0
/* 00ADC8 8000B218 C7AC00F0 */  lwc1        $f12, 0xf0($sp)
/* 00ADCC 8000B21C 8FA600F4 */  lw          $a2, 0xf4($sp)
/* 00ADD0 8000B220 3C0742A0 */  lui         $a3, 0x42a0
/* 00ADD4 8000B224 46083282 */  mul.s       $f10, $f6, $f8
/* 00ADD8 8000B228 4600540D */  trunc.w.s   $f16, $f10
/* 00ADDC 8000B22C 44038000 */  mfc1        $v1, $f16
/* 00ADE0 8000B230 00000000 */  nop
/* 00ADE4 8000B234 2861FF80 */  slti        $at, $v1, -0x80
/* 00ADE8 8000B238 10200003 */  beqz        $at, .L8000B248
/* 00ADEC 8000B23C 00601025 */   move       $v0, $v1
/* 00ADF0 8000B240 10000005 */  b           .L8000B258
/* 00ADF4 8000B244 2402FF80 */   addiu      $v0, $zero, -0x80
.L8000B248:
/* 00ADF8 8000B248 28610080 */  slti        $at, $v1, 0x80
/* 00ADFC 8000B24C 54200003 */  bnel        $at, $zero, .L8000B25C
/* 00AE00 8000B250 3C014380 */   lui        $at, 0x4380
/* 00AE04 8000B254 2402007F */  addiu       $v0, $zero, 0x7f
.L8000B258:
/* 00AE08 8000B258 3C014380 */  lui         $at, 0x4380
.L8000B25C:
/* 00AE0C 8000B25C 24420080 */  addiu       $v0, $v0, 0x80
/* 00AE10 8000B260 44817000 */  mtc1        $at, $f14
/* 00AE14 8000B264 AFA2009C */  sw          $v0, 0x9c($sp)
/* 00AE18 8000B268 0C00E4BD */  jal         func_800392F4
/* 00AE1C 8000B26C E7A20010 */   swc1       $f2, 0x10($sp)
/* 00AE20 8000B270 4600048D */  trunc.w.s   $f18, $f0
/* 00AE24 8000B274 8FAC00E8 */  lw          $t4, 0xe8($sp)
/* 00AE28 8000B278 8FA2009C */  lw          $v0, 0x9c($sp)
/* 00AE2C 8000B27C 440B9000 */  mfc1        $t3, $f18
/* 00AE30 8000B280 00000000 */  nop
/* 00AE34 8000B284 AD8B0000 */  sw          $t3, 0x0($t4)
/* 00AE38 8000B288 8FAD00EC */  lw          $t5, 0xec($sp)
/* 00AE3C 8000B28C ADA20000 */  sw          $v0, 0x0($t5)
/* 00AE40 8000B290 8FBF004C */  lw          $ra, 0x4c($sp)
/* 00AE44 8000B294 27BD00A0 */  addiu       $sp, $sp, 0xa0
/* 00AE48 8000B298 03E00008 */  jr          $ra
/* 00AE4C 8000B29C 00000000 */   nop

glabel func_8000B2A0 # 4
/* 00AE50 8000B2A0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00AE54 8000B2A4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00AE58 8000B2A8 C4840000 */  lwc1        $f4, 0x0($a0)
/* 00AE5C 8000B2AC 46002187 */  neg.s       $f6, $f4
/* 00AE60 8000B2B0 E7A6001C */  swc1        $f6, 0x1c($sp)
/* 00AE64 8000B2B4 C4880004 */  lwc1        $f8, 0x4($a0)
/* 00AE68 8000B2B8 46004287 */  neg.s       $f10, $f8
/* 00AE6C 8000B2BC E7AA0020 */  swc1        $f10, 0x20($sp)
/* 00AE70 8000B2C0 C4900008 */  lwc1        $f16, 0x8($a0)
/* 00AE74 8000B2C4 27A4001C */  addiu       $a0, $sp, 0x1c
/* 00AE78 8000B2C8 46008487 */  neg.s       $f18, $f16
/* 00AE7C 8000B2CC 0C00EA20 */  jal         func_8003A880
/* 00AE80 8000B2D0 E7B20024 */   swc1       $f18, 0x24($sp)
/* 00AE84 8000B2D4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00AE88 8000B2D8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00AE8C 8000B2DC 03E00008 */  jr          $ra
/* 00AE90 8000B2E0 00000000 */   nop

glabel func_8000B2E4 # 5
/* 00AE94 8000B2E4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00AE98 8000B2E8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00AE9C 8000B2EC C48E0000 */  lwc1        $f14, 0x0($a0)
/* 00AEA0 8000B2F0 C48C0008 */  lwc1        $f12, 0x8($a0)
/* 00AEA4 8000B2F4 3C01800A */  lui         $at, %hi(D_800A5DA0)
/* 00AEA8 8000B2F8 460E7102 */  mul.s       $f4, $f14, $f14
/* 00AEAC 8000B2FC C4285DA0 */  lwc1        $f8, %lo(D_800A5DA0)($at)
/* 00AEB0 8000B300 3C01800A */  lui         $at, %hi(D_800A5DA4)
/* 00AEB4 8000B304 460C6182 */  mul.s       $f6, $f12, $f12
/* 00AEB8 8000B308 46062000 */  add.s       $f0, $f4, $f6
/* 00AEBC 8000B30C 46000004 */  sqrt.s      $f0, $f0
/* 00AEC0 8000B310 4608003C */  c.lt.s      $f0, $f8
/* 00AEC4 8000B314 46000086 */  mov.s       $f2, $f0
/* 00AEC8 8000B318 4502000A */  bc1fl       .L8000B344
/* 00AECC 8000B31C 46027383 */   div.s      $f14, $f14, $f2
/* 00AED0 8000B320 C42A5DA4 */  lwc1        $f10, %lo(D_800A5DA4)($at)
/* 00AED4 8000B324 4600503C */  c.lt.s      $f10, $f0
/* 00AED8 8000B328 00000000 */  nop
/* 00AEDC 8000B32C 45020005 */  bc1fl       .L8000B344
/* 00AEE0 8000B330 46027383 */   div.s      $f14, $f14, $f2
/* 00AEE4 8000B334 44800000 */  mtc1        $zero, $f0
/* 00AEE8 8000B338 10000005 */  b           .L8000B350
/* 00AEEC 8000B33C 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00AEF0 8000B340 46027383 */  div.s       $f14, $f14, $f2
.L8000B344:
/* 00AEF4 8000B344 0C00E6FE */  jal         func_80039BF8
/* 00AEF8 8000B348 46026303 */   div.s      $f12, $f12, $f2
/* 00AEFC 8000B34C 8FBF0014 */  lw          $ra, 0x14($sp)
.L8000B350:
/* 00AF00 8000B350 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00AF04 8000B354 03E00008 */  jr          $ra
/* 00AF08 8000B358 00000000 */   nop

glabel func_8000B35C # 6
/* 00AF0C 8000B35C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00AF10 8000B360 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00AF14 8000B364 0C002CB9 */  jal         func_8000B2E4
/* 00AF18 8000B368 00000000 */   nop
/* 00AF1C 8000B36C 3C0142B4 */  lui         $at, 0x42b4
/* 00AF20 8000B370 44816000 */  mtc1        $at, $f12
/* 00AF24 8000B374 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00AF28 8000B378 3C0143B4 */  lui         $at, 0x43b4
/* 00AF2C 8000B37C 460C003C */  c.lt.s      $f0, $f12
/* 00AF30 8000B380 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00AF34 8000B384 460C0081 */  sub.s       $f2, $f0, $f12
/* 00AF38 8000B388 4502000A */  bc1fl       .L8000B3B4
/* 00AF3C 8000B38C 3C0143B4 */   lui        $at, 0x43b4
/* 00AF40 8000B390 44806000 */  mtc1        $zero, $f12
/* 00AF44 8000B394 44810000 */  mtc1        $at, $f0
/* 00AF48 8000B398 00000000 */  nop
/* 00AF4C 8000B39C 46001080 */  add.s       $f2, $f2, $f0
.L8000B3A0:
/* 00AF50 8000B3A0 460C103C */  c.lt.s      $f2, $f12
/* 00AF54 8000B3A4 00000000 */  nop
/* 00AF58 8000B3A8 4503FFFD */  bc1tl       .L8000B3A0
/* 00AF5C 8000B3AC 46001080 */   add.s      $f2, $f2, $f0
/* 00AF60 8000B3B0 3C0143B4 */  lui         $at, 0x43b4
.L8000B3B4:
/* 00AF64 8000B3B4 44810000 */  mtc1        $at, $f0
/* 00AF68 8000B3B8 00000000 */  nop
/* 00AF6C 8000B3BC 4602003E */  c.le.s      $f0, $f2
/* 00AF70 8000B3C0 00000000 */  nop
/* 00AF74 8000B3C4 45000006 */  bc1f        .L8000B3E0
/* 00AF78 8000B3C8 00000000 */   nop
/* 00AF7C 8000B3CC 46001081 */  sub.s       $f2, $f2, $f0
.L8000B3D0:
/* 00AF80 8000B3D0 4602003E */  c.le.s      $f0, $f2
/* 00AF84 8000B3D4 00000000 */  nop
/* 00AF88 8000B3D8 4503FFFD */  bc1tl       .L8000B3D0
/* 00AF8C 8000B3DC 46001081 */   sub.s      $f2, $f2, $f0
.L8000B3E0:
/* 00AF90 8000B3E0 03E00008 */  jr          $ra
/* 00AF94 8000B3E4 46001006 */   mov.s      $f0, $f2

glabel func_8000B3E8 # 7
/* 00AF98 8000B3E8 3C013F80 */  lui         $at, 0x3f80
/* 00AF9C 8000B3EC 44811000 */  mtc1        $at, $f2
/* 00AFA0 8000B3F0 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 00AFA4 8000B3F4 C4242C64 */  lwc1        $f4, %lo(D_800B2C64)($at)
/* 00AFA8 8000B3F8 3C014270 */  lui         $at, 0x4270
/* 00AFAC 8000B3FC 44813000 */  mtc1        $at, $f6
/* 00AFB0 8000B400 27BDFF78 */  addiu       $sp, $sp, -0x88
/* 00AFB4 8000B404 F7BC0040 */  sdc1        $f28, 0x40($sp)
/* 00AFB8 8000B408 46062002 */  mul.s       $f0, $f4, $f6
/* 00AFBC 8000B40C 4486E000 */  mtc1        $a2, $f28
/* 00AFC0 8000B410 AFB20050 */  sw          $s2, 0x50($sp)
/* 00AFC4 8000B414 AFB00048 */  sw          $s0, 0x48($sp)
/* 00AFC8 8000B418 00A08025 */  move        $s0, $a1
/* 00AFCC 8000B41C 00809025 */  move        $s2, $a0
/* 00AFD0 8000B420 AFBF005C */  sw          $ra, 0x5c($sp)
/* 00AFD4 8000B424 4600103C */  c.lt.s      $f2, $f0
/* 00AFD8 8000B428 AFB40058 */  sw          $s4, 0x58($sp)
/* 00AFDC 8000B42C AFB30054 */  sw          $s3, 0x54($sp)
/* 00AFE0 8000B430 AFB1004C */  sw          $s1, 0x4c($sp)
/* 00AFE4 8000B434 F7BA0038 */  sdc1        $f26, 0x38($sp)
/* 00AFE8 8000B438 F7B80030 */  sdc1        $f24, 0x30($sp)
/* 00AFEC 8000B43C F7B60028 */  sdc1        $f22, 0x28($sp)
/* 00AFF0 8000B440 45000005 */  bc1f        .L8000B458
/* 00AFF4 8000B444 F7B40020 */   sdc1       $f20, 0x20($sp)
/* 00AFF8 8000B448 4600020D */  trunc.w.s   $f8, $f0
/* 00AFFC 8000B44C 44144000 */  mfc1        $s4, $f8
/* 00B000 8000B450 10000005 */  b           .L8000B468
/* 00B004 8000B454 44949000 */   mtc1       $s4, $f18
.L8000B458:
/* 00B008 8000B458 4600128D */  trunc.w.s   $f10, $f2
/* 00B00C 8000B45C 44145000 */  mfc1        $s4, $f10
/* 00B010 8000B460 00000000 */  nop
/* 00B014 8000B464 44949000 */  mtc1        $s4, $f18
.L8000B468:
/* 00B018 8000B468 3C01800A */  lui         $at, %hi(D_800A5DA8)
/* 00B01C 8000B46C C4305DA8 */  lwc1        $f16, %lo(D_800A5DA8)($at)
/* 00B020 8000B470 46809120 */  cvt.s.w     $f4, $f18
/* 00B024 8000B474 3C0142C8 */  lui         $at, 0x42c8
/* 00B028 8000B478 00008825 */  move        $s1, $zero
/* 00B02C 8000B47C 46048683 */  div.s       $f26, $f16, $f4
/* 00B030 8000B480 461AE702 */  mul.s       $f28, $f28, $f26
/* 00B034 8000B484 5A80003A */  blezl       $s4, .L8000B570
/* 00B038 8000B488 00001025 */   move       $v0, $zero
/* 00B03C 8000B48C 4481C000 */  mtc1        $at, $f24
/* 00B040 8000B490 3C013F80 */  lui         $at, 0x3f80
/* 00B044 8000B494 4481B000 */  mtc1        $at, $f22
/* 00B048 8000B498 27B3007C */  addiu       $s3, $sp, 0x7c
.L8000B49C:
/* 00B04C 8000B49C C6460000 */  lwc1        $f6, 0x0($s2)
/* 00B050 8000B4A0 C6080000 */  lwc1        $f8, 0x0($s0)
/* 00B054 8000B4A4 02602025 */  move        $a0, $s3
/* 00B058 8000B4A8 46083281 */  sub.s       $f10, $f6, $f8
/* 00B05C 8000B4AC E7AA007C */  swc1        $f10, 0x7c($sp)
/* 00B060 8000B4B0 C6100004 */  lwc1        $f16, 0x4($s0)
/* 00B064 8000B4B4 C6520004 */  lwc1        $f18, 0x4($s2)
/* 00B068 8000B4B8 46109101 */  sub.s       $f4, $f18, $f16
/* 00B06C 8000B4BC E7A40080 */  swc1        $f4, 0x80($sp)
/* 00B070 8000B4C0 C6080008 */  lwc1        $f8, 0x8($s0)
/* 00B074 8000B4C4 C6460008 */  lwc1        $f6, 0x8($s2)
/* 00B078 8000B4C8 46083281 */  sub.s       $f10, $f6, $f8
/* 00B07C 8000B4CC 0C00E3AC */  jal         func_80038EB0
/* 00B080 8000B4D0 E7AA0084 */   swc1       $f10, 0x84($sp)
/* 00B084 8000B4D4 4616003E */  c.le.s      $f0, $f22
/* 00B088 8000B4D8 46000506 */  mov.s       $f20, $f0
/* 00B08C 8000B4DC 4502000A */  bc1fl       .L8000B508
/* 00B090 8000B4E0 4406C000 */   mfc1       $a2, $f24
/* 00B094 8000B4E4 C6520000 */  lwc1        $f18, 0x0($s2)
/* 00B098 8000B4E8 2402FFFF */  addiu       $v0, $zero, -0x1
/* 00B09C 8000B4EC E6120000 */  swc1        $f18, 0x0($s0)
/* 00B0A0 8000B4F0 C6500004 */  lwc1        $f16, 0x4($s2)
/* 00B0A4 8000B4F4 E6100004 */  swc1        $f16, 0x4($s0)
/* 00B0A8 8000B4F8 C6440008 */  lwc1        $f4, 0x8($s2)
/* 00B0AC 8000B4FC 1000001C */  b           .L8000B570
/* 00B0B0 8000B500 E6040008 */   swc1       $f4, 0x8($s0)
/* 00B0B4 8000B504 4406C000 */  mfc1        $a2, $f24
.L8000B508:
/* 00B0B8 8000B508 4407E000 */  mfc1        $a3, $f28
/* 00B0BC 8000B50C 4600B306 */  mov.s       $f12, $f22
/* 00B0C0 8000B510 4600D386 */  mov.s       $f14, $f26
/* 00B0C4 8000B514 0C00E4BD */  jal         func_800392F4
/* 00B0C8 8000B518 E7B40010 */   swc1       $f20, 0x10($sp)
/* 00B0CC 8000B51C 46000306 */  mov.s       $f12, $f0
/* 00B0D0 8000B520 4600A004 */  sqrt.s      $f0, $f20
/* 00B0D4 8000B524 C7A8007C */  lwc1        $f8, 0x7c($sp)
/* 00B0D8 8000B528 C6060000 */  lwc1        $f6, 0x0($s0)
/* 00B0DC 8000B52C C6100004 */  lwc1        $f16, 0x4($s0)
/* 00B0E0 8000B530 26310001 */  addiu       $s1, $s1, 0x1
/* 00B0E4 8000B534 46006083 */  div.s       $f2, $f12, $f0
/* 00B0E8 8000B538 46024282 */  mul.s       $f10, $f8, $f2
/* 00B0EC 8000B53C 460A3480 */  add.s       $f18, $f6, $f10
/* 00B0F0 8000B540 C60A0008 */  lwc1        $f10, 0x8($s0)
/* 00B0F4 8000B544 E6120000 */  swc1        $f18, 0x0($s0)
/* 00B0F8 8000B548 C7A40080 */  lwc1        $f4, 0x80($sp)
/* 00B0FC 8000B54C 46022202 */  mul.s       $f8, $f4, $f2
/* 00B100 8000B550 46088180 */  add.s       $f6, $f16, $f8
/* 00B104 8000B554 E6060004 */  swc1        $f6, 0x4($s0)
/* 00B108 8000B558 C7B20084 */  lwc1        $f18, 0x84($sp)
/* 00B10C 8000B55C 46029102 */  mul.s       $f4, $f18, $f2
/* 00B110 8000B560 46045400 */  add.s       $f16, $f10, $f4
/* 00B114 8000B564 1634FFCD */  bne         $s1, $s4, .L8000B49C
/* 00B118 8000B568 E6100008 */   swc1       $f16, 0x8($s0)
/* 00B11C 8000B56C 00001025 */  move        $v0, $zero
.L8000B570:
/* 00B120 8000B570 8FBF005C */  lw          $ra, 0x5c($sp)
/* 00B124 8000B574 D7B40020 */  ldc1        $f20, 0x20($sp)
/* 00B128 8000B578 D7B60028 */  ldc1        $f22, 0x28($sp)
/* 00B12C 8000B57C D7B80030 */  ldc1        $f24, 0x30($sp)
/* 00B130 8000B580 D7BA0038 */  ldc1        $f26, 0x38($sp)
/* 00B134 8000B584 D7BC0040 */  ldc1        $f28, 0x40($sp)
/* 00B138 8000B588 8FB00048 */  lw          $s0, 0x48($sp)
/* 00B13C 8000B58C 8FB1004C */  lw          $s1, 0x4c($sp)
/* 00B140 8000B590 8FB20050 */  lw          $s2, 0x50($sp)
/* 00B144 8000B594 8FB30054 */  lw          $s3, 0x54($sp)
/* 00B148 8000B598 8FB40058 */  lw          $s4, 0x58($sp)
/* 00B14C 8000B59C 03E00008 */  jr          $ra
/* 00B150 8000B5A0 27BD0088 */   addiu      $sp, $sp, 0x88

glabel func_8000B5A4 # 8
/* 00B154 8000B5A4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00B158 8000B5A8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00B15C 8000B5AC AFA5002C */  sw          $a1, 0x2c($sp)
/* 00B160 8000B5B0 AFA60030 */  sw          $a2, 0x30($sp)
/* 00B164 8000B5B4 C4840000 */  lwc1        $f4, 0x0($a0)
/* 00B168 8000B5B8 E7A4001C */  swc1        $f4, 0x1c($sp)
/* 00B16C 8000B5BC C4860004 */  lwc1        $f6, 0x4($a0)
/* 00B170 8000B5C0 E7A60020 */  swc1        $f6, 0x20($sp)
/* 00B174 8000B5C4 C4880008 */  lwc1        $f8, 0x8($a0)
/* 00B178 8000B5C8 27A4001C */  addiu       $a0, $sp, 0x1c
/* 00B17C 8000B5CC 0C00E428 */  jal         func_800390A0
/* 00B180 8000B5D0 E7A80024 */   swc1       $f8, 0x24($sp)
/* 00B184 8000B5D4 44801000 */  mtc1        $zero, $f2
/* 00B188 8000B5D8 8FA20030 */  lw          $v0, 0x30($sp)
/* 00B18C 8000B5DC 8FAE002C */  lw          $t6, 0x2c($sp)
/* 00B190 8000B5E0 46020032 */  c.eq.s      $f0, $f2
/* 00B194 8000B5E4 00000000 */  nop
/* 00B198 8000B5E8 45000004 */  bc1f        .L8000B5FC
/* 00B19C 8000B5EC 00000000 */   nop
/* 00B1A0 8000B5F0 E5C20000 */  swc1        $f2, 0x0($t6)
/* 00B1A4 8000B5F4 10000016 */  b           .L8000B650
/* 00B1A8 8000B5F8 E4420000 */   swc1       $f2, 0x0($v0)
.L8000B5FC:
/* 00B1AC 8000B5FC 0C002CB9 */  jal         func_8000B2E4
/* 00B1B0 8000B600 27A4001C */   addiu      $a0, $sp, 0x1c
/* 00B1B4 8000B604 8FAF002C */  lw          $t7, 0x2c($sp)
/* 00B1B8 8000B608 E5E00000 */  swc1        $f0, 0x0($t7)
/* 00B1BC 8000B60C C7A0001C */  lwc1        $f0, 0x1c($sp)
/* 00B1C0 8000B610 C7AE0020 */  lwc1        $f14, 0x20($sp)
/* 00B1C4 8000B614 0C00E6FE */  jal         func_80039BF8
/* 00B1C8 8000B618 46000305 */   abs.s      $f12, $f0
/* 00B1CC 8000B61C 3C0143B4 */  lui         $at, 0x43b4
/* 00B1D0 8000B620 44816000 */  mtc1        $at, $f12
/* 00B1D4 8000B624 3C014334 */  lui         $at, 0x4334
/* 00B1D8 8000B628 44815000 */  mtc1        $at, $f10
/* 00B1DC 8000B62C 46006081 */  sub.s       $f2, $f12, $f0
/* 00B1E0 8000B630 8FA20030 */  lw          $v0, 0x30($sp)
/* 00B1E4 8000B634 4602503E */  c.le.s      $f10, $f2
/* 00B1E8 8000B638 E4420000 */  swc1        $f2, 0x0($v0)
/* 00B1EC 8000B63C 45020005 */  bc1fl       .L8000B654
/* 00B1F0 8000B640 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00B1F4 8000B644 C4500000 */  lwc1        $f16, 0x0($v0)
/* 00B1F8 8000B648 460C8481 */  sub.s       $f18, $f16, $f12
/* 00B1FC 8000B64C E4520000 */  swc1        $f18, 0x0($v0)
.L8000B650:
/* 00B200 8000B650 8FBF0014 */  lw          $ra, 0x14($sp)
.L8000B654:
/* 00B204 8000B654 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00B208 8000B658 03E00008 */  jr          $ra
/* 00B20C 8000B65C 00000000 */   nop

glabel func_8000B660 # 9
/* 00B210 8000B660 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00B214 8000B664 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00B218 8000B668 E7AC0028 */  swc1        $f12, 0x28($sp)
/* 00B21C 8000B66C E7AE002C */  swc1        $f14, 0x2c($sp)
/* 00B220 8000B670 AFA60030 */  sw          $a2, 0x30($sp)
/* 00B224 8000B674 0C00EB6C */  jal         func_8003ADB0
/* 00B228 8000B678 C7AC0028 */   lwc1       $f12, 0x28($sp)
/* 00B22C 8000B67C E7A00024 */  swc1        $f0, 0x24($sp)
/* 00B230 8000B680 0C00EB2F */  jal         func_8003ACBC
/* 00B234 8000B684 C7AC0028 */   lwc1       $f12, 0x28($sp)
/* 00B238 8000B688 E7A00020 */  swc1        $f0, 0x20($sp)
/* 00B23C 8000B68C 0C00EB6C */  jal         func_8003ADB0
/* 00B240 8000B690 C7AC002C */   lwc1       $f12, 0x2c($sp)
/* 00B244 8000B694 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 00B248 8000B698 0C00EB2F */  jal         func_8003ACBC
/* 00B24C 8000B69C C7AC002C */   lwc1       $f12, 0x2c($sp)
/* 00B250 8000B6A0 C7A20024 */  lwc1        $f2, 0x24($sp)
/* 00B254 8000B6A4 C7A4001C */  lwc1        $f4, 0x1c($sp)
/* 00B258 8000B6A8 8FA20030 */  lw          $v0, 0x30($sp)
/* 00B25C 8000B6AC 46041182 */  mul.s       $f6, $f2, $f4
/* 00B260 8000B6B0 00000000 */  nop
/* 00B264 8000B6B4 46001202 */  mul.s       $f8, $f2, $f0
/* 00B268 8000B6B8 E4460000 */  swc1        $f6, 0x0($v0)
/* 00B26C 8000B6BC E4480004 */  swc1        $f8, 0x4($v0)
/* 00B270 8000B6C0 C7AA0020 */  lwc1        $f10, 0x20($sp)
/* 00B274 8000B6C4 46005407 */  neg.s       $f16, $f10
/* 00B278 8000B6C8 E4500008 */  swc1        $f16, 0x8($v0)
/* 00B27C 8000B6CC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00B280 8000B6D0 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00B284 8000B6D4 03E00008 */  jr          $ra
/* 00B288 8000B6D8 00000000 */   nop

glabel func_8000B6DC # 10
/* 00B28C 8000B6DC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00B290 8000B6E0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00B294 8000B6E4 E7AC0028 */  swc1        $f12, 0x28($sp)
/* 00B298 8000B6E8 E7AE002C */  swc1        $f14, 0x2c($sp)
/* 00B29C 8000B6EC AFA60030 */  sw          $a2, 0x30($sp)
/* 00B2A0 8000B6F0 0C00EB6C */  jal         func_8003ADB0
/* 00B2A4 8000B6F4 C7AC0028 */   lwc1       $f12, 0x28($sp)
/* 00B2A8 8000B6F8 E7A00024 */  swc1        $f0, 0x24($sp)
/* 00B2AC 8000B6FC 0C00EB2F */  jal         func_8003ACBC
/* 00B2B0 8000B700 C7AC0028 */   lwc1       $f12, 0x28($sp)
/* 00B2B4 8000B704 E7A00020 */  swc1        $f0, 0x20($sp)
/* 00B2B8 8000B708 0C00EB6C */  jal         func_8003ADB0
/* 00B2BC 8000B70C C7AC002C */   lwc1       $f12, 0x2c($sp)
/* 00B2C0 8000B710 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 00B2C4 8000B714 0C00EB2F */  jal         func_8003ACBC
/* 00B2C8 8000B718 C7AC002C */   lwc1       $f12, 0x2c($sp)
/* 00B2CC 8000B71C C7A20024 */  lwc1        $f2, 0x24($sp)
/* 00B2D0 8000B720 8FA20030 */  lw          $v0, 0x30($sp)
/* 00B2D4 8000B724 46001102 */  mul.s       $f4, $f2, $f0
/* 00B2D8 8000B728 E4440000 */  swc1        $f4, 0x0($v0)
/* 00B2DC 8000B72C C7A60020 */  lwc1        $f6, 0x20($sp)
/* 00B2E0 8000B730 46003207 */  neg.s       $f8, $f6
/* 00B2E4 8000B734 E4480004 */  swc1        $f8, 0x4($v0)
/* 00B2E8 8000B738 C7AA001C */  lwc1        $f10, 0x1c($sp)
/* 00B2EC 8000B73C 460A1402 */  mul.s       $f16, $f2, $f10
/* 00B2F0 8000B740 E4500008 */  swc1        $f16, 0x8($v0)
/* 00B2F4 8000B744 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00B2F8 8000B748 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00B2FC 8000B74C 03E00008 */  jr          $ra
/* 00B300 8000B750 00000000 */   nop

glabel func_8000B754 # 11
/* 00B304 8000B754 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 00B308 8000B758 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00B30C 8000B75C AFA5003C */  sw          $a1, 0x3c($sp)
/* 00B310 8000B760 AFA70044 */  sw          $a3, 0x44($sp)
/* 00B314 8000B764 C48E0000 */  lwc1        $f14, 0x0($a0)
/* 00B318 8000B768 C4900004 */  lwc1        $f16, 0x4($a0)
/* 00B31C 8000B76C C4820008 */  lwc1        $f2, 0x8($a0)
/* 00B320 8000B770 460E7102 */  mul.s       $f4, $f14, $f14
/* 00B324 8000B774 3C01800A */  lui         $at, %hi(D_800A5DAC)
/* 00B328 8000B778 46108182 */  mul.s       $f6, $f16, $f16
/* 00B32C 8000B77C 46062200 */  add.s       $f8, $f4, $f6
/* 00B330 8000B780 46021282 */  mul.s       $f10, $f2, $f2
/* 00B334 8000B784 C4245DAC */  lwc1        $f4, %lo(D_800A5DAC)($at)
/* 00B338 8000B788 3C01800A */  lui         $at, %hi(D_800A5DB0)
/* 00B33C 8000B78C 460A4000 */  add.s       $f0, $f8, $f10
/* 00B340 8000B790 46000004 */  sqrt.s      $f0, $f0
/* 00B344 8000B794 4604003C */  c.lt.s      $f0, $f4
/* 00B348 8000B798 00000000 */  nop
/* 00B34C 8000B79C 4502000D */  bc1fl       .L8000B7D4
/* 00B350 8000B7A0 3C013F80 */   lui        $at, 0x3f80
/* 00B354 8000B7A4 C4265DB0 */  lwc1        $f6, %lo(D_800A5DB0)($at)
/* 00B358 8000B7A8 3C013F80 */  lui         $at, 0x3f80
/* 00B35C 8000B7AC 4600303C */  c.lt.s      $f6, $f0
/* 00B360 8000B7B0 00000000 */  nop
/* 00B364 8000B7B4 45020007 */  bc1fl       .L8000B7D4
/* 00B368 8000B7B8 3C013F80 */   lui        $at, 0x3f80
/* 00B36C 8000B7BC 44817000 */  mtc1        $at, $f14
/* 00B370 8000B7C0 44801000 */  mtc1        $zero, $f2
/* 00B374 8000B7C4 44808000 */  mtc1        $zero, $f16
/* 00B378 8000B7C8 1000000B */  b           .L8000B7F8
/* 00B37C 8000B7CC 00000000 */   nop
/* 00B380 8000B7D0 3C013F80 */  lui         $at, 0x3f80
.L8000B7D4:
/* 00B384 8000B7D4 44814000 */  mtc1        $at, $f8
/* 00B388 8000B7D8 00000000 */  nop
/* 00B38C 8000B7DC 46004303 */  div.s       $f12, $f8, $f0
/* 00B390 8000B7E0 460C7382 */  mul.s       $f14, $f14, $f12
/* 00B394 8000B7E4 00000000 */  nop
/* 00B398 8000B7E8 460C8402 */  mul.s       $f16, $f16, $f12
/* 00B39C 8000B7EC 00000000 */  nop
/* 00B3A0 8000B7F0 460C1082 */  mul.s       $f2, $f2, $f12
/* 00B3A4 8000B7F4 00000000 */  nop
.L8000B7F8:
/* 00B3A8 8000B7F8 3C01800A */  lui         $at, %hi(D_800A5DB4)
/* 00B3AC 8000B7FC C42A5DB4 */  lwc1        $f10, %lo(D_800A5DB4)($at)
/* 00B3B0 8000B800 46001007 */  neg.s       $f0, $f2
/* 00B3B4 8000B804 3C01800A */  lui         $at, %hi(D_800A5DB8)
/* 00B3B8 8000B808 4600503E */  c.le.s      $f10, $f0
/* 00B3BC 8000B80C 46000486 */  mov.s       $f18, $f0
/* 00B3C0 8000B810 45030008 */  bc1tl       .L8000B834
/* 00B3C4 8000B814 44803000 */   mtc1       $zero, $f6
/* 00B3C8 8000B818 C4245DB8 */  lwc1        $f4, %lo(D_800A5DB8)($at)
/* 00B3CC 8000B81C 3C01BF80 */  lui         $at, 0xbf80
/* 00B3D0 8000B820 4604003E */  c.le.s      $f0, $f4
/* 00B3D4 8000B824 00000000 */  nop
/* 00B3D8 8000B828 45020013 */  bc1fl       .L8000B878
/* 00B3DC 8000B82C 44811000 */   mtc1       $at, $f2
/* 00B3E0 8000B830 44803000 */  mtc1        $zero, $f6
.L8000B834:
/* 00B3E4 8000B834 3C014387 */  lui         $at, 0x4387
/* 00B3E8 8000B838 4600303C */  c.lt.s      $f6, $f0
/* 00B3EC 8000B83C 00000000 */  nop
/* 00B3F0 8000B840 45020006 */  bc1fl       .L8000B85C
/* 00B3F4 8000B844 44815000 */   mtc1       $at, $f10
/* 00B3F8 8000B848 3C0142B4 */  lui         $at, 0x42b4
/* 00B3FC 8000B84C 44814000 */  mtc1        $at, $f8
/* 00B400 8000B850 10000004 */  b           .L8000B864
/* 00B404 8000B854 E4C80000 */   swc1       $f8, 0x0($a2)
/* 00B408 8000B858 44815000 */  mtc1        $at, $f10
.L8000B85C:
/* 00B40C 8000B85C 00000000 */  nop
/* 00B410 8000B860 E4CA0000 */  swc1        $f10, 0x0($a2)
.L8000B864:
/* 00B414 8000B864 C7A4003C */  lwc1        $f4, 0x3c($sp)
/* 00B418 8000B868 8FAE0044 */  lw          $t6, 0x44($sp)
/* 00B41C 8000B86C 1000003F */  b           .L8000B96C
/* 00B420 8000B870 E5C40000 */   swc1       $f4, 0x0($t6)
/* 00B424 8000B874 44811000 */  mtc1        $at, $f2
.L8000B878:
/* 00B428 8000B878 3C013F80 */  lui         $at, 0x3f80
/* 00B42C 8000B87C 4602003C */  c.lt.s      $f0, $f2
/* 00B430 8000B880 00000000 */  nop
/* 00B434 8000B884 45020004 */  bc1fl       .L8000B898
/* 00B438 8000B888 44813000 */   mtc1       $at, $f6
/* 00B43C 8000B88C 10000009 */  b           .L8000B8B4
/* 00B440 8000B890 46001486 */   mov.s      $f18, $f2
/* 00B444 8000B894 44813000 */  mtc1        $at, $f6
.L8000B898:
/* 00B448 8000B898 3C013F80 */  lui         $at, 0x3f80
/* 00B44C 8000B89C 4600303C */  c.lt.s      $f6, $f0
/* 00B450 8000B8A0 00000000 */  nop
/* 00B454 8000B8A4 45000003 */  bc1f        .L8000B8B4
/* 00B458 8000B8A8 00000000 */   nop
/* 00B45C 8000B8AC 44819000 */  mtc1        $at, $f18
/* 00B460 8000B8B0 00000000 */  nop
.L8000B8B4:
/* 00B464 8000B8B4 46129282 */  mul.s       $f10, $f18, $f18
/* 00B468 8000B8B8 3C013F80 */  lui         $at, 0x3f80
/* 00B46C 8000B8BC 44814000 */  mtc1        $at, $f8
/* 00B470 8000B8C0 C7AC003C */  lwc1        $f12, 0x3c($sp)
/* 00B474 8000B8C4 AFA60040 */  sw          $a2, 0x40($sp)
/* 00B478 8000B8C8 E7B20024 */  swc1        $f18, 0x24($sp)
/* 00B47C 8000B8CC 460A4001 */  sub.s       $f0, $f8, $f10
/* 00B480 8000B8D0 46000004 */  sqrt.s      $f0, $f0
/* 00B484 8000B8D4 46007103 */  div.s       $f4, $f14, $f0
/* 00B488 8000B8D8 E7A00028 */  swc1        $f0, 0x28($sp)
/* 00B48C 8000B8DC 46008183 */  div.s       $f6, $f16, $f0
/* 00B490 8000B8E0 E7A40020 */  swc1        $f4, 0x20($sp)
/* 00B494 8000B8E4 0C00E796 */  jal         func_80039E58
/* 00B498 8000B8E8 E7A6001C */   swc1       $f6, 0x1c($sp)
/* 00B49C 8000B8EC 44800000 */  mtc1        $zero, $f0
/* 00B4A0 8000B8F0 8FA60040 */  lw          $a2, 0x40($sp)
/* 00B4A4 8000B8F4 04410006 */  bgez        $v0, .L8000B910
/* 00B4A8 8000B8F8 C7AC0028 */   lwc1       $f12, 0x28($sp)
/* 00B4AC 8000B8FC C7A80020 */  lwc1        $f8, 0x20($sp)
/* 00B4B0 8000B900 4608003C */  c.lt.s      $f0, $f8
/* 00B4B4 8000B904 00000000 */  nop
/* 00B4B8 8000B908 45030008 */  bc1tl       .L8000B92C
/* 00B4BC 8000B90C C7A40020 */   lwc1       $f4, 0x20($sp)
.L8000B910:
/* 00B4C0 8000B910 1840000C */  blez        $v0, .L8000B944
/* 00B4C4 8000B914 C7AA0020 */   lwc1       $f10, 0x20($sp)
/* 00B4C8 8000B918 4600503C */  c.lt.s      $f10, $f0
/* 00B4CC 8000B91C 00000000 */  nop
/* 00B4D0 8000B920 45020009 */  bc1fl       .L8000B948
/* 00B4D4 8000B924 C7AE0024 */   lwc1       $f14, 0x24($sp)
/* 00B4D8 8000B928 C7A40020 */  lwc1        $f4, 0x20($sp)
.L8000B92C:
/* 00B4DC 8000B92C C7A8001C */  lwc1        $f8, 0x1c($sp)
/* 00B4E0 8000B930 46006307 */  neg.s       $f12, $f12
/* 00B4E4 8000B934 46002187 */  neg.s       $f6, $f4
/* 00B4E8 8000B938 46004287 */  neg.s       $f10, $f8
/* 00B4EC 8000B93C E7A60020 */  swc1        $f6, 0x20($sp)
/* 00B4F0 8000B940 E7AA001C */  swc1        $f10, 0x1c($sp)
.L8000B944:
/* 00B4F4 8000B944 C7AE0024 */  lwc1        $f14, 0x24($sp)
.L8000B948:
/* 00B4F8 8000B948 0C00E6FE */  jal         func_80039BF8
/* 00B4FC 8000B94C AFA60040 */   sw         $a2, 0x40($sp)
/* 00B500 8000B950 8FA60040 */  lw          $a2, 0x40($sp)
/* 00B504 8000B954 E4C00000 */  swc1        $f0, 0x0($a2)
/* 00B508 8000B958 C7AE001C */  lwc1        $f14, 0x1c($sp)
/* 00B50C 8000B95C 0C00E6FE */  jal         func_80039BF8
/* 00B510 8000B960 C7AC0020 */   lwc1       $f12, 0x20($sp)
/* 00B514 8000B964 8FAF0044 */  lw          $t7, 0x44($sp)
/* 00B518 8000B968 E5E00000 */  swc1        $f0, 0x0($t7)
.L8000B96C:
/* 00B51C 8000B96C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00B520 8000B970 27BD0038 */  addiu       $sp, $sp, 0x38
/* 00B524 8000B974 03E00008 */  jr          $ra
/* 00B528 8000B978 00000000 */   nop

glabel func_8000B97C # 12
/* 00B52C 8000B97C 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 00B530 8000B980 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00B534 8000B984 C4900000 */  lwc1        $f16, 0x0($a0)
/* 00B538 8000B988 C4920004 */  lwc1        $f18, 0x4($a0)
/* 00B53C 8000B98C C4820008 */  lwc1        $f2, 0x8($a0)
/* 00B540 8000B990 46108102 */  mul.s       $f4, $f16, $f16
/* 00B544 8000B994 3C01800A */  lui         $at, %hi(D_800A5DBC)
/* 00B548 8000B998 46129182 */  mul.s       $f6, $f18, $f18
/* 00B54C 8000B99C 46062200 */  add.s       $f8, $f4, $f6
/* 00B550 8000B9A0 46021282 */  mul.s       $f10, $f2, $f2
/* 00B554 8000B9A4 C4245DBC */  lwc1        $f4, %lo(D_800A5DBC)($at)
/* 00B558 8000B9A8 3C01800A */  lui         $at, %hi(D_800A5DC0)
/* 00B55C 8000B9AC 460A4000 */  add.s       $f0, $f8, $f10
/* 00B560 8000B9B0 46000004 */  sqrt.s      $f0, $f0
/* 00B564 8000B9B4 4604003C */  c.lt.s      $f0, $f4
/* 00B568 8000B9B8 00000000 */  nop
/* 00B56C 8000B9BC 4502000C */  bc1fl       .L8000B9F0
/* 00B570 8000B9C0 3C013F80 */   lui        $at, 0x3f80
/* 00B574 8000B9C4 C4265DC0 */  lwc1        $f6, %lo(D_800A5DC0)($at)
/* 00B578 8000B9C8 4600303C */  c.lt.s      $f6, $f0
/* 00B57C 8000B9CC 00000000 */  nop
/* 00B580 8000B9D0 45020007 */  bc1fl       .L8000B9F0
/* 00B584 8000B9D4 3C013F80 */   lui        $at, 0x3f80
/* 00B588 8000B9D8 44801000 */  mtc1        $zero, $f2
/* 00B58C 8000B9DC 00001025 */  move        $v0, $zero
/* 00B590 8000B9E0 E4C20000 */  swc1        $f2, 0x0($a2)
/* 00B594 8000B9E4 1000004B */  b           .L8000BB14
/* 00B598 8000B9E8 E4A20000 */   swc1       $f2, 0x0($a1)
/* 00B59C 8000B9EC 3C013F80 */  lui         $at, 0x3f80
.L8000B9F0:
/* 00B5A0 8000B9F0 44814000 */  mtc1        $at, $f8
/* 00B5A4 8000B9F4 3C01800A */  lui         $at, %hi(D_800A5DC4)
/* 00B5A8 8000B9F8 C42A5DC4 */  lwc1        $f10, %lo(D_800A5DC4)($at)
/* 00B5AC 8000B9FC 46004303 */  div.s       $f12, $f8, $f0
/* 00B5B0 8000BA00 3C01800A */  lui         $at, %hi(D_800A5DC8)
/* 00B5B4 8000BA04 00001025 */  move        $v0, $zero
/* 00B5B8 8000BA08 460C8402 */  mul.s       $f16, $f16, $f12
/* 00B5BC 8000BA0C 00000000 */  nop
/* 00B5C0 8000BA10 460C9482 */  mul.s       $f18, $f18, $f12
/* 00B5C4 8000BA14 00000000 */  nop
/* 00B5C8 8000BA18 460C1082 */  mul.s       $f2, $f2, $f12
/* 00B5CC 8000BA1C 46001007 */  neg.s       $f0, $f2
/* 00B5D0 8000BA20 4600503E */  c.le.s      $f10, $f0
/* 00B5D4 8000BA24 46000386 */  mov.s       $f14, $f0
/* 00B5D8 8000BA28 45010007 */  bc1t        .L8000BA48
/* 00B5DC 8000BA2C 00000000 */   nop
/* 00B5E0 8000BA30 C4245DC8 */  lwc1        $f4, %lo(D_800A5DC8)($at)
/* 00B5E4 8000BA34 3C01BF80 */  lui         $at, 0xbf80
/* 00B5E8 8000BA38 4604003E */  c.le.s      $f0, $f4
/* 00B5EC 8000BA3C 00000000 */  nop
/* 00B5F0 8000BA40 45020011 */  bc1fl       .L8000BA88
/* 00B5F4 8000BA44 44811000 */   mtc1       $at, $f2
.L8000BA48:
/* 00B5F8 8000BA48 44801000 */  mtc1        $zero, $f2
/* 00B5FC 8000BA4C 3C014387 */  lui         $at, 0x4387
/* 00B600 8000BA50 4600103C */  c.lt.s      $f2, $f0
/* 00B604 8000BA54 00000000 */  nop
/* 00B608 8000BA58 45020006 */  bc1fl       .L8000BA74
/* 00B60C 8000BA5C 44814000 */   mtc1       $at, $f8
/* 00B610 8000BA60 3C0142B4 */  lui         $at, 0x42b4
/* 00B614 8000BA64 44813000 */  mtc1        $at, $f6
/* 00B618 8000BA68 10000004 */  b           .L8000BA7C
/* 00B61C 8000BA6C E4A60000 */   swc1       $f6, 0x0($a1)
/* 00B620 8000BA70 44814000 */  mtc1        $at, $f8
.L8000BA74:
/* 00B624 8000BA74 00000000 */  nop
/* 00B628 8000BA78 E4A80000 */  swc1        $f8, 0x0($a1)
.L8000BA7C:
/* 00B62C 8000BA7C 10000025 */  b           .L8000BB14
/* 00B630 8000BA80 E4C20000 */   swc1       $f2, 0x0($a2)
/* 00B634 8000BA84 44811000 */  mtc1        $at, $f2
.L8000BA88:
/* 00B638 8000BA88 3C013F80 */  lui         $at, 0x3f80
/* 00B63C 8000BA8C 4602003C */  c.lt.s      $f0, $f2
/* 00B640 8000BA90 00000000 */  nop
/* 00B644 8000BA94 45020004 */  bc1fl       .L8000BAA8
/* 00B648 8000BA98 44815000 */   mtc1       $at, $f10
/* 00B64C 8000BA9C 10000009 */  b           .L8000BAC4
/* 00B650 8000BAA0 46001386 */   mov.s      $f14, $f2
/* 00B654 8000BAA4 44815000 */  mtc1        $at, $f10
.L8000BAA8:
/* 00B658 8000BAA8 3C013F80 */  lui         $at, 0x3f80
/* 00B65C 8000BAAC 4600503C */  c.lt.s      $f10, $f0
/* 00B660 8000BAB0 00000000 */  nop
/* 00B664 8000BAB4 45000003 */  bc1f        .L8000BAC4
/* 00B668 8000BAB8 00000000 */   nop
/* 00B66C 8000BABC 44817000 */  mtc1        $at, $f14
/* 00B670 8000BAC0 00000000 */  nop
.L8000BAC4:
/* 00B674 8000BAC4 460E7182 */  mul.s       $f6, $f14, $f14
/* 00B678 8000BAC8 3C013F80 */  lui         $at, 0x3f80
/* 00B67C 8000BACC 44812000 */  mtc1        $at, $f4
/* 00B680 8000BAD0 AFA5003C */  sw          $a1, 0x3c($sp)
/* 00B684 8000BAD4 AFA60040 */  sw          $a2, 0x40($sp)
/* 00B688 8000BAD8 46062001 */  sub.s       $f0, $f4, $f6
/* 00B68C 8000BADC 46000304 */  sqrt.s      $f12, $f0
/* 00B690 8000BAE0 460C8203 */  div.s       $f8, $f16, $f12
/* 00B694 8000BAE4 460C9283 */  div.s       $f10, $f18, $f12
/* 00B698 8000BAE8 E7A80020 */  swc1        $f8, 0x20($sp)
/* 00B69C 8000BAEC 0C00E6FE */  jal         func_80039BF8
/* 00B6A0 8000BAF0 E7AA001C */   swc1       $f10, 0x1c($sp)
/* 00B6A4 8000BAF4 8FA5003C */  lw          $a1, 0x3c($sp)
/* 00B6A8 8000BAF8 E4A00000 */  swc1        $f0, 0x0($a1)
/* 00B6AC 8000BAFC C7AE001C */  lwc1        $f14, 0x1c($sp)
/* 00B6B0 8000BB00 0C00E6FE */  jal         func_80039BF8
/* 00B6B4 8000BB04 C7AC0020 */   lwc1       $f12, 0x20($sp)
/* 00B6B8 8000BB08 8FA60040 */  lw          $a2, 0x40($sp)
/* 00B6BC 8000BB0C 24020001 */  addiu       $v0, $zero, 0x1
/* 00B6C0 8000BB10 E4C00000 */  swc1        $f0, 0x0($a2)
.L8000BB14:
/* 00B6C4 8000BB14 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00B6C8 8000BB18 27BD0038 */  addiu       $sp, $sp, 0x38
/* 00B6CC 8000BB1C 03E00008 */  jr          $ra
/* 00B6D0 8000BB20 00000000 */   nop

glabel func_8000BB24 # 13
/* 00B6D4 8000BB24 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 00B6D8 8000BB28 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00B6DC 8000BB2C F7B40010 */  sdc1        $f20, 0x10($sp)
/* 00B6E0 8000BB30 AFA5003C */  sw          $a1, 0x3c($sp)
/* 00B6E4 8000BB34 AFA70044 */  sw          $a3, 0x44($sp)
/* 00B6E8 8000BB38 C48E0008 */  lwc1        $f14, 0x8($a0)
/* 00B6EC 8000BB3C 3C01800A */  lui         $at, %hi(D_800A5DCC)
/* 00B6F0 8000BB40 C4245DCC */  lwc1        $f4, %lo(D_800A5DCC)($at)
/* 00B6F4 8000BB44 46007387 */  neg.s       $f14, $f14
/* 00B6F8 8000BB48 3C01800A */  lui         $at, %hi(D_800A5DD0)
/* 00B6FC 8000BB4C 4604703E */  c.le.s      $f14, $f4
/* 00B700 8000BB50 00000000 */  nop
/* 00B704 8000BB54 45030008 */  bc1tl       .L8000BB78
/* 00B708 8000BB58 44809000 */   mtc1       $zero, $f18
/* 00B70C 8000BB5C C4265DD0 */  lwc1        $f6, %lo(D_800A5DD0)($at)
/* 00B710 8000BB60 3C01800A */  lui         $at, %hi(D_800A5DD4)
/* 00B714 8000BB64 460E303E */  c.le.s      $f6, $f14
/* 00B718 8000BB68 00000000 */  nop
/* 00B71C 8000BB6C 45000017 */  bc1f        .L8000BBCC
/* 00B720 8000BB70 00000000 */   nop
/* 00B724 8000BB74 44809000 */  mtc1        $zero, $f18
.L8000BB78:
/* 00B728 8000BB78 3C0142B4 */  lui         $at, 0x42b4
/* 00B72C 8000BB7C 4612703E */  c.le.s      $f14, $f18
/* 00B730 8000BB80 00000000 */  nop
/* 00B734 8000BB84 45020006 */  bc1fl       .L8000BBA0
/* 00B738 8000BB88 44815000 */   mtc1       $at, $f10
/* 00B73C 8000BB8C 3C014387 */  lui         $at, 0x4387
/* 00B740 8000BB90 44814000 */  mtc1        $at, $f8
/* 00B744 8000BB94 10000004 */  b           .L8000BBA8
/* 00B748 8000BB98 E4C80000 */   swc1       $f8, 0x0($a2)
/* 00B74C 8000BB9C 44815000 */  mtc1        $at, $f10
.L8000BBA0:
/* 00B750 8000BBA0 00000000 */  nop
/* 00B754 8000BBA4 E4CA0000 */  swc1        $f10, 0x0($a2)
.L8000BBA8:
/* 00B758 8000BBA8 8FAE003C */  lw          $t6, 0x3c($sp)
/* 00B75C 8000BBAC E5D20000 */  swc1        $f18, 0x0($t6)
/* 00B760 8000BBB0 C48E000C */  lwc1        $f14, 0xc($a0)
/* 00B764 8000BBB4 C48C0010 */  lwc1        $f12, 0x10($a0)
/* 00B768 8000BBB8 0C00E6FE */  jal         func_80039BF8
/* 00B76C 8000BBBC 46007387 */   neg.s      $f14, $f14
/* 00B770 8000BBC0 8FAF0044 */  lw          $t7, 0x44($sp)
/* 00B774 8000BBC4 10000091 */  b           .L8000BE0C
/* 00B778 8000BBC8 E5E00000 */   swc1       $f0, 0x0($t7)
.L8000BBCC:
/* 00B77C 8000BBCC C4245DD4 */  lwc1        $f4, %lo(D_800A5DD4)($at)
/* 00B780 8000BBD0 3C01800A */  lui         $at, %hi(D_800A5DD8)
/* 00B784 8000BBD4 4604703C */  c.lt.s      $f14, $f4
/* 00B788 8000BBD8 00000000 */  nop
/* 00B78C 8000BBDC 45020012 */  bc1fl       .L8000BC28
/* 00B790 8000BBE0 3C01BF80 */   lui        $at, 0xbf80
/* 00B794 8000BBE4 C4265DD8 */  lwc1        $f6, %lo(D_800A5DD8)($at)
/* 00B798 8000BBE8 460E303C */  c.lt.s      $f6, $f14
/* 00B79C 8000BBEC 00000000 */  nop
/* 00B7A0 8000BBF0 4502000D */  bc1fl       .L8000BC28
/* 00B7A4 8000BBF4 3C01BF80 */   lui        $at, 0xbf80
/* 00B7A8 8000BBF8 44809000 */  mtc1        $zero, $f18
/* 00B7AC 8000BBFC 00000000 */  nop
/* 00B7B0 8000BC00 E4D20000 */  swc1        $f18, 0x0($a2)
/* 00B7B4 8000BC04 C4880004 */  lwc1        $f8, 0x4($a0)
/* 00B7B8 8000BC08 C4940000 */  lwc1        $f20, 0x0($a0)
/* 00B7BC 8000BC0C E7A80024 */  swc1        $f8, 0x24($sp)
/* 00B7C0 8000BC10 C48A0020 */  lwc1        $f10, 0x20($a0)
/* 00B7C4 8000BC14 E7AA0030 */  swc1        $f10, 0x30($sp)
/* 00B7C8 8000BC18 C4840014 */  lwc1        $f4, 0x14($a0)
/* 00B7CC 8000BC1C 10000071 */  b           .L8000BDE4
/* 00B7D0 8000BC20 E7A40034 */   swc1       $f4, 0x34($sp)
/* 00B7D4 8000BC24 3C01BF80 */  lui         $at, 0xbf80
.L8000BC28:
/* 00B7D8 8000BC28 44816000 */  mtc1        $at, $f12
/* 00B7DC 8000BC2C 3C013F80 */  lui         $at, 0x3f80
/* 00B7E0 8000BC30 460C703C */  c.lt.s      $f14, $f12
/* 00B7E4 8000BC34 00000000 */  nop
/* 00B7E8 8000BC38 45020006 */  bc1fl       .L8000BC54
/* 00B7EC 8000BC3C 44811000 */   mtc1       $at, $f2
/* 00B7F0 8000BC40 3C013F80 */  lui         $at, 0x3f80
/* 00B7F4 8000BC44 44811000 */  mtc1        $at, $f2
/* 00B7F8 8000BC48 10000008 */  b           .L8000BC6C
/* 00B7FC 8000BC4C 46006386 */   mov.s      $f14, $f12
/* 00B800 8000BC50 44811000 */  mtc1        $at, $f2
.L8000BC54:
/* 00B804 8000BC54 00000000 */  nop
/* 00B808 8000BC58 460E103C */  c.lt.s      $f2, $f14
/* 00B80C 8000BC5C 00000000 */  nop
/* 00B810 8000BC60 45000002 */  bc1f        .L8000BC6C
/* 00B814 8000BC64 00000000 */   nop
/* 00B818 8000BC68 46001386 */  mov.s       $f14, $f2
.L8000BC6C:
/* 00B81C 8000BC6C 460E7182 */  mul.s       $f6, $f14, $f14
/* 00B820 8000BC70 46061001 */  sub.s       $f0, $f2, $f6
/* 00B824 8000BC74 46000004 */  sqrt.s      $f0, $f0
/* 00B828 8000BC78 E7A00028 */  swc1        $f0, 0x28($sp)
/* 00B82C 8000BC7C C4880000 */  lwc1        $f8, 0x0($a0)
/* 00B830 8000BC80 46004503 */  div.s       $f20, $f8, $f0
/* 00B834 8000BC84 460CA03C */  c.lt.s      $f20, $f12
/* 00B838 8000BC88 00000000 */  nop
/* 00B83C 8000BC8C 45020004 */  bc1fl       .L8000BCA0
/* 00B840 8000BC90 4614103C */   c.lt.s     $f2, $f20
/* 00B844 8000BC94 10000006 */  b           .L8000BCB0
/* 00B848 8000BC98 46006506 */   mov.s      $f20, $f12
/* 00B84C 8000BC9C 4614103C */  c.lt.s      $f2, $f20
.L8000BCA0:
/* 00B850 8000BCA0 00000000 */  nop
/* 00B854 8000BCA4 45000002 */  bc1f        .L8000BCB0
/* 00B858 8000BCA8 00000000 */   nop
/* 00B85C 8000BCAC 46001506 */  mov.s       $f20, $f2
.L8000BCB0:
/* 00B860 8000BCB0 4614A282 */  mul.s       $f10, $f20, $f20
/* 00B864 8000BCB4 44809000 */  mtc1        $zero, $f18
/* 00B868 8000BCB8 460A1001 */  sub.s       $f0, $f2, $f10
/* 00B86C 8000BCBC 46147282 */  mul.s       $f10, $f14, $f20
/* 00B870 8000BCC0 46000004 */  sqrt.s      $f0, $f0
/* 00B874 8000BCC4 E7A00024 */  swc1        $f0, 0x24($sp)
/* 00B878 8000BCC8 C4840004 */  lwc1        $f4, 0x4($a0)
/* 00B87C 8000BCCC 4612203C */  c.lt.s      $f4, $f18
/* 00B880 8000BCD0 00000000 */  nop
/* 00B884 8000BCD4 45020004 */  bc1fl       .L8000BCE8
/* 00B888 8000BCD8 C4880010 */   lwc1       $f8, 0x10($a0)
/* 00B88C 8000BCDC 46000187 */  neg.s       $f6, $f0
/* 00B890 8000BCE0 E7A60024 */  swc1        $f6, 0x24($sp)
/* 00B894 8000BCE4 C4880010 */  lwc1        $f8, 0x10($a0)
.L8000BCE8:
/* 00B898 8000BCE8 C7A60024 */  lwc1        $f6, 0x24($sp)
/* 00B89C 8000BCEC 460A4102 */  mul.s       $f4, $f8, $f10
/* 00B8A0 8000BCF0 00000000 */  nop
/* 00B8A4 8000BCF4 46067202 */  mul.s       $f8, $f14, $f6
/* 00B8A8 8000BCF8 C486000C */  lwc1        $f6, 0xc($a0)
/* 00B8AC 8000BCFC 46004287 */  neg.s       $f10, $f8
/* 00B8B0 8000BD00 46065202 */  mul.s       $f8, $f10, $f6
/* 00B8B4 8000BD04 46082280 */  add.s       $f10, $f4, $f8
/* 00B8B8 8000BD08 460E5403 */  div.s       $f16, $f10, $f14
/* 00B8BC 8000BD0C 460C803C */  c.lt.s      $f16, $f12
/* 00B8C0 8000BD10 00000000 */  nop
/* 00B8C4 8000BD14 45000003 */  bc1f        .L8000BD24
/* 00B8C8 8000BD18 00000000 */   nop
/* 00B8CC 8000BD1C 10000006 */  b           .L8000BD38
/* 00B8D0 8000BD20 46006406 */   mov.s      $f16, $f12
.L8000BD24:
/* 00B8D4 8000BD24 4610103C */  c.lt.s      $f2, $f16
/* 00B8D8 8000BD28 00000000 */  nop
/* 00B8DC 8000BD2C 45000002 */  bc1f        .L8000BD38
/* 00B8E0 8000BD30 00000000 */   nop
/* 00B8E4 8000BD34 46001406 */  mov.s       $f16, $f2
.L8000BD38:
/* 00B8E8 8000BD38 46108182 */  mul.s       $f6, $f16, $f16
/* 00B8EC 8000BD3C C7A40028 */  lwc1        $f4, 0x28($sp)
/* 00B8F0 8000BD40 C7A80028 */  lwc1        $f8, 0x28($sp)
/* 00B8F4 8000BD44 46061001 */  sub.s       $f0, $f2, $f6
/* 00B8F8 8000BD48 46000004 */  sqrt.s      $f0, $f0
/* 00B8FC 8000BD4C E7A00034 */  swc1        $f0, 0x34($sp)
/* 00B900 8000BD50 C48C0014 */  lwc1        $f12, 0x14($a0)
/* 00B904 8000BD54 460C903C */  c.lt.s      $f18, $f12
/* 00B908 8000BD58 00000000 */  nop
/* 00B90C 8000BD5C 45020004 */  bc1fl       .L8000BD70
/* 00B910 8000BD60 4612603C */   c.lt.s     $f12, $f18
/* 00B914 8000BD64 10000008 */  b           .L8000BD88
/* 00B918 8000BD68 24040001 */   addiu      $a0, $zero, 0x1
/* 00B91C 8000BD6C 4612603C */  c.lt.s      $f12, $f18
.L8000BD70:
/* 00B920 8000BD70 00001025 */  move        $v0, $zero
/* 00B924 8000BD74 45000003 */  bc1f        .L8000BD84
/* 00B928 8000BD78 00000000 */   nop
/* 00B92C 8000BD7C 10000001 */  b           .L8000BD84
/* 00B930 8000BD80 2402FFFF */   addiu      $v0, $zero, -0x1
.L8000BD84:
/* 00B934 8000BD84 00402025 */  move        $a0, $v0
.L8000BD88:
/* 00B938 8000BD88 4604903C */  c.lt.s      $f18, $f4
/* 00B93C 8000BD8C 00000000 */  nop
/* 00B940 8000BD90 45020004 */  bc1fl       .L8000BDA4
/* 00B944 8000BD94 4612403C */   c.lt.s     $f8, $f18
/* 00B948 8000BD98 10000008 */  b           .L8000BDBC
/* 00B94C 8000BD9C 24020001 */   addiu      $v0, $zero, 0x1
/* 00B950 8000BDA0 4612403C */  c.lt.s      $f8, $f18
.L8000BDA4:
/* 00B954 8000BDA4 00001825 */  move        $v1, $zero
/* 00B958 8000BDA8 45000003 */  bc1f        .L8000BDB8
/* 00B95C 8000BDAC 00000000 */   nop
/* 00B960 8000BDB0 10000001 */  b           .L8000BDB8
/* 00B964 8000BDB4 2403FFFF */   addiu      $v1, $zero, -0x1
.L8000BDB8:
/* 00B968 8000BDB8 00601025 */  move        $v0, $v1
.L8000BDBC:
/* 00B96C 8000BDBC 50440004 */  beql        $v0, $a0, .L8000BDD0
/* 00B970 8000BDC0 C7AC0028 */   lwc1       $f12, 0x28($sp)
/* 00B974 8000BDC4 46000287 */  neg.s       $f10, $f0
/* 00B978 8000BDC8 E7AA0034 */  swc1        $f10, 0x34($sp)
/* 00B97C 8000BDCC C7AC0028 */  lwc1        $f12, 0x28($sp)
.L8000BDD0:
/* 00B980 8000BDD0 AFA60040 */  sw          $a2, 0x40($sp)
/* 00B984 8000BDD4 0C00E6FE */  jal         func_80039BF8
/* 00B988 8000BDD8 E7B00030 */   swc1       $f16, 0x30($sp)
/* 00B98C 8000BDDC 8FA60040 */  lw          $a2, 0x40($sp)
/* 00B990 8000BDE0 E4C00000 */  swc1        $f0, 0x0($a2)
.L8000BDE4:
/* 00B994 8000BDE4 C7AC0030 */  lwc1        $f12, 0x30($sp)
/* 00B998 8000BDE8 0C00E6FE */  jal         func_80039BF8
/* 00B99C 8000BDEC C7AE0034 */   lwc1       $f14, 0x34($sp)
/* 00B9A0 8000BDF0 8FB8003C */  lw          $t8, 0x3c($sp)
/* 00B9A4 8000BDF4 4600A306 */  mov.s       $f12, $f20
/* 00B9A8 8000BDF8 E7000000 */  swc1        $f0, 0x0($t8)
/* 00B9AC 8000BDFC 0C00E6FE */  jal         func_80039BF8
/* 00B9B0 8000BE00 C7AE0024 */   lwc1       $f14, 0x24($sp)
/* 00B9B4 8000BE04 8FB90044 */  lw          $t9, 0x44($sp)
/* 00B9B8 8000BE08 E7200000 */  swc1        $f0, 0x0($t9)
.L8000BE0C:
/* 00B9BC 8000BE0C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00B9C0 8000BE10 D7B40010 */  ldc1        $f20, 0x10($sp)
/* 00B9C4 8000BE14 27BD0038 */  addiu       $sp, $sp, 0x38
/* 00B9C8 8000BE18 03E00008 */  jr          $ra
/* 00B9CC 8000BE1C 00000000 */   nop

glabel func_8000BE20 # 14
/* 00B9D0 8000BE20 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00B9D4 8000BE24 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00B9D8 8000BE28 C4AE0000 */  lwc1        $f14, 0x0($a1)
/* 00B9DC 8000BE2C C48C0000 */  lwc1        $f12, 0x0($a0)
/* 00B9E0 8000BE30 AFA5001C */  sw          $a1, 0x1c($sp)
/* 00B9E4 8000BE34 0C00E3F4 */  jal         func_80038FD0
/* 00B9E8 8000BE38 AFA40018 */   sw         $a0, 0x18($sp)
/* 00B9EC 8000BE3C 3C01800A */  lui         $at, %hi(D_800A5DDC)
/* 00B9F0 8000BE40 C4245DDC */  lwc1        $f4, %lo(D_800A5DDC)($at)
/* 00B9F4 8000BE44 8FA40018 */  lw          $a0, 0x18($sp)
/* 00B9F8 8000BE48 8FA5001C */  lw          $a1, 0x1c($sp)
/* 00B9FC 8000BE4C 4604003E */  c.le.s      $f0, $f4
/* 00BA00 8000BE50 46000086 */  mov.s       $f2, $f0
/* 00BA04 8000BE54 45020008 */  bc1fl       .L8000BE78
/* 00BA08 8000BE58 C4860000 */   lwc1       $f6, 0x0($a0)
/* 00BA0C 8000BE5C 44801000 */  mtc1        $zero, $f2
/* 00BA10 8000BE60 00000000 */  nop
/* 00BA14 8000BE64 E4A20000 */  swc1        $f2, 0x0($a1)
/* 00BA18 8000BE68 E4820000 */  swc1        $f2, 0x0($a0)
/* 00BA1C 8000BE6C 10000008 */  b           .L8000BE90
/* 00BA20 8000BE70 46001006 */   mov.s      $f0, $f2
/* 00BA24 8000BE74 C4860000 */  lwc1        $f6, 0x0($a0)
.L8000BE78:
/* 00BA28 8000BE78 46001006 */  mov.s       $f0, $f2
/* 00BA2C 8000BE7C 46023203 */  div.s       $f8, $f6, $f2
/* 00BA30 8000BE80 E4880000 */  swc1        $f8, 0x0($a0)
/* 00BA34 8000BE84 C4AA0000 */  lwc1        $f10, 0x0($a1)
/* 00BA38 8000BE88 46025403 */  div.s       $f16, $f10, $f2
/* 00BA3C 8000BE8C E4B00000 */  swc1        $f16, 0x0($a1)
.L8000BE90:
/* 00BA40 8000BE90 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00BA44 8000BE94 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00BA48 8000BE98 03E00008 */  jr          $ra
/* 00BA4C 8000BE9C 00000000 */   nop

glabel func_8000BEA0 # 15
/* 00BA50 8000BEA0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00BA54 8000BEA4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00BA58 8000BEA8 E7AC0020 */  swc1        $f12, 0x20($sp)
/* 00BA5C 8000BEAC AFA50024 */  sw          $a1, 0x24($sp)
/* 00BA60 8000BEB0 AFA60028 */  sw          $a2, 0x28($sp)
/* 00BA64 8000BEB4 0C00EB6C */  jal         func_8003ADB0
/* 00BA68 8000BEB8 C7AC0020 */   lwc1       $f12, 0x20($sp)
/* 00BA6C 8000BEBC C7AC0020 */  lwc1        $f12, 0x20($sp)
/* 00BA70 8000BEC0 0C00EB2F */  jal         func_8003ACBC
/* 00BA74 8000BEC4 E7A00018 */   swc1       $f0, 0x18($sp)
/* 00BA78 8000BEC8 8FA20024 */  lw          $v0, 0x24($sp)
/* 00BA7C 8000BECC 8FA30028 */  lw          $v1, 0x28($sp)
/* 00BA80 8000BED0 C7AE0018 */  lwc1        $f14, 0x18($sp)
/* 00BA84 8000BED4 C4420000 */  lwc1        $f2, 0x0($v0)
/* 00BA88 8000BED8 C46C0000 */  lwc1        $f12, 0x0($v1)
/* 00BA8C 8000BEDC 460E1102 */  mul.s       $f4, $f2, $f14
/* 00BA90 8000BEE0 00000000 */  nop
/* 00BA94 8000BEE4 46006182 */  mul.s       $f6, $f12, $f0
/* 00BA98 8000BEE8 00000000 */  nop
/* 00BA9C 8000BEEC 46001282 */  mul.s       $f10, $f2, $f0
/* 00BAA0 8000BEF0 00000000 */  nop
/* 00BAA4 8000BEF4 460E6402 */  mul.s       $f16, $f12, $f14
/* 00BAA8 8000BEF8 46062201 */  sub.s       $f8, $f4, $f6
/* 00BAAC 8000BEFC E4480000 */  swc1        $f8, 0x0($v0)
/* 00BAB0 8000BF00 46105480 */  add.s       $f18, $f10, $f16
/* 00BAB4 8000BF04 E4720000 */  swc1        $f18, 0x0($v1)
/* 00BAB8 8000BF08 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00BABC 8000BF0C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00BAC0 8000BF10 03E00008 */  jr          $ra
/* 00BAC4 8000BF14 00000000 */   nop

glabel func_8000BF18 # 16
/* 00BAC8 8000BF18 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00BACC 8000BF1C AFBF0014 */  sw          $ra, 0x14($sp)
/* 00BAD0 8000BF20 AFA40018 */  sw          $a0, 0x18($sp)
/* 00BAD4 8000BF24 AFA5001C */  sw          $a1, 0x1c($sp)
/* 00BAD8 8000BF28 AFA60020 */  sw          $a2, 0x20($sp)
/* 00BADC 8000BF2C 00A07025 */  move        $t6, $a1
/* 00BAE0 8000BF30 C5C80004 */  lwc1        $f8, 0x4($t6)
/* 00BAE4 8000BF34 C5D00008 */  lwc1        $f16, 0x8($t6)
/* 00BAE8 8000BF38 C4A40000 */  lwc1        $f4, 0x0($a1)
/* 00BAEC 8000BF3C 46004287 */  neg.s       $f10, $f8
/* 00BAF0 8000BF40 46008487 */  neg.s       $f18, $f16
/* 00BAF4 8000BF44 46002187 */  neg.s       $f6, $f4
/* 00BAF8 8000BF48 00C02025 */  move        $a0, $a2
/* 00BAFC 8000BF4C 44065000 */  mfc1        $a2, $f10
/* 00BB00 8000BF50 44053000 */  mfc1        $a1, $f6
/* 00BB04 8000BF54 44079000 */  mfc1        $a3, $f18
/* 00BB08 8000BF58 0C00E0F9 */  jal         func_800383E4
/* 00BB0C 8000BF5C 00000000 */   nop
/* 00BB10 8000BF60 8FA20018 */  lw          $v0, 0x18($sp)
/* 00BB14 8000BF64 8FA40020 */  lw          $a0, 0x20($sp)
/* 00BB18 8000BF68 C4440000 */  lwc1        $f4, 0x0($v0)
/* 00BB1C 8000BF6C C4480004 */  lwc1        $f8, 0x4($v0)
/* 00BB20 8000BF70 C4500008 */  lwc1        $f16, 0x8($v0)
/* 00BB24 8000BF74 46002187 */  neg.s       $f6, $f4
/* 00BB28 8000BF78 46004287 */  neg.s       $f10, $f8
/* 00BB2C 8000BF7C 46008487 */  neg.s       $f18, $f16
/* 00BB30 8000BF80 44065000 */  mfc1        $a2, $f10
/* 00BB34 8000BF84 44079000 */  mfc1        $a3, $f18
/* 00BB38 8000BF88 44053000 */  mfc1        $a1, $f6
/* 00BB3C 8000BF8C 0C00E007 */  jal         func_8003801C
/* 00BB40 8000BF90 00000000 */   nop
/* 00BB44 8000BF94 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00BB48 8000BF98 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00BB4C 8000BF9C 03E00008 */  jr          $ra
/* 00BB50 8000BFA0 00000000 */   nop

glabel func_8000BFA4 # 17
/* 00BB54 8000BFA4 44801000 */  mtc1        $zero, $f2
/* 00BB58 8000BFA8 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 00BB5C 8000BFAC AFBF0014 */  sw          $ra, 0x14($sp)
/* 00BB60 8000BFB0 4602603C */  c.lt.s      $f12, $f2
/* 00BB64 8000BFB4 3C0143B4 */  lui         $at, 0x43b4
/* 00BB68 8000BFB8 45020009 */  bc1fl       .L8000BFE0
/* 00BB6C 8000BFBC 3C0143B4 */   lui        $at, 0x43b4
/* 00BB70 8000BFC0 44810000 */  mtc1        $at, $f0
/* 00BB74 8000BFC4 00000000 */  nop
/* 00BB78 8000BFC8 46006300 */  add.s       $f12, $f12, $f0
.L8000BFCC:
/* 00BB7C 8000BFCC 4602603C */  c.lt.s      $f12, $f2
/* 00BB80 8000BFD0 00000000 */  nop
/* 00BB84 8000BFD4 4503FFFD */  bc1tl       .L8000BFCC
/* 00BB88 8000BFD8 46006300 */   add.s      $f12, $f12, $f0
/* 00BB8C 8000BFDC 3C0143B4 */  lui         $at, 0x43b4
.L8000BFE0:
/* 00BB90 8000BFE0 44810000 */  mtc1        $at, $f0
/* 00BB94 8000BFE4 00000000 */  nop
/* 00BB98 8000BFE8 460C003E */  c.le.s      $f0, $f12
/* 00BB9C 8000BFEC 00000000 */  nop
/* 00BBA0 8000BFF0 45020007 */  bc1fl       .L8000C010
/* 00BBA4 8000BFF4 AFA50044 */   sw         $a1, 0x44($sp)
/* 00BBA8 8000BFF8 46006301 */  sub.s       $f12, $f12, $f0
.L8000BFFC:
/* 00BBAC 8000BFFC 460C003E */  c.le.s      $f0, $f12
/* 00BBB0 8000C000 00000000 */  nop
/* 00BBB4 8000C004 4503FFFD */  bc1tl       .L8000BFFC
/* 00BBB8 8000C008 46006301 */   sub.s      $f12, $f12, $f0
/* 00BBBC 8000C00C AFA50044 */  sw          $a1, 0x44($sp)
.L8000C010:
/* 00BBC0 8000C010 0C00EB6C */  jal         func_8003ADB0
/* 00BBC4 8000C014 E7AC0040 */   swc1       $f12, 0x40($sp)
/* 00BBC8 8000C018 C7AC0040 */  lwc1        $f12, 0x40($sp)
/* 00BBCC 8000C01C 0C00EB2F */  jal         func_8003ACBC
/* 00BBD0 8000C020 E7A0003C */   swc1       $f0, 0x3c($sp)
/* 00BBD4 8000C024 8FA50044 */  lw          $a1, 0x44($sp)
/* 00BBD8 8000C028 C7A2003C */  lwc1        $f2, 0x3c($sp)
/* 00BBDC 8000C02C 46000307 */  neg.s       $f12, $f0
/* 00BBE0 8000C030 C4A40024 */  lwc1        $f4, 0x24($a1)
/* 00BBE4 8000C034 C4AE0000 */  lwc1        $f14, 0x0($a1)
/* 00BBE8 8000C038 C4B0000C */  lwc1        $f16, 0xc($a1)
/* 00BBEC 8000C03C C4B20018 */  lwc1        $f18, 0x18($a1)
/* 00BBF0 8000C040 E7A40028 */  swc1        $f4, 0x28($sp)
/* 00BBF4 8000C044 C4A60008 */  lwc1        $f6, 0x8($a1)
/* 00BBF8 8000C048 E7A60024 */  swc1        $f6, 0x24($sp)
/* 00BBFC 8000C04C C4A80014 */  lwc1        $f8, 0x14($a1)
/* 00BC00 8000C050 460E1182 */  mul.s       $f6, $f2, $f14
/* 00BC04 8000C054 E7A80020 */  swc1        $f8, 0x20($sp)
/* 00BC08 8000C058 C4AA0020 */  lwc1        $f10, 0x20($a1)
/* 00BC0C 8000C05C C7A80024 */  lwc1        $f8, 0x24($sp)
/* 00BC10 8000C060 E7AA001C */  swc1        $f10, 0x1c($sp)
/* 00BC14 8000C064 46080282 */  mul.s       $f10, $f0, $f8
/* 00BC18 8000C068 C4A4002C */  lwc1        $f4, 0x2c($a1)
/* 00BC1C 8000C06C 46101202 */  mul.s       $f8, $f2, $f16
/* 00BC20 8000C070 E7A40018 */  swc1        $f4, 0x18($sp)
/* 00BC24 8000C074 460A3100 */  add.s       $f4, $f6, $f10
/* 00BC28 8000C078 E4A40000 */  swc1        $f4, 0x0($a1)
/* 00BC2C 8000C07C C7A60020 */  lwc1        $f6, 0x20($sp)
/* 00BC30 8000C080 46060282 */  mul.s       $f10, $f0, $f6
/* 00BC34 8000C084 460A4100 */  add.s       $f4, $f8, $f10
/* 00BC38 8000C088 46121182 */  mul.s       $f6, $f2, $f18
/* 00BC3C 8000C08C E4A4000C */  swc1        $f4, 0xc($a1)
/* 00BC40 8000C090 C7A8001C */  lwc1        $f8, 0x1c($sp)
/* 00BC44 8000C094 46080282 */  mul.s       $f10, $f0, $f8
/* 00BC48 8000C098 460A3100 */  add.s       $f4, $f6, $f10
/* 00BC4C 8000C09C E4A40018 */  swc1        $f4, 0x18($a1)
/* 00BC50 8000C0A0 C7A80028 */  lwc1        $f8, 0x28($sp)
/* 00BC54 8000C0A4 C7AA0018 */  lwc1        $f10, 0x18($sp)
/* 00BC58 8000C0A8 46081182 */  mul.s       $f6, $f2, $f8
/* 00BC5C 8000C0AC 00000000 */  nop
/* 00BC60 8000C0B0 460A0102 */  mul.s       $f4, $f0, $f10
/* 00BC64 8000C0B4 46043200 */  add.s       $f8, $f6, $f4
/* 00BC68 8000C0B8 460E6282 */  mul.s       $f10, $f12, $f14
/* 00BC6C 8000C0BC E4A80024 */  swc1        $f8, 0x24($a1)
/* 00BC70 8000C0C0 C7A60024 */  lwc1        $f6, 0x24($sp)
/* 00BC74 8000C0C4 46061102 */  mul.s       $f4, $f2, $f6
/* 00BC78 8000C0C8 46045200 */  add.s       $f8, $f10, $f4
/* 00BC7C 8000C0CC 46106182 */  mul.s       $f6, $f12, $f16
/* 00BC80 8000C0D0 E4A80008 */  swc1        $f8, 0x8($a1)
/* 00BC84 8000C0D4 C7AA0020 */  lwc1        $f10, 0x20($sp)
/* 00BC88 8000C0D8 460A1102 */  mul.s       $f4, $f2, $f10
/* 00BC8C 8000C0DC 46043200 */  add.s       $f8, $f6, $f4
/* 00BC90 8000C0E0 46126282 */  mul.s       $f10, $f12, $f18
/* 00BC94 8000C0E4 E4A80014 */  swc1        $f8, 0x14($a1)
/* 00BC98 8000C0E8 C7A6001C */  lwc1        $f6, 0x1c($sp)
/* 00BC9C 8000C0EC 46061102 */  mul.s       $f4, $f2, $f6
/* 00BCA0 8000C0F0 46045200 */  add.s       $f8, $f10, $f4
/* 00BCA4 8000C0F4 E4A80020 */  swc1        $f8, 0x20($a1)
/* 00BCA8 8000C0F8 C7A60028 */  lwc1        $f6, 0x28($sp)
/* 00BCAC 8000C0FC C7A40018 */  lwc1        $f4, 0x18($sp)
/* 00BCB0 8000C100 46066282 */  mul.s       $f10, $f12, $f6
/* 00BCB4 8000C104 00000000 */  nop
/* 00BCB8 8000C108 46041202 */  mul.s       $f8, $f2, $f4
/* 00BCBC 8000C10C 46085180 */  add.s       $f6, $f10, $f8
/* 00BCC0 8000C110 E4A6002C */  swc1        $f6, 0x2c($a1)
/* 00BCC4 8000C114 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00BCC8 8000C118 27BD0040 */  addiu       $sp, $sp, 0x40
/* 00BCCC 8000C11C 03E00008 */  jr          $ra
/* 00BCD0 8000C120 00000000 */   nop

glabel func_8000C124 # 18
/* 00BCD4 8000C124 8C8E0000 */  lw          $t6, 0x0($a0)
/* 00BCD8 8000C128 00001825 */  move        $v1, $zero
/* 00BCDC 8000C12C 01C5082A */  slt         $at, $t6, $a1
/* 00BCE0 8000C130 10200007 */  beqz        $at, .L8000C150
/* 00BCE4 8000C134 00000000 */   nop
/* 00BCE8 8000C138 8C8F0004 */  lw          $t7, 0x4($a0)
.L8000C13C:
/* 00BCEC 8000C13C 24630001 */  addiu       $v1, $v1, 0x1
/* 00BCF0 8000C140 24840004 */  addiu       $a0, $a0, 0x4
/* 00BCF4 8000C144 01E5082A */  slt         $at, $t7, $a1
/* 00BCF8 8000C148 5420FFFC */  bnel        $at, $zero, .L8000C13C
/* 00BCFC 8000C14C 8C8F0004 */   lw         $t7, 0x4($a0)
.L8000C150:
/* 00BD00 8000C150 03E00008 */  jr          $ra
/* 00BD04 8000C154 00601025 */   move       $v0, $v1

glabel func_8000C158 # 19
/* 00BD08 8000C158 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00BD0C 8000C15C 3C013F80 */  lui         $at, 0x3f80
/* 00BD10 8000C160 44812000 */  mtc1        $at, $f4
/* 00BD14 8000C164 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00BD18 8000C168 AFB00018 */  sw          $s0, 0x18($sp)
/* 00BD1C 8000C16C AFA50024 */  sw          $a1, 0x24($sp)
/* 00BD20 8000C170 C4C60000 */  lwc1        $f6, 0x0($a2)
/* 00BD24 8000C174 460C2001 */  sub.s       $f0, $f4, $f12
/* 00BD28 8000C178 C4AA0000 */  lwc1        $f10, 0x0($a1)
/* 00BD2C 8000C17C 460C3202 */  mul.s       $f8, $f6, $f12
/* 00BD30 8000C180 24C30004 */  addiu       $v1, $a2, 0x4
/* 00BD34 8000C184 00E08025 */  move        $s0, $a3
/* 00BD38 8000C188 460A0402 */  mul.s       $f16, $f0, $f10
/* 00BD3C 8000C18C 24060009 */  addiu       $a2, $zero, 0x9
/* 00BD40 8000C190 24050001 */  addiu       $a1, $zero, 0x1
/* 00BD44 8000C194 24E40004 */  addiu       $a0, $a3, 0x4
/* 00BD48 8000C198 46104480 */  add.s       $f18, $f8, $f16
/* 00BD4C 8000C19C E4F20000 */  swc1        $f18, 0x0($a3)
/* 00BD50 8000C1A0 8FA20024 */  lw          $v0, 0x24($sp)
/* 00BD54 8000C1A4 24420004 */  addiu       $v0, $v0, 0x4
/* 00BD58 8000C1A8 C46A0000 */  lwc1        $f10, 0x0($v1)
/* 00BD5C 8000C1AC C44E0000 */  lwc1        $f14, 0x0($v0)
/* 00BD60 8000C1B0 24A50004 */  addiu       $a1, $a1, 0x4
/* 00BD64 8000C1B4 460C5482 */  mul.s       $f18, $f10, $f12
/* 00BD68 8000C1B8 00000000 */  nop
/* 00BD6C 8000C1BC 460E0402 */  mul.s       $f16, $f0, $f14
/* 00BD70 8000C1C0 10A60023 */  beq         $a1, $a2, .L8000C250
/* 00BD74 8000C1C4 00000000 */   nop
.L8000C1C8:
/* 00BD78 8000C1C8 46109380 */  add.s       $f14, $f18, $f16
/* 00BD7C 8000C1CC 24A50004 */  addiu       $a1, $a1, 0x4
/* 00BD80 8000C1D0 24420010 */  addiu       $v0, $v0, 0x10
/* 00BD84 8000C1D4 24630010 */  addiu       $v1, $v1, 0x10
/* 00BD88 8000C1D8 E48E0000 */  swc1        $f14, 0x0($a0)
/* 00BD8C 8000C1DC C46EFFF4 */  lwc1        $f14, -0xc($v1)
/* 00BD90 8000C1E0 C44AFFF4 */  lwc1        $f10, -0xc($v0)
/* 00BD94 8000C1E4 24840010 */  addiu       $a0, $a0, 0x10
/* 00BD98 8000C1E8 460C7382 */  mul.s       $f14, $f14, $f12
/* 00BD9C 8000C1EC 00000000 */  nop
/* 00BDA0 8000C1F0 460A0282 */  mul.s       $f10, $f0, $f10
/* 00BDA4 8000C1F4 460A7280 */  add.s       $f10, $f14, $f10
/* 00BDA8 8000C1F8 E48AFFF4 */  swc1        $f10, -0xc($a0)
/* 00BDAC 8000C1FC C46AFFF8 */  lwc1        $f10, -0x8($v1)
/* 00BDB0 8000C200 C44EFFF8 */  lwc1        $f14, -0x8($v0)
/* 00BDB4 8000C204 460C5282 */  mul.s       $f10, $f10, $f12
/* 00BDB8 8000C208 00000000 */  nop
/* 00BDBC 8000C20C 460E0382 */  mul.s       $f14, $f0, $f14
/* 00BDC0 8000C210 460E5380 */  add.s       $f14, $f10, $f14
/* 00BDC4 8000C214 E48EFFF8 */  swc1        $f14, -0x8($a0)
/* 00BDC8 8000C218 C46EFFFC */  lwc1        $f14, -0x4($v1)
/* 00BDCC 8000C21C C44AFFFC */  lwc1        $f10, -0x4($v0)
/* 00BDD0 8000C220 460C7382 */  mul.s       $f14, $f14, $f12
/* 00BDD4 8000C224 00000000 */  nop
/* 00BDD8 8000C228 460A0282 */  mul.s       $f10, $f0, $f10
/* 00BDDC 8000C22C 460A7280 */  add.s       $f10, $f14, $f10
/* 00BDE0 8000C230 E48AFFFC */  swc1        $f10, -0x4($a0)
/* 00BDE4 8000C234 C46A0000 */  lwc1        $f10, 0x0($v1)
/* 00BDE8 8000C238 C44E0000 */  lwc1        $f14, 0x0($v0)
/* 00BDEC 8000C23C 460C5482 */  mul.s       $f18, $f10, $f12
/* 00BDF0 8000C240 00000000 */  nop
/* 00BDF4 8000C244 460E0402 */  mul.s       $f16, $f0, $f14
/* 00BDF8 8000C248 14A6FFDF */  bne         $a1, $a2, .L8000C1C8
/* 00BDFC 8000C24C 00000000 */   nop
.L8000C250:
/* 00BE00 8000C250 46109380 */  add.s       $f14, $f18, $f16
/* 00BE04 8000C254 24420010 */  addiu       $v0, $v0, 0x10
/* 00BE08 8000C258 24630010 */  addiu       $v1, $v1, 0x10
/* 00BE0C 8000C25C 24840010 */  addiu       $a0, $a0, 0x10
/* 00BE10 8000C260 E48EFFF0 */  swc1        $f14, -0x10($a0)
/* 00BE14 8000C264 C46EFFF4 */  lwc1        $f14, -0xc($v1)
/* 00BE18 8000C268 C44AFFF4 */  lwc1        $f10, -0xc($v0)
/* 00BE1C 8000C26C 460C7382 */  mul.s       $f14, $f14, $f12
/* 00BE20 8000C270 00000000 */  nop
/* 00BE24 8000C274 460A0282 */  mul.s       $f10, $f0, $f10
/* 00BE28 8000C278 460A7280 */  add.s       $f10, $f14, $f10
/* 00BE2C 8000C27C E48AFFF4 */  swc1        $f10, -0xc($a0)
/* 00BE30 8000C280 C46AFFF8 */  lwc1        $f10, -0x8($v1)
/* 00BE34 8000C284 C44EFFF8 */  lwc1        $f14, -0x8($v0)
/* 00BE38 8000C288 460C5282 */  mul.s       $f10, $f10, $f12
/* 00BE3C 8000C28C 00000000 */  nop
/* 00BE40 8000C290 460E0382 */  mul.s       $f14, $f0, $f14
/* 00BE44 8000C294 460E5380 */  add.s       $f14, $f10, $f14
/* 00BE48 8000C298 E48EFFF8 */  swc1        $f14, -0x8($a0)
/* 00BE4C 8000C29C C46EFFFC */  lwc1        $f14, -0x4($v1)
/* 00BE50 8000C2A0 C44AFFFC */  lwc1        $f10, -0x4($v0)
/* 00BE54 8000C2A4 460C7382 */  mul.s       $f14, $f14, $f12
/* 00BE58 8000C2A8 00000000 */  nop
/* 00BE5C 8000C2AC 460A0282 */  mul.s       $f10, $f0, $f10
/* 00BE60 8000C2B0 460A7280 */  add.s       $f10, $f14, $f10
/* 00BE64 8000C2B4 E48AFFFC */  swc1        $f10, -0x4($a0)
/* 00BE68 8000C2B8 0C00E428 */  jal         func_800390A0
/* 00BE6C 8000C2BC 02002025 */   move       $a0, $s0
/* 00BE70 8000C2C0 0C00E428 */  jal         func_800390A0
/* 00BE74 8000C2C4 2604000C */   addiu      $a0, $s0, 0xc
/* 00BE78 8000C2C8 0C00E428 */  jal         func_800390A0
/* 00BE7C 8000C2CC 26040018 */   addiu      $a0, $s0, 0x18
/* 00BE80 8000C2D0 44800000 */  mtc1        $zero, $f0
/* 00BE84 8000C2D4 00000000 */  nop
/* 00BE88 8000C2D8 E6000024 */  swc1        $f0, 0x24($s0)
/* 00BE8C 8000C2DC E6000028 */  swc1        $f0, 0x28($s0)
/* 00BE90 8000C2E0 E600002C */  swc1        $f0, 0x2c($s0)
/* 00BE94 8000C2E4 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00BE98 8000C2E8 8FB00018 */  lw          $s0, 0x18($sp)
/* 00BE9C 8000C2EC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00BEA0 8000C2F0 03E00008 */  jr          $ra
/* 00BEA4 8000C2F4 00000000 */   nop

glabel func_8000C2F8 # 20
/* 00BEA8 8000C2F8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00BEAC 8000C2FC AFBF0014 */  sw          $ra, 0x14($sp)
/* 00BEB0 8000C300 0C00F620 */  jal         func_8003D880
/* 00BEB4 8000C304 27A6001C */   addiu      $a2, $sp, 0x1c
/* 00BEB8 8000C308 0C002CB9 */  jal         func_8000B2E4
/* 00BEBC 8000C30C 27A4001C */   addiu      $a0, $sp, 0x1c
/* 00BEC0 8000C310 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00BEC4 8000C314 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00BEC8 8000C318 03E00008 */  jr          $ra
/* 00BECC 8000C31C 00000000 */   nop

glabel func_8000C320 # 21
/* 00BED0 8000C320 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 00BED4 8000C324 C7AA0068 */  lwc1        $f10, 0x68($sp)
/* 00BED8 8000C328 3C013FF0 */  lui         $at, 0x3ff0
/* 00BEDC 8000C32C 44812800 */  mtc1        $at, $f5
/* 00BEE0 8000C330 44802000 */  mtc1        $zero, $f4
/* 00BEE4 8000C334 46005221 */  cvt.d.s     $f8, $f10
/* 00BEE8 8000C338 C7A6006C */  lwc1        $f6, 0x6c($sp)
/* 00BEEC 8000C33C 46282283 */  div.d       $f10, $f4, $f8
/* 00BEF0 8000C340 3C014008 */  lui         $at, 0x4008
/* 00BEF4 8000C344 E7A60000 */  swc1        $f6, 0x0($sp)
/* 00BEF8 8000C348 46063482 */  mul.s       $f18, $f6, $f6
/* 00BEFC 8000C34C 44813800 */  mtc1        $at, $f7
/* 00BF00 8000C350 3C013F80 */  lui         $at, 0x3f80
/* 00BF04 8000C354 AFA60060 */  sw          $a2, 0x60($sp)
/* 00BF08 8000C358 AFA70064 */  sw          $a3, 0x64($sp)
/* 00BF0C 8000C35C 46205420 */  cvt.s.d     $f16, $f10
/* 00BF10 8000C360 46108102 */  mul.s       $f4, $f16, $f16
/* 00BF14 8000C364 E7A40024 */  swc1        $f4, 0x24($sp)
/* 00BF18 8000C368 46069202 */  mul.s       $f8, $f18, $f6
/* 00BF1C 8000C36C C7AA0024 */  lwc1        $f10, 0x24($sp)
/* 00BF20 8000C370 44803000 */  mtc1        $zero, $f6
/* 00BF24 8000C374 460A4102 */  mul.s       $f4, $f8, $f10
/* 00BF28 8000C378 460020A1 */  cvt.d.s     $f2, $f4
/* 00BF2C 8000C37C E7A40020 */  swc1        $f4, 0x20($sp)
/* 00BF30 8000C380 46221200 */  add.d       $f8, $f2, $f2
/* 00BF34 8000C384 46008121 */  cvt.d.s     $f4, $f16
/* 00BF38 8000C388 46244202 */  mul.d       $f8, $f8, $f4
/* 00BF3C 8000C38C 46204120 */  cvt.s.d     $f4, $f8
/* 00BF40 8000C390 46009221 */  cvt.d.s     $f8, $f18
/* 00BF44 8000C394 E7A40014 */  swc1        $f4, 0x14($sp)
/* 00BF48 8000C398 46264202 */  mul.d       $f8, $f8, $f6
/* 00BF4C 8000C39C 460051A1 */  cvt.d.s     $f6, $f10
/* 00BF50 8000C3A0 46264282 */  mul.d       $f10, $f8, $f6
/* 00BF54 8000C3A4 00000000 */  nop
/* 00BF58 8000C3A8 46109182 */  mul.s       $f6, $f18, $f16
/* 00BF5C 8000C3AC 46205220 */  cvt.s.d     $f8, $f10
/* 00BF60 8000C3B0 E7A6002C */  swc1        $f6, 0x2c($sp)
/* 00BF64 8000C3B4 C7A6002C */  lwc1        $f6, 0x2c($sp)
/* 00BF68 8000C3B8 C7AA0020 */  lwc1        $f10, 0x20($sp)
/* 00BF6C 8000C3BC E7A80024 */  swc1        $f8, 0x24($sp)
/* 00BF70 8000C3C0 E7A60004 */  swc1        $f6, 0x4($sp)
/* 00BF74 8000C3C4 46065281 */  sub.s       $f10, $f10, $f6
/* 00BF78 8000C3C8 46082181 */  sub.s       $f6, $f4, $f8
/* 00BF7C 8000C3CC E7AA0028 */  swc1        $f10, 0x28($sp)
/* 00BF80 8000C3D0 E7AA0008 */  swc1        $f10, 0x8($sp)
/* 00BF84 8000C3D4 44815000 */  mtc1        $at, $f10
/* 00BF88 8000C3D8 00000000 */  nop
/* 00BF8C 8000C3DC 460A3180 */  add.s       $f6, $f6, $f10
/* 00BF90 8000C3E0 460C3282 */  mul.s       $f10, $f6, $f12
/* 00BF94 8000C3E4 46044181 */  sub.s       $f6, $f8, $f4
/* 00BF98 8000C3E8 46067202 */  mul.s       $f8, $f14, $f6
/* 00BF9C 8000C3EC C7A60008 */  lwc1        $f6, 0x8($sp)
/* 00BFA0 8000C3F0 46085100 */  add.s       $f4, $f10, $f8
/* 00BFA4 8000C3F4 C7AA0004 */  lwc1        $f10, 0x4($sp)
/* 00BFA8 8000C3F8 460A3201 */  sub.s       $f8, $f6, $f10
/* 00BFAC 8000C3FC C7AA0000 */  lwc1        $f10, 0x0($sp)
/* 00BFB0 8000C400 460A4200 */  add.s       $f8, $f8, $f10
/* 00BFB4 8000C404 C7AA0060 */  lwc1        $f10, 0x60($sp)
/* 00BFB8 8000C408 46085282 */  mul.s       $f10, $f10, $f8
/* 00BFBC 8000C40C 460A2200 */  add.s       $f8, $f4, $f10
/* 00BFC0 8000C410 C7A40064 */  lwc1        $f4, 0x64($sp)
/* 00BFC4 8000C414 27BD0058 */  addiu       $sp, $sp, 0x58
/* 00BFC8 8000C418 46062282 */  mul.s       $f10, $f4, $f6
/* 00BFCC 8000C41C 03E00008 */  jr          $ra
/* 00BFD0 8000C420 460A4000 */   add.s      $f0, $f8, $f10

glabel func_8000C424 # 22
/* 00BFD4 8000C424 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 00BFD8 8000C428 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 00BFDC 8000C42C 4487A000 */  mtc1        $a3, $f20
/* 00BFE0 8000C430 C7A40050 */  lwc1        $f4, 0x50($sp)
/* 00BFE4 8000C434 AFB10028 */  sw          $s1, 0x28($sp)
/* 00BFE8 8000C438 AFB00024 */  sw          $s0, 0x24($sp)
/* 00BFEC 8000C43C 4604A03C */  c.lt.s      $f20, $f4
/* 00BFF0 8000C440 00A08025 */  move        $s0, $a1
/* 00BFF4 8000C444 00C08825 */  move        $s1, $a2
/* 00BFF8 8000C448 AFBF002C */  sw          $ra, 0x2c($sp)
/* 00BFFC 8000C44C 45000002 */  bc1f        .L8000C458
/* 00C000 8000C450 AFA40040 */   sw         $a0, 0x40($sp)
/* 00C004 8000C454 E7B40050 */  swc1        $f20, 0x50($sp)
.L8000C458:
/* 00C008 8000C458 44801000 */  mtc1        $zero, $f2
/* 00C00C 8000C45C 8FAE0040 */  lw          $t6, 0x40($sp)
/* 00C010 8000C460 C7A60050 */  lwc1        $f6, 0x50($sp)
/* 00C014 8000C464 C60E0000 */  lwc1        $f14, 0x0($s0)
/* 00C018 8000C468 C5CC0000 */  lwc1        $f12, 0x0($t6)
/* 00C01C 8000C46C 44061000 */  mfc1        $a2, $f2
/* 00C020 8000C470 44071000 */  mfc1        $a3, $f2
/* 00C024 8000C474 E7B40010 */  swc1        $f20, 0x10($sp)
/* 00C028 8000C478 0C0030C8 */  jal         func_8000C320
/* 00C02C 8000C47C E7A60014 */   swc1       $f6, 0x14($sp)
/* 00C030 8000C480 44801000 */  mtc1        $zero, $f2
/* 00C034 8000C484 E6200000 */  swc1        $f0, 0x0($s1)
/* 00C038 8000C488 8FAF0040 */  lw          $t7, 0x40($sp)
/* 00C03C 8000C48C C7A80050 */  lwc1        $f8, 0x50($sp)
/* 00C040 8000C490 C60E0004 */  lwc1        $f14, 0x4($s0)
/* 00C044 8000C494 44061000 */  mfc1        $a2, $f2
/* 00C048 8000C498 44071000 */  mfc1        $a3, $f2
/* 00C04C 8000C49C C5EC0004 */  lwc1        $f12, 0x4($t7)
/* 00C050 8000C4A0 E7B40010 */  swc1        $f20, 0x10($sp)
/* 00C054 8000C4A4 0C0030C8 */  jal         func_8000C320
/* 00C058 8000C4A8 E7A80014 */   swc1       $f8, 0x14($sp)
/* 00C05C 8000C4AC 44801000 */  mtc1        $zero, $f2
/* 00C060 8000C4B0 E6200004 */  swc1        $f0, 0x4($s1)
/* 00C064 8000C4B4 8FB80040 */  lw          $t8, 0x40($sp)
/* 00C068 8000C4B8 C7AA0050 */  lwc1        $f10, 0x50($sp)
/* 00C06C 8000C4BC C60E0008 */  lwc1        $f14, 0x8($s0)
/* 00C070 8000C4C0 44061000 */  mfc1        $a2, $f2
/* 00C074 8000C4C4 44071000 */  mfc1        $a3, $f2
/* 00C078 8000C4C8 C70C0008 */  lwc1        $f12, 0x8($t8)
/* 00C07C 8000C4CC E7B40010 */  swc1        $f20, 0x10($sp)
/* 00C080 8000C4D0 0C0030C8 */  jal         func_8000C320
/* 00C084 8000C4D4 E7AA0014 */   swc1       $f10, 0x14($sp)
/* 00C088 8000C4D8 E6200008 */  swc1        $f0, 0x8($s1)
/* 00C08C 8000C4DC C6100000 */  lwc1        $f16, 0x0($s0)
/* 00C090 8000C4E0 C6320000 */  lwc1        $f18, 0x0($s1)
/* 00C094 8000C4E4 27A40030 */  addiu       $a0, $sp, 0x30
/* 00C098 8000C4E8 46128101 */  sub.s       $f4, $f16, $f18
/* 00C09C 8000C4EC E7A40030 */  swc1        $f4, 0x30($sp)
/* 00C0A0 8000C4F0 C6280004 */  lwc1        $f8, 0x4($s1)
/* 00C0A4 8000C4F4 C6060004 */  lwc1        $f6, 0x4($s0)
/* 00C0A8 8000C4F8 46083281 */  sub.s       $f10, $f6, $f8
/* 00C0AC 8000C4FC E7AA0034 */  swc1        $f10, 0x34($sp)
/* 00C0B0 8000C500 C6320008 */  lwc1        $f18, 0x8($s1)
/* 00C0B4 8000C504 C6100008 */  lwc1        $f16, 0x8($s0)
/* 00C0B8 8000C508 46128101 */  sub.s       $f4, $f16, $f18
/* 00C0BC 8000C50C 0C00E3AC */  jal         func_80038EB0
/* 00C0C0 8000C510 E7A40038 */   swc1       $f4, 0x38($sp)
/* 00C0C4 8000C514 3C01800A */  lui         $at, %hi(D_800A5DE0)
/* 00C0C8 8000C518 C4265DE0 */  lwc1        $f6, %lo(D_800A5DE0)($at)
/* 00C0CC 8000C51C 3C01800A */  lui         $at, %hi(D_800A5DE4)
/* 00C0D0 8000C520 00001025 */  move        $v0, $zero
/* 00C0D4 8000C524 4606003C */  c.lt.s      $f0, $f6
/* 00C0D8 8000C528 00000000 */  nop
/* 00C0DC 8000C52C 4500000E */  bc1f        .L8000C568
/* 00C0E0 8000C530 00000000 */   nop
/* 00C0E4 8000C534 C4285DE4 */  lwc1        $f8, %lo(D_800A5DE4)($at)
/* 00C0E8 8000C538 4600403C */  c.lt.s      $f8, $f0
/* 00C0EC 8000C53C 00000000 */  nop
/* 00C0F0 8000C540 45000009 */  bc1f        .L8000C568
/* 00C0F4 8000C544 00000000 */   nop
/* 00C0F8 8000C548 C60A0000 */  lwc1        $f10, 0x0($s0)
/* 00C0FC 8000C54C 2402FFFF */  addiu       $v0, $zero, -0x1
/* 00C100 8000C550 E62A0000 */  swc1        $f10, 0x0($s1)
/* 00C104 8000C554 C6100004 */  lwc1        $f16, 0x4($s0)
/* 00C108 8000C558 E6300004 */  swc1        $f16, 0x4($s1)
/* 00C10C 8000C55C C6120008 */  lwc1        $f18, 0x8($s0)
/* 00C110 8000C560 10000001 */  b           .L8000C568
/* 00C114 8000C564 E6320008 */   swc1       $f18, 0x8($s1)
.L8000C568:
/* 00C118 8000C568 8FBF002C */  lw          $ra, 0x2c($sp)
/* 00C11C 8000C56C D7B40018 */  ldc1        $f20, 0x18($sp)
/* 00C120 8000C570 8FB00024 */  lw          $s0, 0x24($sp)
/* 00C124 8000C574 8FB10028 */  lw          $s1, 0x28($sp)
/* 00C128 8000C578 03E00008 */  jr          $ra
/* 00C12C 8000C57C 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_8000C580 # 23
/* 00C130 8000C580 04A00003 */  bltz        $a1, .L8000C590
/* 00C134 8000C584 3C013F80 */   lui        $at, 0x3f80
/* 00C138 8000C588 10000002 */  b           .L8000C594
/* 00C13C 8000C58C 00A01025 */   move       $v0, $a1
.L8000C590:
/* 00C140 8000C590 00051023 */  negu        $v0, $a1
.L8000C594:
/* 00C144 8000C594 44817000 */  mtc1        $at, $f14
/* 00C148 8000C598 10400009 */  beqz        $v0, .L8000C5C0
/* 00C14C 8000C59C 46007086 */   mov.s      $f2, $f14
.L8000C5A0:
/* 00C150 8000C5A0 304E0001 */  andi        $t6, $v0, 0x1
/* 00C154 8000C5A4 11C00003 */  beqz        $t6, .L8000C5B4
/* 00C158 8000C5A8 00027843 */   sra        $t7, $v0, 1
/* 00C15C 8000C5AC 460C1082 */  mul.s       $f2, $f2, $f12
/* 00C160 8000C5B0 00000000 */  nop
.L8000C5B4:
/* 00C164 8000C5B4 460C6302 */  mul.s       $f12, $f12, $f12
/* 00C168 8000C5B8 15E0FFF9 */  bnez        $t7, .L8000C5A0
/* 00C16C 8000C5BC 01E01025 */   move       $v0, $t7
.L8000C5C0:
/* 00C170 8000C5C0 04A20004 */  bltzl       $a1, .L8000C5D4
/* 00C174 8000C5C4 46027003 */   div.s      $f0, $f14, $f2
/* 00C178 8000C5C8 03E00008 */  jr          $ra
/* 00C17C 8000C5CC 46001006 */   mov.s      $f0, $f2
/* 00C180 8000C5D0 46027003 */  div.s       $f0, $f14, $f2
.L8000C5D4:
/* 00C184 8000C5D4 03E00008 */  jr          $ra
/* 00C188 8000C5D8 00000000 */   nop

glabel func_8000C5DC # 24
/* 00C18C 8000C5DC 2403FFFF */  addiu       $v1, $zero, -0x1
/* 00C190 8000C5E0 1880002A */  blez        $a0, .L8000C68C
/* 00C194 8000C5E4 00001025 */   move       $v0, $zero
/* 00C198 8000C5E8 3C07EDB8 */  lui         $a3, 0xedb8
/* 00C19C 8000C5EC 34E78320 */  ori         $a3, $a3, 0x8320
/* 00C1A0 8000C5F0 00A03025 */  move        $a2, $a1
/* 00C1A4 8000C5F4 24080008 */  addiu       $t0, $zero, 0x8
.L8000C5F8:
/* 00C1A8 8000C5F8 90CE0000 */  lbu         $t6, 0x0($a2)
/* 00C1AC 8000C5FC 24420001 */  addiu       $v0, $v0, 0x1
/* 00C1B0 8000C600 00002825 */  move        $a1, $zero
/* 00C1B4 8000C604 006E1826 */  xor         $v1, $v1, $t6
/* 00C1B8 8000C608 306F0001 */  andi        $t7, $v1, 0x1
.L8000C60C:
/* 00C1BC 8000C60C 11E00004 */  beqz        $t7, .L8000C620
/* 00C1C0 8000C610 24A50004 */   addiu      $a1, $a1, 0x4
/* 00C1C4 8000C614 0003C042 */  srl         $t8, $v1, 1
/* 00C1C8 8000C618 10000003 */  b           .L8000C628
/* 00C1CC 8000C61C 03071826 */   xor        $v1, $t8, $a3
.L8000C620:
/* 00C1D0 8000C620 0003C842 */  srl         $t9, $v1, 1
/* 00C1D4 8000C624 03201825 */  move        $v1, $t9
.L8000C628:
/* 00C1D8 8000C628 30690001 */  andi        $t1, $v1, 0x1
/* 00C1DC 8000C62C 11200004 */  beqz        $t1, .L8000C640
/* 00C1E0 8000C630 00035842 */   srl        $t3, $v1, 1
/* 00C1E4 8000C634 00035042 */  srl         $t2, $v1, 1
/* 00C1E8 8000C638 10000002 */  b           .L8000C644
/* 00C1EC 8000C63C 01471826 */   xor        $v1, $t2, $a3
.L8000C640:
/* 00C1F0 8000C640 01601825 */  move        $v1, $t3
.L8000C644:
/* 00C1F4 8000C644 306C0001 */  andi        $t4, $v1, 0x1
/* 00C1F8 8000C648 11800004 */  beqz        $t4, .L8000C65C
/* 00C1FC 8000C64C 00037042 */   srl        $t6, $v1, 1
/* 00C200 8000C650 00036842 */  srl         $t5, $v1, 1
/* 00C204 8000C654 10000002 */  b           .L8000C660
/* 00C208 8000C658 01A71826 */   xor        $v1, $t5, $a3
.L8000C65C:
/* 00C20C 8000C65C 01C01825 */  move        $v1, $t6
.L8000C660:
/* 00C210 8000C660 306F0001 */  andi        $t7, $v1, 0x1
/* 00C214 8000C664 11E00004 */  beqz        $t7, .L8000C678
/* 00C218 8000C668 0003C842 */   srl        $t9, $v1, 1
/* 00C21C 8000C66C 0003C042 */  srl         $t8, $v1, 1
/* 00C220 8000C670 10000002 */  b           .L8000C67C
/* 00C224 8000C674 03071826 */   xor        $v1, $t8, $a3
.L8000C678:
/* 00C228 8000C678 03201825 */  move        $v1, $t9
.L8000C67C:
/* 00C22C 8000C67C 54A8FFE3 */  bnel        $a1, $t0, .L8000C60C
/* 00C230 8000C680 306F0001 */   andi       $t7, $v1, 0x1
/* 00C234 8000C684 1444FFDC */  bne         $v0, $a0, .L8000C5F8
/* 00C238 8000C688 24C60001 */   addiu      $a2, $a2, 0x1
.L8000C68C:
/* 00C23C 8000C68C 2401FFFF */  addiu       $at, $zero, -0x1
/* 00C240 8000C690 03E00008 */  jr          $ra
/* 00C244 8000C694 00611026 */   xor        $v0, $v1, $at

glabel func_8000C698 # 25
/* 00C248 8000C698 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00C24C 8000C69C AFB30024 */  sw          $s3, 0x24($sp)
/* 00C250 8000C6A0 00809825 */  move        $s3, $a0
/* 00C254 8000C6A4 AFBF002C */  sw          $ra, 0x2c($sp)
/* 00C258 8000C6A8 AFB40028 */  sw          $s4, 0x28($sp)
/* 00C25C 8000C6AC AFB20020 */  sw          $s2, 0x20($sp)
/* 00C260 8000C6B0 AFB1001C */  sw          $s1, 0x1c($sp)
/* 00C264 8000C6B4 18800004 */  blez        $a0, .L8000C6C8
/* 00C268 8000C6B8 AFB00018 */   sw         $s0, 0x18($sp)
/* 00C26C 8000C6BC 2C810021 */  sltiu       $at, $a0, 0x21
/* 00C270 8000C6C0 14200005 */  bnez        $at, .L8000C6D8
/* 00C274 8000C6C4 3C0E8007 */   lui        $t6, %hi(D_80069320)
.L8000C6C8:
/* 00C278 8000C6C8 0C00E500 */  jal         func_80039400
/* 00C27C 8000C6CC 02602025 */   move       $a0, $s3
/* 00C280 8000C6D0 10000030 */  b           .L8000C794
/* 00C284 8000C6D4 8FBF002C */   lw         $ra, 0x2c($sp)
.L8000C6D8:
/* 00C288 8000C6D8 8DCE9320 */  lw          $t6, %lo(D_80069320)($t6)
/* 00C28C 8000C6DC 126E0015 */  beq         $s3, $t6, .L8000C734
/* 00C290 8000C6E0 00000000 */   nop
/* 00C294 8000C6E4 1A600011 */  blez        $s3, .L8000C72C
/* 00C298 8000C6E8 00008825 */   move       $s1, $zero
/* 00C29C 8000C6EC 3C10800C */  lui         $s0, %hi(D_800BAF90)
/* 00C2A0 8000C6F0 3C14800C */  lui         $s4, %hi(D_800BAF90)
/* 00C2A4 8000C6F4 2694AF90 */  addiu       $s4, $s4, %lo(D_800BAF90)
/* 00C2A8 8000C6F8 2610AF90 */  addiu       $s0, $s0, %lo(D_800BAF90)
.L8000C6FC:
/* 00C2AC 8000C6FC 26320001 */  addiu       $s2, $s1, 0x1
/* 00C2B0 8000C700 A2110000 */  sb          $s1, 0x0($s0)
/* 00C2B4 8000C704 0C00E500 */  jal         func_80039400
/* 00C2B8 8000C708 02402025 */   move       $a0, $s2
/* 00C2BC 8000C70C 920F0000 */  lbu         $t7, 0x0($s0)
/* 00C2C0 8000C710 02821821 */  addu        $v1, $s4, $v0
/* 00C2C4 8000C714 90640000 */  lbu         $a0, 0x0($v1)
/* 00C2C8 8000C718 A06F0000 */  sb          $t7, 0x0($v1)
/* 00C2CC 8000C71C 02408825 */  move        $s1, $s2
/* 00C2D0 8000C720 26100001 */  addiu       $s0, $s0, 0x1
/* 00C2D4 8000C724 1653FFF5 */  bne         $s2, $s3, .L8000C6FC
/* 00C2D8 8000C728 A204FFFF */   sb         $a0, -0x1($s0)
.L8000C72C:
/* 00C2DC 8000C72C 3C018007 */  lui         $at, %hi(D_80069320)
/* 00C2E0 8000C730 AC339320 */  sw          $s3, %lo(D_80069320)($at)
.L8000C734:
/* 00C2E4 8000C734 02730019 */  multu       $s3, $s3
/* 00C2E8 8000C738 3C14800C */  lui         $s4, %hi(D_800BAF90)
/* 00C2EC 8000C73C 2694AF90 */  addiu       $s4, $s4, %lo(D_800BAF90)
/* 00C2F0 8000C740 00002012 */  mflo        $a0
/* 00C2F4 8000C744 0C00E500 */  jal         func_80039400
/* 00C2F8 8000C748 00000000 */   nop
/* 00C2FC 8000C74C 2443FFFF */  addiu       $v1, $v0, -0x1
/* 00C300 8000C750 92840000 */  lbu         $a0, 0x0($s4)
/* 00C304 8000C754 0460000C */  bltz        $v1, .L8000C788
/* 00C308 8000C758 24110001 */   addiu      $s1, $zero, 0x1
/* 00C30C 8000C75C 3C10800C */  lui         $s0, %hi(D_800BAF90 + 0x1)
/* 00C310 8000C760 2610AF91 */  addiu       $s0, $s0, %lo(D_800BAF90 + 0x1)
.L8000C764:
/* 00C314 8000C764 26310001 */  addiu       $s1, $s1, 0x1
/* 00C318 8000C768 0071C023 */  subu        $t8, $v1, $s1
/* 00C31C 8000C76C 03111823 */  subu        $v1, $t8, $s1
/* 00C320 8000C770 00801025 */  move        $v0, $a0
/* 00C324 8000C774 24630001 */  addiu       $v1, $v1, 0x1
/* 00C328 8000C778 92040000 */  lbu         $a0, 0x0($s0)
/* 00C32C 8000C77C 26100001 */  addiu       $s0, $s0, 0x1
/* 00C330 8000C780 0461FFF8 */  bgez        $v1, .L8000C764
/* 00C334 8000C784 A202FFFF */   sb         $v0, -0x1($s0)
.L8000C788:
/* 00C338 8000C788 A2840000 */  sb          $a0, 0x0($s4)
/* 00C33C 8000C78C 00801025 */  move        $v0, $a0
/* 00C340 8000C790 8FBF002C */  lw          $ra, 0x2c($sp)
.L8000C794:
/* 00C344 8000C794 8FB00018 */  lw          $s0, 0x18($sp)
/* 00C348 8000C798 8FB1001C */  lw          $s1, 0x1c($sp)
/* 00C34C 8000C79C 8FB20020 */  lw          $s2, 0x20($sp)
/* 00C350 8000C7A0 8FB30024 */  lw          $s3, 0x24($sp)
/* 00C354 8000C7A4 8FB40028 */  lw          $s4, 0x28($sp)
/* 00C358 8000C7A8 03E00008 */  jr          $ra
/* 00C35C 8000C7AC 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8000C7B0 # 26
/* 00C360 8000C7B0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00C364 8000C7B4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00C368 8000C7B8 C48C0000 */  lwc1        $f12, 0x0($a0)
/* 00C36C 8000C7BC C48E0008 */  lwc1        $f14, 0x8($a0)
/* 00C370 8000C7C0 3C01800A */  lui         $at, %hi(D_800A6180)
/* 00C374 8000C7C4 460C6102 */  mul.s       $f4, $f12, $f12
/* 00C378 8000C7C8 C4286180 */  lwc1        $f8, %lo(D_800A6180)($at)
/* 00C37C 8000C7CC 00A03025 */  move        $a2, $a1
/* 00C380 8000C7D0 460E7182 */  mul.s       $f6, $f14, $f14
/* 00C384 8000C7D4 3C01800A */  lui         $at, %hi(D_800A6184)
/* 00C388 8000C7D8 46062000 */  add.s       $f0, $f4, $f6
/* 00C38C 8000C7DC 46000004 */  sqrt.s      $f0, $f0
/* 00C390 8000C7E0 4608003C */  c.lt.s      $f0, $f8
/* 00C394 8000C7E4 46000086 */  mov.s       $f2, $f0
/* 00C398 8000C7E8 46026303 */  div.s       $f12, $f12, $f2
/* 00C39C 8000C7EC 4502000A */  bc1fl       .L8000C818
/* 00C3A0 8000C7F0 46027383 */   div.s      $f14, $f14, $f2
/* 00C3A4 8000C7F4 C42A6184 */  lwc1        $f10, %lo(D_800A6184)($at)
/* 00C3A8 8000C7F8 4600503C */  c.lt.s      $f10, $f0
/* 00C3AC 8000C7FC 00000000 */  nop
/* 00C3B0 8000C800 45020005 */  bc1fl       .L8000C818
/* 00C3B4 8000C804 46027383 */   div.s      $f14, $f14, $f2
/* 00C3B8 8000C808 44808000 */  mtc1        $zero, $f16
/* 00C3BC 8000C80C 00000000 */  nop
/* 00C3C0 8000C810 E4B00000 */  swc1        $f16, 0x0($a1)
/* 00C3C4 8000C814 46027383 */  div.s       $f14, $f14, $f2
.L8000C818:
/* 00C3C8 8000C818 AFA40018 */  sw          $a0, 0x18($sp)
/* 00C3CC 8000C81C 0C00E6FE */  jal         func_80039BF8
/* 00C3D0 8000C820 AFA6001C */   sw         $a2, 0x1c($sp)
/* 00C3D4 8000C824 8FA6001C */  lw          $a2, 0x1c($sp)
/* 00C3D8 8000C828 46000087 */  neg.s       $f2, $f0
/* 00C3DC 8000C82C 8FA50018 */  lw          $a1, 0x18($sp)
/* 00C3E0 8000C830 46001307 */  neg.s       $f12, $f2
/* 00C3E4 8000C834 0C002FE9 */  jal         func_8000BFA4
/* 00C3E8 8000C838 E4C20000 */   swc1       $f2, 0x0($a2)
/* 00C3EC 8000C83C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00C3F0 8000C840 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00C3F4 8000C844 03E00008 */  jr          $ra
/* 00C3F8 8000C848 00000000 */   nop

glabel func_8000C84C # 27
/* 00C3FC 8000C84C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00C400 8000C850 AFA40028 */  sw          $a0, 0x28($sp)
/* 00C404 8000C854 8FAF0028 */  lw          $t7, 0x28($sp)
/* 00C408 8000C858 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00C40C 8000C85C AFA5002C */  sw          $a1, 0x2c($sp)
/* 00C410 8000C860 8CA20054 */  lw          $v0, 0x54($a1)
/* 00C414 8000C864 8DE50000 */  lw          $a1, 0x0($t7)
/* 00C418 8000C868 8DE70008 */  lw          $a3, 0x8($t7)
/* 00C41C 8000C86C 8DE60004 */  lw          $a2, 0x4($t7)
/* 00C420 8000C870 24440018 */  addiu       $a0, $v0, 0x18
/* 00C424 8000C874 AFA4001C */  sw          $a0, 0x1c($sp)
/* 00C428 8000C878 0C00E09D */  jal         func_80038274
/* 00C42C 8000C87C AFA20024 */   sw         $v0, 0x24($sp)
/* 00C430 8000C880 8FA4001C */  lw          $a0, 0x1c($sp)
/* 00C434 8000C884 0C0031EC */  jal         func_8000C7B0
/* 00C438 8000C888 27A50020 */   addiu      $a1, $sp, 0x20
/* 00C43C 8000C88C 8FB80024 */  lw          $t8, 0x24($sp)
/* 00C440 8000C890 C7A40020 */  lwc1        $f4, 0x20($sp)
/* 00C444 8000C894 8FA4002C */  lw          $a0, 0x2c($sp)
/* 00C448 8000C898 C7060048 */  lwc1        $f6, 0x48($t8)
/* 00C44C 8000C89C 24060001 */  addiu       $a2, $zero, 0x1
/* 00C450 8000C8A0 46062201 */  sub.s       $f8, $f4, $f6
/* 00C454 8000C8A4 44054000 */  mfc1        $a1, $f8
/* 00C458 8000C8A8 0C0051BB */  jal         func_800146EC
/* 00C45C 8000C8AC 00000000 */   nop
/* 00C460 8000C8B0 C7AA0020 */  lwc1        $f10, 0x20($sp)
/* 00C464 8000C8B4 8FB90024 */  lw          $t9, 0x24($sp)
/* 00C468 8000C8B8 E72A0048 */  swc1        $f10, 0x48($t9)
/* 00C46C 8000C8BC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00C470 8000C8C0 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00C474 8000C8C4 03E00008 */  jr          $ra
/* 00C478 8000C8C8 00000000 */   nop

glabel func_8000C8CC # 28
/* 00C47C 8000C8CC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00C480 8000C8D0 04800004 */  bltz        $a0, .L8000C8E4
/* 00C484 8000C8D4 AFBF0014 */   sw         $ra, 0x14($sp)
/* 00C488 8000C8D8 28810149 */  slti        $at, $a0, 0x149
/* 00C48C 8000C8DC 14200003 */  bnez        $at, .L8000C8EC
/* 00C490 8000C8E0 00047080 */   sll        $t6, $a0, 2
.L8000C8E4:
/* 00C494 8000C8E4 10000008 */  b           .L8000C908
/* 00C498 8000C8E8 00001025 */   move       $v0, $zero
.L8000C8EC:
/* 00C49C 8000C8EC 01C47023 */  subu        $t6, $t6, $a0
/* 00C4A0 8000C8F0 000E7080 */  sll         $t6, $t6, 2
/* 00C4A4 8000C8F4 01C47023 */  subu        $t6, $t6, $a0
/* 00C4A8 8000C8F8 3C0F8007 */  lui         $t7, %hi(D_80069330)
/* 00C4AC 8000C8FC 25EF9330 */  addiu       $t7, $t7, %lo(D_80069330)
/* 00C4B0 8000C900 000E7080 */  sll         $t6, $t6, 2
/* 00C4B4 8000C904 01CF1021 */  addu        $v0, $t6, $t7
.L8000C908:
/* 00C4B8 8000C908 10400007 */  beqz        $v0, .L8000C928
/* 00C4BC 8000C90C 00000000 */   nop
/* 00C4C0 8000C910 8C58000C */  lw          $t8, 0xc($v0)
/* 00C4C4 8000C914 24010001 */  addiu       $at, $zero, 0x1
/* 00C4C8 8000C918 3C04800C */  lui         $a0, %hi(D_800BB0B0)
/* 00C4CC 8000C91C 33190007 */  andi        $t9, $t8, 0x7
/* 00C4D0 8000C920 13210003 */  beq         $t9, $at, .L8000C930
/* 00C4D4 8000C924 2484B0B0 */   addiu      $a0, $a0, %lo(D_800BB0B0)
.L8000C928:
/* 00C4D8 8000C928 10000005 */  b           .L8000C940
/* 00C4DC 8000C92C 00001025 */   move       $v0, $zero
.L8000C930:
/* 00C4E0 8000C930 84450010 */  lh          $a1, 0x10($v0)
/* 00C4E4 8000C934 0C00565E */  jal         func_80015978
/* 00C4E8 8000C938 27A60018 */   addiu      $a2, $sp, 0x18
/* 00C4EC 8000C93C 8FA20018 */  lw          $v0, 0x18($sp)
.L8000C940:
/* 00C4F0 8000C940 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00C4F4 8000C944 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00C4F8 8000C948 03E00008 */  jr          $ra
/* 00C4FC 8000C94C 00000000 */   nop

glabel func_8000C950 # 29
/* 00C500 8000C950 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00C504 8000C954 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00C508 8000C958 8C820054 */  lw          $v0, 0x54($a0)
/* 00C50C 8000C95C 24010001 */  addiu       $at, $zero, 0x1
/* 00C510 8000C960 3C04800C */  lui         $a0, %hi(D_800BB0B0)
/* 00C514 8000C964 8C4300F8 */  lw          $v1, 0xf8($v0)
/* 00C518 8000C968 2484B0B0 */  addiu       $a0, $a0, %lo(D_800BB0B0)
/* 00C51C 8000C96C 27A60020 */  addiu       $a2, $sp, 0x20
/* 00C520 8000C970 306E0007 */  andi        $t6, $v1, 0x7
/* 00C524 8000C974 11C10003 */  beq         $t6, $at, .L8000C984
/* 00C528 8000C978 24010003 */   addiu      $at, $zero, 0x3
/* 00C52C 8000C97C 55C10004 */  bnel        $t6, $at, .L8000C990
/* 00C530 8000C980 8FBF0014 */   lw         $ra, 0x14($sp)
.L8000C984:
/* 00C534 8000C984 0C00565E */  jal         func_80015978
/* 00C538 8000C988 844500FC */   lh         $a1, 0xfc($v0)
/* 00C53C 8000C98C 8FBF0014 */  lw          $ra, 0x14($sp)
.L8000C990:
/* 00C540 8000C990 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00C544 8000C994 03E00008 */  jr          $ra
/* 00C548 8000C998 00000000 */   nop

glabel func_8000C99C # 30
/* 00C54C 8000C99C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00C550 8000C9A0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00C554 8000C9A4 8C820054 */  lw          $v0, 0x54($a0)
/* 00C558 8000C9A8 44800000 */  mtc1        $zero, $f0
/* 00C55C 8000C9AC 00002825 */  move        $a1, $zero
/* 00C560 8000C9B0 A440011C */  sh          $zero, 0x11c($v0)
/* 00C564 8000C9B4 E4400134 */  swc1        $f0, 0x134($v0)
/* 00C568 8000C9B8 0C003274 */  jal         func_8000C9D0
/* 00C56C 8000C9BC E4400138 */   swc1       $f0, 0x138($v0)
/* 00C570 8000C9C0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00C574 8000C9C4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00C578 8000C9C8 03E00008 */  jr          $ra
/* 00C57C 8000C9CC 00000000 */   nop

glabel func_8000C9D0 # 31
/* 00C580 8000C9D0 8C820054 */  lw          $v0, 0x54($a0)
/* 00C584 8000C9D4 24040004 */  addiu       $a0, $zero, 0x4
/* 00C588 8000C9D8 8C460050 */  lw          $a2, 0x50($v0)
/* 00C58C 8000C9DC A445011A */  sh          $a1, 0x11a($v0)
/* 00C590 8000C9E0 28C10002 */  slti        $at, $a2, 0x2
/* 00C594 8000C9E4 14200016 */  bnez        $at, .L8000CA40
/* 00C598 8000C9E8 00000000 */   nop
/* 00C59C 8000C9EC 8C4E004C */  lw          $t6, 0x4c($v0)
.L8000C9F0:
/* 00C5A0 8000C9F0 01C47821 */  addu        $t7, $t6, $a0
/* 00C5A4 8000C9F4 8DE30000 */  lw          $v1, 0x0($t7)
/* 00C5A8 8000C9F8 24840004 */  addiu       $a0, $a0, 0x4
/* 00C5AC 8000C9FC 54600004 */  bnel        $v1, $zero, .L8000CA10
/* 00C5B0 8000CA00 94670034 */   lhu        $a3, 0x34($v1)
/* 00C5B4 8000CA04 1000000B */  b           .L8000CA34
/* 00C5B8 8000CA08 00061880 */   sll        $v1, $a2, 2
/* 00C5BC 8000CA0C 94670034 */  lhu         $a3, 0x34($v1)
.L8000CA10:
/* 00C5C0 8000CA10 28E10026 */  slti        $at, $a3, 0x26
/* 00C5C4 8000CA14 14200006 */  bnez        $at, .L8000CA30
/* 00C5C8 8000CA18 28E10064 */   slti       $at, $a3, 0x64
/* 00C5CC 8000CA1C 50200005 */  beql        $at, $zero, .L8000CA34
/* 00C5D0 8000CA20 00061880 */   sll        $v1, $a2, 2
/* 00C5D4 8000CA24 8C780054 */  lw          $t8, 0x54($v1)
/* 00C5D8 8000CA28 A7050000 */  sh          $a1, 0x0($t8)
/* 00C5DC 8000CA2C 8C460050 */  lw          $a2, 0x50($v0)
.L8000CA30:
/* 00C5E0 8000CA30 00061880 */  sll         $v1, $a2, 2
.L8000CA34:
/* 00C5E4 8000CA34 0083082A */  slt         $at, $a0, $v1
/* 00C5E8 8000CA38 5420FFED */  bnel        $at, $zero, .L8000C9F0
/* 00C5EC 8000CA3C 8C4E004C */   lw         $t6, 0x4c($v0)
.L8000CA40:
/* 00C5F0 8000CA40 03E00008 */  jr          $ra
/* 00C5F4 8000CA44 00000000 */   nop

glabel func_8000CA48 # 32
/* 00C5F8 8000CA48 27BDFF68 */  addiu       $sp, $sp, -0x98
/* 00C5FC 8000CA4C AFBF0044 */  sw          $ra, 0x44($sp)
/* 00C600 8000CA50 AFBE0040 */  sw          $fp, 0x40($sp)
/* 00C604 8000CA54 AFB7003C */  sw          $s7, 0x3c($sp)
/* 00C608 8000CA58 AFB60038 */  sw          $s6, 0x38($sp)
/* 00C60C 8000CA5C AFB50034 */  sw          $s5, 0x34($sp)
/* 00C610 8000CA60 AFB40030 */  sw          $s4, 0x30($sp)
/* 00C614 8000CA64 AFB3002C */  sw          $s3, 0x2c($sp)
/* 00C618 8000CA68 AFB20028 */  sw          $s2, 0x28($sp)
/* 00C61C 8000CA6C AFB10024 */  sw          $s1, 0x24($sp)
/* 00C620 8000CA70 AFB00020 */  sw          $s0, 0x20($sp)
/* 00C624 8000CA74 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 00C628 8000CA78 8C940054 */  lw          $s4, 0x54($a0)
/* 00C62C 8000CA7C AFA40098 */  sw          $a0, 0x98($sp)
/* 00C630 8000CA80 0C003274 */  jal         func_8000C9D0
/* 00C634 8000CA84 00002825 */   move       $a1, $zero
/* 00C638 8000CA88 868500FC */  lh          $a1, 0xfc($s4)
/* 00C63C 8000CA8C C6840104 */  lwc1        $f4, 0x104($s4)
/* 00C640 8000CA90 3C018007 */  lui         $at, %hi(D_800731C0)
/* 00C644 8000CA94 00057080 */  sll         $t6, $a1, 2
/* 00C648 8000CA98 002E0821 */  addu        $at, $at, $t6
/* 00C64C 8000CA9C E6840130 */  swc1        $f4, 0x130($s4)
/* 00C650 8000CAA0 C42031C0 */  lwc1        $f0, %lo(D_800731C0)($at)
/* 00C654 8000CAA4 3C04800C */  lui         $a0, %hi(D_800BB0B0)
/* 00C658 8000CAA8 2484B0B0 */  addiu       $a0, $a0, %lo(D_800BB0B0)
/* 00C65C 8000CAAC E6800134 */  swc1        $f0, 0x134($s4)
/* 00C660 8000CAB0 0C005678 */  jal         func_800159E0
/* 00C664 8000CAB4 E6800138 */   swc1       $f0, 0x138($s4)
/* 00C668 8000CAB8 868300FC */  lh          $v1, 0xfc($s4)
/* 00C66C 8000CABC 3C198007 */  lui         $t9, %hi(D_80073558)
/* 00C670 8000CAC0 8FA70098 */  lw          $a3, 0x98($sp)
/* 00C674 8000CAC4 00037880 */  sll         $t7, $v1, 2
/* 00C678 8000CAC8 032FC821 */  addu        $t9, $t9, $t7
/* 00C67C 8000CACC 8F393558 */  lw          $t9, %lo(D_80073558)($t9)
/* 00C680 8000CAD0 C4E60004 */  lwc1        $f6, 0x4($a3)
/* 00C684 8000CAD4 3C188007 */  lui         $t8, %hi(D_80072E28)
/* 00C688 8000CAD8 00594021 */  addu        $t0, $v0, $t9
/* 00C68C 8000CADC C5080000 */  lwc1        $f8, 0x0($t0)
/* 00C690 8000CAE0 030FC021 */  addu        $t8, $t8, $t7
/* 00C694 8000CAE4 8F182E28 */  lw          $t8, %lo(D_80072E28)($t8)
/* 00C698 8000CAE8 46083282 */  mul.s       $f10, $f6, $f8
/* 00C69C 8000CAEC 00409825 */  move        $s3, $v0
/* 00C6A0 8000CAF0 03029021 */  addu        $s2, $t8, $v0
/* 00C6A4 8000CAF4 E68A0008 */  swc1        $f10, 0x8($s4)
/* 00C6A8 8000CAF8 C6900008 */  lwc1        $f16, 0x8($s4)
/* 00C6AC 8000CAFC E6900004 */  swc1        $f16, 0x4($s4)
/* 00C6B0 8000CB00 8E450000 */  lw          $a1, 0x0($s2)
/* 00C6B4 8000CB04 18A00041 */  blez        $a1, .L8000CC0C
/* 00C6B8 8000CB08 00000000 */   nop
/* 00C6BC 8000CB0C 4480A000 */  mtc1        $zero, $f20
/* 00C6C0 8000CB10 241E0001 */  addiu       $fp, $zero, 0x1
.L8000CB14:
/* 00C6C4 8000CB14 18A0002E */  blez        $a1, .L8000CBD0
/* 00C6C8 8000CB18 8FA70098 */   lw         $a3, 0x98($sp)
/* 00C6CC 8000CB1C 28A10026 */  slti        $at, $a1, 0x26
/* 00C6D0 8000CB20 1020002B */  beqz        $at, .L8000CBD0
/* 00C6D4 8000CB24 2690023C */   addiu      $s0, $s4, 0x23c
/* 00C6D8 8000CB28 A69E011A */  sh          $fp, 0x11a($s4)
/* 00C6DC 8000CB2C 8E490004 */  lw          $t1, 0x4($s2)
/* 00C6E0 8000CB30 02002025 */  move        $a0, $s0
/* 00C6E4 8000CB34 02603025 */  move        $a2, $s3
/* 00C6E8 8000CB38 269102B4 */  addiu       $s1, $s4, 0x2b4
/* 00C6EC 8000CB3C 269502E4 */  addiu       $s5, $s4, 0x2e4
/* 00C6F0 8000CB40 26960018 */  addiu       $s6, $s4, 0x18
/* 00C6F4 8000CB44 26970048 */  addiu       $s7, $s4, 0x48
/* 00C6F8 8000CB48 0C002353 */  jal         func_80008D4C
/* 00C6FC 8000CB4C 02692821 */   addu       $a1, $s3, $t1
/* 00C700 8000CB50 8E4A0004 */  lw          $t2, 0x4($s2)
/* 00C704 8000CB54 02202025 */  move        $a0, $s1
/* 00C708 8000CB58 02603025 */  move        $a2, $s3
/* 00C70C 8000CB5C 026A2821 */  addu        $a1, $s3, $t2
/* 00C710 8000CB60 0C00236B */  jal         func_80008DAC
/* 00C714 8000CB64 24A50018 */   addiu      $a1, $a1, 0x18
/* 00C718 8000CB68 E7B4007C */  swc1        $f20, 0x7c($sp)
/* 00C71C 8000CB6C E7B40080 */  swc1        $f20, 0x80($sp)
/* 00C720 8000CB70 E7B40084 */  swc1        $f20, 0x84($sp)
/* 00C724 8000CB74 02A02025 */  move        $a0, $s5
/* 00C728 8000CB78 0C013C58 */  jal         func_8004F160
/* 00C72C 8000CB7C 2405000C */   addiu      $a1, $zero, 0xc
/* 00C730 8000CB80 4407A000 */  mfc1        $a3, $f20
/* 00C734 8000CB84 02202025 */  move        $a0, $s1
/* 00C738 8000CB88 27A5007C */  addiu       $a1, $sp, 0x7c
/* 00C73C 8000CB8C 0C0023B5 */  jal         func_80008ED4
/* 00C740 8000CB90 00003025 */   move       $a2, $zero
/* 00C744 8000CB94 4407A000 */  mfc1        $a3, $f20
/* 00C748 8000CB98 02002025 */  move        $a0, $s0
/* 00C74C 8000CB9C 27A5006C */  addiu       $a1, $sp, 0x6c
/* 00C750 8000CBA0 0C002384 */  jal         func_80008E10
/* 00C754 8000CBA4 00003025 */   move       $a2, $zero
/* 00C758 8000CBA8 02C02025 */  move        $a0, $s6
/* 00C75C 8000CBAC 8FA5006C */  lw          $a1, 0x6c($sp)
/* 00C760 8000CBB0 8FA60070 */  lw          $a2, 0x70($sp)
/* 00C764 8000CBB4 0C00E09D */  jal         func_80038274
/* 00C768 8000CBB8 8FA70074 */   lw         $a3, 0x74($sp)
/* 00C76C 8000CBBC 02C02025 */  move        $a0, $s6
/* 00C770 8000CBC0 0C0031EC */  jal         func_8000C7B0
/* 00C774 8000CBC4 02E02825 */   move       $a1, $s7
/* 00C778 8000CBC8 1000000D */  b           .L8000CC00
/* 00C77C 8000CBCC 8E450008 */   lw         $a1, 0x8($s2)
.L8000CBD0:
/* 00C780 8000CBD0 0C0052D5 */  jal         func_80014B54
/* 00C784 8000CBD4 00E02025 */   move       $a0, $a3
/* 00C788 8000CBD8 50400009 */  beql        $v0, $zero, .L8000CC00
/* 00C78C 8000CBDC 8E450008 */   lw         $a1, 0x8($s2)
/* 00C790 8000CBE0 8C420054 */  lw          $v0, 0x54($v0)
/* 00C794 8000CBE4 02603025 */  move        $a2, $s3
/* 00C798 8000CBE8 A45E0000 */  sh          $fp, 0x0($v0)
/* 00C79C 8000CBEC 8E4B0004 */  lw          $t3, 0x4($s2)
/* 00C7A0 8000CBF0 24440004 */  addiu       $a0, $v0, 0x4
/* 00C7A4 8000CBF4 0C002353 */  jal         func_80008D4C
/* 00C7A8 8000CBF8 026B2821 */   addu       $a1, $s3, $t3
/* 00C7AC 8000CBFC 8E450008 */  lw          $a1, 0x8($s2)
.L8000CC00:
/* 00C7B0 8000CC00 26520008 */  addiu       $s2, $s2, 0x8
/* 00C7B4 8000CC04 1CA0FFC3 */  bgtz        $a1, .L8000CB14
/* 00C7B8 8000CC08 00000000 */   nop
.L8000CC0C:
/* 00C7BC 8000CC0C 0C003233 */  jal         func_8000C8CC
/* 00C7C0 8000CC10 86840100 */   lh         $a0, 0x100($s4)
/* 00C7C4 8000CC14 8FBF0044 */  lw          $ra, 0x44($sp)
/* 00C7C8 8000CC18 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 00C7CC 8000CC1C 8FB00020 */  lw          $s0, 0x20($sp)
/* 00C7D0 8000CC20 8FB10024 */  lw          $s1, 0x24($sp)
/* 00C7D4 8000CC24 8FB20028 */  lw          $s2, 0x28($sp)
/* 00C7D8 8000CC28 8FB3002C */  lw          $s3, 0x2c($sp)
/* 00C7DC 8000CC2C 8FB40030 */  lw          $s4, 0x30($sp)
/* 00C7E0 8000CC30 8FB50034 */  lw          $s5, 0x34($sp)
/* 00C7E4 8000CC34 8FB60038 */  lw          $s6, 0x38($sp)
/* 00C7E8 8000CC38 8FB7003C */  lw          $s7, 0x3c($sp)
/* 00C7EC 8000CC3C 8FBE0040 */  lw          $fp, 0x40($sp)
/* 00C7F0 8000CC40 03E00008 */  jr          $ra
/* 00C7F4 8000CC44 27BD0098 */   addiu      $sp, $sp, 0x98

glabel func_8000CC48 # 33
/* 00C7F8 8000CC48 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00C7FC 8000CC4C AFA40028 */  sw          $a0, 0x28($sp)
/* 00C800 8000CC50 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00C804 8000CC54 AFA5002C */  sw          $a1, 0x2c($sp)
/* 00C808 8000CC58 AFA60030 */  sw          $a2, 0x30($sp)
/* 00C80C 8000CC5C 24A4023C */  addiu       $a0, $a1, 0x23c
/* 00C810 8000CC60 27A5001C */  addiu       $a1, $sp, 0x1c
/* 00C814 8000CC64 8FA70030 */  lw          $a3, 0x30($sp)
/* 00C818 8000CC68 0C002384 */  jal         func_80008E10
/* 00C81C 8000CC6C 00003025 */   move       $a2, $zero
/* 00C820 8000CC70 8FA2002C */  lw          $v0, 0x2c($sp)
/* 00C824 8000CC74 8FA70030 */  lw          $a3, 0x30($sp)
/* 00C828 8000CC78 244501C0 */  addiu       $a1, $v0, 0x1c0
/* 00C82C 8000CC7C AFA50018 */  sw          $a1, 0x18($sp)
/* 00C830 8000CC80 244402B4 */  addiu       $a0, $v0, 0x2b4
/* 00C834 8000CC84 0C0023B5 */  jal         func_80008ED4
/* 00C838 8000CC88 244601CC */   addiu      $a2, $v0, 0x1cc
/* 00C83C 8000CC8C 27A4001C */  addiu       $a0, $sp, 0x1c
/* 00C840 8000CC90 0C003213 */  jal         func_8000C84C
/* 00C844 8000CC94 8FA50028 */   lw         $a1, 0x28($sp)
/* 00C848 8000CC98 0C001AAA */  jal         func_80006AA8
/* 00C84C 8000CC9C 8FA40018 */   lw         $a0, 0x18($sp)
/* 00C850 8000CCA0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00C854 8000CCA4 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00C858 8000CCA8 03E00008 */  jr          $ra
/* 00C85C 8000CCAC 00000000 */   nop

glabel func_8000CCB0 # 34
/* 00C860 8000CCB0 44866000 */  mtc1        $a2, $f12
/* 00C864 8000CCB4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00C868 8000CCB8 AFB00018 */  sw          $s0, 0x18($sp)
/* 00C86C 8000CCBC 00808025 */  move        $s0, $a0
/* 00C870 8000CCC0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00C874 8000CCC4 AFA50024 */  sw          $a1, 0x24($sp)
/* 00C878 8000CCC8 24A40004 */  addiu       $a0, $a1, 0x4
/* 00C87C 8000CCCC 44076000 */  mfc1        $a3, $f12
/* 00C880 8000CCD0 2605000C */  addiu       $a1, $s0, 0xc
/* 00C884 8000CCD4 0C002384 */  jal         func_80008E10
/* 00C888 8000CCD8 00003025 */   move       $a2, $zero
/* 00C88C 8000CCDC 44806000 */  mtc1        $zero, $f12
/* 00C890 8000CCE0 C600000C */  lwc1        $f0, 0xc($s0)
/* 00C894 8000CCE4 3C0143B4 */  lui         $at, 0x43b4
/* 00C898 8000CCE8 460C003C */  c.lt.s      $f0, $f12
/* 00C89C 8000CCEC 00000000 */  nop
/* 00C8A0 8000CCF0 4502000B */  bc1fl       .L8000CD20
/* 00C8A4 8000CCF4 3C0143B4 */   lui        $at, 0x43b4
/* 00C8A8 8000CCF8 44811000 */  mtc1        $at, $f2
/* 00C8AC 8000CCFC 00000000 */  nop
/* 00C8B0 8000CD00 46020100 */  add.s       $f4, $f0, $f2
.L8000CD04:
/* 00C8B4 8000CD04 E604000C */  swc1        $f4, 0xc($s0)
/* 00C8B8 8000CD08 C600000C */  lwc1        $f0, 0xc($s0)
/* 00C8BC 8000CD0C 460C003C */  c.lt.s      $f0, $f12
/* 00C8C0 8000CD10 00000000 */  nop
/* 00C8C4 8000CD14 4503FFFB */  bc1tl       .L8000CD04
/* 00C8C8 8000CD18 46020100 */   add.s      $f4, $f0, $f2
/* 00C8CC 8000CD1C 3C0143B4 */  lui         $at, 0x43b4
.L8000CD20:
/* 00C8D0 8000CD20 44811000 */  mtc1        $at, $f2
/* 00C8D4 8000CD24 24010001 */  addiu       $at, $zero, 0x1
/* 00C8D8 8000CD28 4600103E */  c.le.s      $f2, $f0
/* 00C8DC 8000CD2C 00000000 */  nop
/* 00C8E0 8000CD30 45020009 */  bc1fl       .L8000CD58
/* 00C8E4 8000CD34 C6000010 */   lwc1       $f0, 0x10($s0)
/* 00C8E8 8000CD38 46020181 */  sub.s       $f6, $f0, $f2
.L8000CD3C:
/* 00C8EC 8000CD3C E606000C */  swc1        $f6, 0xc($s0)
/* 00C8F0 8000CD40 C600000C */  lwc1        $f0, 0xc($s0)
/* 00C8F4 8000CD44 4600103E */  c.le.s      $f2, $f0
/* 00C8F8 8000CD48 00000000 */  nop
/* 00C8FC 8000CD4C 4503FFFB */  bc1tl       .L8000CD3C
/* 00C900 8000CD50 46020181 */   sub.s      $f6, $f0, $f2
/* 00C904 8000CD54 C6000010 */  lwc1        $f0, 0x10($s0)
.L8000CD58:
/* 00C908 8000CD58 460C003C */  c.lt.s      $f0, $f12
/* 00C90C 8000CD5C 00000000 */  nop
/* 00C910 8000CD60 45020009 */  bc1fl       .L8000CD88
/* 00C914 8000CD64 4600103E */   c.le.s     $f2, $f0
/* 00C918 8000CD68 46020200 */  add.s       $f8, $f0, $f2
.L8000CD6C:
/* 00C91C 8000CD6C E6080010 */  swc1        $f8, 0x10($s0)
/* 00C920 8000CD70 C6000010 */  lwc1        $f0, 0x10($s0)
/* 00C924 8000CD74 460C003C */  c.lt.s      $f0, $f12
/* 00C928 8000CD78 00000000 */  nop
/* 00C92C 8000CD7C 4503FFFB */  bc1tl       .L8000CD6C
/* 00C930 8000CD80 46020200 */   add.s      $f8, $f0, $f2
/* 00C934 8000CD84 4600103E */  c.le.s      $f2, $f0
.L8000CD88:
/* 00C938 8000CD88 00000000 */  nop
/* 00C93C 8000CD8C 45020009 */  bc1fl       .L8000CDB4
/* 00C940 8000CD90 C6000014 */   lwc1       $f0, 0x14($s0)
/* 00C944 8000CD94 46020281 */  sub.s       $f10, $f0, $f2
.L8000CD98:
/* 00C948 8000CD98 E60A0010 */  swc1        $f10, 0x10($s0)
/* 00C94C 8000CD9C C6000010 */  lwc1        $f0, 0x10($s0)
/* 00C950 8000CDA0 4600103E */  c.le.s      $f2, $f0
/* 00C954 8000CDA4 00000000 */  nop
/* 00C958 8000CDA8 4503FFFB */  bc1tl       .L8000CD98
/* 00C95C 8000CDAC 46020281 */   sub.s      $f10, $f0, $f2
/* 00C960 8000CDB0 C6000014 */  lwc1        $f0, 0x14($s0)
.L8000CDB4:
/* 00C964 8000CDB4 460C003C */  c.lt.s      $f0, $f12
/* 00C968 8000CDB8 00000000 */  nop
/* 00C96C 8000CDBC 45020009 */  bc1fl       .L8000CDE4
/* 00C970 8000CDC0 4600103E */   c.le.s     $f2, $f0
/* 00C974 8000CDC4 46020400 */  add.s       $f16, $f0, $f2
.L8000CDC8:
/* 00C978 8000CDC8 E6100014 */  swc1        $f16, 0x14($s0)
/* 00C97C 8000CDCC C6000014 */  lwc1        $f0, 0x14($s0)
/* 00C980 8000CDD0 460C003C */  c.lt.s      $f0, $f12
/* 00C984 8000CDD4 00000000 */  nop
/* 00C988 8000CDD8 4503FFFB */  bc1tl       .L8000CDC8
/* 00C98C 8000CDDC 46020400 */   add.s      $f16, $f0, $f2
/* 00C990 8000CDE0 4600103E */  c.le.s      $f2, $f0
.L8000CDE4:
/* 00C994 8000CDE4 00000000 */  nop
/* 00C998 8000CDE8 45000008 */  bc1f        .L8000CE0C
/* 00C99C 8000CDEC 00000000 */   nop
/* 00C9A0 8000CDF0 46020481 */  sub.s       $f18, $f0, $f2
.L8000CDF4:
/* 00C9A4 8000CDF4 E6120014 */  swc1        $f18, 0x14($s0)
/* 00C9A8 8000CDF8 C6000014 */  lwc1        $f0, 0x14($s0)
/* 00C9AC 8000CDFC 4600103E */  c.le.s      $f2, $f0
/* 00C9B0 8000CE00 00000000 */  nop
/* 00C9B4 8000CE04 4503FFFB */  bc1tl       .L8000CDF4
/* 00C9B8 8000CE08 46020481 */   sub.s      $f18, $f0, $f2
.L8000CE0C:
/* 00C9BC 8000CE0C 14410002 */  bne         $v0, $at, .L8000CE18
/* 00C9C0 8000CE10 8FAE0024 */   lw         $t6, 0x24($sp)
/* 00C9C4 8000CE14 A5C00000 */  sh          $zero, 0x0($t6)
.L8000CE18:
/* 00C9C8 8000CE18 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00C9CC 8000CE1C 8FB00018 */  lw          $s0, 0x18($sp)
/* 00C9D0 8000CE20 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00C9D4 8000CE24 03E00008 */  jr          $ra
/* 00C9D8 8000CE28 00000000 */   nop

glabel func_8000CE2C # 35
/* 00C9DC 8000CE2C 27BDFF28 */  addiu       $sp, $sp, -0xd8
/* 00C9E0 8000CE30 AFB00020 */  sw          $s0, 0x20($sp)
/* 00C9E4 8000CE34 AFBF0044 */  sw          $ra, 0x44($sp)
/* 00C9E8 8000CE38 AFBE0040 */  sw          $fp, 0x40($sp)
/* 00C9EC 8000CE3C AFB7003C */  sw          $s7, 0x3c($sp)
/* 00C9F0 8000CE40 AFB60038 */  sw          $s6, 0x38($sp)
/* 00C9F4 8000CE44 AFB50034 */  sw          $s5, 0x34($sp)
/* 00C9F8 8000CE48 AFB40030 */  sw          $s4, 0x30($sp)
/* 00C9FC 8000CE4C AFB3002C */  sw          $s3, 0x2c($sp)
/* 00CA00 8000CE50 AFB20028 */  sw          $s2, 0x28($sp)
/* 00CA04 8000CE54 AFB10024 */  sw          $s1, 0x24($sp)
/* 00CA08 8000CE58 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 00CA0C 8000CE5C 8C940054 */  lw          $s4, 0x54($a0)
/* 00CA10 8000CE60 3C10800C */  lui         $s0, %hi(D_800BB0B0)
/* 00CA14 8000CE64 2610B0B0 */  addiu       $s0, $s0, %lo(D_800BB0B0)
/* 00CA18 8000CE68 0080B825 */  move        $s7, $a0
/* 00CA1C 8000CE6C 02002025 */  move        $a0, $s0
/* 00CA20 8000CE70 27A6009C */  addiu       $a2, $sp, 0x9c
/* 00CA24 8000CE74 0C00565E */  jal         func_80015978
/* 00CA28 8000CE78 868500FC */   lh         $a1, 0xfc($s4)
/* 00CA2C 8000CE7C 868E00FC */  lh          $t6, 0xfc($s4)
/* 00CA30 8000CE80 3C188007 */  lui         $t8, %hi(D_80072E28)
/* 00CA34 8000CE84 8FB9009C */  lw          $t9, 0x9c($sp)
/* 00CA38 8000CE88 000E7880 */  sll         $t7, $t6, 2
/* 00CA3C 8000CE8C 030FC021 */  addu        $t8, $t8, $t7
/* 00CA40 8000CE90 8F182E28 */  lw          $t8, %lo(D_80072E28)($t8)
/* 00CA44 8000CE94 C6800104 */  lwc1        $f0, 0x104($s4)
/* 00CA48 8000CE98 3C013F80 */  lui         $at, 0x3f80
/* 00CA4C 8000CE9C 44812000 */  mtc1        $at, $f4
/* 00CA50 8000CEA0 02E02025 */  move        $a0, $s7
/* 00CA54 8000CEA4 00002825 */  move        $a1, $zero
/* 00CA58 8000CEA8 03199821 */  addu        $s3, $t8, $t9
/* 00CA5C 8000CEAC E6800134 */  swc1        $f0, 0x134($s4)
/* 00CA60 8000CEB0 E6800138 */  swc1        $f0, 0x138($s4)
/* 00CA64 8000CEB4 0C003274 */  jal         func_8000C9D0
/* 00CA68 8000CEB8 E6840130 */   swc1       $f4, 0x130($s4)
/* 00CA6C 8000CEBC 02002025 */  move        $a0, $s0
/* 00CA70 8000CEC0 0C005678 */  jal         func_800159E0
/* 00CA74 8000CEC4 868500FC */   lh         $a1, 0xfc($s4)
/* 00CA78 8000CEC8 868900FC */  lh          $t1, 0xfc($s4)
/* 00CA7C 8000CECC 3C0B8007 */  lui         $t3, %hi(D_80073558)
/* 00CA80 8000CED0 8FA8009C */  lw          $t0, 0x9c($sp)
/* 00CA84 8000CED4 00095080 */  sll         $t2, $t1, 2
/* 00CA88 8000CED8 016A5821 */  addu        $t3, $t3, $t2
/* 00CA8C 8000CEDC 8D6B3558 */  lw          $t3, %lo(D_80073558)($t3)
/* 00CA90 8000CEE0 C6E80004 */  lwc1        $f8, 0x4($s7)
/* 00CA94 8000CEE4 27BE0090 */  addiu       $fp, $sp, 0x90
/* 00CA98 8000CEE8 010B6021 */  addu        $t4, $t0, $t3
/* 00CA9C 8000CEEC C5860000 */  lwc1        $f6, 0x0($t4)
/* 00CAA0 8000CEF0 24160003 */  addiu       $s6, $zero, 0x3
/* 00CAA4 8000CEF4 46064282 */  mul.s       $f10, $f8, $f6
/* 00CAA8 8000CEF8 E68A0008 */  swc1        $f10, 0x8($s4)
/* 00CAAC 8000CEFC 8E650000 */  lw          $a1, 0x0($s3)
/* 00CAB0 8000CF00 58A0004A */  blezl       $a1, .L8000D02C
/* 00CAB4 8000CF04 8FBF0044 */   lw         $ra, 0x44($sp)
/* 00CAB8 8000CF08 4480A000 */  mtc1        $zero, $f20
/* 00CABC 8000CF0C 27B500A4 */  addiu       $s5, $sp, 0xa4
.L8000CF10:
/* 00CAC0 8000CF10 18A00026 */  blez        $a1, .L8000CFAC
/* 00CAC4 8000CF14 28A10026 */   slti       $at, $a1, 0x26
/* 00CAC8 8000CF18 10200024 */  beqz        $at, .L8000CFAC
/* 00CACC 8000CF1C 02A02025 */   move       $a0, $s5
/* 00CAD0 8000CF20 A696011A */  sh          $s6, 0x11a($s4)
/* 00CAD4 8000CF24 8E6E0004 */  lw          $t6, 0x4($s3)
/* 00CAD8 8000CF28 8FA6009C */  lw          $a2, 0x9c($sp)
/* 00CADC 8000CF2C 2690023C */  addiu       $s0, $s4, 0x23c
/* 00CAE0 8000CF30 26110030 */  addiu       $s1, $s0, 0x30
/* 00CAE4 8000CF34 26920018 */  addiu       $s2, $s4, 0x18
/* 00CAE8 8000CF38 0C002353 */  jal         func_80008D4C
/* 00CAEC 8000CF3C 00CE2821 */   addu       $a1, $a2, $t6
/* 00CAF0 8000CF40 4407A000 */  mfc1        $a3, $f20
/* 00CAF4 8000CF44 02A02025 */  move        $a0, $s5
/* 00CAF8 8000CF48 03C02825 */  move        $a1, $fp
/* 00CAFC 8000CF4C 0C002384 */  jal         func_80008E10
/* 00CB00 8000CF50 00003025 */   move       $a2, $zero
/* 00CB04 8000CF54 0240C825 */  move        $t9, $s2
/* 00CB08 8000CF58 02004825 */  move        $t1, $s0
/* 00CB0C 8000CF5C 26580030 */  addiu       $t8, $s2, 0x30
.L8000CF60:
/* 00CB10 8000CF60 8F210000 */  lw          $at, 0x0($t9)
/* 00CB14 8000CF64 2739000C */  addiu       $t9, $t9, 0xc
/* 00CB18 8000CF68 2529000C */  addiu       $t1, $t1, 0xc
/* 00CB1C 8000CF6C AD21FFF4 */  sw          $at, -0xc($t1)
/* 00CB20 8000CF70 8F21FFF8 */  lw          $at, -0x8($t9)
/* 00CB24 8000CF74 AD21FFF8 */  sw          $at, -0x8($t1)
/* 00CB28 8000CF78 8F21FFFC */  lw          $at, -0x4($t9)
/* 00CB2C 8000CF7C 1738FFF8 */  bne         $t9, $t8, .L8000CF60
/* 00CB30 8000CF80 AD21FFFC */   sw         $at, -0x4($t1)
/* 00CB34 8000CF84 02202025 */  move        $a0, $s1
/* 00CB38 8000CF88 8FA50090 */  lw          $a1, 0x90($sp)
/* 00CB3C 8000CF8C 8FA60094 */  lw          $a2, 0x94($sp)
/* 00CB40 8000CF90 0C00E09D */  jal         func_80038274
/* 00CB44 8000CF94 8FA70098 */   lw         $a3, 0x98($sp)
/* 00CB48 8000CF98 02202025 */  move        $a0, $s1
/* 00CB4C 8000CF9C 0C0031EC */  jal         func_8000C7B0
/* 00CB50 8000CFA0 27A50080 */   addiu      $a1, $sp, 0x80
/* 00CB54 8000CFA4 1000001C */  b           .L8000D018
/* 00CB58 8000CFA8 E6940048 */   swc1       $f20, 0x48($s4)
.L8000CFAC:
/* 00CB5C 8000CFAC 0C0052D5 */  jal         func_80014B54
/* 00CB60 8000CFB0 02E02025 */   move       $a0, $s7
/* 00CB64 8000CFB4 10400018 */  beqz        $v0, .L8000D018
/* 00CB68 8000CFB8 00408025 */   move       $s0, $v0
/* 00CB6C 8000CFBC 8C510054 */  lw          $s1, 0x54($v0)
/* 00CB70 8000CFC0 02A02025 */  move        $a0, $s5
/* 00CB74 8000CFC4 A6360000 */  sh          $s6, 0x0($s1)
/* 00CB78 8000CFC8 8E680004 */  lw          $t0, 0x4($s3)
/* 00CB7C 8000CFCC 8FA6009C */  lw          $a2, 0x9c($sp)
/* 00CB80 8000CFD0 0C002353 */  jal         func_80008D4C
/* 00CB84 8000CFD4 00C82821 */   addu       $a1, $a2, $t0
/* 00CB88 8000CFD8 4407A000 */  mfc1        $a3, $f20
/* 00CB8C 8000CFDC 02A02025 */  move        $a0, $s5
/* 00CB90 8000CFE0 27A50068 */  addiu       $a1, $sp, 0x68
/* 00CB94 8000CFE4 0C002384 */  jal         func_80008E10
/* 00CB98 8000CFE8 00003025 */   move       $a2, $zero
/* 00CB9C 8000CFEC 26320004 */  addiu       $s2, $s1, 0x4
/* 00CBA0 8000CFF0 02402025 */  move        $a0, $s2
/* 00CBA4 8000CFF4 8E05000C */  lw          $a1, 0xc($s0)
/* 00CBA8 8000CFF8 8E060010 */  lw          $a2, 0x10($s0)
/* 00CBAC 8000CFFC 0C00E09D */  jal         func_80038274
/* 00CBB0 8000D000 8E070014 */   lw         $a3, 0x14($s0)
/* 00CBB4 8000D004 26440030 */  addiu       $a0, $s2, 0x30
/* 00CBB8 8000D008 8FA50068 */  lw          $a1, 0x68($sp)
/* 00CBBC 8000D00C 8FA6006C */  lw          $a2, 0x6c($sp)
/* 00CBC0 8000D010 0C00E09D */  jal         func_80038274
/* 00CBC4 8000D014 8FA70070 */   lw         $a3, 0x70($sp)
.L8000D018:
/* 00CBC8 8000D018 8E650008 */  lw          $a1, 0x8($s3)
/* 00CBCC 8000D01C 26730008 */  addiu       $s3, $s3, 0x8
/* 00CBD0 8000D020 1CA0FFBB */  bgtz        $a1, .L8000CF10
/* 00CBD4 8000D024 00000000 */   nop
/* 00CBD8 8000D028 8FBF0044 */  lw          $ra, 0x44($sp)
.L8000D02C:
/* 00CBDC 8000D02C D7B40018 */  ldc1        $f20, 0x18($sp)
/* 00CBE0 8000D030 8FB00020 */  lw          $s0, 0x20($sp)
/* 00CBE4 8000D034 8FB10024 */  lw          $s1, 0x24($sp)
/* 00CBE8 8000D038 8FB20028 */  lw          $s2, 0x28($sp)
/* 00CBEC 8000D03C 8FB3002C */  lw          $s3, 0x2c($sp)
/* 00CBF0 8000D040 8FB40030 */  lw          $s4, 0x30($sp)
/* 00CBF4 8000D044 8FB50034 */  lw          $s5, 0x34($sp)
/* 00CBF8 8000D048 8FB60038 */  lw          $s6, 0x38($sp)
/* 00CBFC 8000D04C 8FB7003C */  lw          $s7, 0x3c($sp)
/* 00CC00 8000D050 8FBE0040 */  lw          $fp, 0x40($sp)
/* 00CC04 8000D054 03E00008 */  jr          $ra
/* 00CC08 8000D058 27BD00D8 */   addiu      $sp, $sp, 0xd8

glabel func_8000D05C # 36
/* 00CC0C 8000D05C 44867000 */  mtc1        $a2, $f14
/* 00CC10 8000D060 44800000 */  mtc1        $zero, $f0
/* 00CC14 8000D064 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00CC18 8000D068 00A03825 */  move        $a3, $a1
/* 00CC1C 8000D06C 4600703C */  c.lt.s      $f14, $f0
/* 00CC20 8000D070 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00CC24 8000D074 3C013F80 */  lui         $at, 0x3f80
/* 00CC28 8000D078 00802825 */  move        $a1, $a0
/* 00CC2C 8000D07C 45000006 */  bc1f        .L8000D098
/* 00CC30 8000D080 24860030 */   addiu      $a2, $a0, 0x30
/* 00CC34 8000D084 46000386 */  mov.s       $f14, $f0
/* 00CC38 8000D088 3C013F80 */  lui         $at, 0x3f80
/* 00CC3C 8000D08C 44810000 */  mtc1        $at, $f0
/* 00CC40 8000D090 10000008 */  b           .L8000D0B4
/* 00CC44 8000D094 00000000 */   nop
.L8000D098:
/* 00CC48 8000D098 44810000 */  mtc1        $at, $f0
/* 00CC4C 8000D09C 00000000 */  nop
/* 00CC50 8000D0A0 460E003C */  c.lt.s      $f0, $f14
/* 00CC54 8000D0A4 00000000 */  nop
/* 00CC58 8000D0A8 45000002 */  bc1f        .L8000D0B4
/* 00CC5C 8000D0AC 00000000 */   nop
/* 00CC60 8000D0B0 46000386 */  mov.s       $f14, $f0
.L8000D0B4:
/* 00CC64 8000D0B4 0C003056 */  jal         func_8000C158
/* 00CC68 8000D0B8 460E0301 */   sub.s      $f12, $f0, $f14
/* 00CC6C 8000D0BC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00CC70 8000D0C0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00CC74 8000D0C4 03E00008 */  jr          $ra
/* 00CC78 8000D0C8 00000000 */   nop

glabel func_8000D0CC # 37
/* 00CC7C 8000D0CC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00CC80 8000D0D0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00CC84 8000D0D4 8C820054 */  lw          $v0, 0x54($a0)
/* 00CC88 8000D0D8 00002825 */  move        $a1, $zero
/* 00CC8C 8000D0DC 0C003274 */  jal         func_8000C9D0
/* 00CC90 8000D0E0 AFA2001C */   sw         $v0, 0x1c($sp)
/* 00CC94 8000D0E4 8FA2001C */  lw          $v0, 0x1c($sp)
/* 00CC98 8000D0E8 3C013F80 */  lui         $at, 0x3f80
/* 00CC9C 8000D0EC 44812000 */  mtc1        $at, $f4
/* 00CCA0 8000D0F0 C4400104 */  lwc1        $f0, 0x104($v0)
/* 00CCA4 8000D0F4 240E0002 */  addiu       $t6, $zero, 0x2
/* 00CCA8 8000D0F8 A44E011A */  sh          $t6, 0x11a($v0)
/* 00CCAC 8000D0FC E4440130 */  swc1        $f4, 0x130($v0)
/* 00CCB0 8000D100 E4400134 */  swc1        $f0, 0x134($v0)
/* 00CCB4 8000D104 E4400138 */  swc1        $f0, 0x138($v0)
/* 00CCB8 8000D108 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00CCBC 8000D10C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00CCC0 8000D110 03E00008 */  jr          $ra
/* 00CCC4 8000D114 00000000 */   nop

glabel func_8000D118 # 38
/* 00CCC8 8000D118 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00CCCC 8000D11C AFBF0014 */  sw          $ra, 0x14($sp)
/* 00CCD0 8000D120 8C820054 */  lw          $v0, 0x54($a0)
/* 00CCD4 8000D124 8C430108 */  lw          $v1, 0x108($v0)
/* 00CCD8 8000D128 00001025 */  move        $v0, $zero
/* 00CCDC 8000D12C 10600005 */  beqz        $v1, .L8000D144
/* 00CCE0 8000D130 00000000 */   nop
/* 00CCE4 8000D134 0060F809 */  jalr        $v1
/* 00CCE8 8000D138 00000000 */   nop
/* 00CCEC 8000D13C 10000002 */  b           .L8000D148
/* 00CCF0 8000D140 8FBF0014 */   lw         $ra, 0x14($sp)
.L8000D144:
/* 00CCF4 8000D144 8FBF0014 */  lw          $ra, 0x14($sp)
.L8000D148:
/* 00CCF8 8000D148 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00CCFC 8000D14C 03E00008 */  jr          $ra
/* 00CD00 8000D150 00000000 */   nop

glabel func_8000D154 # 39
/* 00CD04 8000D154 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00CD08 8000D158 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00CD0C 8000D15C AFB00018 */  sw          $s0, 0x18($sp)
/* 00CD10 8000D160 8C830054 */  lw          $v1, 0x54($a0)
/* 00CD14 8000D164 44802000 */  mtc1        $zero, $f4
/* 00CD18 8000D168 00808025 */  move        $s0, $a0
/* 00CD1C 8000D16C 8C6E00F8 */  lw          $t6, 0xf8($v1)
/* 00CD20 8000D170 00003025 */  move        $a2, $zero
/* 00CD24 8000D174 31CF0007 */  andi        $t7, $t6, 0x7
/* 00CD28 8000D178 AFAF0028 */  sw          $t7, 0x28($sp)
/* 00CD2C 8000D17C A4600118 */  sh          $zero, 0x118($v1)
/* 00CD30 8000D180 8C650114 */  lw          $a1, 0x114($v1)
/* 00CD34 8000D184 E4640148 */  swc1        $f4, 0x148($v1)
/* 00CD38 8000D188 0C008B32 */  jal         func_80022CC8
/* 00CD3C 8000D18C AFA3002C */   sw         $v1, 0x2c($sp)
/* 00CD40 8000D190 8FA3002C */  lw          $v1, 0x2c($sp)
/* 00CD44 8000D194 24190001 */  addiu       $t9, $zero, 0x1
/* 00CD48 8000D198 02002025 */  move        $a0, $s0
/* 00CD4C 8000D19C 8478011C */  lh          $t8, 0x11c($v1)
/* 00CD50 8000D1A0 24060001 */  addiu       $a2, $zero, 0x1
/* 00CD54 8000D1A4 AC620154 */  sw          $v0, 0x154($v1)
/* 00CD58 8000D1A8 5700002F */  bnel        $t8, $zero, .L8000D268
/* 00CD5C 8000D1AC 8FA20028 */   lw         $v0, 0x28($sp)
/* 00CD60 8000D1B0 A479011C */  sh          $t9, 0x11c($v1)
/* 00CD64 8000D1B4 8C650110 */  lw          $a1, 0x110($v1)
/* 00CD68 8000D1B8 0C008B32 */  jal         func_80022CC8
/* 00CD6C 8000D1BC AFA3002C */   sw         $v1, 0x2c($sp)
/* 00CD70 8000D1C0 8FA3002C */  lw          $v1, 0x2c($sp)
/* 00CD74 8000D1C4 10400027 */  beqz        $v0, .L8000D264
/* 00CD78 8000D1C8 00402825 */   move       $a1, $v0
/* 00CD7C 8000D1CC 8C680150 */  lw          $t0, 0x150($v1)
/* 00CD80 8000D1D0 3C01800A */  lui         $at, %hi(D_800A6188)
/* 00CD84 8000D1D4 5448000C */  bnel        $v0, $t0, .L8000D208
/* 00CD88 8000D1D8 960B0034 */   lhu        $t3, 0x34($s0)
/* 00CD8C 8000D1DC C4266188 */  lwc1        $f6, %lo(D_800A6188)($at)
/* 00CD90 8000D1E0 C4680144 */  lwc1        $f8, 0x144($v1)
/* 00CD94 8000D1E4 4608303C */  c.lt.s      $f6, $f8
/* 00CD98 8000D1E8 00000000 */  nop
/* 00CD9C 8000D1EC 4502001E */  bc1fl       .L8000D268
/* 00CDA0 8000D1F0 8FA20028 */   lw         $v0, 0x28($sp)
/* 00CDA4 8000D1F4 8C6900F8 */  lw          $t1, 0xf8($v1)
/* 00CDA8 8000D1F8 312A0008 */  andi        $t2, $t1, 0x8
/* 00CDAC 8000D1FC 5540001A */  bnel        $t2, $zero, .L8000D268
/* 00CDB0 8000D200 8FA20028 */   lw         $v0, 0x28($sp)
/* 00CDB4 8000D204 960B0034 */  lhu         $t3, 0x34($s0)
.L8000D208:
/* 00CDB8 8000D208 24010025 */  addiu       $at, $zero, 0x25
/* 00CDBC 8000D20C 55610012 */  bnel        $t3, $at, .L8000D258
/* 00CDC0 8000D210 44805000 */   mtc1       $zero, $f10
/* 00CDC4 8000D214 946C01E8 */  lhu         $t4, 0x1e8($v1)
/* 00CDC8 8000D218 02002025 */  move        $a0, $s0
/* 00CDCC 8000D21C 318D0040 */  andi        $t5, $t4, 0x40
/* 00CDD0 8000D220 55A00007 */  bnel        $t5, $zero, .L8000D240
/* 00CDD4 8000D224 02002025 */   move       $a0, $s0
/* 00CDD8 8000D228 AFA3002C */  sw          $v1, 0x2c($sp)
/* 00CDDC 8000D22C 0C004BF3 */  jal         func_80012FCC
/* 00CDE0 8000D230 AFA50024 */   sw         $a1, 0x24($sp)
/* 00CDE4 8000D234 8FA3002C */  lw          $v1, 0x2c($sp)
/* 00CDE8 8000D238 8FA50024 */  lw          $a1, 0x24($sp)
/* 00CDEC 8000D23C 02002025 */  move        $a0, $s0
.L8000D240:
/* 00CDF0 8000D240 AFA3002C */  sw          $v1, 0x2c($sp)
/* 00CDF4 8000D244 0C00499D */  jal         func_80012674
/* 00CDF8 8000D248 AFA50024 */   sw         $a1, 0x24($sp)
/* 00CDFC 8000D24C 8FA3002C */  lw          $v1, 0x2c($sp)
/* 00CE00 8000D250 8FA50024 */  lw          $a1, 0x24($sp)
/* 00CE04 8000D254 44805000 */  mtc1        $zero, $f10
.L8000D258:
/* 00CE08 8000D258 AC65014C */  sw          $a1, 0x14c($v1)
/* 00CE0C 8000D25C AC650150 */  sw          $a1, 0x150($v1)
/* 00CE10 8000D260 E46A0144 */  swc1        $f10, 0x144($v1)
.L8000D264:
/* 00CE14 8000D264 8FA20028 */  lw          $v0, 0x28($sp)
.L8000D268:
/* 00CE18 8000D268 24010001 */  addiu       $at, $zero, 0x1
/* 00CE1C 8000D26C 10410007 */  beq         $v0, $at, .L8000D28C
/* 00CE20 8000D270 24010002 */   addiu      $at, $zero, 0x2
/* 00CE24 8000D274 10410009 */  beq         $v0, $at, .L8000D29C
/* 00CE28 8000D278 24010003 */   addiu      $at, $zero, 0x3
/* 00CE2C 8000D27C 1041000B */  beq         $v0, $at, .L8000D2AC
/* 00CE30 8000D280 00000000 */   nop
/* 00CE34 8000D284 1000000C */  b           .L8000D2B8
/* 00CE38 8000D288 8FBF001C */   lw         $ra, 0x1c($sp)
.L8000D28C:
/* 00CE3C 8000D28C 0C003292 */  jal         func_8000CA48
/* 00CE40 8000D290 02002025 */   move       $a0, $s0
/* 00CE44 8000D294 10000008 */  b           .L8000D2B8
/* 00CE48 8000D298 8FBF001C */   lw         $ra, 0x1c($sp)
.L8000D29C:
/* 00CE4C 8000D29C 0C003433 */  jal         func_8000D0CC
/* 00CE50 8000D2A0 02002025 */   move       $a0, $s0
/* 00CE54 8000D2A4 10000004 */  b           .L8000D2B8
/* 00CE58 8000D2A8 8FBF001C */   lw         $ra, 0x1c($sp)
.L8000D2AC:
/* 00CE5C 8000D2AC 0C00338B */  jal         func_8000CE2C
/* 00CE60 8000D2B0 02002025 */   move       $a0, $s0
/* 00CE64 8000D2B4 8FBF001C */  lw          $ra, 0x1c($sp)
.L8000D2B8:
/* 00CE68 8000D2B8 8FB00018 */  lw          $s0, 0x18($sp)
/* 00CE6C 8000D2BC 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00CE70 8000D2C0 03E00008 */  jr          $ra
/* 00CE74 8000D2C4 00000000 */   nop

glabel func_8000D2C8 # 40
/* 00CE78 8000D2C8 8CAE000C */  lw          $t6, 0xc($a1)
/* 00CE7C 8000D2CC 24010001 */  addiu       $at, $zero, 0x1
/* 00CE80 8000D2D0 00A05025 */  move        $t2, $a1
/* 00CE84 8000D2D4 31CF0007 */  andi        $t7, $t6, 0x7
/* 00CE88 8000D2D8 15E10005 */  bne         $t7, $at, .L8000D2F0
/* 00CE8C 8000D2DC 00805825 */   move       $t3, $a0
/* 00CE90 8000D2E0 90B80012 */  lbu         $t8, 0x12($a1)
/* 00CE94 8000D2E4 909900FF */  lbu         $t9, 0xff($a0)
/* 00CE98 8000D2E8 00001025 */  move        $v0, $zero
/* 00CE9C 8000D2EC 17190010 */  bne         $t8, $t9, .L8000D330
.L8000D2F0:
/* 00CEA0 8000D2F0 24A90024 */   addiu      $t1, $a1, 0x24
.L8000D2F4:
/* 00CEA4 8000D2F4 8D410000 */  lw          $at, 0x0($t2)
/* 00CEA8 8000D2F8 254A000C */  addiu       $t2, $t2, 0xc
/* 00CEAC 8000D2FC 256B000C */  addiu       $t3, $t3, 0xc
/* 00CEB0 8000D300 AD6100E0 */  sw          $at, 0xe0($t3)
/* 00CEB4 8000D304 8D41FFF8 */  lw          $at, -0x8($t2)
/* 00CEB8 8000D308 AD6100E4 */  sw          $at, 0xe4($t3)
/* 00CEBC 8000D30C 8D41FFFC */  lw          $at, -0x4($t2)
/* 00CEC0 8000D310 1549FFF8 */  bne         $t2, $t1, .L8000D2F4
/* 00CEC4 8000D314 AD6100E8 */   sw         $at, 0xe8($t3)
/* 00CEC8 8000D318 8D410000 */  lw          $at, 0x0($t2)
/* 00CECC 8000D31C 24020001 */  addiu       $v0, $zero, 0x1
/* 00CED0 8000D320 AD6100EC */  sw          $at, 0xec($t3)
/* 00CED4 8000D324 8D490004 */  lw          $t1, 0x4($t2)
/* 00CED8 8000D328 03E00008 */  jr          $ra
/* 00CEDC 8000D32C AD6900F0 */   sw         $t1, 0xf0($t3)
.L8000D330:
/* 00CEE0 8000D330 03E00008 */  jr          $ra
/* 00CEE4 8000D334 00000000 */   nop

glabel func_8000D338 # 41
/* 00CEE8 8000D338 44866000 */  mtc1        $a2, $f12
/* 00CEEC 8000D33C 04A00004 */  bltz        $a1, .L8000D350
/* 00CEF0 8000D340 2418FFFE */   addiu      $t8, $zero, -0x2
/* 00CEF4 8000D344 28A10149 */  slti        $at, $a1, 0x149
/* 00CEF8 8000D348 14200003 */  bnez        $at, .L8000D358
/* 00CEFC 8000D34C 00057080 */   sll        $t6, $a1, 2
.L8000D350:
/* 00CF00 8000D350 10000008 */  b           .L8000D374
/* 00CF04 8000D354 00001025 */   move       $v0, $zero
.L8000D358:
/* 00CF08 8000D358 01C57023 */  subu        $t6, $t6, $a1
/* 00CF0C 8000D35C 000E7080 */  sll         $t6, $t6, 2
/* 00CF10 8000D360 01C57023 */  subu        $t6, $t6, $a1
/* 00CF14 8000D364 3C0F8007 */  lui         $t7, %hi(D_80069330)
/* 00CF18 8000D368 25EF9330 */  addiu       $t7, $t7, %lo(D_80069330)
/* 00CF1C 8000D36C 000E7080 */  sll         $t6, $t6, 2
/* 00CF20 8000D370 01CF1021 */  addu        $v0, $t6, $t7
.L8000D374:
/* 00CF24 8000D374 3C08800A */  lui         $t0, %hi(D_800A5EF0)
/* 00CF28 8000D378 0305C823 */  subu        $t9, $t8, $a1
/* 00CF2C 8000D37C 25085EF0 */  addiu       $t0, $t0, %lo(D_800A5EF0)
/* 00CF30 8000D380 AC9900EC */  sw          $t9, 0xec($a0)
/* 00CF34 8000D384 AC8800F0 */  sw          $t0, 0xf0($a0)
/* 00CF38 8000D388 C4440008 */  lwc1        $f4, 0x8($v0)
/* 00CF3C 8000D38C 3C012010 */  lui         $at, 0x2010
/* 00CF40 8000D390 908D00FF */  lbu         $t5, 0xff($a0)
/* 00CF44 8000D394 E48400F4 */  swc1        $f4, 0xf4($a0)
/* 00CF48 8000D398 8C49000C */  lw          $t1, 0xc($v0)
/* 00CF4C 8000D39C 01215024 */  and         $t2, $t1, $at
/* 00CF50 8000D3A0 3C010401 */  lui         $at, 0x401
/* 00CF54 8000D3A4 34210003 */  ori         $at, $at, 0x3
/* 00CF58 8000D3A8 01415825 */  or          $t3, $t2, $at
/* 00CF5C 8000D3AC AC8B00F8 */  sw          $t3, 0xf8($a0)
/* 00CF60 8000D3B0 844C0010 */  lh          $t4, 0x10($v0)
/* 00CF64 8000D3B4 A08D00FE */  sb          $t5, 0xfe($a0)
/* 00CF68 8000D3B8 A48C00FC */  sh          $t4, 0xfc($a0)
/* 00CF6C 8000D3BC 904E0012 */  lbu         $t6, 0x12($v0)
/* 00CF70 8000D3C0 A4850100 */  sh          $a1, 0x100($a0)
/* 00CF74 8000D3C4 AC800108 */  sw          $zero, 0x108($a0)
/* 00CF78 8000D3C8 AC80010C */  sw          $zero, 0x10c($a0)
/* 00CF7C 8000D3CC E48C0104 */  swc1        $f12, 0x104($a0)
/* 00CF80 8000D3D0 AC800110 */  sw          $zero, 0x110($a0)
/* 00CF84 8000D3D4 AC800114 */  sw          $zero, 0x114($a0)
/* 00CF88 8000D3D8 03E00008 */  jr          $ra
/* 00CF8C 8000D3DC A08E00FF */   sb         $t6, 0xff($a0)

glabel func_8000D3E0 # 42
/* 00CF90 8000D3E0 04A00003 */  bltz        $a1, .L8000D3F0
/* 00CF94 8000D3E4 28A10149 */   slti       $at, $a1, 0x149
/* 00CF98 8000D3E8 14200003 */  bnez        $at, .L8000D3F8
/* 00CF9C 8000D3EC 00057080 */   sll        $t6, $a1, 2
.L8000D3F0:
/* 00CFA0 8000D3F0 10000008 */  b           .L8000D414
/* 00CFA4 8000D3F4 00001025 */   move       $v0, $zero
.L8000D3F8:
/* 00CFA8 8000D3F8 01C57023 */  subu        $t6, $t6, $a1
/* 00CFAC 8000D3FC 000E7080 */  sll         $t6, $t6, 2
/* 00CFB0 8000D400 01C57023 */  subu        $t6, $t6, $a1
/* 00CFB4 8000D404 3C0F8007 */  lui         $t7, %hi(D_80069330)
/* 00CFB8 8000D408 25EF9330 */  addiu       $t7, $t7, %lo(D_80069330)
/* 00CFBC 8000D40C 000E7080 */  sll         $t6, $t6, 2
/* 00CFC0 8000D410 01CF1021 */  addu        $v0, $t6, $t7
.L8000D414:
/* 00CFC4 8000D414 14400003 */  bnez        $v0, .L8000D424
/* 00CFC8 8000D418 00404025 */   move       $t0, $v0
/* 00CFCC 8000D41C 03E00008 */  jr          $ra
/* 00CFD0 8000D420 00001025 */   move       $v0, $zero
.L8000D424:
/* 00CFD4 8000D424 00804825 */  move        $t1, $a0
/* 00CFD8 8000D428 24590024 */  addiu       $t9, $v0, 0x24
.L8000D42C:
/* 00CFDC 8000D42C 8D010000 */  lw          $at, 0x0($t0)
/* 00CFE0 8000D430 2508000C */  addiu       $t0, $t0, 0xc
/* 00CFE4 8000D434 2529000C */  addiu       $t1, $t1, 0xc
/* 00CFE8 8000D438 AD2100E0 */  sw          $at, 0xe0($t1)
/* 00CFEC 8000D43C 8D01FFF8 */  lw          $at, -0x8($t0)
/* 00CFF0 8000D440 AD2100E4 */  sw          $at, 0xe4($t1)
/* 00CFF4 8000D444 8D01FFFC */  lw          $at, -0x4($t0)
/* 00CFF8 8000D448 1519FFF8 */  bne         $t0, $t9, .L8000D42C
/* 00CFFC 8000D44C AD2100E8 */   sw         $at, 0xe8($t1)
/* 00D000 8000D450 8D010000 */  lw          $at, 0x0($t0)
/* 00D004 8000D454 24020001 */  addiu       $v0, $zero, 0x1
/* 00D008 8000D458 AD2100EC */  sw          $at, 0xec($t1)
/* 00D00C 8000D45C 8D190004 */  lw          $t9, 0x4($t0)
/* 00D010 8000D460 24010001 */  addiu       $at, $zero, 0x1
/* 00D014 8000D464 AD3900F0 */  sw          $t9, 0xf0($t1)
/* 00D018 8000D468 8C8300F8 */  lw          $v1, 0xf8($a0)
/* 00D01C 8000D46C A4860100 */  sh          $a2, 0x100($a0)
/* 00D020 8000D470 306A0007 */  andi        $t2, $v1, 0x7
/* 00D024 8000D474 1541000B */  bne         $t2, $at, .L8000D4A4
/* 00D028 8000D478 00035B80 */   sll        $t3, $v1, 14
/* 00D02C 8000D47C 05600004 */  bltz        $t3, .L8000D490
/* 00D030 8000D480 3C014000 */   lui        $at, 0x4000
/* 00D034 8000D484 8C8C0110 */  lw          $t4, 0x110($a0)
/* 00D038 8000D488 55800007 */  bnel        $t4, $zero, .L8000D4A8
/* 00D03C 8000D48C 3C01F9FF */   lui        $at, 0xf9ff
.L8000D490:
/* 00D040 8000D490 44812000 */  mtc1        $at, $f4
/* 00D044 8000D494 AC800110 */  sw          $zero, 0x110($a0)
/* 00D048 8000D498 AC800114 */  sw          $zero, 0x114($a0)
/* 00D04C 8000D49C 8C8300F8 */  lw          $v1, 0xf8($a0)
/* 00D050 8000D4A0 E4840104 */  swc1        $f4, 0x104($a0)
.L8000D4A4:
/* 00D054 8000D4A4 3C01F9FF */  lui         $at, 0xf9ff
.L8000D4A8:
/* 00D058 8000D4A8 3421FFF7 */  ori         $at, $at, 0xfff7
/* 00D05C 8000D4AC 00616824 */  and         $t5, $v1, $at
/* 00D060 8000D4B0 AC8D00F8 */  sw          $t5, 0xf8($a0)
/* 00D064 8000D4B4 03E00008 */  jr          $ra
/* 00D068 8000D4B8 00000000 */   nop

glabel func_8000D4BC # 43
/* 00D06C 8000D4BC 8C990110 */  lw          $t9, 0x110($a0)
/* 00D070 8000D4C0 8C8F012C */  lw          $t7, 0x12c($a0)
/* 00D074 8000D4C4 84980140 */  lh          $t8, 0x140($a0)
/* 00D078 8000D4C8 240EFFFF */  addiu       $t6, $zero, -0x1
/* 00D07C 8000D4CC A480011E */  sh          $zero, 0x11e($a0)
/* 00D080 8000D4D0 A48E0120 */  sh          $t6, 0x120($a0)
/* 00D084 8000D4D4 AC80012C */  sw          $zero, 0x12c($a0)
/* 00D088 8000D4D8 A4800140 */  sh          $zero, 0x140($a0)
/* 00D08C 8000D4DC AC8F0128 */  sw          $t7, 0x128($a0)
/* 00D090 8000D4E0 17200002 */  bnez        $t9, .L8000D4EC
/* 00D094 8000D4E4 A498013E */   sh         $t8, 0x13e($a0)
/* 00D098 8000D4E8 AC850110 */  sw          $a1, 0x110($a0)
.L8000D4EC:
/* 00D09C 8000D4EC 03E00008 */  jr          $ra
/* 00D0A0 8000D4F0 00000000 */   nop

glabel func_8000D4F4 # 44
/* 00D0A4 8000D4F4 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 00D0A8 8000D4F8 AFBF003C */  sw          $ra, 0x3c($sp)
/* 00D0AC 8000D4FC AFB60038 */  sw          $s6, 0x38($sp)
/* 00D0B0 8000D500 AFB50034 */  sw          $s5, 0x34($sp)
/* 00D0B4 8000D504 AFB40030 */  sw          $s4, 0x30($sp)
/* 00D0B8 8000D508 AFB3002C */  sw          $s3, 0x2c($sp)
/* 00D0BC 8000D50C AFB20028 */  sw          $s2, 0x28($sp)
/* 00D0C0 8000D510 AFB10024 */  sw          $s1, 0x24($sp)
/* 00D0C4 8000D514 AFB00020 */  sw          $s0, 0x20($sp)
/* 00D0C8 8000D518 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 00D0CC 8000D51C AFA40040 */  sw          $a0, 0x40($sp)
/* 00D0D0 8000D520 8C930054 */  lw          $s3, 0x54($a0)
/* 00D0D4 8000D524 3C158007 */  lui         $s5, %hi(D_80069330)
/* 00D0D8 8000D528 24190001 */  addiu       $t9, $zero, 0x1
/* 00D0DC 8000D52C 966F011A */  lhu         $t7, 0x11a($s3)
/* 00D0E0 8000D530 26B59330 */  addiu       $s5, $s5, %lo(D_80069330)
/* 00D0E4 8000D534 2416002C */  addiu       $s6, $zero, 0x2c
/* 00D0E8 8000D538 15E00003 */  bnez        $t7, .L8000D548
/* 00D0EC 8000D53C 3C01800A */   lui        $at, %hi(D_800A618C)
/* 00D0F0 8000D540 2418FFFF */  addiu       $t8, $zero, -0x1
/* 00D0F4 8000D544 A6780100 */  sh          $t8, 0x100($s3)
.L8000D548:
/* 00D0F8 8000D548 A660011C */  sh          $zero, 0x11c($s3)
/* 00D0FC 8000D54C A6790118 */  sh          $t9, 0x118($s3)
/* 00D100 8000D550 C434618C */  lwc1        $f20, %lo(D_800A618C)($at)
/* 00D104 8000D554 86620100 */  lh          $v0, 0x100($s3)
.L8000D558:
/* 00D108 8000D558 04400003 */  bltz        $v0, .L8000D568
/* 00D10C 8000D55C 28410149 */   slti       $at, $v0, 0x149
/* 00D110 8000D560 14200003 */  bnez        $at, .L8000D570
/* 00D114 8000D564 00000000 */   nop
.L8000D568:
/* 00D118 8000D568 10000005 */  b           .L8000D580
/* 00D11C 8000D56C 0000A025 */   move       $s4, $zero
.L8000D570:
/* 00D120 8000D570 00560019 */  multu       $v0, $s6
/* 00D124 8000D574 00004012 */  mflo        $t0
/* 00D128 8000D578 02A8A021 */  addu        $s4, $s5, $t0
/* 00D12C 8000D57C 00000000 */  nop
.L8000D580:
/* 00D130 8000D580 86720120 */  lh          $s2, 0x120($s3)
/* 00D134 8000D584 06400003 */  bltz        $s2, .L8000D594
/* 00D138 8000D588 2A410149 */   slti       $at, $s2, 0x149
/* 00D13C 8000D58C 14200003 */  bnez        $at, .L8000D59C
/* 00D140 8000D590 00000000 */   nop
.L8000D594:
/* 00D144 8000D594 10000005 */  b           .L8000D5AC
/* 00D148 8000D598 00008025 */   move       $s0, $zero
.L8000D59C:
/* 00D14C 8000D59C 02560019 */  multu       $s2, $s6
/* 00D150 8000D5A0 00004812 */  mflo        $t1
/* 00D154 8000D5A4 02A98021 */  addu        $s0, $s5, $t1
/* 00D158 8000D5A8 00000000 */  nop
.L8000D5AC:
/* 00D15C 8000D5AC 16800007 */  bnez        $s4, .L8000D5CC
/* 00D160 8000D5B0 00000000 */   nop
/* 00D164 8000D5B4 16000005 */  bnez        $s0, .L8000D5CC
/* 00D168 8000D5B8 00000000 */   nop
/* 00D16C 8000D5BC 0C003745 */  jal         func_8000DD14
/* 00D170 8000D5C0 8FA40040 */   lw         $a0, 0x40($sp)
/* 00D174 8000D5C4 10000097 */  b           .L8000D824
/* 00D178 8000D5C8 8FBF003C */   lw         $ra, 0x3c($sp)
.L8000D5CC:
/* 00D17C 8000D5CC 12000006 */  beqz        $s0, .L8000D5E8
/* 00D180 8000D5D0 02807025 */   move       $t6, $s4
/* 00D184 8000D5D4 12800014 */  beqz        $s4, .L8000D628
/* 00D188 8000D5D8 02602025 */   move       $a0, $s3
/* 00D18C 8000D5DC 8E8A000C */  lw          $t2, 0xc($s4)
/* 00D190 8000D5E0 000A5940 */  sll         $t3, $t2, 5
/* 00D194 8000D5E4 05610010 */  bgez        $t3, .L8000D628
.L8000D5E8:
/* 00D198 8000D5E8 02607825 */   move       $t7, $s3
/* 00D19C 8000D5EC 268D0024 */  addiu       $t5, $s4, 0x24
.L8000D5F0:
/* 00D1A0 8000D5F0 8DC10000 */  lw          $at, 0x0($t6)
/* 00D1A4 8000D5F4 25CE000C */  addiu       $t6, $t6, 0xc
/* 00D1A8 8000D5F8 25EF000C */  addiu       $t7, $t7, 0xc
/* 00D1AC 8000D5FC ADE100E0 */  sw          $at, 0xe0($t7)
/* 00D1B0 8000D600 8DC1FFF8 */  lw          $at, -0x8($t6)
/* 00D1B4 8000D604 ADE100E4 */  sw          $at, 0xe4($t7)
/* 00D1B8 8000D608 8DC1FFFC */  lw          $at, -0x4($t6)
/* 00D1BC 8000D60C 15CDFFF8 */  bne         $t6, $t5, .L8000D5F0
/* 00D1C0 8000D610 ADE100E8 */   sw         $at, 0xe8($t7)
/* 00D1C4 8000D614 8DC10000 */  lw          $at, 0x0($t6)
/* 00D1C8 8000D618 ADE100EC */  sw          $at, 0xec($t7)
/* 00D1CC 8000D61C 8DCD0004 */  lw          $t5, 0x4($t6)
/* 00D1D0 8000D620 10000079 */  b           .L8000D808
/* 00D1D4 8000D624 ADED00F0 */   sw         $t5, 0xf0($t7)
.L8000D628:
/* 00D1D8 8000D628 8E110024 */  lw          $s1, 0x24($s0)
/* 00D1DC 8000D62C 16200003 */  bnez        $s1, .L8000D63C
/* 00D1E0 8000D630 00000000 */   nop
/* 00D1E4 8000D634 3C118009 */  lui         $s1, %hi(D_80096FB0)
/* 00D1E8 8000D638 26316FB0 */  addiu       $s1, $s1, %lo(D_80096FB0)
.L8000D63C:
/* 00D1EC 8000D63C 0C0034B2 */  jal         func_8000D2C8
/* 00D1F0 8000D640 02002825 */   move       $a1, $s0
/* 00D1F4 8000D644 10400005 */  beqz        $v0, .L8000D65C
/* 00D1F8 8000D648 02602025 */   move       $a0, $s3
/* 00D1FC 8000D64C 0C00352F */  jal         func_8000D4BC
/* 00D200 8000D650 02202825 */   move       $a1, $s1
/* 00D204 8000D654 1000006C */  b           .L8000D808
/* 00D208 8000D658 00000000 */   nop
.L8000D65C:
/* 00D20C 8000D65C 8E18000C */  lw          $t8, 0xc($s0)
/* 00D210 8000D660 0018C980 */  sll         $t9, $t8, 6
/* 00D214 8000D664 0723001A */  bgezl       $t9, .L8000D6D0
/* 00D218 8000D668 00008825 */   move       $s1, $zero
/* 00D21C 8000D66C 86020014 */  lh          $v0, 0x14($s0)
/* 00D220 8000D670 2401FFFF */  addiu       $at, $zero, -0x1
/* 00D224 8000D674 02602025 */  move        $a0, $s3
/* 00D228 8000D678 50410015 */  beql        $v0, $at, .L8000D6D0
/* 00D22C 8000D67C 00008825 */   move       $s1, $zero
/* 00D230 8000D680 04400004 */  bltz        $v0, .L8000D694
/* 00D234 8000D684 00409025 */   move       $s2, $v0
/* 00D238 8000D688 28410149 */  slti        $at, $v0, 0x149
/* 00D23C 8000D68C 14200003 */  bnez        $at, .L8000D69C
/* 00D240 8000D690 00000000 */   nop
.L8000D694:
/* 00D244 8000D694 10000005 */  b           .L8000D6AC
/* 00D248 8000D698 00008025 */   move       $s0, $zero
.L8000D69C:
/* 00D24C 8000D69C 02560019 */  multu       $s2, $s6
/* 00D250 8000D6A0 00004012 */  mflo        $t0
/* 00D254 8000D6A4 02A88021 */  addu        $s0, $s5, $t0
/* 00D258 8000D6A8 00000000 */  nop
.L8000D6AC:
/* 00D25C 8000D6AC 0C0034B2 */  jal         func_8000D2C8
/* 00D260 8000D6B0 02002825 */   move       $a1, $s0
/* 00D264 8000D6B4 10400006 */  beqz        $v0, .L8000D6D0
/* 00D268 8000D6B8 02602025 */   move       $a0, $s3
/* 00D26C 8000D6BC 0C00352F */  jal         func_8000D4BC
/* 00D270 8000D6C0 02202825 */   move       $a1, $s1
/* 00D274 8000D6C4 10000050 */  b           .L8000D808
/* 00D278 8000D6C8 00000000 */   nop
/* 00D27C 8000D6CC 00008825 */  move        $s1, $zero
.L8000D6D0:
/* 00D280 8000D6D0 926900FF */  lbu         $t1, 0xff($s3)
/* 00D284 8000D6D4 920B0012 */  lbu         $t3, 0x12($s0)
/* 00D288 8000D6D8 3C04800C */  lui         $a0, %hi(D_800BAFB0)
/* 00D28C 8000D6DC 00095200 */  sll         $t2, $t1, 8
/* 00D290 8000D6E0 2484AFB0 */  addiu       $a0, $a0, %lo(D_800BAFB0)
/* 00D294 8000D6E4 0C0115FE */  jal         func_800457F8
/* 00D298 8000D6E8 014B2821 */   addu       $a1, $t2, $t3
/* 00D29C 8000D6EC 2443FF00 */  addiu       $v1, $v0, -0x100
/* 00D2A0 8000D6F0 240100FE */  addiu       $at, $zero, 0xfe
/* 00D2A4 8000D6F4 1441000A */  bne         $v0, $at, .L8000D720
/* 00D2A8 8000D6F8 00602825 */   move       $a1, $v1
/* 00D2AC 8000D6FC 4406A000 */  mfc1        $a2, $f20
/* 00D2B0 8000D700 02602025 */  move        $a0, $s3
/* 00D2B4 8000D704 0C0034CE */  jal         func_8000D338
/* 00D2B8 8000D708 02402825 */   move       $a1, $s2
/* 00D2BC 8000D70C 02602025 */  move        $a0, $s3
/* 00D2C0 8000D710 0C00352F */  jal         func_8000D4BC
/* 00D2C4 8000D714 02202825 */   move       $a1, $s1
/* 00D2C8 8000D718 1000003B */  b           .L8000D808
/* 00D2CC 8000D71C 00000000 */   nop
.L8000D720:
/* 00D2D0 8000D720 2401FFFD */  addiu       $at, $zero, -0x3
/* 00D2D4 8000D724 14610016 */  bne         $v1, $at, .L8000D780
/* 00D2D8 8000D728 02602025 */   move       $a0, $s3
/* 00D2DC 8000D72C 02007025 */  move        $t6, $s0
/* 00D2E0 8000D730 02607825 */  move        $t7, $s3
/* 00D2E4 8000D734 260D0024 */  addiu       $t5, $s0, 0x24
.L8000D738:
/* 00D2E8 8000D738 8DC10000 */  lw          $at, 0x0($t6)
/* 00D2EC 8000D73C 25CE000C */  addiu       $t6, $t6, 0xc
/* 00D2F0 8000D740 25EF000C */  addiu       $t7, $t7, 0xc
/* 00D2F4 8000D744 ADE100E0 */  sw          $at, 0xe0($t7)
/* 00D2F8 8000D748 8DC1FFF8 */  lw          $at, -0x8($t6)
/* 00D2FC 8000D74C ADE100E4 */  sw          $at, 0xe4($t7)
/* 00D300 8000D750 8DC1FFFC */  lw          $at, -0x4($t6)
/* 00D304 8000D754 15CDFFF8 */  bne         $t6, $t5, .L8000D738
/* 00D308 8000D758 ADE100E8 */   sw         $at, 0xe8($t7)
/* 00D30C 8000D75C 8DC10000 */  lw          $at, 0x0($t6)
/* 00D310 8000D760 02602025 */  move        $a0, $s3
/* 00D314 8000D764 02202825 */  move        $a1, $s1
/* 00D318 8000D768 ADE100EC */  sw          $at, 0xec($t7)
/* 00D31C 8000D76C 8DCD0004 */  lw          $t5, 0x4($t6)
/* 00D320 8000D770 0C00352F */  jal         func_8000D4BC
/* 00D324 8000D774 ADED00F0 */   sw         $t5, 0xf0($t7)
/* 00D328 8000D778 10000023 */  b           .L8000D808
/* 00D32C 8000D77C 00000000 */   nop
.L8000D780:
/* 00D330 8000D780 0C0034F8 */  jal         func_8000D3E0
/* 00D334 8000D784 02403025 */   move       $a2, $s2
/* 00D338 8000D788 10400005 */  beqz        $v0, .L8000D7A0
/* 00D33C 8000D78C 02602025 */   move       $a0, $s3
/* 00D340 8000D790 0C00352F */  jal         func_8000D4BC
/* 00D344 8000D794 02202825 */   move       $a1, $s1
/* 00D348 8000D798 1000001B */  b           .L8000D808
/* 00D34C 8000D79C 00000000 */   nop
.L8000D7A0:
/* 00D350 8000D7A0 1680000A */  bnez        $s4, .L8000D7CC
/* 00D354 8000D7A4 02804025 */   move       $t0, $s4
/* 00D358 8000D7A8 4406A000 */  mfc1        $a2, $f20
/* 00D35C 8000D7AC 02602025 */  move        $a0, $s3
/* 00D360 8000D7B0 0C0034CE */  jal         func_8000D338
/* 00D364 8000D7B4 02402825 */   move       $a1, $s2
/* 00D368 8000D7B8 02602025 */  move        $a0, $s3
/* 00D36C 8000D7BC 0C00352F */  jal         func_8000D4BC
/* 00D370 8000D7C0 02202825 */   move       $a1, $s1
/* 00D374 8000D7C4 10000010 */  b           .L8000D808
/* 00D378 8000D7C8 00000000 */   nop
.L8000D7CC:
/* 00D37C 8000D7CC 02604825 */  move        $t1, $s3
/* 00D380 8000D7D0 26990024 */  addiu       $t9, $s4, 0x24
.L8000D7D4:
/* 00D384 8000D7D4 8D010000 */  lw          $at, 0x0($t0)
/* 00D388 8000D7D8 2508000C */  addiu       $t0, $t0, 0xc
/* 00D38C 8000D7DC 2529000C */  addiu       $t1, $t1, 0xc
/* 00D390 8000D7E0 AD2100E0 */  sw          $at, 0xe0($t1)
/* 00D394 8000D7E4 8D01FFF8 */  lw          $at, -0x8($t0)
/* 00D398 8000D7E8 AD2100E4 */  sw          $at, 0xe4($t1)
/* 00D39C 8000D7EC 8D01FFFC */  lw          $at, -0x4($t0)
/* 00D3A0 8000D7F0 1519FFF8 */  bne         $t0, $t9, .L8000D7D4
/* 00D3A4 8000D7F4 AD2100E8 */   sw         $at, 0xe8($t1)
/* 00D3A8 8000D7F8 8D010000 */  lw          $at, 0x0($t0)
/* 00D3AC 8000D7FC AD2100EC */  sw          $at, 0xec($t1)
/* 00D3B0 8000D800 8D190004 */  lw          $t9, 0x4($t0)
/* 00D3B4 8000D804 AD3900F0 */  sw          $t9, 0xf0($t1)
.L8000D808:
/* 00D3B8 8000D808 0C003446 */  jal         func_8000D118
/* 00D3BC 8000D80C 8FA40040 */   lw         $a0, 0x40($sp)
/* 00D3C0 8000D810 5440FF51 */  bnel        $v0, $zero, .L8000D558
/* 00D3C4 8000D814 86620100 */   lh         $v0, 0x100($s3)
/* 00D3C8 8000D818 0C003254 */  jal         func_8000C950
/* 00D3CC 8000D81C 8FA40040 */   lw         $a0, 0x40($sp)
/* 00D3D0 8000D820 8FBF003C */  lw          $ra, 0x3c($sp)
.L8000D824:
/* 00D3D4 8000D824 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 00D3D8 8000D828 8FB00020 */  lw          $s0, 0x20($sp)
/* 00D3DC 8000D82C 8FB10024 */  lw          $s1, 0x24($sp)
/* 00D3E0 8000D830 8FB20028 */  lw          $s2, 0x28($sp)
/* 00D3E4 8000D834 8FB3002C */  lw          $s3, 0x2c($sp)
/* 00D3E8 8000D838 8FB40030 */  lw          $s4, 0x30($sp)
/* 00D3EC 8000D83C 8FB50034 */  lw          $s5, 0x34($sp)
/* 00D3F0 8000D840 8FB60038 */  lw          $s6, 0x38($sp)
/* 00D3F4 8000D844 03E00008 */  jr          $ra
/* 00D3F8 8000D848 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_8000D84C # 45
/* 00D3FC 8000D84C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00D400 8000D850 AFB30020 */  sw          $s3, 0x20($sp)
/* 00D404 8000D854 3C13800C */  lui         $s3, %hi(D_800BAFB0)
/* 00D408 8000D858 2673AFB0 */  addiu       $s3, $s3, %lo(D_800BAFB0)
/* 00D40C 8000D85C AFBF002C */  sw          $ra, 0x2c($sp)
/* 00D410 8000D860 AFB50028 */  sw          $s5, 0x28($sp)
/* 00D414 8000D864 AFB40024 */  sw          $s4, 0x24($sp)
/* 00D418 8000D868 AFB2001C */  sw          $s2, 0x1c($sp)
/* 00D41C 8000D86C AFB10018 */  sw          $s1, 0x18($sp)
/* 00D420 8000D870 AFB00014 */  sw          $s0, 0x14($sp)
/* 00D424 8000D874 02602025 */  move        $a0, $s3
/* 00D428 8000D878 0C011598 */  jal         func_80045660
/* 00D42C 8000D87C 24050125 */   addiu      $a1, $zero, 0x125
/* 00D430 8000D880 3C028007 */  lui         $v0, %hi(D_8006CBBC)
/* 00D434 8000D884 2451CBBC */  addiu       $s1, $v0, %lo(D_8006CBBC)
/* 00D438 8000D888 922E0000 */  lbu         $t6, 0x0($s1)
/* 00D43C 8000D88C 24120030 */  addiu       $s2, $zero, 0x30
/* 00D440 8000D890 3C0F8007 */  lui         $t7, %hi(D_8006CBBC)
/* 00D444 8000D894 124E0012 */  beq         $s2, $t6, .L8000D8E0
/* 00D448 8000D898 25EFCBBC */   addiu      $t7, $t7, %lo(D_8006CBBC)
/* 00D44C 8000D89C 91E20000 */  lbu         $v0, 0x0($t7)
/* 00D450 8000D8A0 92390001 */  lbu         $t9, 0x1($s1)
.L8000D8A4:
/* 00D454 8000D8A4 0002C200 */  sll         $t8, $v0, 8
/* 00D458 8000D8A8 02602025 */  move        $a0, $s3
/* 00D45C 8000D8AC 03198021 */  addu        $s0, $t8, $t9
/* 00D460 8000D8B0 0C0115FE */  jal         func_800457F8
/* 00D464 8000D8B4 02002825 */   move       $a1, $s0
/* 00D468 8000D8B8 14400005 */  bnez        $v0, .L8000D8D0
/* 00D46C 8000D8BC 02602025 */   move       $a0, $s3
/* 00D470 8000D8C0 86250002 */  lh          $a1, 0x2($s1)
/* 00D474 8000D8C4 02003025 */  move        $a2, $s0
/* 00D478 8000D8C8 0C0115C1 */  jal         func_80045704
/* 00D47C 8000D8CC 24A50100 */   addiu      $a1, $a1, 0x100
.L8000D8D0:
/* 00D480 8000D8D0 92220004 */  lbu         $v0, 0x4($s1)
/* 00D484 8000D8D4 26310004 */  addiu       $s1, $s1, 0x4
/* 00D488 8000D8D8 5642FFF2 */  bnel        $s2, $v0, .L8000D8A4
/* 00D48C 8000D8DC 92390001 */   lbu        $t9, 0x1($s1)
.L8000D8E0:
/* 00D490 8000D8E0 3C118007 */  lui         $s1, %hi(D_80069330)
/* 00D494 8000D8E4 26319330 */  addiu       $s1, $s1, %lo(D_80069330)
/* 00D498 8000D8E8 00009025 */  move        $s2, $zero
/* 00D49C 8000D8EC 24150149 */  addiu       $s5, $zero, 0x149
/* 00D4A0 8000D8F0 3C140004 */  lui         $s4, 0x4
.L8000D8F4:
/* 00D4A4 8000D8F4 8E28000C */  lw          $t0, 0xc($s1)
/* 00D4A8 8000D8F8 01144824 */  and         $t1, $t0, $s4
/* 00D4AC 8000D8FC 5120000F */  beql        $t1, $zero, .L8000D93C
/* 00D4B0 8000D900 26520001 */   addiu      $s2, $s2, 0x1
/* 00D4B4 8000D904 92230012 */  lbu         $v1, 0x12($s1)
/* 00D4B8 8000D908 92220013 */  lbu         $v0, 0x13($s1)
/* 00D4BC 8000D90C 02602025 */  move        $a0, $s3
/* 00D4C0 8000D910 00035200 */  sll         $t2, $v1, 8
/* 00D4C4 8000D914 10430008 */  beq         $v0, $v1, .L8000D938
/* 00D4C8 8000D918 01428021 */   addu       $s0, $t2, $v0
/* 00D4CC 8000D91C 0C0115FE */  jal         func_800457F8
/* 00D4D0 8000D920 02002825 */   move       $a1, $s0
/* 00D4D4 8000D924 14400004 */  bnez        $v0, .L8000D938
/* 00D4D8 8000D928 02602025 */   move       $a0, $s3
/* 00D4DC 8000D92C 26450100 */  addiu       $a1, $s2, 0x100
/* 00D4E0 8000D930 0C0115C1 */  jal         func_80045704
/* 00D4E4 8000D934 02003025 */   move       $a2, $s0
.L8000D938:
/* 00D4E8 8000D938 26520001 */  addiu       $s2, $s2, 0x1
.L8000D93C:
/* 00D4EC 8000D93C 1655FFED */  bne         $s2, $s5, .L8000D8F4
/* 00D4F0 8000D940 2631002C */   addiu      $s1, $s1, 0x2c
/* 00D4F4 8000D944 8FBF002C */  lw          $ra, 0x2c($sp)
/* 00D4F8 8000D948 8FB00014 */  lw          $s0, 0x14($sp)
/* 00D4FC 8000D94C 8FB10018 */  lw          $s1, 0x18($sp)
/* 00D500 8000D950 8FB2001C */  lw          $s2, 0x1c($sp)
/* 00D504 8000D954 8FB30020 */  lw          $s3, 0x20($sp)
/* 00D508 8000D958 8FB40024 */  lw          $s4, 0x24($sp)
/* 00D50C 8000D95C 8FB50028 */  lw          $s5, 0x28($sp)
/* 00D510 8000D960 03E00008 */  jr          $ra
/* 00D514 8000D964 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8000D968 # 46
/* 00D518 8000D968 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00D51C 8000D96C AFBF0014 */  sw          $ra, 0x14($sp)
/* 00D520 8000D970 3C04800C */  lui         $a0, %hi(D_800BAFB0)
/* 00D524 8000D974 0C0115B1 */  jal         func_800456C4
/* 00D528 8000D978 2484AFB0 */   addiu      $a0, $a0, %lo(D_800BAFB0)
/* 00D52C 8000D97C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00D530 8000D980 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00D534 8000D984 03E00008 */  jr          $ra
/* 00D538 8000D988 00000000 */   nop

glabel func_8000D98C # 47
/* 00D53C 8000D98C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00D540 8000D990 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00D544 8000D994 AFB00018 */  sw          $s0, 0x18($sp)
/* 00D548 8000D998 AFA40028 */  sw          $a0, 0x28($sp)
/* 00D54C 8000D99C 8C900054 */  lw          $s0, 0x54($a0)
/* 00D550 8000D9A0 44800000 */  mtc1        $zero, $f0
/* 00D554 8000D9A4 860F0118 */  lh          $t7, 0x118($s0)
/* 00D558 8000D9A8 E60001C0 */  swc1        $f0, 0x1c0($s0)
/* 00D55C 8000D9AC E60001C4 */  swc1        $f0, 0x1c4($s0)
/* 00D560 8000D9B0 11E00003 */  beqz        $t7, .L8000D9C0
/* 00D564 8000D9B4 E60001C8 */   swc1       $f0, 0x1c8($s0)
/* 00D568 8000D9B8 0C003455 */  jal         func_8000D154
/* 00D56C 8000D9BC 8FA40028 */   lw         $a0, 0x28($sp)
.L8000D9C0:
/* 00D570 8000D9C0 9618011A */  lhu         $t8, 0x11a($s0)
/* 00D574 8000D9C4 8FA40028 */  lw          $a0, 0x28($sp)
/* 00D578 8000D9C8 2605014C */  addiu       $a1, $s0, 0x14c
/* 00D57C 8000D9CC 53000067 */  beql        $t8, $zero, .L8000DB6C
/* 00D580 8000D9D0 8FBF001C */   lw         $ra, 0x1c($sp)
/* 00D584 8000D9D4 0C008ABF */  jal         func_80022AFC
/* 00D588 8000D9D8 26060144 */   addiu      $a2, $s0, 0x144
/* 00D58C 8000D9DC 8FA40028 */  lw          $a0, 0x28($sp)
/* 00D590 8000D9E0 26050154 */  addiu       $a1, $s0, 0x154
/* 00D594 8000D9E4 0C008ABF */  jal         func_80022AFC
/* 00D598 8000D9E8 26060148 */   addiu      $a2, $s0, 0x148
/* 00D59C 8000D9EC 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 00D5A0 8000D9F0 C4262C64 */  lwc1        $f6, %lo(D_800B2C64)($at)
/* 00D5A4 8000D9F4 C6040130 */  lwc1        $f4, 0x130($s0)
/* 00D5A8 8000D9F8 C6080138 */  lwc1        $f8, 0x138($s0)
/* 00D5AC 8000D9FC 44808000 */  mtc1        $zero, $f16
/* 00D5B0 8000DA00 46062002 */  mul.s       $f0, $f4, $f6
/* 00D5B4 8000DA04 3C04800C */  lui         $a0, %hi(D_800BB0B0)
/* 00D5B8 8000DA08 2484B0B0 */  addiu       $a0, $a0, %lo(D_800BB0B0)
/* 00D5BC 8000DA0C 46004281 */  sub.s       $f10, $f8, $f0
/* 00D5C0 8000DA10 E60A0138 */  swc1        $f10, 0x138($s0)
/* 00D5C4 8000DA14 C6020138 */  lwc1        $f2, 0x138($s0)
/* 00D5C8 8000DA18 4610103E */  c.le.s      $f2, $f16
/* 00D5CC 8000DA1C 00000000 */  nop
/* 00D5D0 8000DA20 45020003 */  bc1fl       .L8000DA30
/* 00D5D4 8000DA24 9602011A */   lhu        $v0, 0x11a($s0)
/* 00D5D8 8000DA28 46020000 */  add.s       $f0, $f0, $f2
/* 00D5DC 8000DA2C 9602011A */  lhu         $v0, 0x11a($s0)
.L8000DA30:
/* 00D5E0 8000DA30 24010001 */  addiu       $at, $zero, 0x1
/* 00D5E4 8000DA34 10410007 */  beq         $v0, $at, .L8000DA54
/* 00D5E8 8000DA38 24010002 */   addiu      $at, $zero, 0x2
/* 00D5EC 8000DA3C 10410020 */  beq         $v0, $at, .L8000DAC0
/* 00D5F0 8000DA40 24010003 */   addiu      $at, $zero, 0x3
/* 00D5F4 8000DA44 5041000F */  beql        $v0, $at, .L8000DA84
/* 00D5F8 8000DA48 C6120134 */   lwc1       $f18, 0x134($s0)
/* 00D5FC 8000DA4C 1000001D */  b           .L8000DAC4
/* 00D600 8000DA50 8E02010C */   lw         $v0, 0x10c($s0)
.L8000DA54:
/* 00D604 8000DA54 860500FC */  lh          $a1, 0xfc($s0)
/* 00D608 8000DA58 0C005678 */  jal         func_800159E0
/* 00D60C 8000DA5C E7A00020 */   swc1       $f0, 0x20($sp)
/* 00D610 8000DA60 C7A00020 */  lwc1        $f0, 0x20($sp)
/* 00D614 8000DA64 8FA40028 */  lw          $a0, 0x28($sp)
/* 00D618 8000DA68 02002825 */  move        $a1, $s0
/* 00D61C 8000DA6C 44060000 */  mfc1        $a2, $f0
/* 00D620 8000DA70 0C003312 */  jal         func_8000CC48
/* 00D624 8000DA74 00000000 */   nop
/* 00D628 8000DA78 10000012 */  b           .L8000DAC4
/* 00D62C 8000DA7C 8E02010C */   lw         $v0, 0x10c($s0)
/* 00D630 8000DA80 C6120134 */  lwc1        $f18, 0x134($s0)
.L8000DA84:
/* 00D634 8000DA84 3C013F80 */  lui         $at, 0x3f80
/* 00D638 8000DA88 44813000 */  mtc1        $at, $f6
/* 00D63C 8000DA8C 46121003 */  div.s       $f0, $f2, $f18
/* 00D640 8000DA90 C6040008 */  lwc1        $f4, 0x8($s0)
/* 00D644 8000DA94 C6100004 */  lwc1        $f16, 0x4($s0)
/* 00D648 8000DA98 2604023C */  addiu       $a0, $s0, 0x23c
/* 00D64C 8000DA9C 26050018 */  addiu       $a1, $s0, 0x18
/* 00D650 8000DAA0 46003201 */  sub.s       $f8, $f6, $f0
/* 00D654 8000DAA4 44060000 */  mfc1        $a2, $f0
/* 00D658 8000DAA8 46082282 */  mul.s       $f10, $f4, $f8
/* 00D65C 8000DAAC 00000000 */  nop
/* 00D660 8000DAB0 46008482 */  mul.s       $f18, $f16, $f0
/* 00D664 8000DAB4 460A9180 */  add.s       $f6, $f18, $f10
/* 00D668 8000DAB8 0C003417 */  jal         func_8000D05C
/* 00D66C 8000DABC E6060004 */   swc1       $f6, 0x4($s0)
.L8000DAC0:
/* 00D670 8000DAC0 8E02010C */  lw          $v0, 0x10c($s0)
.L8000DAC4:
/* 00D674 8000DAC4 00001825 */  move        $v1, $zero
/* 00D678 8000DAC8 5040000C */  beql        $v0, $zero, .L8000DAFC
/* 00D67C 8000DACC C6020138 */   lwc1       $f2, 0x138($s0)
/* 00D680 8000DAD0 0040F809 */  jalr        $v0
/* 00D684 8000DAD4 8FA40028 */   lw         $a0, 0x28($sp)
/* 00D688 8000DAD8 24010001 */  addiu       $at, $zero, 0x1
/* 00D68C 8000DADC 14410004 */  bne         $v0, $at, .L8000DAF0
/* 00D690 8000DAE0 00401825 */   move       $v1, $v0
/* 00D694 8000DAE4 44802000 */  mtc1        $zero, $f4
/* 00D698 8000DAE8 00000000 */  nop
/* 00D69C 8000DAEC E6040138 */  swc1        $f4, 0x138($s0)
.L8000DAF0:
/* 00D6A0 8000DAF0 10000002 */  b           .L8000DAFC
/* 00D6A4 8000DAF4 C6020138 */   lwc1       $f2, 0x138($s0)
/* 00D6A8 8000DAF8 C6020138 */  lwc1        $f2, 0x138($s0)
.L8000DAFC:
/* 00D6AC 8000DAFC 44804000 */  mtc1        $zero, $f8
/* 00D6B0 8000DB00 00000000 */  nop
/* 00D6B4 8000DB04 4602403C */  c.lt.s      $f8, $f2
/* 00D6B8 8000DB08 00000000 */  nop
/* 00D6BC 8000DB0C 45030017 */  bc1tl       .L8000DB6C
/* 00D6C0 8000DB10 8FBF001C */   lw         $ra, 0x1c($sp)
/* 00D6C4 8000DB14 8E1900F8 */  lw          $t9, 0xf8($s0)
/* 00D6C8 8000DB18 33280008 */  andi        $t0, $t9, 0x8
/* 00D6CC 8000DB1C 11000010 */  beqz        $t0, .L8000DB60
/* 00D6D0 8000DB20 00000000 */   nop
/* 00D6D4 8000DB24 8609011E */  lh          $t1, 0x11e($s0)
/* 00D6D8 8000DB28 1520000D */  bnez        $t1, .L8000DB60
/* 00D6DC 8000DB2C 00000000 */   nop
/* 00D6E0 8000DB30 1460000B */  bnez        $v1, .L8000DB60
/* 00D6E4 8000DB34 00000000 */   nop
/* 00D6E8 8000DB38 0C003446 */  jal         func_8000D118
/* 00D6EC 8000DB3C 8FA40028 */   lw         $a0, 0x28($sp)
/* 00D6F0 8000DB40 14400007 */  bnez        $v0, .L8000DB60
/* 00D6F4 8000DB44 00000000 */   nop
/* 00D6F8 8000DB48 860A011C */  lh          $t2, 0x11c($s0)
/* 00D6FC 8000DB4C 240C0001 */  addiu       $t4, $zero, 0x1
/* 00D700 8000DB50 A60C0118 */  sh          $t4, 0x118($s0)
/* 00D704 8000DB54 254B0001 */  addiu       $t3, $t2, 0x1
/* 00D708 8000DB58 10000003 */  b           .L8000DB68
/* 00D70C 8000DB5C A60B011C */   sh         $t3, 0x11c($s0)
.L8000DB60:
/* 00D710 8000DB60 0C00353D */  jal         func_8000D4F4
/* 00D714 8000DB64 8FA40028 */   lw         $a0, 0x28($sp)
.L8000DB68:
/* 00D718 8000DB68 8FBF001C */  lw          $ra, 0x1c($sp)
.L8000DB6C:
/* 00D71C 8000DB6C 8FB00018 */  lw          $s0, 0x18($sp)
/* 00D720 8000DB70 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00D724 8000DB74 03E00008 */  jr          $ra
/* 00D728 8000DB78 00000000 */   nop

glabel func_8000DB7C # 48
/* 00D72C 8000DB7C 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 00D730 8000DB80 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00D734 8000DB84 AFB00018 */  sw          $s0, 0x18($sp)
/* 00D738 8000DB88 8C870054 */  lw          $a3, 0x54($a0)
/* 00D73C 8000DB8C 00808025 */  move        $s0, $a0
/* 00D740 8000DB90 94E50000 */  lhu         $a1, 0x0($a3)
/* 00D744 8000DB94 50A00027 */  beql        $a1, $zero, .L8000DC34
/* 00D748 8000DB98 8FBF001C */   lw         $ra, 0x1c($sp)
/* 00D74C 8000DB9C 8C8E0050 */  lw          $t6, 0x50($a0)
/* 00D750 8000DBA0 24010001 */  addiu       $at, $zero, 0x1
/* 00D754 8000DBA4 10A10008 */  beq         $a1, $at, .L8000DBC8
/* 00D758 8000DBA8 8DC20054 */   lw         $v0, 0x54($t6)
/* 00D75C 8000DBAC 24010002 */  addiu       $at, $zero, 0x2
/* 00D760 8000DBB0 10A10010 */  beq         $a1, $at, .L8000DBF4
/* 00D764 8000DBB4 24010003 */   addiu      $at, $zero, 0x3
/* 00D768 8000DBB8 50A10011 */  beql        $a1, $at, .L8000DC00
/* 00D76C 8000DBBC C44A0138 */   lwc1       $f10, 0x138($v0)
/* 00D770 8000DBC0 1000001C */  b           .L8000DC34
/* 00D774 8000DBC4 8FBF001C */   lw         $ra, 0x1c($sp)
.L8000DBC8:
/* 00D778 8000DBC8 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 00D77C 8000DBCC C4262C64 */  lwc1        $f6, %lo(D_800B2C64)($at)
/* 00D780 8000DBD0 C4440130 */  lwc1        $f4, 0x130($v0)
/* 00D784 8000DBD4 02002025 */  move        $a0, $s0
/* 00D788 8000DBD8 00E02825 */  move        $a1, $a3
/* 00D78C 8000DBDC 46062202 */  mul.s       $f8, $f4, $f6
/* 00D790 8000DBE0 44064000 */  mfc1        $a2, $f8
/* 00D794 8000DBE4 0C00332C */  jal         func_8000CCB0
/* 00D798 8000DBE8 00000000 */   nop
/* 00D79C 8000DBEC 10000011 */  b           .L8000DC34
/* 00D7A0 8000DBF0 8FBF001C */   lw         $ra, 0x1c($sp)
.L8000DBF4:
/* 00D7A4 8000DBF4 1000000E */  b           .L8000DC30
/* 00D7A8 8000DBF8 A4E00000 */   sh         $zero, 0x0($a3)
/* 00D7AC 8000DBFC C44A0138 */  lwc1        $f10, 0x138($v0)
.L8000DC00:
/* 00D7B0 8000DC00 C4500134 */  lwc1        $f16, 0x134($v0)
/* 00D7B4 8000DC04 24E40004 */  addiu       $a0, $a3, 0x4
/* 00D7B8 8000DC08 27A50028 */  addiu       $a1, $sp, 0x28
/* 00D7BC 8000DC0C 46105483 */  div.s       $f18, $f10, $f16
/* 00D7C0 8000DC10 44069000 */  mfc1        $a2, $f18
/* 00D7C4 8000DC14 0C003417 */  jal         func_8000D05C
/* 00D7C8 8000DC18 00000000 */   nop
/* 00D7CC 8000DC1C 27A40028 */  addiu       $a0, $sp, 0x28
/* 00D7D0 8000DC20 2605000C */  addiu       $a1, $s0, 0xc
/* 00D7D4 8000DC24 26060010 */  addiu       $a2, $s0, 0x10
/* 00D7D8 8000DC28 0C002EC9 */  jal         func_8000BB24
/* 00D7DC 8000DC2C 26070014 */   addiu      $a3, $s0, 0x14
.L8000DC30:
/* 00D7E0 8000DC30 8FBF001C */  lw          $ra, 0x1c($sp)
.L8000DC34:
/* 00D7E4 8000DC34 8FB00018 */  lw          $s0, 0x18($sp)
/* 00D7E8 8000DC38 27BD0060 */  addiu       $sp, $sp, 0x60
/* 00D7EC 8000DC3C 03E00008 */  jr          $ra
/* 00D7F0 8000DC40 00000000 */   nop

glabel func_8000DC44 # 49
/* 00D7F4 8000DC44 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00D7F8 8000DC48 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00D7FC 8000DC4C AFA40020 */  sw          $a0, 0x20($sp)
/* 00D800 8000DC50 AFA50024 */  sw          $a1, 0x24($sp)
/* 00D804 8000DC54 AFA60028 */  sw          $a2, 0x28($sp)
/* 00D808 8000DC58 AFA7002C */  sw          $a3, 0x2c($sp)
/* 00D80C 8000DC5C 8C830054 */  lw          $v1, 0x54($a0)
/* 00D810 8000DC60 00A02025 */  move        $a0, $a1
/* 00D814 8000DC64 0C003233 */  jal         func_8000C8CC
/* 00D818 8000DC68 AFA3001C */   sw         $v1, 0x1c($sp)
/* 00D81C 8000DC6C 1440000D */  bnez        $v0, .L8000DCA4
/* 00D820 8000DC70 8FA3001C */   lw         $v1, 0x1c($sp)
/* 00D824 8000DC74 8FAF0024 */  lw          $t7, 0x24($sp)
/* 00D828 8000DC78 3C048007 */  lui         $a0, %hi(D_80069344)
/* 00D82C 8000DC7C AFA3001C */  sw          $v1, 0x1c($sp)
/* 00D830 8000DC80 000FC080 */  sll         $t8, $t7, 2
/* 00D834 8000DC84 030FC023 */  subu        $t8, $t8, $t7
/* 00D838 8000DC88 0018C080 */  sll         $t8, $t8, 2
/* 00D83C 8000DC8C 030FC023 */  subu        $t8, $t8, $t7
/* 00D840 8000DC90 0018C080 */  sll         $t8, $t8, 2
/* 00D844 8000DC94 00982021 */  addu        $a0, $a0, $t8
/* 00D848 8000DC98 0C003233 */  jal         func_8000C8CC
/* 00D84C 8000DC9C 84849344 */   lh         $a0, %lo(D_80069344)($a0)
/* 00D850 8000DCA0 8FA3001C */  lw          $v1, 0x1c($sp)
.L8000DCA4:
/* 00D854 8000DCA4 8FB90024 */  lw          $t9, 0x24($sp)
/* 00D858 8000DCA8 8FA2002C */  lw          $v0, 0x2c($sp)
/* 00D85C 8000DCAC 8C690124 */  lw          $t1, 0x124($v1)
/* 00D860 8000DCB0 A4790120 */  sh          $t9, 0x120($v1)
/* 00D864 8000DCB4 8FA80028 */  lw          $t0, 0x28($sp)
/* 00D868 8000DCB8 240E0001 */  addiu       $t6, $zero, 0x1
/* 00D86C 8000DCBC A4680140 */  sh          $t0, 0x140($v1)
/* 00D870 8000DCC0 AC490000 */  sw          $t1, 0x0($v0)
/* 00D874 8000DCC4 8C6B0124 */  lw          $t3, 0x124($v1)
/* 00D878 8000DCC8 946D011A */  lhu         $t5, 0x11a($v1)
/* 00D87C 8000DCCC AC69012C */  sw          $t1, 0x12c($v1)
/* 00D880 8000DCD0 256C0001 */  addiu       $t4, $t3, 0x1
/* 00D884 8000DCD4 15A00005 */  bnez        $t5, .L8000DCEC
/* 00D888 8000DCD8 AC6C0124 */   sw         $t4, 0x124($v1)
/* 00D88C 8000DCDC 0C00353D */  jal         func_8000D4F4
/* 00D890 8000DCE0 8FA40020 */   lw         $a0, 0x20($sp)
/* 00D894 8000DCE4 10000003 */  b           .L8000DCF4
/* 00D898 8000DCE8 24020001 */   addiu      $v0, $zero, 0x1
.L8000DCEC:
/* 00D89C 8000DCEC A46E011E */  sh          $t6, 0x11e($v1)
/* 00D8A0 8000DCF0 00001025 */  move        $v0, $zero
.L8000DCF4:
/* 00D8A4 8000DCF4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00D8A8 8000DCF8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00D8AC 8000DCFC 03E00008 */  jr          $ra
/* 00D8B0 8000DD00 00000000 */   nop

glabel func_8000DD04 # 50
/* 00D8B4 8000DD04 8C820054 */  lw          $v0, 0x54($a0)
/* 00D8B8 8000DD08 240E0001 */  addiu       $t6, $zero, 0x1
/* 00D8BC 8000DD0C 03E00008 */  jr          $ra
/* 00D8C0 8000DD10 A44E011E */   sh         $t6, 0x11e($v0)

glabel func_8000DD14 # 51
/* 00D8C4 8000DD14 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00D8C8 8000DD18 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00D8CC 8000DD1C 8C820054 */  lw          $v0, 0x54($a0)
/* 00D8D0 8000DD20 A4400118 */  sh          $zero, 0x118($v0)
/* 00D8D4 8000DD24 A440011E */  sh          $zero, 0x11e($v0)
/* 00D8D8 8000DD28 AC400128 */  sw          $zero, 0x128($v0)
/* 00D8DC 8000DD2C AC400150 */  sw          $zero, 0x150($v0)
/* 00D8E0 8000DD30 AC40014C */  sw          $zero, 0x14c($v0)
/* 00D8E4 8000DD34 AC400154 */  sw          $zero, 0x154($v0)
/* 00D8E8 8000DD38 A04000FF */  sb          $zero, 0xff($v0)
/* 00D8EC 8000DD3C 0C003267 */  jal         func_8000C99C
/* 00D8F0 8000DD40 AFA40018 */   sw         $a0, 0x18($sp)
/* 00D8F4 8000DD44 0C003757 */  jal         func_8000DD5C
/* 00D8F8 8000DD48 8FA40018 */   lw         $a0, 0x18($sp)
/* 00D8FC 8000DD4C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00D900 8000DD50 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00D904 8000DD54 03E00008 */  jr          $ra
/* 00D908 8000DD58 00000000 */   nop

glabel func_8000DD5C # 52
/* 00D90C 8000DD5C 8C820054 */  lw          $v0, 0x54($a0)
/* 00D910 8000DD60 240EFFFF */  addiu       $t6, $zero, -0x1
/* 00D914 8000DD64 A44E0120 */  sh          $t6, 0x120($v0)
/* 00D918 8000DD68 AC40012C */  sw          $zero, 0x12c($v0)
/* 00D91C 8000DD6C 03E00008 */  jr          $ra
/* 00D920 8000DD70 A4400140 */   sh         $zero, 0x140($v0)

glabel func_8000DD74 # 53
/* 00D924 8000DD74 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00D928 8000DD78 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00D92C 8000DD7C AFA50024 */  sw          $a1, 0x24($sp)
/* 00D930 8000DD80 AFA60028 */  sw          $a2, 0x28($sp)
/* 00D934 8000DD84 8C870054 */  lw          $a3, 0x54($a0)
/* 00D938 8000DD88 AFA40020 */  sw          $a0, 0x20($sp)
/* 00D93C 8000DD8C 0C003745 */  jal         func_8000DD14
/* 00D940 8000DD90 AFA7001C */   sw         $a3, 0x1c($sp)
/* 00D944 8000DD94 8FA4001C */  lw          $a0, 0x1c($sp)
/* 00D948 8000DD98 240E0001 */  addiu       $t6, $zero, 0x1
/* 00D94C 8000DD9C A480011C */  sh          $zero, 0x11c($a0)
/* 00D950 8000DDA0 A48E0118 */  sh          $t6, 0x118($a0)
/* 00D954 8000DDA4 8FA60028 */  lw          $a2, 0x28($sp)
/* 00D958 8000DDA8 0C0034CE */  jal         func_8000D338
/* 00D95C 8000DDAC 8FA50024 */   lw         $a1, 0x24($sp)
/* 00D960 8000DDB0 8FA7001C */  lw          $a3, 0x1c($sp)
/* 00D964 8000DDB4 240FFFFF */  addiu       $t7, $zero, -0x1
/* 00D968 8000DDB8 A4EF0100 */  sh          $t7, 0x100($a3)
/* 00D96C 8000DDBC 0C003254 */  jal         func_8000C950
/* 00D970 8000DDC0 8FA40020 */   lw         $a0, 0x20($sp)
/* 00D974 8000DDC4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00D978 8000DDC8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00D97C 8000DDCC 03E00008 */  jr          $ra
/* 00D980 8000DDD0 00000000 */   nop

glabel func_8000DDD4 # 54
/* 00D984 8000DDD4 8C830054 */  lw          $v1, 0x54($a0)
/* 00D988 8000DDD8 3C022010 */  lui         $v0, 0x2010
/* 00D98C 8000DDDC 946E011A */  lhu         $t6, 0x11a($v1)
/* 00D990 8000DDE0 55C00004 */  bnel        $t6, $zero, .L8000DDF4
/* 00D994 8000DDE4 8C6200F8 */   lw         $v0, 0xf8($v1)
/* 00D998 8000DDE8 03E00008 */  jr          $ra
/* 00D99C 8000DDEC 34420400 */   ori        $v0, $v0, 0x400
/* 00D9A0 8000DDF0 8C6200F8 */  lw          $v0, 0xf8($v1)
.L8000DDF4:
/* 00D9A4 8000DDF4 03E00008 */  jr          $ra
/* 00D9A8 8000DDF8 00000000 */   nop

glabel func_8000DDFC # 55
/* 00D9AC 8000DDFC 8C820054 */  lw          $v0, 0x54($a0)
/* 00D9B0 8000DE00 3C013F80 */  lui         $at, 0x3f80
/* 00D9B4 8000DE04 944E011A */  lhu         $t6, 0x11a($v0)
/* 00D9B8 8000DE08 55C00005 */  bnel        $t6, $zero, .L8000DE20
/* 00D9BC 8000DE0C C44000F4 */   lwc1       $f0, 0xf4($v0)
/* 00D9C0 8000DE10 44810000 */  mtc1        $at, $f0
/* 00D9C4 8000DE14 03E00008 */  jr          $ra
/* 00D9C8 8000DE18 00000000 */   nop
/* 00D9CC 8000DE1C C44000F4 */  lwc1        $f0, 0xf4($v0)
.L8000DE20:
/* 00D9D0 8000DE20 03E00008 */  jr          $ra
/* 00D9D4 8000DE24 00000000 */   nop

glabel func_8000DE28 # 56
/* 00D9D8 8000DE28 8C830054 */  lw          $v1, 0x54($a0)
/* 00D9DC 8000DE2C 946E011A */  lhu         $t6, 0x11a($v1)
/* 00D9E0 8000DE30 55C00004 */  bnel        $t6, $zero, .L8000DE44
/* 00D9E4 8000DE34 846200FC */   lh         $v0, 0xfc($v1)
/* 00D9E8 8000DE38 03E00008 */  jr          $ra
/* 00D9EC 8000DE3C 2402FFFF */   addiu      $v0, $zero, -0x1
/* 00D9F0 8000DE40 846200FC */  lh          $v0, 0xfc($v1)
.L8000DE44:
/* 00D9F4 8000DE44 03E00008 */  jr          $ra
/* 00D9F8 8000DE48 00000000 */   nop

glabel func_8000DE4C # 57
/* 00D9FC 8000DE4C 04800003 */  bltz        $a0, .L8000DE5C
/* 00DA00 8000DE50 28810149 */   slti       $at, $a0, 0x149
/* 00DA04 8000DE54 14200003 */  bnez        $at, .L8000DE64
/* 00DA08 8000DE58 00047080 */   sll        $t6, $a0, 2
.L8000DE5C:
/* 00DA0C 8000DE5C 10000008 */  b           .L8000DE80
/* 00DA10 8000DE60 00001825 */   move       $v1, $zero
.L8000DE64:
/* 00DA14 8000DE64 01C47023 */  subu        $t6, $t6, $a0
/* 00DA18 8000DE68 000E7080 */  sll         $t6, $t6, 2
/* 00DA1C 8000DE6C 01C47023 */  subu        $t6, $t6, $a0
/* 00DA20 8000DE70 3C0F8007 */  lui         $t7, %hi(D_80069330)
/* 00DA24 8000DE74 25EF9330 */  addiu       $t7, $t7, %lo(D_80069330)
/* 00DA28 8000DE78 000E7080 */  sll         $t6, $t6, 2
/* 00DA2C 8000DE7C 01CF1821 */  addu        $v1, $t6, $t7
.L8000DE80:
/* 00DA30 8000DE80 10600003 */  beqz        $v1, .L8000DE90
/* 00DA34 8000DE84 2401FFFD */   addiu      $at, $zero, -0x3
/* 00DA38 8000DE88 03E00008 */  jr          $ra
/* 00DA3C 8000DE8C 8C620004 */   lw         $v0, 0x4($v1)
.L8000DE90:
/* 00DA40 8000DE90 10810009 */  beq         $a0, $at, .L8000DEB8
/* 00DA44 8000DE94 3C02800A */   lui        $v0, %hi(D_800A6104)
/* 00DA48 8000DE98 2401FFFE */  addiu       $at, $zero, -0x2
/* 00DA4C 8000DE9C 10810008 */  beq         $a0, $at, .L8000DEC0
/* 00DA50 8000DEA0 3C02800A */   lui        $v0, %hi(D_800A6110)
/* 00DA54 8000DEA4 2401FFFF */  addiu       $at, $zero, -0x1
/* 00DA58 8000DEA8 10810007 */  beq         $a0, $at, .L8000DEC8
/* 00DA5C 8000DEAC 3C02800A */   lui        $v0, %hi(D_800A611C)
/* 00DA60 8000DEB0 10000007 */  b           .L8000DED0
/* 00DA64 8000DEB4 3C02800A */   lui        $v0, %hi(D_800A6124)
.L8000DEB8:
/* 00DA68 8000DEB8 03E00008 */  jr          $ra
/* 00DA6C 8000DEBC 24426104 */   addiu      $v0, $v0, %lo(D_800A6104)
.L8000DEC0:
/* 00DA70 8000DEC0 03E00008 */  jr          $ra
/* 00DA74 8000DEC4 24426110 */   addiu      $v0, $v0, %lo(D_800A6110)
.L8000DEC8:
/* 00DA78 8000DEC8 03E00008 */  jr          $ra
/* 00DA7C 8000DECC 2442611C */   addiu      $v0, $v0, %lo(D_800A611C)
.L8000DED0:
/* 00DA80 8000DED0 24426124 */  addiu       $v0, $v0, %lo(D_800A6124)
/* 00DA84 8000DED4 03E00008 */  jr          $ra
/* 00DA88 8000DED8 00000000 */   nop

glabel func_8000DEDC # 58
/* 00DA8C 8000DEDC 8C830054 */  lw          $v1, 0x54($a0)
/* 00DA90 8000DEE0 946E011A */  lhu         $t6, 0x11a($v1)
/* 00DA94 8000DEE4 55C00004 */  bnel        $t6, $zero, .L8000DEF8
/* 00DA98 8000DEE8 8C620128 */   lw         $v0, 0x128($v1)
/* 00DA9C 8000DEEC 03E00008 */  jr          $ra
/* 00DAA0 8000DEF0 00001025 */   move       $v0, $zero
/* 00DAA4 8000DEF4 8C620128 */  lw          $v0, 0x128($v1)
.L8000DEF8:
/* 00DAA8 8000DEF8 03E00008 */  jr          $ra
/* 00DAAC 8000DEFC 00000000 */   nop

glabel func_8000DF00 # 59
/* 00DAB0 8000DF00 8C830054 */  lw          $v1, 0x54($a0)
/* 00DAB4 8000DF04 03E00008 */  jr          $ra
/* 00DAB8 8000DF08 8C620128 */   lw         $v0, 0x128($v1)

glabel func_8000DF0C # 60
/* 00DABC 8000DF0C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00DAC0 8000DF10 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00DAC4 8000DF14 04A00004 */  bltz        $a1, .L8000DF28
/* 00DAC8 8000DF18 8C820054 */   lw         $v0, 0x54($a0)
/* 00DACC 8000DF1C 28A10149 */  slti        $at, $a1, 0x149
/* 00DAD0 8000DF20 54200006 */  bnel        $at, $zero, .L8000DF3C
/* 00DAD4 8000DF24 A4450100 */   sh         $a1, 0x100($v0)
.L8000DF28:
/* 00DAD8 8000DF28 0C003741 */  jal         func_8000DD04
/* 00DADC 8000DF2C A4450100 */   sh         $a1, 0x100($v0)
/* 00DAE0 8000DF30 10000005 */  b           .L8000DF48
/* 00DAE4 8000DF34 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00DAE8 8000DF38 A4450100 */  sh          $a1, 0x100($v0)
.L8000DF3C:
/* 00DAEC 8000DF3C 0C003233 */  jal         func_8000C8CC
/* 00DAF0 8000DF40 00A02025 */   move       $a0, $a1
/* 00DAF4 8000DF44 8FBF0014 */  lw          $ra, 0x14($sp)
.L8000DF48:
/* 00DAF8 8000DF48 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00DAFC 8000DF4C 03E00008 */  jr          $ra
/* 00DB00 8000DF50 00000000 */   nop

glabel func_8000DF54 # 61
/* 00DB04 8000DF54 3C058007 */  lui         $a1, %hi(D_80069330)
/* 00DB08 8000DF58 8C820054 */  lw          $v0, 0x54($a0)
/* 00DB0C 8000DF5C 24A59330 */  addiu       $a1, $a1, %lo(D_80069330)
/* 00DB10 8000DF60 2406002C */  addiu       $a2, $zero, 0x2c
.L8000DF64:
/* 00DB14 8000DF64 84430100 */  lh          $v1, 0x100($v0)
/* 00DB18 8000DF68 04600003 */  bltz        $v1, .L8000DF78
/* 00DB1C 8000DF6C 28610149 */   slti       $at, $v1, 0x149
/* 00DB20 8000DF70 14200003 */  bnez        $at, .L8000DF80
/* 00DB24 8000DF74 00000000 */   nop
.L8000DF78:
/* 00DB28 8000DF78 10000005 */  b           .L8000DF90
/* 00DB2C 8000DF7C 00002025 */   move       $a0, $zero
.L8000DF80:
/* 00DB30 8000DF80 00660019 */  multu       $v1, $a2
/* 00DB34 8000DF84 00007012 */  mflo        $t6
/* 00DB38 8000DF88 00AE2021 */  addu        $a0, $a1, $t6
/* 00DB3C 8000DF8C 00000000 */  nop
.L8000DF90:
/* 00DB40 8000DF90 10800008 */  beqz        $a0, .L8000DFB4
/* 00DB44 8000DF94 00000000 */   nop
/* 00DB48 8000DF98 8C8F000C */  lw          $t7, 0xc($a0)
/* 00DB4C 8000DF9C 31F80008 */  andi        $t8, $t7, 0x8
/* 00DB50 8000DFA0 13000004 */  beqz        $t8, .L8000DFB4
/* 00DB54 8000DFA4 00000000 */   nop
/* 00DB58 8000DFA8 84990014 */  lh          $t9, 0x14($a0)
/* 00DB5C 8000DFAC 1000FFED */  b           .L8000DF64
/* 00DB60 8000DFB0 A4590100 */   sh         $t9, 0x100($v0)
.L8000DFB4:
/* 00DB64 8000DFB4 03E00008 */  jr          $ra
/* 00DB68 8000DFB8 00000000 */   nop

glabel func_8000DFBC # 62
/* 00DB6C 8000DFBC 3C038007 */  lui         $v1, %hi(D_8006935C)
/* 00DB70 8000DFC0 2463935C */  addiu       $v1, $v1, %lo(D_8006935C)
/* 00DB74 8000DFC4 24020001 */  addiu       $v0, $zero, 0x1
/* 00DB78 8000DFC8 24040149 */  addiu       $a0, $zero, 0x149
.L8000DFCC:
/* 00DB7C 8000DFCC 24420004 */  addiu       $v0, $v0, 0x4
/* 00DB80 8000DFD0 1444FFFE */  bne         $v0, $a0, .L8000DFCC
/* 00DB84 8000DFD4 246300B0 */   addiu      $v1, $v1, 0xb0
/* 00DB88 8000DFD8 03E00008 */  jr          $ra
/* 00DB8C 8000DFDC 00000000 */   nop

glabel func_8000DFE0 # 63
/* 00DB90 8000DFE0 AFA40000 */  sw          $a0, 0x0($sp)
/* 00DB94 8000DFE4 03E00008 */  jr          $ra
/* 00DB98 8000DFE8 24020001 */   addiu      $v0, $zero, 0x1

glabel func_8000DFEC # 64
/* 00DB9C 8000DFEC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00DBA0 8000DFF0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00DBA4 8000DFF4 8C820054 */  lw          $v0, 0x54($a0)
/* 00DBA8 8000DFF8 3C01800A */  lui         $at, %hi(D_800A7650)
/* 00DBAC 8000DFFC C4247650 */  lwc1        $f4, %lo(D_800A7650)($at)
/* 00DBB0 8000E000 C4400138 */  lwc1        $f0, 0x138($v0)
/* 00DBB4 8000E004 3C01800A */  lui         $at, %hi(D_800A7654)
/* 00DBB8 8000E008 4604003C */  c.lt.s      $f0, $f4
/* 00DBBC 8000E00C 00000000 */  nop
/* 00DBC0 8000E010 45020023 */  bc1fl       .L8000E0A0
/* 00DBC4 8000E014 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00DBC8 8000E018 C4267654 */  lwc1        $f6, %lo(D_800A7654)($at)
/* 00DBCC 8000E01C 3C01800A */  lui         $at, %hi(D_800A7658)
/* 00DBD0 8000E020 4600303C */  c.lt.s      $f6, $f0
/* 00DBD4 8000E024 00000000 */  nop
/* 00DBD8 8000E028 4502001D */  bc1fl       .L8000E0A0
/* 00DBDC 8000E02C 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00DBE0 8000E030 C4287658 */  lwc1        $f8, %lo(D_800A7658)($at)
/* 00DBE4 8000E034 3C01800A */  lui         $at, %hi(D_800A765C)
/* 00DBE8 8000E038 4608003C */  c.lt.s      $f0, $f8
/* 00DBEC 8000E03C 00000000 */  nop
/* 00DBF0 8000E040 4502000D */  bc1fl       .L8000E078
/* 00DBF4 8000E044 AC4001BC */   sw         $zero, 0x1bc($v0)
/* 00DBF8 8000E048 C42A765C */  lwc1        $f10, %lo(D_800A765C)($at)
/* 00DBFC 8000E04C 3C014120 */  lui         $at, 0x4120
/* 00DC00 8000E050 4600503C */  c.lt.s      $f10, $f0
/* 00DC04 8000E054 00000000 */  nop
/* 00DC08 8000E058 45020007 */  bc1fl       .L8000E078
/* 00DC0C 8000E05C AC4001BC */   sw         $zero, 0x1bc($v0)
/* 00DC10 8000E060 44818000 */  mtc1        $at, $f16
/* 00DC14 8000E064 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 00DC18 8000E068 C4322C64 */  lwc1        $f18, %lo(D_800B2C64)($at)
/* 00DC1C 8000E06C 46128102 */  mul.s       $f4, $f16, $f18
/* 00DC20 8000E070 E44401DC */  swc1        $f4, 0x1dc($v0)
/* 00DC24 8000E074 AC4001BC */  sw          $zero, 0x1bc($v0)
.L8000E078:
/* 00DC28 8000E078 3C01800A */  lui         $at, %hi(D_800A7660)
/* 00DC2C 8000E07C C4267660 */  lwc1        $f6, %lo(D_800A7660)($at)
/* 00DC30 8000E080 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 00DC34 8000E084 C4282C64 */  lwc1        $f8, %lo(D_800B2C64)($at)
/* 00DC38 8000E088 24060001 */  addiu       $a2, $zero, 0x1
/* 00DC3C 8000E08C 46083282 */  mul.s       $f10, $f6, $f8
/* 00DC40 8000E090 44055000 */  mfc1        $a1, $f10
/* 00DC44 8000E094 0C0051BB */  jal         func_800146EC
/* 00DC48 8000E098 00000000 */   nop
/* 00DC4C 8000E09C 8FBF0014 */  lw          $ra, 0x14($sp)
.L8000E0A0:
/* 00DC50 8000E0A0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00DC54 8000E0A4 00001025 */  move        $v0, $zero
/* 00DC58 8000E0A8 03E00008 */  jr          $ra
/* 00DC5C 8000E0AC 00000000 */   nop

glabel func_8000E0B0 # 65
/* 00DC60 8000E0B0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00DC64 8000E0B4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00DC68 8000E0B8 3C0540DE */  lui         $a1, 0x40de
/* 00DC6C 8000E0BC 0C003859 */  jal         func_8000E164
/* 00DC70 8000E0C0 34A588CE */   ori        $a1, $a1, 0x88ce
/* 00DC74 8000E0C4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00DC78 8000E0C8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00DC7C 8000E0CC 03E00008 */  jr          $ra
/* 00DC80 8000E0D0 00000000 */   nop

glabel func_8000E0D4 # 66
/* 00DC84 8000E0D4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00DC88 8000E0D8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00DC8C 8000E0DC 3C054109 */  lui         $a1, 0x4109
/* 00DC90 8000E0E0 0C003859 */  jal         func_8000E164
/* 00DC94 8000E0E4 34A5EA4B */   ori        $a1, $a1, 0xea4b
/* 00DC98 8000E0E8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00DC9C 8000E0EC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00DCA0 8000E0F0 03E00008 */  jr          $ra
/* 00DCA4 8000E0F4 00000000 */   nop

glabel func_8000E0F8 # 67
/* 00DCA8 8000E0F8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00DCAC 8000E0FC AFBF0014 */  sw          $ra, 0x14($sp)
/* 00DCB0 8000E100 3C053FB4 */  lui         $a1, 0x3fb4
/* 00DCB4 8000E104 0C003859 */  jal         func_8000E164
/* 00DCB8 8000E108 34A59EED */   ori        $a1, $a1, 0x9eed
/* 00DCBC 8000E10C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00DCC0 8000E110 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00DCC4 8000E114 03E00008 */  jr          $ra
/* 00DCC8 8000E118 00000000 */   nop

glabel func_8000E11C # 68
/* 00DCCC 8000E11C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00DCD0 8000E120 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00DCD4 8000E124 3C05405A */  lui         $a1, 0x405a
/* 00DCD8 8000E128 0C003859 */  jal         func_8000E164
/* 00DCDC 8000E12C 34A5A305 */   ori        $a1, $a1, 0xa305
/* 00DCE0 8000E130 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00DCE4 8000E134 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00DCE8 8000E138 03E00008 */  jr          $ra
/* 00DCEC 8000E13C 00000000 */   nop

glabel func_8000E140 # 69
/* 00DCF0 8000E140 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00DCF4 8000E144 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00DCF8 8000E148 3C053FA2 */  lui         $a1, 0x3fa2
/* 00DCFC 8000E14C 0C003859 */  jal         func_8000E164
/* 00DD00 8000E150 34A58F5C */   ori        $a1, $a1, 0x8f5c
/* 00DD04 8000E154 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00DD08 8000E158 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00DD0C 8000E15C 03E00008 */  jr          $ra
/* 00DD10 8000E160 00000000 */   nop

glabel func_8000E164 # 70
/* 00DD14 8000E164 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 00DD18 8000E168 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00DD1C 8000E16C AFB10018 */  sw          $s1, 0x18($sp)
/* 00DD20 8000E170 AFB00014 */  sw          $s0, 0x14($sp)
/* 00DD24 8000E174 AFA50044 */  sw          $a1, 0x44($sp)
/* 00DD28 8000E178 00808825 */  move        $s1, $a0
/* 00DD2C 8000E17C 8C900054 */  lw          $s0, 0x54($a0)
/* 00DD30 8000E180 0C0052D5 */  jal         func_80014B54
/* 00DD34 8000E184 2405003E */   addiu      $a1, $zero, 0x3e
/* 00DD38 8000E188 C4440044 */  lwc1        $f4, 0x44($v0)
/* 00DD3C 8000E18C 3C013F80 */  lui         $at, 0x3f80
/* 00DD40 8000E190 44815000 */  mtc1        $at, $f10
/* 00DD44 8000E194 E7A40028 */  swc1        $f4, 0x28($sp)
/* 00DD48 8000E198 C4460048 */  lwc1        $f6, 0x48($v0)
/* 00DD4C 8000E19C 44808000 */  mtc1        $zero, $f16
/* 00DD50 8000E1A0 2404003C */  addiu       $a0, $zero, 0x3c
/* 00DD54 8000E1A4 E7A6002C */  swc1        $f6, 0x2c($sp)
/* 00DD58 8000E1A8 C448004C */  lwc1        $f8, 0x4c($v0)
/* 00DD5C 8000E1AC E7A80030 */  swc1        $f8, 0x30($sp)
/* 00DD60 8000E1B0 E60A01F8 */  swc1        $f10, 0x1f8($s0)
/* 00DD64 8000E1B4 C7A40030 */  lwc1        $f4, 0x30($sp)
/* 00DD68 8000E1B8 C61201F4 */  lwc1        $f18, 0x1f4($s0)
/* 00DD6C 8000E1BC C7A80028 */  lwc1        $f8, 0x28($sp)
/* 00DD70 8000E1C0 C60601EC */  lwc1        $f6, 0x1ec($s0)
/* 00DD74 8000E1C4 46049081 */  sub.s       $f2, $f18, $f4
/* 00DD78 8000E1C8 46083301 */  sub.s       $f12, $f6, $f8
/* 00DD7C 8000E1CC 46021282 */  mul.s       $f10, $f2, $f2
/* 00DD80 8000E1D0 C60601A0 */  lwc1        $f6, 0x1a0($s0)
/* 00DD84 8000E1D4 460C6482 */  mul.s       $f18, $f12, $f12
/* 00DD88 8000E1D8 46003221 */  cvt.d.s     $f8, $f6
/* 00DD8C 8000E1DC 46125100 */  add.s       $f4, $f10, $f18
/* 00DD90 8000E1E0 46002021 */  cvt.d.s     $f0, $f4
/* 00DD94 8000E1E4 46200004 */  sqrt.d      $f0, $f0
/* 00DD98 8000E1E8 46280281 */  sub.d       $f10, $f0, $f8
/* 00DD9C 8000E1EC 462053A0 */  cvt.s.d     $f14, $f10
/* 00DDA0 8000E1F0 4610703C */  c.lt.s      $f14, $f16
/* 00DDA4 8000E1F4 00000000 */  nop
/* 00DDA8 8000E1F8 45000002 */  bc1f        .L8000E204
/* 00DDAC 8000E1FC 00000000 */   nop
/* 00DDB0 8000E200 46008386 */  mov.s       $f14, $f16
.L8000E204:
/* 00DDB4 8000E204 0C00E500 */  jal         func_80039400
/* 00DDB8 8000E208 E7AE0038 */   swc1       $f14, 0x38($sp)
/* 00DDBC 8000E20C C7A20044 */  lwc1        $f2, 0x44($sp)
/* 00DDC0 8000E210 C7AE0038 */  lwc1        $f14, 0x38($sp)
/* 00DDC4 8000E214 244EFFF1 */  addiu       $t6, $v0, -0xf
/* 00DDC8 8000E218 448E9000 */  mtc1        $t6, $f18
/* 00DDCC 8000E21C 46027003 */  div.s       $f0, $f14, $f2
/* 00DDD0 8000E220 3C013FC0 */  lui         $at, 0x3fc0
/* 00DDD4 8000E224 44813000 */  mtc1        $at, $f6
/* 00DDD8 8000E228 3C01800A */  lui         $at, %hi(D_800A7664)
/* 00DDDC 8000E22C 46809120 */  cvt.s.w     $f4, $f18
/* 00DDE0 8000E230 E604019C */  swc1        $f4, 0x19c($s0)
/* 00DDE4 8000E234 4606003C */  c.lt.s      $f0, $f6
/* 00DDE8 8000E238 00000000 */  nop
/* 00DDEC 8000E23C 45020018 */  bc1fl       .L8000E2A0
/* 00DDF0 8000E240 00001025 */   move       $v0, $zero
/* 00DDF4 8000E244 C4287664 */  lwc1        $f8, %lo(D_800A7664)($at)
/* 00DDF8 8000E248 240500C6 */  addiu       $a1, $zero, 0xc6
/* 00DDFC 8000E24C 02202025 */  move        $a0, $s1
/* 00DE00 8000E250 46081032 */  c.eq.s      $f2, $f8
/* 00DE04 8000E254 00000000 */  nop
/* 00DE08 8000E258 45000005 */  bc1f        .L8000E270
/* 00DE0C 8000E25C 00000000 */   nop
/* 00DE10 8000E260 0C0037C3 */  jal         func_8000DF0C
/* 00DE14 8000E264 02202025 */   move       $a0, $s1
/* 00DE18 8000E268 1000000D */  b           .L8000E2A0
/* 00DE1C 8000E26C 24020001 */   addiu      $v0, $zero, 0x1
.L8000E270:
/* 00DE20 8000E270 0C0470E8 */  jal         func_8011C3A0
/* 00DE24 8000E274 E7A00020 */   swc1       $f0, 0x20($sp)
/* 00DE28 8000E278 02202025 */  move        $a0, $s1
/* 00DE2C 8000E27C 0C047052 */  jal         func_8011C148
/* 00DE30 8000E280 3C054396 */   lui        $a1, 0x4396
/* 00DE34 8000E284 0C0037D5 */  jal         func_8000DF54
/* 00DE38 8000E288 02202025 */   move       $a0, $s1
/* 00DE3C 8000E28C 0C003741 */  jal         func_8000DD04
/* 00DE40 8000E290 02202025 */   move       $a0, $s1
/* 00DE44 8000E294 C7AA0020 */  lwc1        $f10, 0x20($sp)
/* 00DE48 8000E298 E60A01F8 */  swc1        $f10, 0x1f8($s0)
/* 00DE4C 8000E29C 00001025 */  move        $v0, $zero
.L8000E2A0:
/* 00DE50 8000E2A0 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00DE54 8000E2A4 8FB00014 */  lw          $s0, 0x14($sp)
/* 00DE58 8000E2A8 8FB10018 */  lw          $s1, 0x18($sp)
/* 00DE5C 8000E2AC 03E00008 */  jr          $ra
/* 00DE60 8000E2B0 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_8000E2B4 # 71
/* 00DE64 8000E2B4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00DE68 8000E2B8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00DE6C 8000E2BC 8C820054 */  lw          $v0, 0x54($a0)
/* 00DE70 8000E2C0 AFA40028 */  sw          $a0, 0x28($sp)
/* 00DE74 8000E2C4 0C0470E8 */  jal         func_8011C3A0
/* 00DE78 8000E2C8 AFA20024 */   sw         $v0, 0x24($sp)
/* 00DE7C 8000E2CC 8FA40028 */  lw          $a0, 0x28($sp)
/* 00DE80 8000E2D0 0C047052 */  jal         func_8011C148
/* 00DE84 8000E2D4 3C054396 */   lui        $a1, 0x4396
/* 00DE88 8000E2D8 8FA20024 */  lw          $v0, 0x24($sp)
/* 00DE8C 8000E2DC 3C013F80 */  lui         $at, 0x3f80
/* 00DE90 8000E2E0 44812000 */  mtc1        $at, $f4
/* 00DE94 8000E2E4 C44601F8 */  lwc1        $f6, 0x1f8($v0)
/* 00DE98 8000E2E8 27A40018 */  addiu       $a0, $sp, 0x18
/* 00DE9C 8000E2EC 46062032 */  c.eq.s      $f4, $f6
/* 00DEA0 8000E2F0 00000000 */  nop
/* 00DEA4 8000E2F4 45030013 */  bc1tl       .L8000E344
/* 00DEA8 8000E2F8 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00DEAC 8000E2FC 0C001A98 */  jal         func_80006A60
/* 00DEB0 8000E300 AFA20024 */   sw         $v0, 0x24($sp)
/* 00DEB4 8000E304 8FA20024 */  lw          $v0, 0x24($sp)
/* 00DEB8 8000E308 C7A80018 */  lwc1        $f8, 0x18($sp)
/* 00DEBC 8000E30C C7B2001C */  lwc1        $f18, 0x1c($sp)
/* 00DEC0 8000E310 C44A01F8 */  lwc1        $f10, 0x1f8($v0)
/* 00DEC4 8000E314 27A40018 */  addiu       $a0, $sp, 0x18
/* 00DEC8 8000E318 460A4402 */  mul.s       $f16, $f8, $f10
/* 00DECC 8000E31C C7A80020 */  lwc1        $f8, 0x20($sp)
/* 00DED0 8000E320 E7B00018 */  swc1        $f16, 0x18($sp)
/* 00DED4 8000E324 C44401F8 */  lwc1        $f4, 0x1f8($v0)
/* 00DED8 8000E328 46049182 */  mul.s       $f6, $f18, $f4
/* 00DEDC 8000E32C E7A6001C */  swc1        $f6, 0x1c($sp)
/* 00DEE0 8000E330 C44A01F8 */  lwc1        $f10, 0x1f8($v0)
/* 00DEE4 8000E334 460A4402 */  mul.s       $f16, $f8, $f10
/* 00DEE8 8000E338 0C001AA1 */  jal         func_80006A84
/* 00DEEC 8000E33C E7B00020 */   swc1       $f16, 0x20($sp)
/* 00DEF0 8000E340 8FBF0014 */  lw          $ra, 0x14($sp)
.L8000E344:
/* 00DEF4 8000E344 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00DEF8 8000E348 00001025 */  move        $v0, $zero
/* 00DEFC 8000E34C 03E00008 */  jr          $ra
/* 00DF00 8000E350 00000000 */   nop

glabel func_8000E354 # 72
/* 00DF04 8000E354 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00DF08 8000E358 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00DF0C 8000E35C 8C820054 */  lw          $v0, 0x54($a0)
/* 00DF10 8000E360 27A40018 */  addiu       $a0, $sp, 0x18
/* 00DF14 8000E364 0C001A98 */  jal         func_80006A60
/* 00DF18 8000E368 AFA20024 */   sw         $v0, 0x24($sp)
/* 00DF1C 8000E36C 8FA20024 */  lw          $v0, 0x24($sp)
/* 00DF20 8000E370 C7A40018 */  lwc1        $f4, 0x18($sp)
/* 00DF24 8000E374 C7AA001C */  lwc1        $f10, 0x1c($sp)
/* 00DF28 8000E378 C44601F8 */  lwc1        $f6, 0x1f8($v0)
/* 00DF2C 8000E37C 27A40018 */  addiu       $a0, $sp, 0x18
/* 00DF30 8000E380 46062202 */  mul.s       $f8, $f4, $f6
/* 00DF34 8000E384 C7A40020 */  lwc1        $f4, 0x20($sp)
/* 00DF38 8000E388 E7A80018 */  swc1        $f8, 0x18($sp)
/* 00DF3C 8000E38C C45001F8 */  lwc1        $f16, 0x1f8($v0)
/* 00DF40 8000E390 46105482 */  mul.s       $f18, $f10, $f16
/* 00DF44 8000E394 E7B2001C */  swc1        $f18, 0x1c($sp)
/* 00DF48 8000E398 C44601F8 */  lwc1        $f6, 0x1f8($v0)
/* 00DF4C 8000E39C 46062202 */  mul.s       $f8, $f4, $f6
/* 00DF50 8000E3A0 0C001AA1 */  jal         func_80006A84
/* 00DF54 8000E3A4 E7A80020 */   swc1       $f8, 0x20($sp)
/* 00DF58 8000E3A8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00DF5C 8000E3AC 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00DF60 8000E3B0 00001025 */  move        $v0, $zero
/* 00DF64 8000E3B4 03E00008 */  jr          $ra
/* 00DF68 8000E3B8 00000000 */   nop

glabel func_8000E3BC # 73
/* 00DF6C 8000E3BC 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 00DF70 8000E3C0 44856000 */  mtc1        $a1, $f12
/* 00DF74 8000E3C4 C4242C64 */  lwc1        $f4, %lo(D_800B2C64)($at)
/* 00DF78 8000E3C8 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00DF7C 8000E3CC AFBF0014 */  sw          $ra, 0x14($sp)
/* 00DF80 8000E3D0 460C2182 */  mul.s       $f6, $f4, $f12
/* 00DF84 8000E3D4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 00DF88 8000E3D8 AFA40030 */  sw          $a0, 0x30($sp)
/* 00DF8C 8000E3DC AFAE002C */  sw          $t6, 0x2c($sp)
/* 00DF90 8000E3E0 0C0470E8 */  jal         func_8011C3A0
/* 00DF94 8000E3E4 E7A60028 */   swc1       $f6, 0x28($sp)
/* 00DF98 8000E3E8 8FA40030 */  lw          $a0, 0x30($sp)
/* 00DF9C 8000E3EC 0C047052 */  jal         func_8011C148
/* 00DFA0 8000E3F0 3C054396 */   lui        $a1, 0x4396
/* 00DFA4 8000E3F4 3C188013 */  lui         $t8, %hi(D_80137EE4)
/* 00DFA8 8000E3F8 8F187EE4 */  lw          $t8, %lo(D_80137EE4)($t8)
/* 00DFAC 8000E3FC 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00DFB0 8000E400 3C013F80 */  lui         $at, 0x3f80
/* 00DFB4 8000E404 C70A000C */  lwc1        $f10, 0xc($t8)
/* 00DFB8 8000E408 C5E80000 */  lwc1        $f8, 0x0($t7)
/* 00DFBC 8000E40C 44819000 */  mtc1        $at, $f18
/* 00DFC0 8000E410 3C013F00 */  lui         $at, 0x3f00
/* 00DFC4 8000E414 460A4403 */  div.s       $f16, $f8, $f10
/* 00DFC8 8000E418 44813000 */  mtc1        $at, $f6
/* 00DFCC 8000E41C 3C013FF0 */  lui         $at, 0x3ff0
/* 00DFD0 8000E420 44818800 */  mtc1        $at, $f17
/* 00DFD4 8000E424 2404000A */  addiu       $a0, $zero, 0xa
/* 00DFD8 8000E428 46128101 */  sub.s       $f4, $f16, $f18
/* 00DFDC 8000E42C 44808000 */  mtc1        $zero, $f16
/* 00DFE0 8000E430 46062202 */  mul.s       $f8, $f4, $f6
/* 00DFE4 8000E434 C7A40028 */  lwc1        $f4, 0x28($sp)
/* 00DFE8 8000E438 460021A1 */  cvt.d.s     $f6, $f4
/* 00DFEC 8000E43C 460042A1 */  cvt.d.s     $f10, $f8
/* 00DFF0 8000E440 462A8480 */  add.d       $f18, $f16, $f10
/* 00DFF4 8000E444 46323202 */  mul.d       $f8, $f6, $f18
/* 00DFF8 8000E448 46204420 */  cvt.s.d     $f16, $f8
/* 00DFFC 8000E44C 0C00E500 */  jal         func_80039400
/* 00E000 8000E450 E7B00028 */   swc1       $f16, 0x28($sp)
/* 00E004 8000E454 2459FFFC */  addiu       $t9, $v0, -0x4
/* 00E008 8000E458 44995000 */  mtc1        $t9, $f10
/* 00E00C 8000E45C C7B20028 */  lwc1        $f18, 0x28($sp)
/* 00E010 8000E460 44803000 */  mtc1        $zero, $f6
/* 00E014 8000E464 46805120 */  cvt.s.w     $f4, $f10
/* 00E018 8000E468 27A4001C */  addiu       $a0, $sp, 0x1c
/* 00E01C 8000E46C E7A60020 */  swc1        $f6, 0x20($sp)
/* 00E020 8000E470 46009207 */  neg.s       $f8, $f18
/* 00E024 8000E474 E7A4001C */  swc1        $f4, 0x1c($sp)
/* 00E028 8000E478 0C001AA1 */  jal         func_80006A84
/* 00E02C 8000E47C E7A80024 */   swc1       $f8, 0x24($sp)
/* 00E030 8000E480 8FA8002C */  lw          $t0, 0x2c($sp)
/* 00E034 8000E484 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00E038 8000E488 00001025 */  move        $v0, $zero
/* 00E03C 8000E48C 950901EA */  lhu         $t1, 0x1ea($t0)
/* 00E040 8000E490 11200003 */  beqz        $t1, .L8000E4A0
/* 00E044 8000E494 00000000 */   nop
/* 00E048 8000E498 10000001 */  b           .L8000E4A0
/* 00E04C 8000E49C 24020001 */   addiu      $v0, $zero, 0x1
.L8000E4A0:
/* 00E050 8000E4A0 03E00008 */  jr          $ra
/* 00E054 8000E4A4 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8000E4A8 # 74
/* 00E058 8000E4A8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00E05C 8000E4AC AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E060 8000E4B0 0C0038EF */  jal         func_8000E3BC
/* 00E064 8000E4B4 3C054248 */   lui        $a1, 0x4248
/* 00E068 8000E4B8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00E06C 8000E4BC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00E070 8000E4C0 03E00008 */  jr          $ra
/* 00E074 8000E4C4 00000000 */   nop

glabel func_8000E4C8 # 75
/* 00E078 8000E4C8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00E07C 8000E4CC AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E080 8000E4D0 0C0038EF */  jal         func_8000E3BC
/* 00E084 8000E4D4 3C0543C8 */   lui        $a1, 0x43c8
/* 00E088 8000E4D8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00E08C 8000E4DC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00E090 8000E4E0 03E00008 */  jr          $ra
/* 00E094 8000E4E4 00000000 */   nop

glabel func_8000E4E8 # 76
/* 00E098 8000E4E8 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 00E09C 8000E4EC AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E0A0 8000E4F0 8C820054 */  lw          $v0, 0x54($a0)
/* 00E0A4 8000E4F4 C4860044 */  lwc1        $f6, 0x44($a0)
/* 00E0A8 8000E4F8 44805000 */  mtc1        $zero, $f10
/* 00E0AC 8000E4FC C44401EC */  lwc1        $f4, 0x1ec($v0)
/* 00E0B0 8000E500 00802825 */  move        $a1, $a0
/* 00E0B4 8000E504 E7AA002C */  swc1        $f10, 0x2c($sp)
/* 00E0B8 8000E508 46062201 */  sub.s       $f8, $f4, $f6
/* 00E0BC 8000E50C E7A80028 */  swc1        $f8, 0x28($sp)
/* 00E0C0 8000E510 C492004C */  lwc1        $f18, 0x4c($a0)
/* 00E0C4 8000E514 C45001F4 */  lwc1        $f16, 0x1f4($v0)
/* 00E0C8 8000E518 AFA50038 */  sw          $a1, 0x38($sp)
/* 00E0CC 8000E51C 27A40028 */  addiu       $a0, $sp, 0x28
/* 00E0D0 8000E520 46128101 */  sub.s       $f4, $f16, $f18
/* 00E0D4 8000E524 AFA20034 */  sw          $v0, 0x34($sp)
/* 00E0D8 8000E528 0C002CB9 */  jal         func_8000B2E4
/* 00E0DC 8000E52C E7A40030 */   swc1       $f4, 0x30($sp)
/* 00E0E0 8000E530 8FA20034 */  lw          $v0, 0x34($sp)
/* 00E0E4 8000E534 C4460010 */  lwc1        $f6, 0x10($v0)
/* 00E0E8 8000E538 0C00E7ED */  jal         func_80039FB4
/* 00E0EC 8000E53C 46060301 */   sub.s      $f12, $f0, $f6
/* 00E0F0 8000E540 3C014120 */  lui         $at, 0x4120
/* 00E0F4 8000E544 44814000 */  mtc1        $at, $f8
/* 00E0F8 8000E548 46000005 */  abs.s       $f0, $f0
/* 00E0FC 8000E54C 00001025 */  move        $v0, $zero
/* 00E100 8000E550 4608003C */  c.lt.s      $f0, $f8
/* 00E104 8000E554 00000000 */  nop
/* 00E108 8000E558 4500001D */  bc1f        .L8000E5D0
/* 00E10C 8000E55C 00000000 */   nop
/* 00E110 8000E560 0C00E512 */  jal         func_80039448
/* 00E114 8000E564 00000000 */   nop
/* 00E118 8000E568 44828000 */  mtc1        $v0, $f16
/* 00E11C 8000E56C 3C013FE0 */  lui         $at, 0x3fe0
/* 00E120 8000E570 44815800 */  mtc1        $at, $f11
/* 00E124 8000E574 44805000 */  mtc1        $zero, $f10
/* 00E128 8000E578 04410006 */  bgez        $v0, .L8000E594
/* 00E12C 8000E57C 468084A1 */   cvt.d.w    $f18, $f16
/* 00E130 8000E580 3C0141F0 */  lui         $at, 0x41f0
/* 00E134 8000E584 44812800 */  mtc1        $at, $f5
/* 00E138 8000E588 44802000 */  mtc1        $zero, $f4
/* 00E13C 8000E58C 00000000 */  nop
/* 00E140 8000E590 46249480 */  add.d       $f18, $f18, $f4
.L8000E594:
/* 00E144 8000E594 3C013DF0 */  lui         $at, 0x3df0
/* 00E148 8000E598 44813800 */  mtc1        $at, $f7
/* 00E14C 8000E59C 44803000 */  mtc1        $zero, $f6
/* 00E150 8000E5A0 240500C0 */  addiu       $a1, $zero, 0xc0
/* 00E154 8000E5A4 46269202 */  mul.d       $f8, $f18, $f6
/* 00E158 8000E5A8 4628503C */  c.lt.d      $f10, $f8
/* 00E15C 8000E5AC 00000000 */  nop
/* 00E160 8000E5B0 45000003 */  bc1f        .L8000E5C0
/* 00E164 8000E5B4 00000000 */   nop
/* 00E168 8000E5B8 10000001 */  b           .L8000E5C0
/* 00E16C 8000E5BC 240500BF */   addiu      $a1, $zero, 0xbf
.L8000E5C0:
/* 00E170 8000E5C0 0C0037C3 */  jal         func_8000DF0C
/* 00E174 8000E5C4 8FA40038 */   lw         $a0, 0x38($sp)
/* 00E178 8000E5C8 10000001 */  b           .L8000E5D0
/* 00E17C 8000E5CC 24020001 */   addiu      $v0, $zero, 0x1
.L8000E5D0:
/* 00E180 8000E5D0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00E184 8000E5D4 27BD0038 */  addiu       $sp, $sp, 0x38
/* 00E188 8000E5D8 03E00008 */  jr          $ra
/* 00E18C 8000E5DC 00000000 */   nop

glabel func_8000E5E0 # 77
/* 00E190 8000E5E0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00E194 8000E5E4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E198 8000E5E8 0C0470E8 */  jal         func_8011C3A0
/* 00E19C 8000E5EC AFA40018 */   sw         $a0, 0x18($sp)
/* 00E1A0 8000E5F0 8FA40018 */  lw          $a0, 0x18($sp)
/* 00E1A4 8000E5F4 0C047052 */  jal         func_8011C148
/* 00E1A8 8000E5F8 3C0542C8 */   lui        $a1, 0x42c8
/* 00E1AC 8000E5FC 50400004 */  beql        $v0, $zero, .L8000E610
/* 00E1B0 8000E600 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00E1B4 8000E604 0C003741 */  jal         func_8000DD04
/* 00E1B8 8000E608 8FA40018 */   lw         $a0, 0x18($sp)
/* 00E1BC 8000E60C 8FBF0014 */  lw          $ra, 0x14($sp)
.L8000E610:
/* 00E1C0 8000E610 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00E1C4 8000E614 00001025 */  move        $v0, $zero
/* 00E1C8 8000E618 03E00008 */  jr          $ra
/* 00E1CC 8000E61C 00000000 */   nop

glabel func_8000E620 # 78
/* 00E1D0 8000E620 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00E1D4 8000E624 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E1D8 8000E628 AFA40018 */  sw          $a0, 0x18($sp)
/* 00E1DC 8000E62C 0C04708C */  jal         func_8011C230
/* 00E1E0 8000E630 3C0542C8 */   lui        $a1, 0x42c8
/* 00E1E4 8000E634 50400004 */  beql        $v0, $zero, .L8000E648
/* 00E1E8 8000E638 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00E1EC 8000E63C 0C003741 */  jal         func_8000DD04
/* 00E1F0 8000E640 8FA40018 */   lw         $a0, 0x18($sp)
/* 00E1F4 8000E644 8FBF0014 */  lw          $ra, 0x14($sp)
.L8000E648:
/* 00E1F8 8000E648 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00E1FC 8000E64C 00001025 */  move        $v0, $zero
/* 00E200 8000E650 03E00008 */  jr          $ra
/* 00E204 8000E654 00000000 */   nop

glabel func_8000E658 # 79
/* 00E208 8000E658 03E00008 */  jr          $ra
/* 00E20C 8000E65C 00000000 */   nop

glabel func_8000E660 # 80
/* 00E210 8000E660 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00E214 8000E664 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E218 8000E668 8C820054 */  lw          $v0, 0x54($a0)
/* 00E21C 8000E66C C4860044 */  lwc1        $f6, 0x44($a0)
/* 00E220 8000E670 44805000 */  mtc1        $zero, $f10
/* 00E224 8000E674 C44401EC */  lwc1        $f4, 0x1ec($v0)
/* 00E228 8000E678 00803025 */  move        $a2, $a0
/* 00E22C 8000E67C E7AA0024 */  swc1        $f10, 0x24($sp)
/* 00E230 8000E680 46062201 */  sub.s       $f8, $f4, $f6
/* 00E234 8000E684 E7A80020 */  swc1        $f8, 0x20($sp)
/* 00E238 8000E688 C492004C */  lwc1        $f18, 0x4c($a0)
/* 00E23C 8000E68C C45001F4 */  lwc1        $f16, 0x1f4($v0)
/* 00E240 8000E690 AFA60030 */  sw          $a2, 0x30($sp)
/* 00E244 8000E694 27A40020 */  addiu       $a0, $sp, 0x20
/* 00E248 8000E698 46128101 */  sub.s       $f4, $f16, $f18
/* 00E24C 8000E69C AFA2002C */  sw          $v0, 0x2c($sp)
/* 00E250 8000E6A0 0C002CB9 */  jal         func_8000B2E4
/* 00E254 8000E6A4 E7A40028 */   swc1       $f4, 0x28($sp)
/* 00E258 8000E6A8 8FA2002C */  lw          $v0, 0x2c($sp)
/* 00E25C 8000E6AC C4460010 */  lwc1        $f6, 0x10($v0)
/* 00E260 8000E6B0 0C00E7ED */  jal         func_80039FB4
/* 00E264 8000E6B4 46060301 */   sub.s      $f12, $f0, $f6
/* 00E268 8000E6B8 44804000 */  mtc1        $zero, $f8
/* 00E26C 8000E6BC 8FA60030 */  lw          $a2, 0x30($sp)
/* 00E270 8000E6C0 00001025 */  move        $v0, $zero
/* 00E274 8000E6C4 4608003C */  c.lt.s      $f0, $f8
/* 00E278 8000E6C8 00C02025 */  move        $a0, $a2
/* 00E27C 8000E6CC 45000005 */  bc1f        .L8000E6E4
/* 00E280 8000E6D0 00000000 */   nop
/* 00E284 8000E6D4 0C0037C3 */  jal         func_8000DF0C
/* 00E288 8000E6D8 24050022 */   addiu      $a1, $zero, 0x22
/* 00E28C 8000E6DC 10000001 */  b           .L8000E6E4
/* 00E290 8000E6E0 24020001 */   addiu      $v0, $zero, 0x1
.L8000E6E4:
/* 00E294 8000E6E4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00E298 8000E6E8 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00E29C 8000E6EC 03E00008 */  jr          $ra
/* 00E2A0 8000E6F0 00000000 */   nop

glabel func_8000E6F4 # 81
/* 00E2A4 8000E6F4 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00E2A8 8000E6F8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E2AC 8000E6FC 8C820054 */  lw          $v0, 0x54($a0)
/* 00E2B0 8000E700 C4860044 */  lwc1        $f6, 0x44($a0)
/* 00E2B4 8000E704 44805000 */  mtc1        $zero, $f10
/* 00E2B8 8000E708 C44401EC */  lwc1        $f4, 0x1ec($v0)
/* 00E2BC 8000E70C 00803025 */  move        $a2, $a0
/* 00E2C0 8000E710 E7AA0024 */  swc1        $f10, 0x24($sp)
/* 00E2C4 8000E714 46062201 */  sub.s       $f8, $f4, $f6
/* 00E2C8 8000E718 E7A80020 */  swc1        $f8, 0x20($sp)
/* 00E2CC 8000E71C C492004C */  lwc1        $f18, 0x4c($a0)
/* 00E2D0 8000E720 C45001F4 */  lwc1        $f16, 0x1f4($v0)
/* 00E2D4 8000E724 AFA60030 */  sw          $a2, 0x30($sp)
/* 00E2D8 8000E728 27A40020 */  addiu       $a0, $sp, 0x20
/* 00E2DC 8000E72C 46128101 */  sub.s       $f4, $f16, $f18
/* 00E2E0 8000E730 AFA2002C */  sw          $v0, 0x2c($sp)
/* 00E2E4 8000E734 0C002CB9 */  jal         func_8000B2E4
/* 00E2E8 8000E738 E7A40028 */   swc1       $f4, 0x28($sp)
/* 00E2EC 8000E73C 8FA2002C */  lw          $v0, 0x2c($sp)
/* 00E2F0 8000E740 C4460010 */  lwc1        $f6, 0x10($v0)
/* 00E2F4 8000E744 0C00E7ED */  jal         func_80039FB4
/* 00E2F8 8000E748 46060301 */   sub.s      $f12, $f0, $f6
/* 00E2FC 8000E74C 3C0141A0 */  lui         $at, 0x41a0
/* 00E300 8000E750 44814000 */  mtc1        $at, $f8
/* 00E304 8000E754 46000086 */  mov.s       $f2, $f0
/* 00E308 8000E758 46000005 */  abs.s       $f0, $f0
/* 00E30C 8000E75C 8FA60030 */  lw          $a2, 0x30($sp)
/* 00E310 8000E760 4608003C */  c.lt.s      $f0, $f8
/* 00E314 8000E764 00C02025 */  move        $a0, $a2
/* 00E318 8000E768 45020006 */  bc1fl       .L8000E784
/* 00E31C 8000E76C 44805000 */   mtc1       $zero, $f10
/* 00E320 8000E770 0C0037C3 */  jal         func_8000DF0C
/* 00E324 8000E774 240500BE */   addiu      $a1, $zero, 0xbe
/* 00E328 8000E778 1000000C */  b           .L8000E7AC
/* 00E32C 8000E77C 24020001 */   addiu      $v0, $zero, 0x1
/* 00E330 8000E780 44805000 */  mtc1        $zero, $f10
.L8000E784:
/* 00E334 8000E784 00C02025 */  move        $a0, $a2
/* 00E338 8000E788 00001025 */  move        $v0, $zero
/* 00E33C 8000E78C 460A103C */  c.lt.s      $f2, $f10
/* 00E340 8000E790 00000000 */  nop
/* 00E344 8000E794 45000005 */  bc1f        .L8000E7AC
/* 00E348 8000E798 00000000 */   nop
/* 00E34C 8000E79C 0C0037C3 */  jal         func_8000DF0C
/* 00E350 8000E7A0 240500C4 */   addiu      $a1, $zero, 0xc4
/* 00E354 8000E7A4 10000001 */  b           .L8000E7AC
/* 00E358 8000E7A8 24020001 */   addiu      $v0, $zero, 0x1
.L8000E7AC:
/* 00E35C 8000E7AC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00E360 8000E7B0 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00E364 8000E7B4 03E00008 */  jr          $ra
/* 00E368 8000E7B8 00000000 */   nop

glabel func_8000E7BC # 82
/* 00E36C 8000E7BC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00E370 8000E7C0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E374 8000E7C4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 00E378 8000E7C8 AFA40020 */  sw          $a0, 0x20($sp)
/* 00E37C 8000E7CC 0C0470E8 */  jal         func_8011C3A0
/* 00E380 8000E7D0 AFAE001C */   sw         $t6, 0x1c($sp)
/* 00E384 8000E7D4 8FAF001C */  lw          $t7, 0x1c($sp)
/* 00E388 8000E7D8 8FA40020 */  lw          $a0, 0x20($sp)
/* 00E38C 8000E7DC 8DF801BC */  lw          $t8, 0x1bc($t7)
/* 00E390 8000E7E0 13000005 */  beqz        $t8, .L8000E7F8
/* 00E394 8000E7E4 00000000 */   nop
/* 00E398 8000E7E8 0C047052 */  jal         func_8011C148
/* 00E39C 8000E7EC 3C054434 */   lui        $a1, 0x4434
/* 00E3A0 8000E7F0 10000004 */  b           .L8000E804
/* 00E3A4 8000E7F4 8FBF0014 */   lw         $ra, 0x14($sp)
.L8000E7F8:
/* 00E3A8 8000E7F8 0C047052 */  jal         func_8011C148
/* 00E3AC 8000E7FC 3C054370 */   lui        $a1, 0x4370
/* 00E3B0 8000E800 8FBF0014 */  lw          $ra, 0x14($sp)
.L8000E804:
/* 00E3B4 8000E804 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00E3B8 8000E808 00001025 */  move        $v0, $zero
/* 00E3BC 8000E80C 03E00008 */  jr          $ra
/* 00E3C0 8000E810 00000000 */   nop

glabel func_8000E814 # 83
/* 00E3C4 8000E814 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00E3C8 8000E818 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E3CC 8000E81C 8C820054 */  lw          $v0, 0x54($a0)
/* 00E3D0 8000E820 C4860044 */  lwc1        $f6, 0x44($a0)
/* 00E3D4 8000E824 44805000 */  mtc1        $zero, $f10
/* 00E3D8 8000E828 C44401EC */  lwc1        $f4, 0x1ec($v0)
/* 00E3DC 8000E82C 00803025 */  move        $a2, $a0
/* 00E3E0 8000E830 E7AA0024 */  swc1        $f10, 0x24($sp)
/* 00E3E4 8000E834 46062201 */  sub.s       $f8, $f4, $f6
/* 00E3E8 8000E838 E7A80020 */  swc1        $f8, 0x20($sp)
/* 00E3EC 8000E83C C492004C */  lwc1        $f18, 0x4c($a0)
/* 00E3F0 8000E840 C45001F4 */  lwc1        $f16, 0x1f4($v0)
/* 00E3F4 8000E844 AFA60030 */  sw          $a2, 0x30($sp)
/* 00E3F8 8000E848 27A40020 */  addiu       $a0, $sp, 0x20
/* 00E3FC 8000E84C 46128101 */  sub.s       $f4, $f16, $f18
/* 00E400 8000E850 AFA2002C */  sw          $v0, 0x2c($sp)
/* 00E404 8000E854 0C002CB9 */  jal         func_8000B2E4
/* 00E408 8000E858 E7A40028 */   swc1       $f4, 0x28($sp)
/* 00E40C 8000E85C 8FA2002C */  lw          $v0, 0x2c($sp)
/* 00E410 8000E860 C4460010 */  lwc1        $f6, 0x10($v0)
/* 00E414 8000E864 0C00E7ED */  jal         func_80039FB4
/* 00E418 8000E868 46060301 */   sub.s      $f12, $f0, $f6
/* 00E41C 8000E86C 3C0141A0 */  lui         $at, 0x41a0
/* 00E420 8000E870 44814000 */  mtc1        $at, $f8
/* 00E424 8000E874 46000086 */  mov.s       $f2, $f0
/* 00E428 8000E878 46000005 */  abs.s       $f0, $f0
/* 00E42C 8000E87C 8FA60030 */  lw          $a2, 0x30($sp)
/* 00E430 8000E880 4608003C */  c.lt.s      $f0, $f8
/* 00E434 8000E884 00C02025 */  move        $a0, $a2
/* 00E438 8000E888 45020006 */  bc1fl       .L8000E8A4
/* 00E43C 8000E88C 44805000 */   mtc1       $zero, $f10
/* 00E440 8000E890 0C0037C3 */  jal         func_8000DF0C
/* 00E444 8000E894 240500C1 */   addiu      $a1, $zero, 0xc1
/* 00E448 8000E898 1000000C */  b           .L8000E8CC
/* 00E44C 8000E89C 24020001 */   addiu      $v0, $zero, 0x1
/* 00E450 8000E8A0 44805000 */  mtc1        $zero, $f10
.L8000E8A4:
/* 00E454 8000E8A4 00C02025 */  move        $a0, $a2
/* 00E458 8000E8A8 00001025 */  move        $v0, $zero
/* 00E45C 8000E8AC 460A103C */  c.lt.s      $f2, $f10
/* 00E460 8000E8B0 00000000 */  nop
/* 00E464 8000E8B4 45000005 */  bc1f        .L8000E8CC
/* 00E468 8000E8B8 00000000 */   nop
/* 00E46C 8000E8BC 0C0037C3 */  jal         func_8000DF0C
/* 00E470 8000E8C0 240500C5 */   addiu      $a1, $zero, 0xc5
/* 00E474 8000E8C4 10000001 */  b           .L8000E8CC
/* 00E478 8000E8C8 24020001 */   addiu      $v0, $zero, 0x1
.L8000E8CC:
/* 00E47C 8000E8CC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00E480 8000E8D0 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00E484 8000E8D4 03E00008 */  jr          $ra
/* 00E488 8000E8D8 00000000 */   nop

glabel func_8000E8DC # 84
/* 00E48C 8000E8DC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00E490 8000E8E0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E494 8000E8E4 8C820054 */  lw          $v0, 0x54($a0)
/* 00E498 8000E8E8 8C4E01BC */  lw          $t6, 0x1bc($v0)
/* 00E49C 8000E8EC 11C00005 */  beqz        $t6, .L8000E904
/* 00E4A0 8000E8F0 00000000 */   nop
/* 00E4A4 8000E8F4 0C04708C */  jal         func_8011C230
/* 00E4A8 8000E8F8 3C054434 */   lui        $a1, 0x4434
/* 00E4AC 8000E8FC 10000004 */  b           .L8000E910
/* 00E4B0 8000E900 8FBF0014 */   lw         $ra, 0x14($sp)
.L8000E904:
/* 00E4B4 8000E904 0C04708C */  jal         func_8011C230
/* 00E4B8 8000E908 3C054370 */   lui        $a1, 0x4370
/* 00E4BC 8000E90C 8FBF0014 */  lw          $ra, 0x14($sp)
.L8000E910:
/* 00E4C0 8000E910 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00E4C4 8000E914 00001025 */  move        $v0, $zero
/* 00E4C8 8000E918 03E00008 */  jr          $ra
/* 00E4CC 8000E91C 00000000 */   nop

glabel func_8000E920 # 85
/* 00E4D0 8000E920 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 00E4D4 8000E924 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00E4D8 8000E928 AFA40048 */  sw          $a0, 0x48($sp)
/* 00E4DC 8000E92C AFA5004C */  sw          $a1, 0x4c($sp)
/* 00E4E0 8000E930 8C8E0054 */  lw          $t6, 0x54($a0)
/* 00E4E4 8000E934 3C02800F */  lui         $v0, %hi(D_800F3E20)
/* 00E4E8 8000E938 24423E20 */  addiu       $v0, $v0, %lo(D_800F3E20)
/* 00E4EC 8000E93C AFAE0044 */  sw          $t6, 0x44($sp)
/* 00E4F0 8000E940 C4840044 */  lwc1        $f4, 0x44($a0)
/* 00E4F4 8000E944 C4460000 */  lwc1        $f6, 0x0($v0)
/* 00E4F8 8000E948 44805000 */  mtc1        $zero, $f10
/* 00E4FC 8000E94C C4520008 */  lwc1        $f18, 0x8($v0)
/* 00E500 8000E950 46062201 */  sub.s       $f8, $f4, $f6
/* 00E504 8000E954 E7AA003C */  swc1        $f10, 0x3c($sp)
/* 00E508 8000E958 00802825 */  move        $a1, $a0
/* 00E50C 8000E95C E7A80038 */  swc1        $f8, 0x38($sp)
/* 00E510 8000E960 C490004C */  lwc1        $f16, 0x4c($a0)
/* 00E514 8000E964 AFA50048 */  sw          $a1, 0x48($sp)
/* 00E518 8000E968 27A40038 */  addiu       $a0, $sp, 0x38
/* 00E51C 8000E96C 46128101 */  sub.s       $f4, $f16, $f18
/* 00E520 8000E970 0C002CB9 */  jal         func_8000B2E4
/* 00E524 8000E974 E7A40040 */   swc1       $f4, 0x40($sp)
/* 00E528 8000E978 8FAF0044 */  lw          $t7, 0x44($sp)
/* 00E52C 8000E97C 46000386 */  mov.s       $f14, $f0
/* 00E530 8000E980 3C013FF0 */  lui         $at, 0x3ff0
/* 00E534 8000E984 C5EC0010 */  lwc1        $f12, 0x10($t7)
/* 00E538 8000E988 44814800 */  mtc1        $at, $f9
/* 00E53C 8000E98C 44804000 */  mtc1        $zero, $f8
/* 00E540 8000E990 460C0181 */  sub.s       $f6, $f0, $f12
/* 00E544 8000E994 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 00E548 8000E998 C7AA004C */  lwc1        $f10, 0x4c($sp)
/* 00E54C 8000E99C 46003021 */  cvt.d.s     $f0, $f6
/* 00E550 8000E9A0 46200005 */  abs.d       $f0, $f0
/* 00E554 8000E9A4 4628003C */  c.lt.d      $f0, $f8
/* 00E558 8000E9A8 00000000 */  nop
/* 00E55C 8000E9AC 45000003 */  bc1f        .L8000E9BC
/* 00E560 8000E9B0 00000000 */   nop
/* 00E564 8000E9B4 1000001E */  b           .L8000EA30
/* 00E568 8000E9B8 24020001 */   addiu      $v0, $zero, 0x1
.L8000E9BC:
/* 00E56C 8000E9BC C4302C64 */  lwc1        $f16, %lo(D_800B2C64)($at)
/* 00E570 8000E9C0 3C063F80 */  lui         $a2, 0x3f80
/* 00E574 8000E9C4 3C0742B4 */  lui         $a3, 0x42b4
/* 00E578 8000E9C8 46105482 */  mul.s       $f18, $f10, $f16
/* 00E57C 8000E9CC E7AE0034 */  swc1        $f14, 0x34($sp)
/* 00E580 8000E9D0 0C00EACF */  jal         func_8003AB3C
/* 00E584 8000E9D4 E7B20010 */   swc1       $f18, 0x10($sp)
/* 00E588 8000E9D8 8FB80044 */  lw          $t8, 0x44($sp)
/* 00E58C 8000E9DC 8FA40048 */  lw          $a0, 0x48($sp)
/* 00E590 8000E9E0 24060001 */  addiu       $a2, $zero, 0x1
/* 00E594 8000E9E4 C7040010 */  lwc1        $f4, 0x10($t8)
/* 00E598 8000E9E8 46040181 */  sub.s       $f6, $f0, $f4
/* 00E59C 8000E9EC 44053000 */  mfc1        $a1, $f6
/* 00E5A0 8000E9F0 0C0051BB */  jal         func_800146EC
/* 00E5A4 8000E9F4 00000000 */   nop
/* 00E5A8 8000E9F8 8FB90044 */  lw          $t9, 0x44($sp)
/* 00E5AC 8000E9FC C7A80034 */  lwc1        $f8, 0x34($sp)
/* 00E5B0 8000EA00 3C013F80 */  lui         $at, 0x3f80
/* 00E5B4 8000EA04 C72A0010 */  lwc1        $f10, 0x10($t9)
/* 00E5B8 8000EA08 44818000 */  mtc1        $at, $f16
/* 00E5BC 8000EA0C 00001025 */  move        $v0, $zero
/* 00E5C0 8000EA10 460A4001 */  sub.s       $f0, $f8, $f10
/* 00E5C4 8000EA14 46000005 */  abs.s       $f0, $f0
/* 00E5C8 8000EA18 4610003C */  c.lt.s      $f0, $f16
/* 00E5CC 8000EA1C 00000000 */  nop
/* 00E5D0 8000EA20 45000003 */  bc1f        .L8000EA30
/* 00E5D4 8000EA24 00000000 */   nop
/* 00E5D8 8000EA28 10000001 */  b           .L8000EA30
/* 00E5DC 8000EA2C 24020001 */   addiu      $v0, $zero, 0x1
.L8000EA30:
/* 00E5E0 8000EA30 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00E5E4 8000EA34 27BD0048 */  addiu       $sp, $sp, 0x48
/* 00E5E8 8000EA38 03E00008 */  jr          $ra
/* 00E5EC 8000EA3C 00000000 */   nop

glabel func_8000EA40 # 86
/* 00E5F0 8000EA40 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00E5F4 8000EA44 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E5F8 8000EA48 0C003A48 */  jal         func_8000E920
/* 00E5FC 8000EA4C 3C054434 */   lui        $a1, 0x4434
/* 00E600 8000EA50 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00E604 8000EA54 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00E608 8000EA58 00001025 */  move        $v0, $zero
/* 00E60C 8000EA5C 03E00008 */  jr          $ra
/* 00E610 8000EA60 00000000 */   nop

glabel func_8000EA64 # 87
/* 00E614 8000EA64 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00E618 8000EA68 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E61C 8000EA6C 8C820054 */  lw          $v0, 0x54($a0)
/* 00E620 8000EA70 944E01EA */  lhu         $t6, 0x1ea($v0)
/* 00E624 8000EA74 51C00006 */  beql        $t6, $zero, .L8000EA90
/* 00E628 8000EA78 8C4F01BC */   lw         $t7, 0x1bc($v0)
/* 00E62C 8000EA7C 0C0037C3 */  jal         func_8000DF0C
/* 00E630 8000EA80 2405003D */   addiu      $a1, $zero, 0x3d
/* 00E634 8000EA84 10000007 */  b           .L8000EAA4
/* 00E638 8000EA88 24020001 */   addiu      $v0, $zero, 0x1
/* 00E63C 8000EA8C 8C4F01BC */  lw          $t7, 0x1bc($v0)
.L8000EA90:
/* 00E640 8000EA90 00001025 */  move        $v0, $zero
/* 00E644 8000EA94 15E00003 */  bnez        $t7, .L8000EAA4
/* 00E648 8000EA98 00000000 */   nop
/* 00E64C 8000EA9C 10000001 */  b           .L8000EAA4
/* 00E650 8000EAA0 24020001 */   addiu      $v0, $zero, 0x1
.L8000EAA4:
/* 00E654 8000EAA4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00E658 8000EAA8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00E65C 8000EAAC 03E00008 */  jr          $ra
/* 00E660 8000EAB0 00000000 */   nop

glabel func_8000EAB4 # 88
/* 00E664 8000EAB4 8C820054 */  lw          $v0, 0x54($a0)
/* 00E668 8000EAB8 8C4E01BC */  lw          $t6, 0x1bc($v0)
/* 00E66C 8000EABC 00001025 */  move        $v0, $zero
/* 00E670 8000EAC0 15C00003 */  bnez        $t6, .L8000EAD0
/* 00E674 8000EAC4 00000000 */   nop
/* 00E678 8000EAC8 03E00008 */  jr          $ra
/* 00E67C 8000EACC 24020001 */   addiu      $v0, $zero, 0x1
.L8000EAD0:
/* 00E680 8000EAD0 03E00008 */  jr          $ra
/* 00E684 8000EAD4 00000000 */   nop

glabel func_8000EAD8 # 89
/* 00E688 8000EAD8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00E68C 8000EADC AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E690 8000EAE0 8C820054 */  lw          $v0, 0x54($a0)
/* 00E694 8000EAE4 0C00E500 */  jal         func_80039400
/* 00E698 8000EAE8 8444011C */   lh         $a0, 0x11c($v0)
/* 00E69C 8000EAEC 28410004 */  slti        $at, $v0, 0x4
/* 00E6A0 8000EAF0 14200003 */  bnez        $at, .L8000EB00
/* 00E6A4 8000EAF4 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00E6A8 8000EAF8 10000002 */  b           .L8000EB04
/* 00E6AC 8000EAFC 24020001 */   addiu      $v0, $zero, 0x1
.L8000EB00:
/* 00E6B0 8000EB00 00001025 */  move        $v0, $zero
.L8000EB04:
/* 00E6B4 8000EB04 03E00008 */  jr          $ra
/* 00E6B8 8000EB08 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8000EB0C # 90
/* 00E6BC 8000EB0C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00E6C0 8000EB10 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E6C4 8000EB14 0C0470E8 */  jal         func_8011C3A0
/* 00E6C8 8000EB18 AFA40018 */   sw         $a0, 0x18($sp)
/* 00E6CC 8000EB1C 8FA40018 */  lw          $a0, 0x18($sp)
/* 00E6D0 8000EB20 0C047052 */  jal         func_8011C148
/* 00E6D4 8000EB24 3C0542F0 */   lui        $a1, 0x42f0
/* 00E6D8 8000EB28 10400003 */  beqz        $v0, .L8000EB38
/* 00E6DC 8000EB2C 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00E6E0 8000EB30 10000002 */  b           .L8000EB3C
/* 00E6E4 8000EB34 24020001 */   addiu      $v0, $zero, 0x1
.L8000EB38:
/* 00E6E8 8000EB38 00001025 */  move        $v0, $zero
.L8000EB3C:
/* 00E6EC 8000EB3C 03E00008 */  jr          $ra
/* 00E6F0 8000EB40 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8000EB44 # 91
/* 00E6F4 8000EB44 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00E6F8 8000EB48 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E6FC 8000EB4C 0C0470E8 */  jal         func_8011C3A0
/* 00E700 8000EB50 AFA40018 */   sw         $a0, 0x18($sp)
/* 00E704 8000EB54 8FA40018 */  lw          $a0, 0x18($sp)
/* 00E708 8000EB58 0C047052 */  jal         func_8011C148
/* 00E70C 8000EB5C 3C0544B4 */   lui        $a1, 0x44b4
/* 00E710 8000EB60 10400003 */  beqz        $v0, .L8000EB70
/* 00E714 8000EB64 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00E718 8000EB68 10000002 */  b           .L8000EB74
/* 00E71C 8000EB6C 24020001 */   addiu      $v0, $zero, 0x1
.L8000EB70:
/* 00E720 8000EB70 00001025 */  move        $v0, $zero
.L8000EB74:
/* 00E724 8000EB74 03E00008 */  jr          $ra
/* 00E728 8000EB78 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8000EB7C # 92
/* 00E72C 8000EB7C 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 00E730 8000EB80 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E734 8000EB84 8C820054 */  lw          $v0, 0x54($a0)
/* 00E738 8000EB88 C4860044 */  lwc1        $f6, 0x44($a0)
/* 00E73C 8000EB8C 44805000 */  mtc1        $zero, $f10
/* 00E740 8000EB90 C44401EC */  lwc1        $f4, 0x1ec($v0)
/* 00E744 8000EB94 00803825 */  move        $a3, $a0
/* 00E748 8000EB98 E7AA002C */  swc1        $f10, 0x2c($sp)
/* 00E74C 8000EB9C 46062201 */  sub.s       $f8, $f4, $f6
/* 00E750 8000EBA0 E7A80028 */  swc1        $f8, 0x28($sp)
/* 00E754 8000EBA4 C492004C */  lwc1        $f18, 0x4c($a0)
/* 00E758 8000EBA8 C45001F4 */  lwc1        $f16, 0x1f4($v0)
/* 00E75C 8000EBAC AFA70038 */  sw          $a3, 0x38($sp)
/* 00E760 8000EBB0 27A40028 */  addiu       $a0, $sp, 0x28
/* 00E764 8000EBB4 46128101 */  sub.s       $f4, $f16, $f18
/* 00E768 8000EBB8 0C002CB9 */  jal         func_8000B2E4
/* 00E76C 8000EBBC E7A40030 */   swc1       $f4, 0x30($sp)
/* 00E770 8000EBC0 44050000 */  mfc1        $a1, $f0
/* 00E774 8000EBC4 8FA40038 */  lw          $a0, 0x38($sp)
/* 00E778 8000EBC8 0C00519D */  jal         func_80014674
/* 00E77C 8000EBCC 24060001 */   addiu      $a2, $zero, 0x1
/* 00E780 8000EBD0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00E784 8000EBD4 27BD0038 */  addiu       $sp, $sp, 0x38
/* 00E788 8000EBD8 24020001 */  addiu       $v0, $zero, 0x1
/* 00E78C 8000EBDC 03E00008 */  jr          $ra
/* 00E790 8000EBE0 00000000 */   nop

glabel func_8000EBE4 # 93
/* 00E794 8000EBE4 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 00E798 8000EBE8 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00E79C 8000EBEC AFB00018 */  sw          $s0, 0x18($sp)
/* 00E7A0 8000EBF0 8C900054 */  lw          $s0, 0x54($a0)
/* 00E7A4 8000EBF4 0C0470E8 */  jal         func_8011C3A0
/* 00E7A8 8000EBF8 AFA40040 */   sw         $a0, 0x40($sp)
/* 00E7AC 8000EBFC 8FA40040 */  lw          $a0, 0x40($sp)
/* 00E7B0 8000EC00 0C047052 */  jal         func_8011C148
/* 00E7B4 8000EC04 3C054396 */   lui        $a1, 0x4396
/* 00E7B8 8000EC08 8FA60040 */  lw          $a2, 0x40($sp)
/* 00E7BC 8000EC0C C60401EC */  lwc1        $f4, 0x1ec($s0)
/* 00E7C0 8000EC10 44805000 */  mtc1        $zero, $f10
/* 00E7C4 8000EC14 C4C60044 */  lwc1        $f6, 0x44($a2)
/* 00E7C8 8000EC18 27A40024 */  addiu       $a0, $sp, 0x24
/* 00E7CC 8000EC1C E7AA0028 */  swc1        $f10, 0x28($sp)
/* 00E7D0 8000EC20 46062201 */  sub.s       $f8, $f4, $f6
/* 00E7D4 8000EC24 E7A80024 */  swc1        $f8, 0x24($sp)
/* 00E7D8 8000EC28 C61001F4 */  lwc1        $f16, 0x1f4($s0)
/* 00E7DC 8000EC2C C4D2004C */  lwc1        $f18, 0x4c($a2)
/* 00E7E0 8000EC30 46128101 */  sub.s       $f4, $f16, $f18
/* 00E7E4 8000EC34 0C00E3AC */  jal         func_80038EB0
/* 00E7E8 8000EC38 E7A4002C */   swc1       $f4, 0x2c($sp)
/* 00E7EC 8000EC3C C6060204 */  lwc1        $f6, 0x204($s0)
/* 00E7F0 8000EC40 C60801A0 */  lwc1        $f8, 0x1a0($s0)
/* 00E7F4 8000EC44 44801000 */  mtc1        $zero, $f2
/* 00E7F8 8000EC48 46083280 */  add.s       $f10, $f6, $f8
/* 00E7FC 8000EC4C 460A003C */  c.lt.s      $f0, $f10
/* 00E800 8000EC50 00000000 */  nop
/* 00E804 8000EC54 45010005 */  bc1t        .L8000EC6C
/* 00E808 8000EC58 00000000 */   nop
/* 00E80C 8000EC5C 960E01EA */  lhu         $t6, 0x1ea($s0)
/* 00E810 8000EC60 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 00E814 8000EC64 11C00003 */  beqz        $t6, .L8000EC74
/* 00E818 8000EC68 00000000 */   nop
.L8000EC6C:
/* 00E81C 8000EC6C 1000000B */  b           .L8000EC9C
/* 00E820 8000EC70 24020001 */   addiu      $v0, $zero, 0x1
.L8000EC74:
/* 00E824 8000EC74 C4302C64 */  lwc1        $f16, %lo(D_800B2C64)($at)
/* 00E828 8000EC78 3C01447A */  lui         $at, 0x447a
/* 00E82C 8000EC7C 44819000 */  mtc1        $at, $f18
/* 00E830 8000EC80 E7A20030 */  swc1        $f2, 0x30($sp)
/* 00E834 8000EC84 E7A20034 */  swc1        $f2, 0x34($sp)
/* 00E838 8000EC88 46128102 */  mul.s       $f4, $f16, $f18
/* 00E83C 8000EC8C 27A40030 */  addiu       $a0, $sp, 0x30
/* 00E840 8000EC90 0C001AAA */  jal         func_80006AA8
/* 00E844 8000EC94 E7A40038 */   swc1       $f4, 0x38($sp)
/* 00E848 8000EC98 00001025 */  move        $v0, $zero
.L8000EC9C:
/* 00E84C 8000EC9C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00E850 8000ECA0 8FB00018 */  lw          $s0, 0x18($sp)
/* 00E854 8000ECA4 27BD0040 */  addiu       $sp, $sp, 0x40
/* 00E858 8000ECA8 03E00008 */  jr          $ra
/* 00E85C 8000ECAC 00000000 */   nop

glabel func_8000ECB0 # 94
/* 00E860 8000ECB0 3C0E8013 */  lui         $t6, %hi(D_80137EE4)
/* 00E864 8000ECB4 8DCE7EE4 */  lw          $t6, %lo(D_80137EE4)($t6)
/* 00E868 8000ECB8 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00E86C 8000ECBC AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E870 8000ECC0 C4880000 */  lwc1        $f8, 0x0($a0)
/* 00E874 8000ECC4 C5CA000C */  lwc1        $f10, 0xc($t6)
/* 00E878 8000ECC8 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 00E87C 8000ECCC C4242C64 */  lwc1        $f4, %lo(D_800B2C64)($at)
/* 00E880 8000ECD0 460A4403 */  div.s       $f16, $f8, $f10
/* 00E884 8000ECD4 3C0143C8 */  lui         $at, 0x43c8
/* 00E888 8000ECD8 44813000 */  mtc1        $at, $f6
/* 00E88C 8000ECDC 3C013F80 */  lui         $at, 0x3f80
/* 00E890 8000ECE0 44819000 */  mtc1        $at, $f18
/* 00E894 8000ECE4 46062002 */  mul.s       $f0, $f4, $f6
/* 00E898 8000ECE8 3C013F00 */  lui         $at, 0x3f00
/* 00E89C 8000ECEC 44813000 */  mtc1        $at, $f6
/* 00E8A0 8000ECF0 3C013FF0 */  lui         $at, 0x3ff0
/* 00E8A4 8000ECF4 44818800 */  mtc1        $at, $f17
/* 00E8A8 8000ECF8 2404000A */  addiu       $a0, $zero, 0xa
/* 00E8AC 8000ECFC 46128101 */  sub.s       $f4, $f16, $f18
/* 00E8B0 8000ED00 44808000 */  mtc1        $zero, $f16
/* 00E8B4 8000ED04 46062202 */  mul.s       $f8, $f4, $f6
/* 00E8B8 8000ED08 46000121 */  cvt.d.s     $f4, $f0
/* 00E8BC 8000ED0C 460042A1 */  cvt.d.s     $f10, $f8
/* 00E8C0 8000ED10 462A8480 */  add.d       $f18, $f16, $f10
/* 00E8C4 8000ED14 46322182 */  mul.d       $f6, $f4, $f18
/* 00E8C8 8000ED18 46203020 */  cvt.s.d     $f0, $f6
/* 00E8CC 8000ED1C 0C00E500 */  jal         func_80039400
/* 00E8D0 8000ED20 E7A0001C */   swc1       $f0, 0x1c($sp)
/* 00E8D4 8000ED24 244FFFFC */  addiu       $t7, $v0, -0x4
/* 00E8D8 8000ED28 448F4000 */  mtc1        $t7, $f8
/* 00E8DC 8000ED2C C7A0001C */  lwc1        $f0, 0x1c($sp)
/* 00E8E0 8000ED30 44805000 */  mtc1        $zero, $f10
/* 00E8E4 8000ED34 46804420 */  cvt.s.w     $f16, $f8
/* 00E8E8 8000ED38 27A40020 */  addiu       $a0, $sp, 0x20
/* 00E8EC 8000ED3C E7A00028 */  swc1        $f0, 0x28($sp)
/* 00E8F0 8000ED40 E7AA0024 */  swc1        $f10, 0x24($sp)
/* 00E8F4 8000ED44 0C001AAA */  jal         func_80006AA8
/* 00E8F8 8000ED48 E7B00020 */   swc1       $f16, 0x20($sp)
/* 00E8FC 8000ED4C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00E900 8000ED50 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00E904 8000ED54 00001025 */  move        $v0, $zero
/* 00E908 8000ED58 03E00008 */  jr          $ra
/* 00E90C 8000ED5C 00000000 */   nop

glabel func_8000ED60 # 95
/* 00E910 8000ED60 3C0E8013 */  lui         $t6, %hi(D_80137EE4)
/* 00E914 8000ED64 8DCE7EE4 */  lw          $t6, %lo(D_80137EE4)($t6)
/* 00E918 8000ED68 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00E91C 8000ED6C AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E920 8000ED70 C4880000 */  lwc1        $f8, 0x0($a0)
/* 00E924 8000ED74 C5CA000C */  lwc1        $f10, 0xc($t6)
/* 00E928 8000ED78 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 00E92C 8000ED7C C4242C64 */  lwc1        $f4, %lo(D_800B2C64)($at)
/* 00E930 8000ED80 460A4403 */  div.s       $f16, $f8, $f10
/* 00E934 8000ED84 3C014416 */  lui         $at, 0x4416
/* 00E938 8000ED88 44813000 */  mtc1        $at, $f6
/* 00E93C 8000ED8C 3C013F80 */  lui         $at, 0x3f80
/* 00E940 8000ED90 44819000 */  mtc1        $at, $f18
/* 00E944 8000ED94 46062002 */  mul.s       $f0, $f4, $f6
/* 00E948 8000ED98 3C013F00 */  lui         $at, 0x3f00
/* 00E94C 8000ED9C 44813000 */  mtc1        $at, $f6
/* 00E950 8000EDA0 3C013FF0 */  lui         $at, 0x3ff0
/* 00E954 8000EDA4 44818800 */  mtc1        $at, $f17
/* 00E958 8000EDA8 2404000A */  addiu       $a0, $zero, 0xa
/* 00E95C 8000EDAC 46128101 */  sub.s       $f4, $f16, $f18
/* 00E960 8000EDB0 44808000 */  mtc1        $zero, $f16
/* 00E964 8000EDB4 46062202 */  mul.s       $f8, $f4, $f6
/* 00E968 8000EDB8 46000121 */  cvt.d.s     $f4, $f0
/* 00E96C 8000EDBC 460042A1 */  cvt.d.s     $f10, $f8
/* 00E970 8000EDC0 462A8480 */  add.d       $f18, $f16, $f10
/* 00E974 8000EDC4 46322182 */  mul.d       $f6, $f4, $f18
/* 00E978 8000EDC8 46203020 */  cvt.s.d     $f0, $f6
/* 00E97C 8000EDCC 0C00E500 */  jal         func_80039400
/* 00E980 8000EDD0 E7A0001C */   swc1       $f0, 0x1c($sp)
/* 00E984 8000EDD4 244FFFFC */  addiu       $t7, $v0, -0x4
/* 00E988 8000EDD8 448F4000 */  mtc1        $t7, $f8
/* 00E98C 8000EDDC C7A0001C */  lwc1        $f0, 0x1c($sp)
/* 00E990 8000EDE0 44805000 */  mtc1        $zero, $f10
/* 00E994 8000EDE4 46804420 */  cvt.s.w     $f16, $f8
/* 00E998 8000EDE8 27A40020 */  addiu       $a0, $sp, 0x20
/* 00E99C 8000EDEC E7A00028 */  swc1        $f0, 0x28($sp)
/* 00E9A0 8000EDF0 E7AA0024 */  swc1        $f10, 0x24($sp)
/* 00E9A4 8000EDF4 0C001AAA */  jal         func_80006AA8
/* 00E9A8 8000EDF8 E7B00020 */   swc1       $f16, 0x20($sp)
/* 00E9AC 8000EDFC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00E9B0 8000EE00 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00E9B4 8000EE04 00001025 */  move        $v0, $zero
/* 00E9B8 8000EE08 03E00008 */  jr          $ra
/* 00E9BC 8000EE0C 00000000 */   nop

glabel func_8000EE10 # 96
/* 00E9C0 8000EE10 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00E9C4 8000EE14 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E9C8 8000EE18 AFA40018 */  sw          $a0, 0x18($sp)
/* 00E9CC 8000EE1C 0C00E500 */  jal         func_80039400
/* 00E9D0 8000EE20 2404000A */   addiu      $a0, $zero, 0xa
/* 00E9D4 8000EE24 244EFFFB */  addiu       $t6, $v0, -0x5
/* 00E9D8 8000EE28 448E2000 */  mtc1        $t6, $f4
/* 00E9DC 8000EE2C 8FA40018 */  lw          $a0, 0x18($sp)
/* 00E9E0 8000EE30 24060001 */  addiu       $a2, $zero, 0x1
/* 00E9E4 8000EE34 46802120 */  cvt.s.w     $f4, $f4
/* 00E9E8 8000EE38 44052000 */  mfc1        $a1, $f4
/* 00E9EC 8000EE3C 0C0051BB */  jal         func_800146EC
/* 00E9F0 8000EE40 00000000 */   nop
/* 00E9F4 8000EE44 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00E9F8 8000EE48 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00E9FC 8000EE4C 00001025 */  move        $v0, $zero
/* 00EA00 8000EE50 03E00008 */  jr          $ra
/* 00EA04 8000EE54 00000000 */   nop

glabel func_8000EE58 # 97
/* 00EA08 8000EE58 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 00EA0C 8000EE5C C4242C64 */  lwc1        $f4, %lo(D_800B2C64)($at)
/* 00EA10 8000EE60 3C01457A */  lui         $at, 0x457a
/* 00EA14 8000EE64 44813000 */  mtc1        $at, $f6
/* 00EA18 8000EE68 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00EA1C 8000EE6C AFBF0014 */  sw          $ra, 0x14($sp)
/* 00EA20 8000EE70 46062002 */  mul.s       $f0, $f4, $f6
/* 00EA24 8000EE74 8C8E0054 */  lw          $t6, 0x54($a0)
/* 00EA28 8000EE78 AFA40030 */  sw          $a0, 0x30($sp)
/* 00EA2C 8000EE7C 3C054234 */  lui         $a1, 0x4234
/* 00EA30 8000EE80 00003025 */  move        $a2, $zero
/* 00EA34 8000EE84 AFAE002C */  sw          $t6, 0x2c($sp)
/* 00EA38 8000EE88 0C0051BB */  jal         func_800146EC
/* 00EA3C 8000EE8C E7A0001C */   swc1       $f0, 0x1c($sp)
/* 00EA40 8000EE90 8FAF002C */  lw          $t7, 0x2c($sp)
/* 00EA44 8000EE94 3C0142B4 */  lui         $at, 0x42b4
/* 00EA48 8000EE98 44814000 */  mtc1        $at, $f8
/* 00EA4C 8000EE9C C5E2000C */  lwc1        $f2, 0xc($t7)
/* 00EA50 8000EEA0 8FA70030 */  lw          $a3, 0x30($sp)
/* 00EA54 8000EEA4 C7A0001C */  lwc1        $f0, 0x1c($sp)
/* 00EA58 8000EEA8 4602403C */  c.lt.s      $f8, $f2
/* 00EA5C 8000EEAC 3C014387 */  lui         $at, 0x4387
/* 00EA60 8000EEB0 45020009 */  bc1fl       .L8000EED8
/* 00EA64 8000EEB4 3C013FC0 */   lui        $at, 0x3fc0
/* 00EA68 8000EEB8 44815000 */  mtc1        $at, $f10
/* 00EA6C 8000EEBC 00000000 */  nop
/* 00EA70 8000EEC0 460A103C */  c.lt.s      $f2, $f10
/* 00EA74 8000EEC4 00000000 */  nop
/* 00EA78 8000EEC8 45020003 */  bc1fl       .L8000EED8
/* 00EA7C 8000EECC 3C013FC0 */   lui        $at, 0x3fc0
/* 00EA80 8000EED0 46000007 */  neg.s       $f0, $f0
/* 00EA84 8000EED4 3C013FC0 */  lui         $at, 0x3fc0
.L8000EED8:
/* 00EA88 8000EED8 44819000 */  mtc1        $at, $f18
/* 00EA8C 8000EEDC C4F0001C */  lwc1        $f16, 0x1c($a3)
/* 00EA90 8000EEE0 44801000 */  mtc1        $zero, $f2
/* 00EA94 8000EEE4 27A40020 */  addiu       $a0, $sp, 0x20
/* 00EA98 8000EEE8 46128100 */  add.s       $f4, $f16, $f18
/* 00EA9C 8000EEEC E4E4001C */  swc1        $f4, 0x1c($a3)
/* 00EAA0 8000EEF0 E7A00028 */  swc1        $f0, 0x28($sp)
/* 00EAA4 8000EEF4 E7A20024 */  swc1        $f2, 0x24($sp)
/* 00EAA8 8000EEF8 0C001AAA */  jal         func_80006AA8
/* 00EAAC 8000EEFC E7A20020 */   swc1       $f2, 0x20($sp)
/* 00EAB0 8000EF00 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00EAB4 8000EF04 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00EAB8 8000EF08 00001025 */  move        $v0, $zero
/* 00EABC 8000EF0C 03E00008 */  jr          $ra
/* 00EAC0 8000EF10 00000000 */   nop

glabel func_8000EF14 # 98
/* 00EAC4 8000EF14 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 00EAC8 8000EF18 C4242C64 */  lwc1        $f4, %lo(D_800B2C64)($at)
/* 00EACC 8000EF1C 3C01800A */  lui         $at, %hi(D_800A7668)
/* 00EAD0 8000EF20 C4267668 */  lwc1        $f6, %lo(D_800A7668)($at)
/* 00EAD4 8000EF24 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 00EAD8 8000EF28 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00EADC 8000EF2C 46062202 */  mul.s       $f8, $f4, $f6
/* 00EAE0 8000EF30 AFB10018 */  sw          $s1, 0x18($sp)
/* 00EAE4 8000EF34 AFB00014 */  sw          $s0, 0x14($sp)
/* 00EAE8 8000EF38 8C910054 */  lw          $s1, 0x54($a0)
/* 00EAEC 8000EF3C 00808025 */  move        $s0, $a0
/* 00EAF0 8000EF40 0C0470E8 */  jal         func_8011C3A0
/* 00EAF4 8000EF44 E7A80028 */   swc1       $f8, 0x28($sp)
/* 00EAF8 8000EF48 02002025 */  move        $a0, $s0
/* 00EAFC 8000EF4C 0C047052 */  jal         func_8011C148
/* 00EB00 8000EF50 3C054396 */   lui        $a1, 0x4396
/* 00EB04 8000EF54 0C00E500 */  jal         func_80039400
/* 00EB08 8000EF58 2404000A */   addiu      $a0, $zero, 0xa
/* 00EB0C 8000EF5C 244EFFFB */  addiu       $t6, $v0, -0x5
/* 00EB10 8000EF60 448E5000 */  mtc1        $t6, $f10
/* 00EB14 8000EF64 02002025 */  move        $a0, $s0
/* 00EB18 8000EF68 24060001 */  addiu       $a2, $zero, 0x1
/* 00EB1C 8000EF6C 468052A0 */  cvt.s.w     $f10, $f10
/* 00EB20 8000EF70 44055000 */  mfc1        $a1, $f10
/* 00EB24 8000EF74 0C0051BB */  jal         func_800146EC
/* 00EB28 8000EF78 00000000 */   nop
/* 00EB2C 8000EF7C 02002025 */  move        $a0, $s0
/* 00EB30 8000EF80 3C054234 */  lui         $a1, 0x4234
/* 00EB34 8000EF84 0C0051BB */  jal         func_800146EC
/* 00EB38 8000EF88 00003025 */   move       $a2, $zero
/* 00EB3C 8000EF8C 3C0142B4 */  lui         $at, 0x42b4
/* 00EB40 8000EF90 44818000 */  mtc1        $at, $f16
/* 00EB44 8000EF94 C620000C */  lwc1        $f0, 0xc($s1)
/* 00EB48 8000EF98 3C014387 */  lui         $at, 0x4387
/* 00EB4C 8000EF9C 4600803C */  c.lt.s      $f16, $f0
/* 00EB50 8000EFA0 00000000 */  nop
/* 00EB54 8000EFA4 4502000A */  bc1fl       .L8000EFD0
/* 00EB58 8000EFA8 3C013FC0 */   lui        $at, 0x3fc0
/* 00EB5C 8000EFAC 44819000 */  mtc1        $at, $f18
/* 00EB60 8000EFB0 C7A40028 */  lwc1        $f4, 0x28($sp)
/* 00EB64 8000EFB4 4612003C */  c.lt.s      $f0, $f18
/* 00EB68 8000EFB8 00000000 */  nop
/* 00EB6C 8000EFBC 45020004 */  bc1fl       .L8000EFD0
/* 00EB70 8000EFC0 3C013FC0 */   lui        $at, 0x3fc0
/* 00EB74 8000EFC4 46002187 */  neg.s       $f6, $f4
/* 00EB78 8000EFC8 E7A60028 */  swc1        $f6, 0x28($sp)
/* 00EB7C 8000EFCC 3C013FC0 */  lui         $at, 0x3fc0
.L8000EFD0:
/* 00EB80 8000EFD0 44815000 */  mtc1        $at, $f10
/* 00EB84 8000EFD4 C608001C */  lwc1        $f8, 0x1c($s0)
/* 00EB88 8000EFD8 44800000 */  mtc1        $zero, $f0
/* 00EB8C 8000EFDC 27A40038 */  addiu       $a0, $sp, 0x38
/* 00EB90 8000EFE0 460A4400 */  add.s       $f16, $f8, $f10
/* 00EB94 8000EFE4 E610001C */  swc1        $f16, 0x1c($s0)
/* 00EB98 8000EFE8 C7B20028 */  lwc1        $f18, 0x28($sp)
/* 00EB9C 8000EFEC E7A0003C */  swc1        $f0, 0x3c($sp)
/* 00EBA0 8000EFF0 E7A00038 */  swc1        $f0, 0x38($sp)
/* 00EBA4 8000EFF4 0C001AAA */  jal         func_80006AA8
/* 00EBA8 8000EFF8 E7B20040 */   swc1       $f18, 0x40($sp)
/* 00EBAC 8000EFFC C62401EC */  lwc1        $f4, 0x1ec($s1)
/* 00EBB0 8000F000 C6060044 */  lwc1        $f6, 0x44($s0)
/* 00EBB4 8000F004 44805000 */  mtc1        $zero, $f10
/* 00EBB8 8000F008 27A4002C */  addiu       $a0, $sp, 0x2c
/* 00EBBC 8000F00C 46062201 */  sub.s       $f8, $f4, $f6
/* 00EBC0 8000F010 E7AA0030 */  swc1        $f10, 0x30($sp)
/* 00EBC4 8000F014 E7A8002C */  swc1        $f8, 0x2c($sp)
/* 00EBC8 8000F018 C612004C */  lwc1        $f18, 0x4c($s0)
/* 00EBCC 8000F01C C63001F4 */  lwc1        $f16, 0x1f4($s1)
/* 00EBD0 8000F020 46128101 */  sub.s       $f4, $f16, $f18
/* 00EBD4 8000F024 0C00E3AC */  jal         func_80038EB0
/* 00EBD8 8000F028 E7A40034 */   swc1       $f4, 0x34($sp)
/* 00EBDC 8000F02C C6260204 */  lwc1        $f6, 0x204($s1)
/* 00EBE0 8000F030 C62801A0 */  lwc1        $f8, 0x1a0($s1)
/* 00EBE4 8000F034 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00EBE8 8000F038 00001025 */  move        $v0, $zero
/* 00EBEC 8000F03C 46083280 */  add.s       $f10, $f6, $f8
/* 00EBF0 8000F040 460A003C */  c.lt.s      $f0, $f10
/* 00EBF4 8000F044 00000000 */  nop
/* 00EBF8 8000F048 45000003 */  bc1f        .L8000F058
/* 00EBFC 8000F04C 00000000 */   nop
/* 00EC00 8000F050 10000001 */  b           .L8000F058
/* 00EC04 8000F054 24020001 */   addiu      $v0, $zero, 0x1
.L8000F058:
/* 00EC08 8000F058 8FB00014 */  lw          $s0, 0x14($sp)
/* 00EC0C 8000F05C 8FB10018 */  lw          $s1, 0x18($sp)
/* 00EC10 8000F060 03E00008 */  jr          $ra
/* 00EC14 8000F064 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_8000F068 # 99
/* 00EC18 8000F068 3C014000 */  lui         $at, 0x4000
/* 00EC1C 8000F06C 44813000 */  mtc1        $at, $f6
/* 00EC20 8000F070 C484001C */  lwc1        $f4, 0x1c($a0)
/* 00EC24 8000F074 00001025 */  move        $v0, $zero
/* 00EC28 8000F078 46062200 */  add.s       $f8, $f4, $f6
/* 00EC2C 8000F07C 03E00008 */  jr          $ra
/* 00EC30 8000F080 E488001C */   swc1       $f8, 0x1c($a0)

glabel func_8000F084 # 100
/* 00EC34 8000F084 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00EC38 8000F088 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00EC3C 8000F08C 8C820054 */  lw          $v0, 0x54($a0)
/* 00EC40 8000F090 3C01800A */  lui         $at, %hi(D_800A766C)
/* 00EC44 8000F094 8C4E01BC */  lw          $t6, 0x1bc($v0)
/* 00EC48 8000F098 24020001 */  addiu       $v0, $zero, 0x1
/* 00EC4C 8000F09C 11C0000A */  beqz        $t6, .L8000F0C8
/* 00EC50 8000F0A0 00000000 */   nop
/* 00EC54 8000F0A4 44800000 */  mtc1        $zero, $f0
/* 00EC58 8000F0A8 C424766C */  lwc1        $f4, %lo(D_800A766C)($at)
/* 00EC5C 8000F0AC 27A40018 */  addiu       $a0, $sp, 0x18
/* 00EC60 8000F0B0 E7A00018 */  swc1        $f0, 0x18($sp)
/* 00EC64 8000F0B4 E7A4001C */  swc1        $f4, 0x1c($sp)
/* 00EC68 8000F0B8 0C001AAA */  jal         func_80006AA8
/* 00EC6C 8000F0BC E7A00020 */   swc1       $f0, 0x20($sp)
/* 00EC70 8000F0C0 10000001 */  b           .L8000F0C8
/* 00EC74 8000F0C4 00001025 */   move       $v0, $zero
.L8000F0C8:
/* 00EC78 8000F0C8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00EC7C 8000F0CC 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00EC80 8000F0D0 03E00008 */  jr          $ra
/* 00EC84 8000F0D4 00000000 */   nop

glabel func_8000F0D8 # 101
/* 00EC88 8000F0D8 3C013F00 */  lui         $at, 0x3f00
/* 00EC8C 8000F0DC 44813000 */  mtc1        $at, $f6
/* 00EC90 8000F0E0 C484001C */  lwc1        $f4, 0x1c($a0)
/* 00EC94 8000F0E4 00001025 */  move        $v0, $zero
/* 00EC98 8000F0E8 46062200 */  add.s       $f8, $f4, $f6
/* 00EC9C 8000F0EC 03E00008 */  jr          $ra
/* 00ECA0 8000F0F0 E488001C */   swc1       $f8, 0x1c($a0)

glabel func_8000F0F4 # 102
/* 00ECA4 8000F0F4 3C013F00 */  lui         $at, 0x3f00
/* 00ECA8 8000F0F8 44813000 */  mtc1        $at, $f6
/* 00ECAC 8000F0FC C484001C */  lwc1        $f4, 0x1c($a0)
/* 00ECB0 8000F100 00001025 */  move        $v0, $zero
/* 00ECB4 8000F104 46062201 */  sub.s       $f8, $f4, $f6
/* 00ECB8 8000F108 03E00008 */  jr          $ra
/* 00ECBC 8000F10C E488001C */   swc1       $f8, 0x1c($a0)

glabel func_8000F110 # 103
/* 00ECC0 8000F110 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00ECC4 8000F114 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00ECC8 8000F118 3C0541A0 */  lui         $a1, 0x41a0
/* 00ECCC 8000F11C 0C0051BB */  jal         func_800146EC
/* 00ECD0 8000F120 24060001 */   addiu      $a2, $zero, 0x1
/* 00ECD4 8000F124 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00ECD8 8000F128 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00ECDC 8000F12C 00001025 */  move        $v0, $zero
/* 00ECE0 8000F130 03E00008 */  jr          $ra
/* 00ECE4 8000F134 00000000 */   nop

glabel func_8000F138 # 104
/* 00ECE8 8000F138 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00ECEC 8000F13C AFBF0014 */  sw          $ra, 0x14($sp)
/* 00ECF0 8000F140 8C820054 */  lw          $v0, 0x54($a0)
/* 00ECF4 8000F144 00003025 */  move        $a2, $zero
/* 00ECF8 8000F148 C444000C */  lwc1        $f4, 0xc($v0)
/* 00ECFC 8000F14C 46002187 */  neg.s       $f6, $f4
/* 00ED00 8000F150 44053000 */  mfc1        $a1, $f6
/* 00ED04 8000F154 0C0051BB */  jal         func_800146EC
/* 00ED08 8000F158 00000000 */   nop
/* 00ED0C 8000F15C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00ED10 8000F160 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00ED14 8000F164 00001025 */  move        $v0, $zero
/* 00ED18 8000F168 03E00008 */  jr          $ra
/* 00ED1C 8000F16C 00000000 */   nop

glabel func_8000F170 # 105
/* 00ED20 8000F170 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 00ED24 8000F174 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00ED28 8000F178 8C820054 */  lw          $v0, 0x54($a0)
/* 00ED2C 8000F17C C4860048 */  lwc1        $f6, 0x48($a0)
/* 00ED30 8000F180 C48A0004 */  lwc1        $f10, 0x4($a0)
/* 00ED34 8000F184 C44401F0 */  lwc1        $f4, 0x1f0($v0)
/* 00ED38 8000F188 3C013F80 */  lui         $at, 0x3f80
/* 00ED3C 8000F18C 44818000 */  mtc1        $at, $f16
/* 00ED40 8000F190 46062201 */  sub.s       $f8, $f4, $f6
/* 00ED44 8000F194 00803825 */  move        $a3, $a0
/* 00ED48 8000F198 3C014396 */  lui         $at, 0x4396
/* 00ED4C 8000F19C 460A4083 */  div.s       $f2, $f8, $f10
/* 00ED50 8000F1A0 46001305 */  abs.s       $f12, $f2
/* 00ED54 8000F1A4 4610603C */  c.lt.s      $f12, $f16
/* 00ED58 8000F1A8 00000000 */  nop
/* 00ED5C 8000F1AC 45020004 */  bc1fl       .L8000F1C0
/* 00ED60 8000F1B0 44819000 */   mtc1       $at, $f18
/* 00ED64 8000F1B4 1000002B */  b           .L8000F264
/* 00ED68 8000F1B8 24020001 */   addiu      $v0, $zero, 0x1
/* 00ED6C 8000F1BC 44819000 */  mtc1        $at, $f18
.L8000F1C0:
/* 00ED70 8000F1C0 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 00ED74 8000F1C4 C4242C64 */  lwc1        $f4, %lo(D_800B2C64)($at)
/* 00ED78 8000F1C8 44800000 */  mtc1        $zero, $f0
/* 00ED7C 8000F1CC 46049382 */  mul.s       $f14, $f18, $f4
/* 00ED80 8000F1D0 460E603C */  c.lt.s      $f12, $f14
/* 00ED84 8000F1D4 00000000 */  nop
/* 00ED88 8000F1D8 45020003 */  bc1fl       .L8000F1E8
/* 00ED8C 8000F1DC 4602003C */   c.lt.s     $f0, $f2
/* 00ED90 8000F1E0 46006386 */  mov.s       $f14, $f12
/* 00ED94 8000F1E4 4602003C */  c.lt.s      $f0, $f2
.L8000F1E8:
/* 00ED98 8000F1E8 E7A00030 */  swc1        $f0, 0x30($sp)
/* 00ED9C 8000F1EC 45020004 */  bc1fl       .L8000F200
/* 00EDA0 8000F1F0 4600103C */   c.lt.s     $f2, $f0
/* 00EDA4 8000F1F4 10000008 */  b           .L8000F218
/* 00EDA8 8000F1F8 24020001 */   addiu      $v0, $zero, 0x1
/* 00EDAC 8000F1FC 4600103C */  c.lt.s      $f2, $f0
.L8000F200:
/* 00EDB0 8000F200 00001825 */  move        $v1, $zero
/* 00EDB4 8000F204 45000003 */  bc1f        .L8000F214
/* 00EDB8 8000F208 00000000 */   nop
/* 00EDBC 8000F20C 10000001 */  b           .L8000F214
/* 00EDC0 8000F210 2403FFFF */   addiu      $v1, $zero, -0x1
.L8000F214:
/* 00EDC4 8000F214 00601025 */  move        $v0, $v1
.L8000F218:
/* 00EDC8 8000F218 44823000 */  mtc1        $v0, $f6
/* 00EDCC 8000F21C E7A00038 */  swc1        $f0, 0x38($sp)
/* 00EDD0 8000F220 27A40030 */  addiu       $a0, $sp, 0x30
/* 00EDD4 8000F224 46803220 */  cvt.s.w     $f8, $f6
/* 00EDD8 8000F228 AFA70040 */  sw          $a3, 0x40($sp)
/* 00EDDC 8000F22C 460E4282 */  mul.s       $f10, $f8, $f14
/* 00EDE0 8000F230 0C001AAA */  jal         func_80006AA8
/* 00EDE4 8000F234 E7AA0034 */   swc1       $f10, 0x34($sp)
/* 00EDE8 8000F238 3C01800A */  lui         $at, %hi(D_800A7670)
/* 00EDEC 8000F23C C4307670 */  lwc1        $f16, %lo(D_800A7670)($at)
/* 00EDF0 8000F240 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 00EDF4 8000F244 C4322C64 */  lwc1        $f18, %lo(D_800B2C64)($at)
/* 00EDF8 8000F248 8FA40040 */  lw          $a0, 0x40($sp)
/* 00EDFC 8000F24C 24060001 */  addiu       $a2, $zero, 0x1
/* 00EE00 8000F250 46128102 */  mul.s       $f4, $f16, $f18
/* 00EE04 8000F254 44052000 */  mfc1        $a1, $f4
/* 00EE08 8000F258 0C0051BB */  jal         func_800146EC
/* 00EE0C 8000F25C 00000000 */   nop
/* 00EE10 8000F260 00001025 */  move        $v0, $zero
.L8000F264:
/* 00EE14 8000F264 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00EE18 8000F268 27BD0040 */  addiu       $sp, $sp, 0x40
/* 00EE1C 8000F26C 03E00008 */  jr          $ra
/* 00EE20 8000F270 00000000 */   nop

glabel func_8000F274 # 106
/* 00EE24 8000F274 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00EE28 8000F278 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00EE2C 8000F27C 8C820054 */  lw          $v0, 0x54($a0)
/* 00EE30 8000F280 00003025 */  move        $a2, $zero
/* 00EE34 8000F284 C444000C */  lwc1        $f4, 0xc($v0)
/* 00EE38 8000F288 46002187 */  neg.s       $f6, $f4
/* 00EE3C 8000F28C 44053000 */  mfc1        $a1, $f6
/* 00EE40 8000F290 0C0051BB */  jal         func_800146EC
/* 00EE44 8000F294 00000000 */   nop
/* 00EE48 8000F298 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00EE4C 8000F29C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00EE50 8000F2A0 00001025 */  move        $v0, $zero
/* 00EE54 8000F2A4 03E00008 */  jr          $ra
/* 00EE58 8000F2A8 00000000 */   nop

glabel func_8000F2AC # 107
/* 00EE5C 8000F2AC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00EE60 8000F2B0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00EE64 8000F2B4 AFB00018 */  sw          $s0, 0x18($sp)
/* 00EE68 8000F2B8 8C820054 */  lw          $v0, 0x54($a0)
/* 00EE6C 8000F2BC 00808025 */  move        $s0, $a0
/* 00EE70 8000F2C0 00003025 */  move        $a2, $zero
/* 00EE74 8000F2C4 C444000C */  lwc1        $f4, 0xc($v0)
/* 00EE78 8000F2C8 AFA20024 */  sw          $v0, 0x24($sp)
/* 00EE7C 8000F2CC 46002187 */  neg.s       $f6, $f4
/* 00EE80 8000F2D0 44053000 */  mfc1        $a1, $f6
/* 00EE84 8000F2D4 0C0051BB */  jal         func_800146EC
/* 00EE88 8000F2D8 00000000 */   nop
/* 00EE8C 8000F2DC 8FA20024 */  lw          $v0, 0x24($sp)
/* 00EE90 8000F2E0 02002025 */  move        $a0, $s0
/* 00EE94 8000F2E4 24060001 */  addiu       $a2, $zero, 0x1
/* 00EE98 8000F2E8 C4480010 */  lwc1        $f8, 0x10($v0)
/* 00EE9C 8000F2EC 46004287 */  neg.s       $f10, $f8
/* 00EEA0 8000F2F0 44055000 */  mfc1        $a1, $f10
/* 00EEA4 8000F2F4 0C0051BB */  jal         func_800146EC
/* 00EEA8 8000F2F8 00000000 */   nop
/* 00EEAC 8000F2FC 02002025 */  move        $a0, $s0
/* 00EEB0 8000F300 3C05C2B4 */  lui         $a1, 0xc2b4
/* 00EEB4 8000F304 0C0051BB */  jal         func_800146EC
/* 00EEB8 8000F308 24060001 */   addiu      $a2, $zero, 0x1
/* 00EEBC 8000F30C 02002025 */  move        $a0, $s0
/* 00EEC0 8000F310 3C054120 */  lui         $a1, 0x4120
/* 00EEC4 8000F314 0C0051BB */  jal         func_800146EC
/* 00EEC8 8000F318 00003025 */   move       $a2, $zero
/* 00EECC 8000F31C 02002025 */  move        $a0, $s0
/* 00EED0 8000F320 3C0542B4 */  lui         $a1, 0x42b4
/* 00EED4 8000F324 0C0051BB */  jal         func_800146EC
/* 00EED8 8000F328 24060001 */   addiu      $a2, $zero, 0x1
/* 00EEDC 8000F32C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00EEE0 8000F330 8FB00018 */  lw          $s0, 0x18($sp)
/* 00EEE4 8000F334 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00EEE8 8000F338 03E00008 */  jr          $ra
/* 00EEEC 8000F33C 00001025 */   move       $v0, $zero

glabel func_8000F340 # 108
/* 00EEF0 8000F340 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00EEF4 8000F344 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00EEF8 8000F348 AFB00018 */  sw          $s0, 0x18($sp)
/* 00EEFC 8000F34C 8C900054 */  lw          $s0, 0x54($a0)
/* 00EF00 8000F350 0C0470E8 */  jal         func_8011C3A0
/* 00EF04 8000F354 AFA40030 */   sw         $a0, 0x30($sp)
/* 00EF08 8000F358 8FA40030 */  lw          $a0, 0x30($sp)
/* 00EF0C 8000F35C 0C047052 */  jal         func_8011C148
/* 00EF10 8000F360 3C054396 */   lui        $a1, 0x4396
/* 00EF14 8000F364 8FA60030 */  lw          $a2, 0x30($sp)
/* 00EF18 8000F368 C60401EC */  lwc1        $f4, 0x1ec($s0)
/* 00EF1C 8000F36C 44805000 */  mtc1        $zero, $f10
/* 00EF20 8000F370 C4C60044 */  lwc1        $f6, 0x44($a2)
/* 00EF24 8000F374 27A40020 */  addiu       $a0, $sp, 0x20
/* 00EF28 8000F378 E7AA0024 */  swc1        $f10, 0x24($sp)
/* 00EF2C 8000F37C 46062201 */  sub.s       $f8, $f4, $f6
/* 00EF30 8000F380 E7A80020 */  swc1        $f8, 0x20($sp)
/* 00EF34 8000F384 C61001F4 */  lwc1        $f16, 0x1f4($s0)
/* 00EF38 8000F388 C4D2004C */  lwc1        $f18, 0x4c($a2)
/* 00EF3C 8000F38C 46128101 */  sub.s       $f4, $f16, $f18
/* 00EF40 8000F390 0C00E3AC */  jal         func_80038EB0
/* 00EF44 8000F394 E7A40028 */   swc1       $f4, 0x28($sp)
/* 00EF48 8000F398 C6060204 */  lwc1        $f6, 0x204($s0)
/* 00EF4C 8000F39C C60801A0 */  lwc1        $f8, 0x1a0($s0)
/* 00EF50 8000F3A0 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00EF54 8000F3A4 00001025 */  move        $v0, $zero
/* 00EF58 8000F3A8 46083280 */  add.s       $f10, $f6, $f8
/* 00EF5C 8000F3AC 460A003C */  c.lt.s      $f0, $f10
/* 00EF60 8000F3B0 00000000 */  nop
/* 00EF64 8000F3B4 45000003 */  bc1f        .L8000F3C4
/* 00EF68 8000F3B8 00000000 */   nop
/* 00EF6C 8000F3BC 10000001 */  b           .L8000F3C4
/* 00EF70 8000F3C0 24020001 */   addiu      $v0, $zero, 0x1
.L8000F3C4:
/* 00EF74 8000F3C4 8FB00018 */  lw          $s0, 0x18($sp)
/* 00EF78 8000F3C8 03E00008 */  jr          $ra
/* 00EF7C 8000F3CC 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8000F3D0 # 109
/* 00EF80 8000F3D0 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 00EF84 8000F3D4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00EF88 8000F3D8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 00EF8C 8000F3DC AFA40070 */  sw          $a0, 0x70($sp)
/* 00EF90 8000F3E0 0C0470E8 */  jal         func_8011C3A0
/* 00EF94 8000F3E4 AFAE006C */   sw         $t6, 0x6c($sp)
/* 00EF98 8000F3E8 8FA2006C */  lw          $v0, 0x6c($sp)
/* 00EF9C 8000F3EC 8FA30070 */  lw          $v1, 0x70($sp)
/* 00EFA0 8000F3F0 27A40054 */  addiu       $a0, $sp, 0x54
/* 00EFA4 8000F3F4 C44401EC */  lwc1        $f4, 0x1ec($v0)
/* 00EFA8 8000F3F8 C4660044 */  lwc1        $f6, 0x44($v1)
/* 00EFAC 8000F3FC 46062201 */  sub.s       $f8, $f4, $f6
/* 00EFB0 8000F400 E7A80054 */  swc1        $f8, 0x54($sp)
/* 00EFB4 8000F404 C44A01F0 */  lwc1        $f10, 0x1f0($v0)
/* 00EFB8 8000F408 C4640048 */  lwc1        $f4, 0x48($v1)
/* 00EFBC 8000F40C 46045181 */  sub.s       $f6, $f10, $f4
/* 00EFC0 8000F410 E7A60058 */  swc1        $f6, 0x58($sp)
/* 00EFC4 8000F414 C44801F4 */  lwc1        $f8, 0x1f4($v0)
/* 00EFC8 8000F418 C46A004C */  lwc1        $f10, 0x4c($v1)
/* 00EFCC 8000F41C 460A4101 */  sub.s       $f4, $f8, $f10
/* 00EFD0 8000F420 0C00E3AC */  jal         func_80038EB0
/* 00EFD4 8000F424 E7A4005C */   swc1       $f4, 0x5c($sp)
/* 00EFD8 8000F428 8FAF006C */  lw          $t7, 0x6c($sp)
/* 00EFDC 8000F42C 3C013F80 */  lui         $at, 0x3f80
/* 00EFE0 8000F430 44813000 */  mtc1        $at, $f6
/* 00EFE4 8000F434 C5E801A0 */  lwc1        $f8, 0x1a0($t7)
/* 00EFE8 8000F438 C7A40054 */  lwc1        $f4, 0x54($sp)
/* 00EFEC 8000F43C 27A40060 */  addiu       $a0, $sp, 0x60
/* 00EFF0 8000F440 46083280 */  add.s       $f10, $f6, $f8
/* 00EFF4 8000F444 460A003C */  c.lt.s      $f0, $f10
/* 00EFF8 8000F448 00000000 */  nop
/* 00EFFC 8000F44C 45020004 */  bc1fl       .L8000F460
/* 00F000 8000F450 44803000 */   mtc1       $zero, $f6
/* 00F004 8000F454 100000BD */  b           .L8000F74C
/* 00F008 8000F458 24020001 */   addiu      $v0, $zero, 0x1
/* 00F00C 8000F45C 44803000 */  mtc1        $zero, $f6
.L8000F460:
/* 00F010 8000F460 C7A8005C */  lwc1        $f8, 0x5c($sp)
/* 00F014 8000F464 E7A40060 */  swc1        $f4, 0x60($sp)
/* 00F018 8000F468 E7A60064 */  swc1        $f6, 0x64($sp)
/* 00F01C 8000F46C 0C00E3AC */  jal         func_80038EB0
/* 00F020 8000F470 E7A80068 */   swc1       $f8, 0x68($sp)
/* 00F024 8000F474 3C014120 */  lui         $at, 0x4120
/* 00F028 8000F478 44819000 */  mtc1        $at, $f18
/* 00F02C 8000F47C 3C013F00 */  lui         $at, 0x3f00
/* 00F030 8000F480 44815000 */  mtc1        $at, $f10
/* 00F034 8000F484 3C0142C8 */  lui         $at, 0x42c8
/* 00F038 8000F488 44812000 */  mtc1        $at, $f4
/* 00F03C 8000F48C 460A0382 */  mul.s       $f14, $f0, $f10
/* 00F040 8000F490 E7A00048 */  swc1        $f0, 0x48($sp)
/* 00F044 8000F494 460E903C */  c.lt.s      $f18, $f14
/* 00F048 8000F498 00000000 */  nop
/* 00F04C 8000F49C 45020004 */  bc1fl       .L8000F4B0
/* 00F050 8000F4A0 46009086 */   mov.s      $f2, $f18
/* 00F054 8000F4A4 10000002 */  b           .L8000F4B0
/* 00F058 8000F4A8 46007086 */   mov.s      $f2, $f14
/* 00F05C 8000F4AC 46009086 */  mov.s       $f2, $f18
.L8000F4B0:
/* 00F060 8000F4B0 4602203C */  c.lt.s      $f4, $f2
/* 00F064 8000F4B4 3C0142C8 */  lui         $at, 0x42c8
/* 00F068 8000F4B8 27A40054 */  addiu       $a0, $sp, 0x54
/* 00F06C 8000F4BC 45020005 */  bc1fl       .L8000F4D4
/* 00F070 8000F4C0 460E903C */   c.lt.s     $f18, $f14
/* 00F074 8000F4C4 44811000 */  mtc1        $at, $f2
/* 00F078 8000F4C8 10000009 */  b           .L8000F4F0
/* 00F07C 8000F4CC 00000000 */   nop
/* 00F080 8000F4D0 460E903C */  c.lt.s      $f18, $f14
.L8000F4D4:
/* 00F084 8000F4D4 00000000 */  nop
/* 00F088 8000F4D8 45020004 */  bc1fl       .L8000F4EC
/* 00F08C 8000F4DC 46009306 */   mov.s      $f12, $f18
/* 00F090 8000F4E0 10000002 */  b           .L8000F4EC
/* 00F094 8000F4E4 46007306 */   mov.s      $f12, $f14
/* 00F098 8000F4E8 46009306 */  mov.s       $f12, $f18
.L8000F4EC:
/* 00F09C 8000F4EC 46006086 */  mov.s       $f2, $f12
.L8000F4F0:
/* 00F0A0 8000F4F0 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 00F0A4 8000F4F4 C4262C64 */  lwc1        $f6, %lo(D_800B2C64)($at)
/* 00F0A8 8000F4F8 46061302 */  mul.s       $f12, $f2, $f6
/* 00F0AC 8000F4FC 460C003E */  c.le.s      $f0, $f12
/* 00F0B0 8000F500 00000000 */  nop
/* 00F0B4 8000F504 45000016 */  bc1f        .L8000F560
/* 00F0B8 8000F508 00000000 */   nop
/* 00F0BC 8000F50C 44804000 */  mtc1        $zero, $f8
/* 00F0C0 8000F510 8FA40070 */  lw          $a0, 0x70($sp)
/* 00F0C4 8000F514 4600403C */  c.lt.s      $f8, $f0
/* 00F0C8 8000F518 00000000 */  nop
/* 00F0CC 8000F51C 4502000C */  bc1fl       .L8000F550
/* 00F0D0 8000F520 C7A40048 */   lwc1       $f4, 0x48($sp)
/* 00F0D4 8000F524 0C047052 */  jal         func_8011C148
/* 00F0D8 8000F528 3C054434 */   lui        $a1, 0x4434
/* 00F0DC 8000F52C 3C014120 */  lui         $at, 0x4120
/* 00F0E0 8000F530 44819000 */  mtc1        $at, $f18
/* 00F0E4 8000F534 14400005 */  bnez        $v0, .L8000F54C
/* 00F0E8 8000F538 3C01800B */   lui        $at, %hi(D_800B2C64)
/* 00F0EC 8000F53C 44805000 */  mtc1        $zero, $f10
/* 00F0F0 8000F540 C4302C64 */  lwc1        $f16, %lo(D_800B2C64)($at)
/* 00F0F4 8000F544 10000030 */  b           .L8000F608
/* 00F0F8 8000F548 E7AA004C */   swc1       $f10, 0x4c($sp)
.L8000F54C:
/* 00F0FC 8000F54C C7A40048 */  lwc1        $f4, 0x48($sp)
.L8000F550:
/* 00F100 8000F550 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 00F104 8000F554 C4302C64 */  lwc1        $f16, %lo(D_800B2C64)($at)
/* 00F108 8000F558 1000002B */  b           .L8000F608
/* 00F10C 8000F55C E7A4004C */   swc1       $f4, 0x4c($sp)
.L8000F560:
/* 00F110 8000F560 0C002CB9 */  jal         func_8000B2E4
/* 00F114 8000F564 E7AC004C */   swc1       $f12, 0x4c($sp)
/* 00F118 8000F568 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 00F11C 8000F56C C4302C64 */  lwc1        $f16, %lo(D_800B2C64)($at)
/* 00F120 8000F570 3C014396 */  lui         $at, 0x4396
/* 00F124 8000F574 44813000 */  mtc1        $at, $f6
/* 00F128 8000F578 3C0142C8 */  lui         $at, 0x42c8
/* 00F12C 8000F57C 44814000 */  mtc1        $at, $f8
/* 00F130 8000F580 46103302 */  mul.s       $f12, $f6, $f16
/* 00F134 8000F584 C7AA0048 */  lwc1        $f10, 0x48($sp)
/* 00F138 8000F588 3C014333 */  lui         $at, 0x4333
/* 00F13C 8000F58C E7A00044 */  swc1        $f0, 0x44($sp)
/* 00F140 8000F590 460A4102 */  mul.s       $f4, $f8, $f10
/* 00F144 8000F594 44814000 */  mtc1        $at, $f8
/* 00F148 8000F598 8FB8006C */  lw          $t8, 0x6c($sp)
/* 00F14C 8000F59C 3C0640A0 */  lui         $a2, 0x40a0
/* 00F150 8000F5A0 3C074334 */  lui         $a3, 0x4334
/* 00F154 8000F5A4 46102182 */  mul.s       $f6, $f4, $f16
/* 00F158 8000F5A8 46064381 */  sub.s       $f14, $f8, $f6
/* 00F15C 8000F5AC 460E603C */  c.lt.s      $f12, $f14
/* 00F160 8000F5B0 00000000 */  nop
/* 00F164 8000F5B4 45020004 */  bc1fl       .L8000F5C8
/* 00F168 8000F5B8 46006086 */   mov.s      $f2, $f12
/* 00F16C 8000F5BC 10000002 */  b           .L8000F5C8
/* 00F170 8000F5C0 46007086 */   mov.s      $f2, $f14
/* 00F174 8000F5C4 46006086 */  mov.s       $f2, $f12
.L8000F5C8:
/* 00F178 8000F5C8 C70C0010 */  lwc1        $f12, 0x10($t8)
/* 00F17C 8000F5CC E7A20010 */  swc1        $f2, 0x10($sp)
/* 00F180 8000F5D0 0C00EACF */  jal         func_8003AB3C
/* 00F184 8000F5D4 C7AE0044 */   lwc1       $f14, 0x44($sp)
/* 00F188 8000F5D8 8FB9006C */  lw          $t9, 0x6c($sp)
/* 00F18C 8000F5DC 8FA40070 */  lw          $a0, 0x70($sp)
/* 00F190 8000F5E0 24060001 */  addiu       $a2, $zero, 0x1
/* 00F194 8000F5E4 C72A0010 */  lwc1        $f10, 0x10($t9)
/* 00F198 8000F5E8 460A0101 */  sub.s       $f4, $f0, $f10
/* 00F19C 8000F5EC 44052000 */  mfc1        $a1, $f4
/* 00F1A0 8000F5F0 0C0051BB */  jal         func_800146EC
/* 00F1A4 8000F5F4 00000000 */   nop
/* 00F1A8 8000F5F8 3C014120 */  lui         $at, 0x4120
/* 00F1AC 8000F5FC 44819000 */  mtc1        $at, $f18
/* 00F1B0 8000F600 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 00F1B4 8000F604 C4302C64 */  lwc1        $f16, %lo(D_800B2C64)($at)
.L8000F608:
/* 00F1B8 8000F608 44804000 */  mtc1        $zero, $f8
/* 00F1BC 8000F60C C7A60058 */  lwc1        $f6, 0x58($sp)
/* 00F1C0 8000F610 3C013F00 */  lui         $at, 0x3f00
/* 00F1C4 8000F614 C7AE0058 */  lwc1        $f14, 0x58($sp)
/* 00F1C8 8000F618 4606403C */  c.lt.s      $f8, $f6
/* 00F1CC 8000F61C 44814000 */  mtc1        $at, $f8
/* 00F1D0 8000F620 3C013F00 */  lui         $at, 0x3f00
/* 00F1D4 8000F624 C7AA0058 */  lwc1        $f10, 0x58($sp)
/* 00F1D8 8000F628 45020004 */  bc1fl       .L8000F63C
/* 00F1DC 8000F62C 44802000 */   mtc1       $zero, $f4
/* 00F1E0 8000F630 1000000A */  b           .L8000F65C
/* 00F1E4 8000F634 24030001 */   addiu      $v1, $zero, 0x1
/* 00F1E8 8000F638 44802000 */  mtc1        $zero, $f4
.L8000F63C:
/* 00F1EC 8000F63C 00001025 */  move        $v0, $zero
/* 00F1F0 8000F640 4604503C */  c.lt.s      $f10, $f4
/* 00F1F4 8000F644 00000000 */  nop
/* 00F1F8 8000F648 45000003 */  bc1f        .L8000F658
/* 00F1FC 8000F64C 00000000 */   nop
/* 00F200 8000F650 10000001 */  b           .L8000F658
/* 00F204 8000F654 2402FFFF */   addiu      $v0, $zero, -0x1
.L8000F658:
/* 00F208 8000F658 00401825 */  move        $v1, $v0
.L8000F65C:
/* 00F20C 8000F65C 46007385 */  abs.s       $f14, $f14
/* 00F210 8000F660 46087182 */  mul.s       $f6, $f14, $f8
/* 00F214 8000F664 4606903C */  c.lt.s      $f18, $f6
/* 00F218 8000F668 00000000 */  nop
/* 00F21C 8000F66C 45020007 */  bc1fl       .L8000F68C
/* 00F220 8000F670 46009086 */   mov.s      $f2, $f18
/* 00F224 8000F674 44815000 */  mtc1        $at, $f10
/* 00F228 8000F678 00000000 */  nop
/* 00F22C 8000F67C 460A7082 */  mul.s       $f2, $f14, $f10
/* 00F230 8000F680 10000003 */  b           .L8000F690
/* 00F234 8000F684 3C0142C8 */   lui        $at, 0x42c8
/* 00F238 8000F688 46009086 */  mov.s       $f2, $f18
.L8000F68C:
/* 00F23C 8000F68C 3C0142C8 */  lui         $at, 0x42c8
.L8000F690:
/* 00F240 8000F690 44812000 */  mtc1        $at, $f4
/* 00F244 8000F694 3C013F00 */  lui         $at, 0x3f00
/* 00F248 8000F698 4602203C */  c.lt.s      $f4, $f2
/* 00F24C 8000F69C 44832000 */  mtc1        $v1, $f4
/* 00F250 8000F6A0 45020006 */  bc1fl       .L8000F6BC
/* 00F254 8000F6A4 44814000 */   mtc1       $at, $f8
/* 00F258 8000F6A8 3C0142C8 */  lui         $at, 0x42c8
/* 00F25C 8000F6AC 44811000 */  mtc1        $at, $f2
/* 00F260 8000F6B0 10000010 */  b           .L8000F6F4
/* 00F264 8000F6B4 46802220 */   cvt.s.w    $f8, $f4
/* 00F268 8000F6B8 44814000 */  mtc1        $at, $f8
.L8000F6BC:
/* 00F26C 8000F6BC 3C013F00 */  lui         $at, 0x3f00
/* 00F270 8000F6C0 46087182 */  mul.s       $f6, $f14, $f8
/* 00F274 8000F6C4 4606903C */  c.lt.s      $f18, $f6
/* 00F278 8000F6C8 00000000 */  nop
/* 00F27C 8000F6CC 45020007 */  bc1fl       .L8000F6EC
/* 00F280 8000F6D0 46009306 */   mov.s      $f12, $f18
/* 00F284 8000F6D4 44815000 */  mtc1        $at, $f10
/* 00F288 8000F6D8 00000000 */  nop
/* 00F28C 8000F6DC 460A7302 */  mul.s       $f12, $f14, $f10
/* 00F290 8000F6E0 10000003 */  b           .L8000F6F0
/* 00F294 8000F6E4 46006086 */   mov.s      $f2, $f12
/* 00F298 8000F6E8 46009306 */  mov.s       $f12, $f18
.L8000F6EC:
/* 00F29C 8000F6EC 46006086 */  mov.s       $f2, $f12
.L8000F6F0:
/* 00F2A0 8000F6F0 46802220 */  cvt.s.w     $f8, $f4
.L8000F6F4:
/* 00F2A4 8000F6F4 44805000 */  mtc1        $zero, $f10
/* 00F2A8 8000F6F8 46081182 */  mul.s       $f6, $f2, $f8
/* 00F2AC 8000F6FC 00000000 */  nop
/* 00F2B0 8000F700 46103302 */  mul.s       $f12, $f6, $f16
/* 00F2B4 8000F704 46006005 */  abs.s       $f0, $f12
/* 00F2B8 8000F708 4600703E */  c.le.s      $f14, $f0
/* 00F2BC 8000F70C 00000000 */  nop
/* 00F2C0 8000F710 45000002 */  bc1f        .L8000F71C
/* 00F2C4 8000F714 00000000 */   nop
/* 00F2C8 8000F718 C7AC0058 */  lwc1        $f12, 0x58($sp)
.L8000F71C:
/* 00F2CC 8000F71C 8FA20070 */  lw          $v0, 0x70($sp)
/* 00F2D0 8000F720 E7AA0060 */  swc1        $f10, 0x60($sp)
/* 00F2D4 8000F724 C7A6004C */  lwc1        $f6, 0x4c($sp)
/* 00F2D8 8000F728 C4440004 */  lwc1        $f4, 0x4($v0)
/* 00F2DC 8000F72C 27A40060 */  addiu       $a0, $sp, 0x60
/* 00F2E0 8000F730 46046203 */  div.s       $f8, $f12, $f4
/* 00F2E4 8000F734 E7A80064 */  swc1        $f8, 0x64($sp)
/* 00F2E8 8000F738 C44A0008 */  lwc1        $f10, 0x8($v0)
/* 00F2EC 8000F73C 460A3103 */  div.s       $f4, $f6, $f10
/* 00F2F0 8000F740 0C001AAA */  jal         func_80006AA8
/* 00F2F4 8000F744 E7A40068 */   swc1       $f4, 0x68($sp)
/* 00F2F8 8000F748 00001025 */  move        $v0, $zero
.L8000F74C:
/* 00F2FC 8000F74C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00F300 8000F750 27BD0070 */  addiu       $sp, $sp, 0x70
/* 00F304 8000F754 03E00008 */  jr          $ra
/* 00F308 8000F758 00000000 */   nop

glabel func_8000F75C # 110
/* 00F30C 8000F75C 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 00F310 8000F760 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00F314 8000F764 8C830054 */  lw          $v1, 0x54($a0)
/* 00F318 8000F768 AFA40068 */  sw          $a0, 0x68($sp)
/* 00F31C 8000F76C 0C0470E8 */  jal         func_8011C3A0
/* 00F320 8000F770 AFA30064 */   sw         $v1, 0x64($sp)
/* 00F324 8000F774 3C048013 */  lui         $a0, %hi(D_80137EE0)
/* 00F328 8000F778 24847EE0 */  addiu       $a0, $a0, %lo(D_80137EE0)
/* 00F32C 8000F77C 8FA30064 */  lw          $v1, 0x64($sp)
/* 00F330 8000F780 8C820000 */  lw          $v0, 0x0($a0)
/* 00F334 8000F784 C46201EC */  lwc1        $f2, 0x1ec($v1)
/* 00F338 8000F788 C4400008 */  lwc1        $f0, 0x8($v0)
/* 00F33C 8000F78C 4600103C */  c.lt.s      $f2, $f0
/* 00F340 8000F790 00000000 */  nop
/* 00F344 8000F794 45020004 */  bc1fl       .L8000F7A8
/* 00F348 8000F798 C4440014 */   lwc1       $f4, 0x14($v0)
/* 00F34C 8000F79C 10000008 */  b           .L8000F7C0
/* 00F350 8000F7A0 E46001EC */   swc1       $f0, 0x1ec($v1)
/* 00F354 8000F7A4 C4440014 */  lwc1        $f4, 0x14($v0)
.L8000F7A8:
/* 00F358 8000F7A8 46040300 */  add.s       $f12, $f0, $f4
/* 00F35C 8000F7AC 4602603C */  c.lt.s      $f12, $f2
/* 00F360 8000F7B0 00000000 */  nop
/* 00F364 8000F7B4 45020003 */  bc1fl       .L8000F7C4
/* 00F368 8000F7B8 8FA50068 */   lw         $a1, 0x68($sp)
/* 00F36C 8000F7BC E46C01EC */  swc1        $f12, 0x1ec($v1)
.L8000F7C0:
/* 00F370 8000F7C0 8FA50068 */  lw          $a1, 0x68($sp)
.L8000F7C4:
/* 00F374 8000F7C4 C46201F4 */  lwc1        $f2, 0x1f4($v1)
/* 00F378 8000F7C8 C4A60048 */  lwc1        $f6, 0x48($a1)
/* 00F37C 8000F7CC E46601F0 */  swc1        $f6, 0x1f0($v1)
/* 00F380 8000F7D0 8C820000 */  lw          $v0, 0x0($a0)
/* 00F384 8000F7D4 C4400010 */  lwc1        $f0, 0x10($v0)
/* 00F388 8000F7D8 4600103C */  c.lt.s      $f2, $f0
/* 00F38C 8000F7DC 00000000 */  nop
/* 00F390 8000F7E0 45020004 */  bc1fl       .L8000F7F4
/* 00F394 8000F7E4 C448001C */   lwc1       $f8, 0x1c($v0)
/* 00F398 8000F7E8 10000008 */  b           .L8000F80C
/* 00F39C 8000F7EC E46001F4 */   swc1       $f0, 0x1f4($v1)
/* 00F3A0 8000F7F0 C448001C */  lwc1        $f8, 0x1c($v0)
.L8000F7F4:
/* 00F3A4 8000F7F4 46080300 */  add.s       $f12, $f0, $f8
/* 00F3A8 8000F7F8 4602603C */  c.lt.s      $f12, $f2
/* 00F3AC 8000F7FC 00000000 */  nop
/* 00F3B0 8000F800 45020003 */  bc1fl       .L8000F810
/* 00F3B4 8000F804 C46A01EC */   lwc1       $f10, 0x1ec($v1)
/* 00F3B8 8000F808 E46C01F4 */  swc1        $f12, 0x1f4($v1)
.L8000F80C:
/* 00F3BC 8000F80C C46A01EC */  lwc1        $f10, 0x1ec($v1)
.L8000F810:
/* 00F3C0 8000F810 C4A40044 */  lwc1        $f4, 0x44($a1)
/* 00F3C4 8000F814 27A4004C */  addiu       $a0, $sp, 0x4c
/* 00F3C8 8000F818 46045181 */  sub.s       $f6, $f10, $f4
/* 00F3CC 8000F81C E7A6004C */  swc1        $f6, 0x4c($sp)
/* 00F3D0 8000F820 C4AA0048 */  lwc1        $f10, 0x48($a1)
/* 00F3D4 8000F824 C46801F0 */  lwc1        $f8, 0x1f0($v1)
/* 00F3D8 8000F828 460A4101 */  sub.s       $f4, $f8, $f10
/* 00F3DC 8000F82C E7A40050 */  swc1        $f4, 0x50($sp)
/* 00F3E0 8000F830 C4A8004C */  lwc1        $f8, 0x4c($a1)
/* 00F3E4 8000F834 C46601F4 */  lwc1        $f6, 0x1f4($v1)
/* 00F3E8 8000F838 AFA30064 */  sw          $v1, 0x64($sp)
/* 00F3EC 8000F83C 46083281 */  sub.s       $f10, $f6, $f8
/* 00F3F0 8000F840 0C00E3AC */  jal         func_80038EB0
/* 00F3F4 8000F844 E7AA0054 */   swc1       $f10, 0x54($sp)
/* 00F3F8 8000F848 8FA30064 */  lw          $v1, 0x64($sp)
/* 00F3FC 8000F84C 3C013F80 */  lui         $at, 0x3f80
/* 00F400 8000F850 44812000 */  mtc1        $at, $f4
/* 00F404 8000F854 C46601A0 */  lwc1        $f6, 0x1a0($v1)
/* 00F408 8000F858 C7AA004C */  lwc1        $f10, 0x4c($sp)
/* 00F40C 8000F85C 27A40058 */  addiu       $a0, $sp, 0x58
/* 00F410 8000F860 46062200 */  add.s       $f8, $f4, $f6
/* 00F414 8000F864 4608003C */  c.lt.s      $f0, $f8
/* 00F418 8000F868 00000000 */  nop
/* 00F41C 8000F86C 45020004 */  bc1fl       .L8000F880
/* 00F420 8000F870 44802000 */   mtc1       $zero, $f4
/* 00F424 8000F874 10000073 */  b           .L8000FA44
/* 00F428 8000F878 24020001 */   addiu      $v0, $zero, 0x1
/* 00F42C 8000F87C 44802000 */  mtc1        $zero, $f4
.L8000F880:
/* 00F430 8000F880 C7A60054 */  lwc1        $f6, 0x54($sp)
/* 00F434 8000F884 E7AA0058 */  swc1        $f10, 0x58($sp)
/* 00F438 8000F888 AFA30064 */  sw          $v1, 0x64($sp)
/* 00F43C 8000F88C E7A60060 */  swc1        $f6, 0x60($sp)
/* 00F440 8000F890 0C00E3AC */  jal         func_80038EB0
/* 00F444 8000F894 E7A4005C */   swc1       $f4, 0x5c($sp)
/* 00F448 8000F898 3C014120 */  lui         $at, 0x4120
/* 00F44C 8000F89C 44816000 */  mtc1        $at, $f12
/* 00F450 8000F8A0 3C013F00 */  lui         $at, 0x3f00
/* 00F454 8000F8A4 44814000 */  mtc1        $at, $f8
/* 00F458 8000F8A8 8FA30064 */  lw          $v1, 0x64($sp)
/* 00F45C 8000F8AC 46000486 */  mov.s       $f18, $f0
/* 00F460 8000F8B0 46080082 */  mul.s       $f2, $f0, $f8
/* 00F464 8000F8B4 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 00F468 8000F8B8 27A4004C */  addiu       $a0, $sp, 0x4c
/* 00F46C 8000F8BC 4602603C */  c.lt.s      $f12, $f2
/* 00F470 8000F8C0 00000000 */  nop
/* 00F474 8000F8C4 45020004 */  bc1fl       .L8000F8D8
/* 00F478 8000F8C8 46006386 */   mov.s      $f14, $f12
/* 00F47C 8000F8CC 10000002 */  b           .L8000F8D8
/* 00F480 8000F8D0 46001386 */   mov.s      $f14, $f2
/* 00F484 8000F8D4 46006386 */  mov.s       $f14, $f12
.L8000F8D8:
/* 00F488 8000F8D8 460E603C */  c.lt.s      $f12, $f14
/* 00F48C 8000F8DC 00000000 */  nop
/* 00F490 8000F8E0 45020004 */  bc1fl       .L8000F8F4
/* 00F494 8000F8E4 4602603C */   c.lt.s     $f12, $f2
/* 00F498 8000F8E8 10000009 */  b           .L8000F910
/* 00F49C 8000F8EC 46006086 */   mov.s      $f2, $f12
/* 00F4A0 8000F8F0 4602603C */  c.lt.s      $f12, $f2
.L8000F8F4:
/* 00F4A4 8000F8F4 00000000 */  nop
/* 00F4A8 8000F8F8 45020004 */  bc1fl       .L8000F90C
/* 00F4AC 8000F8FC 46006386 */   mov.s      $f14, $f12
/* 00F4B0 8000F900 10000002 */  b           .L8000F90C
/* 00F4B4 8000F904 46001386 */   mov.s      $f14, $f2
/* 00F4B8 8000F908 46006386 */  mov.s       $f14, $f12
.L8000F90C:
/* 00F4BC 8000F90C 46007086 */  mov.s       $f2, $f14
.L8000F910:
/* 00F4C0 8000F910 C42A2C64 */  lwc1        $f10, %lo(D_800B2C64)($at)
/* 00F4C4 8000F914 460A1402 */  mul.s       $f16, $f2, $f10
/* 00F4C8 8000F918 4610003E */  c.le.s      $f0, $f16
/* 00F4CC 8000F91C 00000000 */  nop
/* 00F4D0 8000F920 45020012 */  bc1fl       .L8000F96C
/* 00F4D4 8000F924 AFA30064 */   sw         $v1, 0x64($sp)
/* 00F4D8 8000F928 44802000 */  mtc1        $zero, $f4
/* 00F4DC 8000F92C 8FA40068 */  lw          $a0, 0x68($sp)
/* 00F4E0 8000F930 3C054434 */  lui         $a1, 0x4434
/* 00F4E4 8000F934 4600203C */  c.lt.s      $f4, $f0
/* 00F4E8 8000F938 00000000 */  nop
/* 00F4EC 8000F93C 45000008 */  bc1f        .L8000F960
/* 00F4F0 8000F940 00000000 */   nop
/* 00F4F4 8000F944 0C047052 */  jal         func_8011C148
/* 00F4F8 8000F948 E7B20044 */   swc1       $f18, 0x44($sp)
/* 00F4FC 8000F94C 14400004 */  bnez        $v0, .L8000F960
/* 00F500 8000F950 C7B20044 */   lwc1       $f18, 0x44($sp)
/* 00F504 8000F954 44808000 */  mtc1        $zero, $f16
/* 00F508 8000F958 10000030 */  b           .L8000FA1C
/* 00F50C 8000F95C 44804000 */   mtc1       $zero, $f8
.L8000F960:
/* 00F510 8000F960 1000002D */  b           .L8000FA18
/* 00F514 8000F964 46009406 */   mov.s      $f16, $f18
/* 00F518 8000F968 AFA30064 */  sw          $v1, 0x64($sp)
.L8000F96C:
/* 00F51C 8000F96C E7B00048 */  swc1        $f16, 0x48($sp)
/* 00F520 8000F970 0C002CB9 */  jal         func_8000B2E4
/* 00F524 8000F974 E7B20044 */   swc1       $f18, 0x44($sp)
/* 00F528 8000F978 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 00F52C 8000F97C C4222C64 */  lwc1        $f2, %lo(D_800B2C64)($at)
/* 00F530 8000F980 3C014396 */  lui         $at, 0x4396
/* 00F534 8000F984 44813000 */  mtc1        $at, $f6
/* 00F538 8000F988 3C014333 */  lui         $at, 0x4333
/* 00F53C 8000F98C 44814000 */  mtc1        $at, $f8
/* 00F540 8000F990 3C0142C8 */  lui         $at, 0x42c8
/* 00F544 8000F994 46023302 */  mul.s       $f12, $f6, $f2
/* 00F548 8000F998 C7B20044 */  lwc1        $f18, 0x44($sp)
/* 00F54C 8000F99C 44815000 */  mtc1        $at, $f10
/* 00F550 8000F9A0 8FA30064 */  lw          $v1, 0x64($sp)
/* 00F554 8000F9A4 C7B00048 */  lwc1        $f16, 0x48($sp)
/* 00F558 8000F9A8 46125102 */  mul.s       $f4, $f10, $f18
/* 00F55C 8000F9AC E7A00040 */  swc1        $f0, 0x40($sp)
/* 00F560 8000F9B0 3C0640A0 */  lui         $a2, 0x40a0
/* 00F564 8000F9B4 3C074334 */  lui         $a3, 0x4334
/* 00F568 8000F9B8 46022182 */  mul.s       $f6, $f4, $f2
/* 00F56C 8000F9BC 46064381 */  sub.s       $f14, $f8, $f6
/* 00F570 8000F9C0 460E603C */  c.lt.s      $f12, $f14
/* 00F574 8000F9C4 00000000 */  nop
/* 00F578 8000F9C8 45020004 */  bc1fl       .L8000F9DC
/* 00F57C 8000F9CC 46006086 */   mov.s      $f2, $f12
/* 00F580 8000F9D0 10000002 */  b           .L8000F9DC
/* 00F584 8000F9D4 46007086 */   mov.s      $f2, $f14
/* 00F588 8000F9D8 46006086 */  mov.s       $f2, $f12
.L8000F9DC:
/* 00F58C 8000F9DC C46C0010 */  lwc1        $f12, 0x10($v1)
/* 00F590 8000F9E0 E7B00048 */  swc1        $f16, 0x48($sp)
/* 00F594 8000F9E4 AFA30064 */  sw          $v1, 0x64($sp)
/* 00F598 8000F9E8 E7A20010 */  swc1        $f2, 0x10($sp)
/* 00F59C 8000F9EC 0C00EACF */  jal         func_8003AB3C
/* 00F5A0 8000F9F0 C7AE0040 */   lwc1       $f14, 0x40($sp)
/* 00F5A4 8000F9F4 8FA30064 */  lw          $v1, 0x64($sp)
/* 00F5A8 8000F9F8 8FA40068 */  lw          $a0, 0x68($sp)
/* 00F5AC 8000F9FC 24060001 */  addiu       $a2, $zero, 0x1
/* 00F5B0 8000FA00 C46A0010 */  lwc1        $f10, 0x10($v1)
/* 00F5B4 8000FA04 460A0101 */  sub.s       $f4, $f0, $f10
/* 00F5B8 8000FA08 44052000 */  mfc1        $a1, $f4
/* 00F5BC 8000FA0C 0C0051BB */  jal         func_800146EC
/* 00F5C0 8000FA10 00000000 */   nop
/* 00F5C4 8000FA14 C7B00048 */  lwc1        $f16, 0x48($sp)
.L8000FA18:
/* 00F5C8 8000FA18 44804000 */  mtc1        $zero, $f8
.L8000FA1C:
/* 00F5CC 8000FA1C 44803000 */  mtc1        $zero, $f6
/* 00F5D0 8000FA20 8FAE0068 */  lw          $t6, 0x68($sp)
/* 00F5D4 8000FA24 E7A80058 */  swc1        $f8, 0x58($sp)
/* 00F5D8 8000FA28 E7A6005C */  swc1        $f6, 0x5c($sp)
/* 00F5DC 8000FA2C C5CA0008 */  lwc1        $f10, 0x8($t6)
/* 00F5E0 8000FA30 27A40058 */  addiu       $a0, $sp, 0x58
/* 00F5E4 8000FA34 460A8103 */  div.s       $f4, $f16, $f10
/* 00F5E8 8000FA38 0C001AAA */  jal         func_80006AA8
/* 00F5EC 8000FA3C E7A40060 */   swc1       $f4, 0x60($sp)
/* 00F5F0 8000FA40 00001025 */  move        $v0, $zero
.L8000FA44:
/* 00F5F4 8000FA44 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00F5F8 8000FA48 27BD0068 */  addiu       $sp, $sp, 0x68
/* 00F5FC 8000FA4C 03E00008 */  jr          $ra
/* 00F600 8000FA50 00000000 */   nop

glabel func_8000FA54 # 111
/* 00F604 8000FA54 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 00F608 8000FA58 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00F60C 8000FA5C AFB00018 */  sw          $s0, 0x18($sp)
/* 00F610 8000FA60 8C900054 */  lw          $s0, 0x54($a0)
/* 00F614 8000FA64 0C0470E8 */  jal         func_8011C3A0
/* 00F618 8000FA68 AFA40038 */   sw         $a0, 0x38($sp)
/* 00F61C 8000FA6C 8FA50038 */  lw          $a1, 0x38($sp)
/* 00F620 8000FA70 00003825 */  move        $a3, $zero
/* 00F624 8000FA74 C4AC0018 */  lwc1        $f12, 0x18($a1)
/* 00F628 8000FA78 C4AE001C */  lwc1        $f14, 0x1c($a1)
/* 00F62C 8000FA7C 0C043D2C */  jal         func_8010F4B0
/* 00F630 8000FA80 8CA60020 */   lw         $a2, 0x20($a1)
/* 00F634 8000FA84 8FA50038 */  lw          $a1, 0x38($sp)
/* 00F638 8000FA88 C4A20048 */  lwc1        $f2, 0x48($a1)
/* 00F63C 8000FA8C 4600103C */  c.lt.s      $f2, $f0
/* 00F640 8000FA90 00000000 */  nop
/* 00F644 8000FA94 45020005 */  bc1fl       .L8000FAAC
/* 00F648 8000FA98 46001181 */   sub.s      $f6, $f2, $f0
/* 00F64C 8000FA9C 44802000 */  mtc1        $zero, $f4
/* 00F650 8000FAA0 10000003 */  b           .L8000FAB0
/* 00F654 8000FAA4 E60401F8 */   swc1       $f4, 0x1f8($s0)
/* 00F658 8000FAA8 46001181 */  sub.s       $f6, $f2, $f0
.L8000FAAC:
/* 00F65C 8000FAAC E60601F8 */  swc1        $f6, 0x1f8($s0)
.L8000FAB0:
/* 00F660 8000FAB0 C60801EC */  lwc1        $f8, 0x1ec($s0)
/* 00F664 8000FAB4 C4AA0044 */  lwc1        $f10, 0x44($a1)
/* 00F668 8000FAB8 44809000 */  mtc1        $zero, $f18
/* 00F66C 8000FABC 27A40028 */  addiu       $a0, $sp, 0x28
/* 00F670 8000FAC0 460A4401 */  sub.s       $f16, $f8, $f10
/* 00F674 8000FAC4 E7B2002C */  swc1        $f18, 0x2c($sp)
/* 00F678 8000FAC8 E7B00028 */  swc1        $f16, 0x28($sp)
/* 00F67C 8000FACC C4A6004C */  lwc1        $f6, 0x4c($a1)
/* 00F680 8000FAD0 C60401F4 */  lwc1        $f4, 0x1f4($s0)
/* 00F684 8000FAD4 46062201 */  sub.s       $f8, $f4, $f6
/* 00F688 8000FAD8 0C00E3AC */  jal         func_80038EB0
/* 00F68C 8000FADC E7A80030 */   swc1       $f8, 0x30($sp)
/* 00F690 8000FAE0 C60A0204 */  lwc1        $f10, 0x204($s0)
/* 00F694 8000FAE4 C61001A0 */  lwc1        $f16, 0x1a0($s0)
/* 00F698 8000FAE8 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00F69C 8000FAEC 46105480 */  add.s       $f18, $f10, $f16
/* 00F6A0 8000FAF0 4612003C */  c.lt.s      $f0, $f18
/* 00F6A4 8000FAF4 00000000 */  nop
/* 00F6A8 8000FAF8 45020004 */  bc1fl       .L8000FB0C
/* 00F6AC 8000FAFC 960E01EA */   lhu        $t6, 0x1ea($s0)
/* 00F6B0 8000FB00 10000007 */  b           .L8000FB20
/* 00F6B4 8000FB04 24020001 */   addiu      $v0, $zero, 0x1
/* 00F6B8 8000FB08 960E01EA */  lhu         $t6, 0x1ea($s0)
.L8000FB0C:
/* 00F6BC 8000FB0C 00001025 */  move        $v0, $zero
/* 00F6C0 8000FB10 11C00003 */  beqz        $t6, .L8000FB20
/* 00F6C4 8000FB14 00000000 */   nop
/* 00F6C8 8000FB18 10000001 */  b           .L8000FB20
/* 00F6CC 8000FB1C 24020001 */   addiu      $v0, $zero, 0x1
.L8000FB20:
/* 00F6D0 8000FB20 8FB00018 */  lw          $s0, 0x18($sp)
/* 00F6D4 8000FB24 03E00008 */  jr          $ra
/* 00F6D8 8000FB28 27BD0038 */   addiu      $sp, $sp, 0x38

glabel func_8000FB2C # 112
/* 00F6DC 8000FB2C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00F6E0 8000FB30 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F6E4 8000FB34 0C003EDB */  jal         func_8000FB6C
/* 00F6E8 8000FB38 3C0543FA */   lui        $a1, 0x43fa
/* 00F6EC 8000FB3C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00F6F0 8000FB40 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00F6F4 8000FB44 03E00008 */  jr          $ra
/* 00F6F8 8000FB48 00000000 */   nop

glabel func_8000FB4C # 113
/* 00F6FC 8000FB4C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00F700 8000FB50 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F704 8000FB54 0C003EDB */  jal         func_8000FB6C
/* 00F708 8000FB58 3C054448 */   lui        $a1, 0x4448
/* 00F70C 8000FB5C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00F710 8000FB60 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00F714 8000FB64 03E00008 */  jr          $ra
/* 00F718 8000FB68 00000000 */   nop

glabel func_8000FB6C # 114
/* 00F71C 8000FB6C 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 00F720 8000FB70 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00F724 8000FB74 AFB00018 */  sw          $s0, 0x18($sp)
/* 00F728 8000FB78 00808025 */  move        $s0, $a0
/* 00F72C 8000FB7C 0C0470E8 */  jal         func_8011C3A0
/* 00F730 8000FB80 AFA5003C */   sw         $a1, 0x3c($sp)
/* 00F734 8000FB84 02002025 */  move        $a0, $s0
/* 00F738 8000FB88 0C047052 */  jal         func_8011C148
/* 00F73C 8000FB8C 3C054396 */   lui        $a1, 0x4396
/* 00F740 8000FB90 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 00F744 8000FB94 C4242C64 */  lwc1        $f4, %lo(D_800B2C64)($at)
/* 00F748 8000FB98 C7A6003C */  lwc1        $f6, 0x3c($sp)
/* 00F74C 8000FB9C 44800000 */  mtc1        $zero, $f0
/* 00F750 8000FBA0 27A40028 */  addiu       $a0, $sp, 0x28
/* 00F754 8000FBA4 46062202 */  mul.s       $f8, $f4, $f6
/* 00F758 8000FBA8 E7A00028 */  swc1        $f0, 0x28($sp)
/* 00F75C 8000FBAC E7A0002C */  swc1        $f0, 0x2c($sp)
/* 00F760 8000FBB0 0C001AAA */  jal         func_80006AA8
/* 00F764 8000FBB4 E7A80030 */   swc1       $f8, 0x30($sp)
/* 00F768 8000FBB8 C60C0018 */  lwc1        $f12, 0x18($s0)
/* 00F76C 8000FBBC C60E001C */  lwc1        $f14, 0x1c($s0)
/* 00F770 8000FBC0 8E060020 */  lw          $a2, 0x20($s0)
/* 00F774 8000FBC4 0C043D2C */  jal         func_8010F4B0
/* 00F778 8000FBC8 00003825 */   move       $a3, $zero
/* 00F77C 8000FBCC C60A001C */  lwc1        $f10, 0x1c($s0)
/* 00F780 8000FBD0 3C014120 */  lui         $at, 0x4120
/* 00F784 8000FBD4 44811000 */  mtc1        $at, $f2
/* 00F788 8000FBD8 46005401 */  sub.s       $f16, $f10, $f0
/* 00F78C 8000FBDC 4602803C */  c.lt.s      $f16, $f2
/* 00F790 8000FBE0 00000000 */  nop
/* 00F794 8000FBE4 45020008 */  bc1fl       .L8000FC08
/* 00F798 8000FBE8 8FBF001C */   lw         $ra, 0x1c($sp)
/* 00F79C 8000FBEC 46020100 */  add.s       $f4, $f0, $f2
/* 00F7A0 8000FBF0 C6120018 */  lwc1        $f18, 0x18($s0)
/* 00F7A4 8000FBF4 C6060020 */  lwc1        $f6, 0x20($s0)
/* 00F7A8 8000FBF8 E604001C */  swc1        $f4, 0x1c($s0)
/* 00F7AC 8000FBFC E6120018 */  swc1        $f18, 0x18($s0)
/* 00F7B0 8000FC00 E6060020 */  swc1        $f6, 0x20($s0)
/* 00F7B4 8000FC04 8FBF001C */  lw          $ra, 0x1c($sp)
.L8000FC08:
/* 00F7B8 8000FC08 8FB00018 */  lw          $s0, 0x18($sp)
/* 00F7BC 8000FC0C 27BD0038 */  addiu       $sp, $sp, 0x38
/* 00F7C0 8000FC10 03E00008 */  jr          $ra
/* 00F7C4 8000FC14 00001025 */   move       $v0, $zero

glabel func_8000FC18 # 115
/* 00F7C8 8000FC18 8C830054 */  lw          $v1, 0x54($a0)
/* 00F7CC 8000FC1C 44802000 */  mtc1        $zero, $f4
/* 00F7D0 8000FC20 00001025 */  move        $v0, $zero
/* 00F7D4 8000FC24 E46401F8 */  swc1        $f4, 0x1f8($v1)
/* 00F7D8 8000FC28 C4860000 */  lwc1        $f6, 0x0($a0)
/* 00F7DC 8000FC2C 03E00008 */  jr          $ra
/* 00F7E0 8000FC30 E4860004 */   swc1       $f6, 0x4($a0)

glabel func_8000FC34 # 116
/* 00F7E4 8000FC34 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00F7E8 8000FC38 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F7EC 8000FC3C 8C830054 */  lw          $v1, 0x54($a0)
/* 00F7F0 8000FC40 3C0143B4 */  lui         $at, 0x43b4
/* 00F7F4 8000FC44 44812000 */  mtc1        $at, $f4
/* 00F7F8 8000FC48 C46201F8 */  lwc1        $f2, 0x1f8($v1)
/* 00F7FC 8000FC4C 3C014352 */  lui         $at, 0x4352
/* 00F800 8000FC50 4602203E */  c.le.s      $f4, $f2
/* 00F804 8000FC54 00000000 */  nop
/* 00F808 8000FC58 45020008 */  bc1fl       .L8000FC7C
/* 00F80C 8000FC5C 44815000 */   mtc1       $at, $f10
/* 00F810 8000FC60 C4860000 */  lwc1        $f6, 0x0($a0)
/* 00F814 8000FC64 44804000 */  mtc1        $zero, $f8
/* 00F818 8000FC68 24020001 */  addiu       $v0, $zero, 0x1
/* 00F81C 8000FC6C E4860004 */  swc1        $f6, 0x4($a0)
/* 00F820 8000FC70 1000001A */  b           .L8000FCDC
/* 00F824 8000FC74 E46801F8 */   swc1       $f8, 0x1f8($v1)
/* 00F828 8000FC78 44815000 */  mtc1        $at, $f10
.L8000FC7C:
/* 00F82C 8000FC7C AFA3001C */  sw          $v1, 0x1c($sp)
/* 00F830 8000FC80 AFA40020 */  sw          $a0, 0x20($sp)
/* 00F834 8000FC84 0C00EB2F */  jal         func_8003ACBC
/* 00F838 8000FC88 460A1300 */   add.s      $f12, $f2, $f10
/* 00F83C 8000FC8C 3C01800A */  lui         $at, %hi(D_800A7674)
/* 00F840 8000FC90 C4307674 */  lwc1        $f16, %lo(D_800A7674)($at)
/* 00F844 8000FC94 3C01BF00 */  lui         $at, 0xbf00
/* 00F848 8000FC98 44819000 */  mtc1        $at, $f18
/* 00F84C 8000FC9C 3C013F80 */  lui         $at, 0x3f80
/* 00F850 8000FCA0 44814000 */  mtc1        $at, $f8
/* 00F854 8000FCA4 46120101 */  sub.s       $f4, $f0, $f18
/* 00F858 8000FCA8 8FA40020 */  lw          $a0, 0x20($sp)
/* 00F85C 8000FCAC 8FA3001C */  lw          $v1, 0x1c($sp)
/* 00F860 8000FCB0 3C014220 */  lui         $at, 0x4220
/* 00F864 8000FCB4 46048182 */  mul.s       $f6, $f16, $f4
/* 00F868 8000FCB8 C4920000 */  lwc1        $f18, 0x0($a0)
/* 00F86C 8000FCBC 00001025 */  move        $v0, $zero
/* 00F870 8000FCC0 46064280 */  add.s       $f10, $f8, $f6
/* 00F874 8000FCC4 44814000 */  mtc1        $at, $f8
/* 00F878 8000FCC8 460A9402 */  mul.s       $f16, $f18, $f10
/* 00F87C 8000FCCC E4900004 */  swc1        $f16, 0x4($a0)
/* 00F880 8000FCD0 C46401F8 */  lwc1        $f4, 0x1f8($v1)
/* 00F884 8000FCD4 46082180 */  add.s       $f6, $f4, $f8
/* 00F888 8000FCD8 E46601F8 */  swc1        $f6, 0x1f8($v1)
.L8000FCDC:
/* 00F88C 8000FCDC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00F890 8000FCE0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00F894 8000FCE4 03E00008 */  jr          $ra
/* 00F898 8000FCE8 00000000 */   nop

glabel func_8000FCEC # 117
/* 00F89C 8000FCEC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00F8A0 8000FCF0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F8A4 8000FCF4 8C830054 */  lw          $v1, 0x54($a0)
/* 00F8A8 8000FCF8 3C01800A */  lui         $at, %hi(D_800A7678)
/* 00F8AC 8000FCFC C4307678 */  lwc1        $f16, %lo(D_800A7678)($at)
/* 00F8B0 8000FD00 3C014487 */  lui         $at, 0x4487
/* 00F8B4 8000FD04 44812000 */  mtc1        $at, $f4
/* 00F8B8 8000FD08 C46201F8 */  lwc1        $f2, 0x1f8($v1)
/* 00F8BC 8000FD0C 3C01800A */  lui         $at, %hi(D_800A7680)
/* 00F8C0 8000FD10 4602203E */  c.le.s      $f4, $f2
/* 00F8C4 8000FD14 00000000 */  nop
/* 00F8C8 8000FD18 45000007 */  bc1f        .L8000FD38
/* 00F8CC 8000FD1C 00000000 */   nop
/* 00F8D0 8000FD20 C4860000 */  lwc1        $f6, 0x0($a0)
/* 00F8D4 8000FD24 44804000 */  mtc1        $zero, $f8
/* 00F8D8 8000FD28 24020001 */  addiu       $v0, $zero, 0x1
/* 00F8DC 8000FD2C E4860004 */  swc1        $f6, 0x4($a0)
/* 00F8E0 8000FD30 1000002B */  b           .L8000FDE0
/* 00F8E4 8000FD34 E46801F8 */   swc1       $f8, 0x1f8($v1)
.L8000FD38:
/* 00F8E8 8000FD38 D42A7680 */  ldc1        $f10, %lo(D_800A7680)($at)
/* 00F8EC 8000FD3C 46001021 */  cvt.d.s     $f0, $f2
/* 00F8F0 8000FD40 46001386 */  mov.s       $f14, $f2
/* 00F8F4 8000FD44 4620503E */  c.le.d      $f10, $f0
/* 00F8F8 8000FD48 3C01800A */  lui         $at, %hi(D_800A7688)
/* 00F8FC 8000FD4C 45000002 */  bc1f        .L8000FD58
/* 00F900 8000FD50 00000000 */   nop
/* 00F904 8000FD54 C4307688 */  lwc1        $f16, %lo(D_800A7688)($at)
.L8000FD58:
/* 00F908 8000FD58 3C01800A */  lui         $at, %hi(D_800A7690)
/* 00F90C 8000FD5C D4327690 */  ldc1        $f18, %lo(D_800A7690)($at)
/* 00F910 8000FD60 3C01800A */  lui         $at, %hi(D_800A7698)
/* 00F914 8000FD64 4620903C */  c.lt.d      $f18, $f0
/* 00F918 8000FD68 00000000 */  nop
/* 00F91C 8000FD6C 45020003 */  bc1fl       .L8000FD7C
/* 00F920 8000FD70 3C014352 */   lui        $at, 0x4352
/* 00F924 8000FD74 C4307698 */  lwc1        $f16, %lo(D_800A7698)($at)
/* 00F928 8000FD78 3C014352 */  lui         $at, 0x4352
.L8000FD7C:
/* 00F92C 8000FD7C 44812000 */  mtc1        $at, $f4
/* 00F930 8000FD80 AFA30024 */  sw          $v1, 0x24($sp)
/* 00F934 8000FD84 AFA40028 */  sw          $a0, 0x28($sp)
/* 00F938 8000FD88 E7B00018 */  swc1        $f16, 0x18($sp)
/* 00F93C 8000FD8C 0C00EB2F */  jal         func_8003ACBC
/* 00F940 8000FD90 46047300 */   add.s      $f12, $f14, $f4
/* 00F944 8000FD94 3C013F80 */  lui         $at, 0x3f80
/* 00F948 8000FD98 44813000 */  mtc1        $at, $f6
/* 00F94C 8000FD9C 3C01BF00 */  lui         $at, 0xbf00
/* 00F950 8000FDA0 44814000 */  mtc1        $at, $f8
/* 00F954 8000FDA4 C7B00018 */  lwc1        $f16, 0x18($sp)
/* 00F958 8000FDA8 8FA40028 */  lw          $a0, 0x28($sp)
/* 00F95C 8000FDAC 46080281 */  sub.s       $f10, $f0, $f8
/* 00F960 8000FDB0 8FA30024 */  lw          $v1, 0x24($sp)
/* 00F964 8000FDB4 C4880000 */  lwc1        $f8, 0x0($a0)
/* 00F968 8000FDB8 3C014220 */  lui         $at, 0x4220
/* 00F96C 8000FDBC 460A8482 */  mul.s       $f18, $f16, $f10
/* 00F970 8000FDC0 00001025 */  move        $v0, $zero
/* 00F974 8000FDC4 46123100 */  add.s       $f4, $f6, $f18
/* 00F978 8000FDC8 44819000 */  mtc1        $at, $f18
/* 00F97C 8000FDCC 46044282 */  mul.s       $f10, $f8, $f4
/* 00F980 8000FDD0 E48A0004 */  swc1        $f10, 0x4($a0)
/* 00F984 8000FDD4 C46601F8 */  lwc1        $f6, 0x1f8($v1)
/* 00F988 8000FDD8 46123200 */  add.s       $f8, $f6, $f18
/* 00F98C 8000FDDC E46801F8 */  swc1        $f8, 0x1f8($v1)
.L8000FDE0:
/* 00F990 8000FDE0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00F994 8000FDE4 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00F998 8000FDE8 03E00008 */  jr          $ra
/* 00F99C 8000FDEC 00000000 */   nop

glabel func_8000FDF0 # 118
/* 00F9A0 8000FDF0 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 00F9A4 8000FDF4 AFA5004C */  sw          $a1, 0x4c($sp)
/* 00F9A8 8000FDF8 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 00F9AC 8000FDFC C4242C64 */  lwc1        $f4, %lo(D_800B2C64)($at)
/* 00F9B0 8000FE00 C7A6004C */  lwc1        $f6, 0x4c($sp)
/* 00F9B4 8000FE04 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F9B8 8000FE08 AFA40048 */  sw          $a0, 0x48($sp)
/* 00F9BC 8000FE0C 46062202 */  mul.s       $f8, $f4, $f6
/* 00F9C0 8000FE10 0C002671 */  jal         func_800099C4
/* 00F9C4 8000FE14 E7A80034 */   swc1       $f8, 0x34($sp)
/* 00F9C8 8000FE18 00402025 */  move        $a0, $v0
/* 00F9CC 8000FE1C 0C0143B2 */  jal         func_80050EC8
/* 00F9D0 8000FE20 00602825 */   move       $a1, $v1
/* 00F9D4 8000FE24 3C0143B4 */  lui         $at, 0x43b4
/* 00F9D8 8000FE28 44811000 */  mtc1        $at, $f2
/* 00F9DC 8000FE2C 3C01800A */  lui         $at, %hi(D_800A769C)
/* 00F9E0 8000FE30 C432769C */  lwc1        $f18, %lo(D_800A769C)($at)
/* 00F9E4 8000FE34 46020282 */  mul.s       $f10, $f0, $f2
/* 00F9E8 8000FE38 3C01800A */  lui         $at, %hi(D_800A76A0)
/* 00F9EC 8000FE3C C42876A0 */  lwc1        $f8, %lo(D_800A76A0)($at)
/* 00F9F0 8000FE40 C7A6004C */  lwc1        $f6, 0x4c($sp)
/* 00F9F4 8000FE44 44808000 */  mtc1        $zero, $f16
/* 00F9F8 8000FE48 46125102 */  mul.s       $f4, $f10, $f18
/* 00F9FC 8000FE4C 00000000 */  nop
/* 00FA00 8000FE50 46083282 */  mul.s       $f10, $f6, $f8
/* 00FA04 8000FE54 00000000 */  nop
/* 00FA08 8000FE58 460A2302 */  mul.s       $f12, $f4, $f10
/* 00FA0C 8000FE5C 4610603C */  c.lt.s      $f12, $f16
/* 00FA10 8000FE60 00000000 */  nop
/* 00FA14 8000FE64 45000006 */  bc1f        .L8000FE80
/* 00FA18 8000FE68 00000000 */   nop
/* 00FA1C 8000FE6C 46026300 */  add.s       $f12, $f12, $f2
.L8000FE70:
/* 00FA20 8000FE70 4610603C */  c.lt.s      $f12, $f16
/* 00FA24 8000FE74 00000000 */  nop
/* 00FA28 8000FE78 4503FFFD */  bc1tl       .L8000FE70
/* 00FA2C 8000FE7C 46026300 */   add.s      $f12, $f12, $f2
.L8000FE80:
/* 00FA30 8000FE80 460C103E */  c.le.s      $f2, $f12
/* 00FA34 8000FE84 00000000 */  nop
/* 00FA38 8000FE88 45000006 */  bc1f        .L8000FEA4
/* 00FA3C 8000FE8C 00000000 */   nop
/* 00FA40 8000FE90 46026301 */  sub.s       $f12, $f12, $f2
.L8000FE94:
/* 00FA44 8000FE94 460C103E */  c.le.s      $f2, $f12
/* 00FA48 8000FE98 00000000 */  nop
/* 00FA4C 8000FE9C 4503FFFD */  bc1tl       .L8000FE94
/* 00FA50 8000FEA0 46026301 */   sub.s      $f12, $f12, $f2
.L8000FEA4:
/* 00FA54 8000FEA4 0C00EB2F */  jal         func_8003ACBC
/* 00FA58 8000FEA8 E7AC0030 */   swc1       $f12, 0x30($sp)
/* 00FA5C 8000FEAC 3C01800A */  lui         $at, %hi(D_800A76A8)
/* 00FA60 8000FEB0 D43276A8 */  ldc1        $f18, %lo(D_800A76A8)($at)
/* 00FA64 8000FEB4 460001A1 */  cvt.d.s     $f6, $f0
/* 00FA68 8000FEB8 8FA20048 */  lw          $v0, 0x48($sp)
/* 00FA6C 8000FEBC 46269202 */  mul.d       $f8, $f18, $f6
/* 00FA70 8000FEC0 3C013FF0 */  lui         $at, 0x3ff0
/* 00FA74 8000FEC4 44812800 */  mtc1        $at, $f5
/* 00FA78 8000FEC8 44802000 */  mtc1        $zero, $f4
/* 00FA7C 8000FECC C4520000 */  lwc1        $f18, 0x0($v0)
/* 00FA80 8000FED0 C7AC0030 */  lwc1        $f12, 0x30($sp)
/* 00FA84 8000FED4 460091A1 */  cvt.d.s     $f6, $f18
/* 00FA88 8000FED8 46282280 */  add.d       $f10, $f4, $f8
/* 00FA8C 8000FEDC 462A3102 */  mul.d       $f4, $f6, $f10
/* 00FA90 8000FEE0 46202220 */  cvt.s.d     $f8, $f4
/* 00FA94 8000FEE4 0C00EB2F */  jal         func_8003ACBC
/* 00FA98 8000FEE8 E4480004 */   swc1       $f8, 0x4($v0)
/* 00FA9C 8000FEEC 3C01800A */  lui         $at, %hi(D_800A76B0)
/* 00FAA0 8000FEF0 D43276B0 */  ldc1        $f18, %lo(D_800A76B0)($at)
/* 00FAA4 8000FEF4 460001A1 */  cvt.d.s     $f6, $f0
/* 00FAA8 8000FEF8 8FAE0048 */  lw          $t6, 0x48($sp)
/* 00FAAC 8000FEFC 46269282 */  mul.d       $f10, $f18, $f6
/* 00FAB0 8000FF00 3C013FF0 */  lui         $at, 0x3ff0
/* 00FAB4 8000FF04 44812800 */  mtc1        $at, $f5
/* 00FAB8 8000FF08 44802000 */  mtc1        $zero, $f4
/* 00FABC 8000FF0C C5C20000 */  lwc1        $f2, 0x0($t6)
/* 00FAC0 8000FF10 2404000A */  addiu       $a0, $zero, 0xa
/* 00FAC4 8000FF14 460014A1 */  cvt.d.s     $f18, $f2
/* 00FAC8 8000FF18 462A2200 */  add.d       $f8, $f4, $f10
/* 00FACC 8000FF1C 46289182 */  mul.d       $f6, $f18, $f8
/* 00FAD0 8000FF20 46203320 */  cvt.s.d     $f12, $f6
/* 00FAD4 8000FF24 46026283 */  div.s       $f10, $f12, $f2
/* 00FAD8 8000FF28 E5CC0008 */  swc1        $f12, 0x8($t6)
/* 00FADC 8000FF2C C7A40034 */  lwc1        $f4, 0x34($sp)
/* 00FAE0 8000FF30 460A2482 */  mul.s       $f18, $f4, $f10
/* 00FAE4 8000FF34 0C00E500 */  jal         func_80039400
/* 00FAE8 8000FF38 E7B20034 */   swc1       $f18, 0x34($sp)
/* 00FAEC 8000FF3C 244FFFFC */  addiu       $t7, $v0, -0x4
/* 00FAF0 8000FF40 448F4000 */  mtc1        $t7, $f8
/* 00FAF4 8000FF44 44808000 */  mtc1        $zero, $f16
/* 00FAF8 8000FF48 C7A40034 */  lwc1        $f4, 0x34($sp)
/* 00FAFC 8000FF4C 468041A0 */  cvt.s.w     $f6, $f8
/* 00FB00 8000FF50 27A40038 */  addiu       $a0, $sp, 0x38
/* 00FB04 8000FF54 E7A40040 */  swc1        $f4, 0x40($sp)
/* 00FB08 8000FF58 E7B0003C */  swc1        $f16, 0x3c($sp)
/* 00FB0C 8000FF5C 0C001AAA */  jal         func_80006AA8
/* 00FB10 8000FF60 E7A60038 */   swc1       $f6, 0x38($sp)
/* 00FB14 8000FF64 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00FB18 8000FF68 27BD0048 */  addiu       $sp, $sp, 0x48
/* 00FB1C 8000FF6C 00001025 */  move        $v0, $zero
/* 00FB20 8000FF70 03E00008 */  jr          $ra
/* 00FB24 8000FF74 00000000 */   nop

glabel func_8000FF78 # 119
/* 00FB28 8000FF78 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00FB2C 8000FF7C AFBF0014 */  sw          $ra, 0x14($sp)
/* 00FB30 8000FF80 0C003F7C */  jal         func_8000FDF0
/* 00FB34 8000FF84 3C054316 */   lui        $a1, 0x4316
/* 00FB38 8000FF88 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00FB3C 8000FF8C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00FB40 8000FF90 03E00008 */  jr          $ra
/* 00FB44 8000FF94 00000000 */   nop

glabel func_8000FF98 # 120
/* 00FB48 8000FF98 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 00FB4C 8000FF9C AFBF001C */  sw          $ra, 0x1c($sp)
/* 00FB50 8000FFA0 AFB10018 */  sw          $s1, 0x18($sp)
/* 00FB54 8000FFA4 AFB00014 */  sw          $s0, 0x14($sp)
/* 00FB58 8000FFA8 00808825 */  move        $s1, $a0
/* 00FB5C 8000FFAC 0C0470E8 */  jal         func_8011C3A0
/* 00FB60 8000FFB0 8C900054 */   lw         $s0, 0x54($a0)
/* 00FB64 8000FFB4 02202025 */  move        $a0, $s1
/* 00FB68 8000FFB8 0C047052 */  jal         func_8011C148
/* 00FB6C 8000FFBC 3C054396 */   lui        $a1, 0x4396
/* 00FB70 8000FFC0 C60401EC */  lwc1        $f4, 0x1ec($s0)
/* 00FB74 8000FFC4 C6260044 */  lwc1        $f6, 0x44($s1)
/* 00FB78 8000FFC8 44805000 */  mtc1        $zero, $f10
/* 00FB7C 8000FFCC 27A40024 */  addiu       $a0, $sp, 0x24
/* 00FB80 8000FFD0 46062201 */  sub.s       $f8, $f4, $f6
/* 00FB84 8000FFD4 E7AA0028 */  swc1        $f10, 0x28($sp)
/* 00FB88 8000FFD8 E7A80024 */  swc1        $f8, 0x24($sp)
/* 00FB8C 8000FFDC C632004C */  lwc1        $f18, 0x4c($s1)
/* 00FB90 8000FFE0 C61001F4 */  lwc1        $f16, 0x1f4($s0)
/* 00FB94 8000FFE4 46128101 */  sub.s       $f4, $f16, $f18
/* 00FB98 8000FFE8 0C00E3AC */  jal         func_80038EB0
/* 00FB9C 8000FFEC E7A4002C */   swc1       $f4, 0x2c($sp)
/* 00FBA0 8000FFF0 C6060204 */  lwc1        $f6, 0x204($s0)
/* 00FBA4 8000FFF4 C60801A0 */  lwc1        $f8, 0x1a0($s0)
/* 00FBA8 8000FFF8 46083280 */  add.s       $f10, $f6, $f8
/* 00FBAC 8000FFFC 460A003C */  c.lt.s      $f0, $f10
/* 00FBB0 80010000 00000000 */  nop
/* 00FBB4 80010004 45010004 */  bc1t        .L80010018
/* 00FBB8 80010008 00000000 */   nop
/* 00FBBC 8001000C 960E01EA */  lhu         $t6, 0x1ea($s0)
/* 00FBC0 80010010 11C00003 */  beqz        $t6, .L80010020
/* 00FBC4 80010014 00000000 */   nop
.L80010018:
/* 00FBC8 80010018 10000003 */  b           .L80010028
/* 00FBCC 8001001C 24020001 */   addiu      $v0, $zero, 0x1
.L80010020:
/* 00FBD0 80010020 0C003FDE */  jal         func_8000FF78
/* 00FBD4 80010024 02202025 */   move       $a0, $s1
.L80010028:
/* 00FBD8 80010028 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00FBDC 8001002C 8FB00014 */  lw          $s0, 0x14($sp)
/* 00FBE0 80010030 8FB10018 */  lw          $s1, 0x18($sp)
/* 00FBE4 80010034 03E00008 */  jr          $ra
/* 00FBE8 80010038 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_8001003C # 121
/* 00FBEC 8001003C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00FBF0 80010040 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00FBF4 80010044 0C003F7C */  jal         func_8000FDF0
/* 00FBF8 80010048 3C054396 */   lui        $a1, 0x4396
/* 00FBFC 8001004C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00FC00 80010050 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00FC04 80010054 03E00008 */  jr          $ra
/* 00FC08 80010058 00000000 */   nop

glabel func_8001005C # 122
/* 00FC0C 8001005C 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 00FC10 80010060 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00FC14 80010064 AFB10018 */  sw          $s1, 0x18($sp)
/* 00FC18 80010068 AFB00014 */  sw          $s0, 0x14($sp)
/* 00FC1C 8001006C 00808825 */  move        $s1, $a0
/* 00FC20 80010070 0C0470E8 */  jal         func_8011C3A0
/* 00FC24 80010074 8C900054 */   lw         $s0, 0x54($a0)
/* 00FC28 80010078 02202025 */  move        $a0, $s1
/* 00FC2C 8001007C 0C047052 */  jal         func_8011C148
/* 00FC30 80010080 3C054396 */   lui        $a1, 0x4396
/* 00FC34 80010084 C60401EC */  lwc1        $f4, 0x1ec($s0)
/* 00FC38 80010088 C6260044 */  lwc1        $f6, 0x44($s1)
/* 00FC3C 8001008C 44805000 */  mtc1        $zero, $f10
/* 00FC40 80010090 27A40024 */  addiu       $a0, $sp, 0x24
/* 00FC44 80010094 46062201 */  sub.s       $f8, $f4, $f6
/* 00FC48 80010098 E7AA0028 */  swc1        $f10, 0x28($sp)
/* 00FC4C 8001009C E7A80024 */  swc1        $f8, 0x24($sp)
/* 00FC50 800100A0 C632004C */  lwc1        $f18, 0x4c($s1)
/* 00FC54 800100A4 C61001F4 */  lwc1        $f16, 0x1f4($s0)
/* 00FC58 800100A8 46128101 */  sub.s       $f4, $f16, $f18
/* 00FC5C 800100AC 0C00E3AC */  jal         func_80038EB0
/* 00FC60 800100B0 E7A4002C */   swc1       $f4, 0x2c($sp)
/* 00FC64 800100B4 C6060204 */  lwc1        $f6, 0x204($s0)
/* 00FC68 800100B8 4606003C */  c.lt.s      $f0, $f6
/* 00FC6C 800100BC 00000000 */  nop
/* 00FC70 800100C0 45010004 */  bc1t        .L800100D4
/* 00FC74 800100C4 00000000 */   nop
/* 00FC78 800100C8 960E01EA */  lhu         $t6, 0x1ea($s0)
/* 00FC7C 800100CC 11C00003 */  beqz        $t6, .L800100DC
/* 00FC80 800100D0 00000000 */   nop
.L800100D4:
/* 00FC84 800100D4 10000003 */  b           .L800100E4
/* 00FC88 800100D8 24020001 */   addiu      $v0, $zero, 0x1
.L800100DC:
/* 00FC8C 800100DC 0C00400F */  jal         func_8001003C
/* 00FC90 800100E0 02202025 */   move       $a0, $s1
.L800100E4:
/* 00FC94 800100E4 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00FC98 800100E8 8FB00014 */  lw          $s0, 0x14($sp)
/* 00FC9C 800100EC 8FB10018 */  lw          $s1, 0x18($sp)
/* 00FCA0 800100F0 03E00008 */  jr          $ra
/* 00FCA4 800100F4 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_800100F8 # 123
/* 00FCA8 800100F8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00FCAC 800100FC AFBF0014 */  sw          $ra, 0x14($sp)
/* 00FCB0 80010100 0C003F7C */  jal         func_8000FDF0
/* 00FCB4 80010104 3C054461 */   lui        $a1, 0x4461
/* 00FCB8 80010108 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00FCBC 8001010C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00FCC0 80010110 03E00008 */  jr          $ra
/* 00FCC4 80010114 00000000 */   nop

glabel func_80010118 # 124
/* 00FCC8 80010118 C4800000 */  lwc1        $f0, 0x0($a0)
/* 00FCCC 8001011C 00001025 */  move        $v0, $zero
/* 00FCD0 80010120 E4800004 */  swc1        $f0, 0x4($a0)
/* 00FCD4 80010124 03E00008 */  jr          $ra
/* 00FCD8 80010128 E4800008 */   swc1       $f0, 0x8($a0)

glabel func_8001012C # 125
/* 00FCDC 8001012C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00FCE0 80010130 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00FCE4 80010134 8C820054 */  lw          $v0, 0x54($a0)
/* 00FCE8 80010138 AFA40030 */  sw          $a0, 0x30($sp)
/* 00FCEC 8001013C 0C0470E8 */  jal         func_8011C3A0
/* 00FCF0 80010140 AFA2002C */   sw         $v0, 0x2c($sp)
/* 00FCF4 80010144 8FA2002C */  lw          $v0, 0x2c($sp)
/* 00FCF8 80010148 8FA50030 */  lw          $a1, 0x30($sp)
/* 00FCFC 8001014C 44805000 */  mtc1        $zero, $f10
/* 00FD00 80010150 C44401EC */  lwc1        $f4, 0x1ec($v0)
/* 00FD04 80010154 C4A60044 */  lwc1        $f6, 0x44($a1)
/* 00FD08 80010158 E7AA0024 */  swc1        $f10, 0x24($sp)
/* 00FD0C 8001015C 27A40020 */  addiu       $a0, $sp, 0x20
/* 00FD10 80010160 46062201 */  sub.s       $f8, $f4, $f6
/* 00FD14 80010164 E7A80020 */  swc1        $f8, 0x20($sp)
/* 00FD18 80010168 C45001F4 */  lwc1        $f16, 0x1f4($v0)
/* 00FD1C 8001016C C4B2004C */  lwc1        $f18, 0x4c($a1)
/* 00FD20 80010170 46128101 */  sub.s       $f4, $f16, $f18
/* 00FD24 80010174 0C00E3AC */  jal         func_80038EB0
/* 00FD28 80010178 E7A40028 */   swc1       $f4, 0x28($sp)
/* 00FD2C 8001017C 8FA2002C */  lw          $v0, 0x2c($sp)
/* 00FD30 80010180 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00FD34 80010184 C4460204 */  lwc1        $f6, 0x204($v0)
/* 00FD38 80010188 C44801A0 */  lwc1        $f8, 0x1a0($v0)
/* 00FD3C 8001018C 46083280 */  add.s       $f10, $f6, $f8
/* 00FD40 80010190 460A003C */  c.lt.s      $f0, $f10
/* 00FD44 80010194 00000000 */  nop
/* 00FD48 80010198 45020004 */  bc1fl       .L800101AC
/* 00FD4C 8001019C 944E01EA */   lhu        $t6, 0x1ea($v0)
/* 00FD50 800101A0 10000007 */  b           .L800101C0
/* 00FD54 800101A4 24020001 */   addiu      $v0, $zero, 0x1
/* 00FD58 800101A8 944E01EA */  lhu         $t6, 0x1ea($v0)
.L800101AC:
/* 00FD5C 800101AC 00001025 */  move        $v0, $zero
/* 00FD60 800101B0 11C00003 */  beqz        $t6, .L800101C0
/* 00FD64 800101B4 00000000 */   nop
/* 00FD68 800101B8 10000001 */  b           .L800101C0
/* 00FD6C 800101BC 24020001 */   addiu      $v0, $zero, 0x1
.L800101C0:
/* 00FD70 800101C0 03E00008 */  jr          $ra
/* 00FD74 800101C4 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_800101C8 # 126
/* 00FD78 800101C8 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 00FD7C 800101CC AFBF0014 */  sw          $ra, 0x14($sp)
/* 00FD80 800101D0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 00FD84 800101D4 AFA40038 */  sw          $a0, 0x38($sp)
/* 00FD88 800101D8 0C0470E8 */  jal         func_8011C3A0
/* 00FD8C 800101DC AFAE0034 */   sw         $t6, 0x34($sp)
/* 00FD90 800101E0 8FA40038 */  lw          $a0, 0x38($sp)
/* 00FD94 800101E4 0C047052 */  jal         func_8011C148
/* 00FD98 800101E8 3C054396 */   lui        $a1, 0x4396
/* 00FD9C 800101EC 8FA20034 */  lw          $v0, 0x34($sp)
/* 00FDA0 800101F0 8FA60038 */  lw          $a2, 0x38($sp)
/* 00FDA4 800101F4 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 00FDA8 800101F8 C44401EC */  lwc1        $f4, 0x1ec($v0)
/* 00FDAC 800101FC C4C60044 */  lwc1        $f6, 0x44($a2)
/* 00FDB0 80010200 44800000 */  mtc1        $zero, $f0
/* 00FDB4 80010204 27A40028 */  addiu       $a0, $sp, 0x28
/* 00FDB8 80010208 46062201 */  sub.s       $f8, $f4, $f6
/* 00FDBC 8001020C C4242C64 */  lwc1        $f4, %lo(D_800B2C64)($at)
/* 00FDC0 80010210 3C0143FA */  lui         $at, 0x43fa
/* 00FDC4 80010214 44813000 */  mtc1        $at, $f6
/* 00FDC8 80010218 E7A8001C */  swc1        $f8, 0x1c($sp)
/* 00FDCC 8001021C E7A00020 */  swc1        $f0, 0x20($sp)
/* 00FDD0 80010220 46062202 */  mul.s       $f8, $f4, $f6
/* 00FDD4 80010224 C44A01F4 */  lwc1        $f10, 0x1f4($v0)
/* 00FDD8 80010228 C4D0004C */  lwc1        $f16, 0x4c($a2)
/* 00FDDC 8001022C E7A0002C */  swc1        $f0, 0x2c($sp)
/* 00FDE0 80010230 E7A00028 */  swc1        $f0, 0x28($sp)
/* 00FDE4 80010234 46105481 */  sub.s       $f18, $f10, $f16
/* 00FDE8 80010238 E7A80030 */  swc1        $f8, 0x30($sp)
/* 00FDEC 8001023C 0C001AAA */  jal         func_80006AA8
/* 00FDF0 80010240 E7B20024 */   swc1       $f18, 0x24($sp)
/* 00FDF4 80010244 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00FDF8 80010248 27BD0038 */  addiu       $sp, $sp, 0x38
/* 00FDFC 8001024C 00001025 */  move        $v0, $zero
/* 00FE00 80010250 03E00008 */  jr          $ra
/* 00FE04 80010254 00000000 */   nop

glabel func_80010258 # 127
/* 00FE08 80010258 27BDFF30 */  addiu       $sp, $sp, -0xd0
/* 00FE0C 8001025C AFBF005C */  sw          $ra, 0x5c($sp)
/* 00FE10 80010260 AFB00058 */  sw          $s0, 0x58($sp)
/* 00FE14 80010264 F7B40050 */  sdc1        $f20, 0x50($sp)
/* 00FE18 80010268 8C8E0054 */  lw          $t6, 0x54($a0)
/* 00FE1C 8001026C 00808025 */  move        $s0, $a0
/* 00FE20 80010270 3C048007 */  lui         $a0, %hi(D_80071E88)
/* 00FE24 80010274 8C841E88 */  lw          $a0, %lo(D_80071E88)($a0)
/* 00FE28 80010278 24050035 */  addiu       $a1, $zero, 0x35
/* 00FE2C 8001027C 0C0052D5 */  jal         func_80014B54
/* 00FE30 80010280 AFAE00CC */   sw         $t6, 0xcc($sp)
/* 00FE34 80010284 C4440044 */  lwc1        $f4, 0x44($v0)
/* 00FE38 80010288 00401825 */  move        $v1, $v0
/* 00FE3C 8001028C E6040018 */  swc1        $f4, 0x18($s0)
/* 00FE40 80010290 C4460048 */  lwc1        $f6, 0x48($v0)
/* 00FE44 80010294 E606001C */  swc1        $f6, 0x1c($s0)
/* 00FE48 80010298 C448004C */  lwc1        $f8, 0x4c($v0)
/* 00FE4C 8001029C E6080020 */  swc1        $f8, 0x20($s0)
/* 00FE50 800102A0 944F0036 */  lhu         $t7, 0x36($v0)
/* 00FE54 800102A4 00001025 */  move        $v0, $zero
/* 00FE58 800102A8 31F88000 */  andi        $t8, $t7, 0x8000
/* 00FE5C 800102AC 13000003 */  beqz        $t8, .L800102BC
/* 00FE60 800102B0 00000000 */   nop
/* 00FE64 800102B4 10000001 */  b           .L800102BC
/* 00FE68 800102B8 24020001 */   addiu      $v0, $zero, 0x1
.L800102BC:
/* 00FE6C 800102BC 38590001 */  xori        $t9, $v0, 0x1
/* 00FE70 800102C0 00194880 */  sll         $t1, $t9, 2
/* 00FE74 800102C4 00695021 */  addu        $t2, $v1, $t1
/* 00FE78 800102C8 8D4B003C */  lw          $t3, 0x3c($t2)
/* 00FE7C 800102CC 03A07025 */  move        $t6, $sp
/* 00FE80 800102D0 256D003C */  addiu       $t5, $t3, 0x3c
.L800102D4:
/* 00FE84 800102D4 8D610000 */  lw          $at, 0x0($t3)
/* 00FE88 800102D8 256B000C */  addiu       $t3, $t3, 0xc
/* 00FE8C 800102DC 25CE000C */  addiu       $t6, $t6, 0xc
/* 00FE90 800102E0 ADC1FFF4 */  sw          $at, -0xc($t6)
/* 00FE94 800102E4 8D61FFF8 */  lw          $at, -0x8($t3)
/* 00FE98 800102E8 ADC1FFF8 */  sw          $at, -0x8($t6)
/* 00FE9C 800102EC 8D61FFFC */  lw          $at, -0x4($t3)
/* 00FEA0 800102F0 156DFFF8 */  bne         $t3, $t5, .L800102D4
/* 00FEA4 800102F4 ADC1FFFC */   sw         $at, -0x4($t6)
/* 00FEA8 800102F8 8D610000 */  lw          $at, 0x0($t3)
/* 00FEAC 800102FC 27AF0094 */  addiu       $t7, $sp, 0x94
/* 00FEB0 80010300 ADC10000 */  sw          $at, 0x0($t6)
/* 00FEB4 80010304 8FA7000C */  lw          $a3, 0xc($sp)
/* 00FEB8 80010308 8FA60008 */  lw          $a2, 0x8($sp)
/* 00FEBC 8001030C 8FA50004 */  lw          $a1, 0x4($sp)
/* 00FEC0 80010310 8FA40000 */  lw          $a0, 0x0($sp)
/* 00FEC4 80010314 0C00E181 */  jal         func_80038604
/* 00FEC8 80010318 AFAF0040 */   sw         $t7, 0x40($sp)
/* 00FECC 8001031C 4480A000 */  mtc1        $zero, $f20
/* 00FED0 80010320 3C01C2C8 */  lui         $at, 0xc2c8
/* 00FED4 80010324 44815000 */  mtc1        $at, $f10
/* 00FED8 80010328 27A50088 */  addiu       $a1, $sp, 0x88
/* 00FEDC 8001032C 00A03025 */  move        $a2, $a1
/* 00FEE0 80010330 27A40094 */  addiu       $a0, $sp, 0x94
/* 00FEE4 80010334 E7B40088 */  swc1        $f20, 0x88($sp)
/* 00FEE8 80010338 E7B4008C */  swc1        $f20, 0x8c($sp)
/* 00FEEC 8001033C 0C00DFB0 */  jal         func_80037EC0
/* 00FEF0 80010340 E7AA0090 */   swc1       $f10, 0x90($sp)
/* 00FEF4 80010344 27A40088 */  addiu       $a0, $sp, 0x88
/* 00FEF8 80010348 27A50084 */  addiu       $a1, $sp, 0x84
/* 00FEFC 8001034C 0C00EA20 */  jal         func_8003A880
/* 00FF00 80010350 27A60080 */   addiu      $a2, $sp, 0x80
/* 00FF04 80010354 8FB800CC */  lw          $t8, 0xcc($sp)
/* 00FF08 80010358 C7B00084 */  lwc1        $f16, 0x84($sp)
/* 00FF0C 8001035C 02002025 */  move        $a0, $s0
/* 00FF10 80010360 C712000C */  lwc1        $f18, 0xc($t8)
/* 00FF14 80010364 00003025 */  move        $a2, $zero
/* 00FF18 80010368 46128101 */  sub.s       $f4, $f16, $f18
/* 00FF1C 8001036C 44052000 */  mfc1        $a1, $f4
/* 00FF20 80010370 0C0051BB */  jal         func_800146EC
/* 00FF24 80010374 00000000 */   nop
/* 00FF28 80010378 8FB900CC */  lw          $t9, 0xcc($sp)
/* 00FF2C 8001037C C7A60080 */  lwc1        $f6, 0x80($sp)
/* 00FF30 80010380 3C0142B4 */  lui         $at, 0x42b4
/* 00FF34 80010384 C7280010 */  lwc1        $f8, 0x10($t9)
/* 00FF38 80010388 44818000 */  mtc1        $at, $f16
/* 00FF3C 8001038C 02002025 */  move        $a0, $s0
/* 00FF40 80010390 46083281 */  sub.s       $f10, $f6, $f8
/* 00FF44 80010394 24060001 */  addiu       $a2, $zero, 0x1
/* 00FF48 80010398 46105480 */  add.s       $f18, $f10, $f16
/* 00FF4C 8001039C 44059000 */  mfc1        $a1, $f18
/* 00FF50 800103A0 0C0051BB */  jal         func_800146EC
/* 00FF54 800103A4 00000000 */   nop
/* 00FF58 800103A8 0C047038 */  jal         func_8011C0E0
/* 00FF5C 800103AC 02002025 */   move       $a0, $s0
/* 00FF60 800103B0 10400028 */  beqz        $v0, .L80010454
/* 00FF64 800103B4 02002025 */   move       $a0, $s0
/* 00FF68 800103B8 24050073 */  addiu       $a1, $zero, 0x73
/* 00FF6C 800103BC 0C0052D5 */  jal         func_80014B54
/* 00FF70 800103C0 AFA200C4 */   sw         $v0, 0xc4($sp)
/* 00FF74 800103C4 8E09002C */  lw          $t1, 0x2c($s0)
/* 00FF78 800103C8 8FA700C4 */  lw          $a3, 0xc4($sp)
/* 00FF7C 800103CC 00404025 */  move        $t0, $v0
/* 00FF80 800103D0 8D25002C */  lw          $a1, 0x2c($t1)
/* 00FF84 800103D4 50A2000E */  beql        $a1, $v0, .L80010410
/* 00FF88 800103D8 C4F20048 */   lwc1       $f18, 0x48($a3)
.L800103DC:
/* 00FF8C 800103DC 8CA3002C */  lw          $v1, 0x2c($a1)
/* 00FF90 800103E0 8CA40054 */  lw          $a0, 0x54($a1)
/* 00FF94 800103E4 8C660054 */  lw          $a2, 0x54($v1)
/* 00FF98 800103E8 E4940004 */  swc1        $f20, 0x4($a0)
/* 00FF9C 800103EC C4640014 */  lwc1        $f4, 0x14($v1)
/* 00FFA0 800103F0 C4860000 */  lwc1        $f6, 0x0($a0)
/* 00FFA4 800103F4 C4CA0000 */  lwc1        $f10, 0x0($a2)
/* 00FFA8 800103F8 46062200 */  add.s       $f8, $f4, $f6
/* 00FFAC 800103FC 460A4401 */  sub.s       $f16, $f8, $f10
/* 00FFB0 80010400 E4B00014 */  swc1        $f16, 0x14($a1)
/* 00FFB4 80010404 1468FFF5 */  bne         $v1, $t0, .L800103DC
/* 00FFB8 80010408 00602825 */   move       $a1, $v1
/* 00FFBC 8001040C C4F20048 */  lwc1        $f18, 0x48($a3)
.L80010410:
/* 00FFC0 80010410 C4440048 */  lwc1        $f4, 0x48($v0)
/* 00FFC4 80010414 8FAA00CC */  lw          $t2, 0xcc($sp)
/* 00FFC8 80010418 3C07C2B4 */  lui         $a3, 0xc2b4
/* 00FFCC 8001041C 46049001 */  sub.s       $f0, $f18, $f4
/* 00FFD0 80010420 C54C01A0 */  lwc1        $f12, 0x1a0($t2)
/* 00FFD4 80010424 3C0641A0 */  lui         $a2, 0x41a0
/* 00FFD8 80010428 46000085 */  abs.s       $f2, $f0
/* 00FFDC 8001042C 4602603C */  c.lt.s      $f12, $f2
/* 00FFE0 80010430 00000000 */  nop
/* 00FFE4 80010434 45020008 */  bc1fl       .L80010458
/* 00FFE8 80010438 8FBF005C */   lw         $ra, 0x5c($sp)
/* 00FFEC 8001043C 44807000 */  mtc1        $zero, $f14
/* 00FFF0 80010440 E7A20010 */  swc1        $f2, 0x10($sp)
/* 00FFF4 80010444 0C00E4BD */  jal         func_800392F4
/* 00FFF8 80010448 AFA8007C */   sw         $t0, 0x7c($sp)
/* 00FFFC 8001044C 8FA8007C */  lw          $t0, 0x7c($sp)
/* 010000 80010450 E5000014 */  swc1        $f0, 0x14($t0)
.L80010454:
/* 010004 80010454 8FBF005C */  lw          $ra, 0x5c($sp)
.L80010458:
/* 010008 80010458 D7B40050 */  ldc1        $f20, 0x50($sp)
/* 01000C 8001045C 8FB00058 */  lw          $s0, 0x58($sp)
/* 010010 80010460 27BD00D0 */  addiu       $sp, $sp, 0xd0
/* 010014 80010464 03E00008 */  jr          $ra
/* 010018 80010468 00001025 */   move       $v0, $zero
/* 01001C 8001046C 00000000 */  nop
