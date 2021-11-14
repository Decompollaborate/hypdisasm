.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8001C860 # 0
/* 01C410 8001C860 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01C414 8001C864 AFA40020 */  sw          $a0, 0x20($sp)
/* 01C418 8001C868 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01C41C 8001C86C 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 01C420 8001C870 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 01C424 8001C874 24050058 */  addiu       $a1, $zero, 0x58
/* 01C428 8001C878 0C00E03D */  jal         func_800380F4
/* 01C42C 8001C87C 24060038 */   addiu      $a2, $zero, 0x38
/* 01C430 8001C880 AFA2001C */  sw          $v0, 0x1c($sp)
/* 01C434 8001C884 00402025 */  move        $a0, $v0
/* 01C438 8001C888 0C014388 */  jal         bzero
/* 01C43C 8001C88C 24050058 */   addiu      $a1, $zero, 0x58
/* 01C440 8001C890 8FAE001C */  lw          $t6, 0x1c($sp)
/* 01C444 8001C894 8FAF0020 */  lw          $t7, 0x20($sp)
/* 01C448 8001C898 ADEE0054 */  sw          $t6, 0x54($t7)
/* 01C44C 8001C89C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01C450 8001C8A0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01C454 8001C8A4 03E00008 */  jr          $ra
/* 01C458 8001C8A8 00000000 */   nop

glabel func_8001C8AC # 1
/* 01C45C 8001C8AC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01C460 8001C8B0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01C464 8001C8B4 8C850054 */  lw          $a1, 0x54($a0)
/* 01C468 8001C8B8 8CA20004 */  lw          $v0, 0x4($a1)
/* 01C46C 8001C8BC 8CA30008 */  lw          $v1, 0x8($a1)
/* 01C470 8001C8C0 10400003 */  beq         $v0, $zero, .L8001C8D0
/* 01C474 8001C8C4 00000000 */   nop
/* 01C478 8001C8C8 8C440054 */  lw          $a0, 0x54($v0)
/* 01C47C 8001C8CC AC830008 */  sw          $v1, 0x8($a0)
.L8001C8D0:
/* 01C480 8001C8D0 10600003 */  beq         $v1, $zero, .L8001C8E0
/* 01C484 8001C8D4 00000000 */   nop
/* 01C488 8001C8D8 8C640054 */  lw          $a0, 0x54($v1)
/* 01C48C 8001C8DC AC820004 */  sw          $v0, 0x4($a0)
.L8001C8E0:
/* 01C490 8001C8E0 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 01C494 8001C8E4 0C00E152 */  jal         func_80038548
/* 01C498 8001C8E8 24842960 */   addiu      $a0, $a0, %lo(D_800F2960)
/* 01C49C 8001C8EC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01C4A0 8001C8F0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01C4A4 8001C8F4 03E00008 */  jr          $ra
/* 01C4A8 8001C8F8 00000000 */   nop

glabel func_8001C8FC # 2
/* 01C4AC 8001C8FC 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 01C4B0 8001C900 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01C4B4 8001C904 AFA40038 */  sw          $a0, 0x38($sp)
/* 01C4B8 8001C908 AFA60040 */  sw          $a2, 0x40($sp)
/* 01C4BC 8001C90C AFA70044 */  sw          $a3, 0x44($sp)
/* 01C4C0 8001C910 C4860018 */  lwc1        $f6, 0x18($a0)
/* 01C4C4 8001C914 C4A40018 */  lwc1        $f4, 0x18($a1)
/* 01C4C8 8001C918 46062201 */  sub.s       $f8, $f4, $f6
/* 01C4CC 8001C91C E7A8002C */  swc1        $f8, 0x2c($sp)
/* 01C4D0 8001C920 C490001C */  lwc1        $f16, 0x1c($a0)
/* 01C4D4 8001C924 C4AA001C */  lwc1        $f10, 0x1c($a1)
/* 01C4D8 8001C928 46105481 */  sub.s       $f18, $f10, $f16
/* 01C4DC 8001C92C E7B20030 */  swc1        $f18, 0x30($sp)
/* 01C4E0 8001C930 C4860020 */  lwc1        $f6, 0x20($a0)
/* 01C4E4 8001C934 C4A40020 */  lwc1        $f4, 0x20($a1)
/* 01C4E8 8001C938 27A4002C */  addiu       $a0, $sp, 0x2c
/* 01C4EC 8001C93C 46062201 */  sub.s       $f8, $f4, $f6
/* 01C4F0 8001C940 0C00E9F0 */  jal         func_8003A7C0
/* 01C4F4 8001C944 E7A80034 */   swc1       $f8, 0x34($sp)
/* 01C4F8 8001C948 C7AC0040 */  lwc1        $f12, 0x40($sp)
/* 01C4FC 8001C94C C7AA0044 */  lwc1        $f10, 0x44($sp)
/* 01C500 8001C950 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 01C504 8001C954 460C003E */  c.le.s      $f0, $f12
/* 01C508 8001C958 460C0081 */  sub.s       $f2, $f0, $f12
/* 01C50C 8001C95C 4503001B */  bc1tl       .L8001C9CC
/* 01C510 8001C960 8FBF0014 */   lw         $ra, 0x14($sp)
/* 01C514 8001C964 C430E4E4 */  lwc1        $f16, %lo(D_800AE4E4)($at)
/* 01C518 8001C968 8FA20048 */  lw          $v0, 0x48($sp)
/* 01C51C 8001C96C 27A3002C */  addiu       $v1, $sp, 0x2c
/* 01C520 8001C970 46105483 */  div.s       $f18, $f10, $f16
/* 01C524 8001C974 27A40038 */  addiu       $a0, $sp, 0x38
/* 01C528 8001C978 46121082 */  mul.s       $f2, $f2, $f18
/* 01C52C 8001C97C 00000000 */  nop
/* 01C530 8001C980 C46E0000 */  lwc1        $f14, 0x0($v1)
/* 01C534 8001C984 24630004 */  addiu       $v1, $v1, 0x4
/* 01C538 8001C988 C4520000 */  lwc1        $f18, 0x0($v0)
/* 01C53C 8001C98C 46027402 */  mul.s       $f16, $f14, $f2
/* 01C540 8001C990 5064000B */  beql        $v1, $a0, .L8001C9C0
/* 01C544 8001C994 46109380 */   add.s      $f14, $f18, $f16
/* 01C548 8001C998 46109380 */  add.s       $f14, $f18, $f16
.L8001C99C:
/* 01C54C 8001C99C C4520004 */  lwc1        $f18, 0x4($v0)
/* 01C550 8001C9A0 24630004 */  addiu       $v1, $v1, 0x4
/* 01C554 8001C9A4 24420004 */  addiu       $v0, $v0, 0x4
/* 01C558 8001C9A8 E44EFFFC */  swc1        $f14, -0x4($v0)
/* 01C55C 8001C9AC C46EFFFC */  lwc1        $f14, -0x4($v1)
/* 01C560 8001C9B0 46027402 */  mul.s       $f16, $f14, $f2
/* 01C564 8001C9B4 5464FFF9 */  bnel        $v1, $a0, .L8001C99C
/* 01C568 8001C9B8 46109380 */   add.s      $f14, $f18, $f16
/* 01C56C 8001C9BC 46109380 */  add.s       $f14, $f18, $f16
.L8001C9C0:
/* 01C570 8001C9C0 24420004 */  addiu       $v0, $v0, 0x4
/* 01C574 8001C9C4 E44EFFFC */  swc1        $f14, -0x4($v0)
/* 01C578 8001C9C8 8FBF0014 */  lw          $ra, 0x14($sp)
.L8001C9CC:
/* 01C57C 8001C9CC 27BD0038 */  addiu       $sp, $sp, 0x38
/* 01C580 8001C9D0 03E00008 */  jr          $ra
/* 01C584 8001C9D4 00000000 */   nop

