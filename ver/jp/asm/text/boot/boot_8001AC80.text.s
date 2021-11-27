.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8001AC80 # 0
/* 01A830 8001AC80 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01A834 8001AC84 AFA40020 */  sw          $a0, 0x20($sp)
/* 01A838 8001AC88 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01A83C 8001AC8C 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 01A840 8001AC90 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 01A844 8001AC94 24050058 */  addiu       $a1, $zero, 0x58
/* 01A848 8001AC98 0C00DA76 */  jal         func_800369D8
/* 01A84C 8001AC9C 24060038 */   addiu      $a2, $zero, 0x38
/* 01A850 8001ACA0 AFA2001C */  sw          $v0, 0x1c($sp)
/* 01A854 8001ACA4 00402025 */  move        $a0, $v0
/* 01A858 8001ACA8 0C013C58 */  jal         func_8004F160
/* 01A85C 8001ACAC 24050058 */   addiu      $a1, $zero, 0x58
/* 01A860 8001ACB0 8FAE001C */  lw          $t6, 0x1c($sp)
/* 01A864 8001ACB4 8FAF0020 */  lw          $t7, 0x20($sp)
/* 01A868 8001ACB8 ADEE0054 */  sw          $t6, 0x54($t7)
/* 01A86C 8001ACBC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01A870 8001ACC0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01A874 8001ACC4 03E00008 */  jr          $ra
/* 01A878 8001ACC8 00000000 */   nop

glabel func_8001ACCC # 1
/* 01A87C 8001ACCC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01A880 8001ACD0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01A884 8001ACD4 8C850054 */  lw          $a1, 0x54($a0)
/* 01A888 8001ACD8 8CA20004 */  lw          $v0, 0x4($a1)
/* 01A88C 8001ACDC 8CA30008 */  lw          $v1, 0x8($a1)
/* 01A890 8001ACE0 10400003 */  beqz        $v0, .L8001ACF0
/* 01A894 8001ACE4 00000000 */   nop
/* 01A898 8001ACE8 8C440054 */  lw          $a0, 0x54($v0)
/* 01A89C 8001ACEC AC830008 */  sw          $v1, 0x8($a0)
.L8001ACF0:
/* 01A8A0 8001ACF0 10600003 */  beqz        $v1, .L8001AD00
/* 01A8A4 8001ACF4 00000000 */   nop
/* 01A8A8 8001ACF8 8C640054 */  lw          $a0, 0x54($v1)
/* 01A8AC 8001ACFC AC820004 */  sw          $v0, 0x4($a0)
.L8001AD00:
/* 01A8B0 8001AD00 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 01A8B4 8001AD04 0C00DB8B */  jal         func_80036E2C
/* 01A8B8 8001AD08 2484D0E0 */   addiu      $a0, $a0, %lo(D_800FD0E0)
/* 01A8BC 8001AD0C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01A8C0 8001AD10 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01A8C4 8001AD14 03E00008 */  jr          $ra
/* 01A8C8 8001AD18 00000000 */   nop

glabel func_8001AD1C # 2
/* 01A8CC 8001AD1C 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 01A8D0 8001AD20 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01A8D4 8001AD24 AFA40038 */  sw          $a0, 0x38($sp)
/* 01A8D8 8001AD28 AFA60040 */  sw          $a2, 0x40($sp)
/* 01A8DC 8001AD2C AFA70044 */  sw          $a3, 0x44($sp)
/* 01A8E0 8001AD30 C4860018 */  lwc1        $f6, 0x18($a0)
/* 01A8E4 8001AD34 C4A40018 */  lwc1        $f4, 0x18($a1)
/* 01A8E8 8001AD38 46062201 */  sub.s       $f8, $f4, $f6
/* 01A8EC 8001AD3C E7A8002C */  swc1        $f8, 0x2c($sp)
/* 01A8F0 8001AD40 C490001C */  lwc1        $f16, 0x1c($a0)
/* 01A8F4 8001AD44 C4AA001C */  lwc1        $f10, 0x1c($a1)
/* 01A8F8 8001AD48 46105481 */  sub.s       $f18, $f10, $f16
/* 01A8FC 8001AD4C E7B20030 */  swc1        $f18, 0x30($sp)
/* 01A900 8001AD50 C4860020 */  lwc1        $f6, 0x20($a0)
/* 01A904 8001AD54 C4A40020 */  lwc1        $f4, 0x20($a1)
/* 01A908 8001AD58 27A4002C */  addiu       $a0, $sp, 0x2c
/* 01A90C 8001AD5C 46062201 */  sub.s       $f8, $f4, $f6
/* 01A910 8001AD60 0C00E428 */  jal         func_800390A0
/* 01A914 8001AD64 E7A80034 */   swc1       $f8, 0x34($sp)
/* 01A918 8001AD68 C7AC0040 */  lwc1        $f12, 0x40($sp)
/* 01A91C 8001AD6C C7AA0044 */  lwc1        $f10, 0x44($sp)
/* 01A920 8001AD70 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 01A924 8001AD74 460C003E */  c.le.s      $f0, $f12
/* 01A928 8001AD78 460C0081 */  sub.s       $f2, $f0, $f12
/* 01A92C 8001AD7C 4503001B */  bc1tl       .L8001ADEC
/* 01A930 8001AD80 8FBF0014 */   lw         $ra, 0x14($sp)
/* 01A934 8001AD84 C4302C64 */  lwc1        $f16, %lo(D_800B2C64)($at)
/* 01A938 8001AD88 8FA20048 */  lw          $v0, 0x48($sp)
/* 01A93C 8001AD8C 27A3002C */  addiu       $v1, $sp, 0x2c
/* 01A940 8001AD90 46105483 */  div.s       $f18, $f10, $f16
/* 01A944 8001AD94 27A40038 */  addiu       $a0, $sp, 0x38
/* 01A948 8001AD98 46121082 */  mul.s       $f2, $f2, $f18
/* 01A94C 8001AD9C 00000000 */  nop
/* 01A950 8001ADA0 C46E0000 */  lwc1        $f14, 0x0($v1)
/* 01A954 8001ADA4 24630004 */  addiu       $v1, $v1, 0x4
/* 01A958 8001ADA8 C4520000 */  lwc1        $f18, 0x0($v0)
/* 01A95C 8001ADAC 46027402 */  mul.s       $f16, $f14, $f2
/* 01A960 8001ADB0 5064000B */  beql        $v1, $a0, .L8001ADE0
/* 01A964 8001ADB4 46109380 */   add.s      $f14, $f18, $f16
/* 01A968 8001ADB8 46109380 */  add.s       $f14, $f18, $f16
.L8001ADBC:
/* 01A96C 8001ADBC C4520004 */  lwc1        $f18, 0x4($v0)
/* 01A970 8001ADC0 24630004 */  addiu       $v1, $v1, 0x4
/* 01A974 8001ADC4 24420004 */  addiu       $v0, $v0, 0x4
/* 01A978 8001ADC8 E44EFFFC */  swc1        $f14, -0x4($v0)
/* 01A97C 8001ADCC C46EFFFC */  lwc1        $f14, -0x4($v1)
/* 01A980 8001ADD0 46027402 */  mul.s       $f16, $f14, $f2
/* 01A984 8001ADD4 5464FFF9 */  bnel        $v1, $a0, .L8001ADBC
/* 01A988 8001ADD8 46109380 */   add.s      $f14, $f18, $f16
/* 01A98C 8001ADDC 46109380 */  add.s       $f14, $f18, $f16
.L8001ADE0:
/* 01A990 8001ADE0 24420004 */  addiu       $v0, $v0, 0x4
/* 01A994 8001ADE4 E44EFFFC */  swc1        $f14, -0x4($v0)
/* 01A998 8001ADE8 8FBF0014 */  lw          $ra, 0x14($sp)
.L8001ADEC:
/* 01A99C 8001ADEC 27BD0038 */  addiu       $sp, $sp, 0x38
/* 01A9A0 8001ADF0 03E00008 */  jr          $ra
/* 01A9A4 8001ADF4 00000000 */   nop

