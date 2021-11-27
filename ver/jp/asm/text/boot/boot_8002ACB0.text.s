.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8002ACB0 # 0
/* 02A860 8002ACB0 3C03800F */  lui         $v1, %hi(D_800F6300)
/* 02A864 8002ACB4 24636300 */  addiu       $v1, $v1, %lo(D_800F6300)
/* 02A868 8002ACB8 3C02800F */  lui         $v0, %hi(D_800F62E0)
/* 02A86C 8002ACBC C4640000 */  lwc1        $f4, 0x0($v1)
/* 02A870 8002ACC0 C4660004 */  lwc1        $f6, 0x4($v1)
/* 02A874 8002ACC4 C4680008 */  lwc1        $f8, 0x8($v1)
/* 02A878 8002ACC8 244262E0 */  addiu       $v0, $v0, %lo(D_800F62E0)
/* 02A87C 8002ACCC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02A880 8002ACD0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02A884 8002ACD4 E4440000 */  swc1        $f4, 0x0($v0)
/* 02A888 8002ACD8 E4460004 */  swc1        $f6, 0x4($v0)
/* 02A88C 8002ACDC E4480008 */  swc1        $f8, 0x8($v0)
/* 02A890 8002ACE0 C48A0000 */  lwc1        $f10, 0x0($a0)
/* 02A894 8002ACE4 3C05800F */  lui         $a1, %hi(D_800F62F0)
/* 02A898 8002ACE8 24A562F0 */  addiu       $a1, $a1, %lo(D_800F62F0)
/* 02A89C 8002ACEC E4AA0000 */  swc1        $f10, 0x0($a1)
/* 02A8A0 8002ACF0 C4900004 */  lwc1        $f16, 0x4($a0)
/* 02A8A4 8002ACF4 E4B00004 */  swc1        $f16, 0x4($a1)
/* 02A8A8 8002ACF8 C4920008 */  lwc1        $f18, 0x8($a0)
/* 02A8AC 8002ACFC 0C002671 */  jal         func_800099C4
/* 02A8B0 8002AD00 E4B20008 */   swc1       $f18, 0x8($a1)
/* 02A8B4 8002AD04 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02A8B8 8002AD08 3C01800F */  lui         $at, %hi(D_800F630C)
/* 02A8BC 8002AD0C AC23630C */  sw          $v1, %lo(D_800F630C)($at)
/* 02A8C0 8002AD10 03E00008 */  jr          $ra
/* 02A8C4 8002AD14 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8002AD18 # 1
/* 02A8C8 8002AD18 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02A8CC 8002AD1C AFBF0014 */  sw          $ra, 0x14($sp)
/* 02A8D0 8002AD20 C4840000 */  lwc1        $f4, 0x0($a0)
/* 02A8D4 8002AD24 3C02800F */  lui         $v0, %hi(D_800F62E0)
/* 02A8D8 8002AD28 244262E0 */  addiu       $v0, $v0, %lo(D_800F62E0)
/* 02A8DC 8002AD2C E4440000 */  swc1        $f4, 0x0($v0)
/* 02A8E0 8002AD30 C4860004 */  lwc1        $f6, 0x4($a0)
/* 02A8E4 8002AD34 3C03800F */  lui         $v1, %hi(D_800F62F0)
/* 02A8E8 8002AD38 246362F0 */  addiu       $v1, $v1, %lo(D_800F62F0)
/* 02A8EC 8002AD3C E4460004 */  swc1        $f6, 0x4($v0)
/* 02A8F0 8002AD40 C4880008 */  lwc1        $f8, 0x8($a0)
/* 02A8F4 8002AD44 3C05800F */  lui         $a1, %hi(D_800F6300)
/* 02A8F8 8002AD48 24A56300 */  addiu       $a1, $a1, %lo(D_800F6300)
/* 02A8FC 8002AD4C E4480008 */  swc1        $f8, 0x8($v0)
/* 02A900 8002AD50 C48A0000 */  lwc1        $f10, 0x0($a0)
/* 02A904 8002AD54 E46A0000 */  swc1        $f10, 0x0($v1)
/* 02A908 8002AD58 C4900004 */  lwc1        $f16, 0x4($a0)
/* 02A90C 8002AD5C E4700004 */  swc1        $f16, 0x4($v1)
/* 02A910 8002AD60 C4920008 */  lwc1        $f18, 0x8($a0)
/* 02A914 8002AD64 E4720008 */  swc1        $f18, 0x8($v1)
/* 02A918 8002AD68 C4840000 */  lwc1        $f4, 0x0($a0)
/* 02A91C 8002AD6C E4A40000 */  swc1        $f4, 0x0($a1)
/* 02A920 8002AD70 C4860004 */  lwc1        $f6, 0x4($a0)
/* 02A924 8002AD74 E4A60004 */  swc1        $f6, 0x4($a1)
/* 02A928 8002AD78 C4880008 */  lwc1        $f8, 0x8($a0)
/* 02A92C 8002AD7C 0C002671 */  jal         func_800099C4
/* 02A930 8002AD80 E4A80008 */   swc1       $f8, 0x8($a1)
/* 02A934 8002AD84 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02A938 8002AD88 3C01800F */  lui         $at, %hi(D_800F630C)
/* 02A93C 8002AD8C AC23630C */  sw          $v1, %lo(D_800F630C)($at)
/* 02A940 8002AD90 03E00008 */  jr          $ra
/* 02A944 8002AD94 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8002AD98 # 2
/* 02A948 8002AD98 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02A94C 8002AD9C AFBF001C */  sw          $ra, 0x1c($sp)
/* 02A950 8002ADA0 0C002671 */  jal         func_800099C4
/* 02A954 8002ADA4 AFA40020 */   sw         $a0, 0x20($sp)
/* 02A958 8002ADA8 00402025 */  move        $a0, $v0
/* 02A95C 8002ADAC 0C0143B2 */  jal         func_80050EC8
/* 02A960 8002ADB0 00602825 */   move       $a1, $v1
/* 02A964 8002ADB4 3C0E800F */  lui         $t6, %hi(D_800F630C)
/* 02A968 8002ADB8 8DCE630C */  lw          $t6, %lo(D_800F630C)($t6)
/* 02A96C 8002ADBC 3C04800F */  lui         $a0, %hi(D_800F62E0)
/* 02A970 8002ADC0 3C05800F */  lui         $a1, %hi(D_800F62F0)
/* 02A974 8002ADC4 448E2000 */  mtc1        $t6, $f4
/* 02A978 8002ADC8 24A562F0 */  addiu       $a1, $a1, %lo(D_800F62F0)
/* 02A97C 8002ADCC 248462E0 */  addiu       $a0, $a0, %lo(D_800F62E0)
/* 02A980 8002ADD0 8FA60020 */  lw          $a2, 0x20($sp)
/* 02A984 8002ADD4 3C074416 */  lui         $a3, 0x4416
/* 02A988 8002ADD8 05C10005 */  bgez        $t6, .L8002ADF0
/* 02A98C 8002ADDC 468021A0 */   cvt.s.w    $f6, $f4
/* 02A990 8002ADE0 3C014F80 */  lui         $at, 0x4f80
/* 02A994 8002ADE4 44814000 */  mtc1        $at, $f8
/* 02A998 8002ADE8 00000000 */  nop
/* 02A99C 8002ADEC 46083180 */  add.s       $f6, $f6, $f8
.L8002ADF0:
/* 02A9A0 8002ADF0 46060281 */  sub.s       $f10, $f0, $f6
/* 02A9A4 8002ADF4 0C003109 */  jal         func_8000C424
/* 02A9A8 8002ADF8 E7AA0010 */   swc1       $f10, 0x10($sp)
/* 02A9AC 8002ADFC 8FA60020 */  lw          $a2, 0x20($sp)
/* 02A9B0 8002AE00 3C04800F */  lui         $a0, %hi(D_800F6300)
/* 02A9B4 8002AE04 24846300 */  addiu       $a0, $a0, %lo(D_800F6300)
/* 02A9B8 8002AE08 C4D00000 */  lwc1        $f16, 0x0($a2)
/* 02A9BC 8002AE0C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 02A9C0 8002AE10 E4900000 */  swc1        $f16, 0x0($a0)
/* 02A9C4 8002AE14 C4D20004 */  lwc1        $f18, 0x4($a2)
/* 02A9C8 8002AE18 E4920004 */  swc1        $f18, 0x4($a0)
/* 02A9CC 8002AE1C C4C40008 */  lwc1        $f4, 0x8($a2)
/* 02A9D0 8002AE20 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02A9D4 8002AE24 03E00008 */  jr          $ra
/* 02A9D8 8002AE28 E4840008 */   swc1       $f4, 0x8($a0)

glabel func_8002AE2C # 3
/* 02A9DC 8002AE2C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02A9E0 8002AE30 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02A9E4 8002AE34 0C045799 */  jal         func_80115E64
/* 02A9E8 8002AE38 AFA40018 */   sw         $a0, 0x18($sp)
/* 02A9EC 8002AE3C 8FA50018 */  lw          $a1, 0x18($sp)
/* 02A9F0 8002AE40 3C03800A */  lui         $v1, %hi(D_8009F0F0)
/* 02A9F4 8002AE44 2463F0F0 */  addiu       $v1, $v1, %lo(D_8009F0F0)
/* 02A9F8 8002AE48 00057080 */  sll         $t6, $a1, 2
/* 02A9FC 8002AE4C 01C57021 */  addu        $t6, $t6, $a1
/* 02AA00 8002AE50 000E7080 */  sll         $t6, $t6, 2
/* 02AA04 8002AE54 01C57023 */  subu        $t6, $t6, $a1
/* 02AA08 8002AE58 000E7080 */  sll         $t6, $t6, 2
/* 02AA0C 8002AE5C 006E7821 */  addu        $t7, $v1, $t6
/* 02AA10 8002AE60 0002C080 */  sll         $t8, $v0, 2
/* 02AA14 8002AE64 01F8C821 */  addu        $t9, $t7, $t8
/* 02AA18 8002AE68 8F280000 */  lw          $t0, 0x0($t9)
/* 02AA1C 8002AE6C 00054880 */  sll         $t1, $a1, 2
/* 02AA20 8002AE70 01254821 */  addu        $t1, $t1, $a1
/* 02AA24 8002AE74 05010003 */  bgez        $t0, .L8002AE84
/* 02AA28 8002AE78 00094880 */   sll        $t1, $t1, 2
/* 02AA2C 8002AE7C 1000000D */  b           .L8002AEB4
/* 02AA30 8002AE80 00001025 */   move       $v0, $zero
.L8002AE84:
/* 02AA34 8002AE84 01254823 */  subu        $t1, $t1, $a1
/* 02AA38 8002AE88 00094880 */  sll         $t1, $t1, 2
/* 02AA3C 8002AE8C 00695021 */  addu        $t2, $v1, $t1
/* 02AA40 8002AE90 8D44000C */  lw          $a0, 0xc($t2)
/* 02AA44 8002AE94 2401FFFF */  addiu       $at, $zero, -0x1
/* 02AA48 8002AE98 24020001 */  addiu       $v0, $zero, 0x1
/* 02AA4C 8002AE9C 10810005 */  beq         $a0, $at, .L8002AEB4
/* 02AA50 8002AEA0 00000000 */   nop
/* 02AA54 8002AEA4 0C00C14B */  jal         func_8003052C
/* 02AA58 8002AEA8 00000000 */   nop
/* 02AA5C 8002AEAC 10000002 */  b           .L8002AEB8
/* 02AA60 8002AEB0 8FBF0014 */   lw         $ra, 0x14($sp)
.L8002AEB4:
/* 02AA64 8002AEB4 8FBF0014 */  lw          $ra, 0x14($sp)
.L8002AEB8:
/* 02AA68 8002AEB8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02AA6C 8002AEBC 03E00008 */  jr          $ra
/* 02AA70 8002AEC0 00000000 */   nop

glabel func_8002AEC4 # 4
/* 02AA74 8002AEC4 27BDFE90 */  addiu       $sp, $sp, -0x170
/* 02AA78 8002AEC8 AFB60040 */  sw          $s6, 0x40($sp)
/* 02AA7C 8002AECC AFB1002C */  sw          $s1, 0x2c($sp)
/* 02AA80 8002AED0 AFB00028 */  sw          $s0, 0x28($sp)
/* 02AA84 8002AED4 3C0E800A */  lui         $t6, %hi(D_8009F44C)
/* 02AA88 8002AED8 3C10800A */  lui         $s0, %hi(D_8009F444)
/* 02AA8C 8002AEDC 27B10128 */  addiu       $s1, $sp, 0x128
/* 02AA90 8002AEE0 3C16E200 */  lui         $s6, 0xe200
/* 02AA94 8002AEE4 AFB40038 */  sw          $s4, 0x38($sp)
/* 02AA98 8002AEE8 AFB30034 */  sw          $s3, 0x34($sp)
/* 02AA9C 8002AEEC AFB20030 */  sw          $s2, 0x30($sp)
/* 02AAA0 8002AEF0 25CEF44C */  addiu       $t6, $t6, %lo(D_8009F44C)
/* 02AAA4 8002AEF4 3C12E700 */  lui         $s2, 0xe700
/* 02AAA8 8002AEF8 00809825 */  move        $s3, $a0
/* 02AAAC 8002AEFC 27B400E0 */  addiu       $s4, $sp, 0xe0
/* 02AAB0 8002AF00 36D6001C */  ori         $s6, $s6, 0x1c
/* 02AAB4 8002AF04 2610F444 */  addiu       $s0, $s0, %lo(D_8009F444)
/* 02AAB8 8002AF08 AFBF004C */  sw          $ra, 0x4c($sp)
/* 02AABC 8002AF0C AFBE0048 */  sw          $fp, 0x48($sp)
/* 02AAC0 8002AF10 AFB70044 */  sw          $s7, 0x44($sp)
/* 02AAC4 8002AF14 AFB5003C */  sw          $s5, 0x3c($sp)
/* 02AAC8 8002AF18 F7B60020 */  sdc1        $f22, 0x20($sp)
/* 02AACC 8002AF1C F7B40018 */  sdc1        $f20, 0x18($sp)
/* 02AAD0 8002AF20 25D90048 */  addiu       $t9, $t6, 0x48
/* 02AAD4 8002AF24 02204025 */  move        $t0, $s1
.L8002AF28:
/* 02AAD8 8002AF28 8DC10000 */  lw          $at, 0x0($t6)
/* 02AADC 8002AF2C 25CE000C */  addiu       $t6, $t6, 0xc
/* 02AAE0 8002AF30 2508000C */  addiu       $t0, $t0, 0xc
/* 02AAE4 8002AF34 AD01FFF4 */  sw          $at, -0xc($t0)
/* 02AAE8 8002AF38 8DC1FFF8 */  lw          $at, -0x8($t6)
/* 02AAEC 8002AF3C AD01FFF8 */  sw          $at, -0x8($t0)
/* 02AAF0 8002AF40 8DC1FFFC */  lw          $at, -0x4($t6)
/* 02AAF4 8002AF44 15D9FFF8 */  bne         $t6, $t9, .L8002AF28
/* 02AAF8 8002AF48 AD01FFFC */   sw         $at, -0x4($t0)
/* 02AAFC 8002AF4C 3C09800A */  lui         $t1, %hi(D_8009F494)
/* 02AB00 8002AF50 2529F494 */  addiu       $t1, $t1, %lo(D_8009F494)
/* 02AB04 8002AF54 252C0048 */  addiu       $t4, $t1, 0x48
/* 02AB08 8002AF58 02806825 */  move        $t5, $s4
.L8002AF5C:
/* 02AB0C 8002AF5C 8D210000 */  lw          $at, 0x0($t1)
/* 02AB10 8002AF60 2529000C */  addiu       $t1, $t1, 0xc
/* 02AB14 8002AF64 25AD000C */  addiu       $t5, $t5, 0xc
/* 02AB18 8002AF68 ADA1FFF4 */  sw          $at, -0xc($t5)
/* 02AB1C 8002AF6C 8D21FFF8 */  lw          $at, -0x8($t1)
/* 02AB20 8002AF70 ADA1FFF8 */  sw          $at, -0x8($t5)
/* 02AB24 8002AF74 8D21FFFC */  lw          $at, -0x4($t1)
/* 02AB28 8002AF78 152CFFF8 */  bne         $t1, $t4, .L8002AF5C
/* 02AB2C 8002AF7C ADA1FFFC */   sw         $at, -0x4($t5)
/* 02AB30 8002AF80 3C0F800A */  lui         $t7, %hi(D_8009F4DC)
/* 02AB34 8002AF84 25EFF4DC */  addiu       $t7, $t7, %lo(D_8009F4DC)
/* 02AB38 8002AF88 25E80048 */  addiu       $t0, $t7, 0x48
/* 02AB3C 8002AF8C 27B80098 */  addiu       $t8, $sp, 0x98
.L8002AF90:
/* 02AB40 8002AF90 8DE10000 */  lw          $at, 0x0($t7)
/* 02AB44 8002AF94 25EF000C */  addiu       $t7, $t7, 0xc
/* 02AB48 8002AF98 2718000C */  addiu       $t8, $t8, 0xc
/* 02AB4C 8002AF9C AF01FFF4 */  sw          $at, -0xc($t8)
/* 02AB50 8002AFA0 8DE1FFF8 */  lw          $at, -0x8($t7)
/* 02AB54 8002AFA4 AF01FFF8 */  sw          $at, -0x8($t8)
/* 02AB58 8002AFA8 8DE1FFFC */  lw          $at, -0x4($t7)
/* 02AB5C 8002AFAC 15E8FFF8 */  bne         $t7, $t0, .L8002AF90
/* 02AB60 8002AFB0 AF01FFFC */   sw         $at, -0x4($t8)
/* 02AB64 8002AFB4 8E620000 */  lw          $v0, 0x0($s3)
/* 02AB68 8002AFB8 3C0C0050 */  lui         $t4, 0x50
/* 02AB6C 8002AFBC 358C4240 */  ori         $t4, $t4, 0x4240
/* 02AB70 8002AFC0 244B0008 */  addiu       $t3, $v0, 0x8
/* 02AB74 8002AFC4 AE6B0000 */  sw          $t3, 0x0($s3)
/* 02AB78 8002AFC8 AC400004 */  sw          $zero, 0x4($v0)
/* 02AB7C 8002AFCC AC520000 */  sw          $s2, 0x0($v0)
/* 02AB80 8002AFD0 8E620000 */  lw          $v0, 0x0($s3)
/* 02AB84 8002AFD4 3C0DFCFF */  lui         $t5, 0xfcff
/* 02AB88 8002AFD8 3C0EFF2C */  lui         $t6, 0xff2c
/* 02AB8C 8002AFDC 244A0008 */  addiu       $t2, $v0, 0x8
/* 02AB90 8002AFE0 AE6A0000 */  sw          $t2, 0x0($s3)
/* 02AB94 8002AFE4 AC4C0004 */  sw          $t4, 0x4($v0)
/* 02AB98 8002AFE8 AC560000 */  sw          $s6, 0x0($v0)
/* 02AB9C 8002AFEC 8E620000 */  lw          $v0, 0x0($s3)
/* 02ABA0 8002AFF0 35CEFE7F */  ori         $t6, $t6, 0xfe7f
/* 02ABA4 8002AFF4 35AD97FF */  ori         $t5, $t5, 0x97ff
/* 02ABA8 8002AFF8 24490008 */  addiu       $t1, $v0, 0x8
/* 02ABAC 8002AFFC AE690000 */  sw          $t1, 0x0($s3)
/* 02ABB0 8002B000 AC4E0004 */  sw          $t6, 0x4($v0)
/* 02ABB4 8002B004 AC4D0000 */  sw          $t5, 0x0($v0)
/* 02ABB8 8002B008 8E620000 */  lw          $v0, 0x0($s3)
/* 02ABBC 8002B00C 3C08FA00 */  lui         $t0, 0xfa00
/* 02ABC0 8002B010 3C01FF00 */  lui         $at, 0xff00
/* 02ABC4 8002B014 24590008 */  addiu       $t9, $v0, 0x8
/* 02ABC8 8002B018 AE790000 */  sw          $t9, 0x0($s3)
/* 02ABCC 8002B01C AC480000 */  sw          $t0, 0x0($v0)
/* 02ABD0 8002B020 8E0F0000 */  lw          $t7, 0x0($s0)
/* 02ABD4 8002B024 3C03800F */  lui         $v1, %hi(D_800F62A4)
/* 02ABD8 8002B028 240C0023 */  addiu       $t4, $zero, 0x23
/* 02ABDC 8002B02C 31F800FF */  andi        $t8, $t7, 0xff
/* 02ABE0 8002B030 03015825 */  or          $t3, $t8, $at
/* 02ABE4 8002B034 AC4B0004 */  sw          $t3, 0x4($v0)
/* 02ABE8 8002B038 8C6362A4 */  lw          $v1, %lo(D_800F62A4)($v1)
/* 02ABEC 8002B03C 24010002 */  addiu       $at, $zero, 0x2
/* 02ABF0 8002B040 241E004C */  addiu       $fp, $zero, 0x4c
/* 02ABF4 8002B044 10610008 */  beq         $v1, $at, .L8002B068
/* 02ABF8 8002B048 00601025 */   move       $v0, $v1
/* 02ABFC 8002B04C 24010005 */  addiu       $at, $zero, 0x5
/* 02AC00 8002B050 10410005 */  beq         $v0, $at, .L8002B068
/* 02AC04 8002B054 24010007 */   addiu      $at, $zero, 0x7
/* 02AC08 8002B058 10410003 */  beq         $v0, $at, .L8002B068
/* 02AC0C 8002B05C 240A000F */   addiu      $t2, $zero, 0xf
/* 02AC10 8002B060 10000002 */  b           .L8002B06C
/* 02AC14 8002B064 AFAA0128 */   sw         $t2, 0x128($sp)
.L8002B068:
/* 02AC18 8002B068 AFAC0128 */  sw          $t4, 0x128($sp)
.L8002B06C:
/* 02AC1C 8002B06C 007E0019 */  multu       $v1, $fp
/* 02AC20 8002B070 3C17800A */  lui         $s7, %hi(D_8009F0F0)
/* 02AC24 8002B074 26F7F0F0 */  addiu       $s7, $s7, %lo(D_8009F0F0)
/* 02AC28 8002B078 24040007 */  addiu       $a0, $zero, 0x7
/* 02AC2C 8002B07C 02202825 */  move        $a1, $s1
/* 02AC30 8002B080 02603025 */  move        $a2, $s3
/* 02AC34 8002B084 00004812 */  mflo        $t1
/* 02AC38 8002B088 02E91021 */  addu        $v0, $s7, $t1
/* 02AC3C 8002B08C 8C4D0020 */  lw          $t5, 0x20($v0)
/* 02AC40 8002B090 8C4E0024 */  lw          $t6, 0x24($v0)
/* 02AC44 8002B094 AFAD012C */  sw          $t5, 0x12c($sp)
/* 02AC48 8002B098 0C002AE5 */  jal         func_8000AB94
/* 02AC4C 8002B09C AFAE0130 */   sw         $t6, 0x130($sp)
/* 02AC50 8002B0A0 3C19800A */  lui         $t9, %hi(D_8009F440)
/* 02AC54 8002B0A4 8F39F440 */  lw          $t9, %lo(D_8009F440)($t9)
/* 02AC58 8002B0A8 24010003 */  addiu       $at, $zero, 0x3
/* 02AC5C 8002B0AC 24150008 */  addiu       $s5, $zero, 0x8
/* 02AC60 8002B0B0 17210006 */  bne         $t9, $at, .L8002B0CC
/* 02AC64 8002B0B4 3C0D0050 */   lui        $t5, 0x50
/* 02AC68 8002B0B8 3C05800A */  lui         $a1, %hi(D_8009F448)
/* 02AC6C 8002B0BC 24A5F448 */  addiu       $a1, $a1, %lo(D_8009F448)
/* 02AC70 8002B0C0 8CA20000 */  lw          $v0, 0x0($a1)
/* 02AC74 8002B0C4 10000005 */  b           .L8002B0DC
/* 02AC78 8002B0C8 00022100 */   sll        $a0, $v0, 4
.L8002B0CC:
/* 02AC7C 8002B0CC 3C05800A */  lui         $a1, %hi(D_8009F448)
/* 02AC80 8002B0D0 24A5F448 */  addiu       $a1, $a1, %lo(D_8009F448)
/* 02AC84 8002B0D4 8CA20000 */  lw          $v0, 0x0($a1)
/* 02AC88 8002B0D8 00402025 */  move        $a0, $v0
.L8002B0DC:
/* 02AC8C 8002B0DC 8E080000 */  lw          $t0, 0x0($s0)
/* 02AC90 8002B0E0 35AD4240 */  ori         $t5, $t5, 0x4240
/* 02AC94 8002B0E4 3C19FCFF */  lui         $t9, 0xfcff
/* 02AC98 8002B0E8 01041821 */  addu        $v1, $t0, $a0
/* 02AC9C 8002B0EC 28610100 */  slti        $at, $v1, 0x100
/* 02ACA0 8002B0F0 14200006 */  bnez        $at, .L8002B10C
/* 02ACA4 8002B0F4 AE030000 */   sw         $v1, 0x0($s0)
/* 02ACA8 8002B0F8 241800FF */  addiu       $t8, $zero, 0xff
/* 02ACAC 8002B0FC 00025823 */  negu        $t3, $v0
/* 02ACB0 8002B100 AE180000 */  sw          $t8, 0x0($s0)
/* 02ACB4 8002B104 10000005 */  b           .L8002B11C
/* 02ACB8 8002B108 ACAB0000 */   sw         $t3, 0x0($a1)
.L8002B10C:
/* 02ACBC 8002B10C 04610003 */  bgez        $v1, .L8002B11C
/* 02ACC0 8002B110 00025023 */   negu       $t2, $v0
/* 02ACC4 8002B114 AE000000 */  sw          $zero, 0x0($s0)
/* 02ACC8 8002B118 ACAA0000 */  sw          $t2, 0x0($a1)
.L8002B11C:
/* 02ACCC 8002B11C 8E620000 */  lw          $v0, 0x0($s3)
/* 02ACD0 8002B120 3C08FFFC */  lui         $t0, 0xfffc
/* 02ACD4 8002B124 3508F279 */  ori         $t0, $t0, 0xf279
/* 02ACD8 8002B128 244C0008 */  addiu       $t4, $v0, 0x8
/* 02ACDC 8002B12C AE6C0000 */  sw          $t4, 0x0($s3)
/* 02ACE0 8002B130 AC400004 */  sw          $zero, 0x4($v0)
/* 02ACE4 8002B134 AC520000 */  sw          $s2, 0x0($v0)
/* 02ACE8 8002B138 8E620000 */  lw          $v0, 0x0($s3)
/* 02ACEC 8002B13C 3739FFFF */  ori         $t9, $t9, 0xffff
/* 02ACF0 8002B140 3C01800B */  lui         $at, %hi(D_800AAAB4)
/* 02ACF4 8002B144 24490008 */  addiu       $t1, $v0, 0x8
/* 02ACF8 8002B148 AE690000 */  sw          $t1, 0x0($s3)
/* 02ACFC 8002B14C AC4D0004 */  sw          $t5, 0x4($v0)
/* 02AD00 8002B150 AC560000 */  sw          $s6, 0x0($v0)
/* 02AD04 8002B154 8E620000 */  lw          $v0, 0x0($s3)
/* 02AD08 8002B158 24160004 */  addiu       $s6, $zero, 0x4
/* 02AD0C 8002B15C 00008025 */  move        $s0, $zero
/* 02AD10 8002B160 244E0008 */  addiu       $t6, $v0, 0x8
/* 02AD14 8002B164 AE6E0000 */  sw          $t6, 0x0($s3)
/* 02AD18 8002B168 AC480004 */  sw          $t0, 0x4($v0)
/* 02AD1C 8002B16C AC590000 */  sw          $t9, 0x0($v0)
/* 02AD20 8002B170 C436AAB4 */  lwc1        $f22, %lo(D_800AAAB4)($at)
/* 02AD24 8002B174 3C01800B */  lui         $at, %hi(D_800AAAB8)
/* 02AD28 8002B178 C434AAB8 */  lwc1        $f20, %lo(D_800AAAB8)($at)
.L8002B17C:
/* 02AD2C 8002B17C 0C00AB8B */  jal         func_8002AE2C
/* 02AD30 8002B180 02002025 */   move       $a0, $s0
/* 02AD34 8002B184 10400043 */  beqz        $v0, .L8002B294
/* 02AD38 8002B188 24040007 */   addiu      $a0, $zero, 0x7
/* 02AD3C 8002B18C 021E0019 */  multu       $s0, $fp
/* 02AD40 8002B190 00104880 */  sll         $t1, $s0, 2
/* 02AD44 8002B194 01304821 */  addu        $t1, $t1, $s0
/* 02AD48 8002B198 00094880 */  sll         $t1, $t1, 2
/* 02AD4C 8002B19C 01304823 */  subu        $t1, $t1, $s0
/* 02AD50 8002B1A0 02806025 */  move        $t4, $s4
/* 02AD54 8002B1A4 00094880 */  sll         $t1, $t1, 2
/* 02AD58 8002B1A8 02802825 */  move        $a1, $s4
/* 02AD5C 8002B1AC 02603025 */  move        $a2, $s3
/* 02AD60 8002B1B0 00007812 */  mflo        $t7
/* 02AD64 8002B1B4 02EFC021 */  addu        $t8, $s7, $t7
/* 02AD68 8002B1B8 270A0024 */  addiu       $t2, $t8, 0x24
.L8002B1BC:
/* 02AD6C 8002B1BC 8F01001C */  lw          $at, 0x1c($t8)
/* 02AD70 8002B1C0 2718000C */  addiu       $t8, $t8, 0xc
/* 02AD74 8002B1C4 258C000C */  addiu       $t4, $t4, 0xc
/* 02AD78 8002B1C8 AD81FFF4 */  sw          $at, -0xc($t4)
/* 02AD7C 8002B1CC 8F010014 */  lw          $at, 0x14($t8)
/* 02AD80 8002B1D0 AD81FFF8 */  sw          $at, -0x8($t4)
/* 02AD84 8002B1D4 8F010018 */  lw          $at, 0x18($t8)
/* 02AD88 8002B1D8 170AFFF8 */  bne         $t8, $t2, .L8002B1BC
/* 02AD8C 8002B1DC AD81FFFC */   sw         $at, -0x4($t4)
/* 02AD90 8002B1E0 0C002AE5 */  jal         func_8000AB94
/* 02AD94 8002B1E4 02E99021 */   addu       $s2, $s7, $t1
/* 02AD98 8002B1E8 0C045799 */  jal         func_80115E64
/* 02AD9C 8002B1EC 00000000 */   nop
/* 02ADA0 8002B1F0 00026880 */  sll         $t5, $v0, 2
/* 02ADA4 8002B1F4 024D7021 */  addu        $t6, $s2, $t5
/* 02ADA8 8002B1F8 8DD10040 */  lw          $s1, 0x40($t6)
/* 02ADAC 8002B1FC 06220026 */  bltzl       $s1, .L8002B298
/* 02ADB0 8002B200 26100001 */   addiu      $s0, $s0, 0x1
/* 02ADB4 8002B204 16160005 */  bne         $s0, $s6, .L8002B21C
/* 02ADB8 8002B208 8FAF00E4 */   lw         $t7, 0xe4($sp)
/* 02ADBC 8002B20C 8FB900E4 */  lw          $t9, 0xe4($sp)
/* 02ADC0 8002B210 2728FFE5 */  addiu       $t0, $t9, -0x1b
/* 02ADC4 8002B214 10000003 */  b           .L8002B224
/* 02ADC8 8002B218 AFA8009C */   sw         $t0, 0x9c($sp)
.L8002B21C:
/* 02ADCC 8002B21C 25EB0037 */  addiu       $t3, $t7, 0x37
/* 02ADD0 8002B220 AFAB009C */  sw          $t3, 0x9c($sp)
.L8002B224:
/* 02ADD4 8002B224 0C00267F */  jal         func_800099FC
/* 02ADD8 8002B228 00000000 */   nop
/* 02ADDC 8002B22C 320A0001 */  andi        $t2, $s0, 0x1
/* 02ADE0 8002B230 11400003 */  beqz        $t2, .L8002B240
/* 02ADE4 8002B234 304300FF */   andi       $v1, $v0, 0xff
/* 02ADE8 8002B238 10000002 */  b           .L8002B244
/* 02ADEC 8002B23C 4600A006 */   mov.s      $f0, $f20
.L8002B240:
/* 02ADF0 8002B240 4600B006 */  mov.s       $f0, $f22
.L8002B244:
/* 02ADF4 8002B244 44832000 */  mtc1        $v1, $f4
/* 02ADF8 8002B248 3C014F80 */  lui         $at, 0x4f80
/* 02ADFC 8002B24C 04610004 */  bgez        $v1, .L8002B260
/* 02AE00 8002B250 468021A0 */   cvt.s.w    $f6, $f4
/* 02AE04 8002B254 44814000 */  mtc1        $at, $f8
/* 02AE08 8002B258 00000000 */  nop
/* 02AE0C 8002B25C 46083180 */  add.s       $f6, $f6, $f8
.L8002B260:
/* 02AE10 8002B260 8FB800E8 */  lw          $t8, 0xe8($sp)
/* 02AE14 8002B264 46060282 */  mul.s       $f10, $f0, $f6
/* 02AE18 8002B268 AFB10098 */  sw          $s1, 0x98($sp)
/* 02AE1C 8002B26C 44988000 */  mtc1        $t8, $f16
/* 02AE20 8002B270 24040007 */  addiu       $a0, $zero, 0x7
/* 02AE24 8002B274 27A50098 */  addiu       $a1, $sp, 0x98
/* 02AE28 8002B278 02603025 */  move        $a2, $s3
/* 02AE2C 8002B27C 468084A0 */  cvt.s.w     $f18, $f16
/* 02AE30 8002B280 46125100 */  add.s       $f4, $f10, $f18
/* 02AE34 8002B284 4600220D */  trunc.w.s   $f8, $f4
/* 02AE38 8002B288 44094000 */  mfc1        $t1, $f8
/* 02AE3C 8002B28C 0C002AE5 */  jal         func_8000AB94
/* 02AE40 8002B290 AFA900A0 */   sw         $t1, 0xa0($sp)
.L8002B294:
/* 02AE44 8002B294 26100001 */  addiu       $s0, $s0, 0x1
.L8002B298:
/* 02AE48 8002B298 02B0082A */  slt         $at, $s5, $s0
/* 02AE4C 8002B29C 1020FFB7 */  beqz        $at, .L8002B17C
/* 02AE50 8002B2A0 00000000 */   nop
/* 02AE54 8002B2A4 8FBF004C */  lw          $ra, 0x4c($sp)
/* 02AE58 8002B2A8 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 02AE5C 8002B2AC D7B60020 */  ldc1        $f22, 0x20($sp)
/* 02AE60 8002B2B0 8FB00028 */  lw          $s0, 0x28($sp)
/* 02AE64 8002B2B4 8FB1002C */  lw          $s1, 0x2c($sp)
/* 02AE68 8002B2B8 8FB20030 */  lw          $s2, 0x30($sp)
/* 02AE6C 8002B2BC 8FB30034 */  lw          $s3, 0x34($sp)
/* 02AE70 8002B2C0 8FB40038 */  lw          $s4, 0x38($sp)
/* 02AE74 8002B2C4 8FB5003C */  lw          $s5, 0x3c($sp)
/* 02AE78 8002B2C8 8FB60040 */  lw          $s6, 0x40($sp)
/* 02AE7C 8002B2CC 8FB70044 */  lw          $s7, 0x44($sp)
/* 02AE80 8002B2D0 8FBE0048 */  lw          $fp, 0x48($sp)
/* 02AE84 8002B2D4 03E00008 */  jr          $ra
/* 02AE88 8002B2D8 27BD0170 */   addiu      $sp, $sp, 0x170

glabel func_8002B2DC # 5
/* 02AE8C 8002B2DC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02AE90 8002B2E0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02AE94 8002B2E4 0C045799 */  jal         func_80115E64
/* 02AE98 8002B2E8 AFA40018 */   sw         $a0, 0x18($sp)
/* 02AE9C 8002B2EC 8FA40018 */  lw          $a0, 0x18($sp)
/* 02AEA0 8002B2F0 00027880 */  sll         $t7, $v0, 2
/* 02AEA4 8002B2F4 3C19800A */  lui         $t9, %hi(D_8009F0F0)
/* 02AEA8 8002B2F8 00047080 */  sll         $t6, $a0, 2
/* 02AEAC 8002B2FC 01C47021 */  addu        $t6, $t6, $a0
/* 02AEB0 8002B300 000E7080 */  sll         $t6, $t6, 2
/* 02AEB4 8002B304 01C47023 */  subu        $t6, $t6, $a0
/* 02AEB8 8002B308 000E7080 */  sll         $t6, $t6, 2
/* 02AEBC 8002B30C 01CFC021 */  addu        $t8, $t6, $t7
/* 02AEC0 8002B310 0338C821 */  addu        $t9, $t9, $t8
/* 02AEC4 8002B314 8F39F0F0 */  lw          $t9, %lo(D_8009F0F0)($t9)
/* 02AEC8 8002B318 07210003 */  bgez        $t9, .L8002B328
/* 02AECC 8002B31C 00000000 */   nop
/* 02AED0 8002B320 10000008 */  b           .L8002B344
/* 02AED4 8002B324 00001025 */   move       $v0, $zero
.L8002B328:
/* 02AED8 8002B328 0C00AB8B */  jal         func_8002AE2C
/* 02AEDC 8002B32C 00000000 */   nop
/* 02AEE0 8002B330 50400004 */  beql        $v0, $zero, .L8002B344
/* 02AEE4 8002B334 24020001 */   addiu      $v0, $zero, 0x1
/* 02AEE8 8002B338 10000002 */  b           .L8002B344
/* 02AEEC 8002B33C 00001025 */   move       $v0, $zero
/* 02AEF0 8002B340 24020001 */  addiu       $v0, $zero, 0x1
.L8002B344:
/* 02AEF4 8002B344 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02AEF8 8002B348 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02AEFC 8002B34C 03E00008 */  jr          $ra
/* 02AF00 8002B350 00000000 */   nop

glabel func_8002B354 # 6
/* 02AF04 8002B354 27BDFF18 */  addiu       $sp, $sp, -0xe8
/* 02AF08 8002B358 AFB10024 */  sw          $s1, 0x24($sp)
/* 02AF0C 8002B35C 3C013F80 */  lui         $at, 0x3f80
/* 02AF10 8002B360 00808825 */  move        $s1, $a0
/* 02AF14 8002B364 44810000 */  mtc1        $at, $f0
/* 02AF18 8002B368 AFBF0044 */  sw          $ra, 0x44($sp)
/* 02AF1C 8002B36C AFBE0040 */  sw          $fp, 0x40($sp)
/* 02AF20 8002B370 AFB7003C */  sw          $s7, 0x3c($sp)
/* 02AF24 8002B374 AFB60038 */  sw          $s6, 0x38($sp)
/* 02AF28 8002B378 AFB50034 */  sw          $s5, 0x34($sp)
/* 02AF2C 8002B37C AFB40030 */  sw          $s4, 0x30($sp)
/* 02AF30 8002B380 AFB3002C */  sw          $s3, 0x2c($sp)
/* 02AF34 8002B384 AFB20028 */  sw          $s2, 0x28($sp)
/* 02AF38 8002B388 AFB00020 */  sw          $s0, 0x20($sp)
/* 02AF3C 8002B38C F7B40018 */  sdc1        $f20, 0x18($sp)
/* 02AF40 8002B390 27A400C4 */  addiu       $a0, $sp, 0xc4
/* 02AF44 8002B394 27A2007C */  addiu       $v0, $sp, 0x7c
/* 02AF48 8002B398 24030040 */  addiu       $v1, $zero, 0x40
.L8002B39C:
/* 02AF4C 8002B39C 24420024 */  addiu       $v0, $v0, 0x24
/* 02AF50 8002B3A0 AC43FFE8 */  sw          $v1, -0x18($v0)
/* 02AF54 8002B3A4 AC43FFEC */  sw          $v1, -0x14($v0)
/* 02AF58 8002B3A8 AC40FFF0 */  sw          $zero, -0x10($v0)
/* 02AF5C 8002B3AC AC40FFF4 */  sw          $zero, -0xc($v0)
/* 02AF60 8002B3B0 E440FFF8 */  swc1        $f0, -0x8($v0)
/* 02AF64 8002B3B4 1444FFF9 */  bne         $v0, $a0, .L8002B39C
/* 02AF68 8002B3B8 E440FFFC */   swc1       $f0, -0x4($v0)
/* 02AF6C 8002B3BC 3C1EE200 */  lui         $fp, 0xe200
/* 02AF70 8002B3C0 3C14800A */  lui         $s4, %hi(D_8009F0F0)
/* 02AF74 8002B3C4 2694F0F0 */  addiu       $s4, $s4, %lo(D_8009F0F0)
/* 02AF78 8002B3C8 37DE001C */  ori         $fp, $fp, 0x1c
/* 02AF7C 8002B3CC 00009025 */  move        $s2, $zero
/* 02AF80 8002B3D0 27B7007C */  addiu       $s7, $sp, 0x7c
/* 02AF84 8002B3D4 3C16E700 */  lui         $s6, 0xe700
/* 02AF88 8002B3D8 2415004C */  addiu       $s5, $zero, 0x4c
.L8002B3DC:
/* 02AF8C 8002B3DC 0C00ACB7 */  jal         func_8002B2DC
/* 02AF90 8002B3E0 02402025 */   move       $a0, $s2
/* 02AF94 8002B3E4 50400035 */  beql        $v0, $zero, .L8002B4BC
/* 02AF98 8002B3E8 26520001 */   addiu      $s2, $s2, 0x1
/* 02AF9C 8002B3EC 02550019 */  multu       $s2, $s5
/* 02AFA0 8002B3F0 8FAB0088 */  lw          $t3, 0x88($sp)
/* 02AFA4 8002B3F4 240F0005 */  addiu       $t7, $zero, 0x5
/* 02AFA8 8002B3F8 24180006 */  addiu       $t8, $zero, 0x6
/* 02AFAC 8002B3FC 2419FFFF */  addiu       $t9, $zero, -0x1
/* 02AFB0 8002B400 AFAF007C */  sw          $t7, 0x7c($sp)
/* 02AFB4 8002B404 AFB800A0 */  sw          $t8, 0xa0($sp)
/* 02AFB8 8002B408 AFB900C4 */  sw          $t9, 0xc4($sp)
/* 02AFBC 8002B40C 3C190050 */  lui         $t9, 0x50
/* 02AFC0 8002B410 37394240 */  ori         $t9, $t9, 0x4240
/* 02AFC4 8002B414 00007012 */  mflo        $t6
/* 02AFC8 8002B418 028E8021 */  addu        $s0, $s4, $t6
/* 02AFCC 8002B41C 8E130020 */  lw          $s3, 0x20($s0)
/* 02AFD0 8002B420 8E080024 */  lw          $t0, 0x24($s0)
/* 02AFD4 8002B424 240E0080 */  addiu       $t6, $zero, 0x80
/* 02AFD8 8002B428 2669FFF0 */  addiu       $t1, $s3, -0x10
/* 02AFDC 8002B42C 250A0008 */  addiu       $t2, $t0, 0x8
/* 02AFE0 8002B430 01696821 */  addu        $t5, $t3, $t1
/* 02AFE4 8002B434 AFA90080 */  sw          $t1, 0x80($sp)
/* 02AFE8 8002B438 AFAA0084 */  sw          $t2, 0x84($sp)
/* 02AFEC 8002B43C AFAD00A4 */  sw          $t5, 0xa4($sp)
/* 02AFF0 8002B440 AFAA00A8 */  sw          $t2, 0xa8($sp)
/* 02AFF4 8002B444 8E220000 */  lw          $v0, 0x0($s1)
/* 02AFF8 8002B448 3C0AFCFF */  lui         $t2, 0xfcff
/* 02AFFC 8002B44C 3C0BFF2C */  lui         $t3, 0xff2c
/* 02B000 8002B450 244F0008 */  addiu       $t7, $v0, 0x8
/* 02B004 8002B454 AE2F0000 */  sw          $t7, 0x0($s1)
/* 02B008 8002B458 AC400004 */  sw          $zero, 0x4($v0)
/* 02B00C 8002B45C AC560000 */  sw          $s6, 0x0($v0)
/* 02B010 8002B460 8E220000 */  lw          $v0, 0x0($s1)
/* 02B014 8002B464 356BFE7F */  ori         $t3, $t3, 0xfe7f
/* 02B018 8002B468 354A97FF */  ori         $t2, $t2, 0x97ff
/* 02B01C 8002B46C 24580008 */  addiu       $t8, $v0, 0x8
/* 02B020 8002B470 AE380000 */  sw          $t8, 0x0($s1)
/* 02B024 8002B474 AC590004 */  sw          $t9, 0x4($v0)
/* 02B028 8002B478 AC5E0000 */  sw          $fp, 0x0($v0)
/* 02B02C 8002B47C 8E220000 */  lw          $v0, 0x0($s1)
/* 02B030 8002B480 3C0DFA00 */  lui         $t5, 0xfa00
/* 02B034 8002B484 24040007 */  addiu       $a0, $zero, 0x7
/* 02B038 8002B488 24490008 */  addiu       $t1, $v0, 0x8
/* 02B03C 8002B48C AE290000 */  sw          $t1, 0x0($s1)
/* 02B040 8002B490 AC4B0004 */  sw          $t3, 0x4($v0)
/* 02B044 8002B494 AC4A0000 */  sw          $t2, 0x0($v0)
/* 02B048 8002B498 8E220000 */  lw          $v0, 0x0($s1)
/* 02B04C 8002B49C 02E02825 */  move        $a1, $s7
/* 02B050 8002B4A0 02203025 */  move        $a2, $s1
/* 02B054 8002B4A4 244C0008 */  addiu       $t4, $v0, 0x8
/* 02B058 8002B4A8 AE2C0000 */  sw          $t4, 0x0($s1)
/* 02B05C 8002B4AC AC4E0004 */  sw          $t6, 0x4($v0)
/* 02B060 8002B4B0 0C002AE5 */  jal         func_8000AB94
/* 02B064 8002B4B4 AC4D0000 */   sw         $t5, 0x0($v0)
/* 02B068 8002B4B8 26520001 */  addiu       $s2, $s2, 0x1
.L8002B4BC:
/* 02B06C 8002B4BC 2A410009 */  slti        $at, $s2, 0x9
/* 02B070 8002B4C0 1420FFC6 */  bnez        $at, .L8002B3DC
/* 02B074 8002B4C4 00000000 */   nop
/* 02B078 8002B4C8 3C014004 */  lui         $at, 0x4004
/* 02B07C 8002B4CC 4481A800 */  mtc1        $at, $f21
/* 02B080 8002B4D0 4480A000 */  mtc1        $zero, $f20
/* 02B084 8002B4D4 00009025 */  move        $s2, $zero
/* 02B088 8002B4D8 241E0009 */  addiu       $fp, $zero, 0x9
.L8002B4DC:
/* 02B08C 8002B4DC 0C00ACB7 */  jal         func_8002B2DC
/* 02B090 8002B4E0 02402025 */   move       $a0, $s2
/* 02B094 8002B4E4 50400032 */  beql        $v0, $zero, .L8002B5B0
/* 02B098 8002B4E8 26520001 */   addiu      $s2, $s2, 0x1
/* 02B09C 8002B4EC 02550019 */  multu       $s2, $s5
/* 02B0A0 8002B4F0 3C02800A */  lui         $v0, %hi(D_8009F524)
/* 02B0A4 8002B4F4 8C42F524 */  lw          $v0, %lo(D_8009F524)($v0)
/* 02B0A8 8002B4F8 44822000 */  mtc1        $v0, $f4
/* 02B0AC 8002B4FC 00000000 */  nop
/* 02B0B0 8002B500 46802320 */  cvt.s.w     $f12, $f4
/* 02B0B4 8002B504 00007812 */  mflo        $t7
/* 02B0B8 8002B508 028F8021 */  addu        $s0, $s4, $t7
/* 02B0BC 8002B50C 0C00EB2F */  jal         func_8003ACBC
/* 02B0C0 8002B510 8E130020 */   lw         $s3, 0x20($s0)
/* 02B0C4 8002B514 460001A1 */  cvt.d.s     $f6, $f0
/* 02B0C8 8002B518 8E090024 */  lw          $t1, 0x24($s0)
/* 02B0CC 8002B51C 46343202 */  mul.d       $f8, $f6, $f20
/* 02B0D0 8002B520 8FAF0088 */  lw          $t7, 0x88($sp)
/* 02B0D4 8002B524 266DFFF0 */  addiu       $t5, $s3, -0x10
/* 02B0D8 8002B528 240A0007 */  addiu       $t2, $zero, 0x7
/* 02B0DC 8002B52C 240B0008 */  addiu       $t3, $zero, 0x8
/* 02B0E0 8002B530 240CFFFF */  addiu       $t4, $zero, -0x1
/* 02B0E4 8002B534 AFAA007C */  sw          $t2, 0x7c($sp)
/* 02B0E8 8002B538 AFAB00A0 */  sw          $t3, 0xa0($sp)
/* 02B0EC 8002B53C 4620428D */  trunc.w.d   $f10, $f8
/* 02B0F0 8002B540 AFAC00C4 */  sw          $t4, 0xc4($sp)
/* 02B0F4 8002B544 AFAD0080 */  sw          $t5, 0x80($sp)
/* 02B0F8 8002B548 3C0CFCFF */  lui         $t4, 0xfcff
/* 02B0FC 8002B54C 44195000 */  mfc1        $t9, $f10
/* 02B100 8002B550 358CFFFF */  ori         $t4, $t4, 0xffff
/* 02B104 8002B554 24040007 */  addiu       $a0, $zero, 0x7
/* 02B108 8002B558 03294021 */  addu        $t0, $t9, $t1
/* 02B10C 8002B55C 250EFFF8 */  addiu       $t6, $t0, -0x8
/* 02B110 8002B560 01EDC821 */  addu        $t9, $t7, $t5
/* 02B114 8002B564 AFAE0084 */  sw          $t6, 0x84($sp)
/* 02B118 8002B568 AFB900A4 */  sw          $t9, 0xa4($sp)
/* 02B11C 8002B56C AFAE00A8 */  sw          $t6, 0xa8($sp)
/* 02B120 8002B570 8E220000 */  lw          $v0, 0x0($s1)
/* 02B124 8002B574 3C0DFFFC */  lui         $t5, 0xfffc
/* 02B128 8002B578 35ADF279 */  ori         $t5, $t5, 0xf279
/* 02B12C 8002B57C 244A0008 */  addiu       $t2, $v0, 0x8
/* 02B130 8002B580 AE2A0000 */  sw          $t2, 0x0($s1)
/* 02B134 8002B584 AC400004 */  sw          $zero, 0x4($v0)
/* 02B138 8002B588 AC560000 */  sw          $s6, 0x0($v0)
/* 02B13C 8002B58C 8E220000 */  lw          $v0, 0x0($s1)
/* 02B140 8002B590 02E02825 */  move        $a1, $s7
/* 02B144 8002B594 02203025 */  move        $a2, $s1
/* 02B148 8002B598 244B0008 */  addiu       $t3, $v0, 0x8
/* 02B14C 8002B59C AE2B0000 */  sw          $t3, 0x0($s1)
/* 02B150 8002B5A0 AC4D0004 */  sw          $t5, 0x4($v0)
/* 02B154 8002B5A4 0C002AE5 */  jal         func_8000AB94
/* 02B158 8002B5A8 AC4C0000 */   sw         $t4, 0x0($v0)
/* 02B15C 8002B5AC 26520001 */  addiu       $s2, $s2, 0x1
.L8002B5B0:
/* 02B160 8002B5B0 165EFFCA */  bne         $s2, $fp, .L8002B4DC
/* 02B164 8002B5B4 00000000 */   nop
/* 02B168 8002B5B8 3C02800A */  lui         $v0, %hi(D_8009F524)
/* 02B16C 8002B5BC 8C42F524 */  lw          $v0, %lo(D_8009F524)($v0)
/* 02B170 8002B5C0 3C01800A */  lui         $at, %hi(D_8009F524)
/* 02B174 8002B5C4 24420005 */  addiu       $v0, $v0, 0x5
/* 02B178 8002B5C8 04410004 */  bgez        $v0, .L8002B5DC
/* 02B17C 8002B5CC 00000000 */   nop
/* 02B180 8002B5D0 24420168 */  addiu       $v0, $v0, 0x168
.L8002B5D4:
/* 02B184 8002B5D4 0442FFFF */  bltzl       $v0, .L8002B5D4
/* 02B188 8002B5D8 24420168 */   addiu      $v0, $v0, 0x168
.L8002B5DC:
/* 02B18C 8002B5DC AC22F524 */  sw          $v0, %lo(D_8009F524)($at)
/* 02B190 8002B5E0 28410168 */  slti        $at, $v0, 0x168
/* 02B194 8002B5E4 14200006 */  bnez        $at, .L8002B600
/* 02B198 8002B5E8 2442FE98 */   addiu      $v0, $v0, -0x168
.L8002B5EC:
/* 02B19C 8002B5EC 28410168 */  slti        $at, $v0, 0x168
/* 02B1A0 8002B5F0 5020FFFE */  beql        $at, $zero, .L8002B5EC
/* 02B1A4 8002B5F4 2442FE98 */   addiu      $v0, $v0, -0x168
/* 02B1A8 8002B5F8 3C01800A */  lui         $at, %hi(D_8009F524)
/* 02B1AC 8002B5FC AC22F524 */  sw          $v0, %lo(D_8009F524)($at)
.L8002B600:
/* 02B1B0 8002B600 8FBF0044 */  lw          $ra, 0x44($sp)
/* 02B1B4 8002B604 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 02B1B8 8002B608 8FB00020 */  lw          $s0, 0x20($sp)
/* 02B1BC 8002B60C 8FB10024 */  lw          $s1, 0x24($sp)
/* 02B1C0 8002B610 8FB20028 */  lw          $s2, 0x28($sp)
/* 02B1C4 8002B614 8FB3002C */  lw          $s3, 0x2c($sp)
/* 02B1C8 8002B618 8FB40030 */  lw          $s4, 0x30($sp)
/* 02B1CC 8002B61C 8FB50034 */  lw          $s5, 0x34($sp)
/* 02B1D0 8002B620 8FB60038 */  lw          $s6, 0x38($sp)
/* 02B1D4 8002B624 8FB7003C */  lw          $s7, 0x3c($sp)
/* 02B1D8 8002B628 8FBE0040 */  lw          $fp, 0x40($sp)
/* 02B1DC 8002B62C 03E00008 */  jr          $ra
/* 02B1E0 8002B630 27BD00E8 */   addiu      $sp, $sp, 0xe8

glabel func_8002B634 # 7
/* 02B1E4 8002B634 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02B1E8 8002B638 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02B1EC 8002B63C 8C820000 */  lw          $v0, 0x0($a0)
/* 02B1F0 8002B640 3C0FE700 */  lui         $t7, 0xe700
/* 02B1F4 8002B644 3C19E200 */  lui         $t9, 0xe200
/* 02B1F8 8002B648 244E0008 */  addiu       $t6, $v0, 0x8
/* 02B1FC 8002B64C AC8E0000 */  sw          $t6, 0x0($a0)
/* 02B200 8002B650 AC400004 */  sw          $zero, 0x4($v0)
/* 02B204 8002B654 AC4F0000 */  sw          $t7, 0x0($v0)
/* 02B208 8002B658 8C820000 */  lw          $v0, 0x0($a0)
/* 02B20C 8002B65C 3C090050 */  lui         $t1, 0x50
/* 02B210 8002B660 35294240 */  ori         $t1, $t1, 0x4240
/* 02B214 8002B664 24580008 */  addiu       $t8, $v0, 0x8
/* 02B218 8002B668 AC980000 */  sw          $t8, 0x0($a0)
/* 02B21C 8002B66C 3739001C */  ori         $t9, $t9, 0x1c
/* 02B220 8002B670 AC590000 */  sw          $t9, 0x0($v0)
/* 02B224 8002B674 AC490004 */  sw          $t1, 0x4($v0)
/* 02B228 8002B678 8C820000 */  lw          $v0, 0x0($a0)
/* 02B22C 8002B67C 3C0BFCFF */  lui         $t3, 0xfcff
/* 02B230 8002B680 3C0CFF2C */  lui         $t4, 0xff2c
/* 02B234 8002B684 244A0008 */  addiu       $t2, $v0, 0x8
/* 02B238 8002B688 AC8A0000 */  sw          $t2, 0x0($a0)
/* 02B23C 8002B68C 358CFE7F */  ori         $t4, $t4, 0xfe7f
/* 02B240 8002B690 356B97FF */  ori         $t3, $t3, 0x97ff
/* 02B244 8002B694 AC4B0000 */  sw          $t3, 0x0($v0)
/* 02B248 8002B698 AC4C0004 */  sw          $t4, 0x4($v0)
/* 02B24C 8002B69C 8C820000 */  lw          $v0, 0x0($a0)
/* 02B250 8002B6A0 240F00C0 */  addiu       $t7, $zero, 0xc0
/* 02B254 8002B6A4 3C0EFA00 */  lui         $t6, 0xfa00
/* 02B258 8002B6A8 244D0008 */  addiu       $t5, $v0, 0x8
/* 02B25C 8002B6AC AC8D0000 */  sw          $t5, 0x0($a0)
/* 02B260 8002B6B0 AC4F0004 */  sw          $t7, 0x4($v0)
/* 02B264 8002B6B4 AC4E0000 */  sw          $t6, 0x0($v0)
/* 02B268 8002B6B8 0C045799 */  jal         func_80115E64
/* 02B26C 8002B6BC AFA40018 */   sw         $a0, 0x18($sp)
/* 02B270 8002B6C0 0002C0C0 */  sll         $t8, $v0, 3
/* 02B274 8002B6C4 0302C021 */  addu        $t8, $t8, $v0
/* 02B278 8002B6C8 3C19800A */  lui         $t9, %hi(D_8009F528)
/* 02B27C 8002B6CC 2739F528 */  addiu       $t9, $t9, %lo(D_8009F528)
/* 02B280 8002B6D0 0018C100 */  sll         $t8, $t8, 4
/* 02B284 8002B6D4 03192821 */  addu        $a1, $t8, $t9
/* 02B288 8002B6D8 8FA60018 */  lw          $a2, 0x18($sp)
/* 02B28C 8002B6DC 0C002AE5 */  jal         func_8000AB94
/* 02B290 8002B6E0 24040007 */   addiu      $a0, $zero, 0x7
/* 02B294 8002B6E4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02B298 8002B6E8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02B29C 8002B6EC 03E00008 */  jr          $ra
/* 02B2A0 8002B6F0 00000000 */   nop

glabel func_8002B6F4 # 8
/* 02B2A4 8002B6F4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02B2A8 8002B6F8 AFBF001C */  sw          $ra, 0x1c($sp)
/* 02B2AC 8002B6FC AFB00018 */  sw          $s0, 0x18($sp)
/* 02B2B0 8002B700 0C00C522 */  jal         func_80031488
/* 02B2B4 8002B704 00808025 */   move       $s0, $a0
/* 02B2B8 8002B708 8E020000 */  lw          $v0, 0x0($s0)
/* 02B2BC 8002B70C 3C0FE700 */  lui         $t7, 0xe700
/* 02B2C0 8002B710 3C19E300 */  lui         $t9, 0xe300
/* 02B2C4 8002B714 244E0008 */  addiu       $t6, $v0, 0x8
/* 02B2C8 8002B718 AE0E0000 */  sw          $t6, 0x0($s0)
/* 02B2CC 8002B71C AC400004 */  sw          $zero, 0x4($v0)
/* 02B2D0 8002B720 AC4F0000 */  sw          $t7, 0x0($v0)
/* 02B2D4 8002B724 8E020000 */  lw          $v0, 0x0($s0)
/* 02B2D8 8002B728 37390A01 */  ori         $t9, $t9, 0xa01
/* 02B2DC 8002B72C 02002025 */  move        $a0, $s0
/* 02B2E0 8002B730 24580008 */  addiu       $t8, $v0, 0x8
/* 02B2E4 8002B734 AE180000 */  sw          $t8, 0x0($s0)
/* 02B2E8 8002B738 AC400004 */  sw          $zero, 0x4($v0)
/* 02B2EC 8002B73C 0C00ABB1 */  jal         func_8002AEC4
/* 02B2F0 8002B740 AC590000 */   sw         $t9, 0x0($v0)
/* 02B2F4 8002B744 0C00ACD5 */  jal         func_8002B354
/* 02B2F8 8002B748 02002025 */   move       $a0, $s0
/* 02B2FC 8002B74C 0C002033 */  jal         func_800080CC
/* 02B300 8002B750 24042000 */   addiu      $a0, $zero, 0x2000
/* 02B304 8002B754 0C00805C */  jal         func_80020170
/* 02B308 8002B758 02002025 */   move       $a0, $s0
/* 02B30C 8002B75C 0C00AD8D */  jal         func_8002B634
/* 02B310 8002B760 02002025 */   move       $a0, $s0
/* 02B314 8002B764 3C04800B */  lui         $a0, %hi(D_800B1A78)
/* 02B318 8002B768 8C841A78 */  lw          $a0, %lo(D_800B1A78)($a0)
/* 02B31C 8002B76C 0C0009A7 */  jal         func_8000269C
/* 02B320 8002B770 00002825 */   move       $a1, $zero
/* 02B324 8002B774 0C000A1D */  jal         func_80002874
/* 02B328 8002B778 00002025 */   move       $a0, $zero
/* 02B32C 8002B77C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 02B330 8002B780 8FB00018 */  lw          $s0, 0x18($sp)
/* 02B334 8002B784 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02B338 8002B788 03E00008 */  jr          $ra
/* 02B33C 8002B78C 00000000 */   nop

glabel func_8002B790 # 9
/* 02B340 8002B790 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 02B344 8002B794 AFB00018 */  sw          $s0, 0x18($sp)
/* 02B348 8002B798 3C108007 */  lui         $s0, %hi(D_80071E88)
/* 02B34C 8002B79C 26101E88 */  addiu       $s0, $s0, %lo(D_80071E88)
/* 02B350 8002B7A0 8E0E0000 */  lw          $t6, 0x0($s0)
/* 02B354 8002B7A4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 02B358 8002B7A8 27A40034 */  addiu       $a0, $sp, 0x34
/* 02B35C 8002B7AC 8DCF0054 */  lw          $t7, 0x54($t6)
/* 02B360 8002B7B0 0C00AB66 */  jal         func_8002AD98
/* 02B364 8002B7B4 AFAF0020 */   sw         $t7, 0x20($sp)
/* 02B368 8002B7B8 8FA60020 */  lw          $a2, 0x20($sp)
/* 02B36C 8002B7BC 3C04800F */  lui         $a0, %hi(D_800F62A8)
/* 02B370 8002B7C0 248462A8 */  addiu       $a0, $a0, %lo(D_800F62A8)
/* 02B374 8002B7C4 27A50034 */  addiu       $a1, $sp, 0x34
/* 02B378 8002B7C8 0C00F620 */  jal         func_8003D880
/* 02B37C 8002B7CC 24C601EC */   addiu      $a2, $a2, 0x1ec
/* 02B380 8002B7D0 3C02800A */  lui         $v0, %hi(D_8009F434)
/* 02B384 8002B7D4 2442F434 */  addiu       $v0, $v0, %lo(D_8009F434)
/* 02B388 8002B7D8 C4440000 */  lwc1        $f4, 0x0($v0)
/* 02B38C 8002B7DC C4460004 */  lwc1        $f6, 0x4($v0)
/* 02B390 8002B7E0 C4480008 */  lwc1        $f8, 0x8($v0)
/* 02B394 8002B7E4 3C04800F */  lui         $a0, %hi(D_800F62A8)
/* 02B398 8002B7E8 248462A8 */  addiu       $a0, $a0, %lo(D_800F62A8)
/* 02B39C 8002B7EC 27A50034 */  addiu       $a1, $sp, 0x34
/* 02B3A0 8002B7F0 27A6004C */  addiu       $a2, $sp, 0x4c
/* 02B3A4 8002B7F4 E7A40034 */  swc1        $f4, 0x34($sp)
/* 02B3A8 8002B7F8 E7A60038 */  swc1        $f6, 0x38($sp)
/* 02B3AC 8002B7FC 0C00F620 */  jal         func_8003D880
/* 02B3B0 8002B800 E7A8003C */   swc1       $f8, 0x3c($sp)
/* 02B3B4 8002B804 8E040000 */  lw          $a0, 0x0($s0)
/* 02B3B8 8002B808 0C0052D5 */  jal         func_80014B54
/* 02B3BC 8002B80C 24050047 */   addiu      $a1, $zero, 0x47
/* 02B3C0 8002B810 8E040000 */  lw          $a0, 0x0($s0)
/* 02B3C4 8002B814 C4500048 */  lwc1        $f16, 0x48($v0)
/* 02B3C8 8002B818 2405004C */  addiu       $a1, $zero, 0x4c
/* 02B3CC 8002B81C C48A0048 */  lwc1        $f10, 0x48($a0)
/* 02B3D0 8002B820 46105481 */  sub.s       $f18, $f10, $f16
/* 02B3D4 8002B824 0C0052D5 */  jal         func_80014B54
/* 02B3D8 8002B828 E7B20030 */   swc1       $f18, 0x30($sp)
/* 02B3DC 8002B82C 8E040000 */  lw          $a0, 0x0($s0)
/* 02B3E0 8002B830 C4460048 */  lwc1        $f6, 0x48($v0)
/* 02B3E4 8002B834 C7A80030 */  lwc1        $f8, 0x30($sp)
/* 02B3E8 8002B838 C4840048 */  lwc1        $f4, 0x48($a0)
/* 02B3EC 8002B83C 3C014000 */  lui         $at, 0x4000
/* 02B3F0 8002B840 44818000 */  mtc1        $at, $f16
/* 02B3F4 8002B844 46062001 */  sub.s       $f0, $f4, $f6
/* 02B3F8 8002B848 C7A40050 */  lwc1        $f4, 0x50($sp)
/* 02B3FC 8002B84C 46080280 */  add.s       $f10, $f0, $f8
/* 02B400 8002B850 C7A8004C */  lwc1        $f8, 0x4c($sp)
/* 02B404 8002B854 46105483 */  div.s       $f18, $f10, $f16
/* 02B408 8002B858 46122180 */  add.s       $f6, $f4, $f18
/* 02B40C 8002B85C E7A60050 */  swc1        $f6, 0x50($sp)
/* 02B410 8002B860 E4880018 */  swc1        $f8, 0x18($a0)
/* 02B414 8002B864 8E180000 */  lw          $t8, 0x0($s0)
/* 02B418 8002B868 C7AA0050 */  lwc1        $f10, 0x50($sp)
/* 02B41C 8002B86C E70A001C */  swc1        $f10, 0x1c($t8)
/* 02B420 8002B870 8E190000 */  lw          $t9, 0x0($s0)
/* 02B424 8002B874 C7B00054 */  lwc1        $f16, 0x54($sp)
/* 02B428 8002B878 E7300020 */  swc1        $f16, 0x20($t9)
/* 02B42C 8002B87C 8E080000 */  lw          $t0, 0x0($s0)
/* 02B430 8002B880 C7A4004C */  lwc1        $f4, 0x4c($sp)
/* 02B434 8002B884 E5040044 */  swc1        $f4, 0x44($t0)
/* 02B438 8002B888 8E090000 */  lw          $t1, 0x0($s0)
/* 02B43C 8002B88C C7B20050 */  lwc1        $f18, 0x50($sp)
/* 02B440 8002B890 E5320048 */  swc1        $f18, 0x48($t1)
/* 02B444 8002B894 8E0A0000 */  lw          $t2, 0x0($s0)
/* 02B448 8002B898 C7A60054 */  lwc1        $f6, 0x54($sp)
/* 02B44C 8002B89C E546004C */  swc1        $f6, 0x4c($t2)
/* 02B450 8002B8A0 8FBF001C */  lw          $ra, 0x1c($sp)
/* 02B454 8002B8A4 8FB00018 */  lw          $s0, 0x18($sp)
/* 02B458 8002B8A8 27BD0058 */  addiu       $sp, $sp, 0x58
/* 02B45C 8002B8AC 03E00008 */  jr          $ra
/* 02B460 8002B8B0 00000000 */   nop

glabel func_8002B8B4 # 10
/* 02B464 8002B8B4 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 02B468 8002B8B8 3C0E800B */  lui         $t6, %hi(D_800B1A78)
/* 02B46C 8002B8BC 8DCE1A78 */  lw          $t6, %lo(D_800B1A78)($t6)
/* 02B470 8002B8C0 AFB00014 */  sw          $s0, 0x14($sp)
/* 02B474 8002B8C4 3C108007 */  lui         $s0, %hi(D_80071E88)
/* 02B478 8002B8C8 26101E88 */  addiu       $s0, $s0, %lo(D_80071E88)
/* 02B47C 8002B8CC 8E040000 */  lw          $a0, 0x0($s0)
/* 02B480 8002B8D0 000E78C0 */  sll         $t7, $t6, 3
/* 02B484 8002B8D4 3C18800B */  lui         $t8, %hi(D_800B1990)
/* 02B488 8002B8D8 01EE7823 */  subu        $t7, $t7, $t6
/* 02B48C 8002B8DC AFBF001C */  sw          $ra, 0x1c($sp)
/* 02B490 8002B8E0 AFB10018 */  sw          $s1, 0x18($sp)
/* 02B494 8002B8E4 000F7940 */  sll         $t7, $t7, 5
/* 02B498 8002B8E8 27181990 */  addiu       $t8, $t8, %lo(D_800B1990)
/* 02B49C 8002B8EC 01F8C821 */  addu        $t9, $t7, $t8
/* 02B4A0 8002B8F0 8C910054 */  lw          $s1, 0x54($a0)
/* 02B4A4 8002B8F4 AFB90030 */  sw          $t9, 0x30($sp)
/* 02B4A8 8002B8F8 0C001DF8 */  jal         func_800077E0
/* 02B4AC 8002B8FC 24056000 */   addiu      $a1, $zero, 0x6000
/* 02B4B0 8002B900 0C00ADE4 */  jal         func_8002B790
/* 02B4B4 8002B904 00000000 */   nop
/* 02B4B8 8002B908 0C00421B */  jal         func_8001086C
/* 02B4BC 8002B90C 8E040000 */   lw         $a0, 0x0($s0)
/* 02B4C0 8002B910 0C003745 */  jal         func_8000DD14
/* 02B4C4 8002B914 8E040000 */   lw         $a0, 0x0($s0)
/* 02B4C8 8002B918 8FA20030 */  lw          $v0, 0x30($sp)
/* 02B4CC 8002B91C 8E060000 */  lw          $a2, 0x0($s0)
/* 02B4D0 8002B920 27A40038 */  addiu       $a0, $sp, 0x38
/* 02B4D4 8002B924 C4440000 */  lwc1        $f4, 0x0($v0)
/* 02B4D8 8002B928 C4C60044 */  lwc1        $f6, 0x44($a2)
/* 02B4DC 8002B92C 46062201 */  sub.s       $f8, $f4, $f6
/* 02B4E0 8002B930 E7A80038 */  swc1        $f8, 0x38($sp)
/* 02B4E4 8002B934 C44A0004 */  lwc1        $f10, 0x4($v0)
/* 02B4E8 8002B938 C4D00048 */  lwc1        $f16, 0x48($a2)
/* 02B4EC 8002B93C 46105481 */  sub.s       $f18, $f10, $f16
/* 02B4F0 8002B940 E7B2003C */  swc1        $f18, 0x3c($sp)
/* 02B4F4 8002B944 C4440008 */  lwc1        $f4, 0x8($v0)
/* 02B4F8 8002B948 C4C6004C */  lwc1        $f6, 0x4c($a2)
/* 02B4FC 8002B94C 46062201 */  sub.s       $f8, $f4, $f6
/* 02B500 8002B950 0C002CB9 */  jal         func_8000B2E4
/* 02B504 8002B954 E7A80040 */   swc1       $f8, 0x40($sp)
/* 02B508 8002B958 E7A00028 */  swc1        $f0, 0x28($sp)
/* 02B50C 8002B95C C62A000C */  lwc1        $f10, 0xc($s1)
/* 02B510 8002B960 8E040000 */  lw          $a0, 0x0($s0)
/* 02B514 8002B964 00003025 */  move        $a2, $zero
/* 02B518 8002B968 46005407 */  neg.s       $f16, $f10
/* 02B51C 8002B96C 44058000 */  mfc1        $a1, $f16
/* 02B520 8002B970 0C0051BB */  jal         func_800146EC
/* 02B524 8002B974 00000000 */   nop
/* 02B528 8002B978 C7B20028 */  lwc1        $f18, 0x28($sp)
/* 02B52C 8002B97C C6240010 */  lwc1        $f4, 0x10($s1)
/* 02B530 8002B980 8E040000 */  lw          $a0, 0x0($s0)
/* 02B534 8002B984 24060001 */  addiu       $a2, $zero, 0x1
/* 02B538 8002B988 46049181 */  sub.s       $f6, $f18, $f4
/* 02B53C 8002B98C 44053000 */  mfc1        $a1, $f6
/* 02B540 8002B990 0C0051BB */  jal         func_800146EC
/* 02B544 8002B994 00000000 */   nop
/* 02B548 8002B998 AE200198 */  sw          $zero, 0x198($s1)
/* 02B54C 8002B99C 3C08800F */  lui         $t0, %hi(D_800F62A4)
/* 02B550 8002B9A0 8D0862A4 */  lw          $t0, %lo(D_800F62A4)($t0)
/* 02B554 8002B9A4 3C0B800A */  lui         $t3, %hi(D_8009F0F0)
/* 02B558 8002B9A8 256BF0F0 */  addiu       $t3, $t3, %lo(D_8009F0F0)
/* 02B55C 8002B9AC 00084880 */  sll         $t1, $t0, 2
/* 02B560 8002B9B0 01284821 */  addu        $t1, $t1, $t0
/* 02B564 8002B9B4 00094880 */  sll         $t1, $t1, 2
/* 02B568 8002B9B8 01284823 */  subu        $t1, $t1, $t0
/* 02B56C 8002B9BC 00094880 */  sll         $t1, $t1, 2
/* 02B570 8002B9C0 252A0010 */  addiu       $t2, $t1, 0x10
/* 02B574 8002B9C4 3C04800F */  lui         $a0, %hi(D_800F62A8)
/* 02B578 8002B9C8 248462A8 */  addiu       $a0, $a0, %lo(D_800F62A8)
/* 02B57C 8002B9CC 014B2821 */  addu        $a1, $t2, $t3
/* 02B580 8002B9D0 0C00F620 */  jal         func_8003D880
/* 02B584 8002B9D4 262601EC */   addiu      $a2, $s1, 0x1ec
/* 02B588 8002B9D8 3C0C800F */  lui         $t4, %hi(D_800F62A4)
/* 02B58C 8002B9DC 8D8C62A4 */  lw          $t4, %lo(D_800F62A4)($t4)
/* 02B590 8002B9E0 3C0F800A */  lui         $t7, %hi(D_8009F0F0)
/* 02B594 8002B9E4 25EFF0F0 */  addiu       $t7, $t7, %lo(D_8009F0F0)
/* 02B598 8002B9E8 000C6880 */  sll         $t5, $t4, 2
/* 02B59C 8002B9EC 01AC6821 */  addu        $t5, $t5, $t4
/* 02B5A0 8002B9F0 000D6880 */  sll         $t5, $t5, 2
/* 02B5A4 8002B9F4 01AC6823 */  subu        $t5, $t5, $t4
/* 02B5A8 8002B9F8 000D6880 */  sll         $t5, $t5, 2
/* 02B5AC 8002B9FC 25AE0010 */  addiu       $t6, $t5, 0x10
/* 02B5B0 8002BA00 0C00AB46 */  jal         func_8002AD18
/* 02B5B4 8002BA04 01CF2021 */   addu       $a0, $t6, $t7
/* 02B5B8 8002BA08 3C01800F */  lui         $at, %hi(D_800F62A0)
/* 02B5BC 8002BA0C AC2062A0 */  sw          $zero, %lo(D_800F62A0)($at)
/* 02B5C0 8002BA10 8E040000 */  lw          $a0, 0x0($s0)
/* 02B5C4 8002BA14 24050056 */  addiu       $a1, $zero, 0x56
/* 02B5C8 8002BA18 0C00420E */  jal         func_80010838
/* 02B5CC 8002BA1C 24060002 */   addiu      $a2, $zero, 0x2
/* 02B5D0 8002BA20 8E040000 */  lw          $a0, 0x0($s0)
/* 02B5D4 8002BA24 0C00563A */  jal         func_800158E8
/* 02B5D8 8002BA28 2405000C */   addiu      $a1, $zero, 0xc
/* 02B5DC 8002BA2C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 02B5E0 8002BA30 8FB00014 */  lw          $s0, 0x14($sp)
/* 02B5E4 8002BA34 8FB10018 */  lw          $s1, 0x18($sp)
/* 02B5E8 8002BA38 03E00008 */  jr          $ra
/* 02B5EC 8002BA3C 27BD0050 */   addiu      $sp, $sp, 0x50

glabel func_8002BA40 # 11
/* 02B5F0 8002BA40 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02B5F4 8002BA44 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02B5F8 8002BA48 0C002671 */  jal         func_800099C4
/* 02B5FC 8002BA4C AFA40018 */   sw         $a0, 0x18($sp)
/* 02B600 8002BA50 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02B604 8002BA54 3C01800F */  lui         $at, %hi(D_800F62D8)
/* 02B608 8002BA58 8FAF0018 */  lw          $t7, 0x18($sp)
/* 02B60C 8002BA5C AC2362D8 */  sw          $v1, %lo(D_800F62D8)($at)
/* 02B610 8002BA60 3C01800A */  lui         $at, %hi(D_8009F440)
/* 02B614 8002BA64 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02B618 8002BA68 03E00008 */  jr          $ra
/* 02B61C 8002BA6C AC2FF440 */   sw         $t7, %lo(D_8009F440)($at)

glabel func_8002BA70 # 12
/* 02B620 8002BA70 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02B624 8002BA74 3C068007 */  lui         $a2, %hi(D_80071E88)
/* 02B628 8002BA78 24C61E88 */  addiu       $a2, $a2, %lo(D_80071E88)
/* 02B62C 8002BA7C AFBF0014 */  sw          $ra, 0x14($sp)
/* 02B630 8002BA80 0C00421B */  jal         func_8001086C
/* 02B634 8002BA84 8CC40000 */   lw         $a0, 0x0($a2)
/* 02B638 8002BA88 0C045799 */  jal         func_80115E64
/* 02B63C 8002BA8C 00000000 */   nop
/* 02B640 8002BA90 3C0E800F */  lui         $t6, %hi(D_800F62A4)
/* 02B644 8002BA94 8DCE62A4 */  lw          $t6, %lo(D_800F62A4)($t6)
/* 02B648 8002BA98 0002C080 */  sll         $t8, $v0, 2
/* 02B64C 8002BA9C 3C03800A */  lui         $v1, %hi(D_8009F0F0)
/* 02B650 8002BAA0 000E7880 */  sll         $t7, $t6, 2
/* 02B654 8002BAA4 01EE7821 */  addu        $t7, $t7, $t6
/* 02B658 8002BAA8 000F7880 */  sll         $t7, $t7, 2
/* 02B65C 8002BAAC 01EE7823 */  subu        $t7, $t7, $t6
/* 02B660 8002BAB0 000F7880 */  sll         $t7, $t7, 2
/* 02B664 8002BAB4 01F8C821 */  addu        $t9, $t7, $t8
/* 02B668 8002BAB8 00791821 */  addu        $v1, $v1, $t9
/* 02B66C 8002BABC 8C63F0F0 */  lw          $v1, %lo(D_8009F0F0)($v1)
/* 02B670 8002BAC0 3C068007 */  lui         $a2, %hi(D_80071E88)
/* 02B674 8002BAC4 24010009 */  addiu       $at, $zero, 0x9
/* 02B678 8002BAC8 10610004 */  beq         $v1, $at, .L8002BADC
/* 02B67C 8002BACC 24C61E88 */   addiu      $a2, $a2, %lo(D_80071E88)
/* 02B680 8002BAD0 2401000A */  addiu       $at, $zero, 0xa
/* 02B684 8002BAD4 14610006 */  bne         $v1, $at, .L8002BAF0
/* 02B688 8002BAD8 00000000 */   nop
.L8002BADC:
/* 02B68C 8002BADC 8CC40000 */  lw          $a0, 0x0($a2)
/* 02B690 8002BAE0 0C0041FD */  jal         func_800107F4
/* 02B694 8002BAE4 2405002B */   addiu      $a1, $zero, 0x2b
/* 02B698 8002BAE8 1000001E */  b           .L8002BB64
/* 02B69C 8002BAEC 8FBF0014 */   lw         $ra, 0x14($sp)
.L8002BAF0:
/* 02B6A0 8002BAF0 0C00E500 */  jal         func_80039400
/* 02B6A4 8002BAF4 24040003 */   addiu      $a0, $zero, 0x3
/* 02B6A8 8002BAF8 3C068007 */  lui         $a2, %hi(D_80071E88)
/* 02B6AC 8002BAFC 10400009 */  beqz        $v0, .L8002BB24
/* 02B6B0 8002BB00 24C61E88 */   addiu      $a2, $a2, %lo(D_80071E88)
/* 02B6B4 8002BB04 24010001 */  addiu       $at, $zero, 0x1
/* 02B6B8 8002BB08 1041000F */  beq         $v0, $at, .L8002BB48
/* 02B6BC 8002BB0C 2405003E */   addiu      $a1, $zero, 0x3e
/* 02B6C0 8002BB10 24010002 */  addiu       $at, $zero, 0x2
/* 02B6C4 8002BB14 10410010 */  beq         $v0, $at, .L8002BB58
/* 02B6C8 8002BB18 24050053 */   addiu      $a1, $zero, 0x53
/* 02B6CC 8002BB1C 10000011 */  b           .L8002BB64
/* 02B6D0 8002BB20 8FBF0014 */   lw         $ra, 0x14($sp)
.L8002BB24:
/* 02B6D4 8002BB24 8CC90000 */  lw          $t1, 0x0($a2)
/* 02B6D8 8002BB28 24080003 */  addiu       $t0, $zero, 0x3
/* 02B6DC 8002BB2C 24050038 */  addiu       $a1, $zero, 0x38
/* 02B6E0 8002BB30 8D2A0054 */  lw          $t2, 0x54($t1)
/* 02B6E4 8002BB34 A548013C */  sh          $t0, 0x13c($t2)
/* 02B6E8 8002BB38 0C0041FD */  jal         func_800107F4
/* 02B6EC 8002BB3C 8CC40000 */   lw         $a0, 0x0($a2)
/* 02B6F0 8002BB40 10000008 */  b           .L8002BB64
/* 02B6F4 8002BB44 8FBF0014 */   lw         $ra, 0x14($sp)
.L8002BB48:
/* 02B6F8 8002BB48 0C0041FD */  jal         func_800107F4
/* 02B6FC 8002BB4C 8CC40000 */   lw         $a0, 0x0($a2)
/* 02B700 8002BB50 10000004 */  b           .L8002BB64
/* 02B704 8002BB54 8FBF0014 */   lw         $ra, 0x14($sp)
.L8002BB58:
/* 02B708 8002BB58 0C0041FD */  jal         func_800107F4
/* 02B70C 8002BB5C 8CC40000 */   lw         $a0, 0x0($a2)
/* 02B710 8002BB60 8FBF0014 */  lw          $ra, 0x14($sp)
.L8002BB64:
/* 02B714 8002BB64 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02B718 8002BB68 03E00008 */  jr          $ra
/* 02B71C 8002BB6C 00000000 */   nop

glabel func_8002BB70 # 13
/* 02B720 8002BB70 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 02B724 8002BB74 AFB40028 */  sw          $s4, 0x28($sp)
/* 02B728 8002BB78 AFB30024 */  sw          $s3, 0x24($sp)
/* 02B72C 8002BB7C AFB20020 */  sw          $s2, 0x20($sp)
/* 02B730 8002BB80 AFB1001C */  sw          $s1, 0x1c($sp)
/* 02B734 8002BB84 00A09025 */  move        $s2, $a1
/* 02B738 8002BB88 00809825 */  move        $s3, $a0
/* 02B73C 8002BB8C 00C0A025 */  move        $s4, $a2
/* 02B740 8002BB90 AFBF002C */  sw          $ra, 0x2c($sp)
/* 02B744 8002BB94 AFB00018 */  sw          $s0, 0x18($sp)
/* 02B748 8002BB98 14C00002 */  bnez        $a2, .L8002BBA4
/* 02B74C 8002BB9C 00008825 */   move       $s1, $zero
/* 02B750 8002BBA0 24140001 */  addiu       $s4, $zero, 0x1
.L8002BBA4:
/* 02B754 8002BBA4 3C10800F */  lui         $s0, %hi(D_800F62A4)
/* 02B758 8002BBA8 261062A4 */  addiu       $s0, $s0, %lo(D_800F62A4)
/* 02B75C 8002BBAC 0C00AB8B */  jal         func_8002AE2C
/* 02B760 8002BBB0 8E040000 */   lw         $a0, 0x0($s0)
/* 02B764 8002BBB4 54400013 */  bnel        $v0, $zero, .L8002BC04
/* 02B768 8002BBB8 8FBF002C */   lw         $ra, 0x2c($sp)
/* 02B76C 8002BBBC 8E0E0000 */  lw          $t6, 0x0($s0)
.L8002BBC0:
/* 02B770 8002BBC0 01D42021 */  addu        $a0, $t6, $s4
/* 02B774 8002BBC4 0244082A */  slt         $at, $s2, $a0
/* 02B778 8002BBC8 10200004 */  beqz        $at, .L8002BBDC
/* 02B77C 8002BBCC AE040000 */   sw         $a0, 0x0($s0)
/* 02B780 8002BBD0 AE130000 */  sw          $s3, 0x0($s0)
/* 02B784 8002BBD4 10000006 */  b           .L8002BBF0
/* 02B788 8002BBD8 02602025 */   move       $a0, $s3
.L8002BBDC:
/* 02B78C 8002BBDC 0093082A */  slt         $at, $a0, $s3
/* 02B790 8002BBE0 10200003 */  beqz        $at, .L8002BBF0
/* 02B794 8002BBE4 00000000 */   nop
/* 02B798 8002BBE8 AE120000 */  sw          $s2, 0x0($s0)
/* 02B79C 8002BBEC 02402025 */  move        $a0, $s2
.L8002BBF0:
/* 02B7A0 8002BBF0 0C00AB8B */  jal         func_8002AE2C
/* 02B7A4 8002BBF4 26310001 */   addiu      $s1, $s1, 0x1
/* 02B7A8 8002BBF8 5040FFF1 */  beql        $v0, $zero, .L8002BBC0
/* 02B7AC 8002BBFC 8E0E0000 */   lw         $t6, 0x0($s0)
/* 02B7B0 8002BC00 8FBF002C */  lw          $ra, 0x2c($sp)
.L8002BC04:
/* 02B7B4 8002BC04 8FB00018 */  lw          $s0, 0x18($sp)
/* 02B7B8 8002BC08 8FB1001C */  lw          $s1, 0x1c($sp)
/* 02B7BC 8002BC0C 8FB20020 */  lw          $s2, 0x20($sp)
/* 02B7C0 8002BC10 8FB30024 */  lw          $s3, 0x24($sp)
/* 02B7C4 8002BC14 8FB40028 */  lw          $s4, 0x28($sp)
/* 02B7C8 8002BC18 03E00008 */  jr          $ra
/* 02B7CC 8002BC1C 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8002BC20 # 14
/* 02B7D0 8002BC20 3C0E800B */  lui         $t6, %hi(D_800B093E)
/* 02B7D4 8002BC24 95CE093E */  lhu         $t6, %lo(D_800B093E)($t6)
/* 02B7D8 8002BC28 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 02B7DC 8002BC2C AFBF001C */  sw          $ra, 0x1c($sp)
/* 02B7E0 8002BC30 31CF4000 */  andi        $t7, $t6, 0x4000
/* 02B7E4 8002BC34 11E00016 */  beqz        $t7, .L8002BC90
/* 02B7E8 8002BC38 3C04800B */   lui        $a0, %hi(D_800B093E)
/* 02B7EC 8002BC3C 3C01800B */  lui         $at, %hi(D_800AAABC)
/* 02B7F0 8002BC40 C424AABC */  lwc1        $f4, %lo(D_800AAABC)($at)
/* 02B7F4 8002BC44 00002025 */  move        $a0, $zero
/* 02B7F8 8002BC48 00002825 */  move        $a1, $zero
/* 02B7FC 8002BC4C 00003025 */  move        $a2, $zero
/* 02B800 8002BC50 240700FE */  addiu       $a3, $zero, 0xfe
/* 02B804 8002BC54 0C000AF2 */  jal         func_80002BC8
/* 02B808 8002BC58 E7A40010 */   swc1       $f4, 0x10($sp)
/* 02B80C 8002BC5C 3C01800B */  lui         $at, %hi(D_800AAAC0)
/* 02B810 8002BC60 8C26AAC0 */  lw          $a2, %lo(D_800AAAC0)($at)
/* 02B814 8002BC64 8C27AAC4 */  lw          $a3, %lo(D_800AAAC4)($at)
/* 02B818 8002BC68 3C013FF0 */  lui         $at, 0x3ff0
/* 02B81C 8002BC6C 44813800 */  mtc1        $at, $f7
/* 02B820 8002BC70 44803000 */  mtc1        $zero, $f6
/* 02B824 8002BC74 2404FFFF */  addiu       $a0, $zero, -0x1
/* 02B828 8002BC78 0C00849C */  jal         func_80021270
/* 02B82C 8002BC7C F7A60010 */   sdc1       $f6, 0x10($sp)
/* 02B830 8002BC80 0C00AE90 */  jal         func_8002BA40
/* 02B834 8002BC84 24040004 */   addiu      $a0, $zero, 0x4
/* 02B838 8002BC88 100000B0 */  b           .L8002BF4C
/* 02B83C 8002BC8C 8FBF001C */   lw         $ra, 0x1c($sp)
.L8002BC90:
/* 02B840 8002BC90 9484093E */  lhu         $a0, %lo(D_800B093E)($a0)
/* 02B844 8002BC94 3C19800B */  lui         $t9, %hi(D_800B0938)
/* 02B848 8002BC98 30988000 */  andi        $t8, $a0, 0x8000
/* 02B84C 8002BC9C 13000009 */  beqz        $t8, .L8002BCC4
/* 02B850 8002BCA0 3C048007 */   lui        $a0, 0x8007
/* 02B854 8002BCA4 0C00789A */  jal         func_8001E268
/* 02B858 8002BCA8 240400C4 */   addiu      $a0, $zero, 0xc4
/* 02B85C 8002BCAC 0C00AE9C */  jal         func_8002BA70
/* 02B860 8002BCB0 00000000 */   nop
/* 02B864 8002BCB4 0C00AE90 */  jal         func_8002BA40
/* 02B868 8002BCB8 24040003 */   addiu      $a0, $zero, 0x3
/* 02B86C 8002BCBC 100000A3 */  b           .L8002BF4C
/* 02B870 8002BCC0 8FBF001C */   lw         $ra, 0x1c($sp)
.L8002BCC4:
/* 02B874 8002BCC4 97390938 */  lhu         $t9, %lo(D_800B0938)($t9)
/* 02B878 8002BCC8 3C02800B */  lui         $v0, %hi(D_800B093E + 0x3)
/* 02B87C 8002BCCC 33280F00 */  andi        $t0, $t9, 0xf00
/* 02B880 8002BCD0 15000007 */  bnez        $t0, .L8002BCF0
/* 02B884 8002BCD4 00000000 */   nop
/* 02B888 8002BCD8 80420941 */  lb          $v0, %lo(D_800B093E + 0x3)($v0)
/* 02B88C 8002BCDC 2841FFE2 */  slti        $at, $v0, -0x1e
/* 02B890 8002BCE0 14200003 */  bnez        $at, .L8002BCF0
/* 02B894 8002BCE4 2841001F */   slti       $at, $v0, 0x1f
/* 02B898 8002BCE8 14200007 */  bnez        $at, .L8002BD08
/* 02B89C 8002BCEC 3C02800F */   lui        $v0, %hi(D_800F62A0)
.L8002BCF0:
/* 02B8A0 8002BCF0 3C02800F */  lui         $v0, %hi(D_800F62A0)
/* 02B8A4 8002BCF4 244262A0 */  addiu       $v0, $v0, %lo(D_800F62A0)
/* 02B8A8 8002BCF8 8C490000 */  lw          $t1, 0x0($v0)
/* 02B8AC 8002BCFC 252A0001 */  addiu       $t2, $t1, 0x1
/* 02B8B0 8002BD00 10000003 */  b           .L8002BD10
/* 02B8B4 8002BD04 AC4A0000 */   sw         $t2, 0x0($v0)
.L8002BD08:
/* 02B8B8 8002BD08 244262A0 */  addiu       $v0, $v0, %lo(D_800F62A0)
/* 02B8BC 8002BD0C AC400000 */  sw          $zero, 0x0($v0)
.L8002BD10:
/* 02B8C0 8002BD10 0C0471EC */  jal         func_8011C7B0
/* 02B8C4 8002BD14 8C841E88 */   lw         $a0, 0x1e88($a0)
/* 02B8C8 8002BD18 1040004B */  beqz        $v0, .L8002BE48
/* 02B8CC 8002BD1C 3C0B8007 */   lui        $t3, %hi(D_80071E88)
/* 02B8D0 8002BD20 8D6B1E88 */  lw          $t3, %lo(D_80071E88)($t3)
/* 02B8D4 8002BD24 24010012 */  addiu       $at, $zero, 0x12
/* 02B8D8 8002BD28 3C0A800A */  lui         $t2, %hi(D_8009F6E4)
/* 02B8DC 8002BD2C 8D630054 */  lw          $v1, 0x54($t3)
/* 02B8E0 8002BD30 254AF6E4 */  addiu       $t2, $t2, %lo(D_8009F6E4)
/* 02B8E4 8002BD34 8C6C021C */  lw          $t4, 0x21c($v1)
/* 02B8E8 8002BD38 2463021C */  addiu       $v1, $v1, 0x21c
/* 02B8EC 8002BD3C 5581003B */  bnel        $t4, $at, .L8002BE2C
/* 02B8F0 8002BD40 8D410000 */   lw         $at, 0x0($t2)
/* 02B8F4 8002BD44 8C6D0004 */  lw          $t5, 0x4($v1)
/* 02B8F8 8002BD48 2401000A */  addiu       $at, $zero, 0xa
/* 02B8FC 8002BD4C 55A1001C */  bnel        $t5, $at, .L8002BDC0
/* 02B900 8002BD50 8C620004 */   lw         $v0, 0x4($v1)
/* 02B904 8002BD54 0C045799 */  jal         func_80115E64
/* 02B908 8002BD58 AFA30044 */   sw         $v1, 0x44($sp)
/* 02B90C 8002BD5C 24010002 */  addiu       $at, $zero, 0x2
/* 02B910 8002BD60 14410016 */  bne         $v0, $at, .L8002BDBC
/* 02B914 8002BD64 8FA30044 */   lw         $v1, 0x44($sp)
/* 02B918 8002BD68 3C0E800A */  lui         $t6, %hi(D_8009F6D8)
/* 02B91C 8002BD6C 25CEF6D8 */  addiu       $t6, $t6, %lo(D_8009F6D8)
/* 02B920 8002BD70 8DC10000 */  lw          $at, 0x0($t6)
/* 02B924 8002BD74 27A40034 */  addiu       $a0, $sp, 0x34
/* 02B928 8002BD78 2419000A */  addiu       $t9, $zero, 0xa
/* 02B92C 8002BD7C AC810000 */  sw          $at, 0x0($a0)
/* 02B930 8002BD80 8DD80004 */  lw          $t8, 0x4($t6)
/* 02B934 8002BD84 AC980004 */  sw          $t8, 0x4($a0)
/* 02B938 8002BD88 8DC10008 */  lw          $at, 0x8($t6)
/* 02B93C 8002BD8C AC810008 */  sw          $at, 0x8($a0)
/* 02B940 8002BD90 3C01800F */  lui         $at, %hi(D_800F62A4)
/* 02B944 8002BD94 0C00AB2C */  jal         func_8002ACB0
/* 02B948 8002BD98 AC3962A4 */   sw         $t9, %lo(D_800F62A4)($at)
/* 02B94C 8002BD9C 0C00789A */  jal         func_8001E268
/* 02B950 8002BDA0 240400C4 */   addiu      $a0, $zero, 0xc4
/* 02B954 8002BDA4 0C00AE9C */  jal         func_8002BA70
/* 02B958 8002BDA8 00000000 */   nop
/* 02B95C 8002BDAC 0C00AE90 */  jal         func_8002BA40
/* 02B960 8002BDB0 24040003 */   addiu      $a0, $zero, 0x3
/* 02B964 8002BDB4 10000065 */  b           .L8002BF4C
/* 02B968 8002BDB8 8FBF001C */   lw         $ra, 0x1c($sp)
.L8002BDBC:
/* 02B96C 8002BDBC 8C620004 */  lw          $v0, 0x4($v1)
.L8002BDC0:
/* 02B970 8002BDC0 3C07800A */  lui         $a3, %hi(D_8009F6F4)
/* 02B974 8002BDC4 04410004 */  bgez        $v0, .L8002BDD8
/* 02B978 8002BDC8 2841000A */   slti       $at, $v0, 0xa
/* 02B97C 8002BDCC AC600004 */  sw          $zero, 0x4($v1)
/* 02B980 8002BDD0 10000005 */  b           .L8002BDE8
/* 02B984 8002BDD4 00001025 */   move       $v0, $zero
.L8002BDD8:
/* 02B988 8002BDD8 54200004 */  bnel        $at, $zero, .L8002BDEC
/* 02B98C 8002BDDC 00024880 */   sll        $t1, $v0, 2
/* 02B990 8002BDE0 24020009 */  addiu       $v0, $zero, 0x9
/* 02B994 8002BDE4 AC620004 */  sw          $v0, 0x4($v1)
.L8002BDE8:
/* 02B998 8002BDE8 00024880 */  sll         $t1, $v0, 2
.L8002BDEC:
/* 02B99C 8002BDEC 00E93821 */  addu        $a3, $a3, $t1
/* 02B9A0 8002BDF0 8CE4F6F4 */  lw          $a0, %lo(D_8009F6F4)($a3)
/* 02B9A4 8002BDF4 0C00AB8B */  jal         func_8002AE2C
/* 02B9A8 8002BDF8 AFA40040 */   sw         $a0, 0x40($sp)
/* 02B9AC 8002BDFC 10400012 */  beqz        $v0, .L8002BE48
/* 02B9B0 8002BE00 8FA70040 */   lw         $a3, 0x40($sp)
/* 02B9B4 8002BE04 3C01800F */  lui         $at, %hi(D_800F62A4)
/* 02B9B8 8002BE08 3C048007 */  lui         $a0, %hi(D_80071E88)
/* 02B9BC 8002BE0C AC2762A4 */  sw          $a3, %lo(D_800F62A4)($at)
/* 02B9C0 8002BE10 8C841E88 */  lw          $a0, %lo(D_80071E88)($a0)
/* 02B9C4 8002BE14 24050001 */  addiu       $a1, $zero, 0x1
/* 02B9C8 8002BE18 0C00463C */  jal         func_800118F0
/* 02B9CC 8002BE1C 240600A4 */   addiu      $a2, $zero, 0xa4
/* 02B9D0 8002BE20 10000009 */  b           .L8002BE48
/* 02B9D4 8002BE24 00000000 */   nop
/* 02B9D8 8002BE28 8D410000 */  lw          $at, 0x0($t2)
.L8002BE2C:
/* 02B9DC 8002BE2C 27A40028 */  addiu       $a0, $sp, 0x28
/* 02B9E0 8002BE30 AC810000 */  sw          $at, 0x0($a0)
/* 02B9E4 8002BE34 8D4D0004 */  lw          $t5, 0x4($t2)
/* 02B9E8 8002BE38 AC8D0004 */  sw          $t5, 0x4($a0)
/* 02B9EC 8002BE3C 8D410008 */  lw          $at, 0x8($t2)
/* 02B9F0 8002BE40 0C00AB2C */  jal         func_8002ACB0
/* 02B9F4 8002BE44 AC810008 */   sw         $at, 0x8($a0)
.L8002BE48:
/* 02B9F8 8002BE48 3C04800B */  lui         $a0, %hi(D_800B093E)
/* 02B9FC 8002BE4C 9483093E */  lhu         $v1, %lo(D_800B093E)($a0)
/* 02BA00 8002BE50 3C02800F */  lui         $v0, %hi(D_800F62A4)
/* 02BA04 8002BE54 AFA00048 */  sw          $zero, 0x48($sp)
/* 02BA08 8002BE58 306F0500 */  andi        $t7, $v1, 0x500
/* 02BA0C 8002BE5C 11E0000A */  beqz        $t7, .L8002BE88
/* 02BA10 8002BE60 244262A4 */   addiu      $v0, $v0, %lo(D_800F62A4)
/* 02BA14 8002BE64 8C580000 */  lw          $t8, 0x0($v0)
/* 02BA18 8002BE68 240E0001 */  addiu       $t6, $zero, 0x1
/* 02BA1C 8002BE6C AFAE0048 */  sw          $t6, 0x48($sp)
/* 02BA20 8002BE70 27190001 */  addiu       $t9, $t8, 0x1
/* 02BA24 8002BE74 AC590000 */  sw          $t9, 0x0($v0)
/* 02BA28 8002BE78 0C00789A */  jal         func_8001E268
/* 02BA2C 8002BE7C 240400AC */   addiu      $a0, $zero, 0xac
/* 02BA30 8002BE80 3C04800B */  lui         $a0, %hi(D_800B093E)
/* 02BA34 8002BE84 9483093E */  lhu         $v1, %lo(D_800B093E)($a0)
.L8002BE88:
/* 02BA38 8002BE88 30680A00 */  andi        $t0, $v1, 0xa00
/* 02BA3C 8002BE8C 11000009 */  beqz        $t0, .L8002BEB4
/* 02BA40 8002BE90 3C02800F */   lui        $v0, %hi(D_800F62A4)
/* 02BA44 8002BE94 244262A4 */  addiu       $v0, $v0, %lo(D_800F62A4)
/* 02BA48 8002BE98 8C4C0000 */  lw          $t4, 0x0($v0)
/* 02BA4C 8002BE9C 2409FFFF */  addiu       $t1, $zero, -0x1
/* 02BA50 8002BEA0 AFA90048 */  sw          $t1, 0x48($sp)
/* 02BA54 8002BEA4 258BFFFF */  addiu       $t3, $t4, -0x1
/* 02BA58 8002BEA8 AC4B0000 */  sw          $t3, 0x0($v0)
/* 02BA5C 8002BEAC 0C00789A */  jal         func_8001E268
/* 02BA60 8002BEB0 240400AC */   addiu      $a0, $zero, 0xac
.L8002BEB4:
/* 02BA64 8002BEB4 3C02800F */  lui         $v0, %hi(D_800F62A4)
/* 02BA68 8002BEB8 8C4262A4 */  lw          $v0, %lo(D_800F62A4)($v0)
/* 02BA6C 8002BEBC 00002025 */  move        $a0, $zero
/* 02BA70 8002BEC0 24050008 */  addiu       $a1, $zero, 0x8
/* 02BA74 8002BEC4 04410005 */  bgez        $v0, .L8002BEDC
/* 02BA78 8002BEC8 28410009 */   slti       $at, $v0, 0x9
/* 02BA7C 8002BECC 240A0008 */  addiu       $t2, $zero, 0x8
/* 02BA80 8002BED0 3C01800F */  lui         $at, %hi(D_800F62A4)
/* 02BA84 8002BED4 10000004 */  b           .L8002BEE8
/* 02BA88 8002BED8 AC2A62A4 */   sw         $t2, %lo(D_800F62A4)($at)
.L8002BEDC:
/* 02BA8C 8002BEDC 14200002 */  bnez        $at, .L8002BEE8
/* 02BA90 8002BEE0 3C01800F */   lui        $at, %hi(D_800F62A4)
/* 02BA94 8002BEE4 AC2062A4 */  sw          $zero, %lo(D_800F62A4)($at)
.L8002BEE8:
/* 02BA98 8002BEE8 0C00AEDC */  jal         func_8002BB70
/* 02BA9C 8002BEEC 8FA60048 */   lw         $a2, 0x48($sp)
/* 02BAA0 8002BEF0 3C02800F */  lui         $v0, %hi(D_800F62A4)
/* 02BAA4 8002BEF4 8C4262A4 */  lw          $v0, %lo(D_800F62A4)($v0)
/* 02BAA8 8002BEF8 3C0D800A */  lui         $t5, %hi(D_8009F6F0)
/* 02BAAC 8002BEFC 8DADF6F0 */  lw          $t5, %lo(D_8009F6F0)($t5)
/* 02BAB0 8002BF00 00027880 */  sll         $t7, $v0, 2
/* 02BAB4 8002BF04 01E27821 */  addu        $t7, $t7, $v0
/* 02BAB8 8002BF08 11A2000F */  beq         $t5, $v0, .L8002BF48
/* 02BABC 8002BF0C 000F7880 */   sll        $t7, $t7, 2
/* 02BAC0 8002BF10 01E27823 */  subu        $t7, $t7, $v0
/* 02BAC4 8002BF14 000F7880 */  sll         $t7, $t7, 2
/* 02BAC8 8002BF18 3C18800A */  lui         $t8, %hi(D_8009F0F0)
/* 02BACC 8002BF1C 2718F0F0 */  addiu       $t8, $t8, %lo(D_8009F0F0)
/* 02BAD0 8002BF20 25EE0010 */  addiu       $t6, $t7, 0x10
/* 02BAD4 8002BF24 0C00AB2C */  jal         func_8002ACB0
/* 02BAD8 8002BF28 01D82021 */   addu       $a0, $t6, $t8
/* 02BADC 8002BF2C 3C19800F */  lui         $t9, %hi(D_800F62A4)
/* 02BAE0 8002BF30 8F3962A4 */  lw          $t9, %lo(D_800F62A4)($t9)
/* 02BAE4 8002BF34 3C01800A */  lui         $at, %hi(D_8009F6F0)
/* 02BAE8 8002BF38 240800FF */  addiu       $t0, $zero, 0xff
/* 02BAEC 8002BF3C AC39F6F0 */  sw          $t9, %lo(D_8009F6F0)($at)
/* 02BAF0 8002BF40 3C01800A */  lui         $at, %hi(D_8009F444)
/* 02BAF4 8002BF44 AC28F444 */  sw          $t0, %lo(D_8009F444)($at)
.L8002BF48:
/* 02BAF8 8002BF48 8FBF001C */  lw          $ra, 0x1c($sp)
.L8002BF4C:
/* 02BAFC 8002BF4C 27BD0058 */  addiu       $sp, $sp, 0x58
/* 02BB00 8002BF50 03E00008 */  jr          $ra
/* 02BB04 8002BF54 00000000 */   nop

glabel func_8002BF58 # 15
/* 02BB08 8002BF58 3C0E800B */  lui         $t6, %hi(D_800B2C78)
/* 02BB0C 8002BF5C 8DCE2C78 */  lw          $t6, %lo(D_800B2C78)($t6)
/* 02BB10 8002BF60 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02BB14 8002BF64 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02BB18 8002BF68 2DC10011 */  sltiu       $at, $t6, 0x11
/* 02BB1C 8002BF6C 10200019 */  beqz        $at, L8002BFD4
/* 02BB20 8002BF70 000E7080 */   sll        $t6, $t6, 2
/* 02BB24 8002BF74 3C01800B */  lui         $at, %hi(jtbl_800AAAC8)
/* 02BB28 8002BF78 002E0821 */  addu        $at, $at, $t6
/* 02BB2C 8002BF7C 8C2EAAC8 */  lw          $t6, %lo(jtbl_800AAAC8)($at)
/* 02BB30 8002BF80 01C00008 */  jr          $t6
/* 02BB34 8002BF84 00000000 */   nop
glabel L8002BF88
/* 02BB38 8002BF88 3C01800F */  lui         $at, %hi(D_800F62A4)
/* 02BB3C 8002BF8C 10000013 */  b           .L8002BFDC
/* 02BB40 8002BF90 AC2062A4 */   sw         $zero, %lo(D_800F62A4)($at)
glabel L8002BF94
/* 02BB44 8002BF94 240F0003 */  addiu       $t7, $zero, 0x3
/* 02BB48 8002BF98 3C01800F */  lui         $at, %hi(D_800F62A4)
/* 02BB4C 8002BF9C 1000000F */  b           .L8002BFDC
/* 02BB50 8002BFA0 AC2F62A4 */   sw         $t7, %lo(D_800F62A4)($at)
glabel L8002BFA4
/* 02BB54 8002BFA4 24180001 */  addiu       $t8, $zero, 0x1
/* 02BB58 8002BFA8 3C01800F */  lui         $at, %hi(D_800F62A4)
/* 02BB5C 8002BFAC 1000000B */  b           .L8002BFDC
/* 02BB60 8002BFB0 AC3862A4 */   sw         $t8, %lo(D_800F62A4)($at)
glabel L8002BFB4
/* 02BB64 8002BFB4 24190008 */  addiu       $t9, $zero, 0x8
/* 02BB68 8002BFB8 3C01800F */  lui         $at, %hi(D_800F62A4)
/* 02BB6C 8002BFBC 10000007 */  b           .L8002BFDC
/* 02BB70 8002BFC0 AC3962A4 */   sw         $t9, %lo(D_800F62A4)($at)
glabel L8002BFC4
/* 02BB74 8002BFC4 24080006 */  addiu       $t0, $zero, 0x6
/* 02BB78 8002BFC8 3C01800F */  lui         $at, %hi(D_800F62A4)
/* 02BB7C 8002BFCC 10000003 */  b           .L8002BFDC
/* 02BB80 8002BFD0 AC2862A4 */   sw         $t0, %lo(D_800F62A4)($at)
glabel L8002BFD4
/* 02BB84 8002BFD4 3C01800F */  lui         $at, %hi(D_800F62A4)
/* 02BB88 8002BFD8 AC2062A4 */  sw          $zero, %lo(D_800F62A4)($at)
.L8002BFDC:
/* 02BB8C 8002BFDC 00002025 */  move        $a0, $zero
/* 02BB90 8002BFE0 24050008 */  addiu       $a1, $zero, 0x8
/* 02BB94 8002BFE4 0C00AEDC */  jal         func_8002BB70
/* 02BB98 8002BFE8 24060001 */   addiu      $a2, $zero, 0x1
/* 02BB9C 8002BFEC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02BBA0 8002BFF0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02BBA4 8002BFF4 03E00008 */  jr          $ra
/* 02BBA8 8002BFF8 00000000 */   nop

glabel func_8002BFFC # 16
/* 02BBAC 8002BFFC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02BBB0 8002C000 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02BBB4 8002C004 0C0005DD */  jal         func_80001774
/* 02BBB8 8002C008 2404001F */   addiu      $a0, $zero, 0x1f
/* 02BBBC 8002C00C 3C048007 */  lui         $a0, %hi(D_80071E88)
/* 02BBC0 8002C010 8C841E88 */  lw          $a0, %lo(D_80071E88)($a0)
/* 02BBC4 8002C014 0C04704F */  jal         func_8011C13C
/* 02BBC8 8002C018 24050002 */   addiu      $a1, $zero, 0x2
/* 02BBCC 8002C01C 24020001 */  addiu       $v0, $zero, 0x1
/* 02BBD0 8002C020 3C018010 */  lui         $at, %hi(D_800FD088)
/* 02BBD4 8002C024 AC22D088 */  sw          $v0, %lo(D_800FD088)($at)
/* 02BBD8 8002C028 3C018007 */  lui         $at, %hi(D_80070000)
/* 02BBDC 8002C02C AC220000 */  sw          $v0, %lo(D_80070000)($at)
/* 02BBE0 8002C030 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02BBE4 8002C034 3C018006 */  lui         $at, %hi(D_80061290)
/* 02BBE8 8002C038 AC221290 */  sw          $v0, %lo(D_80061290)($at)
/* 02BBEC 8002C03C 3C018007 */  lui         $at, %hi(D_80070004)
/* 02BBF0 8002C040 AC220004 */  sw          $v0, %lo(D_80070004)($at)
/* 02BBF4 8002C044 03E00008 */  jr          $ra
/* 02BBF8 8002C048 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8002C04C # 17
/* 02BBFC 8002C04C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02BC00 8002C050 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02BC04 8002C054 0C045799 */  jal         func_80115E64
/* 02BC08 8002C058 00000000 */   nop
/* 02BC0C 8002C05C 10400009 */  beqz        $v0, .L8002C084
/* 02BC10 8002C060 00002025 */   move       $a0, $zero
/* 02BC14 8002C064 24010001 */  addiu       $at, $zero, 0x1
/* 02BC18 8002C068 1041000B */  beq         $v0, $at, .L8002C098
/* 02BC1C 8002C06C 00002025 */   move       $a0, $zero
/* 02BC20 8002C070 24010002 */  addiu       $at, $zero, 0x2
/* 02BC24 8002C074 1041000D */  beq         $v0, $at, .L8002C0AC
/* 02BC28 8002C078 00002025 */   move       $a0, $zero
/* 02BC2C 8002C07C 10000010 */  b           .L8002C0C0
/* 02BC30 8002C080 00002025 */   move       $a0, $zero
.L8002C084:
/* 02BC34 8002C084 2405000C */  addiu       $a1, $zero, 0xc
/* 02BC38 8002C088 0C00C4E0 */  jal         func_80031380
/* 02BC3C 8002C08C 24060001 */   addiu      $a2, $zero, 0x1
/* 02BC40 8002C090 1000000F */  b           .L8002C0D0
/* 02BC44 8002C094 8FBF0014 */   lw         $ra, 0x14($sp)
.L8002C098:
/* 02BC48 8002C098 2405000D */  addiu       $a1, $zero, 0xd
/* 02BC4C 8002C09C 0C00C4E0 */  jal         func_80031380
/* 02BC50 8002C0A0 24060001 */   addiu      $a2, $zero, 0x1
/* 02BC54 8002C0A4 1000000A */  b           .L8002C0D0
/* 02BC58 8002C0A8 8FBF0014 */   lw         $ra, 0x14($sp)
.L8002C0AC:
/* 02BC5C 8002C0AC 2405000E */  addiu       $a1, $zero, 0xe
/* 02BC60 8002C0B0 0C00C4E0 */  jal         func_80031380
/* 02BC64 8002C0B4 24060001 */   addiu      $a2, $zero, 0x1
/* 02BC68 8002C0B8 10000005 */  b           .L8002C0D0
/* 02BC6C 8002C0BC 8FBF0014 */   lw         $ra, 0x14($sp)
.L8002C0C0:
/* 02BC70 8002C0C0 2405000E */  addiu       $a1, $zero, 0xe
/* 02BC74 8002C0C4 0C00C4E0 */  jal         func_80031380
/* 02BC78 8002C0C8 24060001 */   addiu      $a2, $zero, 0x1
/* 02BC7C 8002C0CC 8FBF0014 */  lw          $ra, 0x14($sp)
.L8002C0D0:
/* 02BC80 8002C0D0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02BC84 8002C0D4 03E00008 */  jr          $ra
/* 02BC88 8002C0D8 00000000 */   nop

glabel func_8002C0DC # 18
/* 02BC8C 8002C0DC 3C0E8007 */  lui         $t6, %hi(D_80071E88)
/* 02BC90 8002C0E0 8DCE1E88 */  lw          $t6, %lo(D_80071E88)($t6)
/* 02BC94 8002C0E4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02BC98 8002C0E8 AFBF001C */  sw          $ra, 0x1c($sp)
/* 02BC9C 8002C0EC 8DCF0054 */  lw          $t7, 0x54($t6)
/* 02BCA0 8002C0F0 0C0456DD */  jal         func_80115B74
/* 02BCA4 8002C0F4 AFAF0024 */   sw         $t7, 0x24($sp)
/* 02BCA8 8002C0F8 3C04800F */  lui         $a0, %hi(D_800F62A8)
/* 02BCAC 8002C0FC 0C000754 */  jal         func_80001D50
/* 02BCB0 8002C100 248462A8 */   addiu      $a0, $a0, %lo(D_800F62A8)
/* 02BCB4 8002C104 3C048007 */  lui         $a0, %hi(D_80071E88)
/* 02BCB8 8002C108 0C00422C */  jal         func_800108B0
/* 02BCBC 8002C10C 8C841E88 */   lw         $a0, %lo(D_80071E88)($a0)
/* 02BCC0 8002C110 10400005 */  beqz        $v0, .L8002C128
/* 02BCC4 8002C114 3C048007 */   lui        $a0, %hi(D_80071E88)
/* 02BCC8 8002C118 8C841E88 */  lw          $a0, %lo(D_80071E88)($a0)
/* 02BCCC 8002C11C 24050056 */  addiu       $a1, $zero, 0x56
/* 02BCD0 8002C120 0C00420E */  jal         func_80010838
/* 02BCD4 8002C124 24060002 */   addiu      $a2, $zero, 0x2
.L8002C128:
/* 02BCD8 8002C128 3C18800F */  lui         $t8, %hi(D_800F62A0)
/* 02BCDC 8002C12C 8F1862A0 */  lw          $t8, %lo(D_800F62A0)($t8)
/* 02BCE0 8002C130 8FB90024 */  lw          $t9, 0x24($sp)
/* 02BCE4 8002C134 8FA90024 */  lw          $t1, 0x24($sp)
/* 02BCE8 8002C138 2B010065 */  slti        $at, $t8, 0x65
/* 02BCEC 8002C13C 54200010 */  bnel        $at, $zero, .L8002C180
/* 02BCF0 8002C140 852A013C */   lh         $t2, 0x13c($t1)
/* 02BCF4 8002C144 8728013C */  lh          $t0, 0x13c($t9)
/* 02BCF8 8002C148 2401000E */  addiu       $at, $zero, 0xe
/* 02BCFC 8002C14C 3C048007 */  lui         $a0, %hi(D_80071E88)
/* 02BD00 8002C150 11010016 */  beq         $t0, $at, .L8002C1AC
/* 02BD04 8002C154 00000000 */   nop
/* 02BD08 8002C158 0C00421B */  jal         func_8001086C
/* 02BD0C 8002C15C 8C841E88 */   lw         $a0, %lo(D_80071E88)($a0)
/* 02BD10 8002C160 3C048007 */  lui         $a0, %hi(D_80071E88)
/* 02BD14 8002C164 8C841E88 */  lw          $a0, %lo(D_80071E88)($a0)
/* 02BD18 8002C168 24050056 */  addiu       $a1, $zero, 0x56
/* 02BD1C 8002C16C 0C00420E */  jal         func_80010838
/* 02BD20 8002C170 2406000E */   addiu      $a2, $zero, 0xe
/* 02BD24 8002C174 1000000D */  b           .L8002C1AC
/* 02BD28 8002C178 00000000 */   nop
/* 02BD2C 8002C17C 852A013C */  lh          $t2, 0x13c($t1)
.L8002C180:
/* 02BD30 8002C180 24010002 */  addiu       $at, $zero, 0x2
/* 02BD34 8002C184 3C048007 */  lui         $a0, %hi(D_80071E88)
/* 02BD38 8002C188 11410008 */  beq         $t2, $at, .L8002C1AC
/* 02BD3C 8002C18C 00000000 */   nop
/* 02BD40 8002C190 0C00421B */  jal         func_8001086C
/* 02BD44 8002C194 8C841E88 */   lw         $a0, %lo(D_80071E88)($a0)
/* 02BD48 8002C198 3C048007 */  lui         $a0, %hi(D_80071E88)
/* 02BD4C 8002C19C 8C841E88 */  lw          $a0, %lo(D_80071E88)($a0)
/* 02BD50 8002C1A0 24050056 */  addiu       $a1, $zero, 0x56
/* 02BD54 8002C1A4 0C00420E */  jal         func_80010838
/* 02BD58 8002C1A8 24060002 */   addiu      $a2, $zero, 0x2
.L8002C1AC:
/* 02BD5C 8002C1AC 3C0B800A */  lui         $t3, %hi(D_8009F440)
/* 02BD60 8002C1B0 8D6BF440 */  lw          $t3, %lo(D_8009F440)($t3)
/* 02BD64 8002C1B4 2D610006 */  sltiu       $at, $t3, 0x6
/* 02BD68 8002C1B8 102000D9 */  beqz        $at, .L8002C520
/* 02BD6C 8002C1BC 000B5880 */   sll        $t3, $t3, 2
/* 02BD70 8002C1C0 3C01800B */  lui         $at, %hi(jtbl_800AAB0C)
/* 02BD74 8002C1C4 002B0821 */  addu        $at, $at, $t3
/* 02BD78 8002C1C8 8C2BAB0C */  lw          $t3, %lo(jtbl_800AAB0C)($at)
/* 02BD7C 8002C1CC 01600008 */  jr          $t3
/* 02BD80 8002C1D0 00000000 */   nop
glabel L8002C1D4
/* 02BD84 8002C1D4 0C00AFFF */  jal         func_8002BFFC
/* 02BD88 8002C1D8 00000000 */   nop
/* 02BD8C 8002C1DC 0C00B013 */  jal         func_8002C04C
/* 02BD90 8002C1E0 00000000 */   nop
/* 02BD94 8002C1E4 00002025 */  move        $a0, $zero
/* 02BD98 8002C1E8 00002825 */  move        $a1, $zero
/* 02BD9C 8002C1EC 00003025 */  move        $a2, $zero
/* 02BDA0 8002C1F0 00003825 */  move        $a3, $zero
/* 02BDA4 8002C1F4 0C000AC9 */  jal         func_80002B24
/* 02BDA8 8002C1F8 AFA00010 */   sw         $zero, 0x10($sp)
/* 02BDAC 8002C1FC 3C01800B */  lui         $at, %hi(D_800AAB24)
/* 02BDB0 8002C200 C424AB24 */  lwc1        $f4, %lo(D_800AAB24)($at)
/* 02BDB4 8002C204 00002025 */  move        $a0, $zero
/* 02BDB8 8002C208 00002825 */  move        $a1, $zero
/* 02BDBC 8002C20C 00003025 */  move        $a2, $zero
/* 02BDC0 8002C210 00003825 */  move        $a3, $zero
/* 02BDC4 8002C214 0C000AF2 */  jal         func_80002BC8
/* 02BDC8 8002C218 E7A40010 */   swc1       $f4, 0x10($sp)
/* 02BDCC 8002C21C 0C00AFD6 */  jal         func_8002BF58
/* 02BDD0 8002C220 00000000 */   nop
/* 02BDD4 8002C224 0C00AE2D */  jal         func_8002B8B4
/* 02BDD8 8002C228 00000000 */   nop
/* 02BDDC 8002C22C 0C0005EC */  jal         func_800017B0
/* 02BDE0 8002C230 24040001 */   addiu      $a0, $zero, 0x1
/* 02BDE4 8002C234 0C00B1C2 */  jal         func_8002C708
/* 02BDE8 8002C238 00000000 */   nop
/* 02BDEC 8002C23C 0C045799 */  jal         func_80115E64
/* 02BDF0 8002C240 00000000 */   nop
/* 02BDF4 8002C244 10400008 */  beqz        $v0, .L8002C268
/* 02BDF8 8002C248 3C01800B */   lui        $at, %hi(D_800AAB28)
/* 02BDFC 8002C24C 24010001 */  addiu       $at, $zero, 0x1
/* 02BE00 8002C250 1041000D */  beq         $v0, $at, .L8002C288
/* 02BE04 8002C254 24010002 */   addiu      $at, $zero, 0x2
/* 02BE08 8002C258 10410014 */  beq         $v0, $at, .L8002C2AC
/* 02BE0C 8002C25C 00000000 */   nop
/* 02BE10 8002C260 10000019 */  b           .L8002C2C8
/* 02BE14 8002C264 00000000 */   nop
.L8002C268:
/* 02BE18 8002C268 D420AB28 */  ldc1        $f0, %lo(D_800AAB28)($at)
/* 02BE1C 8002C26C 24040009 */  addiu       $a0, $zero, 0x9
/* 02BE20 8002C270 44070000 */  mfc1        $a3, $f0
/* 02BE24 8002C274 44060800 */  mfc1        $a2, $f1
/* 02BE28 8002C278 0C00849C */  jal         func_80021270
/* 02BE2C 8002C27C F7A00010 */   sdc1       $f0, 0x10($sp)
/* 02BE30 8002C280 10000011 */  b           .L8002C2C8
/* 02BE34 8002C284 00000000 */   nop
.L8002C288:
/* 02BE38 8002C288 3C01800B */  lui         $at, %hi(D_800AAB30)
/* 02BE3C 8002C28C D420AB30 */  ldc1        $f0, %lo(D_800AAB30)($at)
/* 02BE40 8002C290 2404000A */  addiu       $a0, $zero, 0xa
/* 02BE44 8002C294 44070000 */  mfc1        $a3, $f0
/* 02BE48 8002C298 44060800 */  mfc1        $a2, $f1
/* 02BE4C 8002C29C 0C00849C */  jal         func_80021270
/* 02BE50 8002C2A0 F7A00010 */   sdc1       $f0, 0x10($sp)
/* 02BE54 8002C2A4 10000008 */  b           .L8002C2C8
/* 02BE58 8002C2A8 00000000 */   nop
.L8002C2AC:
/* 02BE5C 8002C2AC 3C01800B */  lui         $at, %hi(D_800AAB38)
/* 02BE60 8002C2B0 D420AB38 */  ldc1        $f0, %lo(D_800AAB38)($at)
/* 02BE64 8002C2B4 24040008 */  addiu       $a0, $zero, 0x8
/* 02BE68 8002C2B8 44070000 */  mfc1        $a3, $f0
/* 02BE6C 8002C2BC 44060800 */  mfc1        $a2, $f1
/* 02BE70 8002C2C0 0C00849C */  jal         func_80021270
/* 02BE74 8002C2C4 F7A00010 */   sdc1       $f0, 0x10($sp)
.L8002C2C8:
/* 02BE78 8002C2C8 0C00AE90 */  jal         func_8002BA40
/* 02BE7C 8002C2CC 24040001 */   addiu      $a0, $zero, 0x1
/* 02BE80 8002C2D0 0C001F4F */  jal         func_80007D3C
/* 02BE84 8002C2D4 24044000 */   addiu      $a0, $zero, 0x4000
/* 02BE88 8002C2D8 10000092 */  b           .L8002C524
/* 02BE8C 8002C2DC 8FBF001C */   lw         $ra, 0x1c($sp)
glabel L8002C2E0
/* 02BE90 8002C2E0 3C01800B */  lui         $at, %hi(D_800B1A6C)
/* 02BE94 8002C2E4 C4281A6C */  lwc1        $f8, %lo(D_800B1A6C)($at)
/* 02BE98 8002C2E8 44803000 */  mtc1        $zero, $f6
/* 02BE9C 8002C2EC 00000000 */  nop
/* 02BEA0 8002C2F0 46083032 */  c.eq.s      $f6, $f8
/* 02BEA4 8002C2F4 00000000 */  nop
/* 02BEA8 8002C2F8 45000003 */  bc1f        .L8002C308
/* 02BEAC 8002C2FC 00000000 */   nop
/* 02BEB0 8002C300 0C00AE90 */  jal         func_8002BA40
/* 02BEB4 8002C304 24040002 */   addiu      $a0, $zero, 0x2
.L8002C308:
/* 02BEB8 8002C308 0C00ADE4 */  jal         func_8002B790
/* 02BEBC 8002C30C 00000000 */   nop
/* 02BEC0 8002C310 0C001F4F */  jal         func_80007D3C
/* 02BEC4 8002C314 24044000 */   addiu      $a0, $zero, 0x4000
/* 02BEC8 8002C318 10000082 */  b           .L8002C524
/* 02BECC 8002C31C 8FBF001C */   lw         $ra, 0x1c($sp)
glabel L8002C320
/* 02BED0 8002C320 0C00AF08 */  jal         func_8002BC20
/* 02BED4 8002C324 00000000 */   nop
/* 02BED8 8002C328 0C00ADE4 */  jal         func_8002B790
/* 02BEDC 8002C32C 00000000 */   nop
/* 02BEE0 8002C330 0C001F4F */  jal         func_80007D3C
/* 02BEE4 8002C334 24044000 */   addiu      $a0, $zero, 0x4000
/* 02BEE8 8002C338 1000007A */  b           .L8002C524
/* 02BEEC 8002C33C 8FBF001C */   lw         $ra, 0x1c($sp)
glabel L8002C340
/* 02BEF0 8002C340 0C002671 */  jal         func_800099C4
/* 02BEF4 8002C344 00000000 */   nop
/* 02BEF8 8002C348 3C0C800F */  lui         $t4, %hi(D_800F62D8)
/* 02BEFC 8002C34C 8D8C62D8 */  lw          $t4, %lo(D_800F62D8)($t4)
/* 02BF00 8002C350 240E0000 */  addiu       $t6, $zero, 0x0
/* 02BF04 8002C354 004EC023 */  subu        $t8, $v0, $t6
/* 02BF08 8002C358 006C082B */  sltu        $at, $v1, $t4
/* 02BF0C 8002C35C 0301C023 */  subu        $t8, $t8, $at
/* 02BF10 8002C360 006CC823 */  subu        $t9, $v1, $t4
/* 02BF14 8002C364 17000002 */  bnez        $t8, .L8002C370
/* 02BF18 8002C368 2F2105DD */   sltiu      $at, $t9, 0x5dd
/* 02BF1C 8002C36C 14200014 */  bnez        $at, .L8002C3C0
.L8002C370:
/* 02BF20 8002C370 3C01800B */   lui        $at, %hi(D_800AAB40)
/* 02BF24 8002C374 C42AAB40 */  lwc1        $f10, %lo(D_800AAB40)($at)
/* 02BF28 8002C378 00002025 */  move        $a0, $zero
/* 02BF2C 8002C37C 00002825 */  move        $a1, $zero
/* 02BF30 8002C380 00003025 */  move        $a2, $zero
/* 02BF34 8002C384 240700FE */  addiu       $a3, $zero, 0xfe
/* 02BF38 8002C388 0C000AF2 */  jal         func_80002BC8
/* 02BF3C 8002C38C E7AA0010 */   swc1       $f10, 0x10($sp)
/* 02BF40 8002C390 3C01800B */  lui         $at, %hi(D_800AAB48)
/* 02BF44 8002C394 D420AB48 */  ldc1        $f0, %lo(D_800AAB48)($at)
/* 02BF48 8002C398 3C013FF0 */  lui         $at, 0x3ff0
/* 02BF4C 8002C39C 44818800 */  mtc1        $at, $f17
/* 02BF50 8002C3A0 44808000 */  mtc1        $zero, $f16
/* 02BF54 8002C3A4 44070000 */  mfc1        $a3, $f0
/* 02BF58 8002C3A8 44060800 */  mfc1        $a2, $f1
/* 02BF5C 8002C3AC 2404FFFF */  addiu       $a0, $zero, -0x1
/* 02BF60 8002C3B0 0C00849C */  jal         func_80021270
/* 02BF64 8002C3B4 F7B00010 */   sdc1       $f16, 0x10($sp)
/* 02BF68 8002C3B8 0C00AE90 */  jal         func_8002BA40
/* 02BF6C 8002C3BC 24040005 */   addiu      $a0, $zero, 0x5
.L8002C3C0:
/* 02BF70 8002C3C0 0C00ADE4 */  jal         func_8002B790
/* 02BF74 8002C3C4 00000000 */   nop
/* 02BF78 8002C3C8 0C001F4F */  jal         func_80007D3C
/* 02BF7C 8002C3CC 24044000 */   addiu      $a0, $zero, 0x4000
/* 02BF80 8002C3D0 10000054 */  b           .L8002C524
/* 02BF84 8002C3D4 8FBF001C */   lw         $ra, 0x1c($sp)
glabel L8002C3D8
/* 02BF88 8002C3D8 3C01800B */  lui         $at, %hi(D_800B1A6C)
/* 02BF8C 8002C3DC C4241A6C */  lwc1        $f4, %lo(D_800B1A6C)($at)
/* 02BF90 8002C3E0 44809000 */  mtc1        $zero, $f18
/* 02BF94 8002C3E4 00002025 */  move        $a0, $zero
/* 02BF98 8002C3E8 46049032 */  c.eq.s      $f18, $f4
/* 02BF9C 8002C3EC 00000000 */  nop
/* 02BFA0 8002C3F0 45000023 */  bc1f        .L8002C480
/* 02BFA4 8002C3F4 00000000 */   nop
/* 02BFA8 8002C3F8 0C046601 */  jal         func_80119804
/* 02BFAC 8002C3FC 24050001 */   addiu      $a1, $zero, 0x1
/* 02BFB0 8002C400 0C045799 */  jal         func_80115E64
/* 02BFB4 8002C404 00000000 */   nop
/* 02BFB8 8002C408 14400007 */  bnez        $v0, .L8002C428
/* 02BFBC 8002C40C 00002025 */   move       $a0, $zero
/* 02BFC0 8002C410 0C04476C */  jal         func_80111DB0
/* 02BFC4 8002C414 24050002 */   addiu      $a1, $zero, 0x2
/* 02BFC8 8002C418 0C0026A8 */  jal         func_80009AA0
/* 02BFCC 8002C41C 00002025 */   move       $a0, $zero
/* 02BFD0 8002C420 1000000F */  b           .L8002C460
/* 02BFD4 8002C424 00000000 */   nop
.L8002C428:
/* 02BFD8 8002C428 0C045799 */  jal         func_80115E64
/* 02BFDC 8002C42C 00000000 */   nop
/* 02BFE0 8002C430 24010001 */  addiu       $at, $zero, 0x1
/* 02BFE4 8002C434 14410006 */  bne         $v0, $at, .L8002C450
/* 02BFE8 8002C438 24040002 */   addiu      $a0, $zero, 0x2
/* 02BFEC 8002C43C 24040002 */  addiu       $a0, $zero, 0x2
/* 02BFF0 8002C440 0C04476C */  jal         func_80111DB0
/* 02BFF4 8002C444 24050001 */   addiu      $a1, $zero, 0x1
/* 02BFF8 8002C448 10000003 */  b           .L8002C458
/* 02BFFC 8002C44C 00000000 */   nop
.L8002C450:
/* 02C000 8002C450 0C04476C */  jal         func_80111DB0
/* 02C004 8002C454 24050002 */   addiu      $a1, $zero, 0x2
.L8002C458:
/* 02C008 8002C458 0C0026A8 */  jal         func_80009AA0
/* 02C00C 8002C45C 00002025 */   move       $a0, $zero
.L8002C460:
/* 02C010 8002C460 0C0005EC */  jal         func_800017B0
/* 02C014 8002C464 00002025 */   move       $a0, $zero
/* 02C018 8002C468 0C00C14B */  jal         func_8003052C
/* 02C01C 8002C46C 2404000C */   addiu      $a0, $zero, 0xc
/* 02C020 8002C470 0C045787 */  jal         func_80115E1C
/* 02C024 8002C474 00402025 */   move       $a0, $v0
/* 02C028 8002C478 0C00AE90 */  jal         func_8002BA40
/* 02C02C 8002C47C 00002025 */   move       $a0, $zero
.L8002C480:
/* 02C030 8002C480 0C00ADE4 */  jal         func_8002B790
/* 02C034 8002C484 00000000 */   nop
/* 02C038 8002C488 0C001F4F */  jal         func_80007D3C
/* 02C03C 8002C48C 24044000 */   addiu      $a0, $zero, 0x4000
/* 02C040 8002C490 10000024 */  b           .L8002C524
/* 02C044 8002C494 8FBF001C */   lw         $ra, 0x1c($sp)
glabel L8002C498
/* 02C048 8002C498 3C01800B */  lui         $at, %hi(D_800B1A6C)
/* 02C04C 8002C49C C4281A6C */  lwc1        $f8, %lo(D_800B1A6C)($at)
/* 02C050 8002C4A0 44803000 */  mtc1        $zero, $f6
/* 02C054 8002C4A4 00000000 */  nop
/* 02C058 8002C4A8 46083032 */  c.eq.s      $f6, $f8
/* 02C05C 8002C4AC 00000000 */  nop
/* 02C060 8002C4B0 45000017 */  bc1f        .L8002C510
/* 02C064 8002C4B4 00000000 */   nop
/* 02C068 8002C4B8 0C045799 */  jal         func_80115E64
/* 02C06C 8002C4BC 00000000 */   nop
/* 02C070 8002C4C0 3C0D800F */  lui         $t5, %hi(D_800F62A4)
/* 02C074 8002C4C4 8DAD62A4 */  lw          $t5, %lo(D_800F62A4)($t5)
/* 02C078 8002C4C8 00024880 */  sll         $t1, $v0, 2
/* 02C07C 8002C4CC 3C04800A */  lui         $a0, %hi(D_8009F0F0)
/* 02C080 8002C4D0 000D4080 */  sll         $t0, $t5, 2
/* 02C084 8002C4D4 010D4021 */  addu        $t0, $t0, $t5
/* 02C088 8002C4D8 00084080 */  sll         $t0, $t0, 2
/* 02C08C 8002C4DC 010D4023 */  subu        $t0, $t0, $t5
/* 02C090 8002C4E0 00084080 */  sll         $t0, $t0, 2
/* 02C094 8002C4E4 01095021 */  addu        $t2, $t0, $t1
/* 02C098 8002C4E8 008A2021 */  addu        $a0, $a0, $t2
/* 02C09C 8002C4EC 8C84F0F0 */  lw          $a0, %lo(D_8009F0F0)($a0)
/* 02C0A0 8002C4F0 0C04476C */  jal         func_80111DB0
/* 02C0A4 8002C4F4 00002825 */   move       $a1, $zero
/* 02C0A8 8002C4F8 0C0026A8 */  jal         func_80009AA0
/* 02C0AC 8002C4FC 00002025 */   move       $a0, $zero
/* 02C0B0 8002C500 0C0005EC */  jal         func_800017B0
/* 02C0B4 8002C504 00002025 */   move       $a0, $zero
/* 02C0B8 8002C508 0C00AE90 */  jal         func_8002BA40
/* 02C0BC 8002C50C 00002025 */   move       $a0, $zero
.L8002C510:
/* 02C0C0 8002C510 0C00ADE4 */  jal         func_8002B790
/* 02C0C4 8002C514 00000000 */   nop
/* 02C0C8 8002C518 0C001F4F */  jal         func_80007D3C
/* 02C0CC 8002C51C 24044000 */   addiu      $a0, $zero, 0x4000
.L8002C520:
/* 02C0D0 8002C520 8FBF001C */  lw          $ra, 0x1c($sp)
.L8002C524:
/* 02C0D4 8002C524 27BD0028 */  addiu       $sp, $sp, 0x28
/* 02C0D8 8002C528 03E00008 */  jr          $ra
/* 02C0DC 8002C52C 00000000 */   nop

glabel func_8002C530 # 19
/* 02C0E0 8002C530 03E00008 */  jr          $ra
/* 02C0E4 8002C534 AFA40000 */   sw         $a0, 0x0($sp)

glabel func_8002C538 # 20
/* 02C0E8 8002C538 3C0E800F */  lui         $t6, %hi(D_800F6320)
/* 02C0EC 8002C53C 8DCE6320 */  lw          $t6, %lo(D_800F6320)($t6)
/* 02C0F0 8002C540 3C0F800F */  lui         $t7, %hi(D_800F6310)
/* 02C0F4 8002C544 3C01800F */  lui         $at, %hi(D_800F3E38)
/* 02C0F8 8002C548 15C00011 */  bnez        $t6, .L8002C590
/* 02C0FC 8002C54C 00000000 */   nop
/* 02C100 8002C550 8DEF6310 */  lw          $t7, %lo(D_800F6310)($t7)
/* 02C104 8002C554 148F000E */  bne         $a0, $t7, .L8002C590
/* 02C108 8002C558 00000000 */   nop
/* 02C10C 8002C55C 3C01800F */  lui         $at, %hi(D_800F3E38)
/* 02C110 8002C560 C4243E38 */  lwc1        $f4, %lo(D_800F3E38)($at)
/* 02C114 8002C564 3C01800F */  lui         $at, %hi(D_800F3E2C)
/* 02C118 8002C568 C4263E2C */  lwc1        $f6, %lo(D_800F3E2C)($at)
/* 02C11C 8002C56C 3C014334 */  lui         $at, 0x4334
/* 02C120 8002C570 44815000 */  mtc1        $at, $f10
/* 02C124 8002C574 46062200 */  add.s       $f8, $f4, $f6
/* 02C128 8002C578 3C0141F0 */  lui         $at, 0x41f0
/* 02C12C 8002C57C 44819000 */  mtc1        $at, $f18
/* 02C130 8002C580 460A4400 */  add.s       $f16, $f8, $f10
/* 02C134 8002C584 46128100 */  add.s       $f4, $f16, $f18
/* 02C138 8002C588 03E00008 */  jr          $ra
/* 02C13C 8002C58C E4840010 */   swc1       $f4, 0x10($a0)
.L8002C590:
/* 02C140 8002C590 C4263E38 */  lwc1        $f6, %lo(D_800F3E38)($at)
/* 02C144 8002C594 3C01800F */  lui         $at, %hi(D_800F3E2C)
/* 02C148 8002C598 C4283E2C */  lwc1        $f8, %lo(D_800F3E2C)($at)
/* 02C14C 8002C59C 3C014334 */  lui         $at, 0x4334
/* 02C150 8002C5A0 44818000 */  mtc1        $at, $f16
/* 02C154 8002C5A4 46083280 */  add.s       $f10, $f6, $f8
/* 02C158 8002C5A8 46105480 */  add.s       $f18, $f10, $f16
/* 02C15C 8002C5AC E4920010 */  swc1        $f18, 0x10($a0)
/* 02C160 8002C5B0 03E00008 */  jr          $ra
/* 02C164 8002C5B4 00000000 */   nop

glabel func_8002C5B8 # 21
/* 02C168 8002C5B8 44856000 */  mtc1        $a1, $f12
/* 02C16C 8002C5BC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02C170 8002C5C0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02C174 8002C5C4 0C001A23 */  jal         func_8000688C
/* 02C178 8002C5C8 E7AC001C */   swc1       $f12, 0x1c($sp)
/* 02C17C 8002C5CC C7AC001C */  lwc1        $f12, 0x1c($sp)
/* 02C180 8002C5D0 10400017 */  beqz        $v0, .L8002C630
/* 02C184 8002C5D4 00402025 */   move       $a0, $v0
/* 02C188 8002C5D8 944E0034 */  lhu         $t6, 0x34($v0)
/* 02C18C 8002C5DC 24010086 */  addiu       $at, $zero, 0x86
/* 02C190 8002C5E0 3C038013 */  lui         $v1, %hi(D_80137EE4)
/* 02C194 8002C5E4 15C10006 */  bne         $t6, $at, .L8002C600
/* 02C198 8002C5E8 24637EE4 */   addiu      $v1, $v1, %lo(D_80137EE4)
/* 02C19C 8002C5EC 44056000 */  mfc1        $a1, $f12
/* 02C1A0 8002C5F0 0C045A5E */  jal         func_80116978
/* 02C1A4 8002C5F4 00000000 */   nop
/* 02C1A8 8002C5F8 1000000E */  b           .L8002C634
/* 02C1AC 8002C5FC 8FBF0014 */   lw         $ra, 0x14($sp)
.L8002C600:
/* 02C1B0 8002C600 8C6F0000 */  lw          $t7, 0x0($v1)
/* 02C1B4 8002C604 C5E4000C */  lwc1        $f4, 0xc($t7)
/* 02C1B8 8002C608 460C2182 */  mul.s       $f6, $f4, $f12
/* 02C1BC 8002C60C E4460000 */  swc1        $f6, 0x0($v0)
/* 02C1C0 8002C610 8C780000 */  lw          $t8, 0x0($v1)
/* 02C1C4 8002C614 C708000C */  lwc1        $f8, 0xc($t8)
/* 02C1C8 8002C618 460C4282 */  mul.s       $f10, $f8, $f12
/* 02C1CC 8002C61C E44A0004 */  swc1        $f10, 0x4($v0)
/* 02C1D0 8002C620 8C790000 */  lw          $t9, 0x0($v1)
/* 02C1D4 8002C624 C730000C */  lwc1        $f16, 0xc($t9)
/* 02C1D8 8002C628 460C8482 */  mul.s       $f18, $f16, $f12
/* 02C1DC 8002C62C E4520008 */  swc1        $f18, 0x8($v0)
.L8002C630:
/* 02C1E0 8002C630 8FBF0014 */  lw          $ra, 0x14($sp)
.L8002C634:
/* 02C1E4 8002C634 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02C1E8 8002C638 03E00008 */  jr          $ra
/* 02C1EC 8002C63C 00000000 */   nop

glabel func_8002C640 # 22
/* 02C1F0 8002C640 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 02C1F4 8002C644 AFBF0034 */  sw          $ra, 0x34($sp)
/* 02C1F8 8002C648 AFB30030 */  sw          $s3, 0x30($sp)
/* 02C1FC 8002C64C AFB2002C */  sw          $s2, 0x2c($sp)
/* 02C200 8002C650 AFB10028 */  sw          $s1, 0x28($sp)
/* 02C204 8002C654 AFB00024 */  sw          $s0, 0x24($sp)
/* 02C208 8002C658 F7B60018 */  sdc1        $f22, 0x18($sp)
/* 02C20C 8002C65C F7B40010 */  sdc1        $f20, 0x10($sp)
/* 02C210 8002C660 8C8E0010 */  lw          $t6, 0x10($a0)
/* 02C214 8002C664 3C01800B */  lui         $at, %hi(D_800AAF90)
/* 02C218 8002C668 C436AF90 */  lwc1        $f22, %lo(D_800AAF90)($at)
/* 02C21C 8002C66C 000E7880 */  sll         $t7, $t6, 2
/* 02C220 8002C670 01EE7821 */  addu        $t7, $t7, $t6
/* 02C224 8002C674 000F7900 */  sll         $t7, $t7, 4
/* 02C228 8002C678 3C013F00 */  lui         $at, 0x3f00
/* 02C22C 8002C67C 008F1021 */  addu        $v0, $a0, $t7
/* 02C230 8002C680 4481A000 */  mtc1        $at, $f20
/* 02C234 8002C684 00809825 */  move        $s3, $a0
/* 02C238 8002C688 24510020 */  addiu       $s1, $v0, 0x20
/* 02C23C 8002C68C 00008025 */  move        $s0, $zero
/* 02C240 8002C690 2412000A */  addiu       $s2, $zero, 0xa
.L8002C694:
/* 02C244 8002C694 8E220004 */  lw          $v0, 0x4($s1)
/* 02C248 8002C698 0010C080 */  sll         $t8, $s0, 2
/* 02C24C 8002C69C 0278C821 */  addu        $t9, $s3, $t8
/* 02C250 8002C6A0 14400003 */  bnez        $v0, .L8002C6B0
/* 02C254 8002C6A4 00402025 */   move       $a0, $v0
/* 02C258 8002C6A8 10000001 */  b           .L8002C6B0
/* 02C25C 8002C6AC 8F2400C0 */   lw         $a0, 0xc0($t9)
.L8002C6B0:
/* 02C260 8002C6B0 56000007 */  bnel        $s0, $zero, .L8002C6D0
/* 02C264 8002C6B4 4405B000 */   mfc1       $a1, $f22
/* 02C268 8002C6B8 4405A000 */  mfc1        $a1, $f20
/* 02C26C 8002C6BC 0C00B16E */  jal         func_8002C5B8
/* 02C270 8002C6C0 00000000 */   nop
/* 02C274 8002C6C4 10000005 */  b           .L8002C6DC
/* 02C278 8002C6C8 26100001 */   addiu      $s0, $s0, 0x1
/* 02C27C 8002C6CC 4405B000 */  mfc1        $a1, $f22
.L8002C6D0:
/* 02C280 8002C6D0 0C00B16E */  jal         func_8002C5B8
/* 02C284 8002C6D4 00000000 */   nop
/* 02C288 8002C6D8 26100001 */  addiu       $s0, $s0, 0x1
.L8002C6DC:
/* 02C28C 8002C6DC 1612FFED */  bne         $s0, $s2, .L8002C694
/* 02C290 8002C6E0 26310008 */   addiu      $s1, $s1, 0x8
/* 02C294 8002C6E4 8FBF0034 */  lw          $ra, 0x34($sp)
/* 02C298 8002C6E8 D7B40010 */  ldc1        $f20, 0x10($sp)
/* 02C29C 8002C6EC D7B60018 */  ldc1        $f22, 0x18($sp)
/* 02C2A0 8002C6F0 8FB00024 */  lw          $s0, 0x24($sp)
/* 02C2A4 8002C6F4 8FB10028 */  lw          $s1, 0x28($sp)
/* 02C2A8 8002C6F8 8FB2002C */  lw          $s2, 0x2c($sp)
/* 02C2AC 8002C6FC 8FB30030 */  lw          $s3, 0x30($sp)
/* 02C2B0 8002C700 03E00008 */  jr          $ra
/* 02C2B4 8002C704 27BD0038 */   addiu      $sp, $sp, 0x38

glabel func_8002C708 # 23
/* 02C2B8 8002C708 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02C2BC 8002C70C AFB30020 */  sw          $s3, 0x20($sp)
/* 02C2C0 8002C710 AFB10018 */  sw          $s1, 0x18($sp)
/* 02C2C4 8002C714 AFB00014 */  sw          $s0, 0x14($sp)
/* 02C2C8 8002C718 3C10800F */  lui         $s0, %hi(D_800F6330)
/* 02C2CC 8002C71C 3C11800F */  lui         $s1, %hi(D_800F6310)
/* 02C2D0 8002C720 3C13800F */  lui         $s3, %hi(D_800F6380)
/* 02C2D4 8002C724 AFBF0024 */  sw          $ra, 0x24($sp)
/* 02C2D8 8002C728 AFB2001C */  sw          $s2, 0x1c($sp)
/* 02C2DC 8002C72C 26736380 */  addiu       $s3, $s3, %lo(D_800F6380)
/* 02C2E0 8002C730 26316310 */  addiu       $s1, $s1, %lo(D_800F6310)
/* 02C2E4 8002C734 26106330 */  addiu       $s0, $s0, %lo(D_800F6330)
.L8002C738:
/* 02C2E8 8002C738 8E2E0024 */  lw          $t6, 0x24($s1)
/* 02C2EC 8002C73C 02009025 */  move        $s2, $s0
/* 02C2F0 8002C740 AE200020 */  sw          $zero, 0x20($s1)
/* 02C2F4 8002C744 51C00006 */  beql        $t6, $zero, .L8002C760
/* 02C2F8 8002C748 26100008 */   addiu      $s0, $s0, 0x8
/* 02C2FC 8002C74C 0C001A23 */  jal         func_8000688C
/* 02C300 8002C750 8E040004 */   lw         $a0, 0x4($s0)
/* 02C304 8002C754 0C045C6A */  jal         func_801171A8
/* 02C308 8002C758 00402025 */   move       $a0, $v0
/* 02C30C 8002C75C 26100008 */  addiu       $s0, $s0, 0x8
.L8002C760:
/* 02C310 8002C760 26310008 */  addiu       $s1, $s1, 0x8
/* 02C314 8002C764 1613FFF4 */  bne         $s0, $s3, .L8002C738
/* 02C318 8002C768 AE400004 */   sw         $zero, 0x4($s2)
/* 02C31C 8002C76C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 02C320 8002C770 8FB00014 */  lw          $s0, 0x14($sp)
/* 02C324 8002C774 8FB10018 */  lw          $s1, 0x18($sp)
/* 02C328 8002C778 8FB2001C */  lw          $s2, 0x1c($sp)
/* 02C32C 8002C77C 8FB30020 */  lw          $s3, 0x20($sp)
/* 02C330 8002C780 03E00008 */  jr          $ra
/* 02C334 8002C784 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8002C788 # 24
/* 02C338 8002C788 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 02C33C 8002C78C 3C0F800A */  lui         $t7, %hi(D_8009FAA4)
/* 02C340 8002C790 AFBF002C */  sw          $ra, 0x2c($sp)
/* 02C344 8002C794 AFB40028 */  sw          $s4, 0x28($sp)
/* 02C348 8002C798 AFB30024 */  sw          $s3, 0x24($sp)
/* 02C34C 8002C79C AFB20020 */  sw          $s2, 0x20($sp)
/* 02C350 8002C7A0 AFB1001C */  sw          $s1, 0x1c($sp)
/* 02C354 8002C7A4 AFB00018 */  sw          $s0, 0x18($sp)
/* 02C358 8002C7A8 25EFFAA4 */  addiu       $t7, $t7, %lo(D_8009FAA4)
/* 02C35C 8002C7AC 8DE10000 */  lw          $at, 0x0($t7)
/* 02C360 8002C7B0 27AE003C */  addiu       $t6, $sp, 0x3c
/* 02C364 8002C7B4 8DE80004 */  lw          $t0, 0x4($t7)
/* 02C368 8002C7B8 ADC10000 */  sw          $at, 0x0($t6)
/* 02C36C 8002C7BC 8DE10008 */  lw          $at, 0x8($t7)
/* 02C370 8002C7C0 3C04800F */  lui         $a0, %hi(D_800F6310)
/* 02C374 8002C7C4 ADC80004 */  sw          $t0, 0x4($t6)
/* 02C378 8002C7C8 ADC10008 */  sw          $at, 0x8($t6)
/* 02C37C 8002C7CC 8C846310 */  lw          $a0, %lo(D_800F6310)($a0)
/* 02C380 8002C7D0 0C001DF8 */  jal         func_800077E0
/* 02C384 8002C7D4 24052002 */   addiu      $a1, $zero, 0x2002
/* 02C388 8002C7D8 3C09800F */  lui         $t1, %hi(D_800F6310)
/* 02C38C 8002C7DC 8D296310 */  lw          $t1, %lo(D_800F6310)($t1)
/* 02C390 8002C7E0 C7A4003C */  lwc1        $f4, 0x3c($sp)
/* 02C394 8002C7E4 3C0A800F */  lui         $t2, %hi(D_800F6310)
/* 02C398 8002C7E8 3C0B800F */  lui         $t3, %hi(D_800F6310)
/* 02C39C 8002C7EC E5240018 */  swc1        $f4, 0x18($t1)
/* 02C3A0 8002C7F0 8D4A6310 */  lw          $t2, %lo(D_800F6310)($t2)
/* 02C3A4 8002C7F4 C7A60040 */  lwc1        $f6, 0x40($sp)
/* 02C3A8 8002C7F8 3C13800F */  lui         $s3, %hi(D_800F6310)
/* 02C3AC 8002C7FC 3C14800F */  lui         $s4, %hi(D_800F63B0)
/* 02C3B0 8002C800 E546001C */  swc1        $f6, 0x1c($t2)
/* 02C3B4 8002C804 8D6B6310 */  lw          $t3, %lo(D_800F6310)($t3)
/* 02C3B8 8002C808 C7A80044 */  lwc1        $f8, 0x44($sp)
/* 02C3BC 8002C80C 269463B0 */  addiu       $s4, $s4, %lo(D_800F63B0)
/* 02C3C0 8002C810 26736310 */  addiu       $s3, $s3, %lo(D_800F6310)
/* 02C3C4 8002C814 E5680020 */  swc1        $f8, 0x20($t3)
/* 02C3C8 8002C818 00008825 */  move        $s1, $zero
.L8002C81C:
/* 02C3CC 8002C81C 02609025 */  move        $s2, $s3
.L8002C820:
/* 02C3D0 8002C820 0C001A23 */  jal         func_8000688C
/* 02C3D4 8002C824 8E440024 */   lw         $a0, 0x24($s2)
/* 02C3D8 8002C828 1040000A */  beqz        $v0, .L8002C854
/* 02C3DC 8002C82C 00408025 */   move       $s0, $v0
/* 02C3E0 8002C830 00402025 */  move        $a0, $v0
/* 02C3E4 8002C834 0C001DF8 */  jal         func_800077E0
/* 02C3E8 8002C838 24052002 */   addiu      $a1, $zero, 0x2002
/* 02C3EC 8002C83C C7AA003C */  lwc1        $f10, 0x3c($sp)
/* 02C3F0 8002C840 E60A0018 */  swc1        $f10, 0x18($s0)
/* 02C3F4 8002C844 C7B00040 */  lwc1        $f16, 0x40($sp)
/* 02C3F8 8002C848 E610001C */  swc1        $f16, 0x1c($s0)
/* 02C3FC 8002C84C C7B20044 */  lwc1        $f18, 0x44($sp)
/* 02C400 8002C850 E6120020 */  swc1        $f18, 0x20($s0)
.L8002C854:
/* 02C404 8002C854 26310008 */  addiu       $s1, $s1, 0x8
/* 02C408 8002C858 2A210050 */  slti        $at, $s1, 0x50
/* 02C40C 8002C85C 1420FFF0 */  bnez        $at, .L8002C820
/* 02C410 8002C860 26520008 */   addiu      $s2, $s2, 0x8
/* 02C414 8002C864 26730050 */  addiu       $s3, $s3, 0x50
/* 02C418 8002C868 0274082B */  sltu        $at, $s3, $s4
/* 02C41C 8002C86C 5420FFEB */  bnel        $at, $zero, .L8002C81C
/* 02C420 8002C870 00008825 */   move       $s1, $zero
/* 02C424 8002C874 3C11800F */  lui         $s1, %hi(D_800F6310)
/* 02C428 8002C878 3C12800F */  lui         $s2, %hi(D_800F6338)
/* 02C42C 8002C87C 26526338 */  addiu       $s2, $s2, %lo(D_800F6338)
/* 02C430 8002C880 26316310 */  addiu       $s1, $s1, %lo(D_800F6310)
.L8002C884:
/* 02C434 8002C884 0C001A23 */  jal         func_8000688C
/* 02C438 8002C888 8E2400C0 */   lw         $a0, 0xc0($s1)
/* 02C43C 8002C88C 1040000A */  beqz        $v0, .L8002C8B8
/* 02C440 8002C890 00408025 */   move       $s0, $v0
/* 02C444 8002C894 00402025 */  move        $a0, $v0
/* 02C448 8002C898 0C001DF8 */  jal         func_800077E0
/* 02C44C 8002C89C 24052002 */   addiu      $a1, $zero, 0x2002
/* 02C450 8002C8A0 C7A4003C */  lwc1        $f4, 0x3c($sp)
/* 02C454 8002C8A4 E6040018 */  swc1        $f4, 0x18($s0)
/* 02C458 8002C8A8 C7A60040 */  lwc1        $f6, 0x40($sp)
/* 02C45C 8002C8AC E606001C */  swc1        $f6, 0x1c($s0)
/* 02C460 8002C8B0 C7A80044 */  lwc1        $f8, 0x44($sp)
/* 02C464 8002C8B4 E6080020 */  swc1        $f8, 0x20($s0)
.L8002C8B8:
/* 02C468 8002C8B8 26310004 */  addiu       $s1, $s1, 0x4
/* 02C46C 8002C8BC 1632FFF1 */  bne         $s1, $s2, .L8002C884
/* 02C470 8002C8C0 00000000 */   nop
/* 02C474 8002C8C4 3C04800F */  lui         $a0, %hi(D_800F63FC)
/* 02C478 8002C8C8 0C001A23 */  jal         func_8000688C
/* 02C47C 8002C8CC 8C8463FC */   lw         $a0, %lo(D_800F63FC)($a0)
/* 02C480 8002C8D0 1040000A */  beqz        $v0, .L8002C8FC
/* 02C484 8002C8D4 00408025 */   move       $s0, $v0
/* 02C488 8002C8D8 00402025 */  move        $a0, $v0
/* 02C48C 8002C8DC 0C001DF8 */  jal         func_800077E0
/* 02C490 8002C8E0 24052002 */   addiu      $a1, $zero, 0x2002
/* 02C494 8002C8E4 C7AA003C */  lwc1        $f10, 0x3c($sp)
/* 02C498 8002C8E8 E60A0018 */  swc1        $f10, 0x18($s0)
/* 02C49C 8002C8EC C7B00040 */  lwc1        $f16, 0x40($sp)
/* 02C4A0 8002C8F0 E610001C */  swc1        $f16, 0x1c($s0)
/* 02C4A4 8002C8F4 C7B20044 */  lwc1        $f18, 0x44($sp)
/* 02C4A8 8002C8F8 E6120020 */  swc1        $f18, 0x20($s0)
.L8002C8FC:
/* 02C4AC 8002C8FC 3C04800F */  lui         $a0, %hi(D_800F6404)
/* 02C4B0 8002C900 0C001A23 */  jal         func_8000688C
/* 02C4B4 8002C904 8C846404 */   lw         $a0, %lo(D_800F6404)($a0)
/* 02C4B8 8002C908 1040000A */  beqz        $v0, .L8002C934
/* 02C4BC 8002C90C 00408025 */   move       $s0, $v0
/* 02C4C0 8002C910 00402025 */  move        $a0, $v0
/* 02C4C4 8002C914 0C001DF8 */  jal         func_800077E0
/* 02C4C8 8002C918 24052002 */   addiu      $a1, $zero, 0x2002
/* 02C4CC 8002C91C C7A4003C */  lwc1        $f4, 0x3c($sp)
/* 02C4D0 8002C920 E6040018 */  swc1        $f4, 0x18($s0)
/* 02C4D4 8002C924 C7A60040 */  lwc1        $f6, 0x40($sp)
/* 02C4D8 8002C928 E606001C */  swc1        $f6, 0x1c($s0)
/* 02C4DC 8002C92C C7A80044 */  lwc1        $f8, 0x44($sp)
/* 02C4E0 8002C930 E6080020 */  swc1        $f8, 0x20($s0)
.L8002C934:
/* 02C4E4 8002C934 8FBF002C */  lw          $ra, 0x2c($sp)
/* 02C4E8 8002C938 8FB00018 */  lw          $s0, 0x18($sp)
/* 02C4EC 8002C93C 8FB1001C */  lw          $s1, 0x1c($sp)
/* 02C4F0 8002C940 8FB20020 */  lw          $s2, 0x20($sp)
/* 02C4F4 8002C944 8FB30024 */  lw          $s3, 0x24($sp)
/* 02C4F8 8002C948 8FB40028 */  lw          $s4, 0x28($sp)
/* 02C4FC 8002C94C 03E00008 */  jr          $ra
/* 02C500 8002C950 27BD0058 */   addiu      $sp, $sp, 0x58

glabel func_8002C954 # 25
/* 02C504 8002C954 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02C508 8002C958 AFBF0024 */  sw          $ra, 0x24($sp)
/* 02C50C 8002C95C 3C04800F */  lui         $a0, %hi(D_800F6310)
/* 02C510 8002C960 AFB30020 */  sw          $s3, 0x20($sp)
/* 02C514 8002C964 AFB2001C */  sw          $s2, 0x1c($sp)
/* 02C518 8002C968 AFB10018 */  sw          $s1, 0x18($sp)
/* 02C51C 8002C96C AFB00014 */  sw          $s0, 0x14($sp)
/* 02C520 8002C970 8C846310 */  lw          $a0, %lo(D_800F6310)($a0)
/* 02C524 8002C974 0C001E12 */  jal         func_80007848
/* 02C528 8002C978 24050002 */   addiu      $a1, $zero, 0x2
/* 02C52C 8002C97C 3C12800F */  lui         $s2, %hi(D_800F6310)
/* 02C530 8002C980 3C13800F */  lui         $s3, %hi(D_800F63B0)
/* 02C534 8002C984 267363B0 */  addiu       $s3, $s3, %lo(D_800F63B0)
/* 02C538 8002C988 26526310 */  addiu       $s2, $s2, %lo(D_800F6310)
/* 02C53C 8002C98C 00008025 */  move        $s0, $zero
.L8002C990:
/* 02C540 8002C990 02408825 */  move        $s1, $s2
.L8002C994:
/* 02C544 8002C994 0C001A23 */  jal         func_8000688C
/* 02C548 8002C998 8E240024 */   lw         $a0, 0x24($s1)
/* 02C54C 8002C99C 10400003 */  beqz        $v0, .L8002C9AC
/* 02C550 8002C9A0 00402025 */   move       $a0, $v0
/* 02C554 8002C9A4 0C001E12 */  jal         func_80007848
/* 02C558 8002C9A8 24050002 */   addiu      $a1, $zero, 0x2
.L8002C9AC:
/* 02C55C 8002C9AC 26100008 */  addiu       $s0, $s0, 0x8
/* 02C560 8002C9B0 2A010050 */  slti        $at, $s0, 0x50
/* 02C564 8002C9B4 1420FFF7 */  bnez        $at, .L8002C994
/* 02C568 8002C9B8 26310008 */   addiu      $s1, $s1, 0x8
/* 02C56C 8002C9BC 26520050 */  addiu       $s2, $s2, 0x50
/* 02C570 8002C9C0 0253082B */  sltu        $at, $s2, $s3
/* 02C574 8002C9C4 5420FFF2 */  bnel        $at, $zero, .L8002C990
/* 02C578 8002C9C8 00008025 */   move       $s0, $zero
/* 02C57C 8002C9CC 3C10800F */  lui         $s0, %hi(D_800F6310)
/* 02C580 8002C9D0 3C11800F */  lui         $s1, %hi(D_800F6338)
/* 02C584 8002C9D4 26316338 */  addiu       $s1, $s1, %lo(D_800F6338)
/* 02C588 8002C9D8 26106310 */  addiu       $s0, $s0, %lo(D_800F6310)
.L8002C9DC:
/* 02C58C 8002C9DC 0C001A23 */  jal         func_8000688C
/* 02C590 8002C9E0 8E0400C0 */   lw         $a0, 0xc0($s0)
/* 02C594 8002C9E4 10400003 */  beqz        $v0, .L8002C9F4
/* 02C598 8002C9E8 00402025 */   move       $a0, $v0
/* 02C59C 8002C9EC 0C001E12 */  jal         func_80007848
/* 02C5A0 8002C9F0 24050002 */   addiu      $a1, $zero, 0x2
.L8002C9F4:
/* 02C5A4 8002C9F4 26100004 */  addiu       $s0, $s0, 0x4
/* 02C5A8 8002C9F8 1611FFF8 */  bne         $s0, $s1, .L8002C9DC
/* 02C5AC 8002C9FC 00000000 */   nop
/* 02C5B0 8002CA00 3C04800F */  lui         $a0, %hi(D_800F63FC)
/* 02C5B4 8002CA04 0C001A23 */  jal         func_8000688C
/* 02C5B8 8002CA08 8C8463FC */   lw         $a0, %lo(D_800F63FC)($a0)
/* 02C5BC 8002CA0C 10400003 */  beqz        $v0, .L8002CA1C
/* 02C5C0 8002CA10 00402025 */   move       $a0, $v0
/* 02C5C4 8002CA14 0C001E12 */  jal         func_80007848
/* 02C5C8 8002CA18 24050002 */   addiu      $a1, $zero, 0x2
.L8002CA1C:
/* 02C5CC 8002CA1C 3C04800F */  lui         $a0, %hi(D_800F6404)
/* 02C5D0 8002CA20 0C001A23 */  jal         func_8000688C
/* 02C5D4 8002CA24 8C846404 */   lw         $a0, %lo(D_800F6404)($a0)
/* 02C5D8 8002CA28 10400003 */  beqz        $v0, .L8002CA38
/* 02C5DC 8002CA2C 00402025 */   move       $a0, $v0
/* 02C5E0 8002CA30 0C001E12 */  jal         func_80007848
/* 02C5E4 8002CA34 24050002 */   addiu      $a1, $zero, 0x2
.L8002CA38:
/* 02C5E8 8002CA38 8FBF0024 */  lw          $ra, 0x24($sp)
/* 02C5EC 8002CA3C 8FB00014 */  lw          $s0, 0x14($sp)
/* 02C5F0 8002CA40 8FB10018 */  lw          $s1, 0x18($sp)
/* 02C5F4 8002CA44 8FB2001C */  lw          $s2, 0x1c($sp)
/* 02C5F8 8002CA48 8FB30020 */  lw          $s3, 0x20($sp)
/* 02C5FC 8002CA4C 03E00008 */  jr          $ra
/* 02C600 8002CA50 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8002CA54 # 26
/* 02C604 8002CA54 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02C608 8002CA58 AFB00014 */  sw          $s0, 0x14($sp)
/* 02C60C 8002CA5C AFA40020 */  sw          $a0, 0x20($sp)
/* 02C610 8002CA60 AFBF001C */  sw          $ra, 0x1c($sp)
/* 02C614 8002CA64 AFB10018 */  sw          $s1, 0x18($sp)
/* 02C618 8002CA68 00A08025 */  move        $s0, $a1
/* 02C61C 8002CA6C 8CB10054 */  lw          $s1, 0x54($a1)
/* 02C620 8002CA70 00A02025 */  move        $a0, $a1
/* 02C624 8002CA74 0C045D9D */  jal         func_80117674
/* 02C628 8002CA78 24050001 */   addiu      $a1, $zero, 0x1
/* 02C62C 8002CA7C 240E0004 */  addiu       $t6, $zero, 0x4
/* 02C630 8002CA80 A22E0006 */  sb          $t6, 0x6($s1)
/* 02C634 8002CA84 02002025 */  move        $a0, $s0
/* 02C638 8002CA88 0C045E9A */  jal         func_80117A68
/* 02C63C 8002CA8C 24050005 */   addiu      $a1, $zero, 0x5
/* 02C640 8002CA90 8E2F0000 */  lw          $t7, 0x0($s1)
/* 02C644 8002CA94 3C01BFFF */  lui         $at, 0xbfff
/* 02C648 8002CA98 3421FFFF */  ori         $at, $at, 0xffff
/* 02C64C 8002CA9C 01E1C024 */  and         $t8, $t7, $at
/* 02C650 8002CAA0 AE380000 */  sw          $t8, 0x0($s1)
/* 02C654 8002CAA4 02002025 */  move        $a0, $s0
/* 02C658 8002CAA8 0C001DF8 */  jal         func_800077E0
/* 02C65C 8002CAAC 24052000 */   addiu      $a1, $zero, 0x2000
/* 02C660 8002CAB0 8FA20020 */  lw          $v0, 0x20($sp)
/* 02C664 8002CAB4 8E190038 */  lw          $t9, 0x38($s0)
/* 02C668 8002CAB8 AC590004 */  sw          $t9, 0x4($v0)
/* 02C66C 8002CABC 86280004 */  lh          $t0, 0x4($s1)
/* 02C670 8002CAC0 AC480000 */  sw          $t0, 0x0($v0)
/* 02C674 8002CAC4 0C045D7E */  jal         func_801175F8
/* 02C678 8002CAC8 8E040038 */   lw         $a0, 0x38($s0)
/* 02C67C 8002CACC 8FBF001C */  lw          $ra, 0x1c($sp)
/* 02C680 8002CAD0 8FB00014 */  lw          $s0, 0x14($sp)
/* 02C684 8002CAD4 8FB10018 */  lw          $s1, 0x18($sp)
/* 02C688 8002CAD8 03E00008 */  jr          $ra
/* 02C68C 8002CADC 27BD0020 */   addiu      $sp, $sp, 0x20

glabel func_8002CAE0 # 27
/* 02C690 8002CAE0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 02C694 8002CAE4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02C698 8002CAE8 AFA40030 */  sw          $a0, 0x30($sp)
/* 02C69C 8002CAEC AFA50034 */  sw          $a1, 0x34($sp)
/* 02C6A0 8002CAF0 8C880054 */  lw          $t0, 0x54($a0)
/* 02C6A4 8002CAF4 8FB80034 */  lw          $t8, 0x34($sp)
/* 02C6A8 8002CAF8 3C028013 */  lui         $v0, %hi(D_80129390 + 0x1)
/* 02C6AC 8002CAFC 85070004 */  lh          $a3, 0x4($t0)
/* 02C6B0 8002CB00 0018C880 */  sll         $t9, $t8, 2
/* 02C6B4 8002CB04 24010003 */  addiu       $at, $zero, 0x3
/* 02C6B8 8002CB08 000778C0 */  sll         $t7, $a3, 3
/* 02C6BC 8002CB0C 01E77823 */  subu        $t7, $t7, $a3
/* 02C6C0 8002CB10 000F7880 */  sll         $t7, $t7, 2
/* 02C6C4 8002CB14 01E77821 */  addu        $t7, $t7, $a3
/* 02C6C8 8002CB18 000F7880 */  sll         $t7, $t7, 2
/* 02C6CC 8002CB1C 004F1021 */  addu        $v0, $v0, $t7
/* 02C6D0 8002CB20 80429391 */  lb          $v0, %lo(D_80129390 + 0x1)($v0)
/* 02C6D4 8002CB24 0338C821 */  addu        $t9, $t9, $t8
/* 02C6D8 8002CB28 0019C900 */  sll         $t9, $t9, 4
/* 02C6DC 8002CB2C 10410003 */  beq         $v0, $at, .L8002CB3C
/* 02C6E0 8002CB30 3C09800F */   lui        $t1, %hi(D_800F6310)
/* 02C6E4 8002CB34 24010002 */  addiu       $at, $zero, 0x2
/* 02C6E8 8002CB38 14410031 */  bne         $v0, $at, .L8002CC00
.L8002CB3C:
/* 02C6EC 8002CB3C 25296310 */   addiu      $t1, $t1, %lo(D_800F6310)
/* 02C6F0 8002CB40 03292821 */  addu        $a1, $t9, $t1
/* 02C6F4 8002CB44 8CAA0020 */  lw          $t2, 0x20($a1)
/* 02C6F8 8002CB48 00A01825 */  move        $v1, $a1
/* 02C6FC 8002CB4C 24620020 */  addiu       $v0, $v1, 0x20
/* 02C700 8002CB50 14EA0004 */  bne         $a3, $t2, .L8002CB64
/* 02C704 8002CB54 24040010 */   addiu      $a0, $zero, 0x10
/* 02C708 8002CB58 AC400000 */  sw          $zero, 0x0($v0)
/* 02C70C 8002CB5C AC400004 */  sw          $zero, 0x4($v0)
/* 02C710 8002CB60 85070004 */  lh          $a3, 0x4($t0)
.L8002CB64:
/* 02C714 8002CB64 8C6B0028 */  lw          $t3, 0x28($v1)
/* 02C718 8002CB68 24620028 */  addiu       $v0, $v1, 0x28
/* 02C71C 8002CB6C 54EB0004 */  bnel        $a3, $t3, .L8002CB80
/* 02C720 8002CB70 24A30010 */   addiu      $v1, $a1, 0x10
/* 02C724 8002CB74 AC400000 */  sw          $zero, 0x0($v0)
/* 02C728 8002CB78 AC400004 */  sw          $zero, 0x4($v0)
/* 02C72C 8002CB7C 24A30010 */  addiu       $v1, $a1, 0x10
.L8002CB80:
/* 02C730 8002CB80 24050050 */  addiu       $a1, $zero, 0x50
.L8002CB84:
/* 02C734 8002CB84 85070004 */  lh          $a3, 0x4($t0)
/* 02C738 8002CB88 8C6C0020 */  lw          $t4, 0x20($v1)
/* 02C73C 8002CB8C 24840020 */  addiu       $a0, $a0, 0x20
/* 02C740 8002CB90 24620020 */  addiu       $v0, $v1, 0x20
/* 02C744 8002CB94 54EC0005 */  bnel        $a3, $t4, .L8002CBAC
/* 02C748 8002CB98 8C6D0028 */   lw         $t5, 0x28($v1)
/* 02C74C 8002CB9C AC400000 */  sw          $zero, 0x0($v0)
/* 02C750 8002CBA0 AC400004 */  sw          $zero, 0x4($v0)
/* 02C754 8002CBA4 85070004 */  lh          $a3, 0x4($t0)
/* 02C758 8002CBA8 8C6D0028 */  lw          $t5, 0x28($v1)
.L8002CBAC:
/* 02C75C 8002CBAC 24620028 */  addiu       $v0, $v1, 0x28
/* 02C760 8002CBB0 54ED0005 */  bnel        $a3, $t5, .L8002CBC8
/* 02C764 8002CBB4 8C6E0030 */   lw         $t6, 0x30($v1)
/* 02C768 8002CBB8 AC400000 */  sw          $zero, 0x0($v0)
/* 02C76C 8002CBBC AC400004 */  sw          $zero, 0x4($v0)
/* 02C770 8002CBC0 85070004 */  lh          $a3, 0x4($t0)
/* 02C774 8002CBC4 8C6E0030 */  lw          $t6, 0x30($v1)
.L8002CBC8:
/* 02C778 8002CBC8 24620030 */  addiu       $v0, $v1, 0x30
/* 02C77C 8002CBCC 54EE0005 */  bnel        $a3, $t6, .L8002CBE4
/* 02C780 8002CBD0 8C6F0038 */   lw         $t7, 0x38($v1)
/* 02C784 8002CBD4 AC400000 */  sw          $zero, 0x0($v0)
/* 02C788 8002CBD8 AC400004 */  sw          $zero, 0x4($v0)
/* 02C78C 8002CBDC 85070004 */  lh          $a3, 0x4($t0)
/* 02C790 8002CBE0 8C6F0038 */  lw          $t7, 0x38($v1)
.L8002CBE4:
/* 02C794 8002CBE4 24620038 */  addiu       $v0, $v1, 0x38
/* 02C798 8002CBE8 14EF0003 */  bne         $a3, $t7, .L8002CBF8
/* 02C79C 8002CBEC 00000000 */   nop
/* 02C7A0 8002CBF0 AC400000 */  sw          $zero, 0x0($v0)
/* 02C7A4 8002CBF4 AC400004 */  sw          $zero, 0x4($v0)
.L8002CBF8:
/* 02C7A8 8002CBF8 1485FFE2 */  bne         $a0, $a1, .L8002CB84
/* 02C7AC 8002CBFC 24630020 */   addiu      $v1, $v1, 0x20
.L8002CC00:
/* 02C7B0 8002CC00 8FB80034 */  lw          $t8, 0x34($sp)
/* 02C7B4 8002CC04 000648C0 */  sll         $t1, $a2, 3
/* 02C7B8 8002CC08 3C0C800F */  lui         $t4, %hi(D_800F6310)
/* 02C7BC 8002CC0C 0018C880 */  sll         $t9, $t8, 2
/* 02C7C0 8002CC10 0338C821 */  addu        $t9, $t9, $t8
/* 02C7C4 8002CC14 0019C900 */  sll         $t9, $t9, 4
/* 02C7C8 8002CC18 03295021 */  addu        $t2, $t9, $t1
/* 02C7CC 8002CC1C 254B0020 */  addiu       $t3, $t2, 0x20
/* 02C7D0 8002CC20 258C6310 */  addiu       $t4, $t4, %lo(D_800F6310)
/* 02C7D4 8002CC24 016C2021 */  addu        $a0, $t3, $t4
/* 02C7D8 8002CC28 AFA4001C */  sw          $a0, 0x1c($sp)
/* 02C7DC 8002CC2C 0C00B295 */  jal         func_8002CA54
/* 02C7E0 8002CC30 8FA50030 */   lw         $a1, 0x30($sp)
/* 02C7E4 8002CC34 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02C7E8 8002CC38 8FA2001C */  lw          $v0, 0x1c($sp)
/* 02C7EC 8002CC3C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 02C7F0 8002CC40 03E00008 */  jr          $ra
/* 02C7F4 8002CC44 00000000 */   nop

glabel func_8002CC48 # 28
/* 02C7F8 8002CC48 00057080 */  sll         $t6, $a1, 2
/* 02C7FC 8002CC4C 01C57021 */  addu        $t6, $t6, $a1
/* 02C800 8002CC50 000E7100 */  sll         $t6, $t6, 4
/* 02C804 8002CC54 3C18800F */  lui         $t8, %hi(D_800F6310)
/* 02C808 8002CC58 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02C80C 8002CC5C 27186310 */  addiu       $t8, $t8, %lo(D_800F6310)
/* 02C810 8002CC60 25CF0020 */  addiu       $t7, $t6, 0x20
/* 02C814 8002CC64 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02C818 8002CC68 01F81021 */  addu        $v0, $t7, $t8
/* 02C81C 8002CC6C 00003025 */  move        $a2, $zero
/* 02C820 8002CC70 2403000A */  addiu       $v1, $zero, 0xa
.L8002CC74:
/* 02C824 8002CC74 8C590004 */  lw          $t9, 0x4($v0)
/* 02C828 8002CC78 57200009 */  bnel        $t9, $zero, .L8002CCA0
/* 02C82C 8002CC7C 24C60001 */   addiu      $a2, $a2, 0x1
/* 02C830 8002CC80 8C480000 */  lw          $t0, 0x0($v0)
/* 02C834 8002CC84 55000006 */  bnel        $t0, $zero, .L8002CCA0
/* 02C838 8002CC88 24C60001 */   addiu      $a2, $a2, 0x1
/* 02C83C 8002CC8C 0C00B2B8 */  jal         func_8002CAE0
/* 02C840 8002CC90 00000000 */   nop
/* 02C844 8002CC94 10000006 */  b           .L8002CCB0
/* 02C848 8002CC98 8FBF0014 */   lw         $ra, 0x14($sp)
/* 02C84C 8002CC9C 24C60001 */  addiu       $a2, $a2, 0x1
.L8002CCA0:
/* 02C850 8002CCA0 14C3FFF4 */  bne         $a2, $v1, .L8002CC74
/* 02C854 8002CCA4 24420008 */   addiu      $v0, $v0, 0x8
/* 02C858 8002CCA8 00001025 */  move        $v0, $zero
/* 02C85C 8002CCAC 8FBF0014 */  lw          $ra, 0x14($sp)
.L8002CCB0:
/* 02C860 8002CCB0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02C864 8002CCB4 03E00008 */  jr          $ra
/* 02C868 8002CCB8 00000000 */   nop

glabel func_8002CCBC # 29
/* 02C86C 8002CCBC 3C0E800F */  lui         $t6, %hi(D_800F63FC)
/* 02C870 8002CCC0 8DCE63FC */  lw          $t6, %lo(D_800F63FC)($t6)
/* 02C874 8002CCC4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02C878 8002CCC8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02C87C 8002CCCC 11C00005 */  beqz        $t6, .L8002CCE4
/* 02C880 8002CCD0 AFA40018 */   sw         $a0, 0x18($sp)
/* 02C884 8002CCD4 0C001A23 */  jal         func_8000688C
/* 02C888 8002CCD8 01C02025 */   move       $a0, $t6
/* 02C88C 8002CCDC 0C045C6A */  jal         func_801171A8
/* 02C890 8002CCE0 00402025 */   move       $a0, $v0
.L8002CCE4:
/* 02C894 8002CCE4 3C04800F */  lui         $a0, %hi(D_800F63F8)
/* 02C898 8002CCE8 248463F8 */  addiu       $a0, $a0, %lo(D_800F63F8)
/* 02C89C 8002CCEC 0C00B295 */  jal         func_8002CA54
/* 02C8A0 8002CCF0 8FA50018 */   lw         $a1, 0x18($sp)
/* 02C8A4 8002CCF4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02C8A8 8002CCF8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02C8AC 8002CCFC 03E00008 */  jr          $ra
/* 02C8B0 8002CD00 00000000 */   nop

glabel func_8002CD04 # 30
/* 02C8B4 8002CD04 3C0E800F */  lui         $t6, %hi(D_800F6404)
/* 02C8B8 8002CD08 8DCE6404 */  lw          $t6, %lo(D_800F6404)($t6)
/* 02C8BC 8002CD0C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02C8C0 8002CD10 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02C8C4 8002CD14 11C00005 */  beqz        $t6, .L8002CD2C
/* 02C8C8 8002CD18 AFA40018 */   sw         $a0, 0x18($sp)
/* 02C8CC 8002CD1C 0C001A23 */  jal         func_8000688C
/* 02C8D0 8002CD20 01C02025 */   move       $a0, $t6
/* 02C8D4 8002CD24 0C045C6A */  jal         func_801171A8
/* 02C8D8 8002CD28 00402025 */   move       $a0, $v0
.L8002CD2C:
/* 02C8DC 8002CD2C 3C04800F */  lui         $a0, %hi(D_800F6400)
/* 02C8E0 8002CD30 24846400 */  addiu       $a0, $a0, %lo(D_800F6400)
/* 02C8E4 8002CD34 0C00B295 */  jal         func_8002CA54
/* 02C8E8 8002CD38 8FA50018 */   lw         $a1, 0x18($sp)
/* 02C8EC 8002CD3C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02C8F0 8002CD40 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02C8F4 8002CD44 03E00008 */  jr          $ra
/* 02C8F8 8002CD48 00000000 */   nop

glabel func_8002CD4C # 31
/* 02C8FC 8002CD4C 000470C0 */  sll         $t6, $a0, 3
/* 02C900 8002CD50 01C47023 */  subu        $t6, $t6, $a0
/* 02C904 8002CD54 000E7080 */  sll         $t6, $t6, 2
/* 02C908 8002CD58 01C47021 */  addu        $t6, $t6, $a0
/* 02C90C 8002CD5C 3C0F8013 */  lui         $t7, %hi(D_80129320)
/* 02C910 8002CD60 25EF9320 */  addiu       $t7, $t7, %lo(D_80129320)
/* 02C914 8002CD64 000E7080 */  sll         $t6, $t6, 2
/* 02C918 8002CD68 01CF1021 */  addu        $v0, $t6, $t7
/* 02C91C 8002CD6C 80430071 */  lb          $v1, 0x71($v0)
/* 02C920 8002CD70 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02C924 8002CD74 24010003 */  addiu       $at, $zero, 0x3
/* 02C928 8002CD78 10610006 */  beq         $v1, $at, .L8002CD94
/* 02C92C 8002CD7C AFBF0014 */   sw         $ra, 0x14($sp)
/* 02C930 8002CD80 24010002 */  addiu       $at, $zero, 0x2
/* 02C934 8002CD84 50610004 */  beql        $v1, $at, .L8002CD98
/* 02C938 8002CD88 84440072 */   lh         $a0, 0x72($v0)
/* 02C93C 8002CD8C 1000000A */  b           .L8002CDB8
/* 02C940 8002CD90 00001025 */   move       $v0, $zero
.L8002CD94:
/* 02C944 8002CD94 84440072 */  lh          $a0, 0x72($v0)
.L8002CD98:
/* 02C948 8002CD98 2401FFFF */  addiu       $at, $zero, -0x1
/* 02C94C 8002CD9C 14810003 */  bne         $a0, $at, .L8002CDAC
/* 02C950 8002CDA0 00000000 */   nop
/* 02C954 8002CDA4 10000004 */  b           .L8002CDB8
/* 02C958 8002CDA8 00001025 */   move       $v0, $zero
.L8002CDAC:
/* 02C95C 8002CDAC 0C00C155 */  jal         func_80030554
/* 02C960 8002CDB0 24050001 */   addiu      $a1, $zero, 0x1
/* 02C964 8002CDB4 24020001 */  addiu       $v0, $zero, 0x1
.L8002CDB8:
/* 02C968 8002CDB8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02C96C 8002CDBC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02C970 8002CDC0 03E00008 */  jr          $ra
/* 02C974 8002CDC4 00000000 */   nop

glabel func_8002CDC8 # 32
/* 02C978 8002CDC8 00047080 */  sll         $t6, $a0, 2
/* 02C97C 8002CDCC 01C47021 */  addu        $t6, $t6, $a0
/* 02C980 8002CDD0 000E7100 */  sll         $t6, $t6, 4
/* 02C984 8002CDD4 000578C0 */  sll         $t7, $a1, 3
/* 02C988 8002CDD8 3C19800F */  lui         $t9, %hi(D_800F6310)
/* 02C98C 8002CDDC 27396310 */  addiu       $t9, $t9, %lo(D_800F6310)
/* 02C990 8002CDE0 01CFC021 */  addu        $t8, $t6, $t7
/* 02C994 8002CDE4 03191021 */  addu        $v0, $t8, $t9
/* 02C998 8002CDE8 8C480024 */  lw          $t0, 0x24($v0)
/* 02C99C 8002CDEC 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 02C9A0 8002CDF0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 02C9A4 8002CDF4 15000003 */  bnez        $t0, .L8002CE04
/* 02C9A8 8002CDF8 AFB00018 */   sw         $s0, 0x18($sp)
/* 02C9AC 8002CDFC 1000002E */  b           .L8002CEB8
/* 02C9B0 8002CE00 00001025 */   move       $v0, $zero
.L8002CE04:
/* 02C9B4 8002CE04 24500020 */  addiu       $s0, $v0, 0x20
/* 02C9B8 8002CE08 8E090000 */  lw          $t1, 0x0($s0)
/* 02C9BC 8002CE0C 3C038013 */  lui         $v1, %hi(D_80129390 + 0x1)
/* 02C9C0 8002CE10 24010005 */  addiu       $at, $zero, 0x5
/* 02C9C4 8002CE14 000950C0 */  sll         $t2, $t1, 3
/* 02C9C8 8002CE18 01495023 */  subu        $t2, $t2, $t1
/* 02C9CC 8002CE1C 000A5080 */  sll         $t2, $t2, 2
/* 02C9D0 8002CE20 01495021 */  addu        $t2, $t2, $t1
/* 02C9D4 8002CE24 000A5080 */  sll         $t2, $t2, 2
/* 02C9D8 8002CE28 006A1821 */  addu        $v1, $v1, $t2
/* 02C9DC 8002CE2C 80639391 */  lb          $v1, %lo(D_80129390 + 0x1)($v1)
/* 02C9E0 8002CE30 54610004 */  bnel        $v1, $at, .L8002CE44
/* 02C9E4 8002CE34 24010002 */   addiu      $at, $zero, 0x2
/* 02C9E8 8002CE38 1000001F */  b           .L8002CEB8
/* 02C9EC 8002CE3C 00001025 */   move       $v0, $zero
/* 02C9F0 8002CE40 24010002 */  addiu       $at, $zero, 0x2
.L8002CE44:
/* 02C9F4 8002CE44 14610003 */  bne         $v1, $at, .L8002CE54
/* 02C9F8 8002CE48 00000000 */   nop
/* 02C9FC 8002CE4C 1000001A */  b           .L8002CEB8
/* 02CA00 8002CE50 00001025 */   move       $v0, $zero
.L8002CE54:
/* 02CA04 8002CE54 0C001A23 */  jal         func_8000688C
/* 02CA08 8002CE58 8E040004 */   lw         $a0, 0x4($s0)
/* 02CA0C 8002CE5C AFA20024 */  sw          $v0, 0x24($sp)
/* 02CA10 8002CE60 8C430054 */  lw          $v1, 0x54($v0)
/* 02CA14 8002CE64 00402025 */  move        $a0, $v0
/* 02CA18 8002CE68 00002825 */  move        $a1, $zero
/* 02CA1C 8002CE6C A0600006 */  sb          $zero, 0x6($v1)
/* 02CA20 8002CE70 AC600008 */  sw          $zero, 0x8($v1)
/* 02CA24 8002CE74 0C045E9A */  jal         func_80117A68
/* 02CA28 8002CE78 AFA30020 */   sw         $v1, 0x20($sp)
/* 02CA2C 8002CE7C 8FA30020 */  lw          $v1, 0x20($sp)
/* 02CA30 8002CE80 3C01BFFF */  lui         $at, 0xbfff
/* 02CA34 8002CE84 3421FFFF */  ori         $at, $at, 0xffff
/* 02CA38 8002CE88 8C6B0000 */  lw          $t3, 0x0($v1)
/* 02CA3C 8002CE8C 24052000 */  addiu       $a1, $zero, 0x2000
/* 02CA40 8002CE90 01616024 */  and         $t4, $t3, $at
/* 02CA44 8002CE94 AC6C0000 */  sw          $t4, 0x0($v1)
/* 02CA48 8002CE98 0C001E12 */  jal         func_80007848
/* 02CA4C 8002CE9C 8FA40024 */   lw         $a0, 0x24($sp)
/* 02CA50 8002CEA0 8FAD0024 */  lw          $t5, 0x24($sp)
/* 02CA54 8002CEA4 0C045D8F */  jal         func_8011763C
/* 02CA58 8002CEA8 8DA40038 */   lw         $a0, 0x38($t5)
/* 02CA5C 8002CEAC AE000000 */  sw          $zero, 0x0($s0)
/* 02CA60 8002CEB0 AE000004 */  sw          $zero, 0x4($s0)
/* 02CA64 8002CEB4 8FA20024 */  lw          $v0, 0x24($sp)
.L8002CEB8:
/* 02CA68 8002CEB8 8FBF001C */  lw          $ra, 0x1c($sp)
/* 02CA6C 8002CEBC 8FB00018 */  lw          $s0, 0x18($sp)
/* 02CA70 8002CEC0 27BD0030 */  addiu       $sp, $sp, 0x30
/* 02CA74 8002CEC4 03E00008 */  jr          $ra
/* 02CA78 8002CEC8 00000000 */   nop

glabel func_8002CECC # 33
/* 02CA7C 8002CECC 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 02CA80 8002CED0 AFA40030 */  sw          $a0, 0x30($sp)
/* 02CA84 8002CED4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 02CA88 8002CED8 00A02025 */  move        $a0, $a1
/* 02CA8C 8002CEDC AFB00018 */  sw          $s0, 0x18($sp)
/* 02CA90 8002CEE0 0C00B372 */  jal         func_8002CDC8
/* 02CA94 8002CEE4 00C02825 */   move       $a1, $a2
/* 02CA98 8002CEE8 14400003 */  bnez        $v0, .L8002CEF8
/* 02CA9C 8002CEEC 00408025 */   move       $s0, $v0
/* 02CAA0 8002CEF0 10000019 */  b           .L8002CF58
/* 02CAA4 8002CEF4 00001025 */   move       $v0, $zero
.L8002CEF8:
/* 02CAA8 8002CEF8 8E020054 */  lw          $v0, 0x54($s0)
/* 02CAAC 8002CEFC 02002025 */  move        $a0, $s0
/* 02CAB0 8002CF00 24052000 */  addiu       $a1, $zero, 0x2000
/* 02CAB4 8002CF04 0C001DF8 */  jal         func_800077E0
/* 02CAB8 8002CF08 AFA20024 */   sw         $v0, 0x24($sp)
/* 02CABC 8002CF0C 8FA20024 */  lw          $v0, 0x24($sp)
/* 02CAC0 8002CF10 240E0001 */  addiu       $t6, $zero, 0x1
/* 02CAC4 8002CF14 02002025 */  move        $a0, $s0
/* 02CAC8 8002CF18 24050003 */  addiu       $a1, $zero, 0x3
/* 02CACC 8002CF1C A04E0006 */  sb          $t6, 0x6($v0)
/* 02CAD0 8002CF20 0C045E9A */  jal         func_80117A68
/* 02CAD4 8002CF24 AC400008 */   sw         $zero, 0x8($v0)
/* 02CAD8 8002CF28 8FA20024 */  lw          $v0, 0x24($sp)
/* 02CADC 8002CF2C 3C014000 */  lui         $at, 0x4000
/* 02CAE0 8002CF30 3C04800F */  lui         $a0, %hi(D_800F6310)
/* 02CAE4 8002CF34 8C4F0000 */  lw          $t7, 0x0($v0)
/* 02CAE8 8002CF38 24846310 */  addiu       $a0, $a0, %lo(D_800F6310)
/* 02CAEC 8002CF3C 01E1C025 */  or          $t8, $t7, $at
/* 02CAF0 8002CF40 AC580000 */  sw          $t8, 0x0($v0)
/* 02CAF4 8002CF44 8FA80030 */  lw          $t0, 0x30($sp)
/* 02CAF8 8002CF48 8E190038 */  lw          $t9, 0x38($s0)
/* 02CAFC 8002CF4C 0C00B190 */  jal         func_8002C640
/* 02CB00 8002CF50 AD190084 */   sw         $t9, 0x84($t0)
/* 02CB04 8002CF54 02001025 */  move        $v0, $s0
.L8002CF58:
/* 02CB08 8002CF58 8FBF001C */  lw          $ra, 0x1c($sp)
/* 02CB0C 8002CF5C 8FB00018 */  lw          $s0, 0x18($sp)
/* 02CB10 8002CF60 27BD0030 */  addiu       $sp, $sp, 0x30
/* 02CB14 8002CF64 03E00008 */  jr          $ra
/* 02CB18 8002CF68 00000000 */   nop

glabel func_8002CF6C # 34
/* 02CB1C 8002CF6C 27BDFF60 */  addiu       $sp, $sp, -0xa0
/* 02CB20 8002CF70 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02CB24 8002CF74 AFA500A4 */  sw          $a1, 0xa4($sp)
/* 02CB28 8002CF78 8C820054 */  lw          $v0, 0x54($a0)
/* 02CB2C 8002CF7C 24050001 */  addiu       $a1, $zero, 0x1
/* 02CB30 8002CF80 0C04610B */  jal         func_8011842C
/* 02CB34 8002CF84 84440004 */   lh         $a0, 0x4($v0)
/* 02CB38 8002CF88 3C05800B */  lui         $a1, %hi(D_800AADAC)
/* 02CB3C 8002CF8C 24A5ADAC */  addiu       $a1, $a1, %lo(D_800AADAC)
/* 02CB40 8002CF90 27A4001C */  addiu       $a0, $sp, 0x1c
/* 02CB44 8002CF94 00403025 */  move        $a2, $v0
/* 02CB48 8002CF98 0C014589 */  jal         func_80051624
/* 02CB4C 8002CF9C 8FA700A4 */   lw         $a3, 0xa4($sp)
/* 02CB50 8002CFA0 00002025 */  move        $a0, $zero
/* 02CB54 8002CFA4 3C054060 */  lui         $a1, 0x4060
/* 02CB58 8002CFA8 0C009589 */  jal         func_80025624
/* 02CB5C 8002CFAC 27A6001C */   addiu      $a2, $sp, 0x1c
/* 02CB60 8002CFB0 0C002671 */  jal         func_800099C4
/* 02CB64 8002CFB4 00000000 */   nop
/* 02CB68 8002CFB8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02CB6C 8002CFBC 3C01800F */  lui         $at, %hi(D_800F6448)
/* 02CB70 8002CFC0 AC236448 */  sw          $v1, %lo(D_800F6448)($at)
/* 02CB74 8002CFC4 03E00008 */  jr          $ra
/* 02CB78 8002CFC8 27BD00A0 */   addiu      $sp, $sp, 0xa0

glabel func_8002CFCC # 35
/* 02CB7C 8002CFCC 8C820054 */  lw          $v0, 0x54($a0)
/* 02CB80 8002CFD0 3C038013 */  lui         $v1, %hi(D_80129390 + 0x1)
/* 02CB84 8002CFD4 24060001 */  addiu       $a2, $zero, 0x1
/* 02CB88 8002CFD8 844E0004 */  lh          $t6, 0x4($v0)
/* 02CB8C 8002CFDC 24010003 */  addiu       $at, $zero, 0x3
/* 02CB90 8002CFE0 000E78C0 */  sll         $t7, $t6, 3
/* 02CB94 8002CFE4 01EE7823 */  subu        $t7, $t7, $t6
/* 02CB98 8002CFE8 000F7880 */  sll         $t7, $t7, 2
/* 02CB9C 8002CFEC 01EE7821 */  addu        $t7, $t7, $t6
/* 02CBA0 8002CFF0 000F7880 */  sll         $t7, $t7, 2
/* 02CBA4 8002CFF4 006F1821 */  addu        $v1, $v1, $t7
/* 02CBA8 8002CFF8 80639391 */  lb          $v1, %lo(D_80129390 + 0x1)($v1)
/* 02CBAC 8002CFFC 14660007 */  bne         $v1, $a2, .L8002D01C
/* 02CBB0 8002D000 00000000 */   nop
/* 02CBB4 8002D004 14A00003 */  bnez        $a1, .L8002D014
/* 02CBB8 8002D008 00000000 */   nop
/* 02CBBC 8002D00C 03E00008 */  jr          $ra
/* 02CBC0 8002D010 24020001 */   addiu      $v0, $zero, 0x1
.L8002D014:
/* 02CBC4 8002D014 03E00008 */  jr          $ra
/* 02CBC8 8002D018 00001025 */   move       $v0, $zero
.L8002D01C:
/* 02CBCC 8002D01C 10610005 */  beq         $v1, $at, .L8002D034
/* 02CBD0 8002D020 24010002 */   addiu      $at, $zero, 0x2
/* 02CBD4 8002D024 10610003 */  beq         $v1, $at, .L8002D034
/* 02CBD8 8002D028 24010005 */   addiu      $at, $zero, 0x5
/* 02CBDC 8002D02C 14610007 */  bne         $v1, $at, .L8002D04C
/* 02CBE0 8002D030 00001025 */   move       $v0, $zero
.L8002D034:
/* 02CBE4 8002D034 14A60003 */  bne         $a1, $a2, .L8002D044
/* 02CBE8 8002D038 00000000 */   nop
/* 02CBEC 8002D03C 03E00008 */  jr          $ra
/* 02CBF0 8002D040 24020001 */   addiu      $v0, $zero, 0x1
.L8002D044:
/* 02CBF4 8002D044 03E00008 */  jr          $ra
/* 02CBF8 8002D048 00001025 */   move       $v0, $zero
.L8002D04C:
/* 02CBFC 8002D04C 03E00008 */  jr          $ra
/* 02CC00 8002D050 00000000 */   nop

glabel func_8002D054 # 36
/* 02CC04 8002D054 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02CC08 8002D058 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02CC0C 8002D05C AFA40018 */  sw          $a0, 0x18($sp)
/* 02CC10 8002D060 0C002671 */  jal         func_800099C4
/* 02CC14 8002D064 AC850014 */   sw         $a1, 0x14($a0)
/* 02CC18 8002D068 8FAF0018 */  lw          $t7, 0x18($sp)
/* 02CC1C 8002D06C ADE20018 */  sw          $v0, 0x18($t7)
/* 02CC20 8002D070 ADE3001C */  sw          $v1, 0x1c($t7)
/* 02CC24 8002D074 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02CC28 8002D078 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02CC2C 8002D07C 03E00008 */  jr          $ra
/* 02CC30 8002D080 00000000 */   nop

glabel func_8002D084 # 37
/* 02CC34 8002D084 3C02800F */  lui         $v0, %hi(D_800F6310)
/* 02CC38 8002D088 24426310 */  addiu       $v0, $v0, %lo(D_800F6310)
/* 02CC3C 8002D08C 8C4E0010 */  lw          $t6, 0x10($v0)
/* 02CC40 8002D090 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 02CC44 8002D094 AFB00018 */  sw          $s0, 0x18($sp)
/* 02CC48 8002D098 000E7880 */  sll         $t7, $t6, 2
/* 02CC4C 8002D09C 01EE7821 */  addu        $t7, $t7, $t6
/* 02CC50 8002D0A0 000F7900 */  sll         $t7, $t7, 4
/* 02CC54 8002D0A4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 02CC58 8002D0A8 AFA40040 */  sw          $a0, 0x40($sp)
/* 02CC5C 8002D0AC 004F8021 */  addu        $s0, $v0, $t7
/* 02CC60 8002D0B0 26100020 */  addiu       $s0, $s0, 0x20
/* 02CC64 8002D0B4 0C001A23 */  jal         func_8000688C
/* 02CC68 8002D0B8 8E040004 */   lw         $a0, 0x4($s0)
/* 02CC6C 8002D0BC 8E180000 */  lw          $t8, 0x0($s0)
/* 02CC70 8002D0C0 3C028013 */  lui         $v0, %hi(D_80129390 + 0x1)
/* 02CC74 8002D0C4 24030002 */  addiu       $v1, $zero, 0x2
/* 02CC78 8002D0C8 0018C8C0 */  sll         $t9, $t8, 3
/* 02CC7C 8002D0CC 0338C823 */  subu        $t9, $t9, $t8
/* 02CC80 8002D0D0 0019C880 */  sll         $t9, $t9, 2
/* 02CC84 8002D0D4 0338C821 */  addu        $t9, $t9, $t8
/* 02CC88 8002D0D8 0019C880 */  sll         $t9, $t9, 2
/* 02CC8C 8002D0DC 00591021 */  addu        $v0, $v0, $t9
/* 02CC90 8002D0E0 80429391 */  lb          $v0, %lo(D_80129390 + 0x1)($v0)
/* 02CC94 8002D0E4 24010005 */  addiu       $at, $zero, 0x5
/* 02CC98 8002D0E8 10430011 */  beq         $v0, $v1, .L8002D130
/* 02CC9C 8002D0EC 00000000 */   nop
/* 02CCA0 8002D0F0 14410017 */  bne         $v0, $at, .L8002D150
/* 02CCA4 8002D0F4 8FA80040 */   lw         $t0, 0x40($sp)
/* 02CCA8 8002D0F8 3C01800F */  lui         $at, %hi(D_800F6440)
/* 02CCAC 8002D0FC 3C053DCC */  lui         $a1, 0x3dcc
/* 02CCB0 8002D100 3C06800B */  lui         $a2, %hi(D_800AADB8)
/* 02CCB4 8002D104 AC236440 */  sw          $v1, %lo(D_800F6440)($at)
/* 02CCB8 8002D108 24C6ADB8 */  addiu       $a2, $a2, %lo(D_800AADB8)
/* 02CCBC 8002D10C 34A5CCCD */  ori         $a1, $a1, 0xcccd
/* 02CCC0 8002D110 0C009589 */  jal         func_80025624
/* 02CCC4 8002D114 00002025 */   move       $a0, $zero
/* 02CCC8 8002D118 3C04800F */  lui         $a0, %hi(D_800F6310)
/* 02CCCC 8002D11C 24846310 */  addiu       $a0, $a0, %lo(D_800F6310)
/* 02CCD0 8002D120 0C00B415 */  jal         func_8002D054
/* 02CCD4 8002D124 24050003 */   addiu      $a1, $zero, 0x3
/* 02CCD8 8002D128 10000078 */  b           .L8002D30C
/* 02CCDC 8002D12C 8FBF001C */   lw         $ra, 0x1c($sp)
.L8002D130:
/* 02CCE0 8002D130 0C001A23 */  jal         func_8000688C
/* 02CCE4 8002D134 8E040004 */   lw         $a0, 0x4($s0)
/* 02CCE8 8002D138 3C05800B */  lui         $a1, %hi(D_800AADBC)
/* 02CCEC 8002D13C 24A5ADBC */  addiu       $a1, $a1, %lo(D_800AADBC)
/* 02CCF0 8002D140 0C00B3DB */  jal         func_8002CF6C
/* 02CCF4 8002D144 00402025 */   move       $a0, $v0
/* 02CCF8 8002D148 10000070 */  b           .L8002D30C
/* 02CCFC 8002D14C 8FBF001C */   lw         $ra, 0x1c($sp)
.L8002D150:
/* 02CD00 8002D150 0C001A23 */  jal         func_8000688C
/* 02CD04 8002D154 8D040084 */   lw         $a0, 0x84($t0)
/* 02CD08 8002D158 1040003D */  beqz        $v0, .L8002D250
/* 02CD0C 8002D15C AFA20030 */   sw         $v0, 0x30($sp)
/* 02CD10 8002D160 3C05800F */  lui         $a1, %hi(D_800F6320)
/* 02CD14 8002D164 8CA56320 */  lw          $a1, %lo(D_800F6320)($a1)
/* 02CD18 8002D168 0C00B3F3 */  jal         func_8002CFCC
/* 02CD1C 8002D16C 00402025 */   move       $a0, $v0
/* 02CD20 8002D170 14400012 */  bnez        $v0, .L8002D1BC
/* 02CD24 8002D174 3C0A800F */   lui        $t2, %hi(D_800F6320)
/* 02CD28 8002D178 3C09800F */  lui         $t1, %hi(D_800F6320)
/* 02CD2C 8002D17C 8D296320 */  lw          $t1, %lo(D_800F6320)($t1)
/* 02CD30 8002D180 24010001 */  addiu       $at, $zero, 0x1
/* 02CD34 8002D184 00002025 */  move        $a0, $zero
/* 02CD38 8002D188 15210007 */  bne         $t1, $at, .L8002D1A8
/* 02CD3C 8002D18C 3C054060 */   lui        $a1, 0x4060
/* 02CD40 8002D190 3C05800B */  lui         $a1, %hi(D_800AADD8)
/* 02CD44 8002D194 24A5ADD8 */  addiu       $a1, $a1, %lo(D_800AADD8)
/* 02CD48 8002D198 0C00B3DB */  jal         func_8002CF6C
/* 02CD4C 8002D19C 8FA40030 */   lw         $a0, 0x30($sp)
/* 02CD50 8002D1A0 1000005A */  b           .L8002D30C
/* 02CD54 8002D1A4 8FBF001C */   lw         $ra, 0x1c($sp)
.L8002D1A8:
/* 02CD58 8002D1A8 3C06800B */  lui         $a2, %hi(D_800AADF8)
/* 02CD5C 8002D1AC 0C009589 */  jal         func_80025624
/* 02CD60 8002D1B0 24C6ADF8 */   addiu      $a2, $a2, %lo(D_800AADF8)
/* 02CD64 8002D1B4 10000055 */  b           .L8002D30C
/* 02CD68 8002D1B8 8FBF001C */   lw         $ra, 0x1c($sp)
.L8002D1BC:
/* 02CD6C 8002D1BC 8D4A6320 */  lw          $t2, %lo(D_800F6320)($t2)
/* 02CD70 8002D1C0 24010001 */  addiu       $at, $zero, 0x1
/* 02CD74 8002D1C4 8FAB0030 */  lw          $t3, 0x30($sp)
/* 02CD78 8002D1C8 1541001E */  bne         $t2, $at, .L8002D244
/* 02CD7C 8002D1CC 00008025 */   move       $s0, $zero
/* 02CD80 8002D1D0 8D650054 */  lw          $a1, 0x54($t3)
.L8002D1D4:
/* 02CD84 8002D1D4 3C0C800F */  lui         $t4, %hi(D_800F6320)
/* 02CD88 8002D1D8 8D8C6320 */  lw          $t4, %lo(D_800F6320)($t4)
/* 02CD8C 8002D1DC 3C04800F */  lui         $a0, %hi(D_800F6334)
/* 02CD90 8002D1E0 AFA50024 */  sw          $a1, 0x24($sp)
/* 02CD94 8002D1E4 000C6880 */  sll         $t5, $t4, 2
/* 02CD98 8002D1E8 01AC6821 */  addu        $t5, $t5, $t4
/* 02CD9C 8002D1EC 000D6900 */  sll         $t5, $t5, 4
/* 02CDA0 8002D1F0 01B07021 */  addu        $t6, $t5, $s0
/* 02CDA4 8002D1F4 008E2021 */  addu        $a0, $a0, $t6
/* 02CDA8 8002D1F8 0C001A23 */  jal         func_8000688C
/* 02CDAC 8002D1FC 8C846334 */   lw         $a0, %lo(D_800F6334)($a0)
/* 02CDB0 8002D200 1040000C */  beqz        $v0, .L8002D234
/* 02CDB4 8002D204 8FA50024 */   lw         $a1, 0x24($sp)
/* 02CDB8 8002D208 8C430054 */  lw          $v1, 0x54($v0)
/* 02CDBC 8002D20C 84AF0004 */  lh          $t7, 0x4($a1)
/* 02CDC0 8002D210 84780004 */  lh          $t8, 0x4($v1)
/* 02CDC4 8002D214 55F80008 */  bnel        $t7, $t8, .L8002D238
/* 02CDC8 8002D218 26100008 */   addiu      $s0, $s0, 0x8
/* 02CDCC 8002D21C 3C05800B */  lui         $a1, %hi(D_800AAE20)
/* 02CDD0 8002D220 24A5AE20 */  addiu       $a1, $a1, %lo(D_800AAE20)
/* 02CDD4 8002D224 0C00B3DB */  jal         func_8002CF6C
/* 02CDD8 8002D228 8FA40030 */   lw         $a0, 0x30($sp)
/* 02CDDC 8002D22C 10000037 */  b           .L8002D30C
/* 02CDE0 8002D230 8FBF001C */   lw         $ra, 0x1c($sp)
.L8002D234:
/* 02CDE4 8002D234 26100008 */  addiu       $s0, $s0, 0x8
.L8002D238:
/* 02CDE8 8002D238 24010050 */  addiu       $at, $zero, 0x50
/* 02CDEC 8002D23C 1601FFE5 */  bne         $s0, $at, .L8002D1D4
/* 02CDF0 8002D240 00000000 */   nop
.L8002D244:
/* 02CDF4 8002D244 8FA40030 */  lw          $a0, 0x30($sp)
/* 02CDF8 8002D248 0C045D9D */  jal         func_80117674
/* 02CDFC 8002D24C 24050001 */   addiu      $a1, $zero, 0x1
.L8002D250:
/* 02CE00 8002D250 3C05800F */  lui         $a1, %hi(D_800F6320)
/* 02CE04 8002D254 8CA56320 */  lw          $a1, %lo(D_800F6320)($a1)
/* 02CE08 8002D258 8FA40040 */  lw          $a0, 0x40($sp)
/* 02CE0C 8002D25C 0C00B3B3 */  jal         func_8002CECC
/* 02CE10 8002D260 00003025 */   move       $a2, $zero
/* 02CE14 8002D264 8FB90030 */  lw          $t9, 0x30($sp)
/* 02CE18 8002D268 00408025 */  move        $s0, $v0
/* 02CE1C 8002D26C 3C05800F */  lui         $a1, %hi(D_800F6320)
/* 02CE20 8002D270 13200004 */  beqz        $t9, .L8002D284
/* 02CE24 8002D274 03202025 */   move       $a0, $t9
/* 02CE28 8002D278 8CA56320 */  lw          $a1, %lo(D_800F6320)($a1)
/* 02CE2C 8002D27C 0C00B2B8 */  jal         func_8002CAE0
/* 02CE30 8002D280 00003025 */   move       $a2, $zero
.L8002D284:
/* 02CE34 8002D284 1200000C */  beqz        $s0, .L8002D2B8
/* 02CE38 8002D288 8FA80030 */   lw         $t0, 0x30($sp)
/* 02CE3C 8002D28C 1100000A */  beqz        $t0, .L8002D2B8
/* 02CE40 8002D290 01002025 */   move       $a0, $t0
/* 02CE44 8002D294 3C05800B */  lui         $a1, %hi(D_800AAE34)
/* 02CE48 8002D298 0C00B3DB */  jal         func_8002CF6C
/* 02CE4C 8002D29C 24A5AE34 */   addiu      $a1, $a1, %lo(D_800AAE34)
/* 02CE50 8002D2A0 3C05800B */  lui         $a1, %hi(D_800AAE54)
/* 02CE54 8002D2A4 24A5AE54 */  addiu       $a1, $a1, %lo(D_800AAE54)
/* 02CE58 8002D2A8 0C00B3DB */  jal         func_8002CF6C
/* 02CE5C 8002D2AC 02002025 */   move       $a0, $s0
/* 02CE60 8002D2B0 10000016 */  b           .L8002D30C
/* 02CE64 8002D2B4 8FBF001C */   lw         $ra, 0x1c($sp)
.L8002D2B8:
/* 02CE68 8002D2B8 12000007 */  beqz        $s0, .L8002D2D8
/* 02CE6C 8002D2BC 8FA90030 */   lw         $t1, 0x30($sp)
/* 02CE70 8002D2C0 3C05800B */  lui         $a1, %hi(D_800AAE68)
/* 02CE74 8002D2C4 24A5AE68 */  addiu       $a1, $a1, %lo(D_800AAE68)
/* 02CE78 8002D2C8 0C00B3DB */  jal         func_8002CF6C
/* 02CE7C 8002D2CC 02002025 */   move       $a0, $s0
/* 02CE80 8002D2D0 1000000E */  b           .L8002D30C
/* 02CE84 8002D2D4 8FBF001C */   lw         $ra, 0x1c($sp)
.L8002D2D8:
/* 02CE88 8002D2D8 11200007 */  beqz        $t1, .L8002D2F8
/* 02CE8C 8002D2DC 00002025 */   move       $a0, $zero
/* 02CE90 8002D2E0 3C05800B */  lui         $a1, %hi(D_800AAE88)
/* 02CE94 8002D2E4 24A5AE88 */  addiu       $a1, $a1, %lo(D_800AAE88)
/* 02CE98 8002D2E8 0C00B3DB */  jal         func_8002CF6C
/* 02CE9C 8002D2EC 01202025 */   move       $a0, $t1
/* 02CEA0 8002D2F0 10000006 */  b           .L8002D30C
/* 02CEA4 8002D2F4 8FBF001C */   lw         $ra, 0x1c($sp)
.L8002D2F8:
/* 02CEA8 8002D2F8 3C06800B */  lui         $a2, %hi(D_800AAEA8)
/* 02CEAC 8002D2FC 24C6AEA8 */  addiu       $a2, $a2, %lo(D_800AAEA8)
/* 02CEB0 8002D300 0C009589 */  jal         func_80025624
/* 02CEB4 8002D304 3C054000 */   lui        $a1, 0x4000
/* 02CEB8 8002D308 8FBF001C */  lw          $ra, 0x1c($sp)
.L8002D30C:
/* 02CEBC 8002D30C 8FB00018 */  lw          $s0, 0x18($sp)
/* 02CEC0 8002D310 27BD0040 */  addiu       $sp, $sp, 0x40
/* 02CEC4 8002D314 03E00008 */  jr          $ra
/* 02CEC8 8002D318 00000000 */   nop

glabel func_8002D31C # 38
/* 02CECC 8002D31C 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 02CED0 8002D320 AFBF0044 */  sw          $ra, 0x44($sp)
/* 02CED4 8002D324 AFB50040 */  sw          $s5, 0x40($sp)
/* 02CED8 8002D328 0080A825 */  move        $s5, $a0
/* 02CEDC 8002D32C AFB4003C */  sw          $s4, 0x3c($sp)
/* 02CEE0 8002D330 AFB30038 */  sw          $s3, 0x38($sp)
/* 02CEE4 8002D334 AFB20034 */  sw          $s2, 0x34($sp)
/* 02CEE8 8002D338 AFB10030 */  sw          $s1, 0x30($sp)
/* 02CEEC 8002D33C AFB0002C */  sw          $s0, 0x2c($sp)
/* 02CEF0 8002D340 F7B60020 */  sdc1        $f22, 0x20($sp)
/* 02CEF4 8002D344 0C00B14C */  jal         func_8002C530
/* 02CEF8 8002D348 F7B40018 */   sdc1       $f20, 0x18($sp)
/* 02CEFC 8002D34C 3C01447A */  lui         $at, 0x447a
/* 02CF00 8002D350 3C12800A */  lui         $s2, %hi(D_8009FA18)
/* 02CF04 8002D354 4481A000 */  mtc1        $at, $f20
/* 02CF08 8002D358 4480B000 */  mtc1        $zero, $f22
/* 02CF0C 8002D35C 2652FA18 */  addiu       $s2, $s2, %lo(D_8009FA18)
/* 02CF10 8002D360 00008825 */  move        $s1, $zero
/* 02CF14 8002D364 00009825 */  move        $s3, $zero
/* 02CF18 8002D368 2414FFFF */  addiu       $s4, $zero, -0x1
.L8002D36C:
/* 02CF1C 8002D36C 8E440000 */  lw          $a0, 0x0($s2)
/* 02CF20 8002D370 52840006 */  beql        $s4, $a0, .L8002D38C
/* 02CF24 8002D374 8E4E0004 */   lw         $t6, 0x4($s2)
/* 02CF28 8002D378 0C00C14B */  jal         func_8003052C
/* 02CF2C 8002D37C 00000000 */   nop
/* 02CF30 8002D380 1040000F */  beqz        $v0, .L8002D3C0
/* 02CF34 8002D384 02B38021 */   addu       $s0, $s5, $s3
/* 02CF38 8002D388 8E4E0004 */  lw          $t6, 0x4($s2)
.L8002D38C:
/* 02CF3C 8002D38C 4406A000 */  mfc1        $a2, $f20
/* 02CF40 8002D390 4407B000 */  mfc1        $a3, $f22
/* 02CF44 8002D394 4600A306 */  mov.s       $f12, $f20
/* 02CF48 8002D398 4600A386 */  mov.s       $f14, $f20
/* 02CF4C 8002D39C E7B60010 */  swc1        $f22, 0x10($sp)
/* 02CF50 8002D3A0 0C045BDD */  jal         func_80116F74
/* 02CF54 8002D3A4 AFAE0014 */   sw         $t6, 0x14($sp)
/* 02CF58 8002D3A8 00402025 */  move        $a0, $v0
/* 02CF5C 8002D3AC 24050001 */  addiu       $a1, $zero, 0x1
/* 02CF60 8002D3B0 0C00B2B8 */  jal         func_8002CAE0
/* 02CF64 8002D3B4 02203025 */   move       $a2, $s1
/* 02CF68 8002D3B8 10000004 */  b           .L8002D3CC
/* 02CF6C 8002D3BC 26310001 */   addiu      $s1, $s1, 0x1
.L8002D3C0:
/* 02CF70 8002D3C0 AE000074 */  sw          $zero, 0x74($s0)
/* 02CF74 8002D3C4 AE000070 */  sw          $zero, 0x70($s0)
/* 02CF78 8002D3C8 26310001 */  addiu       $s1, $s1, 0x1
.L8002D3CC:
/* 02CF7C 8002D3CC 2A21000A */  slti        $at, $s1, 0xa
/* 02CF80 8002D3D0 26730008 */  addiu       $s3, $s3, 0x8
/* 02CF84 8002D3D4 1420FFE5 */  bnez        $at, .L8002D36C
/* 02CF88 8002D3D8 26520008 */   addiu      $s2, $s2, 0x8
/* 02CF8C 8002D3DC 00008825 */  move        $s1, $zero
/* 02CF90 8002D3E0 02A08025 */  move        $s0, $s5
/* 02CF94 8002D3E4 2412000A */  addiu       $s2, $zero, 0xa
.L8002D3E8:
/* 02CF98 8002D3E8 8E0F0020 */  lw          $t7, 0x20($s0)
/* 02CF9C 8002D3EC 51E0000E */  beql        $t7, $zero, .L8002D428
/* 02CFA0 8002D3F0 26310001 */   addiu      $s1, $s1, 0x1
/* 02CFA4 8002D3F4 E7B60010 */  swc1        $f22, 0x10($sp)
/* 02CFA8 8002D3F8 8E180020 */  lw          $t8, 0x20($s0)
/* 02CFAC 8002D3FC 4406A000 */  mfc1        $a2, $f20
/* 02CFB0 8002D400 4407B000 */  mfc1        $a3, $f22
/* 02CFB4 8002D404 4600A306 */  mov.s       $f12, $f20
/* 02CFB8 8002D408 4600A386 */  mov.s       $f14, $f20
/* 02CFBC 8002D40C 0C045BDD */  jal         func_80116F74
/* 02CFC0 8002D410 AFB80014 */   sw         $t8, 0x14($sp)
/* 02CFC4 8002D414 00402025 */  move        $a0, $v0
/* 02CFC8 8002D418 00002825 */  move        $a1, $zero
/* 02CFCC 8002D41C 0C00B2B8 */  jal         func_8002CAE0
/* 02CFD0 8002D420 02203025 */   move       $a2, $s1
/* 02CFD4 8002D424 26310001 */  addiu       $s1, $s1, 0x1
.L8002D428:
/* 02CFD8 8002D428 1632FFEF */  bne         $s1, $s2, .L8002D3E8
/* 02CFDC 8002D42C 26100008 */   addiu      $s0, $s0, 0x8
/* 02CFE0 8002D430 8EB900E8 */  lw          $t9, 0xe8($s5)
/* 02CFE4 8002D434 26B000E8 */  addiu       $s0, $s5, 0xe8
/* 02CFE8 8002D438 5320000D */  beql        $t9, $zero, .L8002D470
/* 02CFEC 8002D43C 8EA900F0 */   lw         $t1, 0xf0($s5)
/* 02CFF0 8002D440 E7B60010 */  swc1        $f22, 0x10($sp)
/* 02CFF4 8002D444 8E080000 */  lw          $t0, 0x0($s0)
/* 02CFF8 8002D448 4406A000 */  mfc1        $a2, $f20
/* 02CFFC 8002D44C 4407B000 */  mfc1        $a3, $f22
/* 02D000 8002D450 4600A306 */  mov.s       $f12, $f20
/* 02D004 8002D454 4600A386 */  mov.s       $f14, $f20
/* 02D008 8002D458 0C045BDD */  jal         func_80116F74
/* 02D00C 8002D45C AFA80014 */   sw         $t0, 0x14($sp)
/* 02D010 8002D460 AE000000 */  sw          $zero, 0x0($s0)
/* 02D014 8002D464 0C00B32F */  jal         func_8002CCBC
/* 02D018 8002D468 00402025 */   move       $a0, $v0
/* 02D01C 8002D46C 8EA900F0 */  lw          $t1, 0xf0($s5)
.L8002D470:
/* 02D020 8002D470 26B000F0 */  addiu       $s0, $s5, 0xf0
/* 02D024 8002D474 1120000C */  beqz        $t1, .L8002D4A8
/* 02D028 8002D478 00000000 */   nop
/* 02D02C 8002D47C E7B60010 */  swc1        $f22, 0x10($sp)
/* 02D030 8002D480 8E0A0000 */  lw          $t2, 0x0($s0)
/* 02D034 8002D484 4406A000 */  mfc1        $a2, $f20
/* 02D038 8002D488 4407B000 */  mfc1        $a3, $f22
/* 02D03C 8002D48C 4600A306 */  mov.s       $f12, $f20
/* 02D040 8002D490 4600A386 */  mov.s       $f14, $f20
/* 02D044 8002D494 0C045BDD */  jal         func_80116F74
/* 02D048 8002D498 AFAA0014 */   sw         $t2, 0x14($sp)
/* 02D04C 8002D49C AE000000 */  sw          $zero, 0x0($s0)
/* 02D050 8002D4A0 0C00B341 */  jal         func_8002CD04
/* 02D054 8002D4A4 00402025 */   move       $a0, $v0
.L8002D4A8:
/* 02D058 8002D4A8 0C00B14C */  jal         func_8002C530
/* 02D05C 8002D4AC 02A02025 */   move       $a0, $s5
/* 02D060 8002D4B0 8FBF0044 */  lw          $ra, 0x44($sp)
/* 02D064 8002D4B4 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 02D068 8002D4B8 D7B60020 */  ldc1        $f22, 0x20($sp)
/* 02D06C 8002D4BC 8FB0002C */  lw          $s0, 0x2c($sp)
/* 02D070 8002D4C0 8FB10030 */  lw          $s1, 0x30($sp)
/* 02D074 8002D4C4 8FB20034 */  lw          $s2, 0x34($sp)
/* 02D078 8002D4C8 8FB30038 */  lw          $s3, 0x38($sp)
/* 02D07C 8002D4CC 8FB4003C */  lw          $s4, 0x3c($sp)
/* 02D080 8002D4D0 8FB50040 */  lw          $s5, 0x40($sp)
/* 02D084 8002D4D4 03E00008 */  jr          $ra
/* 02D088 8002D4D8 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_8002D4DC # 39
/* 02D08C 8002D4DC 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 02D090 8002D4E0 AFBF003C */  sw          $ra, 0x3c($sp)
/* 02D094 8002D4E4 3C04800A */  lui         $a0, %hi(D_8009F720)
/* 02D098 8002D4E8 AFB40038 */  sw          $s4, 0x38($sp)
/* 02D09C 8002D4EC AFB30034 */  sw          $s3, 0x34($sp)
/* 02D0A0 8002D4F0 AFB20030 */  sw          $s2, 0x30($sp)
/* 02D0A4 8002D4F4 AFB1002C */  sw          $s1, 0x2c($sp)
/* 02D0A8 8002D4F8 AFB00028 */  sw          $s0, 0x28($sp)
/* 02D0AC 8002D4FC F7B60020 */  sdc1        $f22, 0x20($sp)
/* 02D0B0 8002D500 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 02D0B4 8002D504 0C001B92 */  jal         func_80006E48
/* 02D0B8 8002D508 2484F720 */   addiu      $a0, $a0, %lo(D_8009F720)
/* 02D0BC 8002D50C 00408025 */  move        $s0, $v0
/* 02D0C0 8002D510 00402025 */  move        $a0, $v0
/* 02D0C4 8002D514 0C001DF8 */  jal         func_800077E0
/* 02D0C8 8002D518 24052000 */   addiu      $a1, $zero, 0x2000
/* 02D0CC 8002D51C 0C001C1B */  jal         func_8000706C
/* 02D0D0 8002D520 02002025 */   move       $a0, $s0
/* 02D0D4 8002D524 3C128013 */  lui         $s2, %hi(D_80137EE4)
/* 02D0D8 8002D528 26527EE4 */  addiu       $s2, $s2, %lo(D_80137EE4)
/* 02D0DC 8002D52C 8E4E0000 */  lw          $t6, 0x0($s2)
/* 02D0E0 8002D530 3C01800F */  lui         $at, %hi(D_800F6310)
/* 02D0E4 8002D534 3C09800F */  lui         $t1, %hi(D_800F6314)
/* 02D0E8 8002D538 C5C4000C */  lwc1        $f4, 0xc($t6)
/* 02D0EC 8002D53C 3C04800F */  lui         $a0, %hi(D_800F6310)
/* 02D0F0 8002D540 3C05800F */  lui         $a1, %hi(D_800F63B0)
/* 02D0F4 8002D544 E6040000 */  swc1        $f4, 0x0($s0)
/* 02D0F8 8002D548 8E4F0000 */  lw          $t7, 0x0($s2)
/* 02D0FC 8002D54C 3C11800F */  lui         $s1, %hi(D_800F6310)
/* 02D100 8002D550 3C14800F */  lui         $s4, %hi(D_800F6338)
/* 02D104 8002D554 C5E6000C */  lwc1        $f6, 0xc($t7)
/* 02D108 8002D558 3C13800A */  lui         $s3, %hi(D_8009F948)
/* 02D10C 8002D55C 4480A000 */  mtc1        $zero, $f20
/* 02D110 8002D560 E6060004 */  swc1        $f6, 0x4($s0)
/* 02D114 8002D564 8E580000 */  lw          $t8, 0x0($s2)
/* 02D118 8002D568 24A563B0 */  addiu       $a1, $a1, %lo(D_800F63B0)
/* 02D11C 8002D56C 24846310 */  addiu       $a0, $a0, %lo(D_800F6310)
/* 02D120 8002D570 C708000C */  lwc1        $f8, 0xc($t8)
/* 02D124 8002D574 2673F948 */  addiu       $s3, $s3, %lo(D_8009F948)
/* 02D128 8002D578 26946338 */  addiu       $s4, $s4, %lo(D_800F6338)
/* 02D12C 8002D57C E6080008 */  swc1        $f8, 0x8($s0)
/* 02D130 8002D580 AC306310 */  sw          $s0, %lo(D_800F6310)($at)
/* 02D134 8002D584 8E19002C */  lw          $t9, 0x2c($s0)
/* 02D138 8002D588 26316310 */  addiu       $s1, $s1, %lo(D_800F6310)
/* 02D13C 8002D58C 8F280028 */  lw          $t0, 0x28($t9)
/* 02D140 8002D590 AC286314 */  sw          $t0, %lo(D_800F6314)($at)
/* 02D144 8002D594 8D296314 */  lw          $t1, %lo(D_800F6314)($t1)
/* 02D148 8002D598 3C01800F */  lui         $at, %hi(D_800F6318)
/* 02D14C 8002D59C 8D2A0028 */  lw          $t2, 0x28($t1)
/* 02D150 8002D5A0 AC2A6318 */  sw          $t2, %lo(D_800F6318)($at)
/* 02D154 8002D5A4 00001025 */  move        $v0, $zero
.L8002D5A8:
/* 02D158 8002D5A8 00801825 */  move        $v1, $a0
.L8002D5AC:
/* 02D15C 8002D5AC 24420001 */  addiu       $v0, $v0, 0x1
/* 02D160 8002D5B0 2841000A */  slti        $at, $v0, 0xa
/* 02D164 8002D5B4 24630008 */  addiu       $v1, $v1, 0x8
/* 02D168 8002D5B8 1420FFFC */  bnez        $at, .L8002D5AC
/* 02D16C 8002D5BC AC60001C */   sw         $zero, 0x1c($v1)
/* 02D170 8002D5C0 24840050 */  addiu       $a0, $a0, 0x50
/* 02D174 8002D5C4 0085082B */  sltu        $at, $a0, $a1
/* 02D178 8002D5C8 5420FFF7 */  bnel        $at, $zero, .L8002D5A8
/* 02D17C 8002D5CC 00001025 */   move       $v0, $zero
/* 02D180 8002D5D0 3C01800F */  lui         $at, %hi(D_800F63FC)
/* 02D184 8002D5D4 AC2063FC */  sw          $zero, %lo(D_800F63FC)($at)
/* 02D188 8002D5D8 3C01800F */  lui         $at, %hi(D_800F6404)
/* 02D18C 8002D5DC AC206404 */  sw          $zero, %lo(D_800F6404)($at)
/* 02D190 8002D5E0 3C01800B */  lui         $at, %hi(D_800AAF94)
/* 02D194 8002D5E4 C436AF94 */  lwc1        $f22, %lo(D_800AAF94)($at)
.L8002D5E8:
/* 02D198 8002D5E8 0C001B92 */  jal         func_80006E48
/* 02D19C 8002D5EC 02602025 */   move       $a0, $s3
/* 02D1A0 8002D5F0 00408025 */  move        $s0, $v0
/* 02D1A4 8002D5F4 00402025 */  move        $a0, $v0
/* 02D1A8 8002D5F8 0C001DF8 */  jal         func_800077E0
/* 02D1AC 8002D5FC 24052000 */   addiu      $a1, $zero, 0x2000
/* 02D1B0 8002D600 0C001C1B */  jal         func_8000706C
/* 02D1B4 8002D604 02002025 */   move       $a0, $s0
/* 02D1B8 8002D608 E614000C */  swc1        $f20, 0xc($s0)
/* 02D1BC 8002D60C E6140010 */  swc1        $f20, 0x10($s0)
/* 02D1C0 8002D610 E6140014 */  swc1        $f20, 0x14($s0)
/* 02D1C4 8002D614 E6140018 */  swc1        $f20, 0x18($s0)
/* 02D1C8 8002D618 E614001C */  swc1        $f20, 0x1c($s0)
/* 02D1CC 8002D61C E6140020 */  swc1        $f20, 0x20($s0)
/* 02D1D0 8002D620 8E4B0000 */  lw          $t3, 0x0($s2)
/* 02D1D4 8002D624 8E0E0038 */  lw          $t6, 0x38($s0)
/* 02D1D8 8002D628 26310004 */  addiu       $s1, $s1, 0x4
/* 02D1DC 8002D62C C56A000C */  lwc1        $f10, 0xc($t3)
/* 02D1E0 8002D630 0234082B */  sltu        $at, $s1, $s4
/* 02D1E4 8002D634 46165402 */  mul.s       $f16, $f10, $f22
/* 02D1E8 8002D638 E6100000 */  swc1        $f16, 0x0($s0)
/* 02D1EC 8002D63C 8E4C0000 */  lw          $t4, 0x0($s2)
/* 02D1F0 8002D640 C592000C */  lwc1        $f18, 0xc($t4)
/* 02D1F4 8002D644 46169102 */  mul.s       $f4, $f18, $f22
/* 02D1F8 8002D648 E6040004 */  swc1        $f4, 0x4($s0)
/* 02D1FC 8002D64C 8E4D0000 */  lw          $t5, 0x0($s2)
/* 02D200 8002D650 C5A6000C */  lwc1        $f6, 0xc($t5)
/* 02D204 8002D654 46163202 */  mul.s       $f8, $f6, $f22
/* 02D208 8002D658 E6080008 */  swc1        $f8, 0x8($s0)
/* 02D20C 8002D65C 1420FFE2 */  bnez        $at, .L8002D5E8
/* 02D210 8002D660 AE2E00BC */   sw         $t6, 0xbc($s1)
/* 02D214 8002D664 3C10800F */  lui         $s0, %hi(D_800F6450)
/* 02D218 8002D668 3C11800A */  lui         $s1, %hi(D_8009FA9C)
/* 02D21C 8002D66C 3C13800A */  lui         $s3, %hi(D_8009FAA4)
/* 02D220 8002D670 3C128007 */  lui         $s2, %hi(D_80070B58)
/* 02D224 8002D674 26520B58 */  addiu       $s2, $s2, %lo(D_80070B58)
/* 02D228 8002D678 2673FAA4 */  addiu       $s3, $s3, %lo(D_8009FAA4)
/* 02D22C 8002D67C 2631FA9C */  addiu       $s1, $s1, %lo(D_8009FA9C)
/* 02D230 8002D680 26106450 */  addiu       $s0, $s0, %lo(D_800F6450)
.L8002D684:
/* 02D234 8002D684 AE000000 */  sw          $zero, 0x0($s0)
/* 02D238 8002D688 02002025 */  move        $a0, $s0
/* 02D23C 8002D68C 8E250000 */  lw          $a1, 0x0($s1)
/* 02D240 8002D690 0C00F1B7 */  jal         func_8003C6DC
/* 02D244 8002D694 02403025 */   move       $a2, $s2
/* 02D248 8002D698 26310004 */  addiu       $s1, $s1, 0x4
/* 02D24C 8002D69C 1633FFF9 */  bne         $s1, $s3, .L8002D684
/* 02D250 8002D6A0 26100004 */   addiu      $s0, $s0, 0x4
/* 02D254 8002D6A4 3C04800F */  lui         $a0, %hi(D_800F6310)
/* 02D258 8002D6A8 0C00B4C7 */  jal         func_8002D31C
/* 02D25C 8002D6AC 24846310 */   addiu      $a0, $a0, %lo(D_800F6310)
/* 02D260 8002D6B0 8FBF003C */  lw          $ra, 0x3c($sp)
/* 02D264 8002D6B4 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 02D268 8002D6B8 D7B60020 */  ldc1        $f22, 0x20($sp)
/* 02D26C 8002D6BC 8FB00028 */  lw          $s0, 0x28($sp)
/* 02D270 8002D6C0 8FB1002C */  lw          $s1, 0x2c($sp)
/* 02D274 8002D6C4 8FB20030 */  lw          $s2, 0x30($sp)
/* 02D278 8002D6C8 8FB30034 */  lw          $s3, 0x34($sp)
/* 02D27C 8002D6CC 8FB40038 */  lw          $s4, 0x38($sp)
/* 02D280 8002D6D0 03E00008 */  jr          $ra
/* 02D284 8002D6D4 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_8002D6D8 # 40
/* 02D288 8002D6D8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02D28C 8002D6DC AFBF0014 */  sw          $ra, 0x14($sp)
/* 02D290 8002D6E0 3C04800F */  lui         $a0, %hi(D_800F6310)
/* 02D294 8002D6E4 24846310 */  addiu       $a0, $a0, %lo(D_800F6310)
/* 02D298 8002D6E8 0C013C58 */  jal         func_8004F160
/* 02D29C 8002D6EC 240500F8 */   addiu      $a1, $zero, 0xf8
/* 02D2A0 8002D6F0 240E0001 */  addiu       $t6, $zero, 0x1
/* 02D2A4 8002D6F4 3C01800F */  lui         $at, %hi(D_800F6320)
/* 02D2A8 8002D6F8 AC2E6320 */  sw          $t6, %lo(D_800F6320)($at)
/* 02D2AC 8002D6FC 3C0F800F */  lui         $t7, %hi(D_800F6310)
/* 02D2B0 8002D700 3C01800F */  lui         $at, %hi(D_800F6440)
/* 02D2B4 8002D704 25E56310 */  addiu       $a1, $t7, %lo(D_800F6310)
/* 02D2B8 8002D708 3C07800F */  lui         $a3, %hi(D_800F63B0)
/* 02D2BC 8002D70C AC206440 */  sw          $zero, %lo(D_800F6440)($at)
/* 02D2C0 8002D710 24E763B0 */  addiu       $a3, $a3, %lo(D_800F63B0)
/* 02D2C4 8002D714 00A03025 */  move        $a2, $a1
/* 02D2C8 8002D718 2404000A */  addiu       $a0, $zero, 0xa
.L8002D71C:
/* 02D2CC 8002D71C ACA00024 */  sw          $zero, 0x24($a1)
/* 02D2D0 8002D720 ACA00020 */  sw          $zero, 0x20($a1)
/* 02D2D4 8002D724 ACA0002C */  sw          $zero, 0x2c($a1)
/* 02D2D8 8002D728 ACA00028 */  sw          $zero, 0x28($a1)
/* 02D2DC 8002D72C 24030002 */  addiu       $v1, $zero, 0x2
/* 02D2E0 8002D730 24C20010 */  addiu       $v0, $a2, 0x10
.L8002D734:
/* 02D2E4 8002D734 24630004 */  addiu       $v1, $v1, 0x4
/* 02D2E8 8002D738 AC40002C */  sw          $zero, 0x2c($v0)
/* 02D2EC 8002D73C AC400028 */  sw          $zero, 0x28($v0)
/* 02D2F0 8002D740 AC400034 */  sw          $zero, 0x34($v0)
/* 02D2F4 8002D744 AC400030 */  sw          $zero, 0x30($v0)
/* 02D2F8 8002D748 AC40003C */  sw          $zero, 0x3c($v0)
/* 02D2FC 8002D74C AC400038 */  sw          $zero, 0x38($v0)
/* 02D300 8002D750 24420020 */  addiu       $v0, $v0, 0x20
/* 02D304 8002D754 AC400004 */  sw          $zero, 0x4($v0)
/* 02D308 8002D758 1464FFF6 */  bne         $v1, $a0, .L8002D734
/* 02D30C 8002D75C AC400000 */   sw         $zero, 0x0($v0)
/* 02D310 8002D760 24A50050 */  addiu       $a1, $a1, 0x50
/* 02D314 8002D764 14A7FFED */  bne         $a1, $a3, .L8002D71C
/* 02D318 8002D768 24C60050 */   addiu      $a2, $a2, 0x50
/* 02D31C 8002D76C 3C01800F */  lui         $at, %hi(D_800F63FC)
/* 02D320 8002D770 AC2063FC */  sw          $zero, %lo(D_800F63FC)($at)
/* 02D324 8002D774 AC2063F8 */  sw          $zero, %lo(D_800F63F8)($at)
/* 02D328 8002D778 3C01800F */  lui         $at, %hi(D_800F6404)
/* 02D32C 8002D77C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02D330 8002D780 AC206404 */  sw          $zero, %lo(D_800F6404)($at)
/* 02D334 8002D784 AC206400 */  sw          $zero, %lo(D_800F6400)($at)
/* 02D338 8002D788 3C01800F */  lui         $at, %hi(D_800F6380)
/* 02D33C 8002D78C 241800A4 */  addiu       $t8, $zero, 0xa4
/* 02D340 8002D790 AC386380 */  sw          $t8, %lo(D_800F6380)($at)
/* 02D344 8002D794 03E00008 */  jr          $ra
/* 02D348 8002D798 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8002D79C # 41
/* 02D34C 8002D79C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 02D350 8002D7A0 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 02D354 8002D7A4 AFBF002C */  sw          $ra, 0x2c($sp)
/* 02D358 8002D7A8 AFB20028 */  sw          $s2, 0x28($sp)
/* 02D35C 8002D7AC AFB10024 */  sw          $s1, 0x24($sp)
/* 02D360 8002D7B0 AFB00020 */  sw          $s0, 0x20($sp)
/* 02D364 8002D7B4 4480A000 */  mtc1        $zero, $f20
/* 02D368 8002D7B8 8C8E0004 */  lw          $t6, 0x4($a0)
/* 02D36C 8002D7BC 00808825 */  move        $s1, $a0
/* 02D370 8002D7C0 00008025 */  move        $s0, $zero
/* 02D374 8002D7C4 E5D4000C */  swc1        $f20, 0xc($t6)
/* 02D378 8002D7C8 8C8F0004 */  lw          $t7, 0x4($a0)
/* 02D37C 8002D7CC 24120050 */  addiu       $s2, $zero, 0x50
/* 02D380 8002D7D0 E5F40010 */  swc1        $f20, 0x10($t7)
/* 02D384 8002D7D4 8C980004 */  lw          $t8, 0x4($a0)
/* 02D388 8002D7D8 E7140014 */  swc1        $f20, 0x14($t8)
/* 02D38C 8002D7DC 8C990008 */  lw          $t9, 0x8($a0)
/* 02D390 8002D7E0 E7340018 */  swc1        $f20, 0x18($t9)
/* 02D394 8002D7E4 8C880008 */  lw          $t0, 0x8($a0)
/* 02D398 8002D7E8 E514001C */  swc1        $f20, 0x1c($t0)
/* 02D39C 8002D7EC 8C890008 */  lw          $t1, 0x8($a0)
/* 02D3A0 8002D7F0 E5340020 */  swc1        $f20, 0x20($t1)
/* 02D3A4 8002D7F4 AC80000C */  sw          $zero, 0xc($a0)
/* 02D3A8 8002D7F8 8E2A0010 */  lw          $t2, 0x10($s1)
.L8002D7FC:
/* 02D3AC 8002D7FC 000A5880 */  sll         $t3, $t2, 2
/* 02D3B0 8002D800 016A5821 */  addu        $t3, $t3, $t2
/* 02D3B4 8002D804 000B5900 */  sll         $t3, $t3, 4
/* 02D3B8 8002D808 022B6021 */  addu        $t4, $s1, $t3
/* 02D3BC 8002D80C 01906821 */  addu        $t5, $t4, $s0
/* 02D3C0 8002D810 8DA40024 */  lw          $a0, 0x24($t5)
/* 02D3C4 8002D814 50800007 */  beql        $a0, $zero, .L8002D834
/* 02D3C8 8002D818 26100008 */   addiu      $s0, $s0, 0x8
/* 02D3CC 8002D81C 0C001A23 */  jal         func_8000688C
/* 02D3D0 8002D820 00000000 */   nop
/* 02D3D4 8002D824 E454000C */  swc1        $f20, 0xc($v0)
/* 02D3D8 8002D828 E4540010 */  swc1        $f20, 0x10($v0)
/* 02D3DC 8002D82C E4540014 */  swc1        $f20, 0x14($v0)
/* 02D3E0 8002D830 26100008 */  addiu       $s0, $s0, 0x8
.L8002D834:
/* 02D3E4 8002D834 5612FFF1 */  bnel        $s0, $s2, .L8002D7FC
/* 02D3E8 8002D838 8E2A0010 */   lw         $t2, 0x10($s1)
/* 02D3EC 8002D83C 8FBF002C */  lw          $ra, 0x2c($sp)
/* 02D3F0 8002D840 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 02D3F4 8002D844 8FB00020 */  lw          $s0, 0x20($sp)
/* 02D3F8 8002D848 8FB10024 */  lw          $s1, 0x24($sp)
/* 02D3FC 8002D84C 8FB20028 */  lw          $s2, 0x28($sp)
/* 02D400 8002D850 03E00008 */  jr          $ra
/* 02D404 8002D854 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8002D858 # 42
/* 02D408 8002D858 27BDFF60 */  addiu       $sp, $sp, -0xa0
/* 02D40C 8002D85C AFB60060 */  sw          $s6, 0x60($sp)
/* 02D410 8002D860 3C01C0C0 */  lui         $at, 0xc0c0
/* 02D414 8002D864 44812000 */  mtc1        $at, $f4
/* 02D418 8002D868 3C16800F */  lui         $s6, %hi(D_800F6310)
/* 02D41C 8002D86C 26D66310 */  addiu       $s6, $s6, %lo(D_800F6310)
/* 02D420 8002D870 F7BE0040 */  sdc1        $f30, 0x40($sp)
/* 02D424 8002D874 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 02D428 8002D878 3C013F00 */  lui         $at, 0x3f00
/* 02D42C 8002D87C 4486A000 */  mtc1        $a2, $f20
/* 02D430 8002D880 8ECE0010 */  lw          $t6, 0x10($s6)
/* 02D434 8002D884 4481F000 */  mtc1        $at, $f30
/* 02D438 8002D888 F7BC0038 */  sdc1        $f28, 0x38($sp)
/* 02D43C 8002D88C 3C0142B4 */  lui         $at, 0x42b4
/* 02D440 8002D890 4481E000 */  mtc1        $at, $f28
/* 02D444 8002D894 46142180 */  add.s       $f6, $f4, $f20
/* 02D448 8002D898 F7BA0030 */  sdc1        $f26, 0x30($sp)
/* 02D44C 8002D89C 3C014210 */  lui         $at, 0x4210
/* 02D450 8002D8A0 000E7880 */  sll         $t7, $t6, 2
/* 02D454 8002D8A4 4481D000 */  mtc1        $at, $f26
/* 02D458 8002D8A8 01EE7821 */  addu        $t7, $t7, $t6
/* 02D45C 8002D8AC AFB70064 */  sw          $s7, 0x64($sp)
/* 02D460 8002D8B0 AFB5005C */  sw          $s5, 0x5c($sp)
/* 02D464 8002D8B4 F7B80028 */  sdc1        $f24, 0x28($sp)
/* 02D468 8002D8B8 000F7900 */  sll         $t7, $t7, 4
/* 02D46C 8002D8BC 3C0143B4 */  lui         $at, 0x43b4
/* 02D470 8002D8C0 AFBE0068 */  sw          $fp, 0x68($sp)
/* 02D474 8002D8C4 AFB40058 */  sw          $s4, 0x58($sp)
/* 02D478 8002D8C8 AFB30054 */  sw          $s3, 0x54($sp)
/* 02D47C 8002D8CC AFB20050 */  sw          $s2, 0x50($sp)
/* 02D480 8002D8D0 AFB1004C */  sw          $s1, 0x4c($sp)
/* 02D484 8002D8D4 02CF1021 */  addu        $v0, $s6, $t7
/* 02D488 8002D8D8 3C15800B */  lui         $s5, %hi(D_800B2C64)
/* 02D48C 8002D8DC 3C17800F */  lui         $s7, %hi(D_800F6410)
/* 02D490 8002D8E0 4481A000 */  mtc1        $at, $f20
/* 02D494 8002D8E4 4480C000 */  mtc1        $zero, $f24
/* 02D498 8002D8E8 AFBF006C */  sw          $ra, 0x6c($sp)
/* 02D49C 8002D8EC AFB00048 */  sw          $s0, 0x48($sp)
/* 02D4A0 8002D8F0 F7B60020 */  sdc1        $f22, 0x20($sp)
/* 02D4A4 8002D8F4 E7AC00A0 */  swc1        $f12, 0xa0($sp)
/* 02D4A8 8002D8F8 E7AE00A4 */  swc1        $f14, 0xa4($sp)
/* 02D4AC 8002D8FC 24520020 */  addiu       $s2, $v0, 0x20
/* 02D4B0 8002D900 26F76410 */  addiu       $s7, $s7, %lo(D_800F6410)
/* 02D4B4 8002D904 26B52C64 */  addiu       $s5, $s5, %lo(D_800B2C64)
/* 02D4B8 8002D908 00008825 */  move        $s1, $zero
/* 02D4BC 8002D90C 24130086 */  addiu       $s3, $zero, 0x86
/* 02D4C0 8002D910 2414000A */  addiu       $s4, $zero, 0xa
/* 02D4C4 8002D914 27BE007C */  addiu       $fp, $sp, 0x7c
/* 02D4C8 8002D918 E7A60070 */  swc1        $f6, 0x70($sp)
.L8002D91C:
/* 02D4CC 8002D91C 8E440004 */  lw          $a0, 0x4($s2)
/* 02D4D0 8002D920 0011C080 */  sll         $t8, $s1, 2
/* 02D4D4 8002D924 02D8C821 */  addu        $t9, $s6, $t8
/* 02D4D8 8002D928 10800005 */  beqz        $a0, .L8002D940
/* 02D4DC 8002D92C 00000000 */   nop
/* 02D4E0 8002D930 0C001A23 */  jal         func_8000688C
/* 02D4E4 8002D934 00000000 */   nop
/* 02D4E8 8002D938 10000004 */  b           .L8002D94C
/* 02D4EC 8002D93C 00408025 */   move       $s0, $v0
.L8002D940:
/* 02D4F0 8002D940 0C001A23 */  jal         func_8000688C
/* 02D4F4 8002D944 8F2400C0 */   lw         $a0, 0xc0($t9)
/* 02D4F8 8002D948 00408025 */  move        $s0, $v0
.L8002D94C:
/* 02D4FC 8002D94C 44914000 */  mtc1        $s1, $f8
/* 02D500 8002D950 C7B200A0 */  lwc1        $f18, 0xa0($sp)
/* 02D504 8002D954 468042A0 */  cvt.s.w     $f10, $f8
/* 02D508 8002D958 461A5402 */  mul.s       $f16, $f10, $f26
/* 02D50C 8002D95C 46128100 */  add.s       $f4, $f16, $f18
/* 02D510 8002D960 461C2581 */  sub.s       $f22, $f4, $f28
/* 02D514 8002D964 0C00EB6C */  jal         func_8003ADB0
/* 02D518 8002D968 4600B306 */   mov.s      $f12, $f22
/* 02D51C 8002D96C 46000180 */  add.s       $f6, $f0, $f0
/* 02D520 8002D970 4600B306 */  mov.s       $f12, $f22
/* 02D524 8002D974 0C00EB2F */  jal         func_8003ACBC
/* 02D528 8002D978 E7A6007C */   swc1       $f6, 0x7c($sp)
/* 02D52C 8002D97C 461E0202 */  mul.s       $f8, $f0, $f30
/* 02D530 8002D980 C7AA00A4 */  lwc1        $f10, 0xa4($sp)
/* 02D534 8002D984 4600B306 */  mov.s       $f12, $f22
/* 02D538 8002D988 460A4400 */  add.s       $f16, $f8, $f10
/* 02D53C 8002D98C 0C00EB2F */  jal         func_8003ACBC
/* 02D540 8002D990 E7B00080 */   swc1       $f16, 0x80($sp)
/* 02D544 8002D994 3C013FC0 */  lui         $at, 0x3fc0
/* 02D548 8002D998 44812000 */  mtc1        $at, $f4
/* 02D54C 8002D99C C7B20070 */  lwc1        $f18, 0x70($sp)
/* 02D550 8002D9A0 02E02025 */  move        $a0, $s7
/* 02D554 8002D9A4 46040182 */  mul.s       $f6, $f0, $f4
/* 02D558 8002D9A8 03C02825 */  move        $a1, $fp
/* 02D55C 8002D9AC 26060018 */  addiu       $a2, $s0, 0x18
/* 02D560 8002D9B0 46069201 */  sub.s       $f8, $f18, $f6
/* 02D564 8002D9B4 0C00F620 */  jal         func_8003D880
/* 02D568 8002D9B8 E7A80084 */   swc1       $f8, 0x84($sp)
/* 02D56C 8002D9BC 16200005 */  bnez        $s1, .L8002D9D4
/* 02D570 8002D9C0 00000000 */   nop
/* 02D574 8002D9C4 96080034 */  lhu         $t0, 0x34($s0)
/* 02D578 8002D9C8 3C0142C8 */  lui         $at, 0x42c8
/* 02D57C 8002D9CC 52680006 */  beql        $s3, $t0, .L8002D9E8
/* 02D580 8002D9D0 C6AA0000 */   lwc1       $f10, 0x0($s5)
.L8002D9D4:
/* 02D584 8002D9D4 0C00B14E */  jal         func_8002C538
/* 02D588 8002D9D8 02002025 */   move       $a0, $s0
/* 02D58C 8002D9DC 1000001E */  b           .L8002DA58
/* 02D590 8002D9E0 00000000 */   nop
/* 02D594 8002D9E4 C6AA0000 */  lwc1        $f10, 0x0($s5)
.L8002D9E8:
/* 02D598 8002D9E8 44818000 */  mtc1        $at, $f16
/* 02D59C 8002D9EC C6120010 */  lwc1        $f18, 0x10($s0)
/* 02D5A0 8002D9F0 46105102 */  mul.s       $f4, $f10, $f16
/* 02D5A4 8002D9F4 46049180 */  add.s       $f6, $f18, $f4
/* 02D5A8 8002D9F8 E6060010 */  swc1        $f6, 0x10($s0)
/* 02D5AC 8002D9FC C6000010 */  lwc1        $f0, 0x10($s0)
/* 02D5B0 8002DA00 4618003C */  c.lt.s      $f0, $f24
/* 02D5B4 8002DA04 00000000 */  nop
/* 02D5B8 8002DA08 45020009 */  bc1fl       .L8002DA30
/* 02D5BC 8002DA0C 4600A03E */   c.le.s     $f20, $f0
/* 02D5C0 8002DA10 46140200 */  add.s       $f8, $f0, $f20
.L8002DA14:
/* 02D5C4 8002DA14 E6080010 */  swc1        $f8, 0x10($s0)
/* 02D5C8 8002DA18 C6000010 */  lwc1        $f0, 0x10($s0)
/* 02D5CC 8002DA1C 4618003C */  c.lt.s      $f0, $f24
/* 02D5D0 8002DA20 00000000 */  nop
/* 02D5D4 8002DA24 4503FFFB */  bc1tl       .L8002DA14
/* 02D5D8 8002DA28 46140200 */   add.s      $f8, $f0, $f20
/* 02D5DC 8002DA2C 4600A03E */  c.le.s      $f20, $f0
.L8002DA30:
/* 02D5E0 8002DA30 00000000 */  nop
/* 02D5E4 8002DA34 45000008 */  bc1f        .L8002DA58
/* 02D5E8 8002DA38 00000000 */   nop
/* 02D5EC 8002DA3C 46140281 */  sub.s       $f10, $f0, $f20
.L8002DA40:
/* 02D5F0 8002DA40 E60A0010 */  swc1        $f10, 0x10($s0)
/* 02D5F4 8002DA44 C6000010 */  lwc1        $f0, 0x10($s0)
/* 02D5F8 8002DA48 4600A03E */  c.le.s      $f20, $f0
/* 02D5FC 8002DA4C 00000000 */  nop
/* 02D600 8002DA50 4503FFFB */  bc1tl       .L8002DA40
/* 02D604 8002DA54 46140281 */   sub.s      $f10, $f0, $f20
.L8002DA58:
/* 02D608 8002DA58 0C001F40 */  jal         func_80007D00
/* 02D60C 8002DA5C 02002025 */   move       $a0, $s0
/* 02D610 8002DA60 26310001 */  addiu       $s1, $s1, 0x1
/* 02D614 8002DA64 1634FFAD */  bne         $s1, $s4, .L8002D91C
/* 02D618 8002DA68 26520008 */   addiu      $s2, $s2, 0x8
/* 02D61C 8002DA6C 3C04800F */  lui         $a0, %hi(D_800F3EA4)
/* 02D620 8002DA70 8C843EA4 */  lw          $a0, %lo(D_800F3EA4)($a0)
/* 02D624 8002DA74 50800017 */  beql        $a0, $zero, .L8002DAD4
/* 02D628 8002DA78 8FBF006C */   lw         $ra, 0x6c($sp)
/* 02D62C 8002DA7C 0C001A23 */  jal         func_8000688C
/* 02D630 8002DA80 00000000 */   nop
/* 02D634 8002DA84 10400012 */  beqz        $v0, .L8002DAD0
/* 02D638 8002DA88 00408025 */   move       $s0, $v0
/* 02D63C 8002DA8C 3C01BFC0 */  lui         $at, 0xbfc0
/* 02D640 8002DA90 44819000 */  mtc1        $at, $f18
/* 02D644 8002DA94 3C01C080 */  lui         $at, 0xc080
/* 02D648 8002DA98 44812000 */  mtc1        $at, $f4
/* 02D64C 8002DA9C 44808000 */  mtc1        $zero, $f16
/* 02D650 8002DAA0 02E02025 */  move        $a0, $s7
/* 02D654 8002DAA4 03C02825 */  move        $a1, $fp
/* 02D658 8002DAA8 24460018 */  addiu       $a2, $v0, 0x18
/* 02D65C 8002DAAC E7B20080 */  swc1        $f18, 0x80($sp)
/* 02D660 8002DAB0 E7A40084 */  swc1        $f4, 0x84($sp)
/* 02D664 8002DAB4 0C00F620 */  jal         func_8003D880
/* 02D668 8002DAB8 E7B0007C */   swc1       $f16, 0x7c($sp)
/* 02D66C 8002DABC E618000C */  swc1        $f24, 0xc($s0)
/* 02D670 8002DAC0 E6180010 */  swc1        $f24, 0x10($s0)
/* 02D674 8002DAC4 E6180014 */  swc1        $f24, 0x14($s0)
/* 02D678 8002DAC8 0C001F40 */  jal         func_80007D00
/* 02D67C 8002DACC 02002025 */   move       $a0, $s0
.L8002DAD0:
/* 02D680 8002DAD0 8FBF006C */  lw          $ra, 0x6c($sp)
.L8002DAD4:
/* 02D684 8002DAD4 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 02D688 8002DAD8 D7B60020 */  ldc1        $f22, 0x20($sp)
/* 02D68C 8002DADC D7B80028 */  ldc1        $f24, 0x28($sp)
/* 02D690 8002DAE0 D7BA0030 */  ldc1        $f26, 0x30($sp)
/* 02D694 8002DAE4 D7BC0038 */  ldc1        $f28, 0x38($sp)
/* 02D698 8002DAE8 D7BE0040 */  ldc1        $f30, 0x40($sp)
/* 02D69C 8002DAEC 8FB00048 */  lw          $s0, 0x48($sp)
/* 02D6A0 8002DAF0 8FB1004C */  lw          $s1, 0x4c($sp)
/* 02D6A4 8002DAF4 8FB20050 */  lw          $s2, 0x50($sp)
/* 02D6A8 8002DAF8 8FB30054 */  lw          $s3, 0x54($sp)
/* 02D6AC 8002DAFC 8FB40058 */  lw          $s4, 0x58($sp)
/* 02D6B0 8002DB00 8FB5005C */  lw          $s5, 0x5c($sp)
/* 02D6B4 8002DB04 8FB60060 */  lw          $s6, 0x60($sp)
/* 02D6B8 8002DB08 8FB70064 */  lw          $s7, 0x64($sp)
/* 02D6BC 8002DB0C 8FBE0068 */  lw          $fp, 0x68($sp)
/* 02D6C0 8002DB10 03E00008 */  jr          $ra
/* 02D6C4 8002DB14 27BD00A0 */   addiu      $sp, $sp, 0xa0

glabel func_8002DB18 # 43
/* 02D6C8 8002DB18 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02D6CC 8002DB1C AFBF0014 */  sw          $ra, 0x14($sp)
/* 02D6D0 8002DB20 8C8E0010 */  lw          $t6, 0x10($a0)
/* 02D6D4 8002DB24 2403000C */  addiu       $v1, $zero, 0xc
/* 02D6D8 8002DB28 3C02800A */  lui         $v0, %hi(D_8009FA00)
/* 02D6DC 8002DB2C 01C30019 */  multu       $t6, $v1
/* 02D6E0 8002DB30 2442FA00 */  addiu       $v0, $v0, %lo(D_8009FA00)
/* 02D6E4 8002DB34 44856000 */  mtc1        $a1, $f12
/* 02D6E8 8002DB38 00803825 */  move        $a3, $a0
/* 02D6EC 8002DB3C 27A5001C */  addiu       $a1, $sp, 0x1c
/* 02D6F0 8002DB40 00007812 */  mflo        $t7
/* 02D6F4 8002DB44 004FC021 */  addu        $t8, $v0, $t7
/* 02D6F8 8002DB48 C7040000 */  lwc1        $f4, 0x0($t8)
/* 02D6FC 8002DB4C E7A4001C */  swc1        $f4, 0x1c($sp)
/* 02D700 8002DB50 8C990010 */  lw          $t9, 0x10($a0)
/* 02D704 8002DB54 03230019 */  multu       $t9, $v1
/* 02D708 8002DB58 00004012 */  mflo        $t0
/* 02D70C 8002DB5C 00484821 */  addu        $t1, $v0, $t0
/* 02D710 8002DB60 C5260004 */  lwc1        $f6, 0x4($t1)
/* 02D714 8002DB64 E7A60020 */  swc1        $f6, 0x20($sp)
/* 02D718 8002DB68 8C8A0010 */  lw          $t2, 0x10($a0)
/* 02D71C 8002DB6C C7AA0020 */  lwc1        $f10, 0x20($sp)
/* 02D720 8002DB70 3C04800F */  lui         $a0, %hi(D_800F6410)
/* 02D724 8002DB74 01430019 */  multu       $t2, $v1
/* 02D728 8002DB78 460C5400 */  add.s       $f16, $f10, $f12
/* 02D72C 8002DB7C 24846410 */  addiu       $a0, $a0, %lo(D_800F6410)
/* 02D730 8002DB80 00005812 */  mflo        $t3
/* 02D734 8002DB84 004B6021 */  addu        $t4, $v0, $t3
/* 02D738 8002DB88 C5880008 */  lwc1        $f8, 0x8($t4)
/* 02D73C 8002DB8C E7B00020 */  swc1        $f16, 0x20($sp)
/* 02D740 8002DB90 E7A80024 */  swc1        $f8, 0x24($sp)
/* 02D744 8002DB94 8CE60000 */  lw          $a2, 0x0($a3)
/* 02D748 8002DB98 AFA70028 */  sw          $a3, 0x28($sp)
/* 02D74C 8002DB9C 0C00F620 */  jal         func_8003D880
/* 02D750 8002DBA0 24C60018 */   addiu      $a2, $a2, 0x18
/* 02D754 8002DBA4 8FA70028 */  lw          $a3, 0x28($sp)
/* 02D758 8002DBA8 0C00B14E */  jal         func_8002C538
/* 02D75C 8002DBAC 8CE40000 */   lw         $a0, 0x0($a3)
/* 02D760 8002DBB0 8FA70028 */  lw          $a3, 0x28($sp)
/* 02D764 8002DBB4 0C001F40 */  jal         func_80007D00
/* 02D768 8002DBB8 8CE40000 */   lw         $a0, 0x0($a3)
/* 02D76C 8002DBBC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02D770 8002DBC0 27BD0028 */  addiu       $sp, $sp, 0x28
/* 02D774 8002DBC4 03E00008 */  jr          $ra
/* 02D778 8002DBC8 00000000 */   nop

glabel func_8002DBCC # 44
/* 02D77C 8002DBCC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02D780 8002DBD0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02D784 8002DBD4 0C002671 */  jal         func_800099C4
/* 02D788 8002DBD8 00000000 */   nop
/* 02D78C 8002DBDC 3C0E800F */  lui         $t6, %hi(D_800F6448)
/* 02D790 8002DBE0 8DCE6448 */  lw          $t6, %lo(D_800F6448)($t6)
/* 02D794 8002DBE4 24180000 */  addiu       $t8, $zero, 0x0
/* 02D798 8002DBE8 00584023 */  subu        $t0, $v0, $t8
/* 02D79C 8002DBEC 006E082B */  sltu        $at, $v1, $t6
/* 02D7A0 8002DBF0 01014023 */  subu        $t0, $t0, $at
/* 02D7A4 8002DBF4 006E4823 */  subu        $t1, $v1, $t6
/* 02D7A8 8002DBF8 15000002 */  bnez        $t0, .L8002DC04
/* 02D7AC 8002DBFC 2D210BB9 */   sltiu      $at, $t1, 0xbb9
/* 02D7B0 8002DC00 1420001F */  bnez        $at, .L8002DC80
.L8002DC04:
/* 02D7B4 8002DC04 3C07800A */   lui        $a3, %hi(D_8009FAB0)
/* 02D7B8 8002DC08 8CE7FAB0 */  lw          $a3, %lo(D_8009FAB0)($a3)
/* 02D7BC 8002DC0C 3C06800A */  lui         $a2, %hi(D_8009FA84)
/* 02D7C0 8002DC10 00002025 */  move        $a0, $zero
/* 02D7C4 8002DC14 00077880 */  sll         $t7, $a3, 2
/* 02D7C8 8002DC18 00CF3021 */  addu        $a2, $a2, $t7
/* 02D7CC 8002DC1C 8CC6FA84 */  lw          $a2, %lo(D_8009FA84)($a2)
/* 02D7D0 8002DC20 0C009589 */  jal         func_80025624
/* 02D7D4 8002DC24 3C054060 */   lui        $a1, 0x4060
/* 02D7D8 8002DC28 3C07800A */  lui         $a3, %hi(D_8009FAB0)
/* 02D7DC 8002DC2C 8CE7FAB0 */  lw          $a3, %lo(D_8009FAB0)($a3)
/* 02D7E0 8002DC30 3C01800A */  lui         $at, %hi(D_8009FAB0)
/* 02D7E4 8002DC34 24E70001 */  addiu       $a3, $a3, 0x1
/* 02D7E8 8002DC38 04E10004 */  bgez        $a3, .L8002DC4C
/* 02D7EC 8002DC3C 00000000 */   nop
/* 02D7F0 8002DC40 24E70006 */  addiu       $a3, $a3, 0x6
.L8002DC44:
/* 02D7F4 8002DC44 04E2FFFF */  bltzl       $a3, .L8002DC44
/* 02D7F8 8002DC48 24E70006 */   addiu      $a3, $a3, 0x6
.L8002DC4C:
/* 02D7FC 8002DC4C AC27FAB0 */  sw          $a3, %lo(D_8009FAB0)($at)
/* 02D800 8002DC50 28E10006 */  slti        $at, $a3, 0x6
/* 02D804 8002DC54 14200006 */  bnez        $at, .L8002DC70
/* 02D808 8002DC58 24E7FFFA */   addiu      $a3, $a3, -0x6
.L8002DC5C:
/* 02D80C 8002DC5C 28E10006 */  slti        $at, $a3, 0x6
/* 02D810 8002DC60 5020FFFE */  beql        $at, $zero, .L8002DC5C
/* 02D814 8002DC64 24E7FFFA */   addiu      $a3, $a3, -0x6
/* 02D818 8002DC68 3C01800A */  lui         $at, %hi(D_8009FAB0)
/* 02D81C 8002DC6C AC27FAB0 */  sw          $a3, %lo(D_8009FAB0)($at)
.L8002DC70:
/* 02D820 8002DC70 0C002671 */  jal         func_800099C4
/* 02D824 8002DC74 00000000 */   nop
/* 02D828 8002DC78 3C01800F */  lui         $at, %hi(D_800F6448)
/* 02D82C 8002DC7C AC236448 */  sw          $v1, %lo(D_800F6448)($at)
.L8002DC80:
/* 02D830 8002DC80 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02D834 8002DC84 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02D838 8002DC88 03E00008 */  jr          $ra
/* 02D83C 8002DC8C 00000000 */   nop

glabel func_8002DC90 # 45
/* 02D840 8002DC90 3C02800F */  lui         $v0, %hi(D_800F6320)
/* 02D844 8002DC94 8C426320 */  lw          $v0, %lo(D_800F6320)($v0)
/* 02D848 8002DC98 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 02D84C 8002DC9C AFB00018 */  sw          $s0, 0x18($sp)
/* 02D850 8002DCA0 00808025 */  move        $s0, $a0
/* 02D854 8002DCA4 3C04800A */  lui         $a0, %hi(D_8009FA9C)
/* 02D858 8002DCA8 00021880 */  sll         $v1, $v0, 2
/* 02D85C 8002DCAC AFBF001C */  sw          $ra, 0x1c($sp)
/* 02D860 8002DCB0 00832021 */  addu        $a0, $a0, $v1
/* 02D864 8002DCB4 8C84FA9C */  lw          $a0, %lo(D_8009FA9C)($a0)
/* 02D868 8002DCB8 0C01190B */  jal         func_8004642C
/* 02D86C 8002DCBC AFA30024 */   sw         $v1, 0x24($sp)
/* 02D870 8002DCC0 8E030000 */  lw          $v1, 0x0($s0)
/* 02D874 8002DCC4 3C18E700 */  lui         $t8, 0xe700
/* 02D878 8002DCC8 3C09E200 */  lui         $t1, 0xe200
/* 02D87C 8002DCCC 246F0008 */  addiu       $t7, $v1, 0x8
/* 02D880 8002DCD0 AE0F0000 */  sw          $t7, 0x0($s0)
/* 02D884 8002DCD4 AC600004 */  sw          $zero, 0x4($v1)
/* 02D888 8002DCD8 AC780000 */  sw          $t8, 0x0($v1)
/* 02D88C 8002DCDC 8E030000 */  lw          $v1, 0x0($s0)
/* 02D890 8002DCE0 3C0A0050 */  lui         $t2, 0x50
/* 02D894 8002DCE4 354A4240 */  ori         $t2, $t2, 0x4240
/* 02D898 8002DCE8 24790008 */  addiu       $t9, $v1, 0x8
/* 02D89C 8002DCEC AE190000 */  sw          $t9, 0x0($s0)
/* 02D8A0 8002DCF0 3529001C */  ori         $t1, $t1, 0x1c
/* 02D8A4 8002DCF4 AC690000 */  sw          $t1, 0x0($v1)
/* 02D8A8 8002DCF8 AC6A0004 */  sw          $t2, 0x4($v1)
/* 02D8AC 8002DCFC 8E030000 */  lw          $v1, 0x0($s0)
/* 02D8B0 8002DD00 00024080 */  sll         $t0, $v0, 2
/* 02D8B4 8002DD04 01024023 */  subu        $t0, $t0, $v0
/* 02D8B8 8002DD08 00084080 */  sll         $t0, $t0, 2
/* 02D8BC 8002DD0C 246B0008 */  addiu       $t3, $v1, 0x8
/* 02D8C0 8002DD10 2508000C */  addiu       $t0, $t0, 0xc
/* 02D8C4 8002DD14 AE0B0000 */  sw          $t3, 0x0($s0)
/* 02D8C8 8002DD18 3C0CFC11 */  lui         $t4, 0xfc11
/* 02D8CC 8002DD1C 358CFE23 */  ori         $t4, $t4, 0xfe23
/* 02D8D0 8002DD20 240DF7FB */  addiu       $t5, $zero, -0x805
/* 02D8D4 8002DD24 AC6D0004 */  sw          $t5, 0x4($v1)
/* 02D8D8 8002DD28 AC6C0000 */  sw          $t4, 0x0($v1)
/* 02D8DC 8002DD2C 8E030000 */  lw          $v1, 0x0($s0)
/* 02D8E0 8002DD30 05010003 */  bgez        $t0, .L8002DD40
/* 02D8E4 8002DD34 00087043 */   sra        $t6, $t0, 1
/* 02D8E8 8002DD38 25010001 */  addiu       $at, $t0, 0x1
/* 02D8EC 8002DD3C 00017043 */  sra         $t6, $at, 1
.L8002DD40:
/* 02D8F0 8002DD40 01C04025 */  move        $t0, $t6
/* 02D8F4 8002DD44 246E0008 */  addiu       $t6, $v1, 0x8
/* 02D8F8 8002DD48 AE0E0000 */  sw          $t6, 0x0($s0)
/* 02D8FC 8002DD4C 241800C8 */  addiu       $t8, $zero, 0xc8
/* 02D900 8002DD50 3C0FFA00 */  lui         $t7, 0xfa00
/* 02D904 8002DD54 AC6F0000 */  sw          $t7, 0x0($v1)
/* 02D908 8002DD58 AC780004 */  sw          $t8, 0x4($v1)
/* 02D90C 8002DD5C 8E030000 */  lw          $v1, 0x0($s0)
/* 02D910 8002DD60 25090024 */  addiu       $t1, $t0, 0x24
/* 02D914 8002DD64 312A03FF */  andi        $t2, $t1, 0x3ff
/* 02D918 8002DD68 000A5B80 */  sll         $t3, $t2, 14
/* 02D91C 8002DD6C 3C01F600 */  lui         $at, 0xf600
/* 02D920 8002DD70 24790008 */  addiu       $t9, $v1, 0x8
/* 02D924 8002DD74 AE190000 */  sw          $t9, 0x0($s0)
/* 02D928 8002DD78 01616025 */  or          $t4, $t3, $at
/* 02D92C 8002DD7C 3C0E0007 */  lui         $t6, 0x7
/* 02D930 8002DD80 35CEC2F4 */  ori         $t6, $t6, 0xc2f4
/* 02D934 8002DD84 358D033C */  ori         $t5, $t4, 0x33c
/* 02D938 8002DD88 AC6D0000 */  sw          $t5, 0x0($v1)
/* 02D93C 8002DD8C AC6E0004 */  sw          $t6, 0x4($v1)
/* 02D940 8002DD90 0C00ED84 */  jal         func_8003B610
/* 02D944 8002DD94 8E040000 */   lw         $a0, 0x0($s0)
/* 02D948 8002DD98 0C00F134 */  jal         func_8003C4D0
/* 02D94C 8002DD9C 00002025 */   move       $a0, $zero
/* 02D950 8002DDA0 0C00EDD9 */  jal         func_8003B764
/* 02D954 8002DDA4 00000000 */   nop
/* 02D958 8002DDA8 3C048006 */  lui         $a0, %hi(D_800615F0)
/* 02D95C 8002DDAC 0C00F131 */  jal         func_8003C4C4
/* 02D960 8002DDB0 248415F0 */   addiu      $a0, $a0, %lo(D_800615F0)
/* 02D964 8002DDB4 0C00F137 */  jal         func_8003C4DC
/* 02D968 8002DDB8 00002025 */   move       $a0, $zero
/* 02D96C 8002DDBC 3C013F80 */  lui         $at, 0x3f80
/* 02D970 8002DDC0 44816000 */  mtc1        $at, $f12
/* 02D974 8002DDC4 0C00F13A */  jal         func_8003C4E8
/* 02D978 8002DDC8 46006386 */   mov.s      $f14, $f12
/* 02D97C 8002DDCC 00002025 */  move        $a0, $zero
/* 02D980 8002DDD0 00002825 */  move        $a1, $zero
/* 02D984 8002DDD4 2406013F */  addiu       $a2, $zero, 0x13f
/* 02D988 8002DDD8 0C00F098 */  jal         func_8003C260
/* 02D98C 8002DDDC 240700EF */   addiu      $a3, $zero, 0xef
/* 02D990 8002DDE0 240400FF */  addiu       $a0, $zero, 0xff
/* 02D994 8002DDE4 240500FF */  addiu       $a1, $zero, 0xff
/* 02D998 8002DDE8 240600FF */  addiu       $a2, $zero, 0xff
/* 02D99C 8002DDEC 0C00F0F9 */  jal         func_8003C3E4
/* 02D9A0 8002DDF0 240700FE */   addiu      $a3, $zero, 0xfe
/* 02D9A4 8002DDF4 24040024 */  addiu       $a0, $zero, 0x24
/* 02D9A8 8002DDF8 0C00F0CA */  jal         func_8003C328
/* 02D9AC 8002DDFC 240500BE */   addiu      $a1, $zero, 0xbe
/* 02D9B0 8002DE00 8FAF0024 */  lw          $t7, 0x24($sp)
/* 02D9B4 8002DE04 3C04800F */  lui         $a0, %hi(D_800F6450)
/* 02D9B8 8002DE08 008F2021 */  addu        $a0, $a0, $t7
/* 02D9BC 8002DE0C 0C00F423 */  jal         func_8003D08C
/* 02D9C0 8002DE10 8C846450 */   lw         $a0, %lo(D_800F6450)($a0)
/* 02D9C4 8002DE14 0C00EDD5 */  jal         func_8003B754
/* 02D9C8 8002DE18 02002025 */   move       $a0, $s0
/* 02D9CC 8002DE1C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 02D9D0 8002DE20 8FB00018 */  lw          $s0, 0x18($sp)
/* 02D9D4 8002DE24 27BD0048 */  addiu       $sp, $sp, 0x48
/* 02D9D8 8002DE28 03E00008 */  jr          $ra
/* 02D9DC 8002DE2C 00000000 */   nop

glabel func_8002DE30 # 46
/* 02D9E0 8002DE30 27BDFF80 */  addiu       $sp, $sp, -0x80
/* 02D9E4 8002DE34 AFB00038 */  sw          $s0, 0x38($sp)
/* 02D9E8 8002DE38 00808025 */  move        $s0, $a0
/* 02D9EC 8002DE3C AFBF003C */  sw          $ra, 0x3c($sp)
/* 02D9F0 8002DE40 AFA60088 */  sw          $a2, 0x88($sp)
/* 02D9F4 8002DE44 AFA7008C */  sw          $a3, 0x8c($sp)
/* 02D9F8 8002DE48 27A60070 */  addiu       $a2, $sp, 0x70
/* 02D9FC 8002DE4C 0C002A76 */  jal         func_8000A9D8
/* 02DA00 8002DE50 24040005 */   addiu      $a0, $zero, 0x5
/* 02DA04 8002DE54 8E020000 */  lw          $v0, 0x0($s0)
/* 02DA08 8002DE58 3C0FE700 */  lui         $t7, 0xe700
/* 02DA0C 8002DE5C 24010002 */  addiu       $at, $zero, 0x2
/* 02DA10 8002DE60 244E0008 */  addiu       $t6, $v0, 0x8
/* 02DA14 8002DE64 AE0E0000 */  sw          $t6, 0x0($s0)
/* 02DA18 8002DE68 AC400004 */  sw          $zero, 0x4($v0)
/* 02DA1C 8002DE6C AC4F0000 */  sw          $t7, 0x0($v0)
/* 02DA20 8002DE70 93B8007D */  lbu         $t8, 0x7d($sp)
/* 02DA24 8002DE74 3C0E0101 */  lui         $t6, 0x101
/* 02DA28 8002DE78 25CEC720 */  addiu       $t6, $t6, -0x38e0
/* 02DA2C 8002DE7C 1701000A */  bne         $t8, $at, .L8002DEA8
/* 02DA30 8002DE80 3C0DDE00 */   lui        $t5, 0xde00
/* 02DA34 8002DE84 8E020000 */  lw          $v0, 0x0($s0)
/* 02DA38 8002DE88 3C08E300 */  lui         $t0, 0xe300
/* 02DA3C 8002DE8C 35081001 */  ori         $t0, $t0, 0x1001
/* 02DA40 8002DE90 24590008 */  addiu       $t9, $v0, 0x8
/* 02DA44 8002DE94 AE190000 */  sw          $t9, 0x0($s0)
/* 02DA48 8002DE98 34098000 */  ori         $t1, $zero, 0x8000
/* 02DA4C 8002DE9C AC490004 */  sw          $t1, 0x4($v0)
/* 02DA50 8002DEA0 10000008 */  b           .L8002DEC4
/* 02DA54 8002DEA4 AC480000 */   sw         $t0, 0x0($v0)
.L8002DEA8:
/* 02DA58 8002DEA8 8E020000 */  lw          $v0, 0x0($s0)
/* 02DA5C 8002DEAC 3C0BE300 */  lui         $t3, 0xe300
/* 02DA60 8002DEB0 356B1001 */  ori         $t3, $t3, 0x1001
/* 02DA64 8002DEB4 244A0008 */  addiu       $t2, $v0, 0x8
/* 02DA68 8002DEB8 AE0A0000 */  sw          $t2, 0x0($s0)
/* 02DA6C 8002DEBC AC400004 */  sw          $zero, 0x4($v0)
/* 02DA70 8002DEC0 AC4B0000 */  sw          $t3, 0x0($v0)
.L8002DEC4:
/* 02DA74 8002DEC4 8E020000 */  lw          $v0, 0x0($s0)
/* 02DA78 8002DEC8 24080001 */  addiu       $t0, $zero, 0x1
/* 02DA7C 8002DECC 24090001 */  addiu       $t1, $zero, 0x1
/* 02DA80 8002DED0 244C0008 */  addiu       $t4, $v0, 0x8
/* 02DA84 8002DED4 AE0C0000 */  sw          $t4, 0x0($s0)
/* 02DA88 8002DED8 AC4E0004 */  sw          $t6, 0x4($v0)
/* 02DA8C 8002DEDC AC4D0000 */  sw          $t5, 0x0($v0)
/* 02DA90 8002DEE0 97B9007A */  lhu         $t9, 0x7a($sp)
/* 02DA94 8002DEE4 97B80078 */  lhu         $t8, 0x78($sp)
/* 02DA98 8002DEE8 93AF007C */  lbu         $t7, 0x7c($sp)
/* 02DA9C 8002DEEC AFA90028 */  sw          $t1, 0x28($sp)
/* 02DAA0 8002DEF0 AFA80024 */  sw          $t0, 0x24($sp)
/* 02DAA4 8002DEF4 AFA00020 */  sw          $zero, 0x20($sp)
/* 02DAA8 8002DEF8 AFA0001C */  sw          $zero, 0x1c($sp)
/* 02DAAC 8002DEFC 93A7007D */  lbu         $a3, 0x7d($sp)
/* 02DAB0 8002DF00 8FA60074 */  lw          $a2, 0x74($sp)
/* 02DAB4 8002DF04 8FA50070 */  lw          $a1, 0x70($sp)
/* 02DAB8 8002DF08 02002025 */  move        $a0, $s0
/* 02DABC 8002DF0C AFB90018 */  sw          $t9, 0x18($sp)
/* 02DAC0 8002DF10 AFB80014 */  sw          $t8, 0x14($sp)
/* 02DAC4 8002DF14 0C00FC70 */  jal         func_8003F1C0
/* 02DAC8 8002DF18 AFAF0010 */   sw         $t7, 0x10($sp)
/* 02DACC 8002DF1C 8E020000 */  lw          $v0, 0x0($s0)
/* 02DAD0 8002DF20 8FA60088 */  lw          $a2, 0x88($sp)
/* 02DAD4 8002DF24 8FA7008C */  lw          $a3, 0x8c($sp)
/* 02DAD8 8002DF28 C7A20098 */  lwc1        $f2, 0x98($sp)
/* 02DADC 8002DF2C C7B0009C */  lwc1        $f16, 0x9c($sp)
/* 02DAE0 8002DF30 244A0008 */  addiu       $t2, $v0, 0x8
/* 02DAE4 8002DF34 AE0A0000 */  sw          $t2, 0x0($s0)
/* 02DAE8 8002DF38 8FAB0090 */  lw          $t3, 0x90($sp)
/* 02DAEC 8002DF3C 44862000 */  mtc1        $a2, $f4
/* 02DAF0 8002DF40 3C014080 */  lui         $at, 0x4080
/* 02DAF4 8002DF44 256CFFFF */  addiu       $t4, $t3, -0x1
/* 02DAF8 8002DF48 448C4000 */  mtc1        $t4, $f8
/* 02DAFC 8002DF4C 468021A0 */  cvt.s.w     $f6, $f4
/* 02DB00 8002DF50 44810000 */  mtc1        $at, $f0
/* 02DB04 8002DF54 8FA80094 */  lw          $t0, 0x94($sp)
/* 02DB08 8002DF58 3C01E400 */  lui         $at, 0xe400
/* 02DB0C 8002DF5C 44809000 */  mtc1        $zero, $f18
/* 02DB10 8002DF60 468042A0 */  cvt.s.w     $f10, $f8
/* 02DB14 8002DF64 2509FFFF */  addiu       $t1, $t0, -0x1
/* 02DB18 8002DF68 00074080 */  sll         $t0, $a3, 2
/* 02DB1C 8002DF6C 46025102 */  mul.s       $f4, $f10, $f2
/* 02DB20 8002DF70 46043200 */  add.s       $f8, $f6, $f4
/* 02DB24 8002DF74 44872000 */  mtc1        $a3, $f4
/* 02DB28 8002DF78 46004282 */  mul.s       $f10, $f8, $f0
/* 02DB2C 8002DF7C 46802220 */  cvt.s.w     $f8, $f4
/* 02DB30 8002DF80 4600518D */  trunc.w.s   $f6, $f10
/* 02DB34 8002DF84 44895000 */  mtc1        $t1, $f10
/* 02DB38 8002DF88 31090FFF */  andi        $t1, $t0, 0xfff
/* 02DB3C 8002DF8C 440E3000 */  mfc1        $t6, $f6
/* 02DB40 8002DF90 468051A0 */  cvt.s.w     $f6, $f10
/* 02DB44 8002DF94 31CF0FFF */  andi        $t7, $t6, 0xfff
/* 02DB48 8002DF98 000FC300 */  sll         $t8, $t7, 12
/* 02DB4C 8002DF9C 0301C825 */  or          $t9, $t8, $at
/* 02DB50 8002DFA0 3C014480 */  lui         $at, 0x4480
/* 02DB54 8002DFA4 46103102 */  mul.s       $f4, $f6, $f16
/* 02DB58 8002DFA8 00067080 */  sll         $t6, $a2, 2
/* 02DB5C 8002DFAC 31CF0FFF */  andi        $t7, $t6, 0xfff
/* 02DB60 8002DFB0 000FC300 */  sll         $t8, $t7, 12
/* 02DB64 8002DFB4 03095025 */  or          $t2, $t8, $t1
/* 02DB68 8002DFB8 AC4A0004 */  sw          $t2, 0x4($v0)
/* 02DB6C 8002DFBC 3C0EF100 */  lui         $t6, 0xf100
/* 02DB70 8002DFC0 46044280 */  add.s       $f10, $f8, $f4
/* 02DB74 8002DFC4 44812000 */  mtc1        $at, $f4
/* 02DB78 8002DFC8 3C013F00 */  lui         $at, 0x3f00
/* 02DB7C 8002DFCC 46005182 */  mul.s       $f6, $f10, $f0
/* 02DB80 8002DFD0 46022003 */  div.s       $f0, $f4, $f2
/* 02DB84 8002DFD4 4600320D */  trunc.w.s   $f8, $f6
/* 02DB88 8002DFD8 440B4000 */  mfc1        $t3, $f8
/* 02DB8C 8002DFDC 00000000 */  nop
/* 02DB90 8002DFE0 316C0FFF */  andi        $t4, $t3, 0xfff
/* 02DB94 8002DFE4 032C6825 */  or          $t5, $t9, $t4
/* 02DB98 8002DFE8 AC4D0000 */  sw          $t5, 0x0($v0)
/* 02DB9C 8002DFEC 8E020000 */  lw          $v0, 0x0($s0)
/* 02DBA0 8002DFF0 340CFFE0 */  ori         $t4, $zero, 0xffe0
/* 02DBA4 8002DFF4 3C19E100 */  lui         $t9, 0xe100
/* 02DBA8 8002DFF8 244B0008 */  addiu       $t3, $v0, 0x8
/* 02DBAC 8002DFFC AE0B0000 */  sw          $t3, 0x0($s0)
/* 02DBB0 8002E000 AC4C0004 */  sw          $t4, 0x4($v0)
/* 02DBB4 8002E004 AC590000 */  sw          $t9, 0x0($v0)
/* 02DBB8 8002E008 8E050000 */  lw          $a1, 0x0($s0)
/* 02DBBC 8002E00C 4600903E */  c.le.s      $f18, $f0
/* 02DBC0 8002E010 24AD0008 */  addiu       $t5, $a1, 0x8
/* 02DBC4 8002E014 AE0D0000 */  sw          $t5, 0x0($s0)
/* 02DBC8 8002E018 45000005 */  bc1f        .L8002E030
/* 02DBCC 8002E01C ACAE0000 */   sw         $t6, 0x0($a1)
/* 02DBD0 8002E020 3C013F00 */  lui         $at, 0x3f00
/* 02DBD4 8002E024 44817000 */  mtc1        $at, $f14
/* 02DBD8 8002E028 10000004 */  b           .L8002E03C
/* 02DBDC 8002E02C 460E0300 */   add.s      $f12, $f0, $f14
.L8002E030:
/* 02DBE0 8002E030 44817000 */  mtc1        $at, $f14
/* 02DBE4 8002E034 00000000 */  nop
/* 02DBE8 8002E038 460E0301 */  sub.s       $f12, $f0, $f14
.L8002E03C:
/* 02DBEC 8002E03C 3C01C480 */  lui         $at, 0xc480
/* 02DBF0 8002E040 44815000 */  mtc1        $at, $f10
/* 02DBF4 8002E044 4600620D */  trunc.w.s   $f8, $f12
/* 02DBF8 8002E048 46105003 */  div.s       $f0, $f10, $f16
/* 02DBFC 8002E04C 4600903E */  c.le.s      $f18, $f0
/* 02DC00 8002E050 00000000 */  nop
/* 02DC04 8002E054 45020004 */  bc1fl       .L8002E068
/* 02DC08 8002E058 460E0081 */   sub.s      $f2, $f0, $f14
/* 02DC0C 8002E05C 10000002 */  b           .L8002E068
/* 02DC10 8002E060 460E0080 */   add.s      $f2, $f0, $f14
/* 02DC14 8002E064 460E0081 */  sub.s       $f2, $f0, $f14
.L8002E068:
/* 02DC18 8002E068 4600118D */  trunc.w.s   $f6, $f2
/* 02DC1C 8002E06C 440B4000 */  mfc1        $t3, $f8
/* 02DC20 8002E070 3C0ED700 */  lui         $t6, 0xd700
/* 02DC24 8002E074 3C0F7FFF */  lui         $t7, 0x7fff
/* 02DC28 8002E078 44083000 */  mfc1        $t0, $f6
/* 02DC2C 8002E07C 000BCC00 */  sll         $t9, $t3, 16
/* 02DC30 8002E080 3C09DB08 */  lui         $t1, 0xdb08
/* 02DC34 8002E084 3118FFFF */  andi        $t8, $t0, 0xffff
/* 02DC38 8002E088 03196025 */  or          $t4, $t8, $t9
/* 02DC3C 8002E08C ACAC0004 */  sw          $t4, 0x4($a1)
/* 02DC40 8002E090 8E020000 */  lw          $v0, 0x0($s0)
/* 02DC44 8002E094 35290010 */  ori         $t1, $t1, 0x10
/* 02DC48 8002E098 240A7FFF */  addiu       $t2, $zero, 0x7fff
/* 02DC4C 8002E09C 244D0008 */  addiu       $t5, $v0, 0x8
/* 02DC50 8002E0A0 AE0D0000 */  sw          $t5, 0x0($s0)
/* 02DC54 8002E0A4 AC4F0004 */  sw          $t7, 0x4($v0)
/* 02DC58 8002E0A8 AC4E0000 */  sw          $t6, 0x0($v0)
/* 02DC5C 8002E0AC 8E020000 */  lw          $v0, 0x0($s0)
/* 02DC60 8002E0B0 24480008 */  addiu       $t0, $v0, 0x8
/* 02DC64 8002E0B4 AE080000 */  sw          $t0, 0x0($s0)
/* 02DC68 8002E0B8 AC4A0004 */  sw          $t2, 0x4($v0)
/* 02DC6C 8002E0BC AC490000 */  sw          $t1, 0x0($v0)
/* 02DC70 8002E0C0 8FBF003C */  lw          $ra, 0x3c($sp)
/* 02DC74 8002E0C4 8FB00038 */  lw          $s0, 0x38($sp)
/* 02DC78 8002E0C8 27BD0080 */  addiu       $sp, $sp, 0x80
/* 02DC7C 8002E0CC 03E00008 */  jr          $ra
/* 02DC80 8002E0D0 00000000 */   nop

glabel func_8002E0D4 # 47
/* 02DC84 8002E0D4 27BDFF48 */  addiu       $sp, $sp, -0xb8
/* 02DC88 8002E0D8 AFBF002C */  sw          $ra, 0x2c($sp)
/* 02DC8C 8002E0DC AFB00028 */  sw          $s0, 0x28($sp)
/* 02DC90 8002E0E0 8C820000 */  lw          $v0, 0x0($a0)
/* 02DC94 8002E0E4 3C0AE700 */  lui         $t2, 0xe700
/* 02DC98 8002E0E8 3C0B800B */  lui         $t3, %hi(D_800B1A70)
/* 02DC9C 8002E0EC 244E0008 */  addiu       $t6, $v0, 0x8
/* 02DCA0 8002E0F0 AC8E0000 */  sw          $t6, 0x0($a0)
/* 02DCA4 8002E0F4 256B1A70 */  addiu       $t3, $t3, %lo(D_800B1A70)
/* 02DCA8 8002E0F8 AC400004 */  sw          $zero, 0x4($v0)
/* 02DCAC 8002E0FC AC4A0000 */  sw          $t2, 0x0($v0)
/* 02DCB0 8002E100 8D660000 */  lw          $a2, 0x0($t3)
/* 02DCB4 8002E104 3C18E300 */  lui         $t8, 0xe300
/* 02DCB8 8002E108 37180A01 */  ori         $t8, $t8, 0xa01
/* 02DCBC 8002E10C 24CF0008 */  addiu       $t7, $a2, 0x8
/* 02DCC0 8002E110 AD6F0000 */  sw          $t7, 0x0($t3)
/* 02DCC4 8002E114 ACC00004 */  sw          $zero, 0x4($a2)
/* 02DCC8 8002E118 ACD80000 */  sw          $t8, 0x0($a2)
/* 02DCCC 8002E11C 8C820000 */  lw          $v0, 0x0($a0)
/* 02DCD0 8002E120 3C0E0050 */  lui         $t6, 0x50
/* 02DCD4 8002E124 3C0DE200 */  lui         $t5, 0xe200
/* 02DCD8 8002E128 24590008 */  addiu       $t9, $v0, 0x8
/* 02DCDC 8002E12C AC990000 */  sw          $t9, 0x0($a0)
/* 02DCE0 8002E130 AC400004 */  sw          $zero, 0x4($v0)
/* 02DCE4 8002E134 AC4A0000 */  sw          $t2, 0x0($v0)
/* 02DCE8 8002E138 8C820000 */  lw          $v0, 0x0($a0)
/* 02DCEC 8002E13C 35AD001C */  ori         $t5, $t5, 0x1c
/* 02DCF0 8002E140 35CE4240 */  ori         $t6, $t6, 0x4240
/* 02DCF4 8002E144 244C0008 */  addiu       $t4, $v0, 0x8
/* 02DCF8 8002E148 AC8C0000 */  sw          $t4, 0x0($a0)
/* 02DCFC 8002E14C AC4E0004 */  sw          $t6, 0x4($v0)
/* 02DD00 8002E150 AC4D0000 */  sw          $t5, 0x0($v0)
/* 02DD04 8002E154 8C820000 */  lw          $v0, 0x0($a0)
/* 02DD08 8002E158 3C19FF2F */  lui         $t9, 0xff2f
/* 02DD0C 8002E15C 3C18FC11 */  lui         $t8, 0xfc11
/* 02DD10 8002E160 244F0008 */  addiu       $t7, $v0, 0x8
/* 02DD14 8002E164 AC8F0000 */  sw          $t7, 0x0($a0)
/* 02DD18 8002E168 37189623 */  ori         $t8, $t8, 0x9623
/* 02DD1C 8002E16C 3739FFFF */  ori         $t9, $t9, 0xffff
/* 02DD20 8002E170 00808025 */  move        $s0, $a0
/* 02DD24 8002E174 AC590004 */  sw          $t9, 0x4($v0)
/* 02DD28 8002E178 0C002671 */  jal         func_800099C4
/* 02DD2C 8002E17C AC580000 */   sw         $t8, 0x0($v0)
/* 02DD30 8002E180 3C0C800F */  lui         $t4, %hi(D_800F6328)
/* 02DD34 8002E184 3C0D800F */  lui         $t5, %hi(D_800F632C)
/* 02DD38 8002E188 8DAD632C */  lw          $t5, %lo(D_800F632C)($t5)
/* 02DD3C 8002E18C 8D8C6328 */  lw          $t4, %lo(D_800F6328)($t4)
/* 02DD40 8002E190 006D082B */  sltu        $at, $v1, $t5
/* 02DD44 8002E194 004C2023 */  subu        $a0, $v0, $t4
/* 02DD48 8002E198 00812023 */  subu        $a0, $a0, $at
/* 02DD4C 8002E19C 0C0143B2 */  jal         func_80050EC8
/* 02DD50 8002E1A0 006D2823 */   subu       $a1, $v1, $t5
/* 02DD54 8002E1A4 3C013FE0 */  lui         $at, 0x3fe0
/* 02DD58 8002E1A8 44817800 */  mtc1        $at, $f15
/* 02DD5C 8002E1AC 3C014348 */  lui         $at, 0x4348
/* 02DD60 8002E1B0 44812000 */  mtc1        $at, $f4
/* 02DD64 8002E1B4 44807000 */  mtc1        $zero, $f14
/* 02DD68 8002E1B8 E7A00094 */  swc1        $f0, 0x94($sp)
/* 02DD6C 8002E1BC 46040183 */  div.s       $f6, $f0, $f4
/* 02DD70 8002E1C0 3C0E800F */  lui         $t6, %hi(D_800F631C)
/* 02DD74 8002E1C4 240C0020 */  addiu       $t4, $zero, 0x20
/* 02DD78 8002E1C8 3C0DFA00 */  lui         $t5, 0xfa00
/* 02DD7C 8002E1CC 2418FF80 */  addiu       $t8, $zero, -0x80
/* 02DD80 8002E1D0 02002025 */  move        $a0, $s0
/* 02DD84 8002E1D4 240500F5 */  addiu       $a1, $zero, 0xf5
/* 02DD88 8002E1D8 24060024 */  addiu       $a2, $zero, 0x24
/* 02DD8C 8002E1DC 24070070 */  addiu       $a3, $zero, 0x70
/* 02DD90 8002E1E0 240F0020 */  addiu       $t7, $zero, 0x20
/* 02DD94 8002E1E4 24190020 */  addiu       $t9, $zero, 0x20
/* 02DD98 8002E1E8 460030A1 */  cvt.d.s     $f2, $f6
/* 02DD9C 8002E1EC 4622703E */  c.le.d      $f14, $f2
/* 02DDA0 8002E1F0 00000000 */  nop
/* 02DDA4 8002E1F4 45020004 */  bc1fl       .L8002E208
/* 02DDA8 8002E1F8 462E1301 */   sub.d      $f12, $f2, $f14
/* 02DDAC 8002E1FC 10000003 */  b           .L8002E20C
/* 02DDB0 8002E200 462E1301 */   sub.d      $f12, $f2, $f14
/* 02DDB4 8002E204 462E1301 */  sub.d       $f12, $f2, $f14
.L8002E208:
/* 02DDB8 8002E208 46206307 */  neg.d       $f12, $f12
.L8002E20C:
/* 02DDBC 8002E20C 8DCE631C */  lw          $t6, %lo(D_800F631C)($t6)
/* 02DDC0 8002E210 24010001 */  addiu       $at, $zero, 0x1
/* 02DDC4 8002E214 55C1002F */  bnel        $t6, $at, .L8002E2D4
/* 02DDC8 8002E218 8E020000 */   lw         $v0, 0x0($s0)
/* 02DDCC 8002E21C 462C7201 */  sub.d       $f8, $f14, $f12
/* 02DDD0 8002E220 3C013FF0 */  lui         $at, 0x3ff0
/* 02DDD4 8002E224 44815800 */  mtc1        $at, $f11
/* 02DDD8 8002E228 44805000 */  mtc1        $zero, $f10
/* 02DDDC 8002E22C 3C014200 */  lui         $at, 0x4200
/* 02DDE0 8002E230 44819000 */  mtc1        $at, $f18
/* 02DDE4 8002E234 462A4400 */  add.d       $f16, $f8, $f10
/* 02DDE8 8002E238 8E020000 */  lw          $v0, 0x0($s0)
/* 02DDEC 8002E23C 3C18FA00 */  lui         $t8, 0xfa00
/* 02DDF0 8002E240 2419FFFF */  addiu       $t9, $zero, -0x1
/* 02DDF4 8002E244 46208020 */  cvt.s.d     $f0, $f16
/* 02DDF8 8002E248 244F0008 */  addiu       $t7, $v0, 0x8
/* 02DDFC 8002E24C AE0F0000 */  sw          $t7, 0x0($s0)
/* 02DE00 8002E250 AC590004 */  sw          $t9, 0x4($v0)
/* 02DE04 8002E254 46009102 */  mul.s       $f4, $f18, $f0
/* 02DE08 8002E258 AC580000 */  sw          $t8, 0x0($v0)
/* 02DE0C 8002E25C 24180080 */  addiu       $t8, $zero, 0x80
/* 02DE10 8002E260 24190020 */  addiu       $t9, $zero, 0x20
/* 02DE14 8002E264 240E0034 */  addiu       $t6, $zero, 0x34
/* 02DE18 8002E268 AFB90010 */  sw          $t9, 0x10($sp)
/* 02DE1C 8002E26C F7AC0030 */  sdc1        $f12, 0x30($sp)
/* 02DE20 8002E270 4600218D */  trunc.w.s   $f6, $f4
/* 02DE24 8002E274 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 02DE28 8002E278 E7A00018 */  swc1        $f0, 0x18($sp)
/* 02DE2C 8002E27C AFAC0014 */  sw          $t4, 0x14($sp)
/* 02DE30 8002E280 44033000 */  mfc1        $v1, $f6
/* 02DE34 8002E284 02002025 */  move        $a0, $s0
/* 02DE38 8002E288 240500F5 */  addiu       $a1, $zero, 0xf5
/* 02DE3C 8002E28C 00404025 */  move        $t0, $v0
/* 02DE40 8002E290 04610003 */  bgez        $v1, .L8002E2A0
/* 02DE44 8002E294 00036843 */   sra        $t5, $v1, 1
/* 02DE48 8002E298 24610001 */  addiu       $at, $v1, 0x1
/* 02DE4C 8002E29C 00016843 */  sra         $t5, $at, 1
.L8002E2A0:
/* 02DE50 8002E2A0 01CD3023 */  subu        $a2, $t6, $t5
/* 02DE54 8002E2A4 04610003 */  bgez        $v1, .L8002E2B4
/* 02DE58 8002E2A8 00037843 */   sra        $t7, $v1, 1
/* 02DE5C 8002E2AC 00000000 */  nop
/* 02DE60 8002E2B0 00017843 */  sra         $t7, $at, 1
.L8002E2B4:
/* 02DE64 8002E2B4 0C00B78C */  jal         func_8002DE30
/* 02DE68 8002E2B8 030F3823 */   subu       $a3, $t8, $t7
/* 02DE6C 8002E2BC 3C013FE0 */  lui         $at, 0x3fe0
/* 02DE70 8002E2C0 44817800 */  mtc1        $at, $f15
/* 02DE74 8002E2C4 44807000 */  mtc1        $zero, $f14
/* 02DE78 8002E2C8 10000013 */  b           .L8002E318
/* 02DE7C 8002E2CC D7AC0030 */   ldc1       $f12, 0x30($sp)
/* 02DE80 8002E2D0 8E020000 */  lw          $v0, 0x0($s0)
.L8002E2D4:
/* 02DE84 8002E2D4 3C013F80 */  lui         $at, 0x3f80
/* 02DE88 8002E2D8 44814000 */  mtc1        $at, $f8
/* 02DE8C 8002E2DC 244E0008 */  addiu       $t6, $v0, 0x8
/* 02DE90 8002E2E0 AE0E0000 */  sw          $t6, 0x0($s0)
/* 02DE94 8002E2E4 AC580004 */  sw          $t8, 0x4($v0)
/* 02DE98 8002E2E8 AC4D0000 */  sw          $t5, 0x0($v0)
/* 02DE9C 8002E2EC 44815000 */  mtc1        $at, $f10
/* 02DEA0 8002E2F0 F7AC0030 */  sdc1        $f12, 0x30($sp)
/* 02DEA4 8002E2F4 AFB90014 */  sw          $t9, 0x14($sp)
/* 02DEA8 8002E2F8 AFAF0010 */  sw          $t7, 0x10($sp)
/* 02DEAC 8002E2FC E7A80018 */  swc1        $f8, 0x18($sp)
/* 02DEB0 8002E300 0C00B78C */  jal         func_8002DE30
/* 02DEB4 8002E304 E7AA001C */   swc1       $f10, 0x1c($sp)
/* 02DEB8 8002E308 3C013FE0 */  lui         $at, 0x3fe0
/* 02DEBC 8002E30C 44817800 */  mtc1        $at, $f15
/* 02DEC0 8002E310 44807000 */  mtc1        $zero, $f14
/* 02DEC4 8002E314 D7AC0030 */  ldc1        $f12, 0x30($sp)
.L8002E318:
/* 02DEC8 8002E318 3C0C800F */  lui         $t4, %hi(D_800F631C)
/* 02DECC 8002E31C 8D8C631C */  lw          $t4, %lo(D_800F631C)($t4)
/* 02DED0 8002E320 2401FFFF */  addiu       $at, $zero, -0x1
/* 02DED4 8002E324 3C19FA00 */  lui         $t9, 0xfa00
/* 02DED8 8002E328 1581002E */  bne         $t4, $at, .L8002E3E4
/* 02DEDC 8002E32C 240DFF80 */   addiu      $t5, $zero, -0x80
/* 02DEE0 8002E330 462C7401 */  sub.d       $f16, $f14, $f12
/* 02DEE4 8002E334 3C013FF0 */  lui         $at, 0x3ff0
/* 02DEE8 8002E338 44819800 */  mtc1        $at, $f19
/* 02DEEC 8002E33C 44809000 */  mtc1        $zero, $f18
/* 02DEF0 8002E340 3C014200 */  lui         $at, 0x4200
/* 02DEF4 8002E344 44813000 */  mtc1        $at, $f6
/* 02DEF8 8002E348 46328100 */  add.d       $f4, $f16, $f18
/* 02DEFC 8002E34C 8E020000 */  lw          $v0, 0x0($s0)
/* 02DF00 8002E350 3C0DFA00 */  lui         $t5, 0xfa00
/* 02DF04 8002E354 2418FFFF */  addiu       $t8, $zero, -0x1
/* 02DF08 8002E358 46202020 */  cvt.s.d     $f0, $f4
/* 02DF0C 8002E35C 244E0008 */  addiu       $t6, $v0, 0x8
/* 02DF10 8002E360 AE0E0000 */  sw          $t6, 0x0($s0)
/* 02DF14 8002E364 AC580004 */  sw          $t8, 0x4($v0)
/* 02DF18 8002E368 46003202 */  mul.s       $f8, $f6, $f0
/* 02DF1C 8002E36C AC4D0000 */  sw          $t5, 0x0($v0)
/* 02DF20 8002E370 240D0080 */  addiu       $t5, $zero, 0x80
/* 02DF24 8002E374 24180020 */  addiu       $t8, $zero, 0x20
/* 02DF28 8002E378 240C010C */  addiu       $t4, $zero, 0x10c
/* 02DF2C 8002E37C 240F0020 */  addiu       $t7, $zero, 0x20
/* 02DF30 8002E380 AFAF0014 */  sw          $t7, 0x14($sp)
/* 02DF34 8002E384 4600428D */  trunc.w.s   $f10, $f8
/* 02DF38 8002E388 AFB80010 */  sw          $t8, 0x10($sp)
/* 02DF3C 8002E38C E7A0001C */  swc1        $f0, 0x1c($sp)
/* 02DF40 8002E390 E7A00018 */  swc1        $f0, 0x18($sp)
/* 02DF44 8002E394 44035000 */  mfc1        $v1, $f10
/* 02DF48 8002E398 02002025 */  move        $a0, $s0
/* 02DF4C 8002E39C 240500F6 */  addiu       $a1, $zero, 0xf6
/* 02DF50 8002E3A0 00404025 */  move        $t0, $v0
/* 02DF54 8002E3A4 04610003 */  bgez        $v1, .L8002E3B4
/* 02DF58 8002E3A8 0003C843 */   sra        $t9, $v1, 1
/* 02DF5C 8002E3AC 24610001 */  addiu       $at, $v1, 0x1
/* 02DF60 8002E3B0 0001C843 */  sra         $t9, $at, 1
.L8002E3B4:
/* 02DF64 8002E3B4 01993023 */  subu        $a2, $t4, $t9
/* 02DF68 8002E3B8 04610003 */  bgez        $v1, .L8002E3C8
/* 02DF6C 8002E3BC 00037043 */   sra        $t6, $v1, 1
/* 02DF70 8002E3C0 00000000 */  nop
/* 02DF74 8002E3C4 00017043 */  sra         $t6, $at, 1
.L8002E3C8:
/* 02DF78 8002E3C8 0C00B78C */  jal         func_8002DE30
/* 02DF7C 8002E3CC 01AE3823 */   subu       $a3, $t5, $t6
/* 02DF80 8002E3D0 3C013FE0 */  lui         $at, 0x3fe0
/* 02DF84 8002E3D4 44817800 */  mtc1        $at, $f15
/* 02DF88 8002E3D8 44807000 */  mtc1        $zero, $f14
/* 02DF8C 8002E3DC 10000018 */  b           .L8002E440
/* 02DF90 8002E3E0 00000000 */   nop
.L8002E3E4:
/* 02DF94 8002E3E4 8E020000 */  lw          $v0, 0x0($s0)
/* 02DF98 8002E3E8 3C013F80 */  lui         $at, 0x3f80
/* 02DF9C 8002E3EC 44818000 */  mtc1        $at, $f16
/* 02DFA0 8002E3F0 244C0008 */  addiu       $t4, $v0, 0x8
/* 02DFA4 8002E3F4 AE0C0000 */  sw          $t4, 0x0($s0)
/* 02DFA8 8002E3F8 AC4D0004 */  sw          $t5, 0x4($v0)
/* 02DFAC 8002E3FC AC590000 */  sw          $t9, 0x0($v0)
/* 02DFB0 8002E400 44819000 */  mtc1        $at, $f18
/* 02DFB4 8002E404 240E0020 */  addiu       $t6, $zero, 0x20
/* 02DFB8 8002E408 24180020 */  addiu       $t8, $zero, 0x20
/* 02DFBC 8002E40C AFB80014 */  sw          $t8, 0x14($sp)
/* 02DFC0 8002E410 AFAE0010 */  sw          $t6, 0x10($sp)
/* 02DFC4 8002E414 02002025 */  move        $a0, $s0
/* 02DFC8 8002E418 240500F6 */  addiu       $a1, $zero, 0xf6
/* 02DFCC 8002E41C 240600FC */  addiu       $a2, $zero, 0xfc
/* 02DFD0 8002E420 24070070 */  addiu       $a3, $zero, 0x70
/* 02DFD4 8002E424 E7B00018 */  swc1        $f16, 0x18($sp)
/* 02DFD8 8002E428 0C00B78C */  jal         func_8002DE30
/* 02DFDC 8002E42C E7B2001C */   swc1       $f18, 0x1c($sp)
/* 02DFE0 8002E430 3C013FE0 */  lui         $at, 0x3fe0
/* 02DFE4 8002E434 44817800 */  mtc1        $at, $f15
/* 02DFE8 8002E438 44807000 */  mtc1        $zero, $f14
/* 02DFEC 8002E43C 00000000 */  nop
.L8002E440:
/* 02DFF0 8002E440 3C04800F */  lui         $a0, %hi(D_800F6320)
/* 02DFF4 8002E444 8C846320 */  lw          $a0, %lo(D_800F6320)($a0)
/* 02DFF8 8002E448 24010001 */  addiu       $at, $zero, 0x1
/* 02DFFC 8002E44C 3C0F800F */  lui         $t7, %hi(D_800F6324)
/* 02E000 8002E450 1481005D */  bne         $a0, $at, .L8002E5C8
/* 02E004 8002E454 00000000 */   nop
/* 02E008 8002E458 8DEF6324 */  lw          $t7, %lo(D_800F6324)($t7)
/* 02E00C 8002E45C 24010003 */  addiu       $at, $zero, 0x3
/* 02E010 8002E460 3C0C800F */  lui         $t4, %hi(D_800F6440)
/* 02E014 8002E464 15E10040 */  bne         $t7, $at, .L8002E568
/* 02E018 8002E468 240500F7 */   addiu      $a1, $zero, 0xf7
/* 02E01C 8002E46C 8D8C6440 */  lw          $t4, %lo(D_800F6440)($t4)
/* 02E020 8002E470 24010002 */  addiu       $at, $zero, 0x2
/* 02E024 8002E474 3C19800F */  lui         $t9, %hi(D_800F6444)
/* 02E028 8002E478 5181003C */  beql        $t4, $at, .L8002E56C
/* 02E02C 8002E47C 8E020000 */   lw         $v0, 0x0($s0)
/* 02E030 8002E480 8F396444 */  lw          $t9, %lo(D_800F6444)($t9)
/* 02E034 8002E484 C7A40094 */  lwc1        $f4, 0x94($sp)
/* 02E038 8002E488 3C014396 */  lui         $at, 0x4396
/* 02E03C 8002E48C 13240036 */  beq         $t9, $a0, .L8002E568
/* 02E040 8002E490 3C0EFA00 */   lui        $t6, 0xfa00
/* 02E044 8002E494 44813000 */  mtc1        $at, $f6
/* 02E048 8002E498 3C013FF0 */  lui         $at, 0x3ff0
/* 02E04C 8002E49C 44818800 */  mtc1        $at, $f17
/* 02E050 8002E4A0 46062203 */  div.s       $f8, $f4, $f6
/* 02E054 8002E4A4 46004021 */  cvt.d.s     $f0, $f8
/* 02E058 8002E4A8 4620703E */  c.le.d      $f14, $f0
/* 02E05C 8002E4AC 00000000 */  nop
/* 02E060 8002E4B0 45020004 */  bc1fl       .L8002E4C4
/* 02E064 8002E4B4 462E0301 */   sub.d      $f12, $f0, $f14
/* 02E068 8002E4B8 10000003 */  b           .L8002E4C8
/* 02E06C 8002E4BC 462E0301 */   sub.d      $f12, $f0, $f14
/* 02E070 8002E4C0 462E0301 */  sub.d       $f12, $f0, $f14
.L8002E4C4:
/* 02E074 8002E4C4 46206307 */  neg.d       $f12, $f12
.L8002E4C8:
/* 02E078 8002E4C8 462C7281 */  sub.d       $f10, $f14, $f12
/* 02E07C 8002E4CC 44808000 */  mtc1        $zero, $f16
/* 02E080 8002E4D0 3C014200 */  lui         $at, 0x4200
/* 02E084 8002E4D4 44812000 */  mtc1        $at, $f4
/* 02E088 8002E4D8 46305480 */  add.d       $f18, $f10, $f16
/* 02E08C 8002E4DC 8E020000 */  lw          $v0, 0x0($s0)
/* 02E090 8002E4E0 2418FFFF */  addiu       $t8, $zero, -0x1
/* 02E094 8002E4E4 241900A0 */  addiu       $t9, $zero, 0xa0
/* 02E098 8002E4E8 46209020 */  cvt.s.d     $f0, $f18
/* 02E09C 8002E4EC 244D0008 */  addiu       $t5, $v0, 0x8
/* 02E0A0 8002E4F0 AE0D0000 */  sw          $t5, 0x0($s0)
/* 02E0A4 8002E4F4 AC580004 */  sw          $t8, 0x4($v0)
/* 02E0A8 8002E4F8 46002182 */  mul.s       $f6, $f4, $f0
/* 02E0AC 8002E4FC AC4E0000 */  sw          $t6, 0x0($v0)
/* 02E0B0 8002E500 240E0020 */  addiu       $t6, $zero, 0x20
/* 02E0B4 8002E504 24180020 */  addiu       $t8, $zero, 0x20
/* 02E0B8 8002E508 240D0044 */  addiu       $t5, $zero, 0x44
/* 02E0BC 8002E50C AFB80014 */  sw          $t8, 0x14($sp)
/* 02E0C0 8002E510 AFAE0010 */  sw          $t6, 0x10($sp)
/* 02E0C4 8002E514 4600320D */  trunc.w.s   $f8, $f6
/* 02E0C8 8002E518 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 02E0CC 8002E51C E7A00018 */  swc1        $f0, 0x18($sp)
/* 02E0D0 8002E520 02002025 */  move        $a0, $s0
/* 02E0D4 8002E524 44084000 */  mfc1        $t0, $f8
/* 02E0D8 8002E528 240500F7 */  addiu       $a1, $zero, 0xf7
/* 02E0DC 8002E52C 00401825 */  move        $v1, $v0
/* 02E0E0 8002E530 05010003 */  bgez        $t0, .L8002E540
/* 02E0E4 8002E534 00086043 */   sra        $t4, $t0, 1
/* 02E0E8 8002E538 25010001 */  addiu       $at, $t0, 0x1
/* 02E0EC 8002E53C 00016043 */  sra         $t4, $at, 1
.L8002E540:
/* 02E0F0 8002E540 01804025 */  move        $t0, $t4
/* 02E0F4 8002E544 032C3023 */  subu        $a2, $t9, $t4
/* 02E0F8 8002E548 0C00B78C */  jal         func_8002DE30
/* 02E0FC 8002E54C 01AC3823 */   subu       $a3, $t5, $t4
/* 02E100 8002E550 3C013FE0 */  lui         $at, 0x3fe0
/* 02E104 8002E554 44817800 */  mtc1        $at, $f15
/* 02E108 8002E558 44807000 */  mtc1        $zero, $f14
/* 02E10C 8002E55C 3C04800F */  lui         $a0, %hi(D_800F6320)
/* 02E110 8002E560 10000019 */  b           .L8002E5C8
/* 02E114 8002E564 8C846320 */   lw         $a0, %lo(D_800F6320)($a0)
.L8002E568:
/* 02E118 8002E568 8E020000 */  lw          $v0, 0x0($s0)
.L8002E56C:
/* 02E11C 8002E56C 3C013F80 */  lui         $at, 0x3f80
/* 02E120 8002E570 3C0CFA00 */  lui         $t4, 0xfa00
/* 02E124 8002E574 244F0008 */  addiu       $t7, $v0, 0x8
/* 02E128 8002E578 AE0F0000 */  sw          $t7, 0x0($s0)
/* 02E12C 8002E57C 2419FF80 */  addiu       $t9, $zero, -0x80
/* 02E130 8002E580 44810000 */  mtc1        $at, $f0
/* 02E134 8002E584 AC590004 */  sw          $t9, 0x4($v0)
/* 02E138 8002E588 AC4C0000 */  sw          $t4, 0x0($v0)
/* 02E13C 8002E58C 240D0020 */  addiu       $t5, $zero, 0x20
/* 02E140 8002E590 240E0020 */  addiu       $t6, $zero, 0x20
/* 02E144 8002E594 AFAE0014 */  sw          $t6, 0x14($sp)
/* 02E148 8002E598 AFAD0010 */  sw          $t5, 0x10($sp)
/* 02E14C 8002E59C 02002025 */  move        $a0, $s0
/* 02E150 8002E5A0 24060090 */  addiu       $a2, $zero, 0x90
/* 02E154 8002E5A4 24070034 */  addiu       $a3, $zero, 0x34
/* 02E158 8002E5A8 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 02E15C 8002E5AC 0C00B78C */  jal         func_8002DE30
/* 02E160 8002E5B0 E7A00018 */   swc1       $f0, 0x18($sp)
/* 02E164 8002E5B4 3C013FE0 */  lui         $at, 0x3fe0
/* 02E168 8002E5B8 3C04800F */  lui         $a0, %hi(D_800F6320)
/* 02E16C 8002E5BC 44817800 */  mtc1        $at, $f15
/* 02E170 8002E5C0 44807000 */  mtc1        $zero, $f14
/* 02E174 8002E5C4 8C846320 */  lw          $a0, %lo(D_800F6320)($a0)
.L8002E5C8:
/* 02E178 8002E5C8 1480004E */  bnez        $a0, .L8002E704
/* 02E17C 8002E5CC 3C18800F */   lui        $t8, %hi(D_800F6324)
/* 02E180 8002E5D0 8F186324 */  lw          $t8, %lo(D_800F6324)($t8)
/* 02E184 8002E5D4 24010003 */  addiu       $at, $zero, 0x3
/* 02E188 8002E5D8 3C0F800F */  lui         $t7, %hi(D_800F6444)
/* 02E18C 8002E5DC 17010036 */  bne         $t8, $at, .L8002E6B8
/* 02E190 8002E5E0 240500F4 */   addiu      $a1, $zero, 0xf4
/* 02E194 8002E5E4 8DEF6444 */  lw          $t7, %lo(D_800F6444)($t7)
/* 02E198 8002E5E8 C7AA0094 */  lwc1        $f10, 0x94($sp)
/* 02E19C 8002E5EC 3C014396 */  lui         $at, 0x4396
/* 02E1A0 8002E5F0 11E40031 */  beq         $t7, $a0, .L8002E6B8
/* 02E1A4 8002E5F4 3C19FA00 */   lui        $t9, 0xfa00
/* 02E1A8 8002E5F8 44818000 */  mtc1        $at, $f16
/* 02E1AC 8002E5FC 3C013FF0 */  lui         $at, 0x3ff0
/* 02E1B0 8002E600 44813800 */  mtc1        $at, $f7
/* 02E1B4 8002E604 46105483 */  div.s       $f18, $f10, $f16
/* 02E1B8 8002E608 46009021 */  cvt.d.s     $f0, $f18
/* 02E1BC 8002E60C 4620703E */  c.le.d      $f14, $f0
/* 02E1C0 8002E610 462E0081 */  sub.d       $f2, $f0, $f14
/* 02E1C4 8002E614 45020004 */  bc1fl       .L8002E628
/* 02E1C8 8002E618 46201307 */   neg.d      $f12, $f2
/* 02E1CC 8002E61C 10000002 */  b           .L8002E628
/* 02E1D0 8002E620 46201306 */   mov.d      $f12, $f2
/* 02E1D4 8002E624 46201307 */  neg.d       $f12, $f2
.L8002E628:
/* 02E1D8 8002E628 462C7101 */  sub.d       $f4, $f14, $f12
/* 02E1DC 8002E62C 44803000 */  mtc1        $zero, $f6
/* 02E1E0 8002E630 3C014200 */  lui         $at, 0x4200
/* 02E1E4 8002E634 44815000 */  mtc1        $at, $f10
/* 02E1E8 8002E638 46262200 */  add.d       $f8, $f4, $f6
/* 02E1EC 8002E63C 8E020000 */  lw          $v0, 0x0($s0)
/* 02E1F0 8002E640 240DFFFF */  addiu       $t5, $zero, -0x1
/* 02E1F4 8002E644 240F00A0 */  addiu       $t7, $zero, 0xa0
/* 02E1F8 8002E648 46204020 */  cvt.s.d     $f0, $f8
/* 02E1FC 8002E64C 244C0008 */  addiu       $t4, $v0, 0x8
/* 02E200 8002E650 AE0C0000 */  sw          $t4, 0x0($s0)
/* 02E204 8002E654 AC4D0004 */  sw          $t5, 0x4($v0)
/* 02E208 8002E658 46005402 */  mul.s       $f16, $f10, $f0
/* 02E20C 8002E65C AC590000 */  sw          $t9, 0x0($v0)
/* 02E210 8002E660 24190020 */  addiu       $t9, $zero, 0x20
/* 02E214 8002E664 240D0020 */  addiu       $t5, $zero, 0x20
/* 02E218 8002E668 240C00C4 */  addiu       $t4, $zero, 0xc4
/* 02E21C 8002E66C AFAD0014 */  sw          $t5, 0x14($sp)
/* 02E220 8002E670 AFB90010 */  sw          $t9, 0x10($sp)
/* 02E224 8002E674 4600848D */  trunc.w.s   $f18, $f16
/* 02E228 8002E678 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 02E22C 8002E67C E7A00018 */  swc1        $f0, 0x18($sp)
/* 02E230 8002E680 02002025 */  move        $a0, $s0
/* 02E234 8002E684 44089000 */  mfc1        $t0, $f18
/* 02E238 8002E688 240500F4 */  addiu       $a1, $zero, 0xf4
/* 02E23C 8002E68C 00401825 */  move        $v1, $v0
/* 02E240 8002E690 05010003 */  bgez        $t0, .L8002E6A0
/* 02E244 8002E694 0008C043 */   sra        $t8, $t0, 1
/* 02E248 8002E698 25010001 */  addiu       $at, $t0, 0x1
/* 02E24C 8002E69C 0001C043 */  sra         $t8, $at, 1
.L8002E6A0:
/* 02E250 8002E6A0 03004025 */  move        $t0, $t8
/* 02E254 8002E6A4 01F83023 */  subu        $a2, $t7, $t8
/* 02E258 8002E6A8 0C00B78C */  jal         func_8002DE30
/* 02E25C 8002E6AC 01983823 */   subu       $a3, $t4, $t8
/* 02E260 8002E6B0 10000014 */  b           .L8002E704
/* 02E264 8002E6B4 00000000 */   nop
.L8002E6B8:
/* 02E268 8002E6B8 8E020000 */  lw          $v0, 0x0($s0)
/* 02E26C 8002E6BC 3C013F80 */  lui         $at, 0x3f80
/* 02E270 8002E6C0 3C18FA00 */  lui         $t8, 0xfa00
/* 02E274 8002E6C4 244E0008 */  addiu       $t6, $v0, 0x8
/* 02E278 8002E6C8 AE0E0000 */  sw          $t6, 0x0($s0)
/* 02E27C 8002E6CC 240FFF80 */  addiu       $t7, $zero, -0x80
/* 02E280 8002E6D0 44810000 */  mtc1        $at, $f0
/* 02E284 8002E6D4 AC4F0004 */  sw          $t7, 0x4($v0)
/* 02E288 8002E6D8 AC580000 */  sw          $t8, 0x0($v0)
/* 02E28C 8002E6DC 240C0020 */  addiu       $t4, $zero, 0x20
/* 02E290 8002E6E0 24190020 */  addiu       $t9, $zero, 0x20
/* 02E294 8002E6E4 AFB90014 */  sw          $t9, 0x14($sp)
/* 02E298 8002E6E8 AFAC0010 */  sw          $t4, 0x10($sp)
/* 02E29C 8002E6EC 02002025 */  move        $a0, $s0
/* 02E2A0 8002E6F0 24060090 */  addiu       $a2, $zero, 0x90
/* 02E2A4 8002E6F4 240700B4 */  addiu       $a3, $zero, 0xb4
/* 02E2A8 8002E6F8 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 02E2AC 8002E6FC 0C00B78C */  jal         func_8002DE30
/* 02E2B0 8002E700 E7A00018 */   swc1       $f0, 0x18($sp)
.L8002E704:
/* 02E2B4 8002E704 3C0D800F */  lui         $t5, %hi(D_800F631C)
/* 02E2B8 8002E708 8DAD631C */  lw          $t5, %lo(D_800F631C)($t5)
/* 02E2BC 8002E70C 3C0E800F */  lui         $t6, %hi(D_800F6320)
/* 02E2C0 8002E710 55A00067 */  bnel        $t5, $zero, .L8002E8B0
/* 02E2C4 8002E714 8FBF002C */   lw         $ra, 0x2c($sp)
/* 02E2C8 8002E718 8DCE6320 */  lw          $t6, %lo(D_800F6320)($t6)
/* 02E2CC 8002E71C 3C04800F */  lui         $a0, %hi(D_800F6334)
/* 02E2D0 8002E720 000EC080 */  sll         $t8, $t6, 2
/* 02E2D4 8002E724 030EC021 */  addu        $t8, $t8, $t6
/* 02E2D8 8002E728 0018C100 */  sll         $t8, $t8, 4
/* 02E2DC 8002E72C 00982021 */  addu        $a0, $a0, $t8
/* 02E2E0 8002E730 0C001A23 */  jal         func_8000688C
/* 02E2E4 8002E734 8C846334 */   lw         $a0, %lo(D_800F6334)($a0)
/* 02E2E8 8002E738 1040005C */  beqz        $v0, .L8002E8AC
/* 02E2EC 8002E73C 3C04800F */   lui        $a0, %hi(D_800F6320)
/* 02E2F0 8002E740 8C846320 */  lw          $a0, %lo(D_800F6320)($a0)
/* 02E2F4 8002E744 3C014010 */  lui         $at, 0x4010
/* 02E2F8 8002E748 3C0D800F */  lui         $t5, %hi(D_800F6320)
/* 02E2FC 8002E74C 14800021 */  bnez        $a0, .L8002E7D4
/* 02E300 8002E750 00000000 */   nop
/* 02E304 8002E754 C4440024 */  lwc1        $f4, 0x24($v0)
/* 02E308 8002E758 44816800 */  mtc1        $at, $f13
/* 02E30C 8002E75C 44806000 */  mtc1        $zero, $f12
/* 02E310 8002E760 460021A1 */  cvt.d.s     $f6, $f4
/* 02E314 8002E764 3C013FF0 */  lui         $at, 0x3ff0
/* 02E318 8002E768 462C3202 */  mul.d       $f8, $f6, $f12
/* 02E31C 8002E76C 44815800 */  mtc1        $at, $f11
/* 02E320 8002E770 44805000 */  mtc1        $zero, $f10
/* 02E324 8002E774 3C013F80 */  lui         $at, 0x3f80
/* 02E328 8002E778 462040A0 */  cvt.s.d     $f2, $f8
/* 02E32C 8002E77C 46001021 */  cvt.d.s     $f0, $f2
/* 02E330 8002E780 462A003C */  c.lt.d      $f0, $f10
/* 02E334 8002E784 00000000 */  nop
/* 02E338 8002E788 45020005 */  bc1fl       .L8002E7A0
/* 02E33C 8002E78C 4620603C */   c.lt.d     $f12, $f0
/* 02E340 8002E790 44811000 */  mtc1        $at, $f2
/* 02E344 8002E794 10000008 */  b           .L8002E7B8
/* 02E348 8002E798 8E020000 */   lw         $v0, 0x0($s0)
/* 02E34C 8002E79C 4620603C */  c.lt.d      $f12, $f0
.L8002E7A0:
/* 02E350 8002E7A0 3C014080 */  lui         $at, 0x4080
/* 02E354 8002E7A4 45020004 */  bc1fl       .L8002E7B8
/* 02E358 8002E7A8 8E020000 */   lw         $v0, 0x0($s0)
/* 02E35C 8002E7AC 44811000 */  mtc1        $at, $f2
/* 02E360 8002E7B0 00000000 */  nop
/* 02E364 8002E7B4 8E020000 */  lw          $v0, 0x0($s0)
.L8002E7B8:
/* 02E368 8002E7B8 3C0CFA00 */  lui         $t4, 0xfa00
/* 02E36C 8002E7BC 2419FFC8 */  addiu       $t9, $zero, -0x38
/* 02E370 8002E7C0 244F0008 */  addiu       $t7, $v0, 0x8
/* 02E374 8002E7C4 AE0F0000 */  sw          $t7, 0x0($s0)
/* 02E378 8002E7C8 AC590004 */  sw          $t9, 0x4($v0)
/* 02E37C 8002E7CC 1000001D */  b           .L8002E844
/* 02E380 8002E7D0 AC4C0000 */   sw         $t4, 0x0($v0)
.L8002E7D4:
/* 02E384 8002E7D4 8DAD6320 */  lw          $t5, %lo(D_800F6320)($t5)
/* 02E388 8002E7D8 3C02800F */  lui         $v0, %hi(D_800F6330)
/* 02E38C 8002E7DC 3C038013 */  lui         $v1, %hi(D_80129390 + 0x1)
/* 02E390 8002E7E0 000D7080 */  sll         $t6, $t5, 2
/* 02E394 8002E7E4 01CD7021 */  addu        $t6, $t6, $t5
/* 02E398 8002E7E8 000E7100 */  sll         $t6, $t6, 4
/* 02E39C 8002E7EC 004E1021 */  addu        $v0, $v0, $t6
/* 02E3A0 8002E7F0 8C426330 */  lw          $v0, %lo(D_800F6330)($v0)
/* 02E3A4 8002E7F4 24010002 */  addiu       $at, $zero, 0x2
/* 02E3A8 8002E7F8 0002C0C0 */  sll         $t8, $v0, 3
/* 02E3AC 8002E7FC 0302C023 */  subu        $t8, $t8, $v0
/* 02E3B0 8002E800 0018C080 */  sll         $t8, $t8, 2
/* 02E3B4 8002E804 0302C021 */  addu        $t8, $t8, $v0
/* 02E3B8 8002E808 0018C080 */  sll         $t8, $t8, 2
/* 02E3BC 8002E80C 00781821 */  addu        $v1, $v1, $t8
/* 02E3C0 8002E810 80639391 */  lb          $v1, %lo(D_80129390 + 0x1)($v1)
/* 02E3C4 8002E814 10610025 */  beq         $v1, $at, .L8002E8AC
/* 02E3C8 8002E818 24010005 */   addiu      $at, $zero, 0x5
/* 02E3CC 8002E81C 10610023 */  beq         $v1, $at, .L8002E8AC
/* 02E3D0 8002E820 3C0CFA00 */   lui        $t4, 0xfa00
/* 02E3D4 8002E824 8E020000 */  lw          $v0, 0x0($s0)
/* 02E3D8 8002E828 3C014000 */  lui         $at, 0x4000
/* 02E3DC 8002E82C 241996C8 */  addiu       $t9, $zero, -0x6938
/* 02E3E0 8002E830 244F0008 */  addiu       $t7, $v0, 0x8
/* 02E3E4 8002E834 AE0F0000 */  sw          $t7, 0x0($s0)
/* 02E3E8 8002E838 44811000 */  mtc1        $at, $f2
/* 02E3EC 8002E83C AC590004 */  sw          $t9, 0x4($v0)
/* 02E3F0 8002E840 AC4C0000 */  sw          $t4, 0x0($v0)
.L8002E844:
/* 02E3F4 8002E844 3C014200 */  lui         $at, 0x4200
/* 02E3F8 8002E848 44818000 */  mtc1        $at, $f16
/* 02E3FC 8002E84C 3C05800A */  lui         $a1, %hi(D_8009FAB4)
/* 02E400 8002E850 24A5FAB4 */  addiu       $a1, $a1, %lo(D_8009FAB4)
/* 02E404 8002E854 46028482 */  mul.s       $f18, $f16, $f2
/* 02E408 8002E858 241800A0 */  addiu       $t8, $zero, 0xa0
/* 02E40C 8002E85C 240C0096 */  addiu       $t4, $zero, 0x96
/* 02E410 8002E860 24030020 */  addiu       $v1, $zero, 0x20
/* 02E414 8002E864 ACA3000C */  sw          $v1, 0xc($a1)
/* 02E418 8002E868 ACA30010 */  sw          $v1, 0x10($a1)
/* 02E41C 8002E86C E4A2001C */  swc1        $f2, 0x1c($a1)
/* 02E420 8002E870 4600910D */  trunc.w.s   $f4, $f18
/* 02E424 8002E874 E4A20020 */  swc1        $f2, 0x20($a1)
/* 02E428 8002E878 24040005 */  addiu       $a0, $zero, 0x5
/* 02E42C 8002E87C 02003025 */  move        $a2, $s0
/* 02E430 8002E880 44022000 */  mfc1        $v0, $f4
/* 02E434 8002E884 00000000 */  nop
/* 02E438 8002E888 04410003 */  bgez        $v0, .L8002E898
/* 02E43C 8002E88C 00027043 */   sra        $t6, $v0, 1
/* 02E440 8002E890 24410001 */  addiu       $at, $v0, 0x1
/* 02E444 8002E894 00017043 */  sra         $t6, $at, 1
.L8002E898:
/* 02E448 8002E898 030E7823 */  subu        $t7, $t8, $t6
/* 02E44C 8002E89C 018EC823 */  subu        $t9, $t4, $t6
/* 02E450 8002E8A0 ACAF0004 */  sw          $t7, 0x4($a1)
/* 02E454 8002E8A4 0C002AE5 */  jal         func_8000AB94
/* 02E458 8002E8A8 ACB90008 */   sw         $t9, 0x8($a1)
.L8002E8AC:
/* 02E45C 8002E8AC 8FBF002C */  lw          $ra, 0x2c($sp)
.L8002E8B0:
/* 02E460 8002E8B0 8FB00028 */  lw          $s0, 0x28($sp)
/* 02E464 8002E8B4 27BD00B8 */  addiu       $sp, $sp, 0xb8
/* 02E468 8002E8B8 03E00008 */  jr          $ra
/* 02E46C 8002E8BC 00000000 */   nop

glabel func_8002E8C0 # 48
/* 02E470 8002E8C0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02E474 8002E8C4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 02E478 8002E8C8 AFA40028 */  sw          $a0, 0x28($sp)
/* 02E47C 8002E8CC AFB30020 */  sw          $s3, 0x20($sp)
/* 02E480 8002E8D0 AFB2001C */  sw          $s2, 0x1c($sp)
/* 02E484 8002E8D4 AFB10018 */  sw          $s1, 0x18($sp)
/* 02E488 8002E8D8 AFB00014 */  sw          $s0, 0x14($sp)
/* 02E48C 8002E8DC 0C002033 */  jal         func_800080CC
/* 02E490 8002E8E0 00002025 */   move       $a0, $zero
/* 02E494 8002E8E4 3C02800A */  lui         $v0, %hi(D_8009FAFC)
/* 02E498 8002E8E8 2442FAFC */  addiu       $v0, $v0, %lo(D_8009FAFC)
/* 02E49C 8002E8EC 90440000 */  lbu         $a0, 0x0($v0)
/* 02E4A0 8002E8F0 90450001 */  lbu         $a1, 0x1($v0)
/* 02E4A4 8002E8F4 90460002 */  lbu         $a2, 0x2($v0)
/* 02E4A8 8002E8F8 0C000B00 */  jal         func_80002C00
/* 02E4AC 8002E8FC 90470003 */   lbu        $a3, 0x3($v0)
/* 02E4B0 8002E900 3C10800B */  lui         $s0, %hi(D_800B1A78)
/* 02E4B4 8002E904 26101A78 */  addiu       $s0, $s0, %lo(D_800B1A78)
/* 02E4B8 8002E908 8E040000 */  lw          $a0, 0x0($s0)
/* 02E4BC 8002E90C 0C0009A7 */  jal         func_8000269C
/* 02E4C0 8002E910 00002825 */   move       $a1, $zero
/* 02E4C4 8002E914 0C0009DA */  jal         func_80002768
/* 02E4C8 8002E918 8E040000 */   lw         $a0, 0x0($s0)
/* 02E4CC 8002E91C 0C000A1D */  jal         func_80002874
/* 02E4D0 8002E920 8E040000 */   lw         $a0, 0x0($s0)
/* 02E4D4 8002E924 3C03800F */  lui         $v1, %hi(D_800F6408)
/* 02E4D8 8002E928 24636408 */  addiu       $v1, $v1, %lo(D_800F6408)
/* 02E4DC 8002E92C 8C620000 */  lw          $v0, 0x0($v1)
/* 02E4E0 8002E930 28410002 */  slti        $at, $v0, 0x2
/* 02E4E4 8002E934 10200003 */  beqz        $at, .L8002E944
/* 02E4E8 8002E938 244E0001 */   addiu      $t6, $v0, 0x1
/* 02E4EC 8002E93C 1000003D */  b           .L8002EA34
/* 02E4F0 8002E940 AC6E0000 */   sw         $t6, 0x0($v1)
.L8002E944:
/* 02E4F4 8002E944 3C0F800F */  lui         $t7, %hi(D_800F6320)
/* 02E4F8 8002E948 8DEF6320 */  lw          $t7, %lo(D_800F6320)($t7)
/* 02E4FC 8002E94C 3C13800F */  lui         $s3, %hi(D_800F6310)
/* 02E500 8002E950 26736310 */  addiu       $s3, $s3, %lo(D_800F6310)
/* 02E504 8002E954 000FC080 */  sll         $t8, $t7, 2
/* 02E508 8002E958 030FC021 */  addu        $t8, $t8, $t7
/* 02E50C 8002E95C 0018C100 */  sll         $t8, $t8, 4
/* 02E510 8002E960 02789021 */  addu        $s2, $s3, $t8
/* 02E514 8002E964 3C04800F */  lui         $a0, %hi(D_800F6310)
/* 02E518 8002E968 26520020 */  addiu       $s2, $s2, 0x20
/* 02E51C 8002E96C 8C846310 */  lw          $a0, %lo(D_800F6310)($a0)
/* 02E520 8002E970 0C00205F */  jal         func_8000817C
/* 02E524 8002E974 24052000 */   addiu      $a1, $zero, 0x2000
/* 02E528 8002E978 0C00B6F3 */  jal         func_8002DBCC
/* 02E52C 8002E97C 00000000 */   nop
/* 02E530 8002E980 02408825 */  move        $s1, $s2
/* 02E534 8002E984 2412000A */  addiu       $s2, $zero, 0xa
/* 02E538 8002E988 00008025 */  move        $s0, $zero
.L8002E98C:
/* 02E53C 8002E98C 8E240004 */  lw          $a0, 0x4($s1)
/* 02E540 8002E990 0010C880 */  sll         $t9, $s0, 2
/* 02E544 8002E994 02794021 */  addu        $t0, $s3, $t9
/* 02E548 8002E998 14800005 */  bnez        $a0, .L8002E9B0
/* 02E54C 8002E99C 00000000 */   nop
/* 02E550 8002E9A0 0C001A23 */  jal         func_8000688C
/* 02E554 8002E9A4 8D0400C0 */   lw         $a0, 0xc0($t0)
/* 02E558 8002E9A8 10000004 */  b           .L8002E9BC
/* 02E55C 8002E9AC 00402025 */   move       $a0, $v0
.L8002E9B0:
/* 02E560 8002E9B0 0C001A23 */  jal         func_8000688C
/* 02E564 8002E9B4 00000000 */   nop
/* 02E568 8002E9B8 00402025 */  move        $a0, $v0
.L8002E9BC:
/* 02E56C 8002E9BC 50400004 */  beql        $v0, $zero, .L8002E9D0
/* 02E570 8002E9C0 26100001 */   addiu      $s0, $s0, 0x1
/* 02E574 8002E9C4 0C00205F */  jal         func_8000817C
/* 02E578 8002E9C8 24052000 */   addiu      $a1, $zero, 0x2000
/* 02E57C 8002E9CC 26100001 */  addiu       $s0, $s0, 0x1
.L8002E9D0:
/* 02E580 8002E9D0 1612FFEE */  bne         $s0, $s2, .L8002E98C
/* 02E584 8002E9D4 26310008 */   addiu      $s1, $s1, 0x8
/* 02E588 8002E9D8 3C04800F */  lui         $a0, %hi(D_800F3EA4)
/* 02E58C 8002E9DC 8C843EA4 */  lw          $a0, %lo(D_800F3EA4)($a0)
/* 02E590 8002E9E0 10800007 */  beqz        $a0, .L8002EA00
/* 02E594 8002E9E4 00000000 */   nop
/* 02E598 8002E9E8 0C001A23 */  jal         func_8000688C
/* 02E59C 8002E9EC 00000000 */   nop
/* 02E5A0 8002E9F0 10400003 */  beqz        $v0, .L8002EA00
/* 02E5A4 8002E9F4 00402025 */   move       $a0, $v0
/* 02E5A8 8002E9F8 0C00205F */  jal         func_8000817C
/* 02E5AC 8002E9FC 24052000 */   addiu      $a1, $zero, 0x2000
.L8002EA00:
/* 02E5B0 8002EA00 3C09800F */  lui         $t1, %hi(D_800F6324)
/* 02E5B4 8002EA04 8D296324 */  lw          $t1, %lo(D_800F6324)($t1)
/* 02E5B8 8002EA08 24010005 */  addiu       $at, $zero, 0x5
/* 02E5BC 8002EA0C 15210005 */  bne         $t1, $at, .L8002EA24
/* 02E5C0 8002EA10 00000000 */   nop
/* 02E5C4 8002EA14 0C00A782 */  jal         func_80029E08
/* 02E5C8 8002EA18 00000000 */   nop
/* 02E5CC 8002EA1C 10000006 */  b           .L8002EA38
/* 02E5D0 8002EA20 8FBF0024 */   lw         $ra, 0x24($sp)
.L8002EA24:
/* 02E5D4 8002EA24 0C00B724 */  jal         func_8002DC90
/* 02E5D8 8002EA28 8FA40028 */   lw         $a0, 0x28($sp)
/* 02E5DC 8002EA2C 0C00B835 */  jal         func_8002E0D4
/* 02E5E0 8002EA30 8FA40028 */   lw         $a0, 0x28($sp)
.L8002EA34:
/* 02E5E4 8002EA34 8FBF0024 */  lw          $ra, 0x24($sp)
.L8002EA38:
/* 02E5E8 8002EA38 8FB00014 */  lw          $s0, 0x14($sp)
/* 02E5EC 8002EA3C 8FB10018 */  lw          $s1, 0x18($sp)
/* 02E5F0 8002EA40 8FB2001C */  lw          $s2, 0x1c($sp)
/* 02E5F4 8002EA44 8FB30020 */  lw          $s3, 0x20($sp)
/* 02E5F8 8002EA48 03E00008 */  jr          $ra
/* 02E5FC 8002EA4C 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8002EA50 # 49
/* 02E600 8002EA50 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 02E604 8002EA54 AFB00018 */  sw          $s0, 0x18($sp)
/* 02E608 8002EA58 00808025 */  move        $s0, $a0
/* 02E60C 8002EA5C AFBF0024 */  sw          $ra, 0x24($sp)
/* 02E610 8002EA60 AFB1001C */  sw          $s1, 0x1c($sp)
/* 02E614 8002EA64 00A08825 */  move        $s1, $a1
/* 02E618 8002EA68 AFB20020 */  sw          $s2, 0x20($sp)
/* 02E61C 8002EA6C 0C00061A */  jal         func_80001868
/* 02E620 8002EA70 00002025 */   move       $a0, $zero
/* 02E624 8002EA74 0C0026E4 */  jal         func_80009B90
/* 02E628 8002EA78 24040001 */   addiu      $a0, $zero, 0x1
/* 02E62C 8002EA7C 3C04800F */  lui         $a0, %hi(D_800F3EA4)
/* 02E630 8002EA80 0C001A23 */  jal         func_8000688C
/* 02E634 8002EA84 8C843EA4 */   lw         $a0, %lo(D_800F3EA4)($a0)
/* 02E638 8002EA88 10400012 */  beqz        $v0, .L8002EAD4
/* 02E63C 8002EA8C AFA2002C */   sw         $v0, 0x2c($sp)
/* 02E640 8002EA90 12200010 */  beqz        $s1, .L8002EAD4
/* 02E644 8002EA94 8C440054 */   lw         $a0, 0x54($v0)
/* 02E648 8002EA98 848E0004 */  lh          $t6, 0x4($a0)
/* 02E64C 8002EA9C 3C188013 */  lui         $t8, %hi(D_80129390 + 0x1)
/* 02E650 8002EAA0 24010001 */  addiu       $at, $zero, 0x1
/* 02E654 8002EAA4 000E78C0 */  sll         $t7, $t6, 3
/* 02E658 8002EAA8 01EE7823 */  subu        $t7, $t7, $t6
/* 02E65C 8002EAAC 000F7880 */  sll         $t7, $t7, 2
/* 02E660 8002EAB0 01EE7821 */  addu        $t7, $t7, $t6
/* 02E664 8002EAB4 000F7880 */  sll         $t7, $t7, 2
/* 02E668 8002EAB8 030FC021 */  addu        $t8, $t8, $t7
/* 02E66C 8002EABC 83189391 */  lb          $t8, %lo(D_80129390 + 0x1)($t8)
/* 02E670 8002EAC0 24100001 */  addiu       $s0, $zero, 0x1
/* 02E674 8002EAC4 17010003 */  bne         $t8, $at, .L8002EAD4
/* 02E678 8002EAC8 00000000 */   nop
/* 02E67C 8002EACC 10000001 */  b           .L8002EAD4
/* 02E680 8002EAD0 00008025 */   move       $s0, $zero
.L8002EAD4:
/* 02E684 8002EAD4 2401FFFF */  addiu       $at, $zero, -0x1
/* 02E688 8002EAD8 12010003 */  beq         $s0, $at, .L8002EAE8
/* 02E68C 8002EADC 3C12800F */   lui        $s2, %hi(D_800F6310)
/* 02E690 8002EAE0 3C01800F */  lui         $at, %hi(D_800F6320)
/* 02E694 8002EAE4 AC306320 */  sw          $s0, %lo(D_800F6320)($at)
.L8002EAE8:
/* 02E698 8002EAE8 26526310 */  addiu       $s2, $s2, %lo(D_800F6310)
/* 02E69C 8002EAEC 02402025 */  move        $a0, $s2
/* 02E6A0 8002EAF0 0C00B415 */  jal         func_8002D054
/* 02E6A4 8002EAF4 00002825 */   move       $a1, $zero
/* 02E6A8 8002EAF8 0C00B5E7 */  jal         func_8002D79C
/* 02E6AC 8002EAFC 02402025 */   move       $a0, $s2
/* 02E6B0 8002EB00 0C00B190 */  jal         func_8002C640
/* 02E6B4 8002EB04 02402025 */   move       $a0, $s2
/* 02E6B8 8002EB08 3C04800F */  lui         $a0, %hi(D_800F6320)
/* 02E6BC 8002EB0C 8C846320 */  lw          $a0, %lo(D_800F6320)($a0)
/* 02E6C0 8002EB10 3C01800F */  lui         $at, %hi(D_800F6408)
/* 02E6C4 8002EB14 AC206408 */  sw          $zero, %lo(D_800F6408)($at)
/* 02E6C8 8002EB18 0004C880 */  sll         $t9, $a0, 2
/* 02E6CC 8002EB1C 0324C821 */  addu        $t9, $t9, $a0
/* 02E6D0 8002EB20 0019C900 */  sll         $t9, $t9, 4
/* 02E6D4 8002EB24 02591021 */  addu        $v0, $s2, $t9
/* 02E6D8 8002EB28 3C01800F */  lui         $at, %hi(D_800F6444)
/* 02E6DC 8002EB2C 24510020 */  addiu       $s1, $v0, 0x20
/* 02E6E0 8002EB30 24120050 */  addiu       $s2, $zero, 0x50
/* 02E6E4 8002EB34 00008025 */  move        $s0, $zero
/* 02E6E8 8002EB38 AC246444 */  sw          $a0, %lo(D_800F6444)($at)
.L8002EB3C:
/* 02E6EC 8002EB3C 0C001A23 */  jal         func_8000688C
/* 02E6F0 8002EB40 8E240004 */   lw         $a0, 0x4($s1)
/* 02E6F4 8002EB44 26100008 */  addiu       $s0, $s0, 0x8
/* 02E6F8 8002EB48 1612FFFC */  bne         $s0, $s2, .L8002EB3C
/* 02E6FC 8002EB4C 26310008 */   addiu      $s1, $s1, 0x8
/* 02E700 8002EB50 8FA4002C */  lw          $a0, 0x2c($sp)
/* 02E704 8002EB54 10800007 */  beqz        $a0, .L8002EB74
/* 02E708 8002EB58 00000000 */   nop
/* 02E70C 8002EB5C 0C001DF8 */  jal         func_800077E0
/* 02E710 8002EB60 24052000 */   addiu      $a1, $zero, 0x2000
/* 02E714 8002EB64 3C04800F */  lui         $a0, %hi(D_800F3EA4)
/* 02E718 8002EB68 8C843EA4 */  lw          $a0, %lo(D_800F3EA4)($a0)
/* 02E71C 8002EB6C 0C00B16E */  jal         func_8002C5B8
/* 02E720 8002EB70 3C053F00 */   lui        $a1, 0x3f00
.L8002EB74:
/* 02E724 8002EB74 0C00B255 */  jal         func_8002C954
/* 02E728 8002EB78 00000000 */   nop
/* 02E72C 8002EB7C 0C0005EC */  jal         func_800017B0
/* 02E730 8002EB80 24040001 */   addiu      $a0, $zero, 0x1
/* 02E734 8002EB84 0C002671 */  jal         func_800099C4
/* 02E738 8002EB88 00000000 */   nop
/* 02E73C 8002EB8C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 02E740 8002EB90 2469F448 */  addiu       $t1, $v1, -0xbb8
/* 02E744 8002EB94 3C01800F */  lui         $at, %hi(D_800F6448)
/* 02E748 8002EB98 8FB00018 */  lw          $s0, 0x18($sp)
/* 02E74C 8002EB9C 8FB1001C */  lw          $s1, 0x1c($sp)
/* 02E750 8002EBA0 8FB20020 */  lw          $s2, 0x20($sp)
/* 02E754 8002EBA4 AC296448 */  sw          $t1, %lo(D_800F6448)($at)
/* 02E758 8002EBA8 03E00008 */  jr          $ra
/* 02E75C 8002EBAC 27BD0038 */   addiu      $sp, $sp, 0x38

glabel func_8002EBB0 # 50
/* 02E760 8002EBB0 3C02800F */  lui         $v0, %hi(D_800F6310)
/* 02E764 8002EBB4 24426310 */  addiu       $v0, $v0, %lo(D_800F6310)
/* 02E768 8002EBB8 8C4E0010 */  lw          $t6, 0x10($v0)
/* 02E76C 8002EBBC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02E770 8002EBC0 AFB20020 */  sw          $s2, 0x20($sp)
/* 02E774 8002EBC4 000E7880 */  sll         $t7, $t6, 2
/* 02E778 8002EBC8 01EE7821 */  addu        $t7, $t7, $t6
/* 02E77C 8002EBCC 000F7900 */  sll         $t7, $t7, 4
/* 02E780 8002EBD0 AFBF0024 */  sw          $ra, 0x24($sp)
/* 02E784 8002EBD4 004F9021 */  addu        $s2, $v0, $t7
/* 02E788 8002EBD8 3C04800F */  lui         $a0, %hi(D_800F3E20)
/* 02E78C 8002EBDC AFB1001C */  sw          $s1, 0x1c($sp)
/* 02E790 8002EBE0 AFB00018 */  sw          $s0, 0x18($sp)
/* 02E794 8002EBE4 26520020 */  addiu       $s2, $s2, 0x20
/* 02E798 8002EBE8 24843E20 */  addiu       $a0, $a0, %lo(D_800F3E20)
/* 02E79C 8002EBEC 0C045492 */  jal         func_80115248
/* 02E7A0 8002EBF0 240500B7 */   addiu      $a1, $zero, 0xb7
/* 02E7A4 8002EBF4 02408825 */  move        $s1, $s2
/* 02E7A8 8002EBF8 24120050 */  addiu       $s2, $zero, 0x50
/* 02E7AC 8002EBFC 00008025 */  move        $s0, $zero
.L8002EC00:
/* 02E7B0 8002EC00 0C001A23 */  jal         func_8000688C
/* 02E7B4 8002EC04 8E240004 */   lw         $a0, 0x4($s1)
/* 02E7B8 8002EC08 26100008 */  addiu       $s0, $s0, 0x8
/* 02E7BC 8002EC0C 1612FFFC */  bne         $s0, $s2, .L8002EC00
/* 02E7C0 8002EC10 26310008 */   addiu      $s1, $s1, 0x8
/* 02E7C4 8002EC14 3C04800F */  lui         $a0, %hi(D_800F3EA4)
/* 02E7C8 8002EC18 8C843EA4 */  lw          $a0, %lo(D_800F3EA4)($a0)
/* 02E7CC 8002EC1C 1080000A */  beqz        $a0, .L8002EC48
/* 02E7D0 8002EC20 00000000 */   nop
/* 02E7D4 8002EC24 0C001A23 */  jal         func_8000688C
/* 02E7D8 8002EC28 00000000 */   nop
/* 02E7DC 8002EC2C 00402025 */  move        $a0, $v0
/* 02E7E0 8002EC30 0C001E12 */  jal         func_80007848
/* 02E7E4 8002EC34 24052000 */   addiu      $a1, $zero, 0x2000
/* 02E7E8 8002EC38 3C04800F */  lui         $a0, %hi(D_800F3EA4)
/* 02E7EC 8002EC3C 8C843EA4 */  lw          $a0, %lo(D_800F3EA4)($a0)
/* 02E7F0 8002EC40 0C00B16E */  jal         func_8002C5B8
/* 02E7F4 8002EC44 3C053F80 */   lui        $a1, 0x3f80
.L8002EC48:
/* 02E7F8 8002EC48 0C0095B5 */  jal         func_800256D4
/* 02E7FC 8002EC4C 00000000 */   nop
/* 02E800 8002EC50 0C00B1E2 */  jal         func_8002C788
/* 02E804 8002EC54 00000000 */   nop
/* 02E808 8002EC58 0C0005EC */  jal         func_800017B0
/* 02E80C 8002EC5C 00002025 */   move       $a0, $zero
/* 02E810 8002EC60 3C10800F */  lui         $s0, %hi(D_800F6440)
/* 02E814 8002EC64 26106440 */  addiu       $s0, $s0, %lo(D_800F6440)
/* 02E818 8002EC68 8E020000 */  lw          $v0, 0x0($s0)
/* 02E81C 8002EC6C 24010001 */  addiu       $at, $zero, 0x1
/* 02E820 8002EC70 10400008 */  beqz        $v0, .L8002EC94
/* 02E824 8002EC74 00000000 */   nop
/* 02E828 8002EC78 1041000A */  beq         $v0, $at, .L8002ECA4
/* 02E82C 8002EC7C 3C04800F */   lui        $a0, %hi(D_800F6444)
/* 02E830 8002EC80 24010002 */  addiu       $at, $zero, 0x2
/* 02E834 8002EC84 1041000C */  beq         $v0, $at, .L8002ECB8
/* 02E838 8002EC88 00000000 */   nop
/* 02E83C 8002EC8C 1000000E */  b           .L8002ECC8
/* 02E840 8002EC90 8FBF0024 */   lw         $ra, 0x24($sp)
.L8002EC94:
/* 02E844 8002EC94 0C0026E4 */  jal         func_80009B90
/* 02E848 8002EC98 00002025 */   move       $a0, $zero
/* 02E84C 8002EC9C 1000000A */  b           .L8002ECC8
/* 02E850 8002ECA0 8FBF0024 */   lw         $ra, 0x24($sp)
.L8002ECA4:
/* 02E854 8002ECA4 8C846444 */  lw          $a0, %lo(D_800F6444)($a0)
/* 02E858 8002ECA8 0C00BA94 */  jal         func_8002EA50
/* 02E85C 8002ECAC 00002825 */   move       $a1, $zero
/* 02E860 8002ECB0 10000005 */  b           .L8002ECC8
/* 02E864 8002ECB4 8FBF0024 */   lw         $ra, 0x24($sp)
.L8002ECB8:
/* 02E868 8002ECB8 0C04773D */  jal         func_8011DCF4
/* 02E86C 8002ECBC 00000000 */   nop
/* 02E870 8002ECC0 AE000000 */  sw          $zero, 0x0($s0)
/* 02E874 8002ECC4 8FBF0024 */  lw          $ra, 0x24($sp)
.L8002ECC8:
/* 02E878 8002ECC8 8FB00018 */  lw          $s0, 0x18($sp)
/* 02E87C 8002ECCC 8FB1001C */  lw          $s1, 0x1c($sp)
/* 02E880 8002ECD0 8FB20020 */  lw          $s2, 0x20($sp)
/* 02E884 8002ECD4 03E00008 */  jr          $ra
/* 02E888 8002ECD8 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8002ECDC # 51
/* 02E88C 8002ECDC 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 02E890 8002ECE0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02E894 8002ECE4 3C04800F */  lui         $a0, %hi(D_800F3E20)
/* 02E898 8002ECE8 0C0455E7 */  jal         func_8011579C
/* 02E89C 8002ECEC 24843E20 */   addiu      $a0, $a0, %lo(D_800F3E20)
/* 02E8A0 8002ECF0 3C04800F */  lui         $a0, %hi(D_800F3E20)
/* 02E8A4 8002ECF4 0C045473 */  jal         func_801151CC
/* 02E8A8 8002ECF8 24843E20 */   addiu      $a0, $a0, %lo(D_800F3E20)
/* 02E8AC 8002ECFC 3C02800F */  lui         $v0, %hi(D_800F6324)
/* 02E8B0 8002ED00 8C426324 */  lw          $v0, %lo(D_800F6324)($v0)
/* 02E8B4 8002ED04 24010005 */  addiu       $at, $zero, 0x5
/* 02E8B8 8002ED08 3C03800B */  lui         $v1, %hi(D_800B093E)
/* 02E8BC 8002ED0C 5441000E */  bnel        $v0, $at, .L8002ED48
/* 02E8C0 8002ED10 24010002 */   addiu      $at, $zero, 0x2
/* 02E8C4 8002ED14 9463093E */  lhu         $v1, %lo(D_800B093E)($v1)
/* 02E8C8 8002ED18 306E8000 */  andi        $t6, $v1, 0x8000
/* 02E8CC 8002ED1C 51C000BF */  beql        $t6, $zero, .L8002F01C
/* 02E8D0 8002ED20 8FBF0014 */   lw         $ra, 0x14($sp)
/* 02E8D4 8002ED24 0C00A7A2 */  jal         func_80029E88
/* 02E8D8 8002ED28 00000000 */   nop
/* 02E8DC 8002ED2C 3C04800F */  lui         $a0, %hi(D_800F6310)
/* 02E8E0 8002ED30 24846310 */  addiu       $a0, $a0, %lo(D_800F6310)
/* 02E8E4 8002ED34 0C00B415 */  jal         func_8002D054
/* 02E8E8 8002ED38 24050002 */   addiu      $a1, $zero, 0x2
/* 02E8EC 8002ED3C 100000B7 */  b           .L8002F01C
/* 02E8F0 8002ED40 8FBF0014 */   lw         $ra, 0x14($sp)
/* 02E8F4 8002ED44 24010002 */  addiu       $at, $zero, 0x2
.L8002ED48:
/* 02E8F8 8002ED48 144100B3 */  bne         $v0, $at, .L8002F018
/* 02E8FC 8002ED4C 3C0F800F */   lui        $t7, %hi(D_800F631C)
/* 02E900 8002ED50 8DEF631C */  lw          $t7, %lo(D_800F631C)($t7)
/* 02E904 8002ED54 3C03800B */  lui         $v1, %hi(D_800B093E)
/* 02E908 8002ED58 55E000B0 */  bnel        $t7, $zero, .L8002F01C
/* 02E90C 8002ED5C 8FBF0014 */   lw         $ra, 0x14($sp)
/* 02E910 8002ED60 9462093E */  lhu         $v0, %lo(D_800B093E)($v1)
/* 02E914 8002ED64 3C01800F */  lui         $at, %hi(D_800F6440)
/* 02E918 8002ED68 00002025 */  move        $a0, $zero
/* 02E91C 8002ED6C 30581000 */  andi        $t8, $v0, 0x1000
/* 02E920 8002ED70 13000010 */  beqz        $t8, .L8002EDB4
/* 02E924 8002ED74 30594000 */   andi       $t9, $v0, 0x4000
/* 02E928 8002ED78 3C06800B */  lui         $a2, %hi(D_800AAEF8)
/* 02E92C 8002ED7C AC206440 */  sw          $zero, %lo(D_800F6440)($at)
/* 02E930 8002ED80 24C6AEF8 */  addiu       $a2, $a2, %lo(D_800AAEF8)
/* 02E934 8002ED84 0C009589 */  jal         func_80025624
/* 02E938 8002ED88 3C053F80 */   lui        $a1, 0x3f80
/* 02E93C 8002ED8C 3C04800F */  lui         $a0, %hi(D_800F6310)
/* 02E940 8002ED90 24846310 */  addiu       $a0, $a0, %lo(D_800F6310)
/* 02E944 8002ED94 0C00B415 */  jal         func_8002D054
/* 02E948 8002ED98 24050003 */   addiu      $a1, $zero, 0x3
/* 02E94C 8002ED9C 3C04800F */  lui         $a0, %hi(D_800F3E20)
/* 02E950 8002EDA0 24843E20 */  addiu       $a0, $a0, %lo(D_800F3E20)
/* 02E954 8002EDA4 0C045492 */  jal         func_80115248
/* 02E958 8002EDA8 240500B7 */   addiu      $a1, $zero, 0xb7
/* 02E95C 8002EDAC 1000009B */  b           .L8002F01C
/* 02E960 8002EDB0 8FBF0014 */   lw         $ra, 0x14($sp)
.L8002EDB4:
/* 02E964 8002EDB4 13200043 */  beqz        $t9, .L8002EEC4
/* 02E968 8002EDB8 30488000 */   andi       $t0, $v0, 0x8000
/* 02E96C 8002EDBC 3C08800F */  lui         $t0, %hi(D_800F6320)
/* 02E970 8002EDC0 8D086320 */  lw          $t0, %lo(D_800F6320)($t0)
/* 02E974 8002EDC4 3C0A800F */  lui         $t2, %hi(D_800F6310)
/* 02E978 8002EDC8 254A6310 */  addiu       $t2, $t2, %lo(D_800F6310)
/* 02E97C 8002EDCC 00084880 */  sll         $t1, $t0, 2
/* 02E980 8002EDD0 01284821 */  addu        $t1, $t1, $t0
/* 02E984 8002EDD4 00094900 */  sll         $t1, $t1, 4
/* 02E988 8002EDD8 012A1021 */  addu        $v0, $t1, $t2
/* 02E98C 8002EDDC 8C4B0024 */  lw          $t3, 0x24($v0)
/* 02E990 8002EDE0 3C0C800B */  lui         $t4, %hi(D_800AAF24)
/* 02E994 8002EDE4 258CAF24 */  addiu       $t4, $t4, %lo(D_800AAF24)
/* 02E998 8002EDE8 51600008 */  beql        $t3, $zero, .L8002EE0C
/* 02E99C 8002EDEC AFA00058 */   sw         $zero, 0x58($sp)
/* 02E9A0 8002EDF0 8C440020 */  lw          $a0, 0x20($v0)
/* 02E9A4 8002EDF4 24050001 */  addiu       $a1, $zero, 0x1
/* 02E9A8 8002EDF8 0C046141 */  jal         func_80118504
/* 02E9AC 8002EDFC AFA40058 */   sw         $a0, 0x58($sp)
/* 02E9B0 8002EE00 10000003 */  b           .L8002EE10
/* 02E9B4 8002EE04 AFA20054 */   sw         $v0, 0x54($sp)
/* 02E9B8 8002EE08 AFA00058 */  sw          $zero, 0x58($sp)
.L8002EE0C:
/* 02E9BC 8002EE0C AFAC0054 */  sw          $t4, 0x54($sp)
.L8002EE10:
/* 02E9C0 8002EE10 00002025 */  move        $a0, $zero
/* 02E9C4 8002EE14 00002825 */  move        $a1, $zero
/* 02E9C8 8002EE18 0C00A765 */  jal         func_80029D94
/* 02E9CC 8002EE1C 00003025 */   move       $a2, $zero
/* 02E9D0 8002EE20 1040007D */  beqz        $v0, .L8002F018
/* 02E9D4 8002EE24 8FAD0058 */   lw         $t5, 0x58($sp)
/* 02E9D8 8002EE28 11A0000E */  beqz        $t5, .L8002EE64
/* 02E9DC 8002EE2C 01A02025 */   move       $a0, $t5
/* 02E9E0 8002EE30 0C04610B */  jal         func_8011842C
/* 02E9E4 8002EE34 24050001 */   addiu      $a1, $zero, 0x1
/* 02E9E8 8002EE38 AFA20020 */  sw          $v0, 0x20($sp)
/* 02E9EC 8002EE3C 0C046128 */  jal         func_801184A0
/* 02E9F0 8002EE40 8FA40058 */   lw         $a0, 0x58($sp)
/* 02E9F4 8002EE44 3C05800B */  lui         $a1, %hi(D_800AAF80)
/* 02E9F8 8002EE48 24A5AF80 */  addiu       $a1, $a1, %lo(D_800AAF80)
/* 02E9FC 8002EE4C 27A4002C */  addiu       $a0, $sp, 0x2c
/* 02EA00 8002EE50 8FA60020 */  lw          $a2, 0x20($sp)
/* 02EA04 8002EE54 0C014589 */  jal         func_80051624
/* 02EA08 8002EE58 00403825 */   move       $a3, $v0
/* 02EA0C 8002EE5C 0C00A74C */  jal         func_80029D30
/* 02EA10 8002EE60 27A4002C */   addiu      $a0, $sp, 0x2c
.L8002EE64:
/* 02EA14 8002EE64 0C00A74C */  jal         func_80029D30
/* 02EA18 8002EE68 8FA40054 */   lw         $a0, 0x54($sp)
/* 02EA1C 8002EE6C 8FAE0058 */  lw          $t6, 0x58($sp)
/* 02EA20 8002EE70 3C188013 */  lui         $t8, %hi(D_80129390 + 0x1)
/* 02EA24 8002EE74 3C04800A */  lui         $a0, %hi(D_8009FA68)
/* 02EA28 8002EE78 000E78C0 */  sll         $t7, $t6, 3
/* 02EA2C 8002EE7C 01EE7823 */  subu        $t7, $t7, $t6
/* 02EA30 8002EE80 000F7880 */  sll         $t7, $t7, 2
/* 02EA34 8002EE84 01EE7821 */  addu        $t7, $t7, $t6
/* 02EA38 8002EE88 000F7880 */  sll         $t7, $t7, 2
/* 02EA3C 8002EE8C 030FC021 */  addu        $t8, $t8, $t7
/* 02EA40 8002EE90 83189391 */  lb          $t8, %lo(D_80129390 + 0x1)($t8)
/* 02EA44 8002EE94 0018C880 */  sll         $t9, $t8, 2
/* 02EA48 8002EE98 00992021 */  addu        $a0, $a0, $t9
/* 02EA4C 8002EE9C 0C00A74C */  jal         func_80029D30
/* 02EA50 8002EEA0 8C84FA68 */   lw         $a0, %lo(D_8009FA68)($a0)
/* 02EA54 8002EEA4 0C00A792 */  jal         func_80029E48
/* 02EA58 8002EEA8 00000000 */   nop
/* 02EA5C 8002EEAC 3C04800F */  lui         $a0, %hi(D_800F6310)
/* 02EA60 8002EEB0 24846310 */  addiu       $a0, $a0, %lo(D_800F6310)
/* 02EA64 8002EEB4 0C00B415 */  jal         func_8002D054
/* 02EA68 8002EEB8 24050005 */   addiu      $a1, $zero, 0x5
/* 02EA6C 8002EEBC 10000057 */  b           .L8002F01C
/* 02EA70 8002EEC0 8FBF0014 */   lw         $ra, 0x14($sp)
.L8002EEC4:
/* 02EA74 8002EEC4 1100000A */  beqz        $t0, .L8002EEF0
/* 02EA78 8002EEC8 30490300 */   andi       $t1, $v0, 0x300
/* 02EA7C 8002EECC 3C04800F */  lui         $a0, %hi(D_800F3E20)
/* 02EA80 8002EED0 0C00B421 */  jal         func_8002D084
/* 02EA84 8002EED4 24843E20 */   addiu      $a0, $a0, %lo(D_800F3E20)
/* 02EA88 8002EED8 3C04800F */  lui         $a0, %hi(D_800F3E20)
/* 02EA8C 8002EEDC 24843E20 */  addiu       $a0, $a0, %lo(D_800F3E20)
/* 02EA90 8002EEE0 0C045492 */  jal         func_80115248
/* 02EA94 8002EEE4 240500C4 */   addiu      $a1, $zero, 0xc4
/* 02EA98 8002EEE8 1000004C */  b           .L8002F01C
/* 02EA9C 8002EEEC 8FBF0014 */   lw         $ra, 0x14($sp)
.L8002EEF0:
/* 02EAA0 8002EEF0 11200029 */  beqz        $t1, .L8002EF98
/* 02EAA4 8002EEF4 304F0400 */   andi       $t7, $v0, 0x400
/* 02EAA8 8002EEF8 304A0100 */  andi        $t2, $v0, 0x100
/* 02EAAC 8002EEFC 11400005 */  beqz        $t2, .L8002EF14
/* 02EAB0 8002EF00 3C04800F */   lui        $a0, %hi(D_800F3E20)
/* 02EAB4 8002EF04 240BFFFF */  addiu       $t3, $zero, -0x1
/* 02EAB8 8002EF08 3C01800F */  lui         $at, %hi(D_800F631C)
/* 02EABC 8002EF0C 10000004 */  b           .L8002EF20
/* 02EAC0 8002EF10 AC2B631C */   sw         $t3, %lo(D_800F631C)($at)
.L8002EF14:
/* 02EAC4 8002EF14 240C0001 */  addiu       $t4, $zero, 0x1
/* 02EAC8 8002EF18 3C01800F */  lui         $at, %hi(D_800F631C)
/* 02EACC 8002EF1C AC2C631C */  sw          $t4, %lo(D_800F631C)($at)
.L8002EF20:
/* 02EAD0 8002EF20 24843E20 */  addiu       $a0, $a0, %lo(D_800F3E20)
/* 02EAD4 8002EF24 0C045492 */  jal         func_80115248
/* 02EAD8 8002EF28 240500AC */   addiu      $a1, $zero, 0xac
/* 02EADC 8002EF2C 0C002671 */  jal         func_800099C4
/* 02EAE0 8002EF30 00000000 */   nop
/* 02EAE4 8002EF34 3C01800F */  lui         $at, %hi(D_800F6328)
/* 02EAE8 8002EF38 AC226328 */  sw          $v0, %lo(D_800F6328)($at)
/* 02EAEC 8002EF3C AC23632C */  sw          $v1, %lo(D_800F632C)($at)
/* 02EAF0 8002EF40 3C0D800F */  lui         $t5, %hi(D_800F6320)
/* 02EAF4 8002EF44 8DAD6320 */  lw          $t5, %lo(D_800F6320)($t5)
/* 02EAF8 8002EF48 3C04800F */  lui         $a0, %hi(D_800F6334)
/* 02EAFC 8002EF4C 3C053E99 */  lui         $a1, 0x3e99
/* 02EB00 8002EF50 000D7080 */  sll         $t6, $t5, 2
/* 02EB04 8002EF54 01CD7021 */  addu        $t6, $t6, $t5
/* 02EB08 8002EF58 000E7100 */  sll         $t6, $t6, 4
/* 02EB0C 8002EF5C 008E2021 */  addu        $a0, $a0, $t6
/* 02EB10 8002EF60 8C846334 */  lw          $a0, %lo(D_800F6334)($a0)
/* 02EB14 8002EF64 14800008 */  bnez        $a0, .L8002EF88
/* 02EB18 8002EF68 00000000 */   nop
/* 02EB1C 8002EF6C 3C04800F */  lui         $a0, %hi(D_800F63D0)
/* 02EB20 8002EF70 3C053E99 */  lui         $a1, 0x3e99
/* 02EB24 8002EF74 34A5999A */  ori         $a1, $a1, 0x999a
/* 02EB28 8002EF78 0C00B16E */  jal         func_8002C5B8
/* 02EB2C 8002EF7C 8C8463D0 */   lw         $a0, %lo(D_800F63D0)($a0)
/* 02EB30 8002EF80 10000026 */  b           .L8002F01C
/* 02EB34 8002EF84 8FBF0014 */   lw         $ra, 0x14($sp)
.L8002EF88:
/* 02EB38 8002EF88 0C00B16E */  jal         func_8002C5B8
/* 02EB3C 8002EF8C 34A5999A */   ori        $a1, $a1, 0x999a
/* 02EB40 8002EF90 10000022 */  b           .L8002F01C
/* 02EB44 8002EF94 8FBF0014 */   lw         $ra, 0x14($sp)
.L8002EF98:
/* 02EB48 8002EF98 11E00003 */  beqz        $t7, .L8002EFA8
/* 02EB4C 8002EF9C 3C18800F */   lui        $t8, %hi(D_800F6320)
/* 02EB50 8002EFA0 8F186320 */  lw          $t8, %lo(D_800F6320)($t8)
/* 02EB54 8002EFA4 13000006 */  beqz        $t8, .L8002EFC0
.L8002EFA8:
/* 02EB58 8002EFA8 30590800 */   andi       $t9, $v0, 0x800
/* 02EB5C 8002EFAC 1320001A */  beqz        $t9, .L8002F018
/* 02EB60 8002EFB0 3C08800F */   lui        $t0, %hi(D_800F6320)
/* 02EB64 8002EFB4 8D086320 */  lw          $t0, %lo(D_800F6320)($t0)
/* 02EB68 8002EFB8 24010001 */  addiu       $at, $zero, 0x1
/* 02EB6C 8002EFBC 15010016 */  bne         $t0, $at, .L8002F018
.L8002EFC0:
/* 02EB70 8002EFC0 24090001 */   addiu      $t1, $zero, 0x1
/* 02EB74 8002EFC4 3C01800F */  lui         $at, %hi(D_800F6440)
/* 02EB78 8002EFC8 3C04800F */  lui         $a0, %hi(D_800F6310)
/* 02EB7C 8002EFCC AC296440 */  sw          $t1, %lo(D_800F6440)($at)
/* 02EB80 8002EFD0 24846310 */  addiu       $a0, $a0, %lo(D_800F6310)
/* 02EB84 8002EFD4 0C00B415 */  jal         func_8002D054
/* 02EB88 8002EFD8 24050003 */   addiu      $a1, $zero, 0x3
/* 02EB8C 8002EFDC 3C04800F */  lui         $a0, %hi(D_800F3E20)
/* 02EB90 8002EFE0 24843E20 */  addiu       $a0, $a0, %lo(D_800F3E20)
/* 02EB94 8002EFE4 0C045492 */  jal         func_80115248
/* 02EB98 8002EFE8 240500B7 */   addiu      $a1, $zero, 0xb7
/* 02EB9C 8002EFEC 3C03800B */  lui         $v1, %hi(D_800B093E)
/* 02EBA0 8002EFF0 9463093E */  lhu         $v1, %lo(D_800B093E)($v1)
/* 02EBA4 8002EFF4 240B0001 */  addiu       $t3, $zero, 0x1
/* 02EBA8 8002EFF8 3C01800F */  lui         $at, %hi(D_800F6444)
/* 02EBAC 8002EFFC 306A0400 */  andi        $t2, $v1, 0x400
/* 02EBB0 8002F000 11400004 */  beqz        $t2, .L8002F014
/* 02EBB4 8002F004 00000000 */   nop
/* 02EBB8 8002F008 3C01800F */  lui         $at, %hi(D_800F6444)
/* 02EBBC 8002F00C 10000002 */  b           .L8002F018
/* 02EBC0 8002F010 AC2B6444 */   sw         $t3, %lo(D_800F6444)($at)
.L8002F014:
/* 02EBC4 8002F014 AC206444 */  sw          $zero, %lo(D_800F6444)($at)
.L8002F018:
/* 02EBC8 8002F018 8FBF0014 */  lw          $ra, 0x14($sp)
.L8002F01C:
/* 02EBCC 8002F01C 27BD0068 */  addiu       $sp, $sp, 0x68
/* 02EBD0 8002F020 03E00008 */  jr          $ra
/* 02EBD4 8002F024 00000000 */   nop

glabel func_8002F028 # 52
/* 02EBD8 8002F028 8C8E0010 */  lw          $t6, 0x10($a0)
/* 02EBDC 8002F02C 8C98000C */  lw          $t8, 0xc($a0)
/* 02EBE0 8002F030 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02EBE4 8002F034 000E7880 */  sll         $t7, $t6, 2
/* 02EBE8 8002F038 01EE7821 */  addu        $t7, $t7, $t6
/* 02EBEC 8002F03C 000F7900 */  sll         $t7, $t7, 4
/* 02EBF0 8002F040 008F1021 */  addu        $v0, $a0, $t7
/* 02EBF4 8002F044 1B00002D */  blez        $t8, .L8002F0FC
/* 02EBF8 8002F048 24420020 */   addiu      $v0, $v0, 0x20
/* 02EBFC 8002F04C 8C410048 */  lw          $at, 0x48($v0)
/* 02EC00 8002F050 27AA0018 */  addiu       $t2, $sp, 0x18
/* 02EC04 8002F054 24490048 */  addiu       $t1, $v0, 0x48
/* 02EC08 8002F058 AD410000 */  sw          $at, 0x0($t2)
/* 02EC0C 8002F05C 8C4B004C */  lw          $t3, 0x4c($v0)
/* 02EC10 8002F060 24440040 */  addiu       $a0, $v0, 0x40
/* 02EC14 8002F064 2485FFF8 */  addiu       $a1, $a0, -0x8
/* 02EC18 8002F068 AD4B0004 */  sw          $t3, 0x4($t2)
/* 02EC1C 8002F06C 8D2DFFFC */  lw          $t5, -0x4($t1)
/* 02EC20 8002F070 8D21FFF8 */  lw          $at, -0x8($t1)
/* 02EC24 8002F074 2486FFF0 */  addiu       $a2, $a0, -0x10
/* 02EC28 8002F078 2487FFE8 */  addiu       $a3, $a0, -0x18
/* 02EC2C 8002F07C 2488FFE0 */  addiu       $t0, $a0, -0x20
/* 02EC30 8002F080 24030008 */  addiu       $v1, $zero, 0x8
/* 02EC34 8002F084 AD2D0004 */  sw          $t5, 0x4($t1)
/* 02EC38 8002F088 AD210000 */  sw          $at, 0x0($t1)
.L8002F08C:
/* 02EC3C 8002F08C 8CA10000 */  lw          $at, 0x0($a1)
/* 02EC40 8002F090 2463FFFC */  addiu       $v1, $v1, -0x4
/* 02EC44 8002F094 2484FFE0 */  addiu       $a0, $a0, -0x20
/* 02EC48 8002F098 AC810020 */  sw          $at, 0x20($a0)
/* 02EC4C 8002F09C 8CAF0004 */  lw          $t7, 0x4($a1)
/* 02EC50 8002F0A0 24A5FFE0 */  addiu       $a1, $a1, -0x20
/* 02EC54 8002F0A4 24C6FFE0 */  addiu       $a2, $a2, -0x20
/* 02EC58 8002F0A8 AC8F0024 */  sw          $t7, 0x24($a0)
/* 02EC5C 8002F0AC 8CC10020 */  lw          $at, 0x20($a2)
/* 02EC60 8002F0B0 24E7FFE0 */  addiu       $a3, $a3, -0x20
/* 02EC64 8002F0B4 2508FFE0 */  addiu       $t0, $t0, -0x20
/* 02EC68 8002F0B8 ACA10020 */  sw          $at, 0x20($a1)
/* 02EC6C 8002F0BC 8CD90024 */  lw          $t9, 0x24($a2)
/* 02EC70 8002F0C0 ACB90024 */  sw          $t9, 0x24($a1)
/* 02EC74 8002F0C4 8CE10020 */  lw          $at, 0x20($a3)
/* 02EC78 8002F0C8 ACC10020 */  sw          $at, 0x20($a2)
/* 02EC7C 8002F0CC 8CEC0024 */  lw          $t4, 0x24($a3)
/* 02EC80 8002F0D0 ACCC0024 */  sw          $t4, 0x24($a2)
/* 02EC84 8002F0D4 8D010020 */  lw          $at, 0x20($t0)
/* 02EC88 8002F0D8 ACE10020 */  sw          $at, 0x20($a3)
/* 02EC8C 8002F0DC 8D0E0024 */  lw          $t6, 0x24($t0)
/* 02EC90 8002F0E0 1460FFEA */  bnez        $v1, .L8002F08C
/* 02EC94 8002F0E4 ACEE0024 */   sw         $t6, 0x24($a3)
/* 02EC98 8002F0E8 8D410000 */  lw          $at, 0x0($t2)
/* 02EC9C 8002F0EC AC410000 */  sw          $at, 0x0($v0)
/* 02ECA0 8002F0F0 8D580004 */  lw          $t8, 0x4($t2)
/* 02ECA4 8002F0F4 1000002C */  b           .L8002F1A8
/* 02ECA8 8002F0F8 AC580004 */   sw         $t8, 0x4($v0)
.L8002F0FC:
/* 02ECAC 8002F0FC 8C410000 */  lw          $at, 0x0($v0)
/* 02ECB0 8002F100 27AA0018 */  addiu       $t2, $sp, 0x18
/* 02ECB4 8002F104 24440008 */  addiu       $a0, $v0, 0x8
/* 02ECB8 8002F108 AD410000 */  sw          $at, 0x0($t2)
/* 02ECBC 8002F10C 8C4B0004 */  lw          $t3, 0x4($v0)
/* 02ECC0 8002F110 24850008 */  addiu       $a1, $a0, 0x8
/* 02ECC4 8002F114 24860010 */  addiu       $a2, $a0, 0x10
/* 02ECC8 8002F118 AD4B0004 */  sw          $t3, 0x4($t2)
/* 02ECCC 8002F11C 8C4D000C */  lw          $t5, 0xc($v0)
/* 02ECD0 8002F120 8C410008 */  lw          $at, 0x8($v0)
/* 02ECD4 8002F124 24870018 */  addiu       $a3, $a0, 0x18
/* 02ECD8 8002F128 24880020 */  addiu       $t0, $a0, 0x20
/* 02ECDC 8002F12C 24030001 */  addiu       $v1, $zero, 0x1
/* 02ECE0 8002F130 24090009 */  addiu       $t1, $zero, 0x9
/* 02ECE4 8002F134 AC4D0004 */  sw          $t5, 0x4($v0)
/* 02ECE8 8002F138 AC410000 */  sw          $at, 0x0($v0)
.L8002F13C:
/* 02ECEC 8002F13C 8CA10000 */  lw          $at, 0x0($a1)
/* 02ECF0 8002F140 24630004 */  addiu       $v1, $v1, 0x4
/* 02ECF4 8002F144 24840020 */  addiu       $a0, $a0, 0x20
/* 02ECF8 8002F148 AC81FFE0 */  sw          $at, -0x20($a0)
/* 02ECFC 8002F14C 8CAF0004 */  lw          $t7, 0x4($a1)
/* 02ED00 8002F150 24A50020 */  addiu       $a1, $a1, 0x20
/* 02ED04 8002F154 24C60020 */  addiu       $a2, $a2, 0x20
/* 02ED08 8002F158 AC8FFFE4 */  sw          $t7, -0x1c($a0)
/* 02ED0C 8002F15C 8CC1FFE0 */  lw          $at, -0x20($a2)
/* 02ED10 8002F160 24E70020 */  addiu       $a3, $a3, 0x20
/* 02ED14 8002F164 25080020 */  addiu       $t0, $t0, 0x20
/* 02ED18 8002F168 ACA1FFE0 */  sw          $at, -0x20($a1)
/* 02ED1C 8002F16C 8CD9FFE4 */  lw          $t9, -0x1c($a2)
/* 02ED20 8002F170 ACB9FFE4 */  sw          $t9, -0x1c($a1)
/* 02ED24 8002F174 8CE1FFE0 */  lw          $at, -0x20($a3)
/* 02ED28 8002F178 ACC1FFE0 */  sw          $at, -0x20($a2)
/* 02ED2C 8002F17C 8CECFFE4 */  lw          $t4, -0x1c($a3)
/* 02ED30 8002F180 ACCCFFE4 */  sw          $t4, -0x1c($a2)
/* 02ED34 8002F184 8D01FFE0 */  lw          $at, -0x20($t0)
/* 02ED38 8002F188 ACE1FFE0 */  sw          $at, -0x20($a3)
/* 02ED3C 8002F18C 8D0EFFE4 */  lw          $t6, -0x1c($t0)
/* 02ED40 8002F190 1469FFEA */  bne         $v1, $t1, .L8002F13C
/* 02ED44 8002F194 ACEEFFE4 */   sw         $t6, -0x1c($a3)
/* 02ED48 8002F198 8D410000 */  lw          $at, 0x0($t2)
/* 02ED4C 8002F19C AC410048 */  sw          $at, 0x48($v0)
/* 02ED50 8002F1A0 8D580004 */  lw          $t8, 0x4($t2)
/* 02ED54 8002F1A4 AC58004C */  sw          $t8, 0x4c($v0)
.L8002F1A8:
/* 02ED58 8002F1A8 03E00008 */  jr          $ra
/* 02ED5C 8002F1AC 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8002F1B0 # 53
/* 02ED60 8002F1B0 3C02800F */  lui         $v0, %hi(D_800F6310)
/* 02ED64 8002F1B4 24426310 */  addiu       $v0, $v0, %lo(D_800F6310)
/* 02ED68 8002F1B8 8C4E0010 */  lw          $t6, 0x10($v0)
/* 02ED6C 8002F1BC 8C48000C */  lw          $t0, 0xc($v0)
/* 02ED70 8002F1C0 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 02ED74 8002F1C4 000E7880 */  sll         $t7, $t6, 2
/* 02ED78 8002F1C8 01EE7821 */  addu        $t7, $t7, $t6
/* 02ED7C 8002F1CC 000F7900 */  sll         $t7, $t7, 4
/* 02ED80 8002F1D0 004FC021 */  addu        $t8, $v0, $t7
/* 02ED84 8002F1D4 27190020 */  addiu       $t9, $t8, 0x20
/* 02ED88 8002F1D8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02ED8C 8002F1DC 11000026 */  beqz        $t0, .L8002F278
/* 02ED90 8002F1E0 AFB9002C */   sw         $t9, 0x2c($sp)
/* 02ED94 8002F1E4 0C002671 */  jal         func_800099C4
/* 02ED98 8002F1E8 00000000 */   nop
/* 02ED9C 8002F1EC 3C0A800F */  lui         $t2, %hi(D_800F6328)
/* 02EDA0 8002F1F0 3C0B800F */  lui         $t3, %hi(D_800F632C)
/* 02EDA4 8002F1F4 8D6B632C */  lw          $t3, %lo(D_800F632C)($t3)
/* 02EDA8 8002F1F8 8D4A6328 */  lw          $t2, %lo(D_800F6328)($t2)
/* 02EDAC 8002F1FC 006B082B */  sltu        $at, $v1, $t3
/* 02EDB0 8002F200 004A2023 */  subu        $a0, $v0, $t2
/* 02EDB4 8002F204 00812023 */  subu        $a0, $a0, $at
/* 02EDB8 8002F208 0C0143B2 */  jal         func_80050EC8
/* 02EDBC 8002F20C 006B2823 */   subu       $a1, $v1, $t3
/* 02EDC0 8002F210 3C014348 */  lui         $at, 0x4348
/* 02EDC4 8002F214 44812000 */  mtc1        $at, $f4
/* 02EDC8 8002F218 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 02EDCC 8002F21C 3C04800F */  lui         $a0, %hi(D_800F6310)
/* 02EDD0 8002F220 4600203E */  c.le.s      $f4, $f0
/* 02EDD4 8002F224 00000000 */  nop
/* 02EDD8 8002F228 45000011 */  bc1f        .L8002F270
/* 02EDDC 8002F22C 00000000 */   nop
/* 02EDE0 8002F230 0C00BC0A */  jal         func_8002F028
/* 02EDE4 8002F234 24846310 */   addiu      $a0, $a0, %lo(D_800F6310)
/* 02EDE8 8002F238 8FA9002C */  lw          $t1, 0x2c($sp)
/* 02EDEC 8002F23C 3C053F00 */  lui         $a1, 0x3f00
/* 02EDF0 8002F240 8D240004 */  lw          $a0, 0x4($t1)
/* 02EDF4 8002F244 14800006 */  bnez        $a0, .L8002F260
/* 02EDF8 8002F248 00000000 */   nop
/* 02EDFC 8002F24C 3C04800F */  lui         $a0, %hi(D_800F63D0)
/* 02EE00 8002F250 0C00B16E */  jal         func_8002C5B8
/* 02EE04 8002F254 8C8463D0 */   lw         $a0, %lo(D_800F63D0)($a0)
/* 02EE08 8002F258 10000003 */  b           .L8002F268
/* 02EE0C 8002F25C 00000000 */   nop
.L8002F260:
/* 02EE10 8002F260 0C00B16E */  jal         func_8002C5B8
/* 02EE14 8002F264 3C053F00 */   lui        $a1, 0x3f00
.L8002F268:
/* 02EE18 8002F268 3C01800F */  lui         $at, %hi(D_800F631C)
/* 02EE1C 8002F26C AC20631C */  sw          $zero, %lo(D_800F631C)($at)
.L8002F270:
/* 02EE20 8002F270 10000004 */  b           .L8002F284
/* 02EE24 8002F274 00000000 */   nop
.L8002F278:
/* 02EE28 8002F278 44803000 */  mtc1        $zero, $f6
/* 02EE2C 8002F27C 00000000 */  nop
/* 02EE30 8002F280 E7A6001C */  swc1        $f6, 0x1c($sp)
.L8002F284:
/* 02EE34 8002F284 3C0C800F */  lui         $t4, %hi(D_800F631C)
/* 02EE38 8002F288 8D8C631C */  lw          $t4, %lo(D_800F631C)($t4)
/* 02EE3C 8002F28C 3C014210 */  lui         $at, 0x4210
/* 02EE40 8002F290 44818000 */  mtc1        $at, $f16
/* 02EE44 8002F294 448C4000 */  mtc1        $t4, $f8
/* 02EE48 8002F298 C7A4001C */  lwc1        $f4, 0x1c($sp)
/* 02EE4C 8002F29C 44807000 */  mtc1        $zero, $f14
/* 02EE50 8002F2A0 468042A0 */  cvt.s.w     $f10, $f8
/* 02EE54 8002F2A4 3C014348 */  lui         $at, 0x4348
/* 02EE58 8002F2A8 44814000 */  mtc1        $at, $f8
/* 02EE5C 8002F2AC 44067000 */  mfc1        $a2, $f14
/* 02EE60 8002F2B0 46105482 */  mul.s       $f18, $f10, $f16
/* 02EE64 8002F2B4 00000000 */  nop
/* 02EE68 8002F2B8 46049182 */  mul.s       $f6, $f18, $f4
/* 02EE6C 8002F2BC 0C00B616 */  jal         func_8002D858
/* 02EE70 8002F2C0 46083303 */   div.s      $f12, $f6, $f8
/* 02EE74 8002F2C4 3C04800F */  lui         $a0, %hi(D_800F6310)
/* 02EE78 8002F2C8 24846310 */  addiu       $a0, $a0, %lo(D_800F6310)
/* 02EE7C 8002F2CC 0C00B6C6 */  jal         func_8002DB18
/* 02EE80 8002F2D0 24050000 */   addiu      $a1, $zero, 0x0
/* 02EE84 8002F2D4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02EE88 8002F2D8 27BD0038 */  addiu       $sp, $sp, 0x38
/* 02EE8C 8002F2DC 03E00008 */  jr          $ra
/* 02EE90 8002F2E0 00000000 */   nop

glabel func_8002F2E4 # 54
/* 02EE94 8002F2E4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02EE98 8002F2E8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02EE9C 8002F2EC 0C002671 */  jal         func_800099C4
/* 02EEA0 8002F2F0 00000000 */   nop
/* 02EEA4 8002F2F4 3C0E800F */  lui         $t6, %hi(D_800F6328)
/* 02EEA8 8002F2F8 3C0F800F */  lui         $t7, %hi(D_800F632C)
/* 02EEAC 8002F2FC 8DEF632C */  lw          $t7, %lo(D_800F632C)($t7)
/* 02EEB0 8002F300 8DCE6328 */  lw          $t6, %lo(D_800F6328)($t6)
/* 02EEB4 8002F304 006F082B */  sltu        $at, $v1, $t7
/* 02EEB8 8002F308 004E2023 */  subu        $a0, $v0, $t6
/* 02EEBC 8002F30C 00812023 */  subu        $a0, $a0, $at
/* 02EEC0 8002F310 0C0143B2 */  jal         func_80050EC8
/* 02EEC4 8002F314 006F2823 */   subu       $a1, $v1, $t7
/* 02EEC8 8002F318 3C014396 */  lui         $at, 0x4396
/* 02EECC 8002F31C 44818000 */  mtc1        $at, $f16
/* 02EED0 8002F320 46000086 */  mov.s       $f2, $f0
/* 02EED4 8002F324 3C01800F */  lui         $at, %hi(D_800F6324)
/* 02EED8 8002F328 4600803E */  c.le.s      $f16, $f0
/* 02EEDC 8002F32C 24180002 */  addiu       $t8, $zero, 0x2
/* 02EEE0 8002F330 3C19800F */  lui         $t9, %hi(D_800F6320)
/* 02EEE4 8002F334 45000003 */  bc1f        .L8002F344
/* 02EEE8 8002F338 00000000 */   nop
/* 02EEEC 8002F33C 46008086 */  mov.s       $f2, $f16
/* 02EEF0 8002F340 AC386324 */  sw          $t8, %lo(D_800F6324)($at)
.L8002F344:
/* 02EEF4 8002F344 8F396320 */  lw          $t9, %lo(D_800F6320)($t9)
/* 02EEF8 8002F348 57200024 */  bnel        $t9, $zero, .L8002F3DC
/* 02EEFC 8002F34C 46101003 */   div.s      $f0, $f2, $f16
/* 02EF00 8002F350 46101003 */  div.s       $f0, $f2, $f16
/* 02EF04 8002F354 3C013F80 */  lui         $at, 0x3f80
/* 02EF08 8002F358 44819000 */  mtc1        $at, $f18
/* 02EF0C 8002F35C 3C0142B4 */  lui         $at, 0x42b4
/* 02EF10 8002F360 44813000 */  mtc1        $at, $f6
/* 02EF14 8002F364 3C0143B4 */  lui         $at, 0x43b4
/* 02EF18 8002F368 44815000 */  mtc1        $at, $f10
/* 02EF1C 8002F36C 3C08800F */  lui         $t0, %hi(D_800F6314)
/* 02EF20 8002F370 8D086314 */  lw          $t0, %lo(D_800F6314)($t0)
/* 02EF24 8002F374 3C01BF80 */  lui         $at, 0xbf80
/* 02EF28 8002F378 3C09800F */  lui         $t1, %hi(D_800F6320)
/* 02EF2C 8002F37C 46000107 */  neg.s       $f4, $f0
/* 02EF30 8002F380 46062202 */  mul.s       $f8, $f4, $f6
/* 02EF34 8002F384 44812000 */  mtc1        $at, $f4
/* 02EF38 8002F388 3C01800A */  lui         $at, %hi(D_8009FA08)
/* 02EF3C 8002F38C 46005302 */  mul.s       $f12, $f10, $f0
/* 02EF40 8002F390 00000000 */  nop
/* 02EF44 8002F394 46002182 */  mul.s       $f6, $f4, $f0
/* 02EF48 8002F398 E508000C */  swc1        $f8, 0xc($t0)
/* 02EF4C 8002F39C 8D296320 */  lw          $t1, %lo(D_800F6320)($t1)
/* 02EF50 8002F3A0 00095080 */  sll         $t2, $t1, 2
/* 02EF54 8002F3A4 01495023 */  subu        $t2, $t2, $t1
/* 02EF58 8002F3A8 000A5080 */  sll         $t2, $t2, 2
/* 02EF5C 8002F3AC 46009101 */  sub.s       $f4, $f18, $f0
/* 02EF60 8002F3B0 002A0821 */  addu        $at, $at, $t2
/* 02EF64 8002F3B4 46003202 */  mul.s       $f8, $f6, $f0
/* 02EF68 8002F3B8 C42AFA08 */  lwc1        $f10, %lo(D_8009FA08)($at)
/* 02EF6C 8002F3BC 46045182 */  mul.s       $f6, $f10, $f4
/* 02EF70 8002F3C0 46124380 */  add.s       $f14, $f8, $f18
/* 02EF74 8002F3C4 44063000 */  mfc1        $a2, $f6
/* 02EF78 8002F3C8 0C00B616 */  jal         func_8002D858
/* 02EF7C 8002F3CC 00000000 */   nop
/* 02EF80 8002F3D0 1000001C */  b           .L8002F444
/* 02EF84 8002F3D4 00000000 */   nop
/* 02EF88 8002F3D8 46101003 */  div.s       $f0, $f2, $f16
.L8002F3DC:
/* 02EF8C 8002F3DC 3C013F80 */  lui         $at, 0x3f80
/* 02EF90 8002F3E0 44819000 */  mtc1        $at, $f18
/* 02EF94 8002F3E4 3C01437A */  lui         $at, 0x437a
/* 02EF98 8002F3E8 44814000 */  mtc1        $at, $f8
/* 02EF9C 8002F3EC 3C0B800F */  lui         $t3, %hi(D_800F6318)
/* 02EFA0 8002F3F0 8D6B6318 */  lw          $t3, %lo(D_800F6318)($t3)
/* 02EFA4 8002F3F4 3C0C800F */  lui         $t4, %hi(D_800F6320)
/* 02EFA8 8002F3F8 3C0143B4 */  lui         $at, 0x43b4
/* 02EFAC 8002F3FC 44812000 */  mtc1        $at, $f4
/* 02EFB0 8002F400 3C01800A */  lui         $at, %hi(D_8009FA08)
/* 02EFB4 8002F404 46080282 */  mul.s       $f10, $f0, $f8
/* 02EFB8 8002F408 E56A0020 */  swc1        $f10, 0x20($t3)
/* 02EFBC 8002F40C 8D8C6320 */  lw          $t4, %lo(D_800F6320)($t4)
/* 02EFC0 8002F410 46002302 */  mul.s       $f12, $f4, $f0
/* 02EFC4 8002F414 46009281 */  sub.s       $f10, $f18, $f0
/* 02EFC8 8002F418 000C6880 */  sll         $t5, $t4, 2
/* 02EFCC 8002F41C 01AC6823 */  subu        $t5, $t5, $t4
/* 02EFD0 8002F420 000D6880 */  sll         $t5, $t5, 2
/* 02EFD4 8002F424 002D0821 */  addu        $at, $at, $t5
/* 02EFD8 8002F428 46000182 */  mul.s       $f6, $f0, $f0
/* 02EFDC 8002F42C C428FA08 */  lwc1        $f8, %lo(D_8009FA08)($at)
/* 02EFE0 8002F430 460A4102 */  mul.s       $f4, $f8, $f10
/* 02EFE4 8002F434 46123381 */  sub.s       $f14, $f6, $f18
/* 02EFE8 8002F438 44062000 */  mfc1        $a2, $f4
/* 02EFEC 8002F43C 0C00B616 */  jal         func_8002D858
/* 02EFF0 8002F440 00000000 */   nop
.L8002F444:
/* 02EFF4 8002F444 3C04800F */  lui         $a0, %hi(D_800F6310)
/* 02EFF8 8002F448 24846310 */  addiu       $a0, $a0, %lo(D_800F6310)
/* 02EFFC 8002F44C 0C00B6C6 */  jal         func_8002DB18
/* 02F000 8002F450 24050000 */   addiu      $a1, $zero, 0x0
/* 02F004 8002F454 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02F008 8002F458 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02F00C 8002F45C 03E00008 */  jr          $ra
/* 02F010 8002F460 00000000 */   nop

glabel func_8002F464 # 55
/* 02F014 8002F464 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02F018 8002F468 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02F01C 8002F46C 0C002671 */  jal         func_800099C4
/* 02F020 8002F470 00000000 */   nop
/* 02F024 8002F474 3C0E800F */  lui         $t6, %hi(D_800F6328)
/* 02F028 8002F478 3C0F800F */  lui         $t7, %hi(D_800F632C)
/* 02F02C 8002F47C 8DEF632C */  lw          $t7, %lo(D_800F632C)($t7)
/* 02F030 8002F480 8DCE6328 */  lw          $t6, %lo(D_800F6328)($t6)
/* 02F034 8002F484 006F082B */  sltu        $at, $v1, $t7
/* 02F038 8002F488 004E2023 */  subu        $a0, $v0, $t6
/* 02F03C 8002F48C 00812023 */  subu        $a0, $a0, $at
/* 02F040 8002F490 0C0143B2 */  jal         func_80050EC8
/* 02F044 8002F494 006F2823 */   subu       $a1, $v1, $t7
/* 02F048 8002F498 3C014396 */  lui         $at, 0x4396
/* 02F04C 8002F49C 44819000 */  mtc1        $at, $f18
/* 02F050 8002F4A0 46000406 */  mov.s       $f16, $f0
/* 02F054 8002F4A4 3C18800F */  lui         $t8, %hi(D_800F6320)
/* 02F058 8002F4A8 4600903E */  c.le.s      $f18, $f0
/* 02F05C 8002F4AC 00000000 */  nop
/* 02F060 8002F4B0 4500000F */  bc1f        .L8002F4F0
/* 02F064 8002F4B4 00000000 */   nop
/* 02F068 8002F4B8 44806000 */  mtc1        $zero, $f12
/* 02F06C 8002F4BC 3C0644FA */  lui         $a2, 0x44fa
/* 02F070 8002F4C0 0C00B616 */  jal         func_8002D858
/* 02F074 8002F4C4 46006386 */   mov.s      $f14, $f12
/* 02F078 8002F4C8 3C04800F */  lui         $a0, %hi(D_800F6310)
/* 02F07C 8002F4CC 24846310 */  addiu       $a0, $a0, %lo(D_800F6310)
/* 02F080 8002F4D0 0C00B6C6 */  jal         func_8002DB18
/* 02F084 8002F4D4 24050000 */   addiu      $a1, $zero, 0x0
/* 02F088 8002F4D8 3C04800F */  lui         $a0, %hi(D_800F6310)
/* 02F08C 8002F4DC 24846310 */  addiu       $a0, $a0, %lo(D_800F6310)
/* 02F090 8002F4E0 0C00B415 */  jal         func_8002D054
/* 02F094 8002F4E4 24050004 */   addiu      $a1, $zero, 0x4
/* 02F098 8002F4E8 10000048 */  b           .L8002F60C
/* 02F09C 8002F4EC 8FBF0014 */   lw         $ra, 0x14($sp)
.L8002F4F0:
/* 02F0A0 8002F4F0 8F186320 */  lw          $t8, %lo(D_800F6320)($t8)
/* 02F0A4 8002F4F4 57000023 */  bnel        $t8, $zero, .L8002F584
/* 02F0A8 8002F4F8 46128003 */   div.s      $f0, $f16, $f18
/* 02F0AC 8002F4FC 46128003 */  div.s       $f0, $f16, $f18
/* 02F0B0 8002F500 3C013F80 */  lui         $at, 0x3f80
/* 02F0B4 8002F504 44811000 */  mtc1        $at, $f2
/* 02F0B8 8002F508 3C0142B4 */  lui         $at, 0x42b4
/* 02F0BC 8002F50C 44814000 */  mtc1        $at, $f8
/* 02F0C0 8002F510 3C0143B4 */  lui         $at, 0x43b4
/* 02F0C4 8002F514 3C19800F */  lui         $t9, %hi(D_800F6314)
/* 02F0C8 8002F518 8F396314 */  lw          $t9, %lo(D_800F6314)($t9)
/* 02F0CC 8002F51C 3C08800F */  lui         $t0, %hi(D_800F6320)
/* 02F0D0 8002F520 46001101 */  sub.s       $f4, $f2, $f0
/* 02F0D4 8002F524 46002187 */  neg.s       $f6, $f4
/* 02F0D8 8002F528 44812000 */  mtc1        $at, $f4
/* 02F0DC 8002F52C 46083282 */  mul.s       $f10, $f6, $f8
/* 02F0E0 8002F530 3C01BF80 */  lui         $at, 0xbf80
/* 02F0E4 8002F534 44813000 */  mtc1        $at, $f6
/* 02F0E8 8002F538 46002302 */  mul.s       $f12, $f4, $f0
/* 02F0EC 8002F53C 3C01800A */  lui         $at, %hi(D_8009FA08)
/* 02F0F0 8002F540 46003202 */  mul.s       $f8, $f6, $f0
/* 02F0F4 8002F544 E72A000C */  swc1        $f10, 0xc($t9)
/* 02F0F8 8002F548 8D086320 */  lw          $t0, %lo(D_800F6320)($t0)
/* 02F0FC 8002F54C 00084880 */  sll         $t1, $t0, 2
/* 02F100 8002F550 01284823 */  subu        $t1, $t1, $t0
/* 02F104 8002F554 00094880 */  sll         $t1, $t1, 2
/* 02F108 8002F558 00290821 */  addu        $at, $at, $t1
/* 02F10C 8002F55C 46004282 */  mul.s       $f10, $f8, $f0
/* 02F110 8002F560 C424FA08 */  lwc1        $f4, %lo(D_8009FA08)($at)
/* 02F114 8002F564 46002182 */  mul.s       $f6, $f4, $f0
/* 02F118 8002F568 46025380 */  add.s       $f14, $f10, $f2
/* 02F11C 8002F56C 44063000 */  mfc1        $a2, $f6
/* 02F120 8002F570 0C00B616 */  jal         func_8002D858
/* 02F124 8002F574 00000000 */   nop
/* 02F128 8002F578 1000001F */  b           .L8002F5F8
/* 02F12C 8002F57C 00000000 */   nop
/* 02F130 8002F580 46128003 */  div.s       $f0, $f16, $f18
.L8002F584:
/* 02F134 8002F584 3C013F80 */  lui         $at, 0x3f80
/* 02F138 8002F588 44814000 */  mtc1        $at, $f8
/* 02F13C 8002F58C 3C01437A */  lui         $at, 0x437a
/* 02F140 8002F590 44815000 */  mtc1        $at, $f10
/* 02F144 8002F594 3C0A800F */  lui         $t2, %hi(D_800F6318)
/* 02F148 8002F598 8D4A6318 */  lw          $t2, %lo(D_800F6318)($t2)
/* 02F14C 8002F59C 3C0B800F */  lui         $t3, %hi(D_800F6320)
/* 02F150 8002F5A0 3C0143B4 */  lui         $at, 0x43b4
/* 02F154 8002F5A4 44813000 */  mtc1        $at, $f6
/* 02F158 8002F5A8 3C013F80 */  lui         $at, 0x3f80
/* 02F15C 8002F5AC 46004081 */  sub.s       $f2, $f8, $f0
/* 02F160 8002F5B0 460A1102 */  mul.s       $f4, $f2, $f10
/* 02F164 8002F5B4 44815000 */  mtc1        $at, $f10
/* 02F168 8002F5B8 3C01800A */  lui         $at, %hi(D_8009FA08)
/* 02F16C 8002F5BC 46003302 */  mul.s       $f12, $f6, $f0
/* 02F170 8002F5C0 00000000 */  nop
/* 02F174 8002F5C4 46021202 */  mul.s       $f8, $f2, $f2
/* 02F178 8002F5C8 E5440020 */  swc1        $f4, 0x20($t2)
/* 02F17C 8002F5CC 8D6B6320 */  lw          $t3, %lo(D_800F6320)($t3)
/* 02F180 8002F5D0 000B6080 */  sll         $t4, $t3, 2
/* 02F184 8002F5D4 018B6023 */  subu        $t4, $t4, $t3
/* 02F188 8002F5D8 000C6080 */  sll         $t4, $t4, 2
/* 02F18C 8002F5DC 002C0821 */  addu        $at, $at, $t4
/* 02F190 8002F5E0 C424FA08 */  lwc1        $f4, %lo(D_8009FA08)($at)
/* 02F194 8002F5E4 460A4381 */  sub.s       $f14, $f8, $f10
/* 02F198 8002F5E8 46002182 */  mul.s       $f6, $f4, $f0
/* 02F19C 8002F5EC 44063000 */  mfc1        $a2, $f6
/* 02F1A0 8002F5F0 0C00B616 */  jal         func_8002D858
/* 02F1A4 8002F5F4 00000000 */   nop
.L8002F5F8:
/* 02F1A8 8002F5F8 3C04800F */  lui         $a0, %hi(D_800F6310)
/* 02F1AC 8002F5FC 24846310 */  addiu       $a0, $a0, %lo(D_800F6310)
/* 02F1B0 8002F600 0C00B6C6 */  jal         func_8002DB18
/* 02F1B4 8002F604 24050000 */   addiu      $a1, $zero, 0x0
/* 02F1B8 8002F608 8FBF0014 */  lw          $ra, 0x14($sp)
.L8002F60C:
/* 02F1BC 8002F60C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02F1C0 8002F610 03E00008 */  jr          $ra
/* 02F1C4 8002F614 00000000 */   nop

glabel func_8002F618 # 56
/* 02F1C8 8002F618 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02F1CC 8002F61C AFBF0014 */  sw          $ra, 0x14($sp)
/* 02F1D0 8002F620 0C002671 */  jal         func_800099C4
/* 02F1D4 8002F624 00000000 */   nop
/* 02F1D8 8002F628 3C0E800F */  lui         $t6, %hi(D_800F6328)
/* 02F1DC 8002F62C 3C0F800F */  lui         $t7, %hi(D_800F632C)
/* 02F1E0 8002F630 8DEF632C */  lw          $t7, %lo(D_800F632C)($t7)
/* 02F1E4 8002F634 8DCE6328 */  lw          $t6, %lo(D_800F6328)($t6)
/* 02F1E8 8002F638 006F082B */  sltu        $at, $v1, $t7
/* 02F1EC 8002F63C 004E2023 */  subu        $a0, $v0, $t6
/* 02F1F0 8002F640 00812023 */  subu        $a0, $a0, $at
/* 02F1F4 8002F644 0C0143B2 */  jal         func_80050EC8
/* 02F1F8 8002F648 006F2823 */   subu       $a1, $v1, $t7
/* 02F1FC 8002F64C 3C014348 */  lui         $at, 0x4348
/* 02F200 8002F650 44812000 */  mtc1        $at, $f4
/* 02F204 8002F654 46000086 */  mov.s       $f2, $f0
/* 02F208 8002F658 3C18800F */  lui         $t8, %hi(D_800F6440)
/* 02F20C 8002F65C 4600203E */  c.le.s      $f4, $f0
/* 02F210 8002F660 3C02800F */  lui         $v0, %hi(D_800F6324)
/* 02F214 8002F664 45010004 */  bc1t        .L8002F678
/* 02F218 8002F668 00000000 */   nop
/* 02F21C 8002F66C 8F186440 */  lw          $t8, %lo(D_800F6440)($t8)
/* 02F220 8002F670 13000027 */  beqz        $t8, .L8002F710
/* 02F224 8002F674 00000000 */   nop
.L8002F678:
/* 02F228 8002F678 8C426324 */  lw          $v0, %lo(D_800F6324)($v0)
/* 02F22C 8002F67C 24010004 */  addiu       $at, $zero, 0x4
/* 02F230 8002F680 1440001D */  bnez        $v0, .L8002F6F8
/* 02F234 8002F684 00000000 */   nop
/* 02F238 8002F688 44806000 */  mtc1        $zero, $f12
/* 02F23C 8002F68C 3C04800F */  lui         $a0, %hi(D_800F6310)
/* 02F240 8002F690 24846310 */  addiu       $a0, $a0, %lo(D_800F6310)
/* 02F244 8002F694 44056000 */  mfc1        $a1, $f12
/* 02F248 8002F698 0C00B6C6 */  jal         func_8002DB18
/* 02F24C 8002F69C 00000000 */   nop
/* 02F250 8002F6A0 3C04800F */  lui         $a0, %hi(D_800F6310)
/* 02F254 8002F6A4 24846310 */  addiu       $a0, $a0, %lo(D_800F6310)
/* 02F258 8002F6A8 0C00B415 */  jal         func_8002D054
/* 02F25C 8002F6AC 24050001 */   addiu      $a1, $zero, 0x1
/* 02F260 8002F6B0 3C04800F */  lui         $a0, %hi(D_800F3E20)
/* 02F264 8002F6B4 24843E20 */  addiu       $a0, $a0, %lo(D_800F3E20)
/* 02F268 8002F6B8 0C045492 */  jal         func_80115248
/* 02F26C 8002F6BC 240500B8 */   addiu      $a1, $zero, 0xb8
/* 02F270 8002F6C0 3C19800F */  lui         $t9, %hi(D_800F6320)
/* 02F274 8002F6C4 8F396320 */  lw          $t9, %lo(D_800F6320)($t9)
/* 02F278 8002F6C8 3C04800F */  lui         $a0, %hi(D_800F3E20)
/* 02F27C 8002F6CC 24843E20 */  addiu       $a0, $a0, %lo(D_800F3E20)
/* 02F280 8002F6D0 17200005 */  bnez        $t9, .L8002F6E8
/* 02F284 8002F6D4 00000000 */   nop
/* 02F288 8002F6D8 0C045492 */  jal         func_80115248
/* 02F28C 8002F6DC 240500B4 */   addiu      $a1, $zero, 0xb4
/* 02F290 8002F6E0 10000039 */  b           .L8002F7C8
/* 02F294 8002F6E4 8FBF0014 */   lw         $ra, 0x14($sp)
.L8002F6E8:
/* 02F298 8002F6E8 0C045492 */  jal         func_80115248
/* 02F29C 8002F6EC 240500B5 */   addiu      $a1, $zero, 0xb5
/* 02F2A0 8002F6F0 10000035 */  b           .L8002F7C8
/* 02F2A4 8002F6F4 8FBF0014 */   lw         $ra, 0x14($sp)
.L8002F6F8:
/* 02F2A8 8002F6F8 54410033 */  bnel        $v0, $at, .L8002F7C8
/* 02F2AC 8002F6FC 8FBF0014 */   lw         $ra, 0x14($sp)
/* 02F2B0 8002F700 0C00BAEC */  jal         func_8002EBB0
/* 02F2B4 8002F704 00000000 */   nop
/* 02F2B8 8002F708 1000002F */  b           .L8002F7C8
/* 02F2BC 8002F70C 8FBF0014 */   lw         $ra, 0x14($sp)
.L8002F710:
/* 02F2C0 8002F710 3C02800F */  lui         $v0, %hi(D_800F6324)
/* 02F2C4 8002F714 8C426324 */  lw          $v0, %lo(D_800F6324)($v0)
/* 02F2C8 8002F718 3C0644FA */  lui         $a2, 0x44fa
/* 02F2CC 8002F71C 24010004 */  addiu       $at, $zero, 0x4
/* 02F2D0 8002F720 14400016 */  bnez        $v0, .L8002F77C
/* 02F2D4 8002F724 00000000 */   nop
/* 02F2D8 8002F728 44806000 */  mtc1        $zero, $f12
/* 02F2DC 8002F72C E7A2001C */  swc1        $f2, 0x1c($sp)
/* 02F2E0 8002F730 0C00B616 */  jal         func_8002D858
/* 02F2E4 8002F734 46006386 */   mov.s      $f14, $f12
/* 02F2E8 8002F738 3C014348 */  lui         $at, 0x4348
/* 02F2EC 8002F73C C7A2001C */  lwc1        $f2, 0x1c($sp)
/* 02F2F0 8002F740 44813000 */  mtc1        $at, $f6
/* 02F2F4 8002F744 3C014170 */  lui         $at, 0x4170
/* 02F2F8 8002F748 44815000 */  mtc1        $at, $f10
/* 02F2FC 8002F74C 46061203 */  div.s       $f8, $f2, $f6
/* 02F300 8002F750 3C01C170 */  lui         $at, 0xc170
/* 02F304 8002F754 44819000 */  mtc1        $at, $f18
/* 02F308 8002F758 3C04800F */  lui         $a0, %hi(D_800F6310)
/* 02F30C 8002F75C 24846310 */  addiu       $a0, $a0, %lo(D_800F6310)
/* 02F310 8002F760 460A4402 */  mul.s       $f16, $f8, $f10
/* 02F314 8002F764 46128100 */  add.s       $f4, $f16, $f18
/* 02F318 8002F768 44052000 */  mfc1        $a1, $f4
/* 02F31C 8002F76C 0C00B6C6 */  jal         func_8002DB18
/* 02F320 8002F770 00000000 */   nop
/* 02F324 8002F774 10000014 */  b           .L8002F7C8
/* 02F328 8002F778 8FBF0014 */   lw         $ra, 0x14($sp)
.L8002F77C:
/* 02F32C 8002F77C 14410011 */  bne         $v0, $at, .L8002F7C4
/* 02F330 8002F780 3C0644FA */   lui        $a2, 0x44fa
/* 02F334 8002F784 44806000 */  mtc1        $zero, $f12
/* 02F338 8002F788 E7A2001C */  swc1        $f2, 0x1c($sp)
/* 02F33C 8002F78C 0C00B616 */  jal         func_8002D858
/* 02F340 8002F790 46006386 */   mov.s      $f14, $f12
/* 02F344 8002F794 3C014348 */  lui         $at, 0x4348
/* 02F348 8002F798 C7A2001C */  lwc1        $f2, 0x1c($sp)
/* 02F34C 8002F79C 44813000 */  mtc1        $at, $f6
/* 02F350 8002F7A0 3C01C170 */  lui         $at, 0xc170
/* 02F354 8002F7A4 44815000 */  mtc1        $at, $f10
/* 02F358 8002F7A8 46061203 */  div.s       $f8, $f2, $f6
/* 02F35C 8002F7AC 3C04800F */  lui         $a0, %hi(D_800F6310)
/* 02F360 8002F7B0 24846310 */  addiu       $a0, $a0, %lo(D_800F6310)
/* 02F364 8002F7B4 460A4402 */  mul.s       $f16, $f8, $f10
/* 02F368 8002F7B8 44058000 */  mfc1        $a1, $f16
/* 02F36C 8002F7BC 0C00B6C6 */  jal         func_8002DB18
/* 02F370 8002F7C0 00000000 */   nop
.L8002F7C4:
/* 02F374 8002F7C4 8FBF0014 */  lw          $ra, 0x14($sp)
.L8002F7C8:
/* 02F378 8002F7C8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 02F37C 8002F7CC 03E00008 */  jr          $ra
/* 02F380 8002F7D0 00000000 */   nop

glabel func_8002F7D4 # 57
/* 02F384 8002F7D4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02F388 8002F7D8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02F38C 8002F7DC 3C04800F */  lui         $a0, %hi(D_800F6410)
/* 02F390 8002F7E0 0C000754 */  jal         func_80001D50
/* 02F394 8002F7E4 24846410 */   addiu      $a0, $a0, %lo(D_800F6410)
/* 02F398 8002F7E8 3C0E800F */  lui         $t6, %hi(D_800F6324)
/* 02F39C 8002F7EC 8DCE6324 */  lw          $t6, %lo(D_800F6324)($t6)
/* 02F3A0 8002F7F0 2DC10006 */  sltiu       $at, $t6, 0x6
/* 02F3A4 8002F7F4 10200014 */  beqz        $at, .L8002F848
/* 02F3A8 8002F7F8 000E7080 */   sll        $t6, $t6, 2
/* 02F3AC 8002F7FC 3C01800B */  lui         $at, %hi(jtbl_800AAF98)
/* 02F3B0 8002F800 002E0821 */  addu        $at, $at, $t6
/* 02F3B4 8002F804 8C2EAF98 */  lw          $t6, %lo(jtbl_800AAF98)($at)
/* 02F3B8 8002F808 01C00008 */  jr          $t6
/* 02F3BC 8002F80C 00000000 */   nop
glabel L8002F810
/* 02F3C0 8002F810 0C00BD86 */  jal         func_8002F618
/* 02F3C4 8002F814 00000000 */   nop
/* 02F3C8 8002F818 1000000C */  b           .L8002F84C
/* 02F3CC 8002F81C 8FBF0014 */   lw         $ra, 0x14($sp)
glabel L8002F820
/* 02F3D0 8002F820 0C00BCB9 */  jal         func_8002F2E4
/* 02F3D4 8002F824 00000000 */   nop
/* 02F3D8 8002F828 10000008 */  b           .L8002F84C
/* 02F3DC 8002F82C 8FBF0014 */   lw         $ra, 0x14($sp)
glabel L8002F830
/* 02F3E0 8002F830 0C00BC6C */  jal         func_8002F1B0
/* 02F3E4 8002F834 00000000 */   nop
/* 02F3E8 8002F838 10000004 */  b           .L8002F84C
/* 02F3EC 8002F83C 8FBF0014 */   lw         $ra, 0x14($sp)
glabel L8002F840
/* 02F3F0 8002F840 0C00BD19 */  jal         func_8002F464
/* 02F3F4 8002F844 00000000 */   nop
.L8002F848:
/* 02F3F8 8002F848 8FBF0014 */  lw          $ra, 0x14($sp)
.L8002F84C:
/* 02F3FC 8002F84C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02F400 8002F850 03E00008 */  jr          $ra
/* 02F404 8002F854 00000000 */   nop
/* 02F408 8002F858 00000000 */  nop
/* 02F40C 8002F85C 00000000 */  nop