glabel func_8001C9D8 # 3
/* 01C588 8001C9D8 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 01C58C 8001C9DC 44800000 */  mtc1        $zero, $f0
/* 01C590 8001C9E0 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01C594 8001C9E4 AFB10020 */  sw          $s1, 0x20($sp)
/* 01C598 8001C9E8 AFB0001C */  sw          $s0, 0x1c($sp)
/* 01C59C 8001C9EC 8C900054 */  lw          $s0, 0x54($a0)
/* 01C5A0 8001C9F0 E7A00050 */  swc1        $f0, 0x50($sp)
/* 01C5A4 8001C9F4 E7A0004C */  swc1        $f0, 0x4c($sp)
/* 01C5A8 8001C9F8 E7A00048 */  swc1        $f0, 0x48($sp)
/* 01C5AC 8001C9FC 8E020028 */  lw          $v0, 0x28($s0)
/* 01C5B0 8001CA00 00808825 */  move        $s1, $a0
/* 01C5B4 8001CA04 50400006 */  beql        $v0, $zero, .L8001CA20
/* 01C5B8 8001CA08 27A20048 */   addiu      $v0, $sp, 0x48
/* 01C5BC 8001CA0C 0040F809 */  jalr        $v0
/* 01C5C0 8001CA10 27A50048 */   addiu      $a1, $sp, 0x48
/* 01C5C4 8001CA14 24010001 */  addiu       $at, $zero, 0x1
/* 01C5C8 8001CA18 1041002A */  beq         $v0, $at, .L8001CAC4
/* 01C5CC 8001CA1C 27A20048 */   addiu      $v0, $sp, 0x48
.L8001CA20:
/* 01C5D0 8001CA20 02001825 */  move        $v1, $s0
/* 01C5D4 8001CA24 27A40054 */  addiu       $a0, $sp, 0x54
/* 01C5D8 8001CA28 C46E001C */  lwc1        $f14, 0x1c($v1)
/* 01C5DC 8001CA2C C60C0018 */  lwc1        $f12, 0x18($s0)
/* 01C5E0 8001CA30 24420004 */  addiu       $v0, $v0, 0x4
/* 01C5E4 8001CA34 C450FFFC */  lwc1        $f16, -0x4($v0)
/* 01C5E8 8001CA38 460C7482 */  mul.s       $f18, $f14, $f12
/* 01C5EC 8001CA3C 5044000C */  beql        $v0, $a0, .L8001CA70
/* 01C5F0 8001CA40 46128380 */   add.s      $f14, $f16, $f18
/* 01C5F4 8001CA44 46128380 */  add.s       $f14, $f16, $f18
.L8001CA48:
/* 01C5F8 8001CA48 C4500000 */  lwc1        $f16, 0x0($v0)
/* 01C5FC 8001CA4C 24420004 */  addiu       $v0, $v0, 0x4
/* 01C600 8001CA50 24630004 */  addiu       $v1, $v1, 0x4
/* 01C604 8001CA54 E44EFFF8 */  swc1        $f14, -0x8($v0)
/* 01C608 8001CA58 C46E001C */  lwc1        $f14, 0x1c($v1)
/* 01C60C 8001CA5C C60C0018 */  lwc1        $f12, 0x18($s0)
/* 01C610 8001CA60 460C7482 */  mul.s       $f18, $f14, $f12
/* 01C614 8001CA64 5444FFF8 */  bnel        $v0, $a0, .L8001CA48
/* 01C618 8001CA68 46128380 */   add.s      $f14, $f16, $f18
/* 01C61C 8001CA6C 46128380 */  add.s       $f14, $f16, $f18
.L8001CA70:
/* 01C620 8001CA70 24630004 */  addiu       $v1, $v1, 0x4
/* 01C624 8001CA74 E44EFFFC */  swc1        $f14, -0x4($v0)
/* 01C628 8001CA78 8E050004 */  lw          $a1, 0x4($s0)
/* 01C62C 8001CA7C 02202025 */  move        $a0, $s1
/* 01C630 8001CA80 50A00008 */  beql        $a1, $zero, .L8001CAA4
/* 01C634 8001CA84 8E050008 */   lw         $a1, 0x8($s0)
/* 01C638 8001CA88 8CAE0054 */  lw          $t6, 0x54($a1)
/* 01C63C 8001CA8C 8E070010 */  lw          $a3, 0x10($s0)
/* 01C640 8001CA90 27AF0048 */  addiu       $t7, $sp, 0x48
/* 01C644 8001CA94 8DC6000C */  lw          $a2, 0xc($t6)
/* 01C648 8001CA98 0C00723F */  jal         func_8001C8FC
/* 01C64C 8001CA9C AFAF0010 */   sw         $t7, 0x10($sp)
/* 01C650 8001CAA0 8E050008 */  lw          $a1, 0x8($s0)
.L8001CAA4:
/* 01C654 8001CAA4 02202025 */  move        $a0, $s1
/* 01C658 8001CAA8 27B80048 */  addiu       $t8, $sp, 0x48
/* 01C65C 8001CAAC 50A00006 */  beql        $a1, $zero, .L8001CAC8
/* 01C660 8001CAB0 C7B20048 */   lwc1       $f18, 0x48($sp)
/* 01C664 8001CAB4 8E06000C */  lw          $a2, 0xc($s0)
/* 01C668 8001CAB8 8E070014 */  lw          $a3, 0x14($s0)
/* 01C66C 8001CABC 0C00723F */  jal         func_8001C8FC
/* 01C670 8001CAC0 AFB80010 */   sw         $t8, 0x10($sp)
.L8001CAC4:
/* 01C674 8001CAC4 C7B20048 */  lwc1        $f18, 0x48($sp)
.L8001CAC8:
/* 01C678 8001CAC8 3C04800B */  lui         $a0, %hi(D_800AE4E4)
/* 01C67C 8001CACC 2484E4E4 */  addiu       $a0, $a0, %lo(D_800AE4E4)
/* 01C680 8001CAD0 E612001C */  swc1        $f18, 0x1c($s0)
/* 01C684 8001CAD4 C7A4004C */  lwc1        $f4, 0x4c($sp)
/* 01C688 8001CAD8 02201025 */  move        $v0, $s1
/* 01C68C 8001CADC 27A30048 */  addiu       $v1, $sp, 0x48
/* 01C690 8001CAE0 E6040020 */  swc1        $f4, 0x20($s0)
/* 01C694 8001CAE4 C7A60050 */  lwc1        $f6, 0x50($sp)
/* 01C698 8001CAE8 27A50054 */  addiu       $a1, $sp, 0x54
/* 01C69C 8001CAEC E6060024 */  swc1        $f6, 0x24($s0)
/* 01C6A0 8001CAF0 C46E0000 */  lwc1        $f14, 0x0($v1)
/* 01C6A4 8001CAF4 C48C0000 */  lwc1        $f12, 0x0($a0)
/* 01C6A8 8001CAF8 24630004 */  addiu       $v1, $v1, 0x4
/* 01C6AC 8001CAFC C4500018 */  lwc1        $f16, 0x18($v0)
/* 01C6B0 8001CB00 460C7482 */  mul.s       $f18, $f14, $f12
/* 01C6B4 8001CB04 5065000C */  beql        $v1, $a1, .L8001CB38
/* 01C6B8 8001CB08 46128380 */   add.s      $f14, $f16, $f18
/* 01C6BC 8001CB0C 46128380 */  add.s       $f14, $f16, $f18
.L8001CB10:
/* 01C6C0 8001CB10 C450001C */  lwc1        $f16, 0x1c($v0)
/* 01C6C4 8001CB14 24630004 */  addiu       $v1, $v1, 0x4
/* 01C6C8 8001CB18 24420004 */  addiu       $v0, $v0, 0x4
/* 01C6CC 8001CB1C E44E0014 */  swc1        $f14, 0x14($v0)
/* 01C6D0 8001CB20 C46EFFFC */  lwc1        $f14, -0x4($v1)
/* 01C6D4 8001CB24 C48C0000 */  lwc1        $f12, 0x0($a0)
/* 01C6D8 8001CB28 460C7482 */  mul.s       $f18, $f14, $f12
/* 01C6DC 8001CB2C 5465FFF8 */  bnel        $v1, $a1, .L8001CB10
/* 01C6E0 8001CB30 46128380 */   add.s      $f14, $f16, $f18
/* 01C6E4 8001CB34 46128380 */  add.s       $f14, $f16, $f18
.L8001CB38:
/* 01C6E8 8001CB38 24420004 */  addiu       $v0, $v0, 0x4
/* 01C6EC 8001CB3C E44E0014 */  swc1        $f14, 0x14($v0)
/* 01C6F0 8001CB40 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01C6F4 8001CB44 8FB0001C */  lw          $s0, 0x1c($sp)
/* 01C6F8 8001CB48 8FB10020 */  lw          $s1, 0x20($sp)
/* 01C6FC 8001CB4C 03E00008 */  jr          $ra
/* 01C700 8001CB50 27BD0058 */   addiu      $sp, $sp, 0x58

