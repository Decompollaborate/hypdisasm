.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8001F1F0 # 0
/* 01EDA0 8001F1F0 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 01EDA4 8001F1F4 AFB00018 */  sw          $s0, 0x18($sp)
/* 01EDA8 8001F1F8 00808025 */  move        $s0, $a0
/* 01EDAC 8001F1FC 3C0E8009 */  lui         $t6, %hi(D_80088E60)
/* 01EDB0 8001F200 27A40028 */  addiu       $a0, $sp, 0x28
/* 01EDB4 8001F204 25CE8E60 */  addiu       $t6, $t6, %lo(D_80088E60)
/* 01EDB8 8001F208 AFBF001C */  sw          $ra, 0x1c($sp)
/* 01EDBC 8001F20C AFA50064 */  sw          $a1, 0x64($sp)
/* 01EDC0 8001F210 AFA60068 */  sw          $a2, 0x68($sp)
/* 01EDC4 8001F214 AFA7006C */  sw          $a3, 0x6c($sp)
/* 01EDC8 8001F218 25D90030 */  addiu       $t9, $t6, 0x30
/* 01EDCC 8001F21C 00804025 */  move        $t0, $a0
.L8001F220:
/* 01EDD0 8001F220 8DC10000 */  lw          $at, 0x0($t6)
/* 01EDD4 8001F224 25CE000C */  addiu       $t6, $t6, 0xc
/* 01EDD8 8001F228 2508000C */  addiu       $t0, $t0, 0xc
/* 01EDDC 8001F22C AD01FFF4 */  sw          $at, -0xc($t0)
/* 01EDE0 8001F230 8DC1FFF8 */  lw          $at, -0x8($t6)
/* 01EDE4 8001F234 AD01FFF8 */  sw          $at, -0x8($t0)
/* 01EDE8 8001F238 8DC1FFFC */  lw          $at, -0x4($t6)
/* 01EDEC 8001F23C 15D9FFF8 */  bne         $t6, $t9, .L8001F220
/* 01EDF0 8001F240 AD01FFFC */   sw         $at, -0x4($t0)
/* 01EDF4 8001F244 8DC10000 */  lw          $at, 0x0($t6)
/* 01EDF8 8001F248 AD010000 */  sw          $at, 0x0($t0)
/* 01EDFC 8001F24C 8DD90004 */  lw          $t9, 0x4($t6)
/* 01EE00 8001F250 0C002114 */  jal         func_80008450
/* 01EE04 8001F254 AD190004 */   sw         $t9, 0x4($t0)
/* 01EE08 8001F258 3C038013 */  lui         $v1, %hi(D_80133DE4)
/* 01EE0C 8001F25C 24633DE4 */  addiu       $v1, $v1, %lo(D_80133DE4)
/* 01EE10 8001F260 8C690000 */  lw          $t1, 0x0($v1)
/* 01EE14 8001F264 C7A60064 */  lwc1        $f6, 0x64($sp)
/* 01EE18 8001F268 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 01EE1C 8001F26C C524000C */  lwc1        $f4, 0xc($t1)
/* 01EE20 8001F270 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 01EE24 8001F274 24050010 */  addiu       $a1, $zero, 0x10
/* 01EE28 8001F278 46062202 */  mul.s       $f8, $f4, $f6
/* 01EE2C 8001F27C 24060033 */  addiu       $a2, $zero, 0x33
/* 01EE30 8001F280 E4480000 */  swc1        $f8, 0x0($v0)
/* 01EE34 8001F284 8C6A0000 */  lw          $t2, 0x0($v1)
/* 01EE38 8001F288 C54A000C */  lwc1        $f10, 0xc($t2)
/* 01EE3C 8001F28C E44A0004 */  swc1        $f10, 0x4($v0)
/* 01EE40 8001F290 8C6B0000 */  lw          $t3, 0x0($v1)
/* 01EE44 8001F294 C7B20068 */  lwc1        $f18, 0x68($sp)
/* 01EE48 8001F298 C570000C */  lwc1        $f16, 0xc($t3)
/* 01EE4C 8001F29C 46128102 */  mul.s       $f4, $f16, $f18
/* 01EE50 8001F2A0 E4440008 */  swc1        $f4, 0x8($v0)
/* 01EE54 8001F2A4 C6060000 */  lwc1        $f6, 0x0($s0)
/* 01EE58 8001F2A8 E4460018 */  swc1        $f6, 0x18($v0)
/* 01EE5C 8001F2AC C6080004 */  lwc1        $f8, 0x4($s0)
/* 01EE60 8001F2B0 E448001C */  swc1        $f8, 0x1c($v0)
/* 01EE64 8001F2B4 C60A0008 */  lwc1        $f10, 0x8($s0)
/* 01EE68 8001F2B8 E44A0020 */  swc1        $f10, 0x20($v0)
/* 01EE6C 8001F2BC C6100000 */  lwc1        $f16, 0x0($s0)
/* 01EE70 8001F2C0 E4500044 */  swc1        $f16, 0x44($v0)
/* 01EE74 8001F2C4 C6120004 */  lwc1        $f18, 0x4($s0)
/* 01EE78 8001F2C8 E4520048 */  swc1        $f18, 0x48($v0)
/* 01EE7C 8001F2CC C6040008 */  lwc1        $f4, 0x8($s0)
/* 01EE80 8001F2D0 E444004C */  swc1        $f4, 0x4c($v0)
/* 01EE84 8001F2D4 0C00E03D */  jal         func_800380F4
/* 01EE88 8001F2D8 AFA20024 */   sw         $v0, 0x24($sp)
/* 01EE8C 8001F2DC C7A60064 */  lwc1        $f6, 0x64($sp)
/* 01EE90 8001F2E0 8FA40024 */  lw          $a0, 0x24($sp)
/* 01EE94 8001F2E4 E4460000 */  swc1        $f6, 0x0($v0)
/* 01EE98 8001F2E8 C7A80068 */  lwc1        $f8, 0x68($sp)
/* 01EE9C 8001F2EC A0400008 */  sb          $zero, 0x8($v0)
/* 01EEA0 8001F2F0 E4480004 */  swc1        $f8, 0x4($v0)
/* 01EEA4 8001F2F4 8FAC006C */  lw          $t4, 0x6c($sp)
/* 01EEA8 8001F2F8 AC4C000C */  sw          $t4, 0xc($v0)
/* 01EEAC 8001F2FC 0C00219D */  jal         func_80008674
/* 01EEB0 8001F300 AC820054 */   sw         $v0, 0x54($a0)
/* 01EEB4 8001F304 8FBF001C */  lw          $ra, 0x1c($sp)
/* 01EEB8 8001F308 8FB00018 */  lw          $s0, 0x18($sp)
/* 01EEBC 8001F30C 27BD0060 */  addiu       $sp, $sp, 0x60
/* 01EEC0 8001F310 03E00008 */  jr          $ra
/* 01EEC4 8001F314 00000000 */   nop

