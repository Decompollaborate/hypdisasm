.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8011A7C0 # 0
/* 00C460 8011A7C0 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 00C464 8011A7C4 AFBF002C */  sw          $ra, 0x2c($sp)
/* 00C468 8011A7C8 AFA40038 */  sw          $a0, 0x38($sp)
/* 00C46C 8011A7CC AFA5003C */  sw          $a1, 0x3c($sp)
/* 00C470 8011A7D0 AFA60040 */  sw          $a2, 0x40($sp)
/* 00C474 8011A7D4 8C880054 */  lw          $t0, 0x54($a0)
/* 00C478 8011A7D8 0C002671 */  jal         func_800099C4
/* 00C47C 8011A7DC AFA80030 */   sw         $t0, 0x30($sp)
/* 00C480 8011A7E0 8FA80030 */  lw          $t0, 0x30($sp)
/* 00C484 8011A7E4 8FA40038 */  lw          $a0, 0x38($sp)
/* 00C488 8011A7E8 8FA9003C */  lw          $t1, 0x3c($sp)
/* 00C48C 8011A7EC 8D1801A8 */  lw          $t8, 0x1a8($t0)
/* 00C490 8011A7F0 8D1901AC */  lw          $t9, 0x1ac($t0)
/* 00C494 8011A7F4 24840044 */  addiu       $a0, $a0, 0x44
/* 00C498 8011A7F8 00585023 */  subu        $t2, $v0, $t8
/* 00C49C 8011A7FC 0079082B */  sltu        $at, $v1, $t9
/* 00C4A0 8011A800 15410006 */  bne         $t2, $at, .L8011A81C
/* 00C4A4 8011A804 00795823 */   subu       $t3, $v1, $t9
/* 00C4A8 8011A808 2D6101F4 */  sltiu       $at, $t3, 0x1f4
/* 00C4AC 8011A80C 50200004 */  beql        $at, $zero, .L8011A820
/* 00C4B0 8011A810 8D06000C */   lw         $a2, 0xc($t0)
/* 00C4B4 8011A814 10000017 */  b           .L8011A874
/* 00C4B8 8011A818 00001025 */   move       $v0, $zero
.L8011A81C:
/* 00C4BC 8011A81C 8D06000C */  lw          $a2, 0xc($t0)
.L8011A820:
/* 00C4C0 8011A820 8D070010 */  lw          $a3, 0x10($t0)
/* 00C4C4 8011A824 3C014234 */  lui         $at, 0x4234
/* 00C4C8 8011A828 44812000 */  mtc1        $at, $f4
/* 00C4CC 8011A82C AFA00020 */  sw          $zero, 0x20($sp)
/* 00C4D0 8011A830 AFA0001C */  sw          $zero, 0x1c($sp)
/* 00C4D4 8011A834 AFA90018 */  sw          $t1, 0x18($sp)
/* 00C4D8 8011A838 AFA90014 */  sw          $t1, 0x14($sp)
/* 00C4DC 8011A83C 8FA50040 */  lw          $a1, 0x40($sp)
/* 00C4E0 8011A840 0C0459D8 */  jal         func_80116760
/* 00C4E4 8011A844 E7A40010 */   swc1       $f4, 0x10($sp)
/* 00C4E8 8011A848 10400006 */  beqz        $v0, .L8011A864
/* 00C4EC 8011A84C 00402025 */   move       $a0, $v0
/* 00C4F0 8011A850 00002825 */  move        $a1, $zero
/* 00C4F4 8011A854 0C045EC6 */  jal         func_80117B18
/* 00C4F8 8011A858 AFA20034 */   sw         $v0, 0x34($sp)
/* 00C4FC 8011A85C 14400003 */  bnez        $v0, .L8011A86C
/* 00C500 8011A860 8FA60034 */   lw         $a2, 0x34($sp)
.L8011A864:
/* 00C504 8011A864 10000003 */  b           .L8011A874
/* 00C508 8011A868 00001025 */   move       $v0, $zero
.L8011A86C:
/* 00C50C 8011A86C 8CC40054 */  lw          $a0, 0x54($a2)
/* 00C510 8011A870 84820004 */  lh          $v0, 0x4($a0)
.L8011A874:
/* 00C514 8011A874 8FBF002C */  lw          $ra, 0x2c($sp)
/* 00C518 8011A878 27BD0038 */  addiu       $sp, $sp, 0x38
/* 00C51C 8011A87C 03E00008 */  jr          $ra
/* 00C520 8011A880 00000000 */   nop

glabel func_8011A884 # 1
/* 00C524 8011A884 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00C528 8011A888 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00C52C 8011A88C C4840044 */  lwc1        $f4, 0x44($a0)
/* 00C530 8011A890 E7A4001C */  swc1        $f4, 0x1c($sp)
/* 00C534 8011A894 C4860048 */  lwc1        $f6, 0x48($a0)
/* 00C538 8011A898 E7A60020 */  swc1        $f6, 0x20($sp)
/* 00C53C 8011A89C C488004C */  lwc1        $f8, 0x4c($a0)
/* 00C540 8011A8A0 27A4001C */  addiu       $a0, $sp, 0x1c
/* 00C544 8011A8A4 0C00E3B7 */  jal         func_80038EDC
/* 00C548 8011A8A8 E7A80024 */   swc1       $f8, 0x24($sp)
/* 00C54C 8011A8AC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00C550 8011A8B0 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00C554 8011A8B4 03E00008 */  jr          $ra
/* 00C558 8011A8B8 00000000 */   nop

glabel func_8011A8BC # 2
/* 00C55C 8011A8BC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00C560 8011A8C0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00C564 8011A8C4 00803025 */  move        $a2, $a0
/* 00C568 8011A8C8 AFA60028 */  sw          $a2, 0x28($sp)
/* 00C56C 8011A8CC 0C04701F */  jal         func_8011C07C
/* 00C570 8011A8D0 00A02025 */   move       $a0, $a1
/* 00C574 8011A8D4 8FA60028 */  lw          $a2, 0x28($sp)
/* 00C578 8011A8D8 14400005 */  bnez        $v0, .L8011A8F0
/* 00C57C 8011A8DC 00401825 */   move       $v1, $v0
/* 00C580 8011A8E0 3C01BF80 */  lui         $at, 0xbf80
/* 00C584 8011A8E4 44810000 */  mtc1        $at, $f0
/* 00C588 8011A8E8 10000010 */  b           .L8011A92C
/* 00C58C 8011A8EC 8FBF0014 */   lw         $ra, 0x14($sp)
.L8011A8F0:
/* 00C590 8011A8F0 C4640044 */  lwc1        $f4, 0x44($v1)
/* 00C594 8011A8F4 C4C60044 */  lwc1        $f6, 0x44($a2)
/* 00C598 8011A8F8 27A40018 */  addiu       $a0, $sp, 0x18
/* 00C59C 8011A8FC 46062201 */  sub.s       $f8, $f4, $f6
/* 00C5A0 8011A900 E7A80018 */  swc1        $f8, 0x18($sp)
/* 00C5A4 8011A904 C4D00048 */  lwc1        $f16, 0x48($a2)
/* 00C5A8 8011A908 C46A0048 */  lwc1        $f10, 0x48($v1)
/* 00C5AC 8011A90C 46105481 */  sub.s       $f18, $f10, $f16
/* 00C5B0 8011A910 E7B2001C */  swc1        $f18, 0x1c($sp)
/* 00C5B4 8011A914 C4C6004C */  lwc1        $f6, 0x4c($a2)
/* 00C5B8 8011A918 C464004C */  lwc1        $f4, 0x4c($v1)
/* 00C5BC 8011A91C 46062201 */  sub.s       $f8, $f4, $f6
/* 00C5C0 8011A920 0C00E3B7 */  jal         func_80038EDC
/* 00C5C4 8011A924 E7A80020 */   swc1       $f8, 0x20($sp)
/* 00C5C8 8011A928 8FBF0014 */  lw          $ra, 0x14($sp)
.L8011A92C:
/* 00C5CC 8011A92C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00C5D0 8011A930 03E00008 */  jr          $ra
/* 00C5D4 8011A934 00000000 */   nop

glabel func_8011A938 # 3
/* 00C5D8 8011A938 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00C5DC 8011A93C AFBF0014 */  sw          $ra, 0x14($sp)
/* 00C5E0 8011A940 AFA40018 */  sw          $a0, 0x18($sp)
/* 00C5E4 8011A944 0C04701F */  jal         func_8011C07C
/* 00C5E8 8011A948 00A02025 */   move       $a0, $a1
/* 00C5EC 8011A94C 14400004 */  bnez        $v0, .L8011A960
/* 00C5F0 8011A950 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00C5F4 8011A954 44800000 */  mtc1        $zero, $f0
/* 00C5F8 8011A958 10000005 */  b           .L8011A970
/* 00C5FC 8011A95C 00000000 */   nop
.L8011A960:
/* 00C600 8011A960 8FAE0018 */  lw          $t6, 0x18($sp)
/* 00C604 8011A964 C4440048 */  lwc1        $f4, 0x48($v0)
/* 00C608 8011A968 C5C60048 */  lwc1        $f6, 0x48($t6)
/* 00C60C 8011A96C 46062001 */  sub.s       $f0, $f4, $f6
.L8011A970:
/* 00C610 8011A970 03E00008 */  jr          $ra
/* 00C614 8011A974 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8011A978 # 4
/* 00C618 8011A978 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00C61C 8011A97C AFBF0014 */  sw          $ra, 0x14($sp)
/* 00C620 8011A980 AFA40028 */  sw          $a0, 0x28($sp)
/* 00C624 8011A984 0C04701F */  jal         func_8011C07C
/* 00C628 8011A988 00A02025 */   move       $a0, $a1
/* 00C62C 8011A98C 8FA50028 */  lw          $a1, 0x28($sp)
/* 00C630 8011A990 14400004 */  bnez        $v0, .L8011A9A4
/* 00C634 8011A994 00401825 */   move       $v1, $v0
/* 00C638 8011A998 44800000 */  mtc1        $zero, $f0
/* 00C63C 8011A99C 1000000E */  b           .L8011A9D8
/* 00C640 8011A9A0 8FBF0014 */   lw         $ra, 0x14($sp)
.L8011A9A4:
/* 00C644 8011A9A4 C4640044 */  lwc1        $f4, 0x44($v1)
/* 00C648 8011A9A8 C4A60044 */  lwc1        $f6, 0x44($a1)
/* 00C64C 8011A9AC 44805000 */  mtc1        $zero, $f10
/* 00C650 8011A9B0 27A40018 */  addiu       $a0, $sp, 0x18
/* 00C654 8011A9B4 46062201 */  sub.s       $f8, $f4, $f6
/* 00C658 8011A9B8 E7AA001C */  swc1        $f10, 0x1c($sp)
/* 00C65C 8011A9BC E7A80018 */  swc1        $f8, 0x18($sp)
/* 00C660 8011A9C0 C4B2004C */  lwc1        $f18, 0x4c($a1)
/* 00C664 8011A9C4 C470004C */  lwc1        $f16, 0x4c($v1)
/* 00C668 8011A9C8 46128101 */  sub.s       $f4, $f16, $f18
/* 00C66C 8011A9CC 0C00E3B7 */  jal         func_80038EDC
/* 00C670 8011A9D0 E7A40020 */   swc1       $f4, 0x20($sp)
/* 00C674 8011A9D4 8FBF0014 */  lw          $ra, 0x14($sp)
.L8011A9D8:
/* 00C678 8011A9D8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00C67C 8011A9DC 03E00008 */  jr          $ra
/* 00C680 8011A9E0 00000000 */   nop

glabel func_8011A9E4 # 5
/* 00C684 8011A9E4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00C688 8011A9E8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00C68C 8011A9EC 8C820054 */  lw          $v0, 0x54($a0)
/* 00C690 8011A9F0 C4860044 */  lwc1        $f6, 0x44($a0)
/* 00C694 8011A9F4 44805000 */  mtc1        $zero, $f10
/* 00C698 8011A9F8 C44401EC */  lwc1        $f4, 0x1ec($v0)
/* 00C69C 8011A9FC E7AA0020 */  swc1        $f10, 0x20($sp)
/* 00C6A0 8011AA00 46062201 */  sub.s       $f8, $f4, $f6
/* 00C6A4 8011AA04 E7A8001C */  swc1        $f8, 0x1c($sp)
/* 00C6A8 8011AA08 C492004C */  lwc1        $f18, 0x4c($a0)
/* 00C6AC 8011AA0C C45001F4 */  lwc1        $f16, 0x1f4($v0)
/* 00C6B0 8011AA10 27A4001C */  addiu       $a0, $sp, 0x1c
/* 00C6B4 8011AA14 46128101 */  sub.s       $f4, $f16, $f18
/* 00C6B8 8011AA18 0C00E3B7 */  jal         func_80038EDC
/* 00C6BC 8011AA1C E7A40024 */   swc1       $f4, 0x24($sp)
/* 00C6C0 8011AA20 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00C6C4 8011AA24 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00C6C8 8011AA28 03E00008 */  jr          $ra
/* 00C6CC 8011AA2C 00000000 */   nop

glabel func_8011AA30 # 6
/* 00C6D0 8011AA30 28A10003 */  slti        $at, $a1, 0x3
/* 00C6D4 8011AA34 10200005 */  beqz        $at, .L8011AA4C
/* 00C6D8 8011AA38 8C820054 */   lw         $v0, 0x54($a0)
/* 00C6DC 8011AA3C 00057080 */  sll         $t6, $a1, 2
/* 00C6E0 8011AA40 004E7821 */  addu        $t7, $v0, $t6
/* 00C6E4 8011AA44 03E00008 */  jr          $ra
/* 00C6E8 8011AA48 C5E001EC */   lwc1       $f0, 0x1ec($t7)
.L8011AA4C:
/* 00C6EC 8011AA4C 3C01C780 */  lui         $at, 0xc780
/* 00C6F0 8011AA50 44810000 */  mtc1        $at, $f0
/* 00C6F4 8011AA54 00000000 */  nop
/* 00C6F8 8011AA58 03E00008 */  jr          $ra
/* 00C6FC 8011AA5C 00000000 */   nop

glabel func_8011AA60 # 7
/* 00C700 8011AA60 28A10003 */  slti        $at, $a1, 0x3
/* 00C704 8011AA64 10200004 */  beqz        $at, .L8011AA78
/* 00C708 8011AA68 00057080 */   sll        $t6, $a1, 2
/* 00C70C 8011AA6C 008E7821 */  addu        $t7, $a0, $t6
/* 00C710 8011AA70 03E00008 */  jr          $ra
/* 00C714 8011AA74 C5E00044 */   lwc1       $f0, 0x44($t7)
.L8011AA78:
/* 00C718 8011AA78 3C01C780 */  lui         $at, 0xc780
/* 00C71C 8011AA7C 44810000 */  mtc1        $at, $f0
/* 00C720 8011AA80 00000000 */  nop
/* 00C724 8011AA84 03E00008 */  jr          $ra
/* 00C728 8011AA88 00000000 */   nop

glabel func_8011AA8C # 8
/* 00C72C 8011AA8C 8C820054 */  lw          $v0, 0x54($a0)
/* 00C730 8011AA90 03E00008 */  jr          $ra
/* 00C734 8011AA94 C440015C */   lwc1       $f0, 0x15c($v0)

glabel func_8011AA98 # 9
/* 00C738 8011AA98 8C820054 */  lw          $v0, 0x54($a0)
/* 00C73C 8011AA9C 03E00008 */  jr          $ra
/* 00C740 8011AAA0 C4400160 */   lwc1       $f0, 0x160($v0)

glabel func_8011AAA4 # 10
/* 00C744 8011AAA4 8C830054 */  lw          $v1, 0x54($a0)
/* 00C748 8011AAA8 03E00008 */  jr          $ra
/* 00C74C 8011AAAC 8C620158 */   lw         $v0, 0x158($v1)

glabel func_8011AAB0 # 11
/* 00C750 8011AAB0 8C830054 */  lw          $v1, 0x54($a0)
/* 00C754 8011AAB4 03E00008 */  jr          $ra
/* 00C758 8011AAB8 946201EA */   lhu        $v0, 0x1ea($v1)

glabel func_8011AABC # 12
/* 00C75C 8011AABC 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00C760 8011AAC0 AFBF002C */  sw          $ra, 0x2c($sp)
/* 00C764 8011AAC4 AFA40030 */  sw          $a0, 0x30($sp)
/* 00C768 8011AAC8 AFA7003C */  sw          $a3, 0x3c($sp)
/* 00C76C 8011AACC 8C820054 */  lw          $v0, 0x54($a0)
/* 00C770 8011AAD0 44867000 */  mtc1        $a2, $f14
/* 00C774 8011AAD4 44856000 */  mtc1        $a1, $f12
/* 00C778 8011AAD8 8C46000C */  lw          $a2, 0xc($v0)
/* 00C77C 8011AADC 8C470010 */  lw          $a3, 0x10($v0)
/* 00C780 8011AAE0 8FAF003C */  lw          $t7, 0x3c($sp)
/* 00C784 8011AAE4 8FB80040 */  lw          $t8, 0x40($sp)
/* 00C788 8011AAE8 8FB90044 */  lw          $t9, 0x44($sp)
/* 00C78C 8011AAEC 8FA80048 */  lw          $t0, 0x48($sp)
/* 00C790 8011AAF0 44056000 */  mfc1        $a1, $f12
/* 00C794 8011AAF4 24840044 */  addiu       $a0, $a0, 0x44
/* 00C798 8011AAF8 E7AE0010 */  swc1        $f14, 0x10($sp)
/* 00C79C 8011AAFC AFAF0014 */  sw          $t7, 0x14($sp)
/* 00C7A0 8011AB00 AFB80018 */  sw          $t8, 0x18($sp)
/* 00C7A4 8011AB04 AFB9001C */  sw          $t9, 0x1c($sp)
/* 00C7A8 8011AB08 0C0459D8 */  jal         func_80116760
/* 00C7AC 8011AB0C AFA80020 */   sw         $t0, 0x20($sp)
/* 00C7B0 8011AB10 14400003 */  bnez        $v0, .L8011AB20
/* 00C7B4 8011AB14 00401825 */   move       $v1, $v0
/* 00C7B8 8011AB18 10000002 */  b           .L8011AB24
/* 00C7BC 8011AB1C 00001025 */   move       $v0, $zero
.L8011AB20:
/* 00C7C0 8011AB20 8C620038 */  lw          $v0, 0x38($v1)
.L8011AB24:
/* 00C7C4 8011AB24 8FBF002C */  lw          $ra, 0x2c($sp)
/* 00C7C8 8011AB28 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00C7CC 8011AB2C 03E00008 */  jr          $ra
/* 00C7D0 8011AB30 00000000 */   nop

glabel func_8011AB34 # 13
/* 00C7D4 8011AB34 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00C7D8 8011AB38 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00C7DC 8011AB3C AFA40020 */  sw          $a0, 0x20($sp)
/* 00C7E0 8011AB40 AFA50024 */  sw          $a1, 0x24($sp)
/* 00C7E4 8011AB44 AFA60028 */  sw          $a2, 0x28($sp)
/* 00C7E8 8011AB48 8C830054 */  lw          $v1, 0x54($a0)
/* 00C7EC 8011AB4C 00A02025 */  move        $a0, $a1
/* 00C7F0 8011AB50 0C04701F */  jal         func_8011C07C
/* 00C7F4 8011AB54 AFA3001C */   sw         $v1, 0x1c($sp)
/* 00C7F8 8011AB58 8FA3001C */  lw          $v1, 0x1c($sp)
/* 00C7FC 8011AB5C 1040000B */  beqz        $v0, .L8011AB8C
/* 00C800 8011AB60 00403025 */   move       $a2, $v0
/* 00C804 8011AB64 944F0034 */  lhu         $t7, 0x34($v0)
/* 00C808 8011AB68 24010086 */  addiu       $at, $zero, 0x86
/* 00C80C 8011AB6C 24080001 */  addiu       $t0, $zero, 0x1
/* 00C810 8011AB70 55E1000A */  bnel        $t7, $at, .L8011AB9C
/* 00C814 8011AB74 AC680198 */   sw         $t0, 0x198($v1)
/* 00C818 8011AB78 8C580054 */  lw          $t8, 0x54($v0)
/* 00C81C 8011AB7C 24010004 */  addiu       $at, $zero, 0x4
/* 00C820 8011AB80 83190006 */  lb          $t9, 0x6($t8)
/* 00C824 8011AB84 57210005 */  bnel        $t9, $at, .L8011AB9C
/* 00C828 8011AB88 AC680198 */   sw         $t0, 0x198($v1)
.L8011AB8C:
/* 00C82C 8011AB8C AC600198 */  sw          $zero, 0x198($v1)
/* 00C830 8011AB90 1000000C */  b           .L8011ABC4
/* 00C834 8011AB94 00001025 */   move       $v0, $zero
/* 00C838 8011AB98 AC680198 */  sw          $t0, 0x198($v1)
.L8011AB9C:
/* 00C83C 8011AB9C 8FA90024 */  lw          $t1, 0x24($sp)
/* 00C840 8011ABA0 24C50044 */  addiu       $a1, $a2, 0x44
/* 00C844 8011ABA4 AC690194 */  sw          $t1, 0x194($v1)
/* 00C848 8011ABA8 C7A40028 */  lwc1        $f4, 0x28($sp)
/* 00C84C 8011ABAC E46401A0 */  swc1        $f4, 0x1a0($v1)
/* 00C850 8011ABB0 0C046EFD */  jal         func_8011BBF4
/* 00C854 8011ABB4 8FA40020 */   lw         $a0, 0x20($sp)
/* 00C858 8011ABB8 8FA40020 */  lw          $a0, 0x20($sp)
/* 00C85C 8011ABBC 0C046B7C */  jal         func_8011ADF0
/* 00C860 8011ABC0 8FA50024 */   lw         $a1, 0x24($sp)
.L8011ABC4:
/* 00C864 8011ABC4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00C868 8011ABC8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00C86C 8011ABCC 03E00008 */  jr          $ra
/* 00C870 8011ABD0 00000000 */   nop

glabel func_8011ABD4 # 14
/* 00C874 8011ABD4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00C878 8011ABD8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00C87C 8011ABDC AFA40018 */  sw          $a0, 0x18($sp)
/* 00C880 8011ABE0 AFA5001C */  sw          $a1, 0x1c($sp)
/* 00C884 8011ABE4 AFA60020 */  sw          $a2, 0x20($sp)
/* 00C888 8011ABE8 0C04701F */  jal         func_8011C07C
/* 00C88C 8011ABEC 00A02025 */   move       $a0, $a1
/* 00C890 8011ABF0 8FA40018 */  lw          $a0, 0x18($sp)
/* 00C894 8011ABF4 00403025 */  move        $a2, $v0
/* 00C898 8011ABF8 8C830054 */  lw          $v1, 0x54($a0)
/* 00C89C 8011ABFC 1040000B */  beqz        $v0, .L8011AC2C
/* 00C8A0 8011AC00 AC600198 */   sw         $zero, 0x198($v1)
/* 00C8A4 8011AC04 944E0034 */  lhu         $t6, 0x34($v0)
/* 00C8A8 8011AC08 24010086 */  addiu       $at, $zero, 0x86
/* 00C8AC 8011AC0C C7A40020 */  lwc1        $f4, 0x20($sp)
/* 00C8B0 8011AC10 15C10008 */  bne         $t6, $at, .L8011AC34
/* 00C8B4 8011AC14 24C50044 */   addiu      $a1, $a2, 0x44
/* 00C8B8 8011AC18 8C4F0054 */  lw          $t7, 0x54($v0)
/* 00C8BC 8011AC1C 24010004 */  addiu       $at, $zero, 0x4
/* 00C8C0 8011AC20 81F80006 */  lb          $t8, 0x6($t7)
/* 00C8C4 8011AC24 17010003 */  bne         $t8, $at, .L8011AC34
/* 00C8C8 8011AC28 00000000 */   nop
.L8011AC2C:
/* 00C8CC 8011AC2C 10000006 */  b           .L8011AC48
/* 00C8D0 8011AC30 00001025 */   move       $v0, $zero
.L8011AC34:
/* 00C8D4 8011AC34 0C046EFD */  jal         func_8011BBF4
/* 00C8D8 8011AC38 E46401A0 */   swc1       $f4, 0x1a0($v1)
/* 00C8DC 8011AC3C 8FA40018 */  lw          $a0, 0x18($sp)
/* 00C8E0 8011AC40 0C046B7C */  jal         func_8011ADF0
/* 00C8E4 8011AC44 8FA5001C */   lw         $a1, 0x1c($sp)
.L8011AC48:
/* 00C8E8 8011AC48 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00C8EC 8011AC4C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00C8F0 8011AC50 03E00008 */  jr          $ra
/* 00C8F4 8011AC54 00000000 */   nop