glabel func_8001CB54 # 4
/* 01C704 8001CB54 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 01C708 8001CB58 AFBF001C */  sw          $ra, 0x1c($sp)
/* 01C70C 8001CB5C AFB10018 */  sw          $s1, 0x18($sp)
/* 01C710 8001CB60 AFB00014 */  sw          $s0, 0x14($sp)
/* 01C714 8001CB64 00808025 */  move        $s0, $a0
/* 01C718 8001CB68 0C007276 */  jal         func_8001C9D8
/* 01C71C 8001CB6C 8C910054 */   lw         $s1, 0x54($a0)
/* 01C720 8001CB70 0C0026AE */  jal         func_80009AB8
/* 01C724 8001CB74 02002025 */   move       $a0, $s0
/* 01C728 8001CB78 3C014407 */  lui         $at, 0x4407
/* 01C72C 8001CB7C 44813000 */  mtc1        $at, $f6
/* 01C730 8001CB80 C6240000 */  lwc1        $f4, 0x0($s1)
/* 01C734 8001CB84 46062302 */  mul.s       $f12, $f4, $f6
/* 01C738 8001CB88 0C00F0F7 */  jal         func_8003C3DC
/* 01C73C 8001CB8C 00000000 */   nop
/* 01C740 8001CB90 3C014234 */  lui         $at, 0x4234
/* 01C744 8001CB94 44814000 */  mtc1        $at, $f8
/* 01C748 8001CB98 8E0E0038 */  lw          $t6, 0x38($s0)
/* 01C74C 8001CB9C 44806000 */  mtc1        $zero, $f12
/* 01C750 8001CBA0 46080282 */  mul.s       $f10, $f0, $f8
/* 01C754 8001CBA4 31CF0001 */  andi        $t7, $t6, 0x1
/* 01C758 8001CBA8 3C0143B4 */  lui         $at, 0x43b4
/* 01C75C 8001CBAC 11E00004 */  beq         $t7, $zero, .L8001CBC0
/* 01C760 8001CBB0 E60A000C */   swc1       $f10, 0xc($s0)
/* 01C764 8001CBB4 C610000C */  lwc1        $f16, 0xc($s0)
/* 01C768 8001CBB8 46008487 */  neg.s       $f18, $f16
/* 01C76C 8001CBBC E612000C */  swc1        $f18, 0xc($s0)
.L8001CBC0:
/* 01C770 8001CBC0 C600000C */  lwc1        $f0, 0xc($s0)
/* 01C774 8001CBC4 460C003C */  c.lt.s      $f0, $f12
/* 01C778 8001CBC8 00000000 */  nop
/* 01C77C 8001CBCC 4502000B */  bc1fl       .L8001CBFC
/* 01C780 8001CBD0 3C0143B4 */   lui        $at, 0x43b4
/* 01C784 8001CBD4 44811000 */  mtc1        $at, $f2
/* 01C788 8001CBD8 00000000 */  nop
/* 01C78C 8001CBDC 46020100 */  add.s       $f4, $f0, $f2
.L8001CBE0:
/* 01C790 8001CBE0 E604000C */  swc1        $f4, 0xc($s0)
/* 01C794 8001CBE4 C600000C */  lwc1        $f0, 0xc($s0)
/* 01C798 8001CBE8 460C003C */  c.lt.s      $f0, $f12
/* 01C79C 8001CBEC 00000000 */  nop
/* 01C7A0 8001CBF0 4503FFFB */  bc1tl       .L8001CBE0
/* 01C7A4 8001CBF4 46020100 */   add.s      $f4, $f0, $f2
/* 01C7A8 8001CBF8 3C0143B4 */  lui         $at, 0x43b4
.L8001CBFC:
/* 01C7AC 8001CBFC 44811000 */  mtc1        $at, $f2
/* 01C7B0 8001CC00 00000000 */  nop
/* 01C7B4 8001CC04 4600103E */  c.le.s      $f2, $f0
/* 01C7B8 8001CC08 00000000 */  nop
/* 01C7BC 8001CC0C 45000008 */  bc1f        .L8001CC30
/* 01C7C0 8001CC10 00000000 */   nop
/* 01C7C4 8001CC14 46020181 */  sub.s       $f6, $f0, $f2
.L8001CC18:
/* 01C7C8 8001CC18 E606000C */  swc1        $f6, 0xc($s0)
/* 01C7CC 8001CC1C C600000C */  lwc1        $f0, 0xc($s0)
/* 01C7D0 8001CC20 4600103E */  c.le.s      $f2, $f0
/* 01C7D4 8001CC24 00000000 */  nop
/* 01C7D8 8001CC28 4503FFFB */  bc1tl       .L8001CC18
/* 01C7DC 8001CC2C 46020181 */   sub.s      $f6, $f0, $f2
.L8001CC30:
/* 01C7E0 8001CC30 3C10800B */  lui         $s0, %hi(D_800AE4E4)
/* 01C7E4 8001CC34 2610E4E4 */  addiu       $s0, $s0, %lo(D_800AE4E4)
/* 01C7E8 8001CC38 C60A0000 */  lwc1        $f10, 0x0($s0)
/* 01C7EC 8001CC3C C6280034 */  lwc1        $f8, 0x34($s1)
/* 01C7F0 8001CC40 26240038 */  addiu       $a0, $s1, 0x38
/* 01C7F4 8001CC44 27A50028 */  addiu       $a1, $sp, 0x28
/* 01C7F8 8001CC48 460A4002 */  mul.s       $f0, $f8, $f10
/* 01C7FC 8001CC4C 44060000 */  mfc1        $a2, $f0
/* 01C800 8001CC50 0C002980 */  jal         func_8000A600
/* 01C804 8001CC54 E7A00024 */   swc1       $f0, 0x24($sp)
/* 01C808 8001CC58 C7A00024 */  lwc1        $f0, 0x24($sp)
/* 01C80C 8001CC5C 26240044 */  addiu       $a0, $s1, 0x44
/* 01C810 8001CC60 27A50028 */  addiu       $a1, $sp, 0x28
/* 01C814 8001CC64 44060000 */  mfc1        $a2, $f0
/* 01C818 8001CC68 0C002980 */  jal         func_8000A600
/* 01C81C 8001CC6C 00000000 */   nop
/* 01C820 8001CC70 8FB80028 */  lw          $t8, 0x28($sp)
/* 01C824 8001CC74 C6300000 */  lwc1        $f16, 0x0($s1)
/* 01C828 8001CC78 A2380053 */  sb          $t8, 0x53($s1)
/* 01C82C 8001CC7C C6120000 */  lwc1        $f18, 0x0($s0)
/* 01C830 8001CC80 46128100 */  add.s       $f4, $f16, $f18
/* 01C834 8001CC84 E6240000 */  swc1        $f4, 0x0($s1)
/* 01C838 8001CC88 8FBF001C */  lw          $ra, 0x1c($sp)
/* 01C83C 8001CC8C 8FB10018 */  lw          $s1, 0x18($sp)
/* 01C840 8001CC90 8FB00014 */  lw          $s0, 0x14($sp)
/* 01C844 8001CC94 03E00008 */  jr          $ra
/* 01C848 8001CC98 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8001CC9C # 5
/* 01C84C 8001CC9C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01C850 8001CCA0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01C854 8001CCA4 AFA40020 */  sw          $a0, 0x20($sp)
/* 01C858 8001CCA8 8C830054 */  lw          $v1, 0x54($a0)
/* 01C85C 8001CCAC 3C04800B */  lui         $a0, %hi(D_800ABDD0)
/* 01C860 8001CCB0 2484BDD0 */  addiu       $a0, $a0, %lo(D_800ABDD0)
/* 01C864 8001CCB4 84660040 */  lh          $a2, 0x40($v1)
/* 01C868 8001CCB8 24050005 */  addiu       $a1, $zero, 0x5
/* 01C86C 8001CCBC 0C00309B */  jal         func_8000C26C
/* 01C870 8001CCC0 AFA3001C */   sw         $v1, 0x1c($sp)
/* 01C874 8001CCC4 3C06800B */  lui         $a2, %hi(D_800ABDD0)
/* 01C878 8001CCC8 24C6BDD0 */  addiu       $a2, $a2, %lo(D_800ABDD0)
/* 01C87C 8001CCCC 8CC50000 */  lw          $a1, 0x0($a2)
/* 01C880 8001CCD0 8FA3001C */  lw          $v1, 0x1c($sp)
/* 01C884 8001CCD4 3C18FA00 */  lui         $t8, 0xfa00
/* 01C888 8001CCD8 24AF0008 */  addiu       $t7, $a1, 0x8
/* 01C88C 8001CCDC ACCF0000 */  sw          $t7, 0x0($a2)
/* 01C890 8001CCE0 ACB80000 */  sw          $t8, 0x0($a1)
/* 01C894 8001CCE4 906B0051 */  lbu         $t3, 0x51($v1)
/* 01C898 8001CCE8 90680050 */  lbu         $t0, 0x50($v1)
/* 01C89C 8001CCEC 906F0052 */  lbu         $t7, 0x52($v1)
/* 01C8A0 8001CCF0 906A0053 */  lbu         $t2, 0x53($v1)
/* 01C8A4 8001CCF4 000B6400 */  sll         $t4, $t3, 16
/* 01C8A8 8001CCF8 00084E00 */  sll         $t1, $t0, 24
/* 01C8AC 8001CCFC 012C6825 */  or          $t5, $t1, $t4
/* 01C8B0 8001CD00 000FC200 */  sll         $t8, $t7, 8
/* 01C8B4 8001CD04 01B8C825 */  or          $t9, $t5, $t8
/* 01C8B8 8001CD08 032A5825 */  or          $t3, $t9, $t2
/* 01C8BC 8001CD0C ACAB0004 */  sw          $t3, 0x4($a1)
/* 01C8C0 8001CD10 8FA90020 */  lw          $t1, 0x20($sp)
/* 01C8C4 8001CD14 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01C8C8 8001CD18 8D220030 */  lw          $v0, 0x30($t1)
/* 01C8CC 8001CD1C 03E00008 */  jr          $ra
/* 01C8D0 8001CD20 27BD0020 */   addiu      $sp, $sp, 0x20