glabel func_8001ADF8 # 3
/* 01A9A8 8001ADF8 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 01A9AC 8001ADFC 44800000 */  mtc1        $zero, $f0
/* 01A9B0 8001AE00 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01A9B4 8001AE04 AFB10020 */  sw          $s1, 0x20($sp)
/* 01A9B8 8001AE08 AFB0001C */  sw          $s0, 0x1c($sp)
/* 01A9BC 8001AE0C 8C900054 */  lw          $s0, 0x54($a0)
/* 01A9C0 8001AE10 E7A00050 */  swc1        $f0, 0x50($sp)
/* 01A9C4 8001AE14 E7A0004C */  swc1        $f0, 0x4c($sp)
/* 01A9C8 8001AE18 E7A00048 */  swc1        $f0, 0x48($sp)
/* 01A9CC 8001AE1C 8E020028 */  lw          $v0, 0x28($s0)
/* 01A9D0 8001AE20 00808825 */  move        $s1, $a0
/* 01A9D4 8001AE24 50400006 */  beql        $v0, $zero, .L8001AE40
/* 01A9D8 8001AE28 27A20048 */   addiu      $v0, $sp, 0x48
/* 01A9DC 8001AE2C 0040F809 */  jalr        $v0
/* 01A9E0 8001AE30 27A50048 */   addiu      $a1, $sp, 0x48
/* 01A9E4 8001AE34 24010001 */  addiu       $at, $zero, 0x1
/* 01A9E8 8001AE38 1041002A */  beq         $v0, $at, .L8001AEE4
/* 01A9EC 8001AE3C 27A20048 */   addiu      $v0, $sp, 0x48
.L8001AE40:
/* 01A9F0 8001AE40 02001825 */  move        $v1, $s0
/* 01A9F4 8001AE44 27A40054 */  addiu       $a0, $sp, 0x54
/* 01A9F8 8001AE48 C46E001C */  lwc1        $f14, 0x1c($v1)
/* 01A9FC 8001AE4C C60C0018 */  lwc1        $f12, 0x18($s0)
/* 01AA00 8001AE50 24420004 */  addiu       $v0, $v0, 0x4
/* 01AA04 8001AE54 C450FFFC */  lwc1        $f16, -0x4($v0)
/* 01AA08 8001AE58 460C7482 */  mul.s       $f18, $f14, $f12
/* 01AA0C 8001AE5C 5044000C */  beql        $v0, $a0, .L8001AE90
/* 01AA10 8001AE60 46128380 */   add.s      $f14, $f16, $f18
/* 01AA14 8001AE64 46128380 */  add.s       $f14, $f16, $f18
.L8001AE68:
/* 01AA18 8001AE68 C4500000 */  lwc1        $f16, 0x0($v0)
/* 01AA1C 8001AE6C 24420004 */  addiu       $v0, $v0, 0x4
/* 01AA20 8001AE70 24630004 */  addiu       $v1, $v1, 0x4
/* 01AA24 8001AE74 E44EFFF8 */  swc1        $f14, -0x8($v0)
/* 01AA28 8001AE78 C46E001C */  lwc1        $f14, 0x1c($v1)
/* 01AA2C 8001AE7C C60C0018 */  lwc1        $f12, 0x18($s0)
/* 01AA30 8001AE80 460C7482 */  mul.s       $f18, $f14, $f12
/* 01AA34 8001AE84 5444FFF8 */  bnel        $v0, $a0, .L8001AE68
/* 01AA38 8001AE88 46128380 */   add.s      $f14, $f16, $f18
/* 01AA3C 8001AE8C 46128380 */  add.s       $f14, $f16, $f18
.L8001AE90:
/* 01AA40 8001AE90 24630004 */  addiu       $v1, $v1, 0x4
/* 01AA44 8001AE94 E44EFFFC */  swc1        $f14, -0x4($v0)
/* 01AA48 8001AE98 8E050004 */  lw          $a1, 0x4($s0)
/* 01AA4C 8001AE9C 02202025 */  move        $a0, $s1
/* 01AA50 8001AEA0 50A00008 */  beql        $a1, $zero, .L8001AEC4
/* 01AA54 8001AEA4 8E050008 */   lw         $a1, 0x8($s0)
/* 01AA58 8001AEA8 8CAE0054 */  lw          $t6, 0x54($a1)
/* 01AA5C 8001AEAC 8E070010 */  lw          $a3, 0x10($s0)
/* 01AA60 8001AEB0 27AF0048 */  addiu       $t7, $sp, 0x48
/* 01AA64 8001AEB4 8DC6000C */  lw          $a2, 0xc($t6)
/* 01AA68 8001AEB8 0C006B47 */  jal         func_8001AD1C
/* 01AA6C 8001AEBC AFAF0010 */   sw         $t7, 0x10($sp)
/* 01AA70 8001AEC0 8E050008 */  lw          $a1, 0x8($s0)
.L8001AEC4:
/* 01AA74 8001AEC4 02202025 */  move        $a0, $s1
/* 01AA78 8001AEC8 27B80048 */  addiu       $t8, $sp, 0x48
/* 01AA7C 8001AECC 50A00006 */  beql        $a1, $zero, .L8001AEE8
/* 01AA80 8001AED0 C7B20048 */   lwc1       $f18, 0x48($sp)
/* 01AA84 8001AED4 8E06000C */  lw          $a2, 0xc($s0)
/* 01AA88 8001AED8 8E070014 */  lw          $a3, 0x14($s0)
/* 01AA8C 8001AEDC 0C006B47 */  jal         func_8001AD1C
/* 01AA90 8001AEE0 AFB80010 */   sw         $t8, 0x10($sp)
.L8001AEE4:
/* 01AA94 8001AEE4 C7B20048 */  lwc1        $f18, 0x48($sp)
.L8001AEE8:
/* 01AA98 8001AEE8 3C04800B */  lui         $a0, %hi(D_800B2C64)
/* 01AA9C 8001AEEC 24842C64 */  addiu       $a0, $a0, %lo(D_800B2C64)
/* 01AAA0 8001AEF0 E612001C */  swc1        $f18, 0x1c($s0)
/* 01AAA4 8001AEF4 C7A4004C */  lwc1        $f4, 0x4c($sp)
/* 01AAA8 8001AEF8 02201025 */  move        $v0, $s1
/* 01AAAC 8001AEFC 27A30048 */  addiu       $v1, $sp, 0x48
/* 01AAB0 8001AF00 E6040020 */  swc1        $f4, 0x20($s0)
/* 01AAB4 8001AF04 C7A60050 */  lwc1        $f6, 0x50($sp)
/* 01AAB8 8001AF08 27A50054 */  addiu       $a1, $sp, 0x54
/* 01AABC 8001AF0C E6060024 */  swc1        $f6, 0x24($s0)
/* 01AAC0 8001AF10 C46E0000 */  lwc1        $f14, 0x0($v1)
/* 01AAC4 8001AF14 C48C0000 */  lwc1        $f12, 0x0($a0)
/* 01AAC8 8001AF18 24630004 */  addiu       $v1, $v1, 0x4
/* 01AACC 8001AF1C C4500018 */  lwc1        $f16, 0x18($v0)
/* 01AAD0 8001AF20 460C7482 */  mul.s       $f18, $f14, $f12
/* 01AAD4 8001AF24 5065000C */  beql        $v1, $a1, .L8001AF58
/* 01AAD8 8001AF28 46128380 */   add.s      $f14, $f16, $f18
/* 01AADC 8001AF2C 46128380 */  add.s       $f14, $f16, $f18
.L8001AF30:
/* 01AAE0 8001AF30 C450001C */  lwc1        $f16, 0x1c($v0)
/* 01AAE4 8001AF34 24630004 */  addiu       $v1, $v1, 0x4
/* 01AAE8 8001AF38 24420004 */  addiu       $v0, $v0, 0x4
/* 01AAEC 8001AF3C E44E0014 */  swc1        $f14, 0x14($v0)
/* 01AAF0 8001AF40 C46EFFFC */  lwc1        $f14, -0x4($v1)
/* 01AAF4 8001AF44 C48C0000 */  lwc1        $f12, 0x0($a0)
/* 01AAF8 8001AF48 460C7482 */  mul.s       $f18, $f14, $f12
/* 01AAFC 8001AF4C 5465FFF8 */  bnel        $v1, $a1, .L8001AF30
/* 01AB00 8001AF50 46128380 */   add.s      $f14, $f16, $f18
/* 01AB04 8001AF54 46128380 */  add.s       $f14, $f16, $f18
.L8001AF58:
/* 01AB08 8001AF58 24420004 */  addiu       $v0, $v0, 0x4
/* 01AB0C 8001AF5C E44E0014 */  swc1        $f14, 0x14($v0)
/* 01AB10 8001AF60 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01AB14 8001AF64 8FB0001C */  lw          $s0, 0x1c($sp)
/* 01AB18 8001AF68 8FB10020 */  lw          $s1, 0x20($sp)
/* 01AB1C 8001AF6C 03E00008 */  jr          $ra
/* 01AB20 8001AF70 27BD0058 */   addiu      $sp, $sp, 0x58