glabel func_8011AC58 # 15
/* 00C8F8 8011AC58 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00C8FC 8011AC5C AFBF0014 */  sw          $ra, 0x14($sp)
/* 00C900 8011AC60 AFA40020 */  sw          $a0, 0x20($sp)
/* 00C904 8011AC64 AFA50024 */  sw          $a1, 0x24($sp)
/* 00C908 8011AC68 8C830054 */  lw          $v1, 0x54($a0)
/* 00C90C 8011AC6C 00A02025 */  move        $a0, $a1
/* 00C910 8011AC70 0C04701F */  jal         func_8011C07C
/* 00C914 8011AC74 AFA3001C */   sw         $v1, 0x1c($sp)
/* 00C918 8011AC78 8FA3001C */  lw          $v1, 0x1c($sp)
/* 00C91C 8011AC7C 1040000B */  beqz        $v0, .L8011ACAC
/* 00C920 8011AC80 00403025 */   move       $a2, $v0
/* 00C924 8011AC84 944F0034 */  lhu         $t7, 0x34($v0)
/* 00C928 8011AC88 24010086 */  addiu       $at, $zero, 0x86
/* 00C92C 8011AC8C 24080002 */  addiu       $t0, $zero, 0x2
/* 00C930 8011AC90 55E1000A */  bnel        $t7, $at, .L8011ACBC
/* 00C934 8011AC94 AC680198 */   sw         $t0, 0x198($v1)
/* 00C938 8011AC98 8C580054 */  lw          $t8, 0x54($v0)
/* 00C93C 8011AC9C 24010004 */  addiu       $at, $zero, 0x4
/* 00C940 8011ACA0 83190006 */  lb          $t9, 0x6($t8)
/* 00C944 8011ACA4 57210005 */  bnel        $t9, $at, .L8011ACBC
/* 00C948 8011ACA8 AC680198 */   sw         $t0, 0x198($v1)
.L8011ACAC:
/* 00C94C 8011ACAC AC600198 */  sw          $zero, 0x198($v1)
/* 00C950 8011ACB0 1000000C */  b           .L8011ACE4
/* 00C954 8011ACB4 00001025 */   move       $v0, $zero
/* 00C958 8011ACB8 AC680198 */  sw          $t0, 0x198($v1)
.L8011ACBC:
/* 00C95C 8011ACBC 8FA90024 */  lw          $t1, 0x24($sp)
/* 00C960 8011ACC0 44802000 */  mtc1        $zero, $f4
/* 00C964 8011ACC4 24C50044 */  addiu       $a1, $a2, 0x44
/* 00C968 8011ACC8 AC690194 */  sw          $t1, 0x194($v1)
/* 00C96C 8011ACCC E46401A0 */  swc1        $f4, 0x1a0($v1)
/* 00C970 8011ACD0 0C046F07 */  jal         func_8011BC1C
/* 00C974 8011ACD4 8FA40020 */   lw         $a0, 0x20($sp)
/* 00C978 8011ACD8 8FA40020 */  lw          $a0, 0x20($sp)
/* 00C97C 8011ACDC 0C046B7C */  jal         func_8011ADF0
/* 00C980 8011ACE0 8FA50024 */   lw         $a1, 0x24($sp)
.L8011ACE4:
/* 00C984 8011ACE4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00C988 8011ACE8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00C98C 8011ACEC 03E00008 */  jr          $ra
/* 00C990 8011ACF0 00000000 */   nop

glabel func_8011ACF4 # 16
/* 00C994 8011ACF4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00C998 8011ACF8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00C99C 8011ACFC AFA40018 */  sw          $a0, 0x18($sp)
/* 00C9A0 8011AD00 AFA5001C */  sw          $a1, 0x1c($sp)
/* 00C9A4 8011AD04 0C04701F */  jal         func_8011C07C
/* 00C9A8 8011AD08 00A02025 */   move       $a0, $a1
/* 00C9AC 8011AD0C 8FA40018 */  lw          $a0, 0x18($sp)
/* 00C9B0 8011AD10 00403025 */  move        $a2, $v0
/* 00C9B4 8011AD14 8C830054 */  lw          $v1, 0x54($a0)
/* 00C9B8 8011AD18 1040000A */  beqz        $v0, .L8011AD44
/* 00C9BC 8011AD1C AC600198 */   sw         $zero, 0x198($v1)
/* 00C9C0 8011AD20 944E0034 */  lhu         $t6, 0x34($v0)
/* 00C9C4 8011AD24 24010086 */  addiu       $at, $zero, 0x86
/* 00C9C8 8011AD28 55C10009 */  bnel        $t6, $at, .L8011AD50
/* 00C9CC 8011AD2C 44802000 */   mtc1       $zero, $f4
/* 00C9D0 8011AD30 8C4F0054 */  lw          $t7, 0x54($v0)
/* 00C9D4 8011AD34 24010004 */  addiu       $at, $zero, 0x4
/* 00C9D8 8011AD38 81F80006 */  lb          $t8, 0x6($t7)
/* 00C9DC 8011AD3C 57010004 */  bnel        $t8, $at, .L8011AD50
/* 00C9E0 8011AD40 44802000 */   mtc1       $zero, $f4
.L8011AD44:
/* 00C9E4 8011AD44 10000008 */  b           .L8011AD68
/* 00C9E8 8011AD48 00001025 */   move       $v0, $zero
/* 00C9EC 8011AD4C 44802000 */  mtc1        $zero, $f4
.L8011AD50:
/* 00C9F0 8011AD50 24C50044 */  addiu       $a1, $a2, 0x44
/* 00C9F4 8011AD54 0C046F07 */  jal         func_8011BC1C
/* 00C9F8 8011AD58 E46401A0 */   swc1       $f4, 0x1a0($v1)
/* 00C9FC 8011AD5C 8FA40018 */  lw          $a0, 0x18($sp)
/* 00CA00 8011AD60 0C046B7C */  jal         func_8011ADF0
/* 00CA04 8011AD64 8FA5001C */   lw         $a1, 0x1c($sp)
.L8011AD68:
/* 00CA08 8011AD68 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00CA0C 8011AD6C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00CA10 8011AD70 03E00008 */  jr          $ra
/* 00CA14 8011AD74 00000000 */   nop

glabel func_8011AD78 # 17
/* 00CA18 8011AD78 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00CA1C 8011AD7C AFBF0014 */  sw          $ra, 0x14($sp)
/* 00CA20 8011AD80 8C820054 */  lw          $v0, 0x54($a0)
/* 00CA24 8011AD84 44802000 */  mtc1        $zero, $f4
/* 00CA28 8011AD88 3C05800F */  lui         $a1, %hi(D_800F3E20)
/* 00CA2C 8011AD8C 24A53E20 */  addiu       $a1, $a1, %lo(D_800F3E20)
/* 00CA30 8011AD90 AC400198 */  sw          $zero, 0x198($v0)
/* 00CA34 8011AD94 0C046F07 */  jal         func_8011BC1C
/* 00CA38 8011AD98 E44401A0 */   swc1       $f4, 0x1a0($v0)
/* 00CA3C 8011AD9C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00CA40 8011ADA0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00CA44 8011ADA4 03E00008 */  jr          $ra
/* 00CA48 8011ADA8 00000000 */   nop

glabel func_8011ADAC # 18
/* 00CA4C 8011ADAC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00CA50 8011ADB0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00CA54 8011ADB4 0C047038 */  jal         func_8011C0E0
/* 00CA58 8011ADB8 00000000 */   nop
/* 00CA5C 8011ADBC 10400003 */  beqz        $v0, .L8011ADCC
/* 00CA60 8011ADC0 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00CA64 8011ADC4 10000002 */  b           .L8011ADD0
/* 00CA68 8011ADC8 8C420038 */   lw         $v0, 0x38($v0)
.L8011ADCC:
/* 00CA6C 8011ADCC 00001025 */  move        $v0, $zero
.L8011ADD0:
/* 00CA70 8011ADD0 03E00008 */  jr          $ra
/* 00CA74 8011ADD4 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8011ADD8 # 19
/* 00CA78 8011ADD8 8C830054 */  lw          $v1, 0x54($a0)
/* 00CA7C 8011ADDC 03E00008 */  jr          $ra
/* 00CA80 8011ADE0 8C620198 */   lw         $v0, 0x198($v1)

glabel func_8011ADE4 # 20
/* 00CA84 8011ADE4 8C820054 */  lw          $v0, 0x54($a0)
/* 00CA88 8011ADE8 03E00008 */  jr          $ra
/* 00CA8C 8011ADEC AC450198 */   sw         $a1, 0x198($v0)

glabel func_8011ADF0 # 21
/* 00CA90 8011ADF0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00CA94 8011ADF4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00CA98 8011ADF8 AFA40018 */  sw          $a0, 0x18($sp)
/* 00CA9C 8011ADFC 0C04701F */  jal         func_8011C07C
/* 00CAA0 8011AE00 00A02025 */   move       $a0, $a1
/* 00CAA4 8011AE04 14400003 */  bnez        $v0, .L8011AE14
/* 00CAA8 8011AE08 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00CAAC 8011AE0C 10000021 */  b           .L8011AE94
/* 00CAB0 8011AE10 00001025 */   move       $v0, $zero
.L8011AE14:
/* 00CAB4 8011AE14 94430034 */  lhu         $v1, 0x34($v0)
/* 00CAB8 8011AE18 24010086 */  addiu       $at, $zero, 0x86
/* 00CABC 8011AE1C 54610004 */  bnel        $v1, $at, .L8011AE30
/* 00CAC0 8011AE20 2401007F */   addiu      $at, $zero, 0x7f
/* 00CAC4 8011AE24 1000001B */  b           .L8011AE94
/* 00CAC8 8011AE28 24020001 */   addiu      $v0, $zero, 0x1
/* 00CACC 8011AE2C 2401007F */  addiu       $at, $zero, 0x7f
.L8011AE30:
/* 00CAD0 8011AE30 14610003 */  bne         $v1, $at, .L8011AE40
/* 00CAD4 8011AE34 00000000 */   nop
/* 00CAD8 8011AE38 10000016 */  b           .L8011AE94
/* 00CADC 8011AE3C 24020002 */   addiu      $v0, $zero, 0x2
.L8011AE40:
/* 00CAE0 8011AE40 18600005 */  blez        $v1, .L8011AE58
/* 00CAE4 8011AE44 28610026 */   slti       $at, $v1, 0x26
/* 00CAE8 8011AE48 50200004 */  beql        $at, $zero, .L8011AE5C
/* 00CAEC 8011AE4C 28610082 */   slti       $at, $v1, 0x82
/* 00CAF0 8011AE50 10000010 */  b           .L8011AE94
/* 00CAF4 8011AE54 24020004 */   addiu      $v0, $zero, 0x4
.L8011AE58:
/* 00CAF8 8011AE58 28610082 */  slti        $at, $v1, 0x82
.L8011AE5C:
/* 00CAFC 8011AE5C 14200005 */  bnez        $at, .L8011AE74
/* 00CB00 8011AE60 28610083 */   slti       $at, $v1, 0x83
/* 00CB04 8011AE64 50200004 */  beql        $at, $zero, .L8011AE78
/* 00CB08 8011AE68 2861008D */   slti       $at, $v1, 0x8d
/* 00CB0C 8011AE6C 10000009 */  b           .L8011AE94
/* 00CB10 8011AE70 24020005 */   addiu      $v0, $zero, 0x5
.L8011AE74:
/* 00CB14 8011AE74 2861008D */  slti        $at, $v1, 0x8d
.L8011AE78:
/* 00CB18 8011AE78 14200006 */  bnez        $at, .L8011AE94
/* 00CB1C 8011AE7C 00001025 */   move       $v0, $zero
/* 00CB20 8011AE80 28610095 */  slti        $at, $v1, 0x95
/* 00CB24 8011AE84 10200003 */  beqz        $at, .L8011AE94
/* 00CB28 8011AE88 00000000 */   nop
/* 00CB2C 8011AE8C 10000001 */  b           .L8011AE94
/* 00CB30 8011AE90 24020003 */   addiu      $v0, $zero, 0x3
.L8011AE94:
/* 00CB34 8011AE94 03E00008 */  jr          $ra
/* 00CB38 8011AE98 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8011AE9C # 22
/* 00CB3C 8011AE9C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00CB40 8011AEA0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00CB44 8011AEA4 0C04701F */  jal         func_8011C07C
/* 00CB48 8011AEA8 AFA40018 */   sw         $a0, 0x18($sp)
/* 00CB4C 8011AEAC 14400003 */  bnez        $v0, .L8011AEBC
/* 00CB50 8011AEB0 8FA40018 */   lw         $a0, 0x18($sp)
/* 00CB54 8011AEB4 10000020 */  b           .L8011AF38
/* 00CB58 8011AEB8 00001025 */   move       $v0, $zero
.L8011AEBC:
/* 00CB5C 8011AEBC 94430034 */  lhu         $v1, 0x34($v0)
/* 00CB60 8011AEC0 24010086 */  addiu       $at, $zero, 0x86
/* 00CB64 8011AEC4 14610005 */  bne         $v1, $at, .L8011AEDC
/* 00CB68 8011AEC8 00000000 */   nop
/* 00CB6C 8011AECC 0C046BD2 */  jal         func_8011AF48
/* 00CB70 8011AED0 00000000 */   nop
/* 00CB74 8011AED4 10000019 */  b           .L8011AF3C
/* 00CB78 8011AED8 8FBF0014 */   lw         $ra, 0x14($sp)
.L8011AEDC:
/* 00CB7C 8011AEDC 18600007 */  blez        $v1, .L8011AEFC
/* 00CB80 8011AEE0 28610026 */   slti       $at, $v1, 0x26
/* 00CB84 8011AEE4 50200006 */  beql        $at, $zero, .L8011AF00
/* 00CB88 8011AEE8 28610082 */   slti       $at, $v1, 0x82
/* 00CB8C 8011AEEC 0C046BE6 */  jal         func_8011AF98
/* 00CB90 8011AEF0 00000000 */   nop
/* 00CB94 8011AEF4 10000011 */  b           .L8011AF3C
/* 00CB98 8011AEF8 8FBF0014 */   lw         $ra, 0x14($sp)
.L8011AEFC:
/* 00CB9C 8011AEFC 28610082 */  slti        $at, $v1, 0x82
.L8011AF00:
/* 00CBA0 8011AF00 14200005 */  bnez        $at, .L8011AF18
/* 00CBA4 8011AF04 28610083 */   slti       $at, $v1, 0x83
/* 00CBA8 8011AF08 50200004 */  beql        $at, $zero, .L8011AF1C
/* 00CBAC 8011AF0C 2861008D */   slti       $at, $v1, 0x8d
/* 00CBB0 8011AF10 10000009 */  b           .L8011AF38
/* 00CBB4 8011AF14 00601025 */   move       $v0, $v1
.L8011AF18:
/* 00CBB8 8011AF18 2861008D */  slti        $at, $v1, 0x8d
.L8011AF1C:
/* 00CBBC 8011AF1C 14200006 */  bnez        $at, .L8011AF38
/* 00CBC0 8011AF20 00001025 */   move       $v0, $zero
/* 00CBC4 8011AF24 28610095 */  slti        $at, $v1, 0x95
/* 00CBC8 8011AF28 10200003 */  beqz        $at, .L8011AF38
/* 00CBCC 8011AF2C 00000000 */   nop
/* 00CBD0 8011AF30 10000001 */  b           .L8011AF38
/* 00CBD4 8011AF34 00601025 */   move       $v0, $v1
.L8011AF38:
/* 00CBD8 8011AF38 8FBF0014 */  lw          $ra, 0x14($sp)
.L8011AF3C:
/* 00CBDC 8011AF3C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00CBE0 8011AF40 03E00008 */  jr          $ra
/* 00CBE4 8011AF44 00000000 */   nop

glabel func_8011AF48 # 23
/* 00CBE8 8011AF48 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00CBEC 8011AF4C AFBF0014 */  sw          $ra, 0x14($sp)
/* 00CBF0 8011AF50 0C04701F */  jal         func_8011C07C
/* 00CBF4 8011AF54 00000000 */   nop
/* 00CBF8 8011AF58 14400003 */  bnez        $v0, .L8011AF68
/* 00CBFC 8011AF5C 00402025 */   move       $a0, $v0
/* 00CC00 8011AF60 10000009 */  b           .L8011AF88
/* 00CC04 8011AF64 00001025 */   move       $v0, $zero
.L8011AF68:
/* 00CC08 8011AF68 944E0034 */  lhu         $t6, 0x34($v0)
/* 00CC0C 8011AF6C 24010086 */  addiu       $at, $zero, 0x86
/* 00CC10 8011AF70 00001025 */  move        $v0, $zero
/* 00CC14 8011AF74 15C10004 */  bne         $t6, $at, .L8011AF88
/* 00CC18 8011AF78 00000000 */   nop
/* 00CC1C 8011AF7C 8C830054 */  lw          $v1, 0x54($a0)
/* 00CC20 8011AF80 10000001 */  b           .L8011AF88
/* 00CC24 8011AF84 84620004 */   lh         $v0, 0x4($v1)
.L8011AF88:
/* 00CC28 8011AF88 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00CC2C 8011AF8C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00CC30 8011AF90 03E00008 */  jr          $ra
/* 00CC34 8011AF94 00000000 */   nop

glabel func_8011AF98 # 24
/* 00CC38 8011AF98 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00CC3C 8011AF9C AFBF0014 */  sw          $ra, 0x14($sp)
/* 00CC40 8011AFA0 0C04701F */  jal         func_8011C07C
/* 00CC44 8011AFA4 00000000 */   nop
/* 00CC48 8011AFA8 14400003 */  bnez        $v0, .L8011AFB8
/* 00CC4C 8011AFAC 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00CC50 8011AFB0 10000009 */  b           .L8011AFD8
/* 00CC54 8011AFB4 00001025 */   move       $v0, $zero
.L8011AFB8:
/* 00CC58 8011AFB8 94430034 */  lhu         $v1, 0x34($v0)
/* 00CC5C 8011AFBC 00001025 */  move        $v0, $zero
/* 00CC60 8011AFC0 18600005 */  blez        $v1, .L8011AFD8
/* 00CC64 8011AFC4 28610026 */   slti       $at, $v1, 0x26
/* 00CC68 8011AFC8 10200003 */  beqz        $at, .L8011AFD8
/* 00CC6C 8011AFCC 00000000 */   nop
/* 00CC70 8011AFD0 10000001 */  b           .L8011AFD8
/* 00CC74 8011AFD4 00601025 */   move       $v0, $v1
.L8011AFD8:
/* 00CC78 8011AFD8 03E00008 */  jr          $ra
/* 00CC7C 8011AFDC 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8011AFE0 # 25
/* 00CC80 8011AFE0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00CC84 8011AFE4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00CC88 8011AFE8 0C04701F */  jal         func_8011C07C
/* 00CC8C 8011AFEC 00000000 */   nop
/* 00CC90 8011AFF0 14400003 */  bnez        $v0, .L8011B000
/* 00CC94 8011AFF4 00401825 */   move       $v1, $v0
/* 00CC98 8011AFF8 10000002 */  b           .L8011B004
/* 00CC9C 8011AFFC 00001025 */   move       $v0, $zero
.L8011B000:
/* 00CCA0 8011B000 94620034 */  lhu         $v0, 0x34($v1)
.L8011B004:
/* 00CCA4 8011B004 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00CCA8 8011B008 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00CCAC 8011B00C 03E00008 */  jr          $ra
/* 00CCB0 8011B010 00000000 */   nop

glabel func_8011B014 # 26
/* 00CCB4 8011B014 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00CCB8 8011B018 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00CCBC 8011B01C 0C04701F */  jal         func_8011C07C
/* 00CCC0 8011B020 00000000 */   nop
/* 00CCC4 8011B024 14400004 */  bnez        $v0, .L8011B038
/* 00CCC8 8011B028 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00CCCC 8011B02C 44800000 */  mtc1        $zero, $f0
/* 00CCD0 8011B030 10000002 */  b           .L8011B03C
/* 00CCD4 8011B034 00000000 */   nop
.L8011B038:
/* 00CCD8 8011B038 C4400024 */  lwc1        $f0, 0x24($v0)
.L8011B03C:
/* 00CCDC 8011B03C 03E00008 */  jr          $ra
/* 00CCE0 8011B040 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8011B044 # 27
/* 00CCE4 8011B044 8C820054 */  lw          $v0, 0x54($a0)
/* 00CCE8 8011B048 03E00008 */  jr          $ra
/* 00CCEC 8011B04C A445013C */   sh         $a1, 0x13c($v0)

glabel func_8011B050 # 28
/* 00CCF0 8011B050 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00CCF4 8011B054 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00CCF8 8011B058 AFA40018 */  sw          $a0, 0x18($sp)
/* 00CCFC 8011B05C 0C0041FD */  jal         func_800107F4
/* 00CD00 8011B060 AFA60020 */   sw         $a2, 0x20($sp)
/* 00CD04 8011B064 8FA40018 */  lw          $a0, 0x18($sp)
/* 00CD08 8011B068 0C004217 */  jal         func_8001085C
/* 00CD0C 8011B06C 8FA50020 */   lw         $a1, 0x20($sp)
/* 00CD10 8011B070 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00CD14 8011B074 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00CD18 8011B078 03E00008 */  jr          $ra
/* 00CD1C 8011B07C 00000000 */   nop

glabel func_8011B080 # 29
/* 00CD20 8011B080 3C02800F */  lui         $v0, %hi(D_800F3EA4)
/* 00CD24 8011B084 03E00008 */  jr          $ra
/* 00CD28 8011B088 8C423EA4 */   lw         $v0, %lo(D_800F3EA4)($v0)

glabel func_8011B08C # 30
/* 00CD2C 8011B08C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00CD30 8011B090 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00CD34 8011B094 0C007314 */  jal         func_8001CC50
/* 00CD38 8011B098 00000000 */   nop
/* 00CD3C 8011B09C 304E0001 */  andi        $t6, $v0, 0x1
/* 00CD40 8011B0A0 15C00004 */  bnez        $t6, .L8011B0B4
/* 00CD44 8011B0A4 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00CD48 8011B0A8 304F0002 */  andi        $t7, $v0, 0x2
/* 00CD4C 8011B0AC 11E00003 */  beqz        $t7, .L8011B0BC
/* 00CD50 8011B0B0 00001025 */   move       $v0, $zero
.L8011B0B4:
/* 00CD54 8011B0B4 10000001 */  b           .L8011B0BC
/* 00CD58 8011B0B8 24020001 */   addiu      $v0, $zero, 0x1
.L8011B0BC:
/* 00CD5C 8011B0BC 03E00008 */  jr          $ra
/* 00CD60 8011B0C0 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8011B0C4 # 31
/* 00CD64 8011B0C4 3C01800F */  lui         $at, %hi(D_800F3E50)
/* 00CD68 8011B0C8 03E00008 */  jr          $ra
/* 00CD6C 8011B0CC A4243E50 */   sh         $a0, %lo(D_800F3E50)($at)