glabel func_8001CD24 # 6
/* 01C8D4 8001CD24 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 01C8D8 8001CD28 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01C8DC 8001CD2C AFB20020 */  sw          $s2, 0x20($sp)
/* 01C8E0 8001CD30 AFB1001C */  sw          $s1, 0x1c($sp)
/* 01C8E4 8001CD34 AFB00018 */  sw          $s0, 0x18($sp)
/* 01C8E8 8001CD38 3C0142C8 */  lui         $at, 0x42c8
/* 01C8EC 8001CD3C 44812000 */  mtc1        $at, $f4
/* 01C8F0 8001CD40 C486001C */  lwc1        $f6, 0x1c($a0)
/* 01C8F4 8001CD44 00A08025 */  move        $s0, $a1
/* 01C8F8 8001CD48 00809025 */  move        $s2, $a0
/* 01C8FC 8001CD4C 4606203C */  c.lt.s      $f4, $f6
/* 01C900 8001CD50 8C830054 */  lw          $v1, 0x54($a0)
/* 01C904 8001CD54 4502000A */  bc1fl       .L8001CD80
/* 01C908 8001CD58 8C64002C */   lw         $a0, 0x2c($v1)
/* 01C90C 8001CD5C 0C0021EF */  jal         func_800087BC
/* 01C910 8001CD60 8C840050 */   lw         $a0, 0x50($a0)
/* 01C914 8001CD64 44800000 */  mtc1        $zero, $f0
/* 01C918 8001CD68 24020001 */  addiu       $v0, $zero, 0x1
/* 01C91C 8001CD6C E6000000 */  swc1        $f0, 0x0($s0)
/* 01C920 8001CD70 E6000004 */  swc1        $f0, 0x4($s0)
/* 01C924 8001CD74 1000006B */  b           .L8001CF24
/* 01C928 8001CD78 E6000008 */   swc1       $f0, 0x8($s0)
/* 01C92C 8001CD7C 8C64002C */  lw          $a0, 0x2c($v1)
.L8001CD80:
/* 01C930 8001CD80 0C0462B3 */  jal         func_80118ACC
/* 01C934 8001CD84 AFA30034 */   sw         $v1, 0x34($sp)
/* 01C938 8001CD88 8FA30034 */  lw          $v1, 0x34($sp)
/* 01C93C 8001CD8C 14400009 */  bne         $v0, $zero, .L8001CDB4
/* 01C940 8001CD90 00408825 */   move       $s1, $v0
/* 01C944 8001CD94 44800000 */  mtc1        $zero, $f0
/* 01C948 8001CD98 3C014120 */  lui         $at, 0x4120
/* 01C94C 8001CD9C 44814000 */  mtc1        $at, $f8
/* 01C950 8001CDA0 24020001 */  addiu       $v0, $zero, 0x1
/* 01C954 8001CDA4 E6000000 */  swc1        $f0, 0x0($s0)
/* 01C958 8001CDA8 E6000008 */  swc1        $f0, 0x8($s0)
/* 01C95C 8001CDAC 1000005D */  b           .L8001CF24
/* 01C960 8001CDB0 E6080004 */   swc1       $f8, 0x4($s0)
.L8001CDB4:
/* 01C964 8001CDB4 C62A0044 */  lwc1        $f10, 0x44($s1)
/* 01C968 8001CDB8 C6500018 */  lwc1        $f16, 0x18($s2)
/* 01C96C 8001CDBC 02002025 */  move        $a0, $s0
/* 01C970 8001CDC0 46105481 */  sub.s       $f18, $f10, $f16
/* 01C974 8001CDC4 E6120000 */  swc1        $f18, 0x0($s0)
/* 01C978 8001CDC8 C646001C */  lwc1        $f6, 0x1c($s2)
/* 01C97C 8001CDCC C6240048 */  lwc1        $f4, 0x48($s1)
/* 01C980 8001CDD0 46062201 */  sub.s       $f8, $f4, $f6
/* 01C984 8001CDD4 E6080004 */  swc1        $f8, 0x4($s0)
/* 01C988 8001CDD8 C6500020 */  lwc1        $f16, 0x20($s2)
/* 01C98C 8001CDDC C62A004C */  lwc1        $f10, 0x4c($s1)
/* 01C990 8001CDE0 46105481 */  sub.s       $f18, $f10, $f16
/* 01C994 8001CDE4 E6120008 */  swc1        $f18, 0x8($s0)
/* 01C998 8001CDE8 0C00E9F0 */  jal         func_8003A7C0
/* 01C99C 8001CDEC AFA30034 */   sw         $v1, 0x34($sp)
/* 01C9A0 8001CDF0 8FA30034 */  lw          $v1, 0x34($sp)
/* 01C9A4 8001CDF4 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 01C9A8 8001CDF8 8C6E0054 */  lw          $t6, 0x54($v1)
/* 01C9AC 8001CDFC 51C00034 */  beql        $t6, $zero, .L8001CED0
/* 01C9B0 8001CE00 C4620030 */   lwc1       $f2, 0x30($v1)
/* 01C9B4 8001CE04 C6240024 */  lwc1        $f4, 0x24($s1)
/* 01C9B8 8001CE08 C6460024 */  lwc1        $f6, 0x24($s2)
/* 01C9BC 8001CE0C 46062200 */  add.s       $f8, $f4, $f6
/* 01C9C0 8001CE10 4608003C */  c.lt.s      $f0, $f8
/* 01C9C4 8001CE14 00000000 */  nop
/* 01C9C8 8001CE18 4502002D */  bc1fl       .L8001CED0
/* 01C9CC 8001CE1C C4620030 */   lwc1       $f2, 0x30($v1)
/* 01C9D0 8001CE20 8C6F0008 */  lw          $t7, 0x8($v1)
/* 01C9D4 8001CE24 3C048007 */  lui         $a0, %hi(D_800760A8)
/* 01C9D8 8001CE28 AFAF0028 */  sw          $t7, 0x28($sp)
/* 01C9DC 8001CE2C AC600054 */  sw          $zero, 0x54($v1)
/* 01C9E0 8001CE30 96420036 */  lhu         $v0, 0x36($s2)
/* 01C9E4 8001CE34 30580002 */  andi        $t8, $v0, 0x2
/* 01C9E8 8001CE38 17000012 */  bne         $t8, $zero, .L8001CE84
/* 01C9EC 8001CE3C 34590002 */   ori        $t9, $v0, 0x2
/* 01C9F0 8001CE40 A6590036 */  sh          $t9, 0x36($s2)
/* 01C9F4 8001CE44 8E280050 */  lw          $t0, 0x50($s1)
/* 01C9F8 8001CE48 8C8460A8 */  lw          $a0, %lo(D_800760A8)($a0)
/* 01C9FC 8001CE4C 2405008F */  addiu       $a1, $zero, 0x8f
/* 01CA00 8001CE50 3C0641A0 */  lui         $a2, 0x41a0
/* 01CA04 8001CE54 14880009 */  bne         $a0, $t0, .L8001CE7C
/* 01CA08 8001CE58 3C0742C8 */   lui        $a3, 0x42c8
/* 01CA0C 8001CE5C 0C0052D8 */  jal         func_80014B60
/* 01CA10 8001CE60 2405008F */   addiu      $a1, $zero, 0x8f
/* 01CA14 8001CE64 3C048007 */  lui         $a0, %hi(D_800760A8)
/* 01CA18 8001CE68 8C8460A8 */  lw          $a0, %lo(D_800760A8)($a0)
/* 01CA1C 8001CE6C 0C00528F */  jal         func_80014A3C
/* 01CA20 8001CE70 3C054020 */   lui        $a1, 0x4020
/* 01CA24 8001CE74 10000004 */  b           .L8001CE88
/* 01CA28 8001CE78 8FA90028 */   lw         $t1, 0x28($sp)
.L8001CE7C:
/* 01CA2C 8001CE7C 0C0026EE */  jal         func_80009BB8
/* 01CA30 8001CE80 02202025 */   move       $a0, $s1
.L8001CE84:
/* 01CA34 8001CE84 8FA90028 */  lw          $t1, 0x28($sp)
.L8001CE88:
/* 01CA38 8001CE88 3C0A8002 */  lui         $t2, %hi(func_8001CD24)
/* 01CA3C 8001CE8C 11200007 */  beq         $t1, $zero, .L8001CEAC
/* 01CA40 8001CE90 00000000 */   nop
/* 01CA44 8001CE94 8D220054 */  lw          $v0, 0x54($t1)
/* 01CA48 8001CE98 254ACD24 */  addiu       $t2, $t2, %lo(func_8001CD24)
/* 01CA4C 8001CE9C 240B0001 */  addiu       $t3, $zero, 0x1
/* 01CA50 8001CEA0 AC4A0028 */  sw          $t2, 0x28($v0)
/* 01CA54 8001CEA4 10000003 */  b           .L8001CEB4
/* 01CA58 8001CEA8 AC4B0054 */   sw         $t3, 0x54($v0)
.L8001CEAC:
/* 01CA5C 8001CEAC 0C0021EF */  jal         func_800087BC
/* 01CA60 8001CEB0 8E440050 */   lw         $a0, 0x50($s2)
.L8001CEB4:
/* 01CA64 8001CEB4 44800000 */  mtc1        $zero, $f0
/* 01CA68 8001CEB8 24020001 */  addiu       $v0, $zero, 0x1
/* 01CA6C 8001CEBC E6000000 */  swc1        $f0, 0x0($s0)
/* 01CA70 8001CEC0 E6000004 */  swc1        $f0, 0x4($s0)
/* 01CA74 8001CEC4 10000017 */  b           .L8001CF24
/* 01CA78 8001CEC8 E6000008 */   swc1       $f0, 0x8($s0)
/* 01CA7C 8001CECC C4620030 */  lwc1        $f2, 0x30($v1)
.L8001CED0:
/* 01CA80 8001CED0 4600103C */  c.lt.s      $f2, $f0
/* 01CA84 8001CED4 00000000 */  nop
/* 01CA88 8001CED8 45020004 */  bc1fl       .L8001CEEC
/* 01CA8C 8001CEDC 46000306 */   mov.s      $f12, $f0
/* 01CA90 8001CEE0 10000002 */  b           .L8001CEEC
/* 01CA94 8001CEE4 46001306 */   mov.s      $f12, $f2
/* 01CA98 8001CEE8 46000306 */  mov.s       $f12, $f0
.L8001CEEC:
/* 01CA9C 8001CEEC C42AE4E4 */  lwc1        $f10, %lo(D_800AE4E4)($at)
/* 01CAA0 8001CEF0 C6100000 */  lwc1        $f16, 0x0($s0)
/* 01CAA4 8001CEF4 C6040004 */  lwc1        $f4, 0x4($s0)
/* 01CAA8 8001CEF8 460A6003 */  div.s       $f0, $f12, $f10
/* 01CAAC 8001CEFC C6080008 */  lwc1        $f8, 0x8($s0)
/* 01CAB0 8001CF00 24020002 */  addiu       $v0, $zero, 0x2
/* 01CAB4 8001CF04 46008482 */  mul.s       $f18, $f16, $f0
/* 01CAB8 8001CF08 00000000 */  nop
/* 01CABC 8001CF0C 46002182 */  mul.s       $f6, $f4, $f0
/* 01CAC0 8001CF10 00000000 */  nop
/* 01CAC4 8001CF14 46004282 */  mul.s       $f10, $f8, $f0
/* 01CAC8 8001CF18 E6120000 */  swc1        $f18, 0x0($s0)
/* 01CACC 8001CF1C E6060004 */  swc1        $f6, 0x4($s0)
/* 01CAD0 8001CF20 E60A0008 */  swc1        $f10, 0x8($s0)
.L8001CF24:
/* 01CAD4 8001CF24 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01CAD8 8001CF28 8FB00018 */  lw          $s0, 0x18($sp)
/* 01CADC 8001CF2C 8FB1001C */  lw          $s1, 0x1c($sp)
/* 01CAE0 8001CF30 8FB20020 */  lw          $s2, 0x20($sp)
/* 01CAE4 8001CF34 03E00008 */  jr          $ra
/* 01CAE8 8001CF38 27BD0038 */   addiu      $sp, $sp, 0x38