glabel func_8001AF74 # 4
/* 01AB24 8001AF74 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 01AB28 8001AF78 AFBF001C */  sw          $ra, 0x1c($sp)
/* 01AB2C 8001AF7C AFB10018 */  sw          $s1, 0x18($sp)
/* 01AB30 8001AF80 AFB00014 */  sw          $s0, 0x14($sp)
/* 01AB34 8001AF84 00808025 */  move        $s0, $a0
/* 01AB38 8001AF88 0C006B7E */  jal         func_8001ADF8
/* 01AB3C 8001AF8C 8C910054 */   lw         $s1, 0x54($a0)
/* 01AB40 8001AF90 0C00212C */  jal         func_800084B0
/* 01AB44 8001AF94 02002025 */   move       $a0, $s0
/* 01AB48 8001AF98 3C014407 */  lui         $at, 0x4407
/* 01AB4C 8001AF9C 44813000 */  mtc1        $at, $f6
/* 01AB50 8001AFA0 C6240000 */  lwc1        $f4, 0x0($s1)
/* 01AB54 8001AFA4 46062302 */  mul.s       $f12, $f4, $f6
/* 01AB58 8001AFA8 0C00EB2F */  jal         func_8003ACBC
/* 01AB5C 8001AFAC 00000000 */   nop
/* 01AB60 8001AFB0 3C014234 */  lui         $at, 0x4234
/* 01AB64 8001AFB4 44814000 */  mtc1        $at, $f8
/* 01AB68 8001AFB8 8E0E0038 */  lw          $t6, 0x38($s0)
/* 01AB6C 8001AFBC 44806000 */  mtc1        $zero, $f12
/* 01AB70 8001AFC0 46080282 */  mul.s       $f10, $f0, $f8
/* 01AB74 8001AFC4 31CF0001 */  andi        $t7, $t6, 0x1
/* 01AB78 8001AFC8 3C0143B4 */  lui         $at, 0x43b4
/* 01AB7C 8001AFCC 11E00004 */  beqz        $t7, .L8001AFE0
/* 01AB80 8001AFD0 E60A000C */   swc1       $f10, 0xc($s0)
/* 01AB84 8001AFD4 C610000C */  lwc1        $f16, 0xc($s0)
/* 01AB88 8001AFD8 46008487 */  neg.s       $f18, $f16
/* 01AB8C 8001AFDC E612000C */  swc1        $f18, 0xc($s0)
.L8001AFE0:
/* 01AB90 8001AFE0 C600000C */  lwc1        $f0, 0xc($s0)
/* 01AB94 8001AFE4 460C003C */  c.lt.s      $f0, $f12
/* 01AB98 8001AFE8 00000000 */  nop
/* 01AB9C 8001AFEC 4502000B */  bc1fl       .L8001B01C
/* 01ABA0 8001AFF0 3C0143B4 */   lui        $at, 0x43b4
/* 01ABA4 8001AFF4 44811000 */  mtc1        $at, $f2
/* 01ABA8 8001AFF8 00000000 */  nop
/* 01ABAC 8001AFFC 46020100 */  add.s       $f4, $f0, $f2
.L8001B000:
/* 01ABB0 8001B000 E604000C */  swc1        $f4, 0xc($s0)
/* 01ABB4 8001B004 C600000C */  lwc1        $f0, 0xc($s0)
/* 01ABB8 8001B008 460C003C */  c.lt.s      $f0, $f12
/* 01ABBC 8001B00C 00000000 */  nop
/* 01ABC0 8001B010 4503FFFB */  bc1tl       .L8001B000
/* 01ABC4 8001B014 46020100 */   add.s      $f4, $f0, $f2
/* 01ABC8 8001B018 3C0143B4 */  lui         $at, 0x43b4
.L8001B01C:
/* 01ABCC 8001B01C 44811000 */  mtc1        $at, $f2
/* 01ABD0 8001B020 00000000 */  nop
/* 01ABD4 8001B024 4600103E */  c.le.s      $f2, $f0
/* 01ABD8 8001B028 00000000 */  nop
/* 01ABDC 8001B02C 45000008 */  bc1f        .L8001B050
/* 01ABE0 8001B030 00000000 */   nop
/* 01ABE4 8001B034 46020181 */  sub.s       $f6, $f0, $f2
.L8001B038:
/* 01ABE8 8001B038 E606000C */  swc1        $f6, 0xc($s0)
/* 01ABEC 8001B03C C600000C */  lwc1        $f0, 0xc($s0)
/* 01ABF0 8001B040 4600103E */  c.le.s      $f2, $f0
/* 01ABF4 8001B044 00000000 */  nop
/* 01ABF8 8001B048 4503FFFB */  bc1tl       .L8001B038
/* 01ABFC 8001B04C 46020181 */   sub.s      $f6, $f0, $f2
.L8001B050:
/* 01AC00 8001B050 3C10800B */  lui         $s0, %hi(D_800B2C64)
/* 01AC04 8001B054 26102C64 */  addiu       $s0, $s0, %lo(D_800B2C64)
/* 01AC08 8001B058 C60A0000 */  lwc1        $f10, 0x0($s0)
/* 01AC0C 8001B05C C6280034 */  lwc1        $f8, 0x34($s1)
/* 01AC10 8001B060 26240038 */  addiu       $a0, $s1, 0x38
/* 01AC14 8001B064 27A50028 */  addiu       $a1, $sp, 0x28
/* 01AC18 8001B068 460A4002 */  mul.s       $f0, $f8, $f10
/* 01AC1C 8001B06C 44060000 */  mfc1        $a2, $f0
/* 01AC20 8001B070 0C002400 */  jal         func_80009000
/* 01AC24 8001B074 E7A00024 */   swc1       $f0, 0x24($sp)
/* 01AC28 8001B078 C7A00024 */  lwc1        $f0, 0x24($sp)
/* 01AC2C 8001B07C 26240044 */  addiu       $a0, $s1, 0x44
/* 01AC30 8001B080 27A50028 */  addiu       $a1, $sp, 0x28
/* 01AC34 8001B084 44060000 */  mfc1        $a2, $f0
/* 01AC38 8001B088 0C002400 */  jal         func_80009000
/* 01AC3C 8001B08C 00000000 */   nop
/* 01AC40 8001B090 8FB80028 */  lw          $t8, 0x28($sp)
/* 01AC44 8001B094 C6300000 */  lwc1        $f16, 0x0($s1)
/* 01AC48 8001B098 A2380053 */  sb          $t8, 0x53($s1)
/* 01AC4C 8001B09C C6120000 */  lwc1        $f18, 0x0($s0)
/* 01AC50 8001B0A0 46128100 */  add.s       $f4, $f16, $f18
/* 01AC54 8001B0A4 E6240000 */  swc1        $f4, 0x0($s1)
/* 01AC58 8001B0A8 8FBF001C */  lw          $ra, 0x1c($sp)
/* 01AC5C 8001B0AC 8FB10018 */  lw          $s1, 0x18($sp)
/* 01AC60 8001B0B0 8FB00014 */  lw          $s0, 0x14($sp)
/* 01AC64 8001B0B4 03E00008 */  jr          $ra
/* 01AC68 8001B0B8 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8001B0BC # 5
/* 01AC6C 8001B0BC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01AC70 8001B0C0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01AC74 8001B0C4 AFA40020 */  sw          $a0, 0x20($sp)
/* 01AC78 8001B0C8 8C830054 */  lw          $v1, 0x54($a0)
/* 01AC7C 8001B0CC 3C04800B */  lui         $a0, %hi(D_800B1A70)
/* 01AC80 8001B0D0 24841A70 */  addiu       $a0, $a0, %lo(D_800B1A70)
/* 01AC84 8001B0D4 84660040 */  lh          $a2, 0x40($v1)
/* 01AC88 8001B0D8 24050005 */  addiu       $a1, $zero, 0x5
/* 01AC8C 8001B0DC 0C002AAB */  jal         func_8000AAAC
/* 01AC90 8001B0E0 AFA3001C */   sw         $v1, 0x1c($sp)
/* 01AC94 8001B0E4 3C06800B */  lui         $a2, %hi(D_800B1A70)
/* 01AC98 8001B0E8 24C61A70 */  addiu       $a2, $a2, %lo(D_800B1A70)
/* 01AC9C 8001B0EC 8CC50000 */  lw          $a1, 0x0($a2)
/* 01ACA0 8001B0F0 8FA3001C */  lw          $v1, 0x1c($sp)
/* 01ACA4 8001B0F4 3C18FA00 */  lui         $t8, 0xfa00
/* 01ACA8 8001B0F8 24AF0008 */  addiu       $t7, $a1, 0x8
/* 01ACAC 8001B0FC ACCF0000 */  sw          $t7, 0x0($a2)
/* 01ACB0 8001B100 ACB80000 */  sw          $t8, 0x0($a1)
/* 01ACB4 8001B104 906B0051 */  lbu         $t3, 0x51($v1)
/* 01ACB8 8001B108 90680050 */  lbu         $t0, 0x50($v1)
/* 01ACBC 8001B10C 906F0052 */  lbu         $t7, 0x52($v1)
/* 01ACC0 8001B110 906A0053 */  lbu         $t2, 0x53($v1)
/* 01ACC4 8001B114 000B6400 */  sll         $t4, $t3, 16
/* 01ACC8 8001B118 00084E00 */  sll         $t1, $t0, 24
/* 01ACCC 8001B11C 012C6825 */  or          $t5, $t1, $t4
/* 01ACD0 8001B120 000FC200 */  sll         $t8, $t7, 8
/* 01ACD4 8001B124 01B8C825 */  or          $t9, $t5, $t8
/* 01ACD8 8001B128 032A5825 */  or          $t3, $t9, $t2
/* 01ACDC 8001B12C ACAB0004 */  sw          $t3, 0x4($a1)
/* 01ACE0 8001B130 8FA90020 */  lw          $t1, 0x20($sp)
/* 01ACE4 8001B134 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01ACE8 8001B138 8D220030 */  lw          $v0, 0x30($t1)
/* 01ACEC 8001B13C 03E00008 */  jr          $ra
/* 01ACF0 8001B140 27BD0020 */   addiu      $sp, $sp, 0x20