glabel func_8011B0D0 # 32
/* 00CD70 8011B0D0 3C02800F */  lui         $v0, %hi(D_800F3E50 + 0x2)
/* 00CD74 8011B0D4 944E3E52 */  lhu         $t6, %lo(D_800F3E50 + 0x2)($v0)
/* 00CD78 8011B0D8 03E00008 */  jr          $ra
/* 00CD7C 8011B0DC 01C01025 */   move       $v0, $t6

glabel func_8011B0E0 # 33
/* 00CD80 8011B0E0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00CD84 8011B0E4 AFA40018 */  sw          $a0, 0x18($sp)
/* 00CD88 8011B0E8 8FAE0018 */  lw          $t6, 0x18($sp)
/* 00CD8C 8011B0EC AFBF0014 */  sw          $ra, 0x14($sp)
/* 00CD90 8011B0F0 3C04800F */  lui         $a0, %hi(D_800F3E20)
/* 00CD94 8011B0F4 24843E20 */  addiu       $a0, $a0, %lo(D_800F3E20)
/* 00CD98 8011B0F8 00003025 */  move        $a2, $zero
/* 00CD9C 8011B0FC 0C04563E */  jal         func_801158F8
/* 00CDA0 8011B100 8DC70038 */   lw         $a3, 0x38($t6)
/* 00CDA4 8011B104 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00CDA8 8011B108 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00CDAC 8011B10C 03E00008 */  jr          $ra
/* 00CDB0 8011B110 00000000 */   nop

glabel func_8011B114 # 34
/* 00CDB4 8011B114 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00CDB8 8011B118 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00CDBC 8011B11C 3C04800F */  lui         $a0, %hi(D_800F3E20)
/* 00CDC0 8011B120 0C04565F */  jal         func_8011597C
/* 00CDC4 8011B124 24843E20 */   addiu      $a0, $a0, %lo(D_800F3E20)
/* 00CDC8 8011B128 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00CDCC 8011B12C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00CDD0 8011B130 03E00008 */  jr          $ra
/* 00CDD4 8011B134 00000000 */   nop

glabel func_8011B138 # 35
/* 00CDD8 8011B138 3C0E8013 */  lui         $t6, %hi(D_80137EE4)
/* 00CDDC 8011B13C 8DCE7EE4 */  lw          $t6, %lo(D_80137EE4)($t6)
/* 00CDE0 8011B140 0004C0C0 */  sll         $t8, $a0, 3
/* 00CDE4 8011B144 8DCF0070 */  lw          $t7, 0x70($t6)
/* 00CDE8 8011B148 01F8C821 */  addu        $t9, $t7, $t8
/* 00CDEC 8011B14C 03E00008 */  jr          $ra
/* 00CDF0 8011B150 8F220000 */   lw         $v0, 0x0($t9)

glabel func_8011B154 # 36
/* 00CDF4 8011B154 28C10003 */  slti        $at, $a2, 0x3
/* 00CDF8 8011B158 14200005 */  bnez        $at, .L8011B170
/* 00CDFC 8011B15C 3C0E8013 */   lui        $t6, %hi(D_80137EE4)
/* 00CE00 8011B160 3C01C780 */  lui         $at, 0xc780
/* 00CE04 8011B164 44810000 */  mtc1        $at, $f0
/* 00CE08 8011B168 03E00008 */  jr          $ra
/* 00CE0C 8011B16C 00000000 */   nop
.L8011B170:
/* 00CE10 8011B170 8DCE7EE4 */  lw          $t6, %lo(D_80137EE4)($t6)
/* 00CE14 8011B174 0004C0C0 */  sll         $t8, $a0, 3
/* 00CE18 8011B178 00054880 */  sll         $t1, $a1, 2
/* 00CE1C 8011B17C 8DCF0070 */  lw          $t7, 0x70($t6)
/* 00CE20 8011B180 01254823 */  subu        $t1, $t1, $a1
/* 00CE24 8011B184 01F81021 */  addu        $v0, $t7, $t8
/* 00CE28 8011B188 8C590000 */  lw          $t9, 0x0($v0)
/* 00CE2C 8011B18C 00B9082A */  slt         $at, $a1, $t9
/* 00CE30 8011B190 50200009 */  beql        $at, $zero, .L8011B1B8
/* 00CE34 8011B194 3C01C780 */   lui        $at, 0xc780
/* 00CE38 8011B198 8C480004 */  lw          $t0, 0x4($v0)
/* 00CE3C 8011B19C 00094880 */  sll         $t1, $t1, 2
/* 00CE40 8011B1A0 00065880 */  sll         $t3, $a2, 2
/* 00CE44 8011B1A4 01095021 */  addu        $t2, $t0, $t1
/* 00CE48 8011B1A8 014B6021 */  addu        $t4, $t2, $t3
/* 00CE4C 8011B1AC 03E00008 */  jr          $ra
/* 00CE50 8011B1B0 C5800000 */   lwc1       $f0, 0x0($t4)
/* 00CE54 8011B1B4 3C01C780 */  lui         $at, 0xc780
.L8011B1B8:
/* 00CE58 8011B1B8 44810000 */  mtc1        $at, $f0
/* 00CE5C 8011B1BC 00000000 */  nop
/* 00CE60 8011B1C0 03E00008 */  jr          $ra
/* 00CE64 8011B1C4 00000000 */   nop

glabel func_8011B1C8 # 37
/* 00CE68 8011B1C8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00CE6C 8011B1CC AFA60030 */  sw          $a2, 0x30($sp)
/* 00CE70 8011B1D0 AFA70034 */  sw          $a3, 0x34($sp)
/* 00CE74 8011B1D4 3C0143B4 */  lui         $at, 0x43b4
/* 00CE78 8011B1D8 44812000 */  mtc1        $at, $f4
/* 00CE7C 8011B1DC 8FAF0034 */  lw          $t7, 0x34($sp)
/* 00CE80 8011B1E0 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00CE84 8011B1E4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 00CE88 8011B1E8 2487000C */  addiu       $a3, $a0, 0xc
/* 00CE8C 8011B1EC 8FA60038 */  lw          $a2, 0x38($sp)
/* 00CE90 8011B1F0 AFAF0018 */  sw          $t7, 0x18($sp)
/* 00CE94 8011B1F4 E7A40010 */  swc1        $f4, 0x10($sp)
/* 00CE98 8011B1F8 0C009414 */  jal         func_80025050
/* 00CE9C 8011B1FC AFAE0014 */   sw         $t6, 0x14($sp)
/* 00CEA0 8011B200 14400003 */  bnez        $v0, .L8011B210
/* 00CEA4 8011B204 00401825 */   move       $v1, $v0
/* 00CEA8 8011B208 10000002 */  b           .L8011B214
/* 00CEAC 8011B20C 00001025 */   move       $v0, $zero
.L8011B210:
/* 00CEB0 8011B210 8C620038 */  lw          $v0, 0x38($v1)
.L8011B214:
/* 00CEB4 8011B214 8FBF0024 */  lw          $ra, 0x24($sp)
/* 00CEB8 8011B218 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00CEBC 8011B21C 03E00008 */  jr          $ra
/* 00CEC0 8011B220 00000000 */   nop

glabel func_8011B224 # 38
/* 00CEC4 8011B224 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00CEC8 8011B228 44800000 */  mtc1        $zero, $f0
/* 00CECC 8011B22C 44856000 */  mtc1        $a1, $f12
/* 00CED0 8011B230 AFA60038 */  sw          $a2, 0x38($sp)
/* 00CED4 8011B234 AFA7003C */  sw          $a3, 0x3c($sp)
/* 00CED8 8011B238 3C0143B4 */  lui         $at, 0x43b4
/* 00CEDC 8011B23C 44812000 */  mtc1        $at, $f4
/* 00CEE0 8011B240 8FAF003C */  lw          $t7, 0x3c($sp)
/* 00CEE4 8011B244 8FAE0038 */  lw          $t6, 0x38($sp)
/* 00CEE8 8011B248 8FB80040 */  lw          $t8, 0x40($sp)
/* 00CEEC 8011B24C 8FB90044 */  lw          $t9, 0x44($sp)
/* 00CEF0 8011B250 AFBF002C */  sw          $ra, 0x2c($sp)
/* 00CEF4 8011B254 44070000 */  mfc1        $a3, $f0
/* 00CEF8 8011B258 44060000 */  mfc1        $a2, $f0
/* 00CEFC 8011B25C 44056000 */  mfc1        $a1, $f12
/* 00CF00 8011B260 AFAF0018 */  sw          $t7, 0x18($sp)
/* 00CF04 8011B264 E7A40010 */  swc1        $f4, 0x10($sp)
/* 00CF08 8011B268 AFAE0014 */  sw          $t6, 0x14($sp)
/* 00CF0C 8011B26C AFB8001C */  sw          $t8, 0x1c($sp)
/* 00CF10 8011B270 0C0459D8 */  jal         func_80116760
/* 00CF14 8011B274 AFB90020 */   sw         $t9, 0x20($sp)
/* 00CF18 8011B278 14400003 */  bnez        $v0, .L8011B288
/* 00CF1C 8011B27C 00401825 */   move       $v1, $v0
/* 00CF20 8011B280 10000002 */  b           .L8011B28C
/* 00CF24 8011B284 00001025 */   move       $v0, $zero
.L8011B288:
/* 00CF28 8011B288 8C620038 */  lw          $v0, 0x38($v1)
.L8011B28C:
/* 00CF2C 8011B28C 8FBF002C */  lw          $ra, 0x2c($sp)
/* 00CF30 8011B290 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00CF34 8011B294 03E00008 */  jr          $ra
/* 00CF38 8011B298 00000000 */   nop

glabel func_8011B29C # 39
/* 00CF3C 8011B29C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00CF40 8011B2A0 44876000 */  mtc1        $a3, $f12
/* 00CF44 8011B2A4 AFA5002C */  sw          $a1, 0x2c($sp)
/* 00CF48 8011B2A8 AFA60030 */  sw          $a2, 0x30($sp)
/* 00CF4C 8011B2AC 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00CF50 8011B2B0 8FAE002C */  lw          $t6, 0x2c($sp)
/* 00CF54 8011B2B4 C7A40038 */  lwc1        $f4, 0x38($sp)
/* 00CF58 8011B2B8 AFBF0024 */  sw          $ra, 0x24($sp)
/* 00CF5C 8011B2BC 44066000 */  mfc1        $a2, $f12
/* 00CF60 8011B2C0 24850044 */  addiu       $a1, $a0, 0x44
/* 00CF64 8011B2C4 2487000C */  addiu       $a3, $a0, 0xc
/* 00CF68 8011B2C8 AFAF0018 */  sw          $t7, 0x18($sp)
/* 00CF6C 8011B2CC AFAE0014 */  sw          $t6, 0x14($sp)
/* 00CF70 8011B2D0 0C002233 */  jal         func_800088CC
/* 00CF74 8011B2D4 E7A40010 */   swc1       $f4, 0x10($sp)
/* 00CF78 8011B2D8 14400003 */  bnez        $v0, .L8011B2E8
/* 00CF7C 8011B2DC 00401825 */   move       $v1, $v0
/* 00CF80 8011B2E0 10000002 */  b           .L8011B2EC
/* 00CF84 8011B2E4 00001025 */   move       $v0, $zero
.L8011B2E8:
/* 00CF88 8011B2E8 8C620038 */  lw          $v0, 0x38($v1)
.L8011B2EC:
/* 00CF8C 8011B2EC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 00CF90 8011B2F0 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00CF94 8011B2F4 03E00008 */  jr          $ra
/* 00CF98 8011B2F8 00000000 */   nop

glabel func_8011B2FC # 40
/* 00CF9C 8011B2FC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00CFA0 8011B300 AFA60030 */  sw          $a2, 0x30($sp)
/* 00CFA4 8011B304 AFA70034 */  sw          $a3, 0x34($sp)
/* 00CFA8 8011B308 3C0143B4 */  lui         $at, 0x43b4
/* 00CFAC 8011B30C 44812000 */  mtc1        $at, $f4
/* 00CFB0 8011B310 8FAF0034 */  lw          $t7, 0x34($sp)
/* 00CFB4 8011B314 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00CFB8 8011B318 AFBF0024 */  sw          $ra, 0x24($sp)
/* 00CFBC 8011B31C 2487000C */  addiu       $a3, $a0, 0xc
/* 00CFC0 8011B320 8FA60038 */  lw          $a2, 0x38($sp)
/* 00CFC4 8011B324 AFAF0018 */  sw          $t7, 0x18($sp)
/* 00CFC8 8011B328 E7A40010 */  swc1        $f4, 0x10($sp)
/* 00CFCC 8011B32C 0C002233 */  jal         func_800088CC
/* 00CFD0 8011B330 AFAE0014 */   sw         $t6, 0x14($sp)
/* 00CFD4 8011B334 14400003 */  bnez        $v0, .L8011B344
/* 00CFD8 8011B338 00401825 */   move       $v1, $v0
/* 00CFDC 8011B33C 10000002 */  b           .L8011B348
/* 00CFE0 8011B340 00001025 */   move       $v0, $zero
.L8011B344:
/* 00CFE4 8011B344 8C620038 */  lw          $v0, 0x38($v1)
.L8011B348:
/* 00CFE8 8011B348 8FBF0024 */  lw          $ra, 0x24($sp)
/* 00CFEC 8011B34C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00CFF0 8011B350 03E00008 */  jr          $ra
/* 00CFF4 8011B354 00000000 */   nop

glabel func_8011B358 # 41
/* 00CFF8 8011B358 44857000 */  mtc1        $a1, $f14
/* 00CFFC 8011B35C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00D000 8011B360 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00D004 8011B364 0C04701F */  jal         func_8011C07C
/* 00D008 8011B368 E7AE001C */   swc1       $f14, 0x1c($sp)
/* 00D00C 8011B36C 10400015 */  beqz        $v0, .L8011B3C4
/* 00D010 8011B370 C7AE001C */   lwc1       $f14, 0x1c($sp)
/* 00D014 8011B374 944E0036 */  lhu         $t6, 0x36($v0)
/* 00D018 8011B378 3C188013 */  lui         $t8, %hi(D_80137EE4)
/* 00D01C 8011B37C 31CF0004 */  andi        $t7, $t6, 0x4
/* 00D020 8011B380 51E00008 */  beql        $t7, $zero, .L8011B3A4
/* 00D024 8011B384 46007086 */   mov.s      $f2, $f14
/* 00D028 8011B388 8F187EE4 */  lw          $t8, %lo(D_80137EE4)($t8)
/* 00D02C 8011B38C C4440000 */  lwc1        $f4, 0x0($v0)
/* 00D030 8011B390 C700000C */  lwc1        $f0, 0xc($t8)
/* 00D034 8011B394 460E0082 */  mul.s       $f2, $f0, $f14
/* 00D038 8011B398 10000003 */  b           .L8011B3A8
/* 00D03C 8011B39C 46002303 */   div.s      $f12, $f4, $f0
/* 00D040 8011B3A0 46007086 */  mov.s       $f2, $f14
.L8011B3A4:
/* 00D044 8011B3A4 C44C0000 */  lwc1        $f12, 0x0($v0)
.L8011B3A8:
/* 00D048 8011B3A8 C4460024 */  lwc1        $f6, 0x24($v0)
/* 00D04C 8011B3AC E4420000 */  swc1        $f2, 0x0($v0)
/* 00D050 8011B3B0 E4420004 */  swc1        $f2, 0x4($v0)
/* 00D054 8011B3B4 460E3202 */  mul.s       $f8, $f6, $f14
/* 00D058 8011B3B8 E4420008 */  swc1        $f2, 0x8($v0)
/* 00D05C 8011B3BC 460C4283 */  div.s       $f10, $f8, $f12
/* 00D060 8011B3C0 E44A0024 */  swc1        $f10, 0x24($v0)
.L8011B3C4:
/* 00D064 8011B3C4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00D068 8011B3C8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00D06C 8011B3CC 03E00008 */  jr          $ra
/* 00D070 8011B3D0 00000000 */   nop

glabel func_8011B3D4 # 42
/* 00D074 8011B3D4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00D078 8011B3D8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00D07C 8011B3DC 0C04701F */  jal         func_8011C07C
/* 00D080 8011B3E0 00000000 */   nop
/* 00D084 8011B3E4 14400004 */  bnez        $v0, .L8011B3F8
/* 00D088 8011B3E8 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00D08C 8011B3EC 44800000 */  mtc1        $zero, $f0
/* 00D090 8011B3F0 1000000D */  b           .L8011B428
/* 00D094 8011B3F4 00000000 */   nop
.L8011B3F8:
/* 00D098 8011B3F8 944E0036 */  lhu         $t6, 0x36($v0)
/* 00D09C 8011B3FC 3C188013 */  lui         $t8, %hi(D_80137EE4)
/* 00D0A0 8011B400 31CF0004 */  andi        $t7, $t6, 0x4
/* 00D0A4 8011B404 51E00007 */  beql        $t7, $zero, .L8011B424
/* 00D0A8 8011B408 C4420000 */   lwc1       $f2, 0x0($v0)
/* 00D0AC 8011B40C 8F187EE4 */  lw          $t8, %lo(D_80137EE4)($t8)
/* 00D0B0 8011B410 C4440000 */  lwc1        $f4, 0x0($v0)
/* 00D0B4 8011B414 C706000C */  lwc1        $f6, 0xc($t8)
/* 00D0B8 8011B418 10000002 */  b           .L8011B424
/* 00D0BC 8011B41C 46062083 */   div.s      $f2, $f4, $f6
/* 00D0C0 8011B420 C4420000 */  lwc1        $f2, 0x0($v0)
.L8011B424:
/* 00D0C4 8011B424 46001006 */  mov.s       $f0, $f2
.L8011B428:
/* 00D0C8 8011B428 03E00008 */  jr          $ra
/* 00D0CC 8011B42C 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8011B430 # 43
/* 00D0D0 8011B430 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00D0D4 8011B434 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00D0D8 8011B438 0C04701F */  jal         func_8011C07C
/* 00D0DC 8011B43C 00000000 */   nop
/* 00D0E0 8011B440 14400004 */  bnez        $v0, .L8011B454
/* 00D0E4 8011B444 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00D0E8 8011B448 44800000 */  mtc1        $zero, $f0
/* 00D0EC 8011B44C 10000010 */  b           .L8011B490
/* 00D0F0 8011B450 00000000 */   nop
.L8011B454:
/* 00D0F4 8011B454 94430034 */  lhu         $v1, 0x34($v0)
/* 00D0F8 8011B458 24010082 */  addiu       $at, $zero, 0x82
/* 00D0FC 8011B45C 5461000B */  bnel        $v1, $at, .L8011B48C
/* 00D100 8011B460 44800000 */   mtc1       $zero, $f0
/* 00D104 8011B464 8C430054 */  lw          $v1, 0x54($v0)
/* 00D108 8011B468 44802000 */  mtc1        $zero, $f4
/* 00D10C 8011B46C C4620000 */  lwc1        $f2, 0x0($v1)
/* 00D110 8011B470 4602203C */  c.lt.s      $f4, $f2
/* 00D114 8011B474 00000000 */  nop
/* 00D118 8011B478 45020004 */  bc1fl       .L8011B48C
/* 00D11C 8011B47C 44800000 */   mtc1       $zero, $f0
/* 00D120 8011B480 10000003 */  b           .L8011B490
/* 00D124 8011B484 46001006 */   mov.s      $f0, $f2
/* 00D128 8011B488 44800000 */  mtc1        $zero, $f0
.L8011B48C:
/* 00D12C 8011B48C 00000000 */  nop
.L8011B490:
/* 00D130 8011B490 03E00008 */  jr          $ra
/* 00D134 8011B494 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8011B498 # 44
/* 00D138 8011B498 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00D13C 8011B49C AFBF0014 */  sw          $ra, 0x14($sp)
/* 00D140 8011B4A0 0C001A23 */  jal         func_8000688C
/* 00D144 8011B4A4 A7A0001E */   sh         $zero, 0x1e($sp)
/* 00D148 8011B4A8 97A3001E */  lhu         $v1, 0x1e($sp)
/* 00D14C 8011B4AC 14400003 */  bnez        $v0, .L8011B4BC
/* 00D150 8011B4B0 00402825 */   move       $a1, $v0
/* 00D154 8011B4B4 1000002F */  b           .L8011B574
/* 00D158 8011B4B8 00001025 */   move       $v0, $zero
.L8011B4BC:
/* 00D15C 8011B4BC 94440034 */  lhu         $a0, 0x34($v0)
/* 00D160 8011B4C0 1880002B */  blez        $a0, .L8011B570
/* 00D164 8011B4C4 28810026 */   slti       $at, $a0, 0x26
/* 00D168 8011B4C8 10200029 */  beqz        $at, .L8011B570
/* 00D16C 8011B4CC 00A02025 */   move       $a0, $a1
/* 00D170 8011B4D0 0C003775 */  jal         func_8000DDD4
/* 00D174 8011B4D4 A7A3001E */   sh         $v1, 0x1e($sp)
/* 00D178 8011B4D8 304E0200 */  andi        $t6, $v0, 0x200
/* 00D17C 8011B4DC 11C00002 */  beqz        $t6, .L8011B4E8
/* 00D180 8011B4E0 97A3001E */   lhu        $v1, 0x1e($sp)
/* 00D184 8011B4E4 24030010 */  addiu       $v1, $zero, 0x10
.L8011B4E8:
/* 00D188 8011B4E8 304F0100 */  andi        $t7, $v0, 0x100
/* 00D18C 8011B4EC 11E00004 */  beqz        $t7, .L8011B500
/* 00D190 8011B4F0 305900F0 */   andi       $t9, $v0, 0xf0
/* 00D194 8011B4F4 24630008 */  addiu       $v1, $v1, 0x8
/* 00D198 8011B4F8 3078FFFF */  andi        $t8, $v1, 0xffff
/* 00D19C 8011B4FC 03001825 */  move        $v1, $t8
.L8011B500:
/* 00D1A0 8011B500 1320000B */  beqz        $t9, .L8011B530
/* 00D1A4 8011B504 00025880 */   sll        $t3, $v0, 2
/* 00D1A8 8011B508 30480800 */  andi        $t0, $v0, 0x800
/* 00D1AC 8011B50C 51000006 */  beql        $t0, $zero, .L8011B528
/* 00D1B0 8011B510 24630004 */   addiu      $v1, $v1, 0x4
/* 00D1B4 8011B514 24630002 */  addiu       $v1, $v1, 0x2
/* 00D1B8 8011B518 3069FFFF */  andi        $t1, $v1, 0xffff
/* 00D1BC 8011B51C 10000004 */  b           .L8011B530
/* 00D1C0 8011B520 01201825 */   move       $v1, $t1
/* 00D1C4 8011B524 24630004 */  addiu       $v1, $v1, 0x4
.L8011B528:
/* 00D1C8 8011B528 306AFFFF */  andi        $t2, $v1, 0xffff
/* 00D1CC 8011B52C 01401825 */  move        $v1, $t2
.L8011B530:
/* 00D1D0 8011B530 05610004 */  bgez        $t3, .L8011B544
/* 00D1D4 8011B534 30440800 */   andi       $a0, $v0, 0x800
/* 00D1D8 8011B538 24630020 */  addiu       $v1, $v1, 0x20
/* 00D1DC 8011B53C 306CFFFF */  andi        $t4, $v1, 0xffff
/* 00D1E0 8011B540 01801825 */  move        $v1, $t4
.L8011B544:
/* 00D1E4 8011B544 304D0400 */  andi        $t5, $v0, 0x400
/* 00D1E8 8011B548 11A00004 */  beqz        $t5, .L8011B55C
/* 00D1EC 8011B54C 00000000 */   nop
/* 00D1F0 8011B550 24630001 */  addiu       $v1, $v1, 0x1
/* 00D1F4 8011B554 306EFFFF */  andi        $t6, $v1, 0xffff
/* 00D1F8 8011B558 01C01825 */  move        $v1, $t6
.L8011B55C:
/* 00D1FC 8011B55C 50800005 */  beql        $a0, $zero, .L8011B574
/* 00D200 8011B560 00601025 */   move       $v0, $v1
/* 00D204 8011B564 24630040 */  addiu       $v1, $v1, 0x40
/* 00D208 8011B568 306FFFFF */  andi        $t7, $v1, 0xffff
/* 00D20C 8011B56C 01E01825 */  move        $v1, $t7
.L8011B570:
/* 00D210 8011B570 00601025 */  move        $v0, $v1
.L8011B574:
/* 00D214 8011B574 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00D218 8011B578 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00D21C 8011B57C 03E00008 */  jr          $ra
/* 00D220 8011B580 00000000 */   nop