glabel func_8001CF3C # 7
/* 01CAEC 8001CF3C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01CAF0 8001CF40 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01CAF4 8001CF44 8C830054 */  lw          $v1, 0x54($a0)
/* 01CAF8 8001CF48 8C6E0004 */  lw          $t6, 0x4($v1)
/* 01CAFC 8001CF4C 11C00023 */  beq         $t6, $zero, .L8001CFDC
/* 01CB00 8001CF50 00000000 */   nop
/* 01CB04 8001CF54 AFA3001C */  sw          $v1, 0x1c($sp)
/* 01CB08 8001CF58 0C00EADA */  jal         func_8003AB68
/* 01CB0C 8001CF5C AFA50024 */   sw         $a1, 0x24($sp)
/* 01CB10 8001CF60 44822000 */  mtc1        $v0, $f4
/* 01CB14 8001CF64 8FA3001C */  lw          $v1, 0x1c($sp)
/* 01CB18 8001CF68 8FA50024 */  lw          $a1, 0x24($sp)
/* 01CB1C 8001CF6C 04410006 */  bgez        $v0, .L8001CF88
/* 01CB20 8001CF70 468021A1 */   cvt.d.w    $f6, $f4
/* 01CB24 8001CF74 3C0141F0 */  lui         $at, 0x41f0
/* 01CB28 8001CF78 44814800 */  mtc1        $at, $f9
/* 01CB2C 8001CF7C 44804000 */  mtc1        $zero, $f8
/* 01CB30 8001CF80 00000000 */  nop
/* 01CB34 8001CF84 46283180 */  add.d       $f6, $f6, $f8
.L8001CF88:
/* 01CB38 8001CF88 3C013DF0 */  lui         $at, 0x3df0
/* 01CB3C 8001CF8C 44815800 */  mtc1        $at, $f11
/* 01CB40 8001CF90 44805000 */  mtc1        $zero, $f10
/* 01CB44 8001CF94 3C01800A */  lui         $at, %hi(D_800A3A20)
/* 01CB48 8001CF98 D4323A20 */  ldc1        $f18, %lo(D_800A3A20)($at)
/* 01CB4C 8001CF9C 462A3402 */  mul.d       $f16, $f6, $f10
/* 01CB50 8001CFA0 3C01800A */  lui         $at, %hi(D_800A3A28)
/* 01CB54 8001CFA4 D4283A28 */  ldc1        $f8, %lo(D_800A3A28)($at)
/* 01CB58 8001CFA8 C46A0000 */  lwc1        $f10, 0x0($v1)
/* 01CB5C 8001CFAC 46328102 */  mul.d       $f4, $f16, $f18
/* 01CB60 8001CFB0 46005421 */  cvt.d.s     $f16, $f10
/* 01CB64 8001CFB4 46282180 */  add.d       $f6, $f4, $f8
/* 01CB68 8001CFB8 4630303C */  c.lt.d      $f6, $f16
/* 01CB6C 8001CFBC 00000000 */  nop
/* 01CB70 8001CFC0 45000006 */  bc1f        .L8001CFDC
/* 01CB74 8001CFC4 00000000 */   nop
/* 01CB78 8001CFC8 C4720020 */  lwc1        $f18, 0x20($v1)
/* 01CB7C 8001CFCC AC600028 */  sw          $zero, 0x28($v1)
/* 01CB80 8001CFD0 46009107 */  neg.s       $f4, $f18
/* 01CB84 8001CFD4 1000000E */  b           .L8001D010
/* 01CB88 8001CFD8 E4640020 */   swc1       $f4, 0x20($v1)
.L8001CFDC:
/* 01CB8C 8001CFDC 3C01800A */  lui         $at, %hi(D_800A3A30)
/* 01CB90 8001CFE0 C4283A30 */  lwc1        $f8, %lo(D_800A3A30)($at)
/* 01CB94 8001CFE4 C46A0000 */  lwc1        $f10, 0x0($v1)
/* 01CB98 8001CFE8 460A403C */  c.lt.s      $f8, $f10
/* 01CB9C 8001CFEC 00000000 */  nop
/* 01CBA0 8001CFF0 45000007 */  bc1f        .L8001D010
/* 01CBA4 8001CFF4 00000000 */   nop
/* 01CBA8 8001CFF8 C4660020 */  lwc1        $f6, 0x20($v1)
/* 01CBAC 8001CFFC 3C0F8002 */  lui         $t7, %hi(func_8001CD24)
/* 01CBB0 8001D000 25EFCD24 */  addiu       $t7, $t7, %lo(func_8001CD24)
/* 01CBB4 8001D004 46003407 */  neg.s       $f16, $f6
/* 01CBB8 8001D008 AC6F0028 */  sw          $t7, 0x28($v1)
/* 01CBBC 8001D00C E4700020 */  swc1        $f16, 0x20($v1)
.L8001D010:
/* 01CBC0 8001D010 3C01800A */  lui         $at, %hi(D_800A3A34)
/* 01CBC4 8001D014 C4203A34 */  lwc1        $f0, %lo(D_800A3A34)($at)
/* 01CBC8 8001D018 C4640024 */  lwc1        $f4, 0x24($v1)
/* 01CBCC 8001D01C C472001C */  lwc1        $f18, 0x1c($v1)
/* 01CBD0 8001D020 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 01CBD4 8001D024 46002202 */  mul.s       $f8, $f4, $f0
/* 01CBD8 8001D028 24020001 */  addiu       $v0, $zero, 0x1
/* 01CBDC 8001D02C 46089281 */  sub.s       $f10, $f18, $f8
/* 01CBE0 8001D030 E4AA0000 */  swc1        $f10, 0x0($a1)
/* 01CBE4 8001D034 C426E4E4 */  lwc1        $f6, %lo(D_800AE4E4)($at)
/* 01CBE8 8001D038 3C01428C */  lui         $at, 0x428c
/* 01CBEC 8001D03C 44818000 */  mtc1        $at, $f16
/* 01CBF0 8001D040 C4720020 */  lwc1        $f18, 0x20($v1)
/* 01CBF4 8001D044 46103102 */  mul.s       $f4, $f6, $f16
/* 01CBF8 8001D048 46049201 */  sub.s       $f8, $f18, $f4
/* 01CBFC 8001D04C E4A80004 */  swc1        $f8, 0x4($a1)
/* 01CC00 8001D050 C46A001C */  lwc1        $f10, 0x1c($v1)
/* 01CC04 8001D054 C4700024 */  lwc1        $f16, 0x24($v1)
/* 01CC08 8001D058 46005182 */  mul.s       $f6, $f10, $f0
/* 01CC0C 8001D05C 46103480 */  add.s       $f18, $f6, $f16
/* 01CC10 8001D060 E4B20008 */  swc1        $f18, 0x8($a1)
/* 01CC14 8001D064 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01CC18 8001D068 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01CC1C 8001D06C 03E00008 */  jr          $ra
/* 01CC20 8001D070 00000000 */   nop

glabel func_8001D074 # 8
/* 01CC24 8001D074 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01CC28 8001D078 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01CC2C 8001D07C 8C830054 */  lw          $v1, 0x54($a0)
/* 01CC30 8001D080 8C6E0004 */  lw          $t6, 0x4($v1)
/* 01CC34 8001D084 51C00021 */  beql        $t6, $zero, .L8001D10C
/* 01CC38 8001D088 3C013F00 */   lui        $at, 0x3f00
/* 01CC3C 8001D08C AFA3001C */  sw          $v1, 0x1c($sp)
/* 01CC40 8001D090 0C00EADA */  jal         func_8003AB68
/* 01CC44 8001D094 AFA50024 */   sw         $a1, 0x24($sp)
/* 01CC48 8001D098 44822000 */  mtc1        $v0, $f4
/* 01CC4C 8001D09C 8FA3001C */  lw          $v1, 0x1c($sp)
/* 01CC50 8001D0A0 8FA50024 */  lw          $a1, 0x24($sp)
/* 01CC54 8001D0A4 04410006 */  bgez        $v0, .L8001D0C0
/* 01CC58 8001D0A8 468021A1 */   cvt.d.w    $f6, $f4
/* 01CC5C 8001D0AC 3C0141F0 */  lui         $at, 0x41f0
/* 01CC60 8001D0B0 44814800 */  mtc1        $at, $f9
/* 01CC64 8001D0B4 44804000 */  mtc1        $zero, $f8
/* 01CC68 8001D0B8 00000000 */  nop
/* 01CC6C 8001D0BC 46283180 */  add.d       $f6, $f6, $f8
.L8001D0C0:
/* 01CC70 8001D0C0 3C013DF0 */  lui         $at, 0x3df0
/* 01CC74 8001D0C4 44815800 */  mtc1        $at, $f11
/* 01CC78 8001D0C8 44805000 */  mtc1        $zero, $f10
/* 01CC7C 8001D0CC 3C01800A */  lui         $at, %hi(D_800A3A38)
/* 01CC80 8001D0D0 D4323A38 */  ldc1        $f18, %lo(D_800A3A38)($at)
/* 01CC84 8001D0D4 462A3402 */  mul.d       $f16, $f6, $f10
/* 01CC88 8001D0D8 3C01800A */  lui         $at, %hi(D_800A3A40)
/* 01CC8C 8001D0DC D4283A40 */  ldc1        $f8, %lo(D_800A3A40)($at)
/* 01CC90 8001D0E0 C46A0000 */  lwc1        $f10, 0x0($v1)
/* 01CC94 8001D0E4 46328102 */  mul.d       $f4, $f16, $f18
/* 01CC98 8001D0E8 46005421 */  cvt.d.s     $f16, $f10
/* 01CC9C 8001D0EC 46282180 */  add.d       $f6, $f4, $f8
/* 01CCA0 8001D0F0 4630303C */  c.lt.d      $f6, $f16
/* 01CCA4 8001D0F4 00000000 */  nop
/* 01CCA8 8001D0F8 45020004 */  bc1fl       .L8001D10C
/* 01CCAC 8001D0FC 3C013F00 */   lui        $at, 0x3f00
/* 01CCB0 8001D100 1000000B */  b           .L8001D130
/* 01CCB4 8001D104 AC600028 */   sw         $zero, 0x28($v1)
/* 01CCB8 8001D108 3C013F00 */  lui         $at, 0x3f00
.L8001D10C:
/* 01CCBC 8001D10C 44819000 */  mtc1        $at, $f18
/* 01CCC0 8001D110 C4640000 */  lwc1        $f4, 0x0($v1)
/* 01CCC4 8001D114 3C0F8002 */  lui         $t7, %hi(func_8001CD24)
/* 01CCC8 8001D118 25EFCD24 */  addiu       $t7, $t7, %lo(func_8001CD24)
/* 01CCCC 8001D11C 4604903C */  c.lt.s      $f18, $f4
/* 01CCD0 8001D120 00000000 */  nop
/* 01CCD4 8001D124 45000002 */  bc1f        .L8001D130
/* 01CCD8 8001D128 00000000 */   nop
/* 01CCDC 8001D12C AC6F0028 */  sw          $t7, 0x28($v1)
.L8001D130:
/* 01CCE0 8001D130 3C01800A */  lui         $at, %hi(D_800A3A48)
/* 01CCE4 8001D134 C4203A48 */  lwc1        $f0, %lo(D_800A3A48)($at)
/* 01CCE8 8001D138 C46A0024 */  lwc1        $f10, 0x24($v1)
/* 01CCEC 8001D13C C468001C */  lwc1        $f8, 0x1c($v1)
/* 01CCF0 8001D140 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 01CCF4 8001D144 46005182 */  mul.s       $f6, $f10, $f0
/* 01CCF8 8001D148 24020001 */  addiu       $v0, $zero, 0x1
/* 01CCFC 8001D14C 46064401 */  sub.s       $f16, $f8, $f6
/* 01CD00 8001D150 E4B00000 */  swc1        $f16, 0x0($a1)
/* 01CD04 8001D154 C432E4E4 */  lwc1        $f18, %lo(D_800AE4E4)($at)
/* 01CD08 8001D158 3C0141F0 */  lui         $at, 0x41f0
/* 01CD0C 8001D15C 44812000 */  mtc1        $at, $f4
/* 01CD10 8001D160 C4680020 */  lwc1        $f8, 0x20($v1)
/* 01CD14 8001D164 46049282 */  mul.s       $f10, $f18, $f4
/* 01CD18 8001D168 460A4181 */  sub.s       $f6, $f8, $f10
/* 01CD1C 8001D16C E4A60004 */  swc1        $f6, 0x4($a1)
/* 01CD20 8001D170 C470001C */  lwc1        $f16, 0x1c($v1)
/* 01CD24 8001D174 C4640024 */  lwc1        $f4, 0x24($v1)
/* 01CD28 8001D178 46008482 */  mul.s       $f18, $f16, $f0
/* 01CD2C 8001D17C 46049200 */  add.s       $f8, $f18, $f4
/* 01CD30 8001D180 E4A80008 */  swc1        $f8, 0x8($a1)
/* 01CD34 8001D184 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01CD38 8001D188 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01CD3C 8001D18C 03E00008 */  jr          $ra
/* 01CD40 8001D190 00000000 */   nop