glabel func_8001B144 # 6
/* 01ACF4 8001B144 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 01ACF8 8001B148 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01ACFC 8001B14C AFB20020 */  sw          $s2, 0x20($sp)
/* 01AD00 8001B150 AFB1001C */  sw          $s1, 0x1c($sp)
/* 01AD04 8001B154 AFB00018 */  sw          $s0, 0x18($sp)
/* 01AD08 8001B158 3C0142C8 */  lui         $at, 0x42c8
/* 01AD0C 8001B15C 44812000 */  mtc1        $at, $f4
/* 01AD10 8001B160 C486001C */  lwc1        $f6, 0x1c($a0)
/* 01AD14 8001B164 00A08025 */  move        $s0, $a1
/* 01AD18 8001B168 00809025 */  move        $s2, $a0
/* 01AD1C 8001B16C 4606203C */  c.lt.s      $f4, $f6
/* 01AD20 8001B170 8C830054 */  lw          $v1, 0x54($a0)
/* 01AD24 8001B174 4502000A */  bc1fl       .L8001B1A0
/* 01AD28 8001B178 8C64002C */   lw         $a0, 0x2c($v1)
/* 01AD2C 8001B17C 0C001C6D */  jal         func_800071B4
/* 01AD30 8001B180 8C840050 */   lw         $a0, 0x50($a0)
/* 01AD34 8001B184 44800000 */  mtc1        $zero, $f0
/* 01AD38 8001B188 24020001 */  addiu       $v0, $zero, 0x1
/* 01AD3C 8001B18C E6000000 */  swc1        $f0, 0x0($s0)
/* 01AD40 8001B190 E6000004 */  swc1        $f0, 0x4($s0)
/* 01AD44 8001B194 1000006B */  b           .L8001B344
/* 01AD48 8001B198 E6000008 */   swc1       $f0, 0x8($s0)
/* 01AD4C 8001B19C 8C64002C */  lw          $a0, 0x2c($v1)
.L8001B1A0:
/* 01AD50 8001B1A0 0C04701F */  jal         func_8011C07C
/* 01AD54 8001B1A4 AFA30034 */   sw         $v1, 0x34($sp)
/* 01AD58 8001B1A8 8FA30034 */  lw          $v1, 0x34($sp)
/* 01AD5C 8001B1AC 14400009 */  bnez        $v0, .L8001B1D4
/* 01AD60 8001B1B0 00408825 */   move       $s1, $v0
/* 01AD64 8001B1B4 44800000 */  mtc1        $zero, $f0
/* 01AD68 8001B1B8 3C014120 */  lui         $at, 0x4120
/* 01AD6C 8001B1BC 44814000 */  mtc1        $at, $f8
/* 01AD70 8001B1C0 24020001 */  addiu       $v0, $zero, 0x1
/* 01AD74 8001B1C4 E6000000 */  swc1        $f0, 0x0($s0)
/* 01AD78 8001B1C8 E6000008 */  swc1        $f0, 0x8($s0)
/* 01AD7C 8001B1CC 1000005D */  b           .L8001B344
/* 01AD80 8001B1D0 E6080004 */   swc1       $f8, 0x4($s0)
.L8001B1D4:
/* 01AD84 8001B1D4 C62A0044 */  lwc1        $f10, 0x44($s1)
/* 01AD88 8001B1D8 C6500018 */  lwc1        $f16, 0x18($s2)
/* 01AD8C 8001B1DC 02002025 */  move        $a0, $s0
/* 01AD90 8001B1E0 46105481 */  sub.s       $f18, $f10, $f16
/* 01AD94 8001B1E4 E6120000 */  swc1        $f18, 0x0($s0)
/* 01AD98 8001B1E8 C646001C */  lwc1        $f6, 0x1c($s2)
/* 01AD9C 8001B1EC C6240048 */  lwc1        $f4, 0x48($s1)
/* 01ADA0 8001B1F0 46062201 */  sub.s       $f8, $f4, $f6
/* 01ADA4 8001B1F4 E6080004 */  swc1        $f8, 0x4($s0)
/* 01ADA8 8001B1F8 C6500020 */  lwc1        $f16, 0x20($s2)
/* 01ADAC 8001B1FC C62A004C */  lwc1        $f10, 0x4c($s1)
/* 01ADB0 8001B200 46105481 */  sub.s       $f18, $f10, $f16
/* 01ADB4 8001B204 E6120008 */  swc1        $f18, 0x8($s0)
/* 01ADB8 8001B208 0C00E428 */  jal         func_800390A0
/* 01ADBC 8001B20C AFA30034 */   sw         $v1, 0x34($sp)
/* 01ADC0 8001B210 8FA30034 */  lw          $v1, 0x34($sp)
/* 01ADC4 8001B214 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 01ADC8 8001B218 8C6E0054 */  lw          $t6, 0x54($v1)
/* 01ADCC 8001B21C 51C00034 */  beql        $t6, $zero, .L8001B2F0
/* 01ADD0 8001B220 C4620030 */   lwc1       $f2, 0x30($v1)
/* 01ADD4 8001B224 C6240024 */  lwc1        $f4, 0x24($s1)
/* 01ADD8 8001B228 C6460024 */  lwc1        $f6, 0x24($s2)
/* 01ADDC 8001B22C 46062200 */  add.s       $f8, $f4, $f6
/* 01ADE0 8001B230 4608003C */  c.lt.s      $f0, $f8
/* 01ADE4 8001B234 00000000 */  nop
/* 01ADE8 8001B238 4502002D */  bc1fl       .L8001B2F0
/* 01ADEC 8001B23C C4620030 */   lwc1       $f2, 0x30($v1)
/* 01ADF0 8001B240 8C6F0008 */  lw          $t7, 0x8($v1)
/* 01ADF4 8001B244 3C048007 */  lui         $a0, %hi(D_80071E88)
/* 01ADF8 8001B248 AFAF0028 */  sw          $t7, 0x28($sp)
/* 01ADFC 8001B24C AC600054 */  sw          $zero, 0x54($v1)
/* 01AE00 8001B250 96420036 */  lhu         $v0, 0x36($s2)
/* 01AE04 8001B254 30580002 */  andi        $t8, $v0, 0x2
/* 01AE08 8001B258 17000012 */  bnez        $t8, .L8001B2A4
/* 01AE0C 8001B25C 34590002 */   ori        $t9, $v0, 0x2
/* 01AE10 8001B260 A6590036 */  sh          $t9, 0x36($s2)
/* 01AE14 8001B264 8E280050 */  lw          $t0, 0x50($s1)
/* 01AE18 8001B268 8C841E88 */  lw          $a0, %lo(D_80071E88)($a0)
/* 01AE1C 8001B26C 2405008F */  addiu       $a1, $zero, 0x8f
/* 01AE20 8001B270 3C0641A0 */  lui         $a2, 0x41a0
/* 01AE24 8001B274 14880009 */  bne         $a0, $t0, .L8001B29C
/* 01AE28 8001B278 3C0742C8 */   lui        $a3, 0x42c8
/* 01AE2C 8001B27C 0C004CC4 */  jal         func_80013310
/* 01AE30 8001B280 2405008F */   addiu      $a1, $zero, 0x8f
/* 01AE34 8001B284 3C048007 */  lui         $a0, %hi(D_80071E88)
/* 01AE38 8001B288 8C841E88 */  lw          $a0, %lo(D_80071E88)($a0)
/* 01AE3C 8001B28C 0C004C7F */  jal         func_800131FC
/* 01AE40 8001B290 3C054020 */   lui        $a1, 0x4020
/* 01AE44 8001B294 10000004 */  b           .L8001B2A8
/* 01AE48 8001B298 8FA90028 */   lw         $t1, 0x28($sp)
.L8001B29C:
/* 01AE4C 8001B29C 0C00216C */  jal         func_800085B0
/* 01AE50 8001B2A0 02202025 */   move       $a0, $s1
.L8001B2A4:
/* 01AE54 8001B2A4 8FA90028 */  lw          $t1, 0x28($sp)
.L8001B2A8:
/* 01AE58 8001B2A8 3C0A8002 */  lui         $t2, %hi(func_8001B144)
/* 01AE5C 8001B2AC 11200007 */  beqz        $t1, .L8001B2CC
/* 01AE60 8001B2B0 00000000 */   nop
/* 01AE64 8001B2B4 8D220054 */  lw          $v0, 0x54($t1)
/* 01AE68 8001B2B8 254AB144 */  addiu       $t2, $t2, %lo(func_8001B144)
/* 01AE6C 8001B2BC 240B0001 */  addiu       $t3, $zero, 0x1
/* 01AE70 8001B2C0 AC4A0028 */  sw          $t2, 0x28($v0)
/* 01AE74 8001B2C4 10000003 */  b           .L8001B2D4
/* 01AE78 8001B2C8 AC4B0054 */   sw         $t3, 0x54($v0)
.L8001B2CC:
/* 01AE7C 8001B2CC 0C001C6D */  jal         func_800071B4
/* 01AE80 8001B2D0 8E440050 */   lw         $a0, 0x50($s2)
.L8001B2D4:
/* 01AE84 8001B2D4 44800000 */  mtc1        $zero, $f0
/* 01AE88 8001B2D8 24020001 */  addiu       $v0, $zero, 0x1
/* 01AE8C 8001B2DC E6000000 */  swc1        $f0, 0x0($s0)
/* 01AE90 8001B2E0 E6000004 */  swc1        $f0, 0x4($s0)
/* 01AE94 8001B2E4 10000017 */  b           .L8001B344
/* 01AE98 8001B2E8 E6000008 */   swc1       $f0, 0x8($s0)
/* 01AE9C 8001B2EC C4620030 */  lwc1        $f2, 0x30($v1)
.L8001B2F0:
/* 01AEA0 8001B2F0 4600103C */  c.lt.s      $f2, $f0
/* 01AEA4 8001B2F4 00000000 */  nop
/* 01AEA8 8001B2F8 45020004 */  bc1fl       .L8001B30C
/* 01AEAC 8001B2FC 46000306 */   mov.s      $f12, $f0
/* 01AEB0 8001B300 10000002 */  b           .L8001B30C
/* 01AEB4 8001B304 46001306 */   mov.s      $f12, $f2
/* 01AEB8 8001B308 46000306 */  mov.s       $f12, $f0
.L8001B30C:
/* 01AEBC 8001B30C C42A2C64 */  lwc1        $f10, %lo(D_800B2C64)($at)
/* 01AEC0 8001B310 C6100000 */  lwc1        $f16, 0x0($s0)
/* 01AEC4 8001B314 C6040004 */  lwc1        $f4, 0x4($s0)
/* 01AEC8 8001B318 460A6003 */  div.s       $f0, $f12, $f10
/* 01AECC 8001B31C C6080008 */  lwc1        $f8, 0x8($s0)
/* 01AED0 8001B320 24020002 */  addiu       $v0, $zero, 0x2
/* 01AED4 8001B324 46008482 */  mul.s       $f18, $f16, $f0
/* 01AED8 8001B328 00000000 */  nop
/* 01AEDC 8001B32C 46002182 */  mul.s       $f6, $f4, $f0
/* 01AEE0 8001B330 00000000 */  nop
/* 01AEE4 8001B334 46004282 */  mul.s       $f10, $f8, $f0
/* 01AEE8 8001B338 E6120000 */  swc1        $f18, 0x0($s0)
/* 01AEEC 8001B33C E6060004 */  swc1        $f6, 0x4($s0)
/* 01AEF0 8001B340 E60A0008 */  swc1        $f10, 0x8($s0)
.L8001B344:
/* 01AEF4 8001B344 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01AEF8 8001B348 8FB00018 */  lw          $s0, 0x18($sp)
/* 01AEFC 8001B34C 8FB1001C */  lw          $s1, 0x1c($sp)
/* 01AF00 8001B350 8FB20020 */  lw          $s2, 0x20($sp)
/* 01AF04 8001B354 03E00008 */  jr          $ra
/* 01AF08 8001B358 27BD0038 */   addiu      $sp, $sp, 0x38