glabel func_8011B584 # 45
/* 00D224 8011B584 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00D228 8011B588 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00D22C 8011B58C 0C04701F */  jal         func_8011C07C
/* 00D230 8011B590 AFA5001C */   sw         $a1, 0x1c($sp)
/* 00D234 8011B594 14400004 */  bnez        $v0, .L8011B5A8
/* 00D238 8011B598 8FA3001C */   lw         $v1, 0x1c($sp)
/* 00D23C 8011B59C 44800000 */  mtc1        $zero, $f0
/* 00D240 8011B5A0 1000000B */  b           .L8011B5D0
/* 00D244 8011B5A4 8FBF0014 */   lw         $ra, 0x14($sp)
.L8011B5A8:
/* 00D248 8011B5A8 28610003 */  slti        $at, $v1, 0x3
/* 00D24C 8011B5AC 10200004 */  beqz        $at, .L8011B5C0
/* 00D250 8011B5B0 00037080 */   sll        $t6, $v1, 2
/* 00D254 8011B5B4 004E7821 */  addu        $t7, $v0, $t6
/* 00D258 8011B5B8 10000004 */  b           .L8011B5CC
/* 00D25C 8011B5BC C5E00044 */   lwc1       $f0, 0x44($t7)
.L8011B5C0:
/* 00D260 8011B5C0 3C01C780 */  lui         $at, 0xc780
/* 00D264 8011B5C4 44810000 */  mtc1        $at, $f0
/* 00D268 8011B5C8 00000000 */  nop
.L8011B5CC:
/* 00D26C 8011B5CC 8FBF0014 */  lw          $ra, 0x14($sp)
.L8011B5D0:
/* 00D270 8011B5D0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00D274 8011B5D4 03E00008 */  jr          $ra
/* 00D278 8011B5D8 00000000 */   nop

glabel func_8011B5DC # 46
/* 00D27C 8011B5DC 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 00D280 8011B5E0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00D284 8011B5E4 AFA40038 */  sw          $a0, 0x38($sp)
/* 00D288 8011B5E8 AFA5003C */  sw          $a1, 0x3c($sp)
/* 00D28C 8011B5EC AFA60040 */  sw          $a2, 0x40($sp)
/* 00D290 8011B5F0 AFA70044 */  sw          $a3, 0x44($sp)
/* 00D294 8011B5F4 8C820054 */  lw          $v0, 0x54($a0)
/* 00D298 8011B5F8 C7A60040 */  lwc1        $f6, 0x40($sp)
/* 00D29C 8011B5FC C4440010 */  lwc1        $f4, 0x10($v0)
/* 00D2A0 8011B600 AFA20034 */  sw          $v0, 0x34($sp)
/* 00D2A4 8011B604 0C00EB2F */  jal         func_8003ACBC
/* 00D2A8 8011B608 46062300 */   add.s      $f12, $f4, $f6
/* 00D2AC 8011B60C C7A8003C */  lwc1        $f8, 0x3c($sp)
/* 00D2B0 8011B610 8FA30038 */  lw          $v1, 0x38($sp)
/* 00D2B4 8011B614 8FA20034 */  lw          $v0, 0x34($sp)
/* 00D2B8 8011B618 46080282 */  mul.s       $f10, $f0, $f8
/* 00D2BC 8011B61C C4700044 */  lwc1        $f16, 0x44($v1)
/* 00D2C0 8011B620 C7A80040 */  lwc1        $f8, 0x40($sp)
/* 00D2C4 8011B624 46105480 */  add.s       $f18, $f10, $f16
/* 00D2C8 8011B628 E7B20028 */  swc1        $f18, 0x28($sp)
/* 00D2CC 8011B62C C4640048 */  lwc1        $f4, 0x48($v1)
/* 00D2D0 8011B630 E7A4002C */  swc1        $f4, 0x2c($sp)
/* 00D2D4 8011B634 C4460010 */  lwc1        $f6, 0x10($v0)
/* 00D2D8 8011B638 0C00EB6C */  jal         func_8003ADB0
/* 00D2DC 8011B63C 46083300 */   add.s      $f12, $f6, $f8
/* 00D2E0 8011B640 C7AA003C */  lwc1        $f10, 0x3c($sp)
/* 00D2E4 8011B644 8FAF0038 */  lw          $t7, 0x38($sp)
/* 00D2E8 8011B648 C7AC0028 */  lwc1        $f12, 0x28($sp)
/* 00D2EC 8011B64C 460A0402 */  mul.s       $f16, $f0, $f10
/* 00D2F0 8011B650 C5F2004C */  lwc1        $f18, 0x4c($t7)
/* 00D2F4 8011B654 C7AE002C */  lwc1        $f14, 0x2c($sp)
/* 00D2F8 8011B658 00003825 */  move        $a3, $zero
/* 00D2FC 8011B65C E7AC001C */  swc1        $f12, 0x1c($sp)
/* 00D300 8011B660 46128100 */  add.s       $f4, $f16, $f18
/* 00D304 8011B664 44062000 */  mfc1        $a2, $f4
/* 00D308 8011B668 0C043D2C */  jal         func_8010F4B0
/* 00D30C 8011B66C E7A40030 */   swc1       $f4, 0x30($sp)
/* 00D310 8011B670 8FB80044 */  lw          $t8, 0x44($sp)
/* 00D314 8011B674 C7A80030 */  lwc1        $f8, 0x30($sp)
/* 00D318 8011B678 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00D31C 8011B67C 0018C880 */  sll         $t9, $t8, 2
/* 00D320 8011B680 E7A00020 */  swc1        $f0, 0x20($sp)
/* 00D324 8011B684 03B94021 */  addu        $t0, $sp, $t9
/* 00D328 8011B688 E7A80024 */  swc1        $f8, 0x24($sp)
/* 00D32C 8011B68C C500001C */  lwc1        $f0, 0x1c($t0)
/* 00D330 8011B690 03E00008 */  jr          $ra
/* 00D334 8011B694 27BD0038 */   addiu      $sp, $sp, 0x38

glabel func_8011B698 # 47
/* 00D338 8011B698 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00D33C 8011B69C AFBF0014 */  sw          $ra, 0x14($sp)
/* 00D340 8011B6A0 AFA5002C */  sw          $a1, 0x2c($sp)
/* 00D344 8011B6A4 AFA60030 */  sw          $a2, 0x30($sp)
/* 00D348 8011B6A8 8C820054 */  lw          $v0, 0x54($a0)
/* 00D34C 8011B6AC C44C0010 */  lwc1        $f12, 0x10($v0)
/* 00D350 8011B6B0 AFA40028 */  sw          $a0, 0x28($sp)
/* 00D354 8011B6B4 0C00EB2F */  jal         func_8003ACBC
/* 00D358 8011B6B8 AFA20024 */   sw         $v0, 0x24($sp)
/* 00D35C 8011B6BC 8FA20024 */  lw          $v0, 0x24($sp)
/* 00D360 8011B6C0 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 00D364 8011B6C4 0C00EB6C */  jal         func_8003ADB0
/* 00D368 8011B6C8 C44C0010 */   lwc1       $f12, 0x10($v0)
/* 00D36C 8011B6CC C7A2002C */  lwc1        $f2, 0x2c($sp)
/* 00D370 8011B6D0 C7A4001C */  lwc1        $f4, 0x1c($sp)
/* 00D374 8011B6D4 8FA40028 */  lw          $a0, 0x28($sp)
/* 00D378 8011B6D8 C7B00030 */  lwc1        $f16, 0x30($sp)
/* 00D37C 8011B6DC 46022182 */  mul.s       $f6, $f4, $f2
/* 00D380 8011B6E0 C4880044 */  lwc1        $f8, 0x44($a0)
/* 00D384 8011B6E4 C484004C */  lwc1        $f4, 0x4c($a0)
/* 00D388 8011B6E8 46020482 */  mul.s       $f18, $f0, $f2
/* 00D38C 8011B6EC C48A0048 */  lwc1        $f10, 0x48($a0)
/* 00D390 8011B6F0 00003825 */  move        $a3, $zero
/* 00D394 8011B6F4 46083300 */  add.s       $f12, $f6, $f8
/* 00D398 8011B6F8 46049180 */  add.s       $f6, $f18, $f4
/* 00D39C 8011B6FC 46105380 */  add.s       $f14, $f10, $f16
/* 00D3A0 8011B700 44063000 */  mfc1        $a2, $f6
/* 00D3A4 8011B704 0C043D75 */  jal         func_8010F5D4
/* 00D3A8 8011B708 00000000 */   nop
/* 00D3AC 8011B70C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00D3B0 8011B710 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00D3B4 8011B714 03E00008 */  jr          $ra
/* 00D3B8 8011B718 00000000 */   nop

glabel func_8011B71C # 48
/* 00D3BC 8011B71C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00D3C0 8011B720 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00D3C4 8011B724 0C001A23 */  jal         func_8000688C
/* 00D3C8 8011B728 00000000 */   nop
/* 00D3CC 8011B72C 14400003 */  bnez        $v0, .L8011B73C
/* 00D3D0 8011B730 00402025 */   move       $a0, $v0
/* 00D3D4 8011B734 10000003 */  b           .L8011B744
/* 00D3D8 8011B738 00001025 */   move       $v0, $zero
.L8011B73C:
/* 00D3DC 8011B73C 8C830054 */  lw          $v1, 0x54($a0)
/* 00D3E0 8011B740 90620008 */  lbu         $v0, 0x8($v1)
.L8011B744:
/* 00D3E4 8011B744 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00D3E8 8011B748 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00D3EC 8011B74C 03E00008 */  jr          $ra
/* 00D3F0 8011B750 00000000 */   nop

glabel func_8011B754 # 49
/* 00D3F4 8011B754 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00D3F8 8011B758 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00D3FC 8011B75C 0C001A23 */  jal         func_8000688C
/* 00D400 8011B760 AFA5001C */   sw         $a1, 0x1c($sp)
/* 00D404 8011B764 14400004 */  bnez        $v0, .L8011B778
/* 00D408 8011B768 8FA4001C */   lw         $a0, 0x1c($sp)
/* 00D40C 8011B76C 44800000 */  mtc1        $zero, $f0
/* 00D410 8011B770 10000010 */  b           .L8011B7B4
/* 00D414 8011B774 8FBF0014 */   lw         $ra, 0x14($sp)
.L8011B778:
/* 00D418 8011B778 944E0034 */  lhu         $t6, 0x34($v0)
/* 00D41C 8011B77C 240100AF */  addiu       $at, $zero, 0xaf
/* 00D420 8011B780 15C10008 */  bne         $t6, $at, .L8011B7A4
/* 00D424 8011B784 28810003 */   slti       $at, $a0, 0x3
/* 00D428 8011B788 10200006 */  beqz        $at, .L8011B7A4
/* 00D42C 8011B78C 8C430054 */   lw         $v1, 0x54($v0)
/* 00D430 8011B790 8C6F000C */  lw          $t7, 0xc($v1)
/* 00D434 8011B794 0004C080 */  sll         $t8, $a0, 2
/* 00D438 8011B798 01F8C821 */  addu        $t9, $t7, $t8
/* 00D43C 8011B79C 10000004 */  b           .L8011B7B0
/* 00D440 8011B7A0 C7200000 */   lwc1       $f0, 0x0($t9)
.L8011B7A4:
/* 00D444 8011B7A4 3C01C780 */  lui         $at, 0xc780
/* 00D448 8011B7A8 44810000 */  mtc1        $at, $f0
/* 00D44C 8011B7AC 00000000 */  nop
.L8011B7B0:
/* 00D450 8011B7B0 8FBF0014 */  lw          $ra, 0x14($sp)
.L8011B7B4:
/* 00D454 8011B7B4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00D458 8011B7B8 03E00008 */  jr          $ra
/* 00D45C 8011B7BC 00000000 */   nop

glabel func_8011B7C0 # 50
/* 00D460 8011B7C0 27BDFF88 */  addiu       $sp, $sp, -0x78
/* 00D464 8011B7C4 AFB20030 */  sw          $s2, 0x30($sp)
/* 00D468 8011B7C8 00809025 */  move        $s2, $a0
/* 00D46C 8011B7CC AFBF003C */  sw          $ra, 0x3c($sp)
/* 00D470 8011B7D0 AFB40038 */  sw          $s4, 0x38($sp)
/* 00D474 8011B7D4 AFB30034 */  sw          $s3, 0x34($sp)
/* 00D478 8011B7D8 AFB1002C */  sw          $s1, 0x2c($sp)
/* 00D47C 8011B7DC AFB00028 */  sw          $s0, 0x28($sp)
/* 00D480 8011B7E0 F7B60020 */  sdc1        $f22, 0x20($sp)
/* 00D484 8011B7E4 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 00D488 8011B7E8 AFA60080 */  sw          $a2, 0x80($sp)
/* 00D48C 8011B7EC 0C001A23 */  jal         func_8000688C
/* 00D490 8011B7F0 00A02025 */   move       $a0, $a1
/* 00D494 8011B7F4 54400005 */  bnel        $v0, $zero, .L8011B80C
/* 00D498 8011B7F8 944E0034 */   lhu        $t6, 0x34($v0)
/* 00D49C 8011B7FC 44800000 */  mtc1        $zero, $f0
/* 00D4A0 8011B800 10000055 */  b           .L8011B958
/* 00D4A4 8011B804 8FBF003C */   lw         $ra, 0x3c($sp)
/* 00D4A8 8011B808 944E0034 */  lhu         $t6, 0x34($v0)
.L8011B80C:
/* 00D4AC 8011B80C 240100AF */  addiu       $at, $zero, 0xaf
/* 00D4B0 8011B810 00009825 */  move        $s3, $zero
/* 00D4B4 8011B814 15C1004C */  bne         $t6, $at, .L8011B948
/* 00D4B8 8011B818 00008025 */   move       $s0, $zero
/* 00D4BC 8011B81C 3C014040 */  lui         $at, 0x4040
/* 00D4C0 8011B820 4481B000 */  mtc1        $at, $f22
/* 00D4C4 8011B824 4480A000 */  mtc1        $zero, $f20
/* 00D4C8 8011B828 8C510054 */  lw          $s1, 0x54($v0)
/* 00D4CC 8011B82C 27B40060 */  addiu       $s4, $sp, 0x60
/* 00D4D0 8011B830 8E2F000C */  lw          $t7, 0xc($s1)
.L8011B834:
/* 00D4D4 8011B834 00003825 */  move        $a3, $zero
/* 00D4D8 8011B838 01F0C021 */  addu        $t8, $t7, $s0
/* 00D4DC 8011B83C C7040000 */  lwc1        $f4, 0x0($t8)
/* 00D4E0 8011B840 E7A40054 */  swc1        $f4, 0x54($sp)
/* 00D4E4 8011B844 8E39000C */  lw          $t9, 0xc($s1)
/* 00D4E8 8011B848 C7AC0054 */  lwc1        $f12, 0x54($sp)
/* 00D4EC 8011B84C 03304021 */  addu        $t0, $t9, $s0
/* 00D4F0 8011B850 C5060004 */  lwc1        $f6, 0x4($t0)
/* 00D4F4 8011B854 E7A60058 */  swc1        $f6, 0x58($sp)
/* 00D4F8 8011B858 8E29000C */  lw          $t1, 0xc($s1)
/* 00D4FC 8011B85C C7AE0058 */  lwc1        $f14, 0x58($sp)
/* 00D500 8011B860 01305021 */  addu        $t2, $t1, $s0
/* 00D504 8011B864 C5480008 */  lwc1        $f8, 0x8($t2)
/* 00D508 8011B868 E7A8005C */  swc1        $f8, 0x5c($sp)
/* 00D50C 8011B86C C64A0044 */  lwc1        $f10, 0x44($s2)
/* 00D510 8011B870 8FA6005C */  lw          $a2, 0x5c($sp)
/* 00D514 8011B874 E7AA0048 */  swc1        $f10, 0x48($sp)
/* 00D518 8011B878 C6500048 */  lwc1        $f16, 0x48($s2)
/* 00D51C 8011B87C E7B0004C */  swc1        $f16, 0x4c($sp)
/* 00D520 8011B880 C652004C */  lwc1        $f18, 0x4c($s2)
/* 00D524 8011B884 0C043D2C */  jal         func_8010F4B0
/* 00D528 8011B888 E7B20050 */   swc1       $f18, 0x50($sp)
/* 00D52C 8011B88C E7A00058 */  swc1        $f0, 0x58($sp)
/* 00D530 8011B890 C7AC0048 */  lwc1        $f12, 0x48($sp)
/* 00D534 8011B894 C7AE004C */  lwc1        $f14, 0x4c($sp)
/* 00D538 8011B898 8FA60050 */  lw          $a2, 0x50($sp)
/* 00D53C 8011B89C 0C043D2C */  jal         func_8010F4B0
/* 00D540 8011B8A0 00003825 */   move       $a3, $zero
/* 00D544 8011B8A4 C7A40054 */  lwc1        $f4, 0x54($sp)
/* 00D548 8011B8A8 C7A60048 */  lwc1        $f6, 0x48($sp)
/* 00D54C 8011B8AC E7A0004C */  swc1        $f0, 0x4c($sp)
/* 00D550 8011B8B0 C7B0004C */  lwc1        $f16, 0x4c($sp)
/* 00D554 8011B8B4 46062201 */  sub.s       $f8, $f4, $f6
/* 00D558 8011B8B8 C7A60050 */  lwc1        $f6, 0x50($sp)
/* 00D55C 8011B8BC C7A4005C */  lwc1        $f4, 0x5c($sp)
/* 00D560 8011B8C0 C7AA0058 */  lwc1        $f10, 0x58($sp)
/* 00D564 8011B8C4 E7A80060 */  swc1        $f8, 0x60($sp)
/* 00D568 8011B8C8 46062201 */  sub.s       $f8, $f4, $f6
/* 00D56C 8011B8CC 2610000C */  addiu       $s0, $s0, 0xc
/* 00D570 8011B8D0 26730001 */  addiu       $s3, $s3, 0x1
/* 00D574 8011B8D4 46105481 */  sub.s       $f18, $f10, $f16
/* 00D578 8011B8D8 E7A80068 */  swc1        $f8, 0x68($sp)
/* 00D57C 8011B8DC E7B20064 */  swc1        $f18, 0x64($sp)
/* 00D580 8011B8E0 8E2B000C */  lw          $t3, 0xc($s1)
/* 00D584 8011B8E4 01706021 */  addu        $t4, $t3, $s0
/* 00D588 8011B8E8 C58A0000 */  lwc1        $f10, 0x0($t4)
/* 00D58C 8011B8EC 4614503C */  c.lt.s      $f10, $f20
/* 00D590 8011B8F0 00000000 */  nop
/* 00D594 8011B8F4 45030008 */  bc1tl       .L8011B918
/* 00D598 8011B8F8 8FA20080 */   lw         $v0, 0x80($sp)
/* 00D59C 8011B8FC 0C00E3AC */  jal         func_80038EB0
/* 00D5A0 8011B900 02802025 */   move       $a0, $s4
/* 00D5A4 8011B904 4616003E */  c.le.s      $f0, $f22
/* 00D5A8 8011B908 00000000 */  nop
/* 00D5AC 8011B90C 4502FFC9 */  bc1fl       .L8011B834
/* 00D5B0 8011B910 8E2F000C */   lw         $t7, 0xc($s1)
/* 00D5B4 8011B914 8FA20080 */  lw          $v0, 0x80($sp)
.L8011B918:
/* 00D5B8 8011B918 00137080 */  sll         $t6, $s3, 2
/* 00D5BC 8011B91C 01D37023 */  subu        $t6, $t6, $s3
/* 00D5C0 8011B920 28410003 */  slti        $at, $v0, 0x3
/* 00D5C4 8011B924 50200009 */  beql        $at, $zero, .L8011B94C
/* 00D5C8 8011B928 3C01C780 */   lui        $at, 0xc780
/* 00D5CC 8011B92C 8E2D000C */  lw          $t5, 0xc($s1)
/* 00D5D0 8011B930 000E7080 */  sll         $t6, $t6, 2
/* 00D5D4 8011B934 0002C080 */  sll         $t8, $v0, 2
/* 00D5D8 8011B938 01AE7821 */  addu        $t7, $t5, $t6
/* 00D5DC 8011B93C 01F8C821 */  addu        $t9, $t7, $t8
/* 00D5E0 8011B940 10000004 */  b           .L8011B954
/* 00D5E4 8011B944 C7200000 */   lwc1       $f0, 0x0($t9)
.L8011B948:
/* 00D5E8 8011B948 3C01C780 */  lui         $at, 0xc780
.L8011B94C:
/* 00D5EC 8011B94C 44810000 */  mtc1        $at, $f0
/* 00D5F0 8011B950 00000000 */  nop
.L8011B954:
/* 00D5F4 8011B954 8FBF003C */  lw          $ra, 0x3c($sp)
.L8011B958:
/* 00D5F8 8011B958 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 00D5FC 8011B95C D7B60020 */  ldc1        $f22, 0x20($sp)
/* 00D600 8011B960 8FB00028 */  lw          $s0, 0x28($sp)
/* 00D604 8011B964 8FB1002C */  lw          $s1, 0x2c($sp)
/* 00D608 8011B968 8FB20030 */  lw          $s2, 0x30($sp)
/* 00D60C 8011B96C 8FB30034 */  lw          $s3, 0x34($sp)
/* 00D610 8011B970 8FB40038 */  lw          $s4, 0x38($sp)
/* 00D614 8011B974 03E00008 */  jr          $ra
/* 00D618 8011B978 27BD0078 */   addiu      $sp, $sp, 0x78