glabel func_8001D194 # 9
/* 01CD44 8001D194 3C018008 */  lui         $at, %hi(D_80079220)
/* 01CD48 8001D198 C42C9220 */  lwc1        $f12, %lo(D_80079220)($at)
/* 01CD4C 8001D19C 3C01800A */  lui         $at, %hi(D_800A3A4C)
/* 01CD50 8001D1A0 C4243A4C */  lwc1        $f4, %lo(D_800A3A4C)($at)
/* 01CD54 8001D1A4 44801000 */  mtc1        $zero, $f2
/* 01CD58 8001D1A8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01CD5C 8001D1AC 46046300 */  add.s       $f12, $f12, $f4
/* 01CD60 8001D1B0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 01CD64 8001D1B4 AFB00018 */  sw          $s0, 0x18($sp)
/* 01CD68 8001D1B8 8CB00054 */  lw          $s0, 0x54($a1)
/* 01CD6C 8001D1BC 4602603C */  c.lt.s      $f12, $f2
/* 01CD70 8001D1C0 3C0143B4 */  lui         $at, 0x43b4
/* 01CD74 8001D1C4 45020009 */  bc1fl       .L8001D1EC
/* 01CD78 8001D1C8 3C0143B4 */   lui        $at, 0x43b4
/* 01CD7C 8001D1CC 44810000 */  mtc1        $at, $f0
/* 01CD80 8001D1D0 00000000 */  nop
/* 01CD84 8001D1D4 46006300 */  add.s       $f12, $f12, $f0
.L8001D1D8:
/* 01CD88 8001D1D8 4602603C */  c.lt.s      $f12, $f2
/* 01CD8C 8001D1DC 00000000 */  nop
/* 01CD90 8001D1E0 4503FFFD */  bc1tl       .L8001D1D8
/* 01CD94 8001D1E4 46006300 */   add.s      $f12, $f12, $f0
/* 01CD98 8001D1E8 3C0143B4 */  lui         $at, 0x43b4
.L8001D1EC:
/* 01CD9C 8001D1EC 44810000 */  mtc1        $at, $f0
/* 01CDA0 8001D1F0 3C018008 */  lui         $at, %hi(D_80079220)
/* 01CDA4 8001D1F4 460C003E */  c.le.s      $f0, $f12
/* 01CDA8 8001D1F8 00000000 */  nop
/* 01CDAC 8001D1FC 45020007 */  bc1fl       .L8001D21C
/* 01CDB0 8001D200 AFA40020 */   sw         $a0, 0x20($sp)
/* 01CDB4 8001D204 46006301 */  sub.s       $f12, $f12, $f0
.L8001D208:
/* 01CDB8 8001D208 460C003E */  c.le.s      $f0, $f12
/* 01CDBC 8001D20C 00000000 */  nop
/* 01CDC0 8001D210 4503FFFD */  bc1tl       .L8001D208
/* 01CDC4 8001D214 46006301 */   sub.s      $f12, $f12, $f0
/* 01CDC8 8001D218 AFA40020 */  sw          $a0, 0x20($sp)
.L8001D21C:
/* 01CDCC 8001D21C 0C00F134 */  jal         func_8003C4D0
/* 01CDD0 8001D220 E42C9220 */   swc1       $f12, %lo(D_80079220)($at)
/* 01CDD4 8001D224 3C018008 */  lui         $at, %hi(D_80079220)
/* 01CDD8 8001D228 C42C9220 */  lwc1        $f12, %lo(D_80079220)($at)
/* 01CDDC 8001D22C 3C014120 */  lui         $at, 0x4120
/* 01CDE0 8001D230 44813000 */  mtc1        $at, $f6
/* 01CDE4 8001D234 00000000 */  nop
/* 01CDE8 8001D238 46060202 */  mul.s       $f8, $f0, $f6
/* 01CDEC 8001D23C 0C00F0F7 */  jal         func_8003C3DC
/* 01CDF0 8001D240 E608001C */   swc1       $f8, 0x1c($s0)
/* 01CDF4 8001D244 3C014120 */  lui         $at, 0x4120
/* 01CDF8 8001D248 44815000 */  mtc1        $at, $f10
/* 01CDFC 8001D24C 8FA40020 */  lw          $a0, 0x20($sp)
/* 01CE00 8001D250 24010001 */  addiu       $at, $zero, 0x1
/* 01CE04 8001D254 460A0402 */  mul.s       $f16, $f0, $f10
/* 01CE08 8001D258 10810008 */  beq         $a0, $at, .L8001D27C
/* 01CE0C 8001D25C E6100024 */   swc1       $f16, 0x24($s0)
/* 01CE10 8001D260 24010002 */  addiu       $at, $zero, 0x2
/* 01CE14 8001D264 1081001E */  beq         $a0, $at, .L8001D2E0
/* 01CE18 8001D268 24010003 */   addiu      $at, $zero, 0x3
/* 01CE1C 8001D26C 10810035 */  beq         $a0, $at, .L8001D344
/* 01CE20 8001D270 00000000 */   nop
/* 01CE24 8001D274 1000004C */  b           .L8001D3A8
/* 01CE28 8001D278 8FBF001C */   lw         $ra, 0x1c($sp)
.L8001D27C:
/* 01CE2C 8001D27C 0C00EADA */  jal         func_8003AB68
/* 01CE30 8001D280 00000000 */   nop
/* 01CE34 8001D284 44829000 */  mtc1        $v0, $f18
/* 01CE38 8001D288 44804000 */  mtc1        $zero, $f8
/* 01CE3C 8001D28C 04410006 */  bgez        $v0, .L8001D2A8
/* 01CE40 8001D290 46809121 */   cvt.d.w    $f4, $f18
/* 01CE44 8001D294 3C0141F0 */  lui         $at, 0x41f0
/* 01CE48 8001D298 44813800 */  mtc1        $at, $f7
/* 01CE4C 8001D29C 44803000 */  mtc1        $zero, $f6
/* 01CE50 8001D2A0 00000000 */  nop
/* 01CE54 8001D2A4 46262100 */  add.d       $f4, $f4, $f6
.L8001D2A8:
/* 01CE58 8001D2A8 3C013DF0 */  lui         $at, 0x3df0
/* 01CE5C 8001D2AC 44814800 */  mtc1        $at, $f9
/* 01CE60 8001D2B0 3C013FF0 */  lui         $at, 0x3ff0
/* 01CE64 8001D2B4 44818800 */  mtc1        $at, $f17
/* 01CE68 8001D2B8 46282282 */  mul.d       $f10, $f4, $f8
/* 01CE6C 8001D2BC 44808000 */  mtc1        $zero, $f16
/* 01CE70 8001D2C0 3C014008 */  lui         $at, 0x4008
/* 01CE74 8001D2C4 44813800 */  mtc1        $at, $f7
/* 01CE78 8001D2C8 44803000 */  mtc1        $zero, $f6
/* 01CE7C 8001D2CC 46305482 */  mul.d       $f18, $f10, $f16
/* 01CE80 8001D2D0 46269100 */  add.d       $f4, $f18, $f6
/* 01CE84 8001D2D4 46202220 */  cvt.s.d     $f8, $f4
/* 01CE88 8001D2D8 10000032 */  b           .L8001D3A4
/* 01CE8C 8001D2DC E6080020 */   swc1       $f8, 0x20($s0)
.L8001D2E0:
/* 01CE90 8001D2E0 0C00EADA */  jal         func_8003AB68
/* 01CE94 8001D2E4 00000000 */   nop
/* 01CE98 8001D2E8 44825000 */  mtc1        $v0, $f10
/* 01CE9C 8001D2EC 44803000 */  mtc1        $zero, $f6
/* 01CEA0 8001D2F0 04410006 */  bgez        $v0, .L8001D30C
/* 01CEA4 8001D2F4 46805421 */   cvt.d.w    $f16, $f10
/* 01CEA8 8001D2F8 3C0141F0 */  lui         $at, 0x41f0
/* 01CEAC 8001D2FC 44819800 */  mtc1        $at, $f19
/* 01CEB0 8001D300 44809000 */  mtc1        $zero, $f18
/* 01CEB4 8001D304 00000000 */  nop
/* 01CEB8 8001D308 46328400 */  add.d       $f16, $f16, $f18
.L8001D30C:
/* 01CEBC 8001D30C 3C013DF0 */  lui         $at, 0x3df0
/* 01CEC0 8001D310 44813800 */  mtc1        $at, $f7
/* 01CEC4 8001D314 3C014014 */  lui         $at, 0x4014
/* 01CEC8 8001D318 44814800 */  mtc1        $at, $f9
/* 01CECC 8001D31C 46268102 */  mul.d       $f4, $f16, $f6
/* 01CED0 8001D320 44804000 */  mtc1        $zero, $f8
/* 01CED4 8001D324 3C01403E */  lui         $at, 0x403e
/* 01CED8 8001D328 44819800 */  mtc1        $at, $f19
/* 01CEDC 8001D32C 44809000 */  mtc1        $zero, $f18
/* 01CEE0 8001D330 46282282 */  mul.d       $f10, $f4, $f8
/* 01CEE4 8001D334 46325400 */  add.d       $f16, $f10, $f18
/* 01CEE8 8001D338 462081A0 */  cvt.s.d     $f6, $f16
/* 01CEEC 8001D33C 10000019 */  b           .L8001D3A4
/* 01CEF0 8001D340 E6060020 */   swc1       $f6, 0x20($s0)
.L8001D344:
/* 01CEF4 8001D344 0C00EADA */  jal         func_8003AB68
/* 01CEF8 8001D348 00000000 */   nop
/* 01CEFC 8001D34C 44822000 */  mtc1        $v0, $f4
/* 01CF00 8001D350 44809000 */  mtc1        $zero, $f18
/* 01CF04 8001D354 04410006 */  bgez        $v0, .L8001D370
/* 01CF08 8001D358 46802221 */   cvt.d.w    $f8, $f4
/* 01CF0C 8001D35C 3C0141F0 */  lui         $at, 0x41f0
/* 01CF10 8001D360 44815800 */  mtc1        $at, $f11
/* 01CF14 8001D364 44805000 */  mtc1        $zero, $f10
/* 01CF18 8001D368 00000000 */  nop
/* 01CF1C 8001D36C 462A4200 */  add.d       $f8, $f8, $f10
.L8001D370:
/* 01CF20 8001D370 3C013DF0 */  lui         $at, 0x3df0
/* 01CF24 8001D374 44819800 */  mtc1        $at, $f19
/* 01CF28 8001D378 3C014000 */  lui         $at, 0x4000
/* 01CF2C 8001D37C 44813800 */  mtc1        $at, $f7
/* 01CF30 8001D380 46324402 */  mul.d       $f16, $f8, $f18
/* 01CF34 8001D384 44803000 */  mtc1        $zero, $f6
/* 01CF38 8001D388 3C014020 */  lui         $at, 0x4020
/* 01CF3C 8001D38C 44815800 */  mtc1        $at, $f11
/* 01CF40 8001D390 44805000 */  mtc1        $zero, $f10
/* 01CF44 8001D394 46268102 */  mul.d       $f4, $f16, $f6
/* 01CF48 8001D398 462A2200 */  add.d       $f8, $f4, $f10
/* 01CF4C 8001D39C 462044A0 */  cvt.s.d     $f18, $f8
/* 01CF50 8001D3A0 E6120020 */  swc1        $f18, 0x20($s0)
.L8001D3A4:
/* 01CF54 8001D3A4 8FBF001C */  lw          $ra, 0x1c($sp)
.L8001D3A8:
/* 01CF58 8001D3A8 8FB00018 */  lw          $s0, 0x18($sp)
/* 01CF5C 8001D3AC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01CF60 8001D3B0 03E00008 */  jr          $ra
/* 01CF64 8001D3B4 00000000 */   nop