glabel func_8001B35C # 7
/* 01AF0C 8001B35C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01AF10 8001B360 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01AF14 8001B364 8C830054 */  lw          $v1, 0x54($a0)
/* 01AF18 8001B368 8C6E0004 */  lw          $t6, 0x4($v1)
/* 01AF1C 8001B36C 11C00023 */  beqz        $t6, .L8001B3FC
/* 01AF20 8001B370 00000000 */   nop
/* 01AF24 8001B374 AFA3001C */  sw          $v1, 0x1c($sp)
/* 01AF28 8001B378 0C00E512 */  jal         func_80039448
/* 01AF2C 8001B37C AFA50024 */   sw         $a1, 0x24($sp)
/* 01AF30 8001B380 44822000 */  mtc1        $v0, $f4
/* 01AF34 8001B384 8FA3001C */  lw          $v1, 0x1c($sp)
/* 01AF38 8001B388 8FA50024 */  lw          $a1, 0x24($sp)
/* 01AF3C 8001B38C 04410006 */  bgez        $v0, .L8001B3A8
/* 01AF40 8001B390 468021A1 */   cvt.d.w    $f6, $f4
/* 01AF44 8001B394 3C0141F0 */  lui         $at, 0x41f0
/* 01AF48 8001B398 44814800 */  mtc1        $at, $f9
/* 01AF4C 8001B39C 44804000 */  mtc1        $zero, $f8
/* 01AF50 8001B3A0 00000000 */  nop
/* 01AF54 8001B3A4 46283180 */  add.d       $f6, $f6, $f8
.L8001B3A8:
/* 01AF58 8001B3A8 3C013DF0 */  lui         $at, 0x3df0
/* 01AF5C 8001B3AC 44815800 */  mtc1        $at, $f11
/* 01AF60 8001B3B0 44805000 */  mtc1        $zero, $f10
/* 01AF64 8001B3B4 3C01800B */  lui         $at, %hi(D_800A8A10)
/* 01AF68 8001B3B8 D4328A10 */  ldc1        $f18, %lo(D_800A8A10)($at)
/* 01AF6C 8001B3BC 462A3402 */  mul.d       $f16, $f6, $f10
/* 01AF70 8001B3C0 3C01800B */  lui         $at, %hi(D_800A8A18)
/* 01AF74 8001B3C4 D4288A18 */  ldc1        $f8, %lo(D_800A8A18)($at)
/* 01AF78 8001B3C8 C46A0000 */  lwc1        $f10, 0x0($v1)
/* 01AF7C 8001B3CC 46328102 */  mul.d       $f4, $f16, $f18
/* 01AF80 8001B3D0 46005421 */  cvt.d.s     $f16, $f10
/* 01AF84 8001B3D4 46282180 */  add.d       $f6, $f4, $f8
/* 01AF88 8001B3D8 4630303C */  c.lt.d      $f6, $f16
/* 01AF8C 8001B3DC 00000000 */  nop
/* 01AF90 8001B3E0 45000006 */  bc1f        .L8001B3FC
/* 01AF94 8001B3E4 00000000 */   nop
/* 01AF98 8001B3E8 C4720020 */  lwc1        $f18, 0x20($v1)
/* 01AF9C 8001B3EC AC600028 */  sw          $zero, 0x28($v1)
/* 01AFA0 8001B3F0 46009107 */  neg.s       $f4, $f18
/* 01AFA4 8001B3F4 1000000E */  b           .L8001B430
/* 01AFA8 8001B3F8 E4640020 */   swc1       $f4, 0x20($v1)
.L8001B3FC:
/* 01AFAC 8001B3FC 3C01800B */  lui         $at, %hi(D_800A8A20)
/* 01AFB0 8001B400 C4288A20 */  lwc1        $f8, %lo(D_800A8A20)($at)
/* 01AFB4 8001B404 C46A0000 */  lwc1        $f10, 0x0($v1)
/* 01AFB8 8001B408 460A403C */  c.lt.s      $f8, $f10
/* 01AFBC 8001B40C 00000000 */  nop
/* 01AFC0 8001B410 45000007 */  bc1f        .L8001B430
/* 01AFC4 8001B414 00000000 */   nop
/* 01AFC8 8001B418 C4660020 */  lwc1        $f6, 0x20($v1)
/* 01AFCC 8001B41C 3C0F8002 */  lui         $t7, %hi(func_8001B144)
/* 01AFD0 8001B420 25EFB144 */  addiu       $t7, $t7, %lo(func_8001B144)
/* 01AFD4 8001B424 46003407 */  neg.s       $f16, $f6
/* 01AFD8 8001B428 AC6F0028 */  sw          $t7, 0x28($v1)
/* 01AFDC 8001B42C E4700020 */  swc1        $f16, 0x20($v1)
.L8001B430:
/* 01AFE0 8001B430 3C01800B */  lui         $at, %hi(D_800A8A24)
/* 01AFE4 8001B434 C4208A24 */  lwc1        $f0, %lo(D_800A8A24)($at)
/* 01AFE8 8001B438 C4640024 */  lwc1        $f4, 0x24($v1)
/* 01AFEC 8001B43C C472001C */  lwc1        $f18, 0x1c($v1)
/* 01AFF0 8001B440 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 01AFF4 8001B444 46002202 */  mul.s       $f8, $f4, $f0
/* 01AFF8 8001B448 24020001 */  addiu       $v0, $zero, 0x1
/* 01AFFC 8001B44C 46089281 */  sub.s       $f10, $f18, $f8
/* 01B000 8001B450 E4AA0000 */  swc1        $f10, 0x0($a1)
/* 01B004 8001B454 C4262C64 */  lwc1        $f6, %lo(D_800B2C64)($at)
/* 01B008 8001B458 3C01428C */  lui         $at, 0x428c
/* 01B00C 8001B45C 44818000 */  mtc1        $at, $f16
/* 01B010 8001B460 C4720020 */  lwc1        $f18, 0x20($v1)
/* 01B014 8001B464 46103102 */  mul.s       $f4, $f6, $f16
/* 01B018 8001B468 46049201 */  sub.s       $f8, $f18, $f4
/* 01B01C 8001B46C E4A80004 */  swc1        $f8, 0x4($a1)
/* 01B020 8001B470 C46A001C */  lwc1        $f10, 0x1c($v1)
/* 01B024 8001B474 C4700024 */  lwc1        $f16, 0x24($v1)
/* 01B028 8001B478 46005182 */  mul.s       $f6, $f10, $f0
/* 01B02C 8001B47C 46103480 */  add.s       $f18, $f6, $f16
/* 01B030 8001B480 E4B20008 */  swc1        $f18, 0x8($a1)
/* 01B034 8001B484 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01B038 8001B488 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01B03C 8001B48C 03E00008 */  jr          $ra
/* 01B040 8001B490 00000000 */   nop

glabel func_8001B494 # 8
/* 01B044 8001B494 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01B048 8001B498 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01B04C 8001B49C 8C830054 */  lw          $v1, 0x54($a0)
/* 01B050 8001B4A0 8C6E0004 */  lw          $t6, 0x4($v1)
/* 01B054 8001B4A4 51C00021 */  beql        $t6, $zero, .L8001B52C
/* 01B058 8001B4A8 3C013F00 */   lui        $at, 0x3f00
/* 01B05C 8001B4AC AFA3001C */  sw          $v1, 0x1c($sp)
/* 01B060 8001B4B0 0C00E512 */  jal         func_80039448
/* 01B064 8001B4B4 AFA50024 */   sw         $a1, 0x24($sp)
/* 01B068 8001B4B8 44822000 */  mtc1        $v0, $f4
/* 01B06C 8001B4BC 8FA3001C */  lw          $v1, 0x1c($sp)
/* 01B070 8001B4C0 8FA50024 */  lw          $a1, 0x24($sp)
/* 01B074 8001B4C4 04410006 */  bgez        $v0, .L8001B4E0
/* 01B078 8001B4C8 468021A1 */   cvt.d.w    $f6, $f4
/* 01B07C 8001B4CC 3C0141F0 */  lui         $at, 0x41f0
/* 01B080 8001B4D0 44814800 */  mtc1        $at, $f9
/* 01B084 8001B4D4 44804000 */  mtc1        $zero, $f8
/* 01B088 8001B4D8 00000000 */  nop
/* 01B08C 8001B4DC 46283180 */  add.d       $f6, $f6, $f8
.L8001B4E0:
/* 01B090 8001B4E0 3C013DF0 */  lui         $at, 0x3df0
/* 01B094 8001B4E4 44815800 */  mtc1        $at, $f11
/* 01B098 8001B4E8 44805000 */  mtc1        $zero, $f10
/* 01B09C 8001B4EC 3C01800B */  lui         $at, %hi(D_800A8A28)
/* 01B0A0 8001B4F0 D4328A28 */  ldc1        $f18, %lo(D_800A8A28)($at)
/* 01B0A4 8001B4F4 462A3402 */  mul.d       $f16, $f6, $f10
/* 01B0A8 8001B4F8 3C01800B */  lui         $at, %hi(D_800A8A30)
/* 01B0AC 8001B4FC D4288A30 */  ldc1        $f8, %lo(D_800A8A30)($at)
/* 01B0B0 8001B500 C46A0000 */  lwc1        $f10, 0x0($v1)
/* 01B0B4 8001B504 46328102 */  mul.d       $f4, $f16, $f18
/* 01B0B8 8001B508 46005421 */  cvt.d.s     $f16, $f10
/* 01B0BC 8001B50C 46282180 */  add.d       $f6, $f4, $f8
/* 01B0C0 8001B510 4630303C */  c.lt.d      $f6, $f16
/* 01B0C4 8001B514 00000000 */  nop
/* 01B0C8 8001B518 45020004 */  bc1fl       .L8001B52C
/* 01B0CC 8001B51C 3C013F00 */   lui        $at, 0x3f00
/* 01B0D0 8001B520 1000000B */  b           .L8001B550
/* 01B0D4 8001B524 AC600028 */   sw         $zero, 0x28($v1)
/* 01B0D8 8001B528 3C013F00 */  lui         $at, 0x3f00
.L8001B52C:
/* 01B0DC 8001B52C 44819000 */  mtc1        $at, $f18
/* 01B0E0 8001B530 C4640000 */  lwc1        $f4, 0x0($v1)
/* 01B0E4 8001B534 3C0F8002 */  lui         $t7, %hi(func_8001B144)
/* 01B0E8 8001B538 25EFB144 */  addiu       $t7, $t7, %lo(func_8001B144)
/* 01B0EC 8001B53C 4604903C */  c.lt.s      $f18, $f4
/* 01B0F0 8001B540 00000000 */  nop
/* 01B0F4 8001B544 45000002 */  bc1f        .L8001B550
/* 01B0F8 8001B548 00000000 */   nop
/* 01B0FC 8001B54C AC6F0028 */  sw          $t7, 0x28($v1)
.L8001B550:
/* 01B100 8001B550 3C01800B */  lui         $at, %hi(D_800A8A38)
/* 01B104 8001B554 C4208A38 */  lwc1        $f0, %lo(D_800A8A38)($at)
/* 01B108 8001B558 C46A0024 */  lwc1        $f10, 0x24($v1)
/* 01B10C 8001B55C C468001C */  lwc1        $f8, 0x1c($v1)
/* 01B110 8001B560 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 01B114 8001B564 46005182 */  mul.s       $f6, $f10, $f0
/* 01B118 8001B568 24020001 */  addiu       $v0, $zero, 0x1
/* 01B11C 8001B56C 46064401 */  sub.s       $f16, $f8, $f6
/* 01B120 8001B570 E4B00000 */  swc1        $f16, 0x0($a1)
/* 01B124 8001B574 C4322C64 */  lwc1        $f18, %lo(D_800B2C64)($at)
/* 01B128 8001B578 3C0141F0 */  lui         $at, 0x41f0
/* 01B12C 8001B57C 44812000 */  mtc1        $at, $f4
/* 01B130 8001B580 C4680020 */  lwc1        $f8, 0x20($v1)
/* 01B134 8001B584 46049282 */  mul.s       $f10, $f18, $f4
/* 01B138 8001B588 460A4181 */  sub.s       $f6, $f8, $f10
/* 01B13C 8001B58C E4A60004 */  swc1        $f6, 0x4($a1)
/* 01B140 8001B590 C470001C */  lwc1        $f16, 0x1c($v1)
/* 01B144 8001B594 C4640024 */  lwc1        $f4, 0x24($v1)
/* 01B148 8001B598 46008482 */  mul.s       $f18, $f16, $f0
/* 01B14C 8001B59C 46049200 */  add.s       $f8, $f18, $f4
/* 01B150 8001B5A0 E4A80008 */  swc1        $f8, 0x8($a1)
/* 01B154 8001B5A4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01B158 8001B5A8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01B15C 8001B5AC 03E00008 */  jr          $ra
/* 01B160 8001B5B0 00000000 */   nop