glabel func_8011B97C # 51
/* 00D61C 8011B97C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00D620 8011B980 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00D624 8011B984 0C001A23 */  jal         func_8000688C
/* 00D628 8011B988 AFA5001C */   sw         $a1, 0x1c($sp)
/* 00D62C 8011B98C 14400004 */  bnez        $v0, .L8011B9A0
/* 00D630 8011B990 8FA4001C */   lw         $a0, 0x1c($sp)
/* 00D634 8011B994 44800000 */  mtc1        $zero, $f0
/* 00D638 8011B998 1000000C */  b           .L8011B9CC
/* 00D63C 8011B99C 8FBF0014 */   lw         $ra, 0x14($sp)
.L8011B9A0:
/* 00D640 8011B9A0 28810003 */  slti        $at, $a0, 0x3
/* 00D644 8011B9A4 10200005 */  beqz        $at, .L8011B9BC
/* 00D648 8011B9A8 8C430054 */   lw         $v1, 0x54($v0)
/* 00D64C 8011B9AC 00047080 */  sll         $t6, $a0, 2
/* 00D650 8011B9B0 006E7821 */  addu        $t7, $v1, $t6
/* 00D654 8011B9B4 10000004 */  b           .L8011B9C8
/* 00D658 8011B9B8 C5E00000 */   lwc1       $f0, 0x0($t7)
.L8011B9BC:
/* 00D65C 8011B9BC 3C01C780 */  lui         $at, 0xc780
/* 00D660 8011B9C0 44810000 */  mtc1        $at, $f0
/* 00D664 8011B9C4 00000000 */  nop
.L8011B9C8:
/* 00D668 8011B9C8 8FBF0014 */  lw          $ra, 0x14($sp)
.L8011B9CC:
/* 00D66C 8011B9CC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00D670 8011B9D0 03E00008 */  jr          $ra
/* 00D674 8011B9D4 00000000 */   nop

glabel func_8011B9D8 # 52
/* 00D678 8011B9D8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00D67C 8011B9DC AFBF0014 */  sw          $ra, 0x14($sp)
/* 00D680 8011B9E0 0C001A23 */  jal         func_8000688C
/* 00D684 8011B9E4 AFA5001C */   sw         $a1, 0x1c($sp)
/* 00D688 8011B9E8 14400004 */  bnez        $v0, .L8011B9FC
/* 00D68C 8011B9EC 8FA4001C */   lw         $a0, 0x1c($sp)
/* 00D690 8011B9F0 44800000 */  mtc1        $zero, $f0
/* 00D694 8011B9F4 1000000C */  b           .L8011BA28
/* 00D698 8011B9F8 8FBF0014 */   lw         $ra, 0x14($sp)
.L8011B9FC:
/* 00D69C 8011B9FC 28810003 */  slti        $at, $a0, 0x3
/* 00D6A0 8011BA00 10200005 */  beqz        $at, .L8011BA18
/* 00D6A4 8011BA04 8C430054 */   lw         $v1, 0x54($v0)
/* 00D6A8 8011BA08 00047080 */  sll         $t6, $a0, 2
/* 00D6AC 8011BA0C 006E7821 */  addu        $t7, $v1, $t6
/* 00D6B0 8011BA10 10000004 */  b           .L8011BA24
/* 00D6B4 8011BA14 C5E0000C */   lwc1       $f0, 0xc($t7)
.L8011BA18:
/* 00D6B8 8011BA18 3C01C780 */  lui         $at, 0xc780
/* 00D6BC 8011BA1C 44810000 */  mtc1        $at, $f0
/* 00D6C0 8011BA20 00000000 */  nop
.L8011BA24:
/* 00D6C4 8011BA24 8FBF0014 */  lw          $ra, 0x14($sp)
.L8011BA28:
/* 00D6C8 8011BA28 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00D6CC 8011BA2C 03E00008 */  jr          $ra
/* 00D6D0 8011BA30 00000000 */   nop

glabel func_8011BA34 # 53
/* 00D6D4 8011BA34 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00D6D8 8011BA38 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00D6DC 8011BA3C 0C001A23 */  jal         func_8000688C
/* 00D6E0 8011BA40 00000000 */   nop
/* 00D6E4 8011BA44 14400003 */  bnez        $v0, .L8011BA54
/* 00D6E8 8011BA48 00402025 */   move       $a0, $v0
/* 00D6EC 8011BA4C 10000004 */  b           .L8011BA60
/* 00D6F0 8011BA50 00001025 */   move       $v0, $zero
.L8011BA54:
/* 00D6F4 8011BA54 8C830054 */  lw          $v1, 0x54($a0)
/* 00D6F8 8011BA58 8C6E0018 */  lw          $t6, 0x18($v1)
/* 00D6FC 8011BA5C 8DC20038 */  lw          $v0, 0x38($t6)
.L8011BA60:
/* 00D700 8011BA60 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00D704 8011BA64 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00D708 8011BA68 03E00008 */  jr          $ra
/* 00D70C 8011BA6C 00000000 */   nop

glabel func_8011BA70 # 54
/* 00D710 8011BA70 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00D714 8011BA74 AFA40030 */  sw          $a0, 0x30($sp)
/* 00D718 8011BA78 3C04800F */  lui         $a0, %hi(D_800F3E20)
/* 00D71C 8011BA7C 24843E20 */  addiu       $a0, $a0, %lo(D_800F3E20)
/* 00D720 8011BA80 C484000C */  lwc1        $f4, 0xc($a0)
/* 00D724 8011BA84 C4860018 */  lwc1        $f6, 0x18($a0)
/* 00D728 8011BA88 44866000 */  mtc1        $a2, $f12
/* 00D72C 8011BA8C 44877000 */  mtc1        $a3, $f14
/* 00D730 8011BA90 46062200 */  add.s       $f8, $f4, $f6
/* 00D734 8011BA94 AFA50034 */  sw          $a1, 0x34($sp)
/* 00D738 8011BA98 8FAF0034 */  lw          $t7, 0x34($sp)
/* 00D73C 8011BA9C 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00D740 8011BAA0 8FB80040 */  lw          $t8, 0x40($sp)
/* 00D744 8011BAA4 8FB90044 */  lw          $t9, 0x44($sp)
/* 00D748 8011BAA8 AFBF002C */  sw          $ra, 0x2c($sp)
/* 00D74C 8011BAAC 44074000 */  mfc1        $a3, $f8
/* 00D750 8011BAB0 44056000 */  mfc1        $a1, $f12
/* 00D754 8011BAB4 24060000 */  addiu       $a2, $zero, 0x0
/* 00D758 8011BAB8 E7AE0010 */  swc1        $f14, 0x10($sp)
/* 00D75C 8011BABC AFAF0018 */  sw          $t7, 0x18($sp)
/* 00D760 8011BAC0 AFAE0014 */  sw          $t6, 0x14($sp)
/* 00D764 8011BAC4 AFB8001C */  sw          $t8, 0x1c($sp)
/* 00D768 8011BAC8 0C0459D8 */  jal         func_80116760
/* 00D76C 8011BACC AFB90020 */   sw         $t9, 0x20($sp)
/* 00D770 8011BAD0 14400003 */  bnez        $v0, .L8011BAE0
/* 00D774 8011BAD4 00401825 */   move       $v1, $v0
/* 00D778 8011BAD8 10000002 */  b           .L8011BAE4
/* 00D77C 8011BADC 00001025 */   move       $v0, $zero
.L8011BAE0:
/* 00D780 8011BAE0 8C620038 */  lw          $v0, 0x38($v1)
.L8011BAE4:
/* 00D784 8011BAE4 8FBF002C */  lw          $ra, 0x2c($sp)
/* 00D788 8011BAE8 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00D78C 8011BAEC 03E00008 */  jr          $ra
/* 00D790 8011BAF0 00000000 */   nop

glabel func_8011BAF4 # 55
/* 00D794 8011BAF4 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 00D798 8011BAF8 AFA50044 */  sw          $a1, 0x44($sp)
/* 00D79C 8011BAFC 3C05800F */  lui         $a1, %hi(D_800F3E20)
/* 00D7A0 8011BB00 24A53E20 */  addiu       $a1, $a1, %lo(D_800F3E20)
/* 00D7A4 8011BB04 C4A4000C */  lwc1        $f4, 0xc($a1)
/* 00D7A8 8011BB08 C4A60018 */  lwc1        $f6, 0x18($a1)
/* 00D7AC 8011BB0C 44876000 */  mtc1        $a3, $f12
/* 00D7B0 8011BB10 44800000 */  mtc1        $zero, $f0
/* 00D7B4 8011BB14 46062200 */  add.s       $f8, $f4, $f6
/* 00D7B8 8011BB18 AFA60048 */  sw          $a2, 0x48($sp)
/* 00D7BC 8011BB1C 8FAF0048 */  lw          $t7, 0x48($sp)
/* 00D7C0 8011BB20 8FAE0044 */  lw          $t6, 0x44($sp)
/* 00D7C4 8011BB24 C7AA0050 */  lwc1        $f10, 0x50($sp)
/* 00D7C8 8011BB28 AFBF0024 */  sw          $ra, 0x24($sp)
/* 00D7CC 8011BB2C 44066000 */  mfc1        $a2, $f12
/* 00D7D0 8011BB30 E7A80030 */  swc1        $f8, 0x30($sp)
/* 00D7D4 8011BB34 27A7002C */  addiu       $a3, $sp, 0x2c
/* 00D7D8 8011BB38 E7A0002C */  swc1        $f0, 0x2c($sp)
/* 00D7DC 8011BB3C E7A00034 */  swc1        $f0, 0x34($sp)
/* 00D7E0 8011BB40 AFAF0018 */  sw          $t7, 0x18($sp)
/* 00D7E4 8011BB44 AFAE0014 */  sw          $t6, 0x14($sp)
/* 00D7E8 8011BB48 0C009414 */  jal         func_80025050
/* 00D7EC 8011BB4C E7AA0010 */   swc1       $f10, 0x10($sp)
/* 00D7F0 8011BB50 14400003 */  bnez        $v0, .L8011BB60
/* 00D7F4 8011BB54 00401825 */   move       $v1, $v0
/* 00D7F8 8011BB58 10000002 */  b           .L8011BB64
/* 00D7FC 8011BB5C 00001025 */   move       $v0, $zero
.L8011BB60:
/* 00D800 8011BB60 8C620038 */  lw          $v0, 0x38($v1)
.L8011BB64:
/* 00D804 8011BB64 8FBF0024 */  lw          $ra, 0x24($sp)
/* 00D808 8011BB68 27BD0040 */  addiu       $sp, $sp, 0x40
/* 00D80C 8011BB6C 03E00008 */  jr          $ra
/* 00D810 8011BB70 00000000 */   nop

glabel func_8011BB74 # 56
/* 00D814 8011BB74 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 00D818 8011BB78 AFA50044 */  sw          $a1, 0x44($sp)
/* 00D81C 8011BB7C 3C05800F */  lui         $a1, %hi(D_800F3E20)
/* 00D820 8011BB80 24A53E20 */  addiu       $a1, $a1, %lo(D_800F3E20)
/* 00D824 8011BB84 C4A4000C */  lwc1        $f4, 0xc($a1)
/* 00D828 8011BB88 C4A60018 */  lwc1        $f6, 0x18($a1)
/* 00D82C 8011BB8C 44876000 */  mtc1        $a3, $f12
/* 00D830 8011BB90 44800000 */  mtc1        $zero, $f0
/* 00D834 8011BB94 46062200 */  add.s       $f8, $f4, $f6
/* 00D838 8011BB98 AFA60048 */  sw          $a2, 0x48($sp)
/* 00D83C 8011BB9C 8FAF0048 */  lw          $t7, 0x48($sp)
/* 00D840 8011BBA0 8FAE0044 */  lw          $t6, 0x44($sp)
/* 00D844 8011BBA4 C7AA0050 */  lwc1        $f10, 0x50($sp)
/* 00D848 8011BBA8 AFBF0024 */  sw          $ra, 0x24($sp)
/* 00D84C 8011BBAC 44066000 */  mfc1        $a2, $f12
/* 00D850 8011BBB0 E7A80030 */  swc1        $f8, 0x30($sp)
/* 00D854 8011BBB4 27A7002C */  addiu       $a3, $sp, 0x2c
/* 00D858 8011BBB8 E7A0002C */  swc1        $f0, 0x2c($sp)
/* 00D85C 8011BBBC E7A00034 */  swc1        $f0, 0x34($sp)
/* 00D860 8011BBC0 AFAF0018 */  sw          $t7, 0x18($sp)
/* 00D864 8011BBC4 AFAE0014 */  sw          $t6, 0x14($sp)
/* 00D868 8011BBC8 0C002233 */  jal         func_800088CC
/* 00D86C 8011BBCC E7AA0010 */   swc1       $f10, 0x10($sp)
/* 00D870 8011BBD0 14400003 */  bnez        $v0, .L8011BBE0
/* 00D874 8011BBD4 00401825 */   move       $v1, $v0
/* 00D878 8011BBD8 10000002 */  b           .L8011BBE4
/* 00D87C 8011BBDC 00001025 */   move       $v0, $zero
.L8011BBE0:
/* 00D880 8011BBE0 8C620038 */  lw          $v0, 0x38($v1)
.L8011BBE4:
/* 00D884 8011BBE4 8FBF0024 */  lw          $ra, 0x24($sp)
/* 00D888 8011BBE8 27BD0040 */  addiu       $sp, $sp, 0x40
/* 00D88C 8011BBEC 03E00008 */  jr          $ra
/* 00D890 8011BBF0 00000000 */   nop

glabel func_8011BBF4 # 57
/* 00D894 8011BBF4 C4A40000 */  lwc1        $f4, 0x0($a1)
/* 00D898 8011BBF8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 00D89C 8011BBFC E5C401EC */  swc1        $f4, 0x1ec($t6)
/* 00D8A0 8011BC00 8C8F0054 */  lw          $t7, 0x54($a0)
/* 00D8A4 8011BC04 C4A60004 */  lwc1        $f6, 0x4($a1)
/* 00D8A8 8011BC08 E5E601F0 */  swc1        $f6, 0x1f0($t7)
/* 00D8AC 8011BC0C 8C980054 */  lw          $t8, 0x54($a0)
/* 00D8B0 8011BC10 C4A80008 */  lwc1        $f8, 0x8($a1)
/* 00D8B4 8011BC14 03E00008 */  jr          $ra
/* 00D8B8 8011BC18 E70801F4 */   swc1       $f8, 0x1f4($t8)

glabel func_8011BC1C # 58
/* 00D8BC 8011BC1C 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 00D8C0 8011BC20 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00D8C4 8011BC24 AFB00018 */  sw          $s0, 0x18($sp)
/* 00D8C8 8011BC28 8C8E0054 */  lw          $t6, 0x54($a0)
/* 00D8CC 8011BC2C 00808025 */  move        $s0, $a0
/* 00D8D0 8011BC30 AFAE002C */  sw          $t6, 0x2c($sp)
/* 00D8D4 8011BC34 C4860044 */  lwc1        $f6, 0x44($a0)
/* 00D8D8 8011BC38 C4A40000 */  lwc1        $f4, 0x0($a1)
/* 00D8DC 8011BC3C 46062201 */  sub.s       $f8, $f4, $f6
/* 00D8E0 8011BC40 E7A80030 */  swc1        $f8, 0x30($sp)
/* 00D8E4 8011BC44 C4900048 */  lwc1        $f16, 0x48($a0)
/* 00D8E8 8011BC48 C4AA0004 */  lwc1        $f10, 0x4($a1)
/* 00D8EC 8011BC4C 46105481 */  sub.s       $f18, $f10, $f16
/* 00D8F0 8011BC50 E7B20034 */  swc1        $f18, 0x34($sp)
/* 00D8F4 8011BC54 C486004C */  lwc1        $f6, 0x4c($a0)
/* 00D8F8 8011BC58 C4A40008 */  lwc1        $f4, 0x8($a1)
/* 00D8FC 8011BC5C 27A40030 */  addiu       $a0, $sp, 0x30
/* 00D900 8011BC60 46062201 */  sub.s       $f8, $f4, $f6
/* 00D904 8011BC64 0C00E428 */  jal         func_800390A0
/* 00D908 8011BC68 E7A80038 */   swc1       $f8, 0x38($sp)
/* 00D90C 8011BC6C 44805000 */  mtc1        $zero, $f10
/* 00D910 8011BC70 3C0F8013 */  lui         $t7, %hi(D_80137EE4)
/* 00D914 8011BC74 460A0032 */  c.eq.s      $f0, $f10
/* 00D918 8011BC78 00000000 */  nop
/* 00D91C 8011BC7C 45000005 */  bc1f        .L8011BC94
/* 00D920 8011BC80 00000000 */   nop
/* 00D924 8011BC84 0C046F90 */  jal         func_8011BE40
/* 00D928 8011BC88 02002025 */   move       $a0, $s0
/* 00D92C 8011BC8C 1000003D */  b           .L8011BD84
/* 00D930 8011BC90 8FBF001C */   lw         $ra, 0x1c($sp)
.L8011BC94:
/* 00D934 8011BC94 8DEF7EE4 */  lw          $t7, %lo(D_80137EE4)($t7)
/* 00D938 8011BC98 3C014080 */  lui         $at, 0x4080
/* 00D93C 8011BC9C 44819000 */  mtc1        $at, $f18
/* 00D940 8011BCA0 C5F00000 */  lwc1        $f16, 0x0($t7)
/* 00D944 8011BCA4 2404003C */  addiu       $a0, $zero, 0x3c
/* 00D948 8011BCA8 46128102 */  mul.s       $f4, $f16, $f18
/* 00D94C 8011BCAC 0C00E500 */  jal         func_80039400
/* 00D950 8011BCB0 E7A40028 */   swc1       $f4, 0x28($sp)
/* 00D954 8011BCB4 2458FFF1 */  addiu       $t8, $v0, -0xf
/* 00D958 8011BCB8 44983000 */  mtc1        $t8, $f6
/* 00D95C 8011BCBC 00000000 */  nop
/* 00D960 8011BCC0 46803320 */  cvt.s.w     $f12, $f6
/* 00D964 8011BCC4 0C00EB6C */  jal         func_8003ADB0
/* 00D968 8011BCC8 E7AC0024 */   swc1       $f12, 0x24($sp)
/* 00D96C 8011BCCC E7A00020 */  swc1        $f0, 0x20($sp)
/* 00D970 8011BCD0 0C00EB2F */  jal         func_8003ACBC
/* 00D974 8011BCD4 C7AC0024 */   lwc1       $f12, 0x24($sp)
/* 00D978 8011BCD8 C7A80030 */  lwc1        $f8, 0x30($sp)
/* 00D97C 8011BCDC C7AA0020 */  lwc1        $f10, 0x20($sp)
/* 00D980 8011BCE0 C7B20038 */  lwc1        $f18, 0x38($sp)
/* 00D984 8011BCE4 C7AC0024 */  lwc1        $f12, 0x24($sp)
/* 00D988 8011BCE8 460A4402 */  mul.s       $f16, $f8, $f10
/* 00D98C 8011BCEC C7A80034 */  lwc1        $f8, 0x34($sp)
/* 00D990 8011BCF0 46120102 */  mul.s       $f4, $f0, $f18
/* 00D994 8011BCF4 E7A80040 */  swc1        $f8, 0x40($sp)
/* 00D998 8011BCF8 46048181 */  sub.s       $f6, $f16, $f4
/* 00D99C 8011BCFC 0C00EB2F */  jal         func_8003ACBC
/* 00D9A0 8011BD00 E7A6003C */   swc1       $f6, 0x3c($sp)
/* 00D9A4 8011BD04 E7A00020 */  swc1        $f0, 0x20($sp)
/* 00D9A8 8011BD08 0C00EB6C */  jal         func_8003ADB0
/* 00D9AC 8011BD0C C7AC0024 */   lwc1       $f12, 0x24($sp)
/* 00D9B0 8011BD10 C7AA0030 */  lwc1        $f10, 0x30($sp)
/* 00D9B4 8011BD14 C7B20020 */  lwc1        $f18, 0x20($sp)
/* 00D9B8 8011BD18 C7A40038 */  lwc1        $f4, 0x38($sp)
/* 00D9BC 8011BD1C C7A20028 */  lwc1        $f2, 0x28($sp)
/* 00D9C0 8011BD20 46125402 */  mul.s       $f16, $f10, $f18
/* 00D9C4 8011BD24 C7AA003C */  lwc1        $f10, 0x3c($sp)
/* 00D9C8 8011BD28 8FA2002C */  lw          $v0, 0x2c($sp)
/* 00D9CC 8011BD2C 46040182 */  mul.s       $f6, $f0, $f4
/* 00D9D0 8011BD30 C7A40040 */  lwc1        $f4, 0x40($sp)
/* 00D9D4 8011BD34 46025482 */  mul.s       $f18, $f10, $f2
/* 00D9D8 8011BD38 46103200 */  add.s       $f8, $f6, $f16
/* 00D9DC 8011BD3C 46022182 */  mul.s       $f6, $f4, $f2
/* 00D9E0 8011BD40 E7B2003C */  swc1        $f18, 0x3c($sp)
/* 00D9E4 8011BD44 46024402 */  mul.s       $f16, $f8, $f2
/* 00D9E8 8011BD48 E7A80044 */  swc1        $f8, 0x44($sp)
/* 00D9EC 8011BD4C E7A60040 */  swc1        $f6, 0x40($sp)
/* 00D9F0 8011BD50 E7B00044 */  swc1        $f16, 0x44($sp)
/* 00D9F4 8011BD54 C60A0044 */  lwc1        $f10, 0x44($s0)
/* 00D9F8 8011BD58 46125101 */  sub.s       $f4, $f10, $f18
/* 00D9FC 8011BD5C E44401EC */  swc1        $f4, 0x1ec($v0)
/* 00DA00 8011BD60 C7A80040 */  lwc1        $f8, 0x40($sp)
/* 00DA04 8011BD64 C6060048 */  lwc1        $f6, 0x48($s0)
/* 00DA08 8011BD68 46083401 */  sub.s       $f16, $f6, $f8
/* 00DA0C 8011BD6C E45001F0 */  swc1        $f16, 0x1f0($v0)
/* 00DA10 8011BD70 C7B20044 */  lwc1        $f18, 0x44($sp)
/* 00DA14 8011BD74 C60A004C */  lwc1        $f10, 0x4c($s0)
/* 00DA18 8011BD78 46125101 */  sub.s       $f4, $f10, $f18
/* 00DA1C 8011BD7C E44401F4 */  swc1        $f4, 0x1f4($v0)
/* 00DA20 8011BD80 8FBF001C */  lw          $ra, 0x1c($sp)
.L8011BD84:
/* 00DA24 8011BD84 8FB00018 */  lw          $s0, 0x18($sp)
/* 00DA28 8011BD88 27BD0048 */  addiu       $sp, $sp, 0x48
/* 00DA2C 8011BD8C 03E00008 */  jr          $ra
/* 00DA30 8011BD90 00000000 */   nop

glabel func_8011BD94 # 59
/* 00DA34 8011BD94 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00DA38 8011BD98 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00DA3C 8011BD9C 8C820054 */  lw          $v0, 0x54($a0)
/* 00DA40 8011BDA0 C4860018 */  lwc1        $f6, 0x18($a0)
/* 00DA44 8011BDA4 C44401EC */  lwc1        $f4, 0x1ec($v0)
/* 00DA48 8011BDA8 46062201 */  sub.s       $f8, $f4, $f6
/* 00DA4C 8011BDAC E7A8001C */  swc1        $f8, 0x1c($sp)
/* 00DA50 8011BDB0 C490001C */  lwc1        $f16, 0x1c($a0)
/* 00DA54 8011BDB4 C44A01F0 */  lwc1        $f10, 0x1f0($v0)
/* 00DA58 8011BDB8 46105481 */  sub.s       $f18, $f10, $f16
/* 00DA5C 8011BDBC E7B20020 */  swc1        $f18, 0x20($sp)
/* 00DA60 8011BDC0 C4860020 */  lwc1        $f6, 0x20($a0)
/* 00DA64 8011BDC4 C44401F4 */  lwc1        $f4, 0x1f4($v0)
/* 00DA68 8011BDC8 27A4001C */  addiu       $a0, $sp, 0x1c
/* 00DA6C 8011BDCC 46062201 */  sub.s       $f8, $f4, $f6
/* 00DA70 8011BDD0 0C00E3B7 */  jal         func_80038EDC
/* 00DA74 8011BDD4 E7A80024 */   swc1       $f8, 0x24($sp)
/* 00DA78 8011BDD8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00DA7C 8011BDDC 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00DA80 8011BDE0 03E00008 */  jr          $ra
/* 00DA84 8011BDE4 00000000 */   nop