glabel func_8001D3B8 # 10
/* 01CF68 8001D3B8 27BDFF28 */  addiu       $sp, $sp, -0xd8
/* 01CF6C 8001D3BC 3C013F00 */  lui         $at, 0x3f00
/* 01CF70 8001D3C0 C7AC00E8 */  lwc1        $f12, 0xe8($sp)
/* 01CF74 8001D3C4 44812000 */  mtc1        $at, $f4
/* 01CF78 8001D3C8 AFB7004C */  sw          $s7, 0x4c($sp)
/* 01CF7C 8001D3CC 3C178008 */  lui         $s7, %hi(D_80079224)
/* 01CF80 8001D3D0 460C2182 */  mul.s       $f6, $f4, $f12
/* 01CF84 8001D3D4 26F79224 */  addiu       $s7, $s7, %lo(D_80079224)
/* 01CF88 8001D3D8 AFBE0050 */  sw          $fp, 0x50($sp)
/* 01CF8C 8001D3DC AFB60048 */  sw          $s6, 0x48($sp)
/* 01CF90 8001D3E0 F7B80028 */  sdc1        $f24, 0x28($sp)
/* 01CF94 8001D3E4 F7B60020 */  sdc1        $f22, 0x20($sp)
/* 01CF98 8001D3E8 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 01CF9C 8001D3EC 4485A000 */  mtc1        $a1, $f20
/* 01CFA0 8001D3F0 4486B000 */  mtc1        $a2, $f22
/* 01CFA4 8001D3F4 4487C000 */  mtc1        $a3, $f24
/* 01CFA8 8001D3F8 0080B025 */  move        $s6, $a0
/* 01CFAC 8001D3FC 27BE0070 */  addiu       $fp, $sp, 0x70
/* 01CFB0 8001D400 AFBF0054 */  sw          $ra, 0x54($sp)
/* 01CFB4 8001D404 3C018008 */  lui         $at, %hi(D_80079248)
/* 01CFB8 8001D408 E6EC0000 */  swc1        $f12, 0x0($s7)
/* 01CFBC 8001D40C E6EC0004 */  swc1        $f12, 0x4($s7)
/* 01CFC0 8001D410 E6EC0008 */  swc1        $f12, 0x8($s7)
/* 01CFC4 8001D414 AFB50044 */  sw          $s5, 0x44($sp)
/* 01CFC8 8001D418 AFB40040 */  sw          $s4, 0x40($sp)
/* 01CFCC 8001D41C AFB3003C */  sw          $s3, 0x3c($sp)
/* 01CFD0 8001D420 AFB20038 */  sw          $s2, 0x38($sp)
/* 01CFD4 8001D424 AFB10034 */  sw          $s1, 0x34($sp)
/* 01CFD8 8001D428 AFB00030 */  sw          $s0, 0x30($sp)
/* 01CFDC 8001D42C E4269248 */  swc1        $f6, %lo(D_80079248)($at)
/* 01CFE0 8001D430 03C02025 */  move        $a0, $fp
/* 01CFE4 8001D434 0C014388 */  jal         bzero
/* 01CFE8 8001D438 24050058 */   addiu      $a1, $zero, 0x58
/* 01CFEC 8001D43C 8FAF0104 */  lw          $t7, 0x104($sp)
/* 01CFF0 8001D440 3C013F80 */  lui         $at, 0x3f80
/* 01CFF4 8001D444 C7A800F8 */  lwc1        $f8, 0xf8($sp)
/* 01CFF8 8001D448 C7AA00FC */  lwc1        $f10, 0xfc($sp)
/* 01CFFC 8001D44C C7B00100 */  lwc1        $f16, 0x100($sp)
/* 01D000 8001D450 C7B200F4 */  lwc1        $f18, 0xf4($sp)
/* 01D004 8001D454 8FAE00EC */  lw          $t6, 0xec($sp)
/* 01D008 8001D458 C7A400F0 */  lwc1        $f4, 0xf0($sp)
/* 01D00C 8001D45C 44813000 */  mtc1        $at, $f6
/* 01D010 8001D460 3C058007 */  lui         $a1, %hi(D_8006B090)
/* 01D014 8001D464 000FC080 */  sll         $t8, $t7, 2
/* 01D018 8001D468 00B82821 */  addu        $a1, $a1, $t8
/* 01D01C 8001D46C 8CA5B090 */  lw          $a1, %lo(D_8006B090)($a1)
/* 01D020 8001D470 27A400A8 */  addiu       $a0, $sp, 0xa8
/* 01D024 8001D474 E7A8007C */  swc1        $f8, 0x7c($sp)
/* 01D028 8001D478 E7AA0080 */  swc1        $f10, 0x80($sp)
/* 01D02C 8001D47C E7B00084 */  swc1        $f16, 0x84($sp)
/* 01D030 8001D480 E7B20088 */  swc1        $f18, 0x88($sp)
/* 01D034 8001D484 AFAE009C */  sw          $t6, 0x9c($sp)
/* 01D038 8001D488 E7A400A0 */  swc1        $f4, 0xa0($sp)
/* 01D03C 8001D48C 0C002973 */  jal         func_8000A5CC
/* 01D040 8001D490 E7A600A4 */   swc1       $f6, 0xa4($sp)
/* 01D044 8001D494 8FB90108 */  lw          $t9, 0x108($sp)
/* 01D048 8001D498 3C058007 */  lui         $a1, %hi(D_8006B4B0)
/* 01D04C 8001D49C 27A400B4 */  addiu       $a0, $sp, 0xb4
/* 01D050 8001D4A0 00194080 */  sll         $t0, $t9, 2
/* 01D054 8001D4A4 00A82821 */  addu        $a1, $a1, $t0
/* 01D058 8001D4A8 0C002973 */  jal         func_8000A5CC
/* 01D05C 8001D4AC 8CA5B4B0 */   lw         $a1, %lo(D_8006B4B0)($a1)
/* 01D060 8001D4B0 3C0D0100 */  lui         $t5, 0x100
/* 01D064 8001D4B4 240900FF */  addiu       $t1, $zero, 0xff
/* 01D068 8001D4B8 240A00FF */  addiu       $t2, $zero, 0xff
/* 01D06C 8001D4BC 240B00FF */  addiu       $t3, $zero, 0xff
/* 01D070 8001D4C0 240C00FF */  addiu       $t4, $zero, 0xff
/* 01D074 8001D4C4 25AD0B08 */  addiu       $t5, $t5, 0xb08
/* 01D078 8001D4C8 3C018008 */  lui         $at, %hi(D_80079254)
/* 01D07C 8001D4CC A3A900C0 */  sb          $t1, 0xc0($sp)
/* 01D080 8001D4D0 A3AA00C1 */  sb          $t2, 0xc1($sp)
/* 01D084 8001D4D4 A3AB00C2 */  sb          $t3, 0xc2($sp)
/* 01D088 8001D4D8 A3AC00C3 */  sb          $t4, 0xc3($sp)
/* 01D08C 8001D4DC 12C0000B */  beq         $s6, $zero, .L8001D50C
/* 01D090 8001D4E0 AC2D9254 */   sw         $t5, %lo(D_80079254)($at)
/* 01D094 8001D4E4 24010001 */  addiu       $at, $zero, 0x1
/* 01D098 8001D4E8 12C10008 */  beq         $s6, $at, .L8001D50C
/* 01D09C 8001D4EC 24010002 */   addiu      $at, $zero, 0x2
/* 01D0A0 8001D4F0 12C1000A */  beq         $s6, $at, .L8001D51C
/* 01D0A4 8001D4F4 3C0F8002 */   lui        $t7, %hi(func_8001CF3C)
/* 01D0A8 8001D4F8 24010003 */  addiu       $at, $zero, 0x3
/* 01D0AC 8001D4FC 12C1000A */  beq         $s6, $at, .L8001D528
/* 01D0B0 8001D500 3C188002 */   lui        $t8, %hi(func_8001D074)
/* 01D0B4 8001D504 1000000A */  b           .L8001D530
/* 01D0B8 8001D508 00000000 */   nop
.L8001D50C:
/* 01D0BC 8001D50C 3C0E8002 */  lui         $t6, %hi(func_8001CD24)
/* 01D0C0 8001D510 25CECD24 */  addiu       $t6, $t6, %lo(func_8001CD24)
/* 01D0C4 8001D514 10000006 */  b           .L8001D530
/* 01D0C8 8001D518 AFAE0098 */   sw         $t6, 0x98($sp)
.L8001D51C:
/* 01D0CC 8001D51C 25EFCF3C */  addiu       $t7, $t7, %lo(func_8001CF3C)
/* 01D0D0 8001D520 10000003 */  b           .L8001D530
/* 01D0D4 8001D524 AFAF0098 */   sw         $t7, 0x98($sp)
.L8001D528:
/* 01D0D8 8001D528 2718D074 */  addiu       $t8, $t8, %lo(func_8001D074)
/* 01D0DC 8001D52C AFB80098 */  sw          $t8, 0x98($sp)
.L8001D530:
/* 01D0E0 8001D530 0C00208F */  jal         func_8000823C
/* 01D0E4 8001D534 00000000 */   nop
/* 01D0E8 8001D538 AFA200D4 */  sw          $v0, 0xd4($sp)
/* 01D0EC 8001D53C 0C002058 */  jal         func_80008160
/* 01D0F0 8001D540 02E02025 */   move       $a0, $s7
/* 01D0F4 8001D544 8FB900D4 */  lw          $t9, 0xd4($sp)
/* 01D0F8 8001D548 0040A025 */  move        $s4, $v0
/* 01D0FC 8001D54C 03C05025 */  move        $t2, $fp
/* 01D100 8001D550 AF22002C */  sw          $v0, 0x2c($t9)
/* 01D104 8001D554 8C500054 */  lw          $s0, 0x54($v0)
/* 01D108 8001D558 E4580020 */  swc1        $f24, 0x20($v0)
/* 01D10C 8001D55C E456001C */  swc1        $f22, 0x1c($v0)
/* 01D110 8001D560 E4540018 */  swc1        $f20, 0x18($v0)
/* 01D114 8001D564 E458004C */  swc1        $f24, 0x4c($v0)
/* 01D118 8001D568 E4560048 */  swc1        $f22, 0x48($v0)
/* 01D11C 8001D56C E4540044 */  swc1        $f20, 0x44($v0)
/* 01D120 8001D570 27C90054 */  addiu       $t1, $fp, 0x54
/* 01D124 8001D574 02005825 */  move        $t3, $s0
.L8001D578:
/* 01D128 8001D578 8D410000 */  lw          $at, 0x0($t2)
/* 01D12C 8001D57C 254A000C */  addiu       $t2, $t2, 0xc
/* 01D130 8001D580 256B000C */  addiu       $t3, $t3, 0xc
/* 01D134 8001D584 AD61FFF4 */  sw          $at, -0xc($t3)
/* 01D138 8001D588 8D41FFF8 */  lw          $at, -0x8($t2)
/* 01D13C 8001D58C AD61FFF8 */  sw          $at, -0x8($t3)
/* 01D140 8001D590 8D41FFFC */  lw          $at, -0x4($t2)
/* 01D144 8001D594 1549FFF8 */  bne         $t2, $t1, .L8001D578
/* 01D148 8001D598 AD61FFFC */   sw         $at, -0x4($t3)
/* 01D14C 8001D59C 8D410000 */  lw          $at, 0x0($t2)
/* 01D150 8001D5A0 240C0001 */  addiu       $t4, $zero, 0x1
/* 01D154 8001D5A4 02C02025 */  move        $a0, $s6
/* 01D158 8001D5A8 AD610000 */  sw          $at, 0x0($t3)
/* 01D15C 8001D5AC C7A800F0 */  lwc1        $f8, 0xf0($sp)
/* 01D160 8001D5B0 AE0C0054 */  sw          $t4, 0x54($s0)
/* 01D164 8001D5B4 00402825 */  move        $a1, $v0
/* 01D168 8001D5B8 0C007465 */  jal         func_8001D194
/* 01D16C 8001D5BC E6080030 */   swc1       $f8, 0x30($s0)
/* 01D170 8001D5C0 8FB5010C */  lw          $s5, 0x10c($sp)
/* 01D174 8001D5C4 02009825 */  move        $s3, $s0
/* 01D178 8001D5C8 02808825 */  move        $s1, $s4
/* 01D17C 8001D5CC 26B5FFFF */  addiu       $s5, $s5, -0x1
/* 01D180 8001D5D0 1AA00024 */  blez        $s5, .L8001D664
/* 01D184 8001D5D4 00009025 */   move       $s2, $zero
.L8001D5D8:
/* 01D188 8001D5D8 0C002058 */  jal         func_80008160
/* 01D18C 8001D5DC 02E02025 */   move       $a0, $s7
/* 01D190 8001D5E0 AE220028 */  sw          $v0, 0x28($s1)
/* 01D194 8001D5E4 8C500054 */  lw          $s0, 0x54($v0)
/* 01D198 8001D5E8 0040A025 */  move        $s4, $v0
/* 01D19C 8001D5EC E4580020 */  swc1        $f24, 0x20($v0)
/* 01D1A0 8001D5F0 E456001C */  swc1        $f22, 0x1c($v0)
/* 01D1A4 8001D5F4 E4540018 */  swc1        $f20, 0x18($v0)
/* 01D1A8 8001D5F8 E458004C */  swc1        $f24, 0x4c($v0)
/* 01D1AC 8001D5FC E4560048 */  swc1        $f22, 0x48($v0)
/* 01D1B0 8001D600 E4540044 */  swc1        $f20, 0x44($v0)
/* 01D1B4 8001D604 03C07825 */  move        $t7, $fp
/* 01D1B8 8001D608 27CE0054 */  addiu       $t6, $fp, 0x54
/* 01D1BC 8001D60C 0200C025 */  move        $t8, $s0
.L8001D610:
/* 01D1C0 8001D610 8DE10000 */  lw          $at, 0x0($t7)
/* 01D1C4 8001D614 25EF000C */  addiu       $t7, $t7, 0xc
/* 01D1C8 8001D618 2718000C */  addiu       $t8, $t8, 0xc
/* 01D1CC 8001D61C AF01FFF4 */  sw          $at, -0xc($t8)
/* 01D1D0 8001D620 8DE1FFF8 */  lw          $at, -0x8($t7)
/* 01D1D4 8001D624 AF01FFF8 */  sw          $at, -0x8($t8)
/* 01D1D8 8001D628 8DE1FFFC */  lw          $at, -0x4($t7)
/* 01D1DC 8001D62C 15EEFFF8 */  bne         $t7, $t6, .L8001D610
/* 01D1E0 8001D630 AF01FFFC */   sw         $at, -0x4($t8)
/* 01D1E4 8001D634 8DE10000 */  lw          $at, 0x0($t7)
/* 01D1E8 8001D638 02C02025 */  move        $a0, $s6
/* 01D1EC 8001D63C 00402825 */  move        $a1, $v0
/* 01D1F0 8001D640 AF010000 */  sw          $at, 0x0($t8)
/* 01D1F4 8001D644 AE000054 */  sw          $zero, 0x54($s0)
/* 01D1F8 8001D648 AE620008 */  sw          $v0, 0x8($s3)
/* 01D1FC 8001D64C 0C007465 */  jal         func_8001D194
/* 01D200 8001D650 AE110004 */   sw         $s1, 0x4($s0)
/* 01D204 8001D654 26520001 */  addiu       $s2, $s2, 0x1
/* 01D208 8001D658 02009825 */  move        $s3, $s0
/* 01D20C 8001D65C 1655FFDE */  bne         $s2, $s5, .L8001D5D8
/* 01D210 8001D660 02808825 */   move       $s1, $s4
.L8001D664:
/* 01D214 8001D664 0C00213A */  jal         func_800084E8
/* 01D218 8001D668 8FA400D4 */   lw         $a0, 0xd4($sp)
/* 01D21C 8001D66C 0C0020CE */  jal         func_80008338
/* 01D220 8001D670 8FA400D4 */   lw         $a0, 0xd4($sp)
/* 01D224 8001D674 0C00219D */  jal         func_80008674
/* 01D228 8001D678 8FA400D4 */   lw         $a0, 0xd4($sp)
/* 01D22C 8001D67C 8FBF0054 */  lw          $ra, 0x54($sp)
/* 01D230 8001D680 8FA200D4 */  lw          $v0, 0xd4($sp)
/* 01D234 8001D684 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 01D238 8001D688 D7B60020 */  ldc1        $f22, 0x20($sp)
/* 01D23C 8001D68C D7B80028 */  ldc1        $f24, 0x28($sp)
/* 01D240 8001D690 8FB00030 */  lw          $s0, 0x30($sp)
/* 01D244 8001D694 8FB10034 */  lw          $s1, 0x34($sp)
/* 01D248 8001D698 8FB20038 */  lw          $s2, 0x38($sp)
/* 01D24C 8001D69C 8FB3003C */  lw          $s3, 0x3c($sp)
/* 01D250 8001D6A0 8FB40040 */  lw          $s4, 0x40($sp)
/* 01D254 8001D6A4 8FB50044 */  lw          $s5, 0x44($sp)
/* 01D258 8001D6A8 8FB60048 */  lw          $s6, 0x48($sp)
/* 01D25C 8001D6AC 8FB7004C */  lw          $s7, 0x4c($sp)
/* 01D260 8001D6B0 8FBE0050 */  lw          $fp, 0x50($sp)
/* 01D264 8001D6B4 03E00008 */  jr          $ra
/* 01D268 8001D6B8 27BD00D8 */   addiu      $sp, $sp, 0xd8
/* 01D26C 8001D6BC 00000000 */  nop