glabel func_8001B5B4 # 9
/* 01B164 8001B5B4 3C018007 */  lui         $at, %hi(D_80075340)
/* 01B168 8001B5B8 C42C5340 */  lwc1        $f12, %lo(D_80075340)($at)
/* 01B16C 8001B5BC 3C01800B */  lui         $at, %hi(D_800A8A3C)
/* 01B170 8001B5C0 C4248A3C */  lwc1        $f4, %lo(D_800A8A3C)($at)
/* 01B174 8001B5C4 44801000 */  mtc1        $zero, $f2
/* 01B178 8001B5C8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01B17C 8001B5CC 46046300 */  add.s       $f12, $f12, $f4
/* 01B180 8001B5D0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 01B184 8001B5D4 AFB00018 */  sw          $s0, 0x18($sp)
/* 01B188 8001B5D8 8CB00054 */  lw          $s0, 0x54($a1)
/* 01B18C 8001B5DC 4602603C */  c.lt.s      $f12, $f2
/* 01B190 8001B5E0 3C0143B4 */  lui         $at, 0x43b4
/* 01B194 8001B5E4 45020009 */  bc1fl       .L8001B60C
/* 01B198 8001B5E8 3C0143B4 */   lui        $at, 0x43b4
/* 01B19C 8001B5EC 44810000 */  mtc1        $at, $f0
/* 01B1A0 8001B5F0 00000000 */  nop
/* 01B1A4 8001B5F4 46006300 */  add.s       $f12, $f12, $f0
.L8001B5F8:
/* 01B1A8 8001B5F8 4602603C */  c.lt.s      $f12, $f2
/* 01B1AC 8001B5FC 00000000 */  nop
/* 01B1B0 8001B600 4503FFFD */  bc1tl       .L8001B5F8
/* 01B1B4 8001B604 46006300 */   add.s      $f12, $f12, $f0
/* 01B1B8 8001B608 3C0143B4 */  lui         $at, 0x43b4
.L8001B60C:
/* 01B1BC 8001B60C 44810000 */  mtc1        $at, $f0
/* 01B1C0 8001B610 3C018007 */  lui         $at, %hi(D_80075340)
/* 01B1C4 8001B614 460C003E */  c.le.s      $f0, $f12
/* 01B1C8 8001B618 00000000 */  nop
/* 01B1CC 8001B61C 45020007 */  bc1fl       .L8001B63C
/* 01B1D0 8001B620 AFA40020 */   sw         $a0, 0x20($sp)
/* 01B1D4 8001B624 46006301 */  sub.s       $f12, $f12, $f0
.L8001B628:
/* 01B1D8 8001B628 460C003E */  c.le.s      $f0, $f12
/* 01B1DC 8001B62C 00000000 */  nop
/* 01B1E0 8001B630 4503FFFD */  bc1tl       .L8001B628
/* 01B1E4 8001B634 46006301 */   sub.s      $f12, $f12, $f0
/* 01B1E8 8001B638 AFA40020 */  sw          $a0, 0x20($sp)
.L8001B63C:
/* 01B1EC 8001B63C 0C00EB6C */  jal         func_8003ADB0
/* 01B1F0 8001B640 E42C5340 */   swc1       $f12, %lo(D_80075340)($at)
/* 01B1F4 8001B644 3C018007 */  lui         $at, %hi(D_80075340)
/* 01B1F8 8001B648 C42C5340 */  lwc1        $f12, %lo(D_80075340)($at)
/* 01B1FC 8001B64C 3C014120 */  lui         $at, 0x4120
/* 01B200 8001B650 44813000 */  mtc1        $at, $f6
/* 01B204 8001B654 00000000 */  nop
/* 01B208 8001B658 46060202 */  mul.s       $f8, $f0, $f6
/* 01B20C 8001B65C 0C00EB2F */  jal         func_8003ACBC
/* 01B210 8001B660 E608001C */   swc1       $f8, 0x1c($s0)
/* 01B214 8001B664 3C014120 */  lui         $at, 0x4120
/* 01B218 8001B668 44815000 */  mtc1        $at, $f10
/* 01B21C 8001B66C 8FA40020 */  lw          $a0, 0x20($sp)
/* 01B220 8001B670 24010001 */  addiu       $at, $zero, 0x1
/* 01B224 8001B674 460A0402 */  mul.s       $f16, $f0, $f10
/* 01B228 8001B678 10810008 */  beq         $a0, $at, .L8001B69C
/* 01B22C 8001B67C E6100024 */   swc1       $f16, 0x24($s0)
/* 01B230 8001B680 24010002 */  addiu       $at, $zero, 0x2
/* 01B234 8001B684 1081001E */  beq         $a0, $at, .L8001B700
/* 01B238 8001B688 24010003 */   addiu      $at, $zero, 0x3
/* 01B23C 8001B68C 10810035 */  beq         $a0, $at, .L8001B764
/* 01B240 8001B690 00000000 */   nop
/* 01B244 8001B694 1000004C */  b           .L8001B7C8
/* 01B248 8001B698 8FBF001C */   lw         $ra, 0x1c($sp)
.L8001B69C:
/* 01B24C 8001B69C 0C00E512 */  jal         func_80039448
/* 01B250 8001B6A0 00000000 */   nop
/* 01B254 8001B6A4 44829000 */  mtc1        $v0, $f18
/* 01B258 8001B6A8 44804000 */  mtc1        $zero, $f8
/* 01B25C 8001B6AC 04410006 */  bgez        $v0, .L8001B6C8
/* 01B260 8001B6B0 46809121 */   cvt.d.w    $f4, $f18
/* 01B264 8001B6B4 3C0141F0 */  lui         $at, 0x41f0
/* 01B268 8001B6B8 44813800 */  mtc1        $at, $f7
/* 01B26C 8001B6BC 44803000 */  mtc1        $zero, $f6
/* 01B270 8001B6C0 00000000 */  nop
/* 01B274 8001B6C4 46262100 */  add.d       $f4, $f4, $f6
.L8001B6C8:
/* 01B278 8001B6C8 3C013DF0 */  lui         $at, 0x3df0
/* 01B27C 8001B6CC 44814800 */  mtc1        $at, $f9
/* 01B280 8001B6D0 3C013FF0 */  lui         $at, 0x3ff0
/* 01B284 8001B6D4 44818800 */  mtc1        $at, $f17
/* 01B288 8001B6D8 46282282 */  mul.d       $f10, $f4, $f8
/* 01B28C 8001B6DC 44808000 */  mtc1        $zero, $f16
/* 01B290 8001B6E0 3C014008 */  lui         $at, 0x4008
/* 01B294 8001B6E4 44813800 */  mtc1        $at, $f7
/* 01B298 8001B6E8 44803000 */  mtc1        $zero, $f6
/* 01B29C 8001B6EC 46305482 */  mul.d       $f18, $f10, $f16
/* 01B2A0 8001B6F0 46269100 */  add.d       $f4, $f18, $f6
/* 01B2A4 8001B6F4 46202220 */  cvt.s.d     $f8, $f4
/* 01B2A8 8001B6F8 10000032 */  b           .L8001B7C4
/* 01B2AC 8001B6FC E6080020 */   swc1       $f8, 0x20($s0)
.L8001B700:
/* 01B2B0 8001B700 0C00E512 */  jal         func_80039448
/* 01B2B4 8001B704 00000000 */   nop
/* 01B2B8 8001B708 44825000 */  mtc1        $v0, $f10
/* 01B2BC 8001B70C 44803000 */  mtc1        $zero, $f6
/* 01B2C0 8001B710 04410006 */  bgez        $v0, .L8001B72C
/* 01B2C4 8001B714 46805421 */   cvt.d.w    $f16, $f10
/* 01B2C8 8001B718 3C0141F0 */  lui         $at, 0x41f0
/* 01B2CC 8001B71C 44819800 */  mtc1        $at, $f19
/* 01B2D0 8001B720 44809000 */  mtc1        $zero, $f18
/* 01B2D4 8001B724 00000000 */  nop
/* 01B2D8 8001B728 46328400 */  add.d       $f16, $f16, $f18
.L8001B72C:
/* 01B2DC 8001B72C 3C013DF0 */  lui         $at, 0x3df0
/* 01B2E0 8001B730 44813800 */  mtc1        $at, $f7
/* 01B2E4 8001B734 3C014014 */  lui         $at, 0x4014
/* 01B2E8 8001B738 44814800 */  mtc1        $at, $f9
/* 01B2EC 8001B73C 46268102 */  mul.d       $f4, $f16, $f6
/* 01B2F0 8001B740 44804000 */  mtc1        $zero, $f8
/* 01B2F4 8001B744 3C01403E */  lui         $at, 0x403e
/* 01B2F8 8001B748 44819800 */  mtc1        $at, $f19
/* 01B2FC 8001B74C 44809000 */  mtc1        $zero, $f18
/* 01B300 8001B750 46282282 */  mul.d       $f10, $f4, $f8
/* 01B304 8001B754 46325400 */  add.d       $f16, $f10, $f18
/* 01B308 8001B758 462081A0 */  cvt.s.d     $f6, $f16
/* 01B30C 8001B75C 10000019 */  b           .L8001B7C4
/* 01B310 8001B760 E6060020 */   swc1       $f6, 0x20($s0)
.L8001B764:
/* 01B314 8001B764 0C00E512 */  jal         func_80039448
/* 01B318 8001B768 00000000 */   nop
/* 01B31C 8001B76C 44822000 */  mtc1        $v0, $f4
/* 01B320 8001B770 44809000 */  mtc1        $zero, $f18
/* 01B324 8001B774 04410006 */  bgez        $v0, .L8001B790
/* 01B328 8001B778 46802221 */   cvt.d.w    $f8, $f4
/* 01B32C 8001B77C 3C0141F0 */  lui         $at, 0x41f0
/* 01B330 8001B780 44815800 */  mtc1        $at, $f11
/* 01B334 8001B784 44805000 */  mtc1        $zero, $f10
/* 01B338 8001B788 00000000 */  nop
/* 01B33C 8001B78C 462A4200 */  add.d       $f8, $f8, $f10
.L8001B790:
/* 01B340 8001B790 3C013DF0 */  lui         $at, 0x3df0
/* 01B344 8001B794 44819800 */  mtc1        $at, $f19
/* 01B348 8001B798 3C014000 */  lui         $at, 0x4000
/* 01B34C 8001B79C 44813800 */  mtc1        $at, $f7
/* 01B350 8001B7A0 46324402 */  mul.d       $f16, $f8, $f18
/* 01B354 8001B7A4 44803000 */  mtc1        $zero, $f6
/* 01B358 8001B7A8 3C014020 */  lui         $at, 0x4020
/* 01B35C 8001B7AC 44815800 */  mtc1        $at, $f11
/* 01B360 8001B7B0 44805000 */  mtc1        $zero, $f10
/* 01B364 8001B7B4 46268102 */  mul.d       $f4, $f16, $f6
/* 01B368 8001B7B8 462A2200 */  add.d       $f8, $f4, $f10
/* 01B36C 8001B7BC 462044A0 */  cvt.s.d     $f18, $f8
/* 01B370 8001B7C0 E6120020 */  swc1        $f18, 0x20($s0)
.L8001B7C4:
/* 01B374 8001B7C4 8FBF001C */  lw          $ra, 0x1c($sp)
.L8001B7C8:
/* 01B378 8001B7C8 8FB00018 */  lw          $s0, 0x18($sp)
/* 01B37C 8001B7CC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01B380 8001B7D0 03E00008 */  jr          $ra
/* 01B384 8001B7D4 00000000 */   nop