glabel func_8011BDE8 # 60
/* 00DA88 8011BDE8 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00DA8C 8011BDEC 3C02800F */  lui         $v0, %hi(D_800F3E20)
/* 00DA90 8011BDF0 24423E20 */  addiu       $v0, $v0, %lo(D_800F3E20)
/* 00DA94 8011BDF4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00DA98 8011BDF8 C4860018 */  lwc1        $f6, 0x18($a0)
/* 00DA9C 8011BDFC C4440000 */  lwc1        $f4, 0x0($v0)
/* 00DAA0 8011BE00 C44A0004 */  lwc1        $f10, 0x4($v0)
/* 00DAA4 8011BE04 46062201 */  sub.s       $f8, $f4, $f6
/* 00DAA8 8011BE08 C4440008 */  lwc1        $f4, 0x8($v0)
/* 00DAAC 8011BE0C E7A80024 */  swc1        $f8, 0x24($sp)
/* 00DAB0 8011BE10 C490001C */  lwc1        $f16, 0x1c($a0)
/* 00DAB4 8011BE14 46105481 */  sub.s       $f18, $f10, $f16
/* 00DAB8 8011BE18 E7B20028 */  swc1        $f18, 0x28($sp)
/* 00DABC 8011BE1C C4860020 */  lwc1        $f6, 0x20($a0)
/* 00DAC0 8011BE20 27A40024 */  addiu       $a0, $sp, 0x24
/* 00DAC4 8011BE24 46062201 */  sub.s       $f8, $f4, $f6
/* 00DAC8 8011BE28 0C00E3B7 */  jal         func_80038EDC
/* 00DACC 8011BE2C E7A8002C */   swc1       $f8, 0x2c($sp)
/* 00DAD0 8011BE30 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00DAD4 8011BE34 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00DAD8 8011BE38 03E00008 */  jr          $ra
/* 00DADC 8011BE3C 00000000 */   nop

glabel func_8011BE40 # 61
/* 00DAE0 8011BE40 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00DAE4 8011BE44 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00DAE8 8011BE48 8C830054 */  lw          $v1, 0x54($a0)
/* 00DAEC 8011BE4C 8C640234 */  lw          $a0, 0x234($v1)
/* 00DAF0 8011BE50 0C001A23 */  jal         func_8000688C
/* 00DAF4 8011BE54 AFA3001C */   sw         $v1, 0x1c($sp)
/* 00DAF8 8011BE58 8FA3001C */  lw          $v1, 0x1c($sp)
/* 00DAFC 8011BE5C C4440044 */  lwc1        $f4, 0x44($v0)
/* 00DB00 8011BE60 E46401EC */  swc1        $f4, 0x1ec($v1)
/* 00DB04 8011BE64 C4460048 */  lwc1        $f6, 0x48($v0)
/* 00DB08 8011BE68 E46601F0 */  swc1        $f6, 0x1f0($v1)
/* 00DB0C 8011BE6C C448004C */  lwc1        $f8, 0x4c($v0)
/* 00DB10 8011BE70 E46801F4 */  swc1        $f8, 0x1f4($v1)
/* 00DB14 8011BE74 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00DB18 8011BE78 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00DB1C 8011BE7C 03E00008 */  jr          $ra
/* 00DB20 8011BE80 00000000 */   nop

glabel func_8011BE84 # 62
/* 00DB24 8011BE84 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00DB28 8011BE88 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00DB2C 8011BE8C 8C820054 */  lw          $v0, 0x54($a0)
/* 00DB30 8011BE90 0C001A23 */  jal         func_8000688C
/* 00DB34 8011BE94 8C44018C */   lw         $a0, 0x18c($v0)
/* 00DB38 8011BE98 14400003 */  bnez        $v0, .L8011BEA8
/* 00DB3C 8011BE9C 00402025 */   move       $a0, $v0
/* 00DB40 8011BEA0 10000003 */  b           .L8011BEB0
/* 00DB44 8011BEA4 00001025 */   move       $v0, $zero
.L8011BEA8:
/* 00DB48 8011BEA8 8C830054 */  lw          $v1, 0x54($a0)
/* 00DB4C 8011BEAC 84620004 */  lh          $v0, 0x4($v1)
.L8011BEB0:
/* 00DB50 8011BEB0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00DB54 8011BEB4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00DB58 8011BEB8 03E00008 */  jr          $ra
/* 00DB5C 8011BEBC 00000000 */   nop

glabel func_8011BEC0 # 63
/* 00DB60 8011BEC0 8C820054 */  lw          $v0, 0x54($a0)
/* 00DB64 8011BEC4 8C4E0000 */  lw          $t6, 0x0($v0)
/* 00DB68 8011BEC8 00001025 */  move        $v0, $zero
/* 00DB6C 8011BECC 000E7980 */  sll         $t7, $t6, 6
/* 00DB70 8011BED0 05E10003 */  bgez        $t7, .L8011BEE0
/* 00DB74 8011BED4 00000000 */   nop
/* 00DB78 8011BED8 03E00008 */  jr          $ra
/* 00DB7C 8011BEDC 24020001 */   addiu      $v0, $zero, 0x1
.L8011BEE0:
/* 00DB80 8011BEE0 03E00008 */  jr          $ra
/* 00DB84 8011BEE4 00000000 */   nop

glabel func_8011BEE8 # 64
/* 00DB88 8011BEE8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00DB8C 8011BEEC AFBF0014 */  sw          $ra, 0x14($sp)
/* 00DB90 8011BEF0 8C820054 */  lw          $v0, 0x54($a0)
/* 00DB94 8011BEF4 0C001A23 */  jal         func_8000688C
/* 00DB98 8011BEF8 8C44018C */   lw         $a0, 0x18c($v0)
/* 00DB9C 8011BEFC 14400003 */  bnez        $v0, .L8011BF0C
/* 00DBA0 8011BF00 00402025 */   move       $a0, $v0
/* 00DBA4 8011BF04 10000007 */  b           .L8011BF24
/* 00DBA8 8011BF08 00001025 */   move       $v0, $zero
.L8011BF0C:
/* 00DBAC 8011BF0C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 00DBB0 8011BF10 24050001 */  addiu       $a1, $zero, 0x1
/* 00DBB4 8011BF14 0C045D9D */  jal         func_80117674
/* 00DBB8 8011BF18 AFAE001C */   sw         $t6, 0x1c($sp)
/* 00DBBC 8011BF1C 8FAF001C */  lw          $t7, 0x1c($sp)
/* 00DBC0 8011BF20 85E20004 */  lh          $v0, 0x4($t7)
.L8011BF24:
/* 00DBC4 8011BF24 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00DBC8 8011BF28 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00DBCC 8011BF2C 03E00008 */  jr          $ra
/* 00DBD0 8011BF30 00000000 */   nop

glabel func_8011BF34 # 65
/* 00DBD4 8011BF34 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00DBD8 8011BF38 44876000 */  mtc1        $a3, $f12
/* 00DBDC 8011BF3C AFA5002C */  sw          $a1, 0x2c($sp)
/* 00DBE0 8011BF40 AFA60030 */  sw          $a2, 0x30($sp)
/* 00DBE4 8011BF44 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00DBE8 8011BF48 8FAE002C */  lw          $t6, 0x2c($sp)
/* 00DBEC 8011BF4C C7A40038 */  lwc1        $f4, 0x38($sp)
/* 00DBF0 8011BF50 AFBF0024 */  sw          $ra, 0x24($sp)
/* 00DBF4 8011BF54 44066000 */  mfc1        $a2, $f12
/* 00DBF8 8011BF58 24850044 */  addiu       $a1, $a0, 0x44
/* 00DBFC 8011BF5C 2487000C */  addiu       $a3, $a0, 0xc
/* 00DC00 8011BF60 AFAF0018 */  sw          $t7, 0x18($sp)
/* 00DC04 8011BF64 AFAE0014 */  sw          $t6, 0x14($sp)
/* 00DC08 8011BF68 0C009414 */  jal         func_80025050
/* 00DC0C 8011BF6C E7A40010 */   swc1       $f4, 0x10($sp)
/* 00DC10 8011BF70 14400003 */  bnez        $v0, .L8011BF80
/* 00DC14 8011BF74 00401825 */   move       $v1, $v0
/* 00DC18 8011BF78 10000002 */  b           .L8011BF84
/* 00DC1C 8011BF7C 00001025 */   move       $v0, $zero
.L8011BF80:
/* 00DC20 8011BF80 8C620038 */  lw          $v0, 0x38($v1)
.L8011BF84:
/* 00DC24 8011BF84 8FBF0024 */  lw          $ra, 0x24($sp)
/* 00DC28 8011BF88 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00DC2C 8011BF8C 03E00008 */  jr          $ra
/* 00DC30 8011BF90 00000000 */   nop

glabel func_8011BF94 # 66
/* 00DC34 8011BF94 8C820054 */  lw          $v0, 0x54($a0)
/* 00DC38 8011BF98 3C0E800F */  lui         $t6, %hi(D_800F3EAC)
/* 00DC3C 8011BF9C 8DCE3EAC */  lw          $t6, %lo(D_800F3EAC)($t6)
/* 00DC40 8011BFA0 240F0002 */  addiu       $t7, $zero, 0x2
/* 00DC44 8011BFA4 AC4F0198 */  sw          $t7, 0x198($v0)
/* 00DC48 8011BFA8 03E00008 */  jr          $ra
/* 00DC4C 8011BFAC AC4E0194 */   sw         $t6, 0x194($v0)

glabel func_8011BFB0 # 67
/* 00DC50 8011BFB0 8C820054 */  lw          $v0, 0x54($a0)
/* 00DC54 8011BFB4 3C0E800F */  lui         $t6, %hi(D_800F3EA8)
/* 00DC58 8011BFB8 8DCE3EA8 */  lw          $t6, %lo(D_800F3EA8)($t6)
/* 00DC5C 8011BFBC 240F0001 */  addiu       $t7, $zero, 0x1
/* 00DC60 8011BFC0 AC4F0198 */  sw          $t7, 0x198($v0)
/* 00DC64 8011BFC4 03E00008 */  jr          $ra
/* 00DC68 8011BFC8 AC4E0194 */   sw         $t6, 0x194($v0)

glabel func_8011BFCC # 68
/* 00DC6C 8011BFCC 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 00DC70 8011BFD0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00DC74 8011BFD4 AFB00018 */  sw          $s0, 0x18($sp)
/* 00DC78 8011BFD8 0C0465A3 */  jal         func_8011968C
/* 00DC7C 8011BFDC 00808025 */   move       $s0, $a0
/* 00DC80 8011BFE0 E7A00028 */  swc1        $f0, 0x28($sp)
/* 00DC84 8011BFE4 0C0465A3 */  jal         func_8011968C
/* 00DC88 8011BFE8 02002025 */   move       $a0, $s0
/* 00DC8C 8011BFEC E7A00024 */  swc1        $f0, 0x24($sp)
/* 00DC90 8011BFF0 0C0465A3 */  jal         func_8011968C
/* 00DC94 8011BFF4 02002025 */   move       $a0, $s0
/* 00DC98 8011BFF8 E7A00020 */  swc1        $f0, 0x20($sp)
/* 00DC9C 8011BFFC 0C0465A3 */  jal         func_8011968C
/* 00DCA0 8011C000 02002025 */   move       $a0, $s0
/* 00DCA4 8011C004 E7A00034 */  swc1        $f0, 0x34($sp)
/* 00DCA8 8011C008 0C0465A3 */  jal         func_8011968C
/* 00DCAC 8011C00C 02002025 */   move       $a0, $s0
/* 00DCB0 8011C010 E7A00030 */  swc1        $f0, 0x30($sp)
/* 00DCB4 8011C014 0C0465A3 */  jal         func_8011968C
/* 00DCB8 8011C018 02002025 */   move       $a0, $s0
/* 00DCBC 8011C01C E7A0002C */  swc1        $f0, 0x2c($sp)
/* 00DCC0 8011C020 00002025 */  move        $a0, $zero
/* 00DCC4 8011C024 27A5002C */  addiu       $a1, $sp, 0x2c
/* 00DCC8 8011C028 0C000809 */  jal         func_80002024
/* 00DCCC 8011C02C 27A60020 */   addiu      $a2, $sp, 0x20
/* 00DCD0 8011C030 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00DCD4 8011C034 8FB00018 */  lw          $s0, 0x18($sp)
/* 00DCD8 8011C038 27BD0038 */  addiu       $sp, $sp, 0x38
/* 00DCDC 8011C03C 03E00008 */  jr          $ra
/* 00DCE0 8011C040 00000000 */   nop

glabel func_8011C044 # 69
/* 00DCE4 8011C044 8C820054 */  lw          $v0, 0x54($a0)
/* 00DCE8 8011C048 C44401EC */  lwc1        $f4, 0x1ec($v0)
/* 00DCEC 8011C04C E4840018 */  swc1        $f4, 0x18($a0)
/* 00DCF0 8011C050 C44601F0 */  lwc1        $f6, 0x1f0($v0)
/* 00DCF4 8011C054 E486001C */  swc1        $f6, 0x1c($a0)
/* 00DCF8 8011C058 C44801F4 */  lwc1        $f8, 0x1f4($v0)
/* 00DCFC 8011C05C E4880020 */  swc1        $f8, 0x20($a0)
/* 00DD00 8011C060 C44A01EC */  lwc1        $f10, 0x1ec($v0)
/* 00DD04 8011C064 E48A0044 */  swc1        $f10, 0x44($a0)
/* 00DD08 8011C068 C45001F0 */  lwc1        $f16, 0x1f0($v0)
/* 00DD0C 8011C06C E4900048 */  swc1        $f16, 0x48($a0)
/* 00DD10 8011C070 C45201F4 */  lwc1        $f18, 0x1f4($v0)
/* 00DD14 8011C074 03E00008 */  jr          $ra
/* 00DD18 8011C078 E492004C */   swc1       $f18, 0x4c($a0)

glabel func_8011C07C # 70
/* 00DD1C 8011C07C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00DD20 8011C080 14800003 */  bnez        $a0, .L8011C090
/* 00DD24 8011C084 AFBF0014 */   sw         $ra, 0x14($sp)
/* 00DD28 8011C088 10000011 */  b           .L8011C0D0
/* 00DD2C 8011C08C 00001025 */   move       $v0, $zero
.L8011C090:
/* 00DD30 8011C090 0C001A23 */  jal         func_8000688C
/* 00DD34 8011C094 00000000 */   nop
/* 00DD38 8011C098 1040000C */  beqz        $v0, .L8011C0CC
/* 00DD3C 8011C09C 00401825 */   move       $v1, $v0
/* 00DD40 8011C0A0 944E0034 */  lhu         $t6, 0x34($v0)
/* 00DD44 8011C0A4 24010086 */  addiu       $at, $zero, 0x86
/* 00DD48 8011C0A8 55C10009 */  bnel        $t6, $at, .L8011C0D0
/* 00DD4C 8011C0AC 00601025 */   move       $v0, $v1
/* 00DD50 8011C0B0 8C4F0054 */  lw          $t7, 0x54($v0)
/* 00DD54 8011C0B4 24010004 */  addiu       $at, $zero, 0x4
/* 00DD58 8011C0B8 81F80006 */  lb          $t8, 0x6($t7)
/* 00DD5C 8011C0BC 57010004 */  bnel        $t8, $at, .L8011C0D0
/* 00DD60 8011C0C0 00601025 */   move       $v0, $v1
/* 00DD64 8011C0C4 10000002 */  b           .L8011C0D0
/* 00DD68 8011C0C8 00001025 */   move       $v0, $zero
.L8011C0CC:
/* 00DD6C 8011C0CC 00601025 */  move        $v0, $v1
.L8011C0D0:
/* 00DD70 8011C0D0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00DD74 8011C0D4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00DD78 8011C0D8 03E00008 */  jr          $ra
/* 00DD7C 8011C0DC 00000000 */   nop

glabel func_8011C0E0 # 71
/* 00DD80 8011C0E0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00DD84 8011C0E4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00DD88 8011C0E8 8C820054 */  lw          $v0, 0x54($a0)
/* 00DD8C 8011C0EC 0C04701F */  jal         func_8011C07C
/* 00DD90 8011C0F0 8C440194 */   lw         $a0, 0x194($v0)
/* 00DD94 8011C0F4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00DD98 8011C0F8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00DD9C 8011C0FC 03E00008 */  jr          $ra
/* 00DDA0 8011C100 00000000 */   nop

glabel func_8011C104 # 72
/* 00DDA4 8011C104 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00DDA8 8011C108 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00DDAC 8011C10C 8C820054 */  lw          $v0, 0x54($a0)
/* 00DDB0 8011C110 8C4E0198 */  lw          $t6, 0x198($v0)
/* 00DDB4 8011C114 15C00003 */  bnez        $t6, .L8011C124
/* 00DDB8 8011C118 00000000 */   nop
/* 00DDBC 8011C11C 10000003 */  b           .L8011C12C
/* 00DDC0 8011C120 00001025 */   move       $v0, $zero
.L8011C124:
/* 00DDC4 8011C124 0C047038 */  jal         func_8011C0E0
/* 00DDC8 8011C128 00000000 */   nop
.L8011C12C:
/* 00DDCC 8011C12C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00DDD0 8011C130 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00DDD4 8011C134 03E00008 */  jr          $ra
/* 00DDD8 8011C138 00000000 */   nop

glabel func_8011C13C # 73
/* 00DDDC 8011C13C 8C820054 */  lw          $v0, 0x54($a0)
/* 00DDE0 8011C140 03E00008 */  jr          $ra
/* 00DDE4 8011C144 AC450214 */   sw         $a1, 0x214($v0)