glabel func_8001F318 # 1
/* 01EEC8 8001F318 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 01EECC 8001F31C 3C038007 */  lui         $v1, %hi(D_800760A8)
/* 01EED0 8001F320 8C6360A8 */  lw          $v1, %lo(D_800760A8)($v1)
/* 01EED4 8001F324 F7B40008 */  sdc1        $f20, 0x8($sp)
/* 01EED8 8001F328 C4900044 */  lwc1        $f16, 0x44($a0)
/* 01EEDC 8001F32C C4640044 */  lwc1        $f4, 0x44($v1)
/* 01EEE0 8001F330 8C820054 */  lw          $v0, 0x54($a0)
/* 01EEE4 8001F334 C48C0048 */  lwc1        $f12, 0x48($a0)
/* 01EEE8 8001F338 C480004C */  lwc1        $f0, 0x4c($a0)
/* 01EEEC 8001F33C E7A40024 */  swc1        $f4, 0x24($sp)
/* 01EEF0 8001F340 C7AA0024 */  lwc1        $f10, 0x24($sp)
/* 01EEF4 8001F344 C4660048 */  lwc1        $f6, 0x48($v1)
/* 01EEF8 8001F348 3C05800F */  lui         $a1, %hi(D_800EF6A0)
/* 01EEFC 8001F34C 4610503E */  c.le.s      $f10, $f16
/* 01EF00 8001F350 E7A60020 */  swc1        $f6, 0x20($sp)
/* 01EF04 8001F354 C468004C */  lwc1        $f8, 0x4c($v1)
/* 01EF08 8001F358 24A5F6A0 */  addiu       $a1, $a1, %lo(D_800EF6A0)
/* 01EF0C 8001F35C C4B20000 */  lwc1        $f18, 0x0($a1)
/* 01EF10 8001F360 C4AE0004 */  lwc1        $f14, 0x4($a1)
/* 01EF14 8001F364 C4A20008 */  lwc1        $f2, 0x8($a1)
/* 01EF18 8001F368 45000003 */  bc1f        .L8001F378
/* 01EF1C 8001F36C E7A8001C */   swc1       $f8, 0x1c($sp)
/* 01EF20 8001F370 10000004 */  b           .L8001F384
/* 01EF24 8001F374 460A8501 */   sub.s      $f20, $f16, $f10
.L8001F378:
/* 01EF28 8001F378 C7A40024 */  lwc1        $f4, 0x24($sp)
/* 01EF2C 8001F37C 46048501 */  sub.s       $f20, $f16, $f4
/* 01EF30 8001F380 4600A507 */  neg.s       $f20, $f20
.L8001F384:
/* 01EF34 8001F384 C4460000 */  lwc1        $f6, 0x0($v0)
/* 01EF38 8001F388 C7AA001C */  lwc1        $f10, 0x1c($sp)
/* 01EF3C 8001F38C E7A60010 */  swc1        $f6, 0x10($sp)
/* 01EF40 8001F390 C7A80010 */  lwc1        $f8, 0x10($sp)
/* 01EF44 8001F394 4608A03C */  c.lt.s      $f20, $f8
/* 01EF48 8001F398 00000000 */  nop
/* 01EF4C 8001F39C 45020016 */  bc1fl       .L8001F3F8
/* 01EF50 8001F3A0 4610903E */   c.le.s     $f18, $f16
/* 01EF54 8001F3A4 4600503E */  c.le.s      $f10, $f0
/* 01EF58 8001F3A8 C7A4001C */  lwc1        $f4, 0x1c($sp)
/* 01EF5C 8001F3AC C7A80020 */  lwc1        $f8, 0x20($sp)
/* 01EF60 8001F3B0 45020004 */  bc1fl       .L8001F3C4
/* 01EF64 8001F3B4 46040501 */   sub.s      $f20, $f0, $f4
/* 01EF68 8001F3B8 10000003 */  b           .L8001F3C8
/* 01EF6C 8001F3BC 460A0501 */   sub.s      $f20, $f0, $f10
/* 01EF70 8001F3C0 46040501 */  sub.s       $f20, $f0, $f4
.L8001F3C4:
/* 01EF74 8001F3C4 4600A507 */  neg.s       $f20, $f20
.L8001F3C8:
/* 01EF78 8001F3C8 C4460004 */  lwc1        $f6, 0x4($v0)
/* 01EF7C 8001F3CC 4606A03C */  c.lt.s      $f20, $f6
/* 01EF80 8001F3D0 00000000 */  nop
/* 01EF84 8001F3D4 45020008 */  bc1fl       .L8001F3F8
/* 01EF88 8001F3D8 4610903E */   c.le.s     $f18, $f16
/* 01EF8C 8001F3DC 4608603E */  c.le.s      $f12, $f8
/* 01EF90 8001F3E0 00000000 */  nop
/* 01EF94 8001F3E4 45020004 */  bc1fl       .L8001F3F8
/* 01EF98 8001F3E8 4610903E */   c.le.s     $f18, $f16
/* 01EF9C 8001F3EC 10000020 */  b           .L8001F470
/* 01EFA0 8001F3F0 A0400008 */   sb         $zero, 0x8($v0)
/* 01EFA4 8001F3F4 4610903E */  c.le.s      $f18, $f16
.L8001F3F8:
/* 01EFA8 8001F3F8 C7AA0010 */  lwc1        $f10, 0x10($sp)
/* 01EFAC 8001F3FC 45020004 */  bc1fl       .L8001F410
/* 01EFB0 8001F400 46128501 */   sub.s      $f20, $f16, $f18
/* 01EFB4 8001F404 10000003 */  b           .L8001F414
/* 01EFB8 8001F408 46128501 */   sub.s      $f20, $f16, $f18
/* 01EFBC 8001F40C 46128501 */  sub.s       $f20, $f16, $f18
.L8001F410:
/* 01EFC0 8001F410 4600A507 */  neg.s       $f20, $f20
.L8001F414:
/* 01EFC4 8001F414 460AA03C */  c.lt.s      $f20, $f10
/* 01EFC8 8001F418 00000000 */  nop
/* 01EFCC 8001F41C 45020014 */  bc1fl       .L8001F470
/* 01EFD0 8001F420 A0400008 */   sb         $zero, 0x8($v0)
/* 01EFD4 8001F424 4600103E */  c.le.s      $f2, $f0
/* 01EFD8 8001F428 C4500004 */  lwc1        $f16, 0x4($v0)
/* 01EFDC 8001F42C 45020004 */  bc1fl       .L8001F440
/* 01EFE0 8001F430 46020501 */   sub.s      $f20, $f0, $f2
/* 01EFE4 8001F434 10000003 */  b           .L8001F444
/* 01EFE8 8001F438 46020501 */   sub.s      $f20, $f0, $f2
/* 01EFEC 8001F43C 46020501 */  sub.s       $f20, $f0, $f2
.L8001F440:
/* 01EFF0 8001F440 4600A507 */  neg.s       $f20, $f20
.L8001F444:
/* 01EFF4 8001F444 4610A03C */  c.lt.s      $f20, $f16
/* 01EFF8 8001F448 00000000 */  nop
/* 01EFFC 8001F44C 45020008 */  bc1fl       .L8001F470
/* 01F000 8001F450 A0400008 */   sb         $zero, 0x8($v0)
/* 01F004 8001F454 460E603E */  c.le.s      $f12, $f14
/* 01F008 8001F458 240E0001 */  addiu       $t6, $zero, 0x1
/* 01F00C 8001F45C 45020004 */  bc1fl       .L8001F470
/* 01F010 8001F460 A0400008 */   sb         $zero, 0x8($v0)
/* 01F014 8001F464 10000002 */  b           .L8001F470
/* 01F018 8001F468 A04E0008 */   sb         $t6, 0x8($v0)
/* 01F01C 8001F46C A0400008 */  sb          $zero, 0x8($v0)
.L8001F470:
/* 01F020 8001F470 D7B40008 */  ldc1        $f20, 0x8($sp)
/* 01F024 8001F474 03E00008 */  jr          $ra
/* 01F028 8001F478 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_8001F47C # 2
/* 01F02C 8001F47C 8C820054 */  lw          $v0, 0x54($a0)
/* 01F030 8001F480 3C04800B */  lui         $a0, %hi(D_800ABDD0)
/* 01F034 8001F484 2484BDD0 */  addiu       $a0, $a0, %lo(D_800ABDD0)
/* 01F038 8001F488 904E0008 */  lbu         $t6, 0x8($v0)
/* 01F03C 8001F48C 3C18FA00 */  lui         $t8, 0xfa00
/* 01F040 8001F490 3C09FA00 */  lui         $t1, 0xfa00
/* 01F044 8001F494 15C0000C */  bnez        $t6, .L8001F4C8
/* 01F048 8001F498 3C020101 */   lui        $v0, 0x101
/* 01F04C 8001F49C 3C04800B */  lui         $a0, %hi(D_800ABDD0)
/* 01F050 8001F4A0 2484BDD0 */  addiu       $a0, $a0, %lo(D_800ABDD0)
/* 01F054 8001F4A4 8C830000 */  lw          $v1, 0x0($a0)
/* 01F058 8001F4A8 2419003C */  addiu       $t9, $zero, 0x3c
/* 01F05C 8001F4AC 3C020101 */  lui         $v0, 0x101
/* 01F060 8001F4B0 246F0008 */  addiu       $t7, $v1, 0x8
/* 01F064 8001F4B4 AC8F0000 */  sw          $t7, 0x0($a0)
/* 01F068 8001F4B8 2442CCB0 */  addiu       $v0, $v0, -0x3350
/* 01F06C 8001F4BC AC790004 */  sw          $t9, 0x4($v1)
/* 01F070 8001F4C0 03E00008 */  jr          $ra
/* 01F074 8001F4C4 AC780000 */   sw         $t8, 0x0($v1)
.L8001F4C8:
/* 01F078 8001F4C8 8C830000 */  lw          $v1, 0x0($a0)
/* 01F07C 8001F4CC 3C0AB400 */  lui         $t2, 0xb400
/* 01F080 8001F4D0 354A00B4 */  ori         $t2, $t2, 0xb4
/* 01F084 8001F4D4 24680008 */  addiu       $t0, $v1, 0x8
/* 01F088 8001F4D8 AC880000 */  sw          $t0, 0x0($a0)
/* 01F08C 8001F4DC AC6A0004 */  sw          $t2, 0x4($v1)
/* 01F090 8001F4E0 AC690000 */  sw          $t1, 0x0($v1)
/* 01F094 8001F4E4 03E00008 */  jr          $ra
/* 01F098 8001F4E8 2442CCB0 */   addiu      $v0, $v0, -0x3350
/* 01F09C 8001F4EC 00000000 */  nop