glabel func_8001B7D8 # 10
/* 01B388 8001B7D8 27BDFF28 */  addiu       $sp, $sp, -0xd8
/* 01B38C 8001B7DC 3C013F00 */  lui         $at, 0x3f00
/* 01B390 8001B7E0 C7AC00E8 */  lwc1        $f12, 0xe8($sp)
/* 01B394 8001B7E4 44812000 */  mtc1        $at, $f4
/* 01B398 8001B7E8 AFB7004C */  sw          $s7, 0x4c($sp)
/* 01B39C 8001B7EC 3C178007 */  lui         $s7, %hi(D_80075344)
/* 01B3A0 8001B7F0 460C2182 */  mul.s       $f6, $f4, $f12
/* 01B3A4 8001B7F4 26F75344 */  addiu       $s7, $s7, %lo(D_80075344)
/* 01B3A8 8001B7F8 AFBE0050 */  sw          $fp, 0x50($sp)
/* 01B3AC 8001B7FC AFB60048 */  sw          $s6, 0x48($sp)
/* 01B3B0 8001B800 F7B80028 */  sdc1        $f24, 0x28($sp)
/* 01B3B4 8001B804 F7B60020 */  sdc1        $f22, 0x20($sp)
/* 01B3B8 8001B808 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 01B3BC 8001B80C 4485A000 */  mtc1        $a1, $f20
/* 01B3C0 8001B810 4486B000 */  mtc1        $a2, $f22
/* 01B3C4 8001B814 4487C000 */  mtc1        $a3, $f24
/* 01B3C8 8001B818 0080B025 */  move        $s6, $a0
/* 01B3CC 8001B81C 27BE0070 */  addiu       $fp, $sp, 0x70
/* 01B3D0 8001B820 AFBF0054 */  sw          $ra, 0x54($sp)
/* 01B3D4 8001B824 3C018007 */  lui         $at, %hi(D_80075368)
/* 01B3D8 8001B828 E6EC0000 */  swc1        $f12, 0x0($s7)
/* 01B3DC 8001B82C E6EC0004 */  swc1        $f12, 0x4($s7)
/* 01B3E0 8001B830 E6EC0008 */  swc1        $f12, 0x8($s7)
/* 01B3E4 8001B834 AFB50044 */  sw          $s5, 0x44($sp)
/* 01B3E8 8001B838 AFB40040 */  sw          $s4, 0x40($sp)
/* 01B3EC 8001B83C AFB3003C */  sw          $s3, 0x3c($sp)
/* 01B3F0 8001B840 AFB20038 */  sw          $s2, 0x38($sp)
/* 01B3F4 8001B844 AFB10034 */  sw          $s1, 0x34($sp)
/* 01B3F8 8001B848 AFB00030 */  sw          $s0, 0x30($sp)
/* 01B3FC 8001B84C E4265368 */  swc1        $f6, %lo(D_80075368)($at)
/* 01B400 8001B850 03C02025 */  move        $a0, $fp
/* 01B404 8001B854 0C013C58 */  jal         func_8004F160
/* 01B408 8001B858 24050058 */   addiu      $a1, $zero, 0x58
/* 01B40C 8001B85C 8FAF0104 */  lw          $t7, 0x104($sp)
/* 01B410 8001B860 3C013F80 */  lui         $at, 0x3f80
/* 01B414 8001B864 C7A800F8 */  lwc1        $f8, 0xf8($sp)
/* 01B418 8001B868 C7AA00FC */  lwc1        $f10, 0xfc($sp)
/* 01B41C 8001B86C C7B00100 */  lwc1        $f16, 0x100($sp)
/* 01B420 8001B870 C7B200F4 */  lwc1        $f18, 0xf4($sp)
/* 01B424 8001B874 8FAE00EC */  lw          $t6, 0xec($sp)
/* 01B428 8001B878 C7A400F0 */  lwc1        $f4, 0xf0($sp)
/* 01B42C 8001B87C 44813000 */  mtc1        $at, $f6
/* 01B430 8001B880 3C058007 */  lui         $a1, %hi(D_80068E30)
/* 01B434 8001B884 000FC080 */  sll         $t8, $t7, 2
/* 01B438 8001B888 00B82821 */  addu        $a1, $a1, $t8
/* 01B43C 8001B88C 8CA58E30 */  lw          $a1, %lo(D_80068E30)($a1)
/* 01B440 8001B890 27A400A8 */  addiu       $a0, $sp, 0xa8
/* 01B444 8001B894 E7A8007C */  swc1        $f8, 0x7c($sp)
/* 01B448 8001B898 E7AA0080 */  swc1        $f10, 0x80($sp)
/* 01B44C 8001B89C E7B00084 */  swc1        $f16, 0x84($sp)
/* 01B450 8001B8A0 E7B20088 */  swc1        $f18, 0x88($sp)
/* 01B454 8001B8A4 AFAE009C */  sw          $t6, 0x9c($sp)
/* 01B458 8001B8A8 E7A400A0 */  swc1        $f4, 0xa0($sp)
/* 01B45C 8001B8AC 0C0023F3 */  jal         func_80008FCC
/* 01B460 8001B8B0 E7A600A4 */   swc1       $f6, 0xa4($sp)
/* 01B464 8001B8B4 8FB90108 */  lw          $t9, 0x108($sp)
/* 01B468 8001B8B8 3C058007 */  lui         $a1, %hi(D_80069250)
/* 01B46C 8001B8BC 27A400B4 */  addiu       $a0, $sp, 0xb4
/* 01B470 8001B8C0 00194080 */  sll         $t0, $t9, 2
/* 01B474 8001B8C4 00A82821 */  addu        $a1, $a1, $t0
/* 01B478 8001B8C8 0C0023F3 */  jal         func_80008FCC
/* 01B47C 8001B8CC 8CA59250 */   lw         $a1, %lo(D_80069250)($a1)
/* 01B480 8001B8D0 3C0D0100 */  lui         $t5, 0x100
/* 01B484 8001B8D4 240900FF */  addiu       $t1, $zero, 0xff
/* 01B488 8001B8D8 240A00FF */  addiu       $t2, $zero, 0xff
/* 01B48C 8001B8DC 240B00FF */  addiu       $t3, $zero, 0xff
/* 01B490 8001B8E0 240C00FF */  addiu       $t4, $zero, 0xff
/* 01B494 8001B8E4 25AD0B08 */  addiu       $t5, $t5, 0xb08
/* 01B498 8001B8E8 3C018007 */  lui         $at, %hi(D_80075374)
/* 01B49C 8001B8EC A3A900C0 */  sb          $t1, 0xc0($sp)
/* 01B4A0 8001B8F0 A3AA00C1 */  sb          $t2, 0xc1($sp)
/* 01B4A4 8001B8F4 A3AB00C2 */  sb          $t3, 0xc2($sp)
/* 01B4A8 8001B8F8 A3AC00C3 */  sb          $t4, 0xc3($sp)
/* 01B4AC 8001B8FC 12C0000B */  beqz        $s6, .L8001B92C
/* 01B4B0 8001B900 AC2D5374 */   sw         $t5, %lo(D_80075374)($at)
/* 01B4B4 8001B904 24010001 */  addiu       $at, $zero, 0x1
/* 01B4B8 8001B908 12C10008 */  beq         $s6, $at, .L8001B92C
/* 01B4BC 8001B90C 24010002 */   addiu      $at, $zero, 0x2
/* 01B4C0 8001B910 12C1000A */  beq         $s6, $at, .L8001B93C
/* 01B4C4 8001B914 3C0F8002 */   lui        $t7, %hi(func_8001B35C)
/* 01B4C8 8001B918 24010003 */  addiu       $at, $zero, 0x3
/* 01B4CC 8001B91C 12C1000A */  beq         $s6, $at, .L8001B948
/* 01B4D0 8001B920 3C188002 */   lui        $t8, %hi(func_8001B494)
/* 01B4D4 8001B924 1000000A */  b           .L8001B950
/* 01B4D8 8001B928 00000000 */   nop
.L8001B92C:
/* 01B4DC 8001B92C 3C0E8002 */  lui         $t6, %hi(func_8001B144)
/* 01B4E0 8001B930 25CEB144 */  addiu       $t6, $t6, %lo(func_8001B144)
/* 01B4E4 8001B934 10000006 */  b           .L8001B950
/* 01B4E8 8001B938 AFAE0098 */   sw         $t6, 0x98($sp)
.L8001B93C:
/* 01B4EC 8001B93C 25EFB35C */  addiu       $t7, $t7, %lo(func_8001B35C)
/* 01B4F0 8001B940 10000003 */  b           .L8001B950
/* 01B4F4 8001B944 AFAF0098 */   sw         $t7, 0x98($sp)
.L8001B948:
/* 01B4F8 8001B948 2718B494 */  addiu       $t8, $t8, %lo(func_8001B494)
/* 01B4FC 8001B94C AFB80098 */  sw          $t8, 0x98($sp)
.L8001B950:
/* 01B500 8001B950 0C001B0D */  jal         func_80006C34
/* 01B504 8001B954 00000000 */   nop
/* 01B508 8001B958 AFA200D4 */  sw          $v0, 0xd4($sp)
/* 01B50C 8001B95C 0C001AD8 */  jal         func_80006B60
/* 01B510 8001B960 02E02025 */   move       $a0, $s7
/* 01B514 8001B964 8FB900D4 */  lw          $t9, 0xd4($sp)
/* 01B518 8001B968 0040A025 */  move        $s4, $v0
/* 01B51C 8001B96C 03C05025 */  move        $t2, $fp
/* 01B520 8001B970 AF22002C */  sw          $v0, 0x2c($t9)
/* 01B524 8001B974 8C500054 */  lw          $s0, 0x54($v0)
/* 01B528 8001B978 E4580020 */  swc1        $f24, 0x20($v0)
/* 01B52C 8001B97C E456001C */  swc1        $f22, 0x1c($v0)
/* 01B530 8001B980 E4540018 */  swc1        $f20, 0x18($v0)
/* 01B534 8001B984 E458004C */  swc1        $f24, 0x4c($v0)
/* 01B538 8001B988 E4560048 */  swc1        $f22, 0x48($v0)
/* 01B53C 8001B98C E4540044 */  swc1        $f20, 0x44($v0)
/* 01B540 8001B990 27C90054 */  addiu       $t1, $fp, 0x54
/* 01B544 8001B994 02005825 */  move        $t3, $s0
.L8001B998:
/* 01B548 8001B998 8D410000 */  lw          $at, 0x0($t2)
/* 01B54C 8001B99C 254A000C */  addiu       $t2, $t2, 0xc
/* 01B550 8001B9A0 256B000C */  addiu       $t3, $t3, 0xc
/* 01B554 8001B9A4 AD61FFF4 */  sw          $at, -0xc($t3)
/* 01B558 8001B9A8 8D41FFF8 */  lw          $at, -0x8($t2)
/* 01B55C 8001B9AC AD61FFF8 */  sw          $at, -0x8($t3)
/* 01B560 8001B9B0 8D41FFFC */  lw          $at, -0x4($t2)
/* 01B564 8001B9B4 1549FFF8 */  bne         $t2, $t1, .L8001B998
/* 01B568 8001B9B8 AD61FFFC */   sw         $at, -0x4($t3)
/* 01B56C 8001B9BC 8D410000 */  lw          $at, 0x0($t2)
/* 01B570 8001B9C0 240C0001 */  addiu       $t4, $zero, 0x1
/* 01B574 8001B9C4 02C02025 */  move        $a0, $s6
/* 01B578 8001B9C8 AD610000 */  sw          $at, 0x0($t3)
/* 01B57C 8001B9CC C7A800F0 */  lwc1        $f8, 0xf0($sp)
/* 01B580 8001B9D0 AE0C0054 */  sw          $t4, 0x54($s0)
/* 01B584 8001B9D4 00402825 */  move        $a1, $v0
/* 01B588 8001B9D8 0C006D6D */  jal         func_8001B5B4
/* 01B58C 8001B9DC E6080030 */   swc1       $f8, 0x30($s0)
/* 01B590 8001B9E0 8FB5010C */  lw          $s5, 0x10c($sp)
/* 01B594 8001B9E4 02009825 */  move        $s3, $s0
/* 01B598 8001B9E8 02808825 */  move        $s1, $s4
/* 01B59C 8001B9EC 26B5FFFF */  addiu       $s5, $s5, -0x1
/* 01B5A0 8001B9F0 1AA00024 */  blez        $s5, .L8001BA84
/* 01B5A4 8001B9F4 00009025 */   move       $s2, $zero
.L8001B9F8:
/* 01B5A8 8001B9F8 0C001AD8 */  jal         func_80006B60
/* 01B5AC 8001B9FC 02E02025 */   move       $a0, $s7
/* 01B5B0 8001BA00 AE220028 */  sw          $v0, 0x28($s1)
/* 01B5B4 8001BA04 8C500054 */  lw          $s0, 0x54($v0)
/* 01B5B8 8001BA08 0040A025 */  move        $s4, $v0
/* 01B5BC 8001BA0C E4580020 */  swc1        $f24, 0x20($v0)
/* 01B5C0 8001BA10 E456001C */  swc1        $f22, 0x1c($v0)
/* 01B5C4 8001BA14 E4540018 */  swc1        $f20, 0x18($v0)
/* 01B5C8 8001BA18 E458004C */  swc1        $f24, 0x4c($v0)
/* 01B5CC 8001BA1C E4560048 */  swc1        $f22, 0x48($v0)
/* 01B5D0 8001BA20 E4540044 */  swc1        $f20, 0x44($v0)
/* 01B5D4 8001BA24 03C07825 */  move        $t7, $fp
/* 01B5D8 8001BA28 27CE0054 */  addiu       $t6, $fp, 0x54
/* 01B5DC 8001BA2C 0200C025 */  move        $t8, $s0
.L8001BA30:
/* 01B5E0 8001BA30 8DE10000 */  lw          $at, 0x0($t7)
/* 01B5E4 8001BA34 25EF000C */  addiu       $t7, $t7, 0xc
/* 01B5E8 8001BA38 2718000C */  addiu       $t8, $t8, 0xc
/* 01B5EC 8001BA3C AF01FFF4 */  sw          $at, -0xc($t8)
/* 01B5F0 8001BA40 8DE1FFF8 */  lw          $at, -0x8($t7)
/* 01B5F4 8001BA44 AF01FFF8 */  sw          $at, -0x8($t8)
/* 01B5F8 8001BA48 8DE1FFFC */  lw          $at, -0x4($t7)
/* 01B5FC 8001BA4C 15EEFFF8 */  bne         $t7, $t6, .L8001BA30
/* 01B600 8001BA50 AF01FFFC */   sw         $at, -0x4($t8)
/* 01B604 8001BA54 8DE10000 */  lw          $at, 0x0($t7)
/* 01B608 8001BA58 02C02025 */  move        $a0, $s6
/* 01B60C 8001BA5C 00402825 */  move        $a1, $v0
/* 01B610 8001BA60 AF010000 */  sw          $at, 0x0($t8)
/* 01B614 8001BA64 AE000054 */  sw          $zero, 0x54($s0)
/* 01B618 8001BA68 AE620008 */  sw          $v0, 0x8($s3)
/* 01B61C 8001BA6C 0C006D6D */  jal         func_8001B5B4
/* 01B620 8001BA70 AE110004 */   sw         $s1, 0x4($s0)
/* 01B624 8001BA74 26520001 */  addiu       $s2, $s2, 0x1
/* 01B628 8001BA78 02009825 */  move        $s3, $s0
/* 01B62C 8001BA7C 1655FFDE */  bne         $s2, $s5, .L8001B9F8
/* 01B630 8001BA80 02808825 */   move       $s1, $s4
.L8001BA84:
/* 01B634 8001BA84 0C001BB8 */  jal         func_80006EE0
/* 01B638 8001BA88 8FA400D4 */   lw         $a0, 0xd4($sp)
/* 01B63C 8001BA8C 0C001B4C */  jal         func_80006D30
/* 01B640 8001BA90 8FA400D4 */   lw         $a0, 0xd4($sp)
/* 01B644 8001BA94 0C001C1B */  jal         func_8000706C
/* 01B648 8001BA98 8FA400D4 */   lw         $a0, 0xd4($sp)
/* 01B64C 8001BA9C 8FBF0054 */  lw          $ra, 0x54($sp)
/* 01B650 8001BAA0 8FA200D4 */  lw          $v0, 0xd4($sp)
/* 01B654 8001BAA4 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 01B658 8001BAA8 D7B60020 */  ldc1        $f22, 0x20($sp)
/* 01B65C 8001BAAC D7B80028 */  ldc1        $f24, 0x28($sp)
/* 01B660 8001BAB0 8FB00030 */  lw          $s0, 0x30($sp)
/* 01B664 8001BAB4 8FB10034 */  lw          $s1, 0x34($sp)
/* 01B668 8001BAB8 8FB20038 */  lw          $s2, 0x38($sp)
/* 01B66C 8001BABC 8FB3003C */  lw          $s3, 0x3c($sp)
/* 01B670 8001BAC0 8FB40040 */  lw          $s4, 0x40($sp)
/* 01B674 8001BAC4 8FB50044 */  lw          $s5, 0x44($sp)
/* 01B678 8001BAC8 8FB60048 */  lw          $s6, 0x48($sp)
/* 01B67C 8001BACC 8FB7004C */  lw          $s7, 0x4c($sp)
/* 01B680 8001BAD0 8FBE0050 */  lw          $fp, 0x50($sp)
/* 01B684 8001BAD4 03E00008 */  jr          $ra
/* 01B688 8001BAD8 27BD00D8 */   addiu      $sp, $sp, 0xd8
/* 01B68C 8001BADC 00000000 */  nop