glabel func_8011C148 # 74
/* 00DDE8 8011C148 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 00DDEC 8011C14C AFBF0024 */  sw          $ra, 0x24($sp)
/* 00DDF0 8011C150 AFB10020 */  sw          $s1, 0x20($sp)
/* 00DDF4 8011C154 AFB0001C */  sw          $s0, 0x1c($sp)
/* 00DDF8 8011C158 AFA5004C */  sw          $a1, 0x4c($sp)
/* 00DDFC 8011C15C 8C900054 */  lw          $s0, 0x54($a0)
/* 00DE00 8011C160 C4860044 */  lwc1        $f6, 0x44($a0)
/* 00DE04 8011C164 44805000 */  mtc1        $zero, $f10
/* 00DE08 8011C168 C60401EC */  lwc1        $f4, 0x1ec($s0)
/* 00DE0C 8011C16C 00808825 */  move        $s1, $a0
/* 00DE10 8011C170 E7AA003C */  swc1        $f10, 0x3c($sp)
/* 00DE14 8011C174 46062201 */  sub.s       $f8, $f4, $f6
/* 00DE18 8011C178 E7A80038 */  swc1        $f8, 0x38($sp)
/* 00DE1C 8011C17C C492004C */  lwc1        $f18, 0x4c($a0)
/* 00DE20 8011C180 C61001F4 */  lwc1        $f16, 0x1f4($s0)
/* 00DE24 8011C184 27A40038 */  addiu       $a0, $sp, 0x38
/* 00DE28 8011C188 46128101 */  sub.s       $f4, $f16, $f18
/* 00DE2C 8011C18C 0C002CB9 */  jal         func_8000B2E4
/* 00DE30 8011C190 E7A40040 */   swc1       $f4, 0x40($sp)
/* 00DE34 8011C194 44050000 */  mfc1        $a1, $f0
/* 00DE38 8011C198 0C0458D5 */  jal         func_80116354
/* 00DE3C 8011C19C 02202025 */   move       $a0, $s1
/* 00DE40 8011C1A0 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 00DE44 8011C1A4 C4282C64 */  lwc1        $f8, %lo(D_800B2C64)($at)
/* 00DE48 8011C1A8 C7A6004C */  lwc1        $f6, 0x4c($sp)
/* 00DE4C 8011C1AC E7A00034 */  swc1        $f0, 0x34($sp)
/* 00DE50 8011C1B0 C60C0010 */  lwc1        $f12, 0x10($s0)
/* 00DE54 8011C1B4 46083282 */  mul.s       $f10, $f6, $f8
/* 00DE58 8011C1B8 46000386 */  mov.s       $f14, $f0
/* 00DE5C 8011C1BC 3C063F80 */  lui         $a2, 0x3f80
/* 00DE60 8011C1C0 3C0742B4 */  lui         $a3, 0x42b4
/* 00DE64 8011C1C4 0C00EACF */  jal         func_8003AB3C
/* 00DE68 8011C1C8 E7AA0010 */   swc1       $f10, 0x10($sp)
/* 00DE6C 8011C1CC C6100010 */  lwc1        $f16, 0x10($s0)
/* 00DE70 8011C1D0 02202025 */  move        $a0, $s1
/* 00DE74 8011C1D4 24060001 */  addiu       $a2, $zero, 0x1
/* 00DE78 8011C1D8 46100481 */  sub.s       $f18, $f0, $f16
/* 00DE7C 8011C1DC 44059000 */  mfc1        $a1, $f18
/* 00DE80 8011C1E0 0C0051BB */  jal         func_800146EC
/* 00DE84 8011C1E4 00000000 */   nop
/* 00DE88 8011C1E8 C7A40034 */  lwc1        $f4, 0x34($sp)
/* 00DE8C 8011C1EC C6060010 */  lwc1        $f6, 0x10($s0)
/* 00DE90 8011C1F0 0C00E7ED */  jal         func_80039FB4
/* 00DE94 8011C1F4 46062301 */   sub.s      $f12, $f4, $f6
/* 00DE98 8011C1F8 3C013F80 */  lui         $at, 0x3f80
/* 00DE9C 8011C1FC 44814000 */  mtc1        $at, $f8
/* 00DEA0 8011C200 46000005 */  abs.s       $f0, $f0
/* 00DEA4 8011C204 8FBF0024 */  lw          $ra, 0x24($sp)
/* 00DEA8 8011C208 4608003C */  c.lt.s      $f0, $f8
/* 00DEAC 8011C20C 00001025 */  move        $v0, $zero
/* 00DEB0 8011C210 45000003 */  bc1f        .L8011C220
/* 00DEB4 8011C214 00000000 */   nop
/* 00DEB8 8011C218 10000001 */  b           .L8011C220
/* 00DEBC 8011C21C 24020001 */   addiu      $v0, $zero, 0x1
.L8011C220:
/* 00DEC0 8011C220 8FB0001C */  lw          $s0, 0x1c($sp)
/* 00DEC4 8011C224 8FB10020 */  lw          $s1, 0x20($sp)
/* 00DEC8 8011C228 03E00008 */  jr          $ra
/* 00DECC 8011C22C 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_8011C230 # 75
/* 00DED0 8011C230 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 00DED4 8011C234 AFBF0024 */  sw          $ra, 0x24($sp)
/* 00DED8 8011C238 AFB10020 */  sw          $s1, 0x20($sp)
/* 00DEDC 8011C23C AFB0001C */  sw          $s0, 0x1c($sp)
/* 00DEE0 8011C240 AFA50074 */  sw          $a1, 0x74($sp)
/* 00DEE4 8011C244 8C900054 */  lw          $s0, 0x54($a0)
/* 00DEE8 8011C248 C4860044 */  lwc1        $f6, 0x44($a0)
/* 00DEEC 8011C24C 44805000 */  mtc1        $zero, $f10
/* 00DEF0 8011C250 C60401EC */  lwc1        $f4, 0x1ec($s0)
/* 00DEF4 8011C254 00808825 */  move        $s1, $a0
/* 00DEF8 8011C258 E7AA0064 */  swc1        $f10, 0x64($sp)
/* 00DEFC 8011C25C 46062201 */  sub.s       $f8, $f4, $f6
/* 00DF00 8011C260 E7A80060 */  swc1        $f8, 0x60($sp)
/* 00DF04 8011C264 C492004C */  lwc1        $f18, 0x4c($a0)
/* 00DF08 8011C268 C61001F4 */  lwc1        $f16, 0x1f4($s0)
/* 00DF0C 8011C26C 27A40060 */  addiu       $a0, $sp, 0x60
/* 00DF10 8011C270 46128101 */  sub.s       $f4, $f16, $f18
/* 00DF14 8011C274 0C002CB9 */  jal         func_8000B2E4
/* 00DF18 8011C278 E7A40068 */   swc1       $f4, 0x68($sp)
/* 00DF1C 8011C27C 44050000 */  mfc1        $a1, $f0
/* 00DF20 8011C280 0C0458D5 */  jal         func_80116354
/* 00DF24 8011C284 02202025 */   move       $a0, $s1
/* 00DF28 8011C288 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 00DF2C 8011C28C C4282C64 */  lwc1        $f8, %lo(D_800B2C64)($at)
/* 00DF30 8011C290 C7A60074 */  lwc1        $f6, 0x74($sp)
/* 00DF34 8011C294 E7A0005C */  swc1        $f0, 0x5c($sp)
/* 00DF38 8011C298 C60C0010 */  lwc1        $f12, 0x10($s0)
/* 00DF3C 8011C29C 46083282 */  mul.s       $f10, $f6, $f8
/* 00DF40 8011C2A0 46000386 */  mov.s       $f14, $f0
/* 00DF44 8011C2A4 3C063F80 */  lui         $a2, 0x3f80
/* 00DF48 8011C2A8 3C0742B4 */  lui         $a3, 0x42b4
/* 00DF4C 8011C2AC 0C00EACF */  jal         func_8003AB3C
/* 00DF50 8011C2B0 E7AA0010 */   swc1       $f10, 0x10($sp)
/* 00DF54 8011C2B4 C6100010 */  lwc1        $f16, 0x10($s0)
/* 00DF58 8011C2B8 46100301 */  sub.s       $f12, $f0, $f16
/* 00DF5C 8011C2BC 0C00EB2F */  jal         func_8003ACBC
/* 00DF60 8011C2C0 E7AC0058 */   swc1       $f12, 0x58($sp)
/* 00DF64 8011C2C4 C7AC0058 */  lwc1        $f12, 0x58($sp)
/* 00DF68 8011C2C8 0C00EB6C */  jal         func_8003ADB0
/* 00DF6C 8011C2CC E7A00048 */   swc1       $f0, 0x48($sp)
/* 00DF70 8011C2D0 3C013F80 */  lui         $at, 0x3f80
/* 00DF74 8011C2D4 44819000 */  mtc1        $at, $f18
/* 00DF78 8011C2D8 3C0142B4 */  lui         $at, 0x42b4
/* 00DF7C 8011C2DC 44813000 */  mtc1        $at, $f6
/* 00DF80 8011C2E0 46009101 */  sub.s       $f4, $f18, $f0
/* 00DF84 8011C2E4 27A40034 */  addiu       $a0, $sp, 0x34
/* 00DF88 8011C2E8 E7A00044 */  swc1        $f0, 0x44($sp)
/* 00DF8C 8011C2EC 46062382 */  mul.s       $f14, $f4, $f6
/* 00DF90 8011C2F0 0C001A98 */  jal         func_80006A60
/* 00DF94 8011C2F4 E7AE004C */   swc1       $f14, 0x4c($sp)
/* 00DF98 8011C2F8 C7A20048 */  lwc1        $f2, 0x48($sp)
/* 00DF9C 8011C2FC 3C0142B4 */  lui         $at, 0x42b4
/* 00DFA0 8011C300 44815000 */  mtc1        $at, $f10
/* 00DFA4 8011C304 46001207 */  neg.s       $f8, $f2
/* 00DFA8 8011C308 C7AC0044 */  lwc1        $f12, 0x44($sp)
/* 00DFAC 8011C30C 460A4002 */  mul.s       $f0, $f8, $f10
/* 00DFB0 8011C310 C7AE004C */  lwc1        $f14, 0x4c($sp)
/* 00DFB4 8011C314 27A40034 */  addiu       $a0, $sp, 0x34
/* 00DFB8 8011C318 460C0402 */  mul.s       $f16, $f0, $f12
/* 00DFBC 8011C31C 00000000 */  nop
/* 00DFC0 8011C320 46027482 */  mul.s       $f18, $f14, $f2
/* 00DFC4 8011C324 00000000 */  nop
/* 00DFC8 8011C328 46020182 */  mul.s       $f6, $f0, $f2
/* 00DFCC 8011C32C 00000000 */  nop
/* 00DFD0 8011C330 460C7202 */  mul.s       $f8, $f14, $f12
/* 00DFD4 8011C334 46128101 */  sub.s       $f4, $f16, $f18
/* 00DFD8 8011C338 E7A40034 */  swc1        $f4, 0x34($sp)
/* 00DFDC 8011C33C 46083280 */  add.s       $f10, $f6, $f8
/* 00DFE0 8011C340 0C001AA1 */  jal         func_80006A84
/* 00DFE4 8011C344 E7AA003C */   swc1       $f10, 0x3c($sp)
/* 00DFE8 8011C348 02202025 */  move        $a0, $s1
/* 00DFEC 8011C34C 8FA50058 */  lw          $a1, 0x58($sp)
/* 00DFF0 8011C350 0C0051BB */  jal         func_800146EC
/* 00DFF4 8011C354 24060001 */   addiu      $a2, $zero, 0x1
/* 00DFF8 8011C358 C7B0005C */  lwc1        $f16, 0x5c($sp)
/* 00DFFC 8011C35C C6120010 */  lwc1        $f18, 0x10($s0)
/* 00E000 8011C360 0C00E7ED */  jal         func_80039FB4
/* 00E004 8011C364 46128301 */   sub.s      $f12, $f16, $f18
/* 00E008 8011C368 3C013F80 */  lui         $at, 0x3f80
/* 00E00C 8011C36C 44812000 */  mtc1        $at, $f4
/* 00E010 8011C370 46000005 */  abs.s       $f0, $f0
/* 00E014 8011C374 8FBF0024 */  lw          $ra, 0x24($sp)
/* 00E018 8011C378 4604003C */  c.lt.s      $f0, $f4
/* 00E01C 8011C37C 00001025 */  move        $v0, $zero
/* 00E020 8011C380 45000003 */  bc1f        .L8011C390
/* 00E024 8011C384 00000000 */   nop
/* 00E028 8011C388 10000001 */  b           .L8011C390
/* 00E02C 8011C38C 24020001 */   addiu      $v0, $zero, 0x1
.L8011C390:
/* 00E030 8011C390 8FB0001C */  lw          $s0, 0x1c($sp)
/* 00E034 8011C394 8FB10020 */  lw          $s1, 0x20($sp)
/* 00E038 8011C398 03E00008 */  jr          $ra
/* 00E03C 8011C39C 27BD0070 */   addiu      $sp, $sp, 0x70

glabel func_8011C3A0 # 76
/* 00E040 8011C3A0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00E044 8011C3A4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E048 8011C3A8 8C830054 */  lw          $v1, 0x54($a0)
/* 00E04C 8011C3AC 8C6E0198 */  lw          $t6, 0x198($v1)
/* 00E050 8011C3B0 51C00019 */  beql        $t6, $zero, .L8011C418
/* 00E054 8011C3B4 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00E058 8011C3B8 8C6F0194 */  lw          $t7, 0x194($v1)
/* 00E05C 8011C3BC 51E00016 */  beql        $t7, $zero, .L8011C418
/* 00E060 8011C3C0 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00E064 8011C3C4 AFA3001C */  sw          $v1, 0x1c($sp)
/* 00E068 8011C3C8 0C047038 */  jal         func_8011C0E0
/* 00E06C 8011C3CC AFA40020 */   sw         $a0, 0x20($sp)
/* 00E070 8011C3D0 8FA3001C */  lw          $v1, 0x1c($sp)
/* 00E074 8011C3D4 8FA40020 */  lw          $a0, 0x20($sp)
/* 00E078 8011C3D8 1040000E */  beqz        $v0, .L8011C414
/* 00E07C 8011C3DC 00403025 */   move       $a2, $v0
/* 00E080 8011C3E0 8C620198 */  lw          $v0, 0x198($v1)
/* 00E084 8011C3E4 24010001 */  addiu       $at, $zero, 0x1
/* 00E088 8011C3E8 54410006 */  bnel        $v0, $at, .L8011C404
/* 00E08C 8011C3EC 24010002 */   addiu      $at, $zero, 0x2
/* 00E090 8011C3F0 0C046EFD */  jal         func_8011BBF4
/* 00E094 8011C3F4 24C50044 */   addiu      $a1, $a2, 0x44
/* 00E098 8011C3F8 10000007 */  b           .L8011C418
/* 00E09C 8011C3FC 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00E0A0 8011C400 24010002 */  addiu       $at, $zero, 0x2
.L8011C404:
/* 00E0A4 8011C404 54410004 */  bnel        $v0, $at, .L8011C418
/* 00E0A8 8011C408 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00E0AC 8011C40C 0C046F07 */  jal         func_8011BC1C
/* 00E0B0 8011C410 24C50044 */   addiu      $a1, $a2, 0x44
.L8011C414:
/* 00E0B4 8011C414 8FBF0014 */  lw          $ra, 0x14($sp)
.L8011C418:
/* 00E0B8 8011C418 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00E0BC 8011C41C 03E00008 */  jr          $ra
/* 00E0C0 8011C420 00000000 */   nop

glabel func_8011C424 # 77
/* 00E0C4 8011C424 8FAE001C */  lw          $t6, 0x1c($sp)
/* 00E0C8 8011C428 AFA50004 */  sw          $a1, 0x4($sp)
/* 00E0CC 8011C42C AFA60008 */  sw          $a2, 0x8($sp)
/* 00E0D0 8011C430 AFA7000C */  sw          $a3, 0xc($sp)
/* 00E0D4 8011C434 15C00006 */  bnez        $t6, .L8011C450
/* 00E0D8 8011C438 8C830054 */   lw         $v1, 0x54($a0)
/* 00E0DC 8011C43C 8C6F0218 */  lw          $t7, 0x218($v1)
/* 00E0E0 8011C440 51E00004 */  beql        $t7, $zero, .L8011C454
/* 00E0E4 8011C444 24180001 */   addiu      $t8, $zero, 0x1
/* 00E0E8 8011C448 03E00008 */  jr          $ra
/* 00E0EC 8011C44C 00001025 */   move       $v0, $zero
.L8011C450:
/* 00E0F0 8011C450 24180001 */  addiu       $t8, $zero, 0x1
.L8011C454:
/* 00E0F4 8011C454 AC780218 */  sw          $t8, 0x218($v1)
/* 00E0F8 8011C458 27B90004 */  addiu       $t9, $sp, 0x4
/* 00E0FC 8011C45C 8F210000 */  lw          $at, 0x0($t9)
/* 00E100 8011C460 24020001 */  addiu       $v0, $zero, 0x1
/* 00E104 8011C464 AC61021C */  sw          $at, 0x21c($v1)
/* 00E108 8011C468 8F290004 */  lw          $t1, 0x4($t9)
/* 00E10C 8011C46C AC690220 */  sw          $t1, 0x220($v1)
/* 00E110 8011C470 8F210008 */  lw          $at, 0x8($t9)
/* 00E114 8011C474 AC610224 */  sw          $at, 0x224($v1)
/* 00E118 8011C478 8F29000C */  lw          $t1, 0xc($t9)
/* 00E11C 8011C47C AC690228 */  sw          $t1, 0x228($v1)
/* 00E120 8011C480 8F210010 */  lw          $at, 0x10($t9)
/* 00E124 8011C484 AC61022C */  sw          $at, 0x22c($v1)
/* 00E128 8011C488 8F290014 */  lw          $t1, 0x14($t9)
/* 00E12C 8011C48C AC690230 */  sw          $t1, 0x230($v1)
/* 00E130 8011C490 03E00008 */  jr          $ra
/* 00E134 8011C494 00000000 */   nop

glabel func_8011C498 # 78
/* 00E138 8011C498 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 00E13C 8011C49C AFBF0024 */  sw          $ra, 0x24($sp)
/* 00E140 8011C4A0 AFA40050 */  sw          $a0, 0x50($sp)
/* 00E144 8011C4A4 8CA20054 */  lw          $v0, 0x54($a1)
/* 00E148 8011C4A8 240E000E */  addiu       $t6, $zero, 0xe
/* 00E14C 8011C4AC 27A40028 */  addiu       $a0, $sp, 0x28
/* 00E150 8011C4B0 C4440014 */  lwc1        $f4, 0x14($v0)
/* 00E154 8011C4B4 E7A40028 */  swc1        $f4, 0x28($sp)
/* 00E158 8011C4B8 C4460010 */  lwc1        $f6, 0x10($v0)
/* 00E15C 8011C4BC 46003207 */  neg.s       $f8, $f6
/* 00E160 8011C4C0 E7A8002C */  swc1        $f8, 0x2c($sp)
/* 00E164 8011C4C4 C44A0018 */  lwc1        $f10, 0x18($v0)
/* 00E168 8011C4C8 AFA0003C */  sw          $zero, 0x3c($sp)
/* 00E16C 8011C4CC AFAE0034 */  sw          $t6, 0x34($sp)
/* 00E170 8011C4D0 E7AA0030 */  swc1        $f10, 0x30($sp)
/* 00E174 8011C4D4 8CAF0038 */  lw          $t7, 0x38($a1)
/* 00E178 8011C4D8 AFA50054 */  sw          $a1, 0x54($sp)
/* 00E17C 8011C4DC 0C00E3AC */  jal         func_80038EB0
/* 00E180 8011C4E0 AFAF0038 */   sw         $t7, 0x38($sp)
/* 00E184 8011C4E4 4600040D */  trunc.w.s   $f16, $f0
/* 00E188 8011C4E8 8FA80054 */  lw          $t0, 0x54($sp)
/* 00E18C 8011C4EC AFA00044 */  sw          $zero, 0x44($sp)
/* 00E190 8011C4F0 27AA0034 */  addiu       $t2, $sp, 0x34
/* 00E194 8011C4F4 44198000 */  mfc1        $t9, $f16
/* 00E198 8011C4F8 8FA40050 */  lw          $a0, 0x50($sp)
/* 00E19C 8011C4FC AFB90040 */  sw          $t9, 0x40($sp)
/* 00E1A0 8011C500 8D090038 */  lw          $t1, 0x38($t0)
/* 00E1A4 8011C504 AFA90048 */  sw          $t1, 0x48($sp)
/* 00E1A8 8011C508 8D410000 */  lw          $at, 0x0($t2)
/* 00E1AC 8011C50C AFA10004 */  sw          $at, 0x4($sp)
/* 00E1B0 8011C510 8D4C0004 */  lw          $t4, 0x4($t2)
/* 00E1B4 8011C514 8FA50004 */  lw          $a1, 0x4($sp)
/* 00E1B8 8011C518 AFAC0008 */  sw          $t4, 0x8($sp)
/* 00E1BC 8011C51C 8D410008 */  lw          $at, 0x8($t2)
/* 00E1C0 8011C520 8FA60008 */  lw          $a2, 0x8($sp)
/* 00E1C4 8011C524 AFA1000C */  sw          $at, 0xc($sp)
/* 00E1C8 8011C528 8D4C000C */  lw          $t4, 0xc($t2)
/* 00E1CC 8011C52C 8FA7000C */  lw          $a3, 0xc($sp)
/* 00E1D0 8011C530 AFAC0010 */  sw          $t4, 0x10($sp)
/* 00E1D4 8011C534 8D410010 */  lw          $at, 0x10($t2)
/* 00E1D8 8011C538 AFA10014 */  sw          $at, 0x14($sp)
/* 00E1DC 8011C53C 8D4C0014 */  lw          $t4, 0x14($t2)
/* 00E1E0 8011C540 AFA0001C */  sw          $zero, 0x1c($sp)
/* 00E1E4 8011C544 0C047109 */  jal         func_8011C424
/* 00E1E8 8011C548 AFAC0018 */   sw         $t4, 0x18($sp)
/* 00E1EC 8011C54C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 00E1F0 8011C550 27BD0050 */  addiu       $sp, $sp, 0x50
/* 00E1F4 8011C554 03E00008 */  jr          $ra
/* 00E1F8 8011C558 00000000 */   nop

glabel func_8011C55C # 79
/* 00E1FC 8011C55C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00E200 8011C560 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00E204 8011C564 AFB00018 */  sw          $s0, 0x18($sp)
/* 00E208 8011C568 AFA40030 */  sw          $a0, 0x30($sp)
/* 00E20C 8011C56C AFA60038 */  sw          $a2, 0x38($sp)
/* 00E210 8011C570 8C8F0054 */  lw          $t7, 0x54($a0)
/* 00E214 8011C574 00A02025 */  move        $a0, $a1
/* 00E218 8011C578 0C04701F */  jal         func_8011C07C
/* 00E21C 8011C57C AFAF002C */   sw         $t7, 0x2c($sp)
/* 00E220 8011C580 10400029 */  beqz        $v0, .L8011C628
/* 00E224 8011C584 00408025 */   move       $s0, $v0
/* 00E228 8011C588 00402025 */  move        $a0, $v0
/* 00E22C 8011C58C 0C045EC6 */  jal         func_80117B18
/* 00E230 8011C590 00002825 */   move       $a1, $zero
/* 00E234 8011C594 10400024 */  beqz        $v0, .L8011C628
/* 00E238 8011C598 02002025 */   move       $a0, $s0
/* 00E23C 8011C59C 0C045D9D */  jal         func_80117674
/* 00E240 8011C5A0 8FA50038 */   lw         $a1, 0x38($sp)
/* 00E244 8011C5A4 10400020 */  beqz        $v0, .L8011C628
/* 00E248 8011C5A8 8FB8002C */   lw         $t8, 0x2c($sp)
/* 00E24C 8011C5AC 0C001A23 */  jal         func_8000688C
/* 00E250 8011C5B0 8F04018C */   lw         $a0, 0x18c($t8)
/* 00E254 8011C5B4 10400003 */  beqz        $v0, .L8011C5C4
/* 00E258 8011C5B8 00402025 */   move       $a0, $v0
/* 00E25C 8011C5BC 0C045D9D */  jal         func_80117674
/* 00E260 8011C5C0 24050001 */   addiu      $a1, $zero, 0x1
.L8011C5C4:
/* 00E264 8011C5C4 3C198007 */  lui         $t9, %hi(D_80071E88)
/* 00E268 8011C5C8 8FA30030 */  lw          $v1, 0x30($sp)
/* 00E26C 8011C5CC 8F391E88 */  lw          $t9, %lo(D_80071E88)($t9)
/* 00E270 8011C5D0 8E020054 */  lw          $v0, 0x54($s0)
/* 00E274 8011C5D4 24080002 */  addiu       $t0, $zero, 0x2
/* 00E278 8011C5D8 14790003 */  bne         $v1, $t9, .L8011C5E8
/* 00E27C 8011C5DC 24090003 */   addiu      $t1, $zero, 0x3
/* 00E280 8011C5E0 10000002 */  b           .L8011C5EC
/* 00E284 8011C5E4 A0480006 */   sb         $t0, 0x6($v0)
.L8011C5E8:
/* 00E288 8011C5E8 A0490006 */  sb          $t1, 0x6($v0)
.L8011C5EC:
/* 00E28C 8011C5EC 8C6A0038 */  lw          $t2, 0x38($v1)
/* 00E290 8011C5F0 02002025 */  move        $a0, $s0
/* 00E294 8011C5F4 24050004 */  addiu       $a1, $zero, 0x4
/* 00E298 8011C5F8 AC4A0008 */  sw          $t2, 0x8($v0)
/* 00E29C 8011C5FC 0C045E9A */  jal         func_80117A68
/* 00E2A0 8011C600 AFA20020 */   sw         $v0, 0x20($sp)
/* 00E2A4 8011C604 8E0B0038 */  lw          $t3, 0x38($s0)
/* 00E2A8 8011C608 8FAC002C */  lw          $t4, 0x2c($sp)
/* 00E2AC 8011C60C 8FA20020 */  lw          $v0, 0x20($sp)
/* 00E2B0 8011C610 3C01E3FF */  lui         $at, 0xe3ff
/* 00E2B4 8011C614 AD8B018C */  sw          $t3, 0x18c($t4)
/* 00E2B8 8011C618 8C4D0000 */  lw          $t5, 0x0($v0)
/* 00E2BC 8011C61C 3421FFFF */  ori         $at, $at, 0xffff
/* 00E2C0 8011C620 01A17024 */  and         $t6, $t5, $at
/* 00E2C4 8011C624 AC4E0000 */  sw          $t6, 0x0($v0)
.L8011C628:
/* 00E2C8 8011C628 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00E2CC 8011C62C 8FB00018 */  lw          $s0, 0x18($sp)
/* 00E2D0 8011C630 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00E2D4 8011C634 03E00008 */  jr          $ra
/* 00E2D8 8011C638 00000000 */   nop

glabel func_8011C63C # 80
/* 00E2DC 8011C63C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00E2E0 8011C640 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E2E4 8011C644 0C04701F */  jal         func_8011C07C
/* 00E2E8 8011C648 00000000 */   nop
/* 00E2EC 8011C64C 14400003 */  bnez        $v0, .L8011C65C
/* 00E2F0 8011C650 00401825 */   move       $v1, $v0
/* 00E2F4 8011C654 10000009 */  b           .L8011C67C
/* 00E2F8 8011C658 3C02FFFF */   lui        $v0, 0xffff
.L8011C65C:
/* 00E2FC 8011C65C 944E0034 */  lhu         $t6, 0x34($v0)
/* 00E300 8011C660 24010086 */  addiu       $at, $zero, 0x86
/* 00E304 8011C664 51C10004 */  beql        $t6, $at, .L8011C678
/* 00E308 8011C668 8C6F0054 */   lw         $t7, 0x54($v1)
/* 00E30C 8011C66C 10000003 */  b           .L8011C67C
/* 00E310 8011C670 3C02FFFF */   lui        $v0, 0xffff
/* 00E314 8011C674 8C6F0054 */  lw          $t7, 0x54($v1)
.L8011C678:
/* 00E318 8011C678 8DE20034 */  lw          $v0, 0x34($t7)
.L8011C67C:
/* 00E31C 8011C67C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00E320 8011C680 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00E324 8011C684 03E00008 */  jr          $ra
/* 00E328 8011C688 00000000 */   nop

glabel func_8011C68C # 81
/* 00E32C 8011C68C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00E330 8011C690 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E334 8011C694 0C04701F */  jal         func_8011C07C
/* 00E338 8011C698 AFA5001C */   sw         $a1, 0x1c($sp)
/* 00E33C 8011C69C 14400003 */  bnez        $v0, .L8011C6AC
/* 00E340 8011C6A0 00401825 */   move       $v1, $v0
/* 00E344 8011C6A4 1000000B */  b           .L8011C6D4
/* 00E348 8011C6A8 00001025 */   move       $v0, $zero
.L8011C6AC:
/* 00E34C 8011C6AC 944E0034 */  lhu         $t6, 0x34($v0)
/* 00E350 8011C6B0 24010086 */  addiu       $at, $zero, 0x86
/* 00E354 8011C6B4 8FAF001C */  lw          $t7, 0x1c($sp)
/* 00E358 8011C6B8 51C10004 */  beql        $t6, $at, .L8011C6CC
/* 00E35C 8011C6BC 8C780054 */   lw         $t8, 0x54($v1)
/* 00E360 8011C6C0 10000004 */  b           .L8011C6D4
/* 00E364 8011C6C4 00001025 */   move       $v0, $zero
/* 00E368 8011C6C8 8C780054 */  lw          $t8, 0x54($v1)
.L8011C6CC:
/* 00E36C 8011C6CC 24020001 */  addiu       $v0, $zero, 0x1
/* 00E370 8011C6D0 AF0F0034 */  sw          $t7, 0x34($t8)
.L8011C6D4:
/* 00E374 8011C6D4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00E378 8011C6D8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00E37C 8011C6DC 03E00008 */  jr          $ra
/* 00E380 8011C6E0 00000000 */   nop

glabel func_8011C6E4 # 82
/* 00E384 8011C6E4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00E388 8011C6E8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E38C 8011C6EC 00803025 */  move        $a2, $a0
/* 00E390 8011C6F0 AFA60018 */  sw          $a2, 0x18($sp)
/* 00E394 8011C6F4 0C04701F */  jal         func_8011C07C
/* 00E398 8011C6F8 00A02025 */   move       $a0, $a1
/* 00E39C 8011C6FC 14400003 */  bnez        $v0, .L8011C70C
/* 00E3A0 8011C700 8FA60018 */   lw         $a2, 0x18($sp)
/* 00E3A4 8011C704 10000026 */  b           .L8011C7A0
/* 00E3A8 8011C708 00001025 */   move       $v0, $zero
.L8011C70C:
/* 00E3AC 8011C70C 94430034 */  lhu         $v1, 0x34($v0)
/* 00E3B0 8011C710 24010010 */  addiu       $at, $zero, 0x10
/* 00E3B4 8011C714 5461000C */  bnel        $v1, $at, .L8011C748
/* 00E3B8 8011C718 24010086 */   addiu      $at, $zero, 0x86
/* 00E3BC 8011C71C 10C00005 */  beqz        $a2, .L8011C734
/* 00E3C0 8011C720 8C430054 */   lw         $v1, 0x54($v0)
/* 00E3C4 8011C724 946E01E8 */  lhu         $t6, 0x1e8($v1)
/* 00E3C8 8011C728 35CF0010 */  ori         $t7, $t6, 0x10
/* 00E3CC 8011C72C 1000001B */  b           .L8011C79C
/* 00E3D0 8011C730 A46F01E8 */   sh         $t7, 0x1e8($v1)
.L8011C734:
/* 00E3D4 8011C734 947801E8 */  lhu         $t8, 0x1e8($v1)
/* 00E3D8 8011C738 3319FFEF */  andi        $t9, $t8, 0xffef
/* 00E3DC 8011C73C 10000017 */  b           .L8011C79C
/* 00E3E0 8011C740 A47901E8 */   sh         $t9, 0x1e8($v1)
/* 00E3E4 8011C744 24010086 */  addiu       $at, $zero, 0x86
.L8011C748:
/* 00E3E8 8011C748 14610012 */  bne         $v1, $at, .L8011C794
/* 00E3EC 8011C74C 00000000 */   nop
/* 00E3F0 8011C750 8C430054 */  lw          $v1, 0x54($v0)
/* 00E3F4 8011C754 8C640000 */  lw          $a0, 0x0($v1)
/* 00E3F8 8011C758 30880100 */  andi        $t0, $a0, 0x100
/* 00E3FC 8011C75C 15000003 */  bnez        $t0, .L8011C76C
/* 00E400 8011C760 00000000 */   nop
/* 00E404 8011C764 1000000E */  b           .L8011C7A0
/* 00E408 8011C768 00001025 */   move       $v0, $zero
.L8011C76C:
/* 00E40C 8011C76C 10C00005 */  beqz        $a2, .L8011C784
/* 00E410 8011C770 3C017FFF */   lui        $at, 0x7fff
/* 00E414 8011C774 3C018000 */  lui         $at, 0x8000
/* 00E418 8011C778 00814825 */  or          $t1, $a0, $at
/* 00E41C 8011C77C 10000007 */  b           .L8011C79C
/* 00E420 8011C780 AC690000 */   sw         $t1, 0x0($v1)
.L8011C784:
/* 00E424 8011C784 3421FFFF */  ori         $at, $at, 0xffff
/* 00E428 8011C788 00815024 */  and         $t2, $a0, $at
/* 00E42C 8011C78C 10000003 */  b           .L8011C79C
/* 00E430 8011C790 AC6A0000 */   sw         $t2, 0x0($v1)
.L8011C794:
/* 00E434 8011C794 10000002 */  b           .L8011C7A0
/* 00E438 8011C798 00001025 */   move       $v0, $zero
.L8011C79C:
/* 00E43C 8011C79C 00C01025 */  move        $v0, $a2
.L8011C7A0:
/* 00E440 8011C7A0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00E444 8011C7A4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00E448 8011C7A8 03E00008 */  jr          $ra
/* 00E44C 8011C7AC 00000000 */   nop

glabel func_8011C7B0 # 83
/* 00E450 8011C7B0 8C830054 */  lw          $v1, 0x54($a0)
/* 00E454 8011C7B4 8C620218 */  lw          $v0, 0x218($v1)
/* 00E458 8011C7B8 03E00008 */  jr          $ra
/* 00E45C 8011C7BC AC600218 */   sw         $zero, 0x218($v1)

glabel func_8011C7C0 # 84
/* 00E460 8011C7C0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00E464 8011C7C4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E468 8011C7C8 AFA50024 */  sw          $a1, 0x24($sp)
/* 00E46C 8011C7CC AFA60028 */  sw          $a2, 0x28($sp)
/* 00E470 8011C7D0 AFA7002C */  sw          $a3, 0x2c($sp)
/* 00E474 8011C7D4 8C820054 */  lw          $v0, 0x54($a0)
/* 00E478 8011C7D8 00A03025 */  move        $a2, $a1
/* 00E47C 8011C7DC 00002825 */  move        $a1, $zero
/* 00E480 8011C7E0 AFA40020 */  sw          $a0, 0x20($sp)
/* 00E484 8011C7E4 0C004BE9 */  jal         func_80012FA4
/* 00E488 8011C7E8 AFA2001C */   sw         $v0, 0x1c($sp)
/* 00E48C 8011C7EC 8FA40020 */  lw          $a0, 0x20($sp)
/* 00E490 8011C7F0 24050001 */  addiu       $a1, $zero, 0x1
/* 00E494 8011C7F4 0C004BE9 */  jal         func_80012FA4
/* 00E498 8011C7F8 8FA60028 */   lw         $a2, 0x28($sp)
/* 00E49C 8011C7FC 8FAE002C */  lw          $t6, 0x2c($sp)
/* 00E4A0 8011C800 8FA2001C */  lw          $v0, 0x1c($sp)
/* 00E4A4 8011C804 51C00006 */  beql        $t6, $zero, .L8011C820
/* 00E4A8 8011C808 945901E8 */   lhu        $t9, 0x1e8($v0)
/* 00E4AC 8011C80C 944F01E8 */  lhu         $t7, 0x1e8($v0)
/* 00E4B0 8011C810 35F80040 */  ori         $t8, $t7, 0x40
/* 00E4B4 8011C814 10000004 */  b           .L8011C828
/* 00E4B8 8011C818 A45801E8 */   sh         $t8, 0x1e8($v0)
/* 00E4BC 8011C81C 945901E8 */  lhu         $t9, 0x1e8($v0)
.L8011C820:
/* 00E4C0 8011C820 3328FFBF */  andi        $t0, $t9, 0xffbf
/* 00E4C4 8011C824 A44801E8 */  sh          $t0, 0x1e8($v0)
.L8011C828:
/* 00E4C8 8011C828 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00E4CC 8011C82C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00E4D0 8011C830 03E00008 */  jr          $ra
/* 00E4D4 8011C834 00000000 */   nop

glabel func_8011C838 # 85
/* 00E4D8 8011C838 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00E4DC 8011C83C AFBF001C */  sw          $ra, 0x1c($sp)
/* 00E4E0 8011C840 AFA50034 */  sw          $a1, 0x34($sp)
/* 00E4E4 8011C844 AFA60038 */  sw          $a2, 0x38($sp)
/* 00E4E8 8011C848 8C820054 */  lw          $v0, 0x54($a0)
/* 00E4EC 8011C84C C44C0010 */  lwc1        $f12, 0x10($v0)
/* 00E4F0 8011C850 AFA40030 */  sw          $a0, 0x30($sp)
/* 00E4F4 8011C854 0C00EB2F */  jal         func_8003ACBC
/* 00E4F8 8011C858 AFA2002C */   sw         $v0, 0x2c($sp)
/* 00E4FC 8011C85C C7A40034 */  lwc1        $f4, 0x34($sp)
/* 00E500 8011C860 8FA40030 */  lw          $a0, 0x30($sp)
/* 00E504 8011C864 C7B20038 */  lwc1        $f18, 0x38($sp)
/* 00E508 8011C868 46040182 */  mul.s       $f6, $f0, $f4
/* 00E50C 8011C86C C4880044 */  lwc1        $f8, 0x44($a0)
/* 00E510 8011C870 8FA2002C */  lw          $v0, 0x2c($sp)
/* 00E514 8011C874 46083280 */  add.s       $f10, $f6, $f8
/* 00E518 8011C878 E7AA0020 */  swc1        $f10, 0x20($sp)
/* 00E51C 8011C87C C4900048 */  lwc1        $f16, 0x48($a0)
/* 00E520 8011C880 46128100 */  add.s       $f4, $f16, $f18
/* 00E524 8011C884 E7A40024 */  swc1        $f4, 0x24($sp)
/* 00E528 8011C888 0C00EB6C */  jal         func_8003ADB0
/* 00E52C 8011C88C C44C0010 */   lwc1       $f12, 0x10($v0)
/* 00E530 8011C890 C7A60034 */  lwc1        $f6, 0x34($sp)
/* 00E534 8011C894 8FA40030 */  lw          $a0, 0x30($sp)
/* 00E538 8011C898 24010025 */  addiu       $at, $zero, 0x25
/* 00E53C 8011C89C 46060202 */  mul.s       $f8, $f0, $f6
/* 00E540 8011C8A0 C48A004C */  lwc1        $f10, 0x4c($a0)
/* 00E544 8011C8A4 8FA50020 */  lw          $a1, 0x20($sp)
/* 00E548 8011C8A8 8FA60024 */  lw          $a2, 0x24($sp)
/* 00E54C 8011C8AC 460A4400 */  add.s       $f16, $f8, $f10
/* 00E550 8011C8B0 E7B00028 */  swc1        $f16, 0x28($sp)
/* 00E554 8011C8B4 948E0034 */  lhu         $t6, 0x34($a0)
/* 00E558 8011C8B8 24040004 */  addiu       $a0, $zero, 0x4
/* 00E55C 8011C8BC 8FA70028 */  lw          $a3, 0x28($sp)
/* 00E560 8011C8C0 15C10003 */  bne         $t6, $at, .L8011C8D0
/* 00E564 8011C8C4 00000000 */   nop
/* 00E568 8011C8C8 10000001 */  b           .L8011C8D0
/* 00E56C 8011C8CC 24040003 */   addiu      $a0, $zero, 0x3
.L8011C8D0:
/* 00E570 8011C8D0 0C043D4C */  jal         func_8010F530
/* 00E574 8011C8D4 AFA00010 */   sw         $zero, 0x10($sp)
/* 00E578 8011C8D8 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00E57C 8011C8DC 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00E580 8011C8E0 03E00008 */  jr          $ra
/* 00E584 8011C8E4 00000000 */   nop

glabel func_8011C8E8 # 86
/* 00E588 8011C8E8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00E58C 8011C8EC 3C02800F */  lui         $v0, %hi(D_800F3E20)
/* 00E590 8011C8F0 24423E20 */  addiu       $v0, $v0, %lo(D_800F3E20)
/* 00E594 8011C8F4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E598 8011C8F8 C4840044 */  lwc1        $f4, 0x44($a0)
/* 00E59C 8011C8FC C4460000 */  lwc1        $f6, 0x0($v0)
/* 00E5A0 8011C900 C4500008 */  lwc1        $f16, 0x8($v0)
/* 00E5A4 8011C904 27A50020 */  addiu       $a1, $sp, 0x20
/* 00E5A8 8011C908 46062201 */  sub.s       $f8, $f4, $f6
/* 00E5AC 8011C90C E7A80024 */  swc1        $f8, 0x24($sp)
/* 00E5B0 8011C910 C48A004C */  lwc1        $f10, 0x4c($a0)
/* 00E5B4 8011C914 27A40024 */  addiu       $a0, $sp, 0x24
/* 00E5B8 8011C918 46105481 */  sub.s       $f18, $f10, $f16
/* 00E5BC 8011C91C 0C002F88 */  jal         func_8000BE20
/* 00E5C0 8011C920 E7B20020 */   swc1       $f18, 0x20($sp)
/* 00E5C4 8011C924 C7AC0020 */  lwc1        $f12, 0x20($sp)
/* 00E5C8 8011C928 0C00E6FE */  jal         func_80039BF8
/* 00E5CC 8011C92C C7AE0024 */   lwc1       $f14, 0x24($sp)
/* 00E5D0 8011C930 3C01800F */  lui         $at, %hi(D_800F3E2C)
/* 00E5D4 8011C934 C4243E2C */  lwc1        $f4, %lo(D_800F3E2C)($at)
/* 00E5D8 8011C938 3C01800F */  lui         $at, %hi(D_800F3E38)
/* 00E5DC 8011C93C C4263E38 */  lwc1        $f6, %lo(D_800F3E38)($at)
/* 00E5E0 8011C940 46062200 */  add.s       $f8, $f4, $f6
/* 00E5E4 8011C944 0C00E7ED */  jal         func_80039FB4
/* 00E5E8 8011C948 46004301 */   sub.s      $f12, $f8, $f0
/* 00E5EC 8011C94C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00E5F0 8011C950 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00E5F4 8011C954 03E00008 */  jr          $ra
/* 00E5F8 8011C958 00000000 */   nop

glabel func_8011C95C # 87
/* 00E5FC 8011C95C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00E600 8011C960 3C02800F */  lui         $v0, %hi(D_800F3E20)
/* 00E604 8011C964 24423E20 */  addiu       $v0, $v0, %lo(D_800F3E20)
/* 00E608 8011C968 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E60C 8011C96C C4860044 */  lwc1        $f6, 0x44($a0)
/* 00E610 8011C970 C4440000 */  lwc1        $f4, 0x0($v0)
/* 00E614 8011C974 C44A0008 */  lwc1        $f10, 0x8($v0)
/* 00E618 8011C978 00803025 */  move        $a2, $a0
/* 00E61C 8011C97C 46062201 */  sub.s       $f8, $f4, $f6
/* 00E620 8011C980 27A50020 */  addiu       $a1, $sp, 0x20
/* 00E624 8011C984 E7A80024 */  swc1        $f8, 0x24($sp)
/* 00E628 8011C988 C490004C */  lwc1        $f16, 0x4c($a0)
/* 00E62C 8011C98C AFA60028 */  sw          $a2, 0x28($sp)
/* 00E630 8011C990 27A40024 */  addiu       $a0, $sp, 0x24
/* 00E634 8011C994 46105481 */  sub.s       $f18, $f10, $f16
/* 00E638 8011C998 0C002F88 */  jal         func_8000BE20
/* 00E63C 8011C99C E7B20020 */   swc1       $f18, 0x20($sp)
/* 00E640 8011C9A0 C7AC0020 */  lwc1        $f12, 0x20($sp)
/* 00E644 8011C9A4 0C00E6FE */  jal         func_80039BF8
/* 00E648 8011C9A8 C7AE0024 */   lwc1       $f14, 0x24($sp)
/* 00E64C 8011C9AC 8FAE0028 */  lw          $t6, 0x28($sp)
/* 00E650 8011C9B0 C5C40010 */  lwc1        $f4, 0x10($t6)
/* 00E654 8011C9B4 0C00E7ED */  jal         func_80039FB4
/* 00E658 8011C9B8 46002301 */   sub.s      $f12, $f4, $f0
/* 00E65C 8011C9BC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00E660 8011C9C0 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00E664 8011C9C4 03E00008 */  jr          $ra
/* 00E668 8011C9C8 00000000 */   nop

glabel func_8011C9CC # 88
/* 00E66C 8011C9CC 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00E670 8011C9D0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E674 8011C9D4 AFA40030 */  sw          $a0, 0x30($sp)
/* 00E678 8011C9D8 0C04701F */  jal         func_8011C07C
/* 00E67C 8011C9DC 00A02025 */   move       $a0, $a1
/* 00E680 8011C9E0 14400005 */  bnez        $v0, .L8011C9F8
/* 00E684 8011C9E4 00401825 */   move       $v1, $v0
/* 00E688 8011C9E8 3C01BF80 */  lui         $at, 0xbf80
/* 00E68C 8011C9EC 44810000 */  mtc1        $at, $f0
/* 00E690 8011C9F0 1000002E */  b           .L8011CAAC
/* 00E694 8011C9F4 8FBF0014 */   lw         $ra, 0x14($sp)
.L8011C9F8:
/* 00E698 8011C9F8 8FA20030 */  lw          $v0, 0x30($sp)
/* 00E69C 8011C9FC C4640044 */  lwc1        $f4, 0x44($v1)
/* 00E6A0 8011CA00 27A40028 */  addiu       $a0, $sp, 0x28
/* 00E6A4 8011CA04 C4460044 */  lwc1        $f6, 0x44($v0)
/* 00E6A8 8011CA08 27A50024 */  addiu       $a1, $sp, 0x24
/* 00E6AC 8011CA0C 46062201 */  sub.s       $f8, $f4, $f6
/* 00E6B0 8011CA10 E7A80028 */  swc1        $f8, 0x28($sp)
/* 00E6B4 8011CA14 C46A004C */  lwc1        $f10, 0x4c($v1)
/* 00E6B8 8011CA18 C450004C */  lwc1        $f16, 0x4c($v0)
/* 00E6BC 8011CA1C 46105481 */  sub.s       $f18, $f10, $f16
/* 00E6C0 8011CA20 0C002F88 */  jal         func_8000BE20
/* 00E6C4 8011CA24 E7B20024 */   swc1       $f18, 0x24($sp)
/* 00E6C8 8011CA28 C7AC0024 */  lwc1        $f12, 0x24($sp)
/* 00E6CC 8011CA2C 0C00E6FE */  jal         func_80039BF8
/* 00E6D0 8011CA30 C7AE0028 */   lwc1       $f14, 0x28($sp)
/* 00E6D4 8011CA34 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00E6D8 8011CA38 44806000 */  mtc1        $zero, $f12
/* 00E6DC 8011CA3C 3C0143B4 */  lui         $at, 0x43b4
/* 00E6E0 8011CA40 C5C40010 */  lwc1        $f4, 0x10($t6)
/* 00E6E4 8011CA44 46002081 */  sub.s       $f2, $f4, $f0
/* 00E6E8 8011CA48 460C103C */  c.lt.s      $f2, $f12
/* 00E6EC 8011CA4C 00000000 */  nop
/* 00E6F0 8011CA50 45020009 */  bc1fl       .L8011CA78
/* 00E6F4 8011CA54 3C0143B4 */   lui        $at, 0x43b4
/* 00E6F8 8011CA58 44810000 */  mtc1        $at, $f0
/* 00E6FC 8011CA5C 00000000 */  nop
/* 00E700 8011CA60 46001080 */  add.s       $f2, $f2, $f0
.L8011CA64:
/* 00E704 8011CA64 460C103C */  c.lt.s      $f2, $f12
/* 00E708 8011CA68 00000000 */  nop
/* 00E70C 8011CA6C 4503FFFD */  bc1tl       .L8011CA64
/* 00E710 8011CA70 46001080 */   add.s      $f2, $f2, $f0
/* 00E714 8011CA74 3C0143B4 */  lui         $at, 0x43b4
.L8011CA78:
/* 00E718 8011CA78 44810000 */  mtc1        $at, $f0
/* 00E71C 8011CA7C 00000000 */  nop
/* 00E720 8011CA80 4602003E */  c.le.s      $f0, $f2
/* 00E724 8011CA84 00000000 */  nop
/* 00E728 8011CA88 45020007 */  bc1fl       .L8011CAA8
/* 00E72C 8011CA8C 46001006 */   mov.s      $f0, $f2
/* 00E730 8011CA90 46001081 */  sub.s       $f2, $f2, $f0
.L8011CA94:
/* 00E734 8011CA94 4602003E */  c.le.s      $f0, $f2
/* 00E738 8011CA98 00000000 */  nop
/* 00E73C 8011CA9C 4503FFFD */  bc1tl       .L8011CA94
/* 00E740 8011CAA0 46001081 */   sub.s      $f2, $f2, $f0
/* 00E744 8011CAA4 46001006 */  mov.s       $f0, $f2
.L8011CAA8:
/* 00E748 8011CAA8 8FBF0014 */  lw          $ra, 0x14($sp)
.L8011CAAC:
/* 00E74C 8011CAAC 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00E750 8011CAB0 03E00008 */  jr          $ra
/* 00E754 8011CAB4 00000000 */   nop

glabel func_8011CAB8 # 89
/* 00E758 8011CAB8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00E75C 8011CABC 3C0F8013 */  lui         $t7, %hi(D_8012DF90)
/* 00E760 8011CAC0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E764 8011CAC4 AFA5002C */  sw          $a1, 0x2c($sp)
/* 00E768 8011CAC8 AFA60030 */  sw          $a2, 0x30($sp)
/* 00E76C 8011CACC 25EFDF90 */  addiu       $t7, $t7, %lo(D_8012DF90)
/* 00E770 8011CAD0 8DE10000 */  lw          $at, 0x0($t7)
/* 00E774 8011CAD4 8DE80004 */  lw          $t0, 0x4($t7)
/* 00E778 8011CAD8 27AE0020 */  addiu       $t6, $sp, 0x20
/* 00E77C 8011CADC ADC10000 */  sw          $at, 0x0($t6)
/* 00E780 8011CAE0 0C001A23 */  jal         func_8000688C
/* 00E784 8011CAE4 ADC80004 */   sw         $t0, 0x4($t6)
/* 00E788 8011CAE8 8FA9002C */  lw          $t1, 0x2c($sp)
/* 00E78C 8011CAEC 00402025 */  move        $a0, $v0
/* 00E790 8011CAF0 8FA60030 */  lw          $a2, 0x30($sp)
/* 00E794 8011CAF4 00095080 */  sll         $t2, $t1, 2
/* 00E798 8011CAF8 03AA2821 */  addu        $a1, $sp, $t2
/* 00E79C 8011CAFC 0C008E9E */  jal         func_80023A78
/* 00E7A0 8011CB00 8CA50020 */   lw         $a1, 0x20($a1)
/* 00E7A4 8011CB04 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00E7A8 8011CB08 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00E7AC 8011CB0C 03E00008 */  jr          $ra
/* 00E7B0 8011CB10 00000000 */   nop
/* 00E7B4 8011CB14 00000000 */  nop
/* 00E7B8 8011CB18 00000000 */  nop
/* 00E7BC 8011CB1C 00000000 */  nop
