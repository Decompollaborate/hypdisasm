.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8000C7F0 # 0
/* 00C3A0 8000C7F0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00C3A4 8000C7F4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00C3A8 8000C7F8 C48C0020 */  lwc1        $f12, 0x20($a0)
/* 00C3AC 8000C7FC C48E0014 */  lwc1        $f14, 0x14($a0)
/* 00C3B0 8000C800 3C01800A */  lui         $at, %hi(D_800A0CD0)
/* 00C3B4 8000C804 460C6102 */  mul.s       $f4, $f12, $f12
/* 00C3B8 8000C808 C4280CD0 */  lwc1        $f8, %lo(D_800A0CD0)($at)
/* 00C3BC 8000C80C 3C01800A */  lui         $at, %hi(D_800A0CD4)
/* 00C3C0 8000C810 460E7182 */  mul.s       $f6, $f14, $f14
/* 00C3C4 8000C814 46062000 */  add.s       $f0, $f4, $f6
/* 00C3C8 8000C818 46000004 */  sqrt.s      $f0, $f0
/* 00C3CC 8000C81C 4608003C */  c.lt.s      $f0, $f8
/* 00C3D0 8000C820 46000086 */  mov.s       $f2, $f0
/* 00C3D4 8000C824 4502000A */  bc1fl       .L8000C850
/* 00C3D8 8000C828 46026303 */   div.s      $f12, $f12, $f2
/* 00C3DC 8000C82C C42A0CD4 */  lwc1        $f10, %lo(D_800A0CD4)($at)
/* 00C3E0 8000C830 4600503C */  c.lt.s      $f10, $f0
/* 00C3E4 8000C834 00000000 */  nop
/* 00C3E8 8000C838 45020005 */  bc1fl       .L8000C850
/* 00C3EC 8000C83C 46026303 */   div.s      $f12, $f12, $f2
/* 00C3F0 8000C840 44800000 */  mtc1        $zero, $f0
/* 00C3F4 8000C844 10000005 */  b           .L8000C85C
/* 00C3F8 8000C848 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00C3FC 8000C84C 46026303 */  div.s       $f12, $f12, $f2
.L8000C850:
/* 00C400 8000C850 0C00ECC6 */  jal         func_8003B318
/* 00C404 8000C854 46027383 */   div.s      $f14, $f14, $f2
/* 00C408 8000C858 8FBF0014 */  lw          $ra, 0x14($sp)
.L8000C85C:
/* 00C40C 8000C85C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00C410 8000C860 03E00008 */  jr          $ra
/* 00C414 8000C864 00000000 */   nop

glabel func_8000C868 # 1
/* 00C418 8000C868 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00C41C 8000C86C AFBF0014 */  sw          $ra, 0x14($sp)
/* 00C420 8000C870 C4820004 */  lwc1        $f2, 0x4($a0)
/* 00C424 8000C874 C48C0000 */  lwc1        $f12, 0x0($a0)
/* 00C428 8000C878 C48E0008 */  lwc1        $f14, 0x8($a0)
/* 00C42C 8000C87C 46021102 */  mul.s       $f4, $f2, $f2
/* 00C430 8000C880 44804000 */  mtc1        $zero, $f8
/* 00C434 8000C884 46007387 */  neg.s       $f14, $f14
/* 00C438 8000C888 460C6182 */  mul.s       $f6, $f12, $f12
/* 00C43C 8000C88C 46062000 */  add.s       $f0, $f4, $f6
/* 00C440 8000C890 46000004 */  sqrt.s      $f0, $f0
/* 00C444 8000C894 E7A00018 */  swc1        $f0, 0x18($sp)
/* 00C448 8000C898 C48A0020 */  lwc1        $f10, 0x20($a0)
/* 00C44C 8000C89C 4608503E */  c.le.s      $f10, $f8
/* 00C450 8000C8A0 00000000 */  nop
/* 00C454 8000C8A4 45000003 */  bc1f        .L8000C8B4
/* 00C458 8000C8A8 00000000 */   nop
/* 00C45C 8000C8AC 46000407 */  neg.s       $f16, $f0
/* 00C460 8000C8B0 E7B00018 */  swc1        $f16, 0x18($sp)
.L8000C8B4:
/* 00C464 8000C8B4 0C00ECC6 */  jal         func_8003B318
/* 00C468 8000C8B8 C7AC0018 */   lwc1       $f12, 0x18($sp)
/* 00C46C 8000C8BC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00C470 8000C8C0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00C474 8000C8C4 03E00008 */  jr          $ra
/* 00C478 8000C8C8 00000000 */   nop

glabel func_8000C8CC # 2
/* 00C47C 8000C8CC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00C480 8000C8D0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00C484 8000C8D4 C48C0000 */  lwc1        $f12, 0x0($a0)
/* 00C488 8000C8D8 C48E0004 */  lwc1        $f14, 0x4($a0)
/* 00C48C 8000C8DC 3C01800A */  lui         $at, %hi(D_800A0CD8)
/* 00C490 8000C8E0 460C6102 */  mul.s       $f4, $f12, $f12
/* 00C494 8000C8E4 C4280CD8 */  lwc1        $f8, %lo(D_800A0CD8)($at)
/* 00C498 8000C8E8 3C01800A */  lui         $at, %hi(D_800A0CDC)
/* 00C49C 8000C8EC 460E7182 */  mul.s       $f6, $f14, $f14
/* 00C4A0 8000C8F0 46062000 */  add.s       $f0, $f4, $f6
/* 00C4A4 8000C8F4 46000004 */  sqrt.s      $f0, $f0
/* 00C4A8 8000C8F8 4608003C */  c.lt.s      $f0, $f8
/* 00C4AC 8000C8FC 46000086 */  mov.s       $f2, $f0
/* 00C4B0 8000C900 4502000A */  bc1fl       .L8000C92C
/* 00C4B4 8000C904 46026303 */   div.s      $f12, $f12, $f2
/* 00C4B8 8000C908 C42A0CDC */  lwc1        $f10, %lo(D_800A0CDC)($at)
/* 00C4BC 8000C90C 4600503C */  c.lt.s      $f10, $f0
/* 00C4C0 8000C910 00000000 */  nop
/* 00C4C4 8000C914 45020005 */  bc1fl       .L8000C92C
/* 00C4C8 8000C918 46026303 */   div.s      $f12, $f12, $f2
/* 00C4CC 8000C91C 44800000 */  mtc1        $zero, $f0
/* 00C4D0 8000C920 10000005 */  b           .L8000C938
/* 00C4D4 8000C924 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00C4D8 8000C928 46026303 */  div.s       $f12, $f12, $f2
.L8000C92C:
/* 00C4DC 8000C92C 0C00ECC6 */  jal         func_8003B318
/* 00C4E0 8000C930 46027383 */   div.s      $f14, $f14, $f2
/* 00C4E4 8000C934 8FBF0014 */  lw          $ra, 0x14($sp)
.L8000C938:
/* 00C4E8 8000C938 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00C4EC 8000C93C 03E00008 */  jr          $ra
/* 00C4F0 8000C940 00000000 */   nop

glabel func_8000C944 # 3
/* 00C4F4 8000C944 27BDFF60 */  addiu       $sp, $sp, -0xa0
/* 00C4F8 8000C948 27AE00A8 */  addiu       $t6, $sp, 0xa8
/* 00C4FC 8000C94C AFBF004C */  sw          $ra, 0x4c($sp)
/* 00C500 8000C950 AFA400A0 */  sw          $a0, 0xa0($sp)
/* 00C504 8000C954 AFA600A8 */  sw          $a2, 0xa8($sp)
/* 00C508 8000C958 AFA700AC */  sw          $a3, 0xac($sp)
/* 00C50C 8000C95C 25D8003C */  addiu       $t8, $t6, 0x3c
/* 00C510 8000C960 03A0C825 */  move        $t9, $sp
.L8000C964:
/* 00C514 8000C964 8DC10000 */  lw          $at, 0x0($t6)
/* 00C518 8000C968 25CE000C */  addiu       $t6, $t6, 0xc
/* 00C51C 8000C96C 2739000C */  addiu       $t9, $t9, 0xc
/* 00C520 8000C970 AF21FFF4 */  sw          $at, -0xc($t9)
/* 00C524 8000C974 8DC1FFF8 */  lw          $at, -0x8($t6)
/* 00C528 8000C978 AF21FFF8 */  sw          $at, -0x8($t9)
/* 00C52C 8000C97C 8DC1FFFC */  lw          $at, -0x4($t6)
/* 00C530 8000C980 15D8FFF8 */  bne         $t6, $t8, .L8000C964
/* 00C534 8000C984 AF21FFFC */   sw         $at, -0x4($t9)
/* 00C538 8000C988 8DC10000 */  lw          $at, 0x0($t6)
/* 00C53C 8000C98C 27A8005C */  addiu       $t0, $sp, 0x5c
/* 00C540 8000C990 AF210000 */  sw          $at, 0x0($t9)
/* 00C544 8000C994 8FA7000C */  lw          $a3, 0xc($sp)
/* 00C548 8000C998 8FA60008 */  lw          $a2, 0x8($sp)
/* 00C54C 8000C99C 8FA50004 */  lw          $a1, 0x4($sp)
/* 00C550 8000C9A0 8FA40000 */  lw          $a0, 0x0($sp)
/* 00C554 8000C9A4 0C00E749 */  jal         func_80039D24
/* 00C558 8000C9A8 AFA80040 */   sw         $t0, 0x40($sp)
/* 00C55C 8000C9AC 27A4005C */  addiu       $a0, $sp, 0x5c
/* 00C560 8000C9B0 8FA500A0 */  lw          $a1, 0xa0($sp)
/* 00C564 8000C9B4 0C00FEE4 */  jal         func_8003FB90
/* 00C568 8000C9B8 27A6008C */   addiu      $a2, $sp, 0x8c
/* 00C56C 8000C9BC 0C00E974 */  jal         func_8003A5D0
/* 00C570 8000C9C0 27A4008C */   addiu      $a0, $sp, 0x8c
/* 00C574 8000C9C4 C7A4008C */  lwc1        $f4, 0x8c($sp)
/* 00C578 8000C9C8 3C014300 */  lui         $at, 0x4300
/* 00C57C 8000C9CC 44814000 */  mtc1        $at, $f8
/* 00C580 8000C9D0 46002183 */  div.s       $f6, $f4, $f0
/* 00C584 8000C9D4 46000086 */  mov.s       $f2, $f0
/* 00C588 8000C9D8 C7AC00F0 */  lwc1        $f12, 0xf0($sp)
/* 00C58C 8000C9DC 8FA600F4 */  lw          $a2, 0xf4($sp)
/* 00C590 8000C9E0 3C0742A0 */  lui         $a3, 0x42a0
/* 00C594 8000C9E4 46083282 */  mul.s       $f10, $f6, $f8
/* 00C598 8000C9E8 4600540D */  trunc.w.s   $f16, $f10
/* 00C59C 8000C9EC 44038000 */  mfc1        $v1, $f16
/* 00C5A0 8000C9F0 00000000 */  nop
/* 00C5A4 8000C9F4 2861FF80 */  slti        $at, $v1, -0x80
/* 00C5A8 8000C9F8 10200003 */  beqz        $at, .L8000CA08
/* 00C5AC 8000C9FC 00601025 */   move       $v0, $v1
/* 00C5B0 8000CA00 10000005 */  b           .L8000CA18
/* 00C5B4 8000CA04 2402FF80 */   addiu      $v0, $zero, -0x80
.L8000CA08:
/* 00C5B8 8000CA08 28610080 */  slti        $at, $v1, 0x80
/* 00C5BC 8000CA0C 54200003 */  bnel        $at, $zero, .L8000CA1C
/* 00C5C0 8000CA10 3C014380 */   lui        $at, 0x4380
/* 00C5C4 8000CA14 2402007F */  addiu       $v0, $zero, 0x7f
.L8000CA18:
/* 00C5C8 8000CA18 3C014380 */  lui         $at, 0x4380
.L8000CA1C:
/* 00C5CC 8000CA1C 24420080 */  addiu       $v0, $v0, 0x80
/* 00C5D0 8000CA20 44817000 */  mtc1        $at, $f14
/* 00C5D4 8000CA24 AFA2009C */  sw          $v0, 0x9c($sp)
/* 00C5D8 8000CA28 0C00EA85 */  jal         func_8003AA14
/* 00C5DC 8000CA2C E7A20010 */   swc1       $f2, 0x10($sp)
/* 00C5E0 8000CA30 4600048D */  trunc.w.s   $f18, $f0
/* 00C5E4 8000CA34 8FAC00E8 */  lw          $t4, 0xe8($sp)
/* 00C5E8 8000CA38 8FA2009C */  lw          $v0, 0x9c($sp)
/* 00C5EC 8000CA3C 440B9000 */  mfc1        $t3, $f18
/* 00C5F0 8000CA40 00000000 */  nop
/* 00C5F4 8000CA44 AD8B0000 */  sw          $t3, 0x0($t4)
/* 00C5F8 8000CA48 8FAD00EC */  lw          $t5, 0xec($sp)
/* 00C5FC 8000CA4C ADA20000 */  sw          $v0, 0x0($t5)
/* 00C600 8000CA50 8FBF004C */  lw          $ra, 0x4c($sp)
/* 00C604 8000CA54 27BD00A0 */  addiu       $sp, $sp, 0xa0
/* 00C608 8000CA58 03E00008 */  jr          $ra
/* 00C60C 8000CA5C 00000000 */   nop

glabel func_8000CA60 # 4
/* 00C610 8000CA60 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00C614 8000CA64 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00C618 8000CA68 C4840000 */  lwc1        $f4, 0x0($a0)
/* 00C61C 8000CA6C 46002187 */  neg.s       $f6, $f4
/* 00C620 8000CA70 E7A6001C */  swc1        $f6, 0x1c($sp)
/* 00C624 8000CA74 C4880004 */  lwc1        $f8, 0x4($a0)
/* 00C628 8000CA78 46004287 */  neg.s       $f10, $f8
/* 00C62C 8000CA7C E7AA0020 */  swc1        $f10, 0x20($sp)
/* 00C630 8000CA80 C4900008 */  lwc1        $f16, 0x8($a0)
/* 00C634 8000CA84 27A4001C */  addiu       $a0, $sp, 0x1c
/* 00C638 8000CA88 46008487 */  neg.s       $f18, $f16
/* 00C63C 8000CA8C 0C00EFE8 */  jal         func_8003BFA0
/* 00C640 8000CA90 E7B20024 */   swc1       $f18, 0x24($sp)
/* 00C644 8000CA94 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00C648 8000CA98 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00C64C 8000CA9C 03E00008 */  jr          $ra
/* 00C650 8000CAA0 00000000 */   nop

glabel func_8000CAA4 # 5
/* 00C654 8000CAA4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00C658 8000CAA8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00C65C 8000CAAC C48E0000 */  lwc1        $f14, 0x0($a0)
/* 00C660 8000CAB0 C48C0008 */  lwc1        $f12, 0x8($a0)
/* 00C664 8000CAB4 3C01800A */  lui         $at, %hi(D_800A0CE0)
/* 00C668 8000CAB8 460E7102 */  mul.s       $f4, $f14, $f14
/* 00C66C 8000CABC C4280CE0 */  lwc1        $f8, %lo(D_800A0CE0)($at)
/* 00C670 8000CAC0 3C01800A */  lui         $at, %hi(D_800A0CE4)
/* 00C674 8000CAC4 460C6182 */  mul.s       $f6, $f12, $f12
/* 00C678 8000CAC8 46062000 */  add.s       $f0, $f4, $f6
/* 00C67C 8000CACC 46000004 */  sqrt.s      $f0, $f0
/* 00C680 8000CAD0 4608003C */  c.lt.s      $f0, $f8
/* 00C684 8000CAD4 46000086 */  mov.s       $f2, $f0
/* 00C688 8000CAD8 4502000A */  bc1fl       .L8000CB04
/* 00C68C 8000CADC 46027383 */   div.s      $f14, $f14, $f2
/* 00C690 8000CAE0 C42A0CE4 */  lwc1        $f10, %lo(D_800A0CE4)($at)
/* 00C694 8000CAE4 4600503C */  c.lt.s      $f10, $f0
/* 00C698 8000CAE8 00000000 */  nop
/* 00C69C 8000CAEC 45020005 */  bc1fl       .L8000CB04
/* 00C6A0 8000CAF0 46027383 */   div.s      $f14, $f14, $f2
/* 00C6A4 8000CAF4 44800000 */  mtc1        $zero, $f0
/* 00C6A8 8000CAF8 10000005 */  b           .L8000CB10
/* 00C6AC 8000CAFC 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00C6B0 8000CB00 46027383 */  div.s       $f14, $f14, $f2
.L8000CB04:
/* 00C6B4 8000CB04 0C00ECC6 */  jal         func_8003B318
/* 00C6B8 8000CB08 46026303 */   div.s      $f12, $f12, $f2
/* 00C6BC 8000CB0C 8FBF0014 */  lw          $ra, 0x14($sp)
.L8000CB10:
/* 00C6C0 8000CB10 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00C6C4 8000CB14 03E00008 */  jr          $ra
/* 00C6C8 8000CB18 00000000 */   nop

glabel func_8000CB1C # 6
/* 00C6CC 8000CB1C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00C6D0 8000CB20 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00C6D4 8000CB24 0C0032A9 */  jal         func_8000CAA4
/* 00C6D8 8000CB28 00000000 */   nop
/* 00C6DC 8000CB2C 3C0142B4 */  lui         $at, 0x42b4
/* 00C6E0 8000CB30 44816000 */  mtc1        $at, $f12
/* 00C6E4 8000CB34 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00C6E8 8000CB38 3C0143B4 */  lui         $at, 0x43b4
/* 00C6EC 8000CB3C 460C003C */  c.lt.s      $f0, $f12
/* 00C6F0 8000CB40 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00C6F4 8000CB44 460C0081 */  sub.s       $f2, $f0, $f12
/* 00C6F8 8000CB48 4502000A */  bc1fl       .L8000CB74
/* 00C6FC 8000CB4C 3C0143B4 */   lui        $at, 0x43b4
/* 00C700 8000CB50 44806000 */  mtc1        $zero, $f12
/* 00C704 8000CB54 44810000 */  mtc1        $at, $f0
/* 00C708 8000CB58 00000000 */  nop
/* 00C70C 8000CB5C 46001080 */  add.s       $f2, $f2, $f0
.L8000CB60:
/* 00C710 8000CB60 460C103C */  c.lt.s      $f2, $f12
/* 00C714 8000CB64 00000000 */  nop
/* 00C718 8000CB68 4503FFFD */  bc1tl       .L8000CB60
/* 00C71C 8000CB6C 46001080 */   add.s      $f2, $f2, $f0
/* 00C720 8000CB70 3C0143B4 */  lui         $at, 0x43b4
.L8000CB74:
/* 00C724 8000CB74 44810000 */  mtc1        $at, $f0
/* 00C728 8000CB78 00000000 */  nop
/* 00C72C 8000CB7C 4602003E */  c.le.s      $f0, $f2
/* 00C730 8000CB80 00000000 */  nop
/* 00C734 8000CB84 45000006 */  bc1f        .L8000CBA0
/* 00C738 8000CB88 00000000 */   nop
/* 00C73C 8000CB8C 46001081 */  sub.s       $f2, $f2, $f0
.L8000CB90:
/* 00C740 8000CB90 4602003E */  c.le.s      $f0, $f2
/* 00C744 8000CB94 00000000 */  nop
/* 00C748 8000CB98 4503FFFD */  bc1tl       .L8000CB90
/* 00C74C 8000CB9C 46001081 */   sub.s      $f2, $f2, $f0
.L8000CBA0:
/* 00C750 8000CBA0 03E00008 */  jr          $ra
/* 00C754 8000CBA4 46001006 */   mov.s      $f0, $f2

glabel func_8000CBA8 # 7
/* 00C758 8000CBA8 3C013F80 */  lui         $at, 0x3f80
/* 00C75C 8000CBAC 44811000 */  mtc1        $at, $f2
/* 00C760 8000CBB0 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 00C764 8000CBB4 C424E4E4 */  lwc1        $f4, %lo(D_800AE4E4)($at)
/* 00C768 8000CBB8 3C014270 */  lui         $at, 0x4270
/* 00C76C 8000CBBC 44813000 */  mtc1        $at, $f6
/* 00C770 8000CBC0 27BDFF78 */  addiu       $sp, $sp, -0x88
/* 00C774 8000CBC4 F7BC0040 */  sdc1        $f28, 0x40($sp)
/* 00C778 8000CBC8 46062002 */  mul.s       $f0, $f4, $f6
/* 00C77C 8000CBCC 4486E000 */  mtc1        $a2, $f28
/* 00C780 8000CBD0 AFB20050 */  sw          $s2, 0x50($sp)
/* 00C784 8000CBD4 AFB00048 */  sw          $s0, 0x48($sp)
/* 00C788 8000CBD8 00A08025 */  move        $s0, $a1
/* 00C78C 8000CBDC 00809025 */  move        $s2, $a0
/* 00C790 8000CBE0 AFBF005C */  sw          $ra, 0x5c($sp)
/* 00C794 8000CBE4 4600103C */  c.lt.s      $f2, $f0
/* 00C798 8000CBE8 AFB40058 */  sw          $s4, 0x58($sp)
/* 00C79C 8000CBEC AFB30054 */  sw          $s3, 0x54($sp)
/* 00C7A0 8000CBF0 AFB1004C */  sw          $s1, 0x4c($sp)
/* 00C7A4 8000CBF4 F7BA0038 */  sdc1        $f26, 0x38($sp)
/* 00C7A8 8000CBF8 F7B80030 */  sdc1        $f24, 0x30($sp)
/* 00C7AC 8000CBFC F7B60028 */  sdc1        $f22, 0x28($sp)
/* 00C7B0 8000CC00 45000005 */  bc1f        .L8000CC18
/* 00C7B4 8000CC04 F7B40020 */   sdc1       $f20, 0x20($sp)
/* 00C7B8 8000CC08 4600020D */  trunc.w.s   $f8, $f0
/* 00C7BC 8000CC0C 44144000 */  mfc1        $s4, $f8
/* 00C7C0 8000CC10 10000005 */  b           .L8000CC28
/* 00C7C4 8000CC14 44949000 */   mtc1       $s4, $f18
.L8000CC18:
/* 00C7C8 8000CC18 4600128D */  trunc.w.s   $f10, $f2
/* 00C7CC 8000CC1C 44145000 */  mfc1        $s4, $f10
/* 00C7D0 8000CC20 00000000 */  nop
/* 00C7D4 8000CC24 44949000 */  mtc1        $s4, $f18
.L8000CC28:
/* 00C7D8 8000CC28 3C01800A */  lui         $at, %hi(D_800A0CE8)
/* 00C7DC 8000CC2C C4300CE8 */  lwc1        $f16, %lo(D_800A0CE8)($at)
/* 00C7E0 8000CC30 46809120 */  cvt.s.w     $f4, $f18
/* 00C7E4 8000CC34 3C0142C8 */  lui         $at, 0x42c8
/* 00C7E8 8000CC38 00008825 */  move        $s1, $zero
/* 00C7EC 8000CC3C 46048683 */  div.s       $f26, $f16, $f4
/* 00C7F0 8000CC40 461AE702 */  mul.s       $f28, $f28, $f26
/* 00C7F4 8000CC44 5A80003A */  blezl       $s4, .L8000CD30
/* 00C7F8 8000CC48 00001025 */   move       $v0, $zero
/* 00C7FC 8000CC4C 4481C000 */  mtc1        $at, $f24
/* 00C800 8000CC50 3C013F80 */  lui         $at, 0x3f80
/* 00C804 8000CC54 4481B000 */  mtc1        $at, $f22
/* 00C808 8000CC58 27B3007C */  addiu       $s3, $sp, 0x7c
.L8000CC5C:
/* 00C80C 8000CC5C C6460000 */  lwc1        $f6, 0x0($s2)
/* 00C810 8000CC60 C6080000 */  lwc1        $f8, 0x0($s0)
/* 00C814 8000CC64 02602025 */  move        $a0, $s3
/* 00C818 8000CC68 46083281 */  sub.s       $f10, $f6, $f8
/* 00C81C 8000CC6C E7AA007C */  swc1        $f10, 0x7c($sp)
/* 00C820 8000CC70 C6100004 */  lwc1        $f16, 0x4($s0)
/* 00C824 8000CC74 C6520004 */  lwc1        $f18, 0x4($s2)
/* 00C828 8000CC78 46109101 */  sub.s       $f4, $f18, $f16
/* 00C82C 8000CC7C E7A40080 */  swc1        $f4, 0x80($sp)
/* 00C830 8000CC80 C6080008 */  lwc1        $f8, 0x8($s0)
/* 00C834 8000CC84 C6460008 */  lwc1        $f6, 0x8($s2)
/* 00C838 8000CC88 46083281 */  sub.s       $f10, $f6, $f8
/* 00C83C 8000CC8C 0C00E974 */  jal         func_8003A5D0
/* 00C840 8000CC90 E7AA0084 */   swc1       $f10, 0x84($sp)
/* 00C844 8000CC94 4616003E */  c.le.s      $f0, $f22
/* 00C848 8000CC98 46000506 */  mov.s       $f20, $f0
/* 00C84C 8000CC9C 4502000A */  bc1fl       .L8000CCC8
/* 00C850 8000CCA0 4406C000 */   mfc1       $a2, $f24
/* 00C854 8000CCA4 C6520000 */  lwc1        $f18, 0x0($s2)
/* 00C858 8000CCA8 2402FFFF */  addiu       $v0, $zero, -0x1
/* 00C85C 8000CCAC E6120000 */  swc1        $f18, 0x0($s0)
/* 00C860 8000CCB0 C6500004 */  lwc1        $f16, 0x4($s2)
/* 00C864 8000CCB4 E6100004 */  swc1        $f16, 0x4($s0)
/* 00C868 8000CCB8 C6440008 */  lwc1        $f4, 0x8($s2)
/* 00C86C 8000CCBC 1000001C */  b           .L8000CD30
/* 00C870 8000CCC0 E6040008 */   swc1       $f4, 0x8($s0)
/* 00C874 8000CCC4 4406C000 */  mfc1        $a2, $f24
.L8000CCC8:
/* 00C878 8000CCC8 4407E000 */  mfc1        $a3, $f28
/* 00C87C 8000CCCC 4600B306 */  mov.s       $f12, $f22
/* 00C880 8000CCD0 4600D386 */  mov.s       $f14, $f26
/* 00C884 8000CCD4 0C00EA85 */  jal         func_8003AA14
/* 00C888 8000CCD8 E7B40010 */   swc1       $f20, 0x10($sp)
/* 00C88C 8000CCDC 46000306 */  mov.s       $f12, $f0
/* 00C890 8000CCE0 4600A004 */  sqrt.s      $f0, $f20
/* 00C894 8000CCE4 C7A8007C */  lwc1        $f8, 0x7c($sp)
/* 00C898 8000CCE8 C6060000 */  lwc1        $f6, 0x0($s0)
/* 00C89C 8000CCEC C6100004 */  lwc1        $f16, 0x4($s0)
/* 00C8A0 8000CCF0 26310001 */  addiu       $s1, $s1, 0x1
/* 00C8A4 8000CCF4 46006083 */  div.s       $f2, $f12, $f0
/* 00C8A8 8000CCF8 46024282 */  mul.s       $f10, $f8, $f2
/* 00C8AC 8000CCFC 460A3480 */  add.s       $f18, $f6, $f10
/* 00C8B0 8000CD00 C60A0008 */  lwc1        $f10, 0x8($s0)
/* 00C8B4 8000CD04 E6120000 */  swc1        $f18, 0x0($s0)
/* 00C8B8 8000CD08 C7A40080 */  lwc1        $f4, 0x80($sp)
/* 00C8BC 8000CD0C 46022202 */  mul.s       $f8, $f4, $f2
/* 00C8C0 8000CD10 46088180 */  add.s       $f6, $f16, $f8
/* 00C8C4 8000CD14 E6060004 */  swc1        $f6, 0x4($s0)
/* 00C8C8 8000CD18 C7B20084 */  lwc1        $f18, 0x84($sp)
/* 00C8CC 8000CD1C 46029102 */  mul.s       $f4, $f18, $f2
/* 00C8D0 8000CD20 46045400 */  add.s       $f16, $f10, $f4
/* 00C8D4 8000CD24 1634FFCD */  bne         $s1, $s4, .L8000CC5C
/* 00C8D8 8000CD28 E6100008 */   swc1       $f16, 0x8($s0)
/* 00C8DC 8000CD2C 00001025 */  move        $v0, $zero
.L8000CD30:
/* 00C8E0 8000CD30 8FBF005C */  lw          $ra, 0x5c($sp)
/* 00C8E4 8000CD34 D7B40020 */  ldc1        $f20, 0x20($sp)
/* 00C8E8 8000CD38 D7B60028 */  ldc1        $f22, 0x28($sp)
/* 00C8EC 8000CD3C D7B80030 */  ldc1        $f24, 0x30($sp)
/* 00C8F0 8000CD40 D7BA0038 */  ldc1        $f26, 0x38($sp)
/* 00C8F4 8000CD44 D7BC0040 */  ldc1        $f28, 0x40($sp)
/* 00C8F8 8000CD48 8FB00048 */  lw          $s0, 0x48($sp)
/* 00C8FC 8000CD4C 8FB1004C */  lw          $s1, 0x4c($sp)
/* 00C900 8000CD50 8FB20050 */  lw          $s2, 0x50($sp)
/* 00C904 8000CD54 8FB30054 */  lw          $s3, 0x54($sp)
/* 00C908 8000CD58 8FB40058 */  lw          $s4, 0x58($sp)
/* 00C90C 8000CD5C 03E00008 */  jr          $ra
/* 00C910 8000CD60 27BD0088 */   addiu      $sp, $sp, 0x88

glabel func_8000CD64 # 8
/* 00C914 8000CD64 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00C918 8000CD68 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00C91C 8000CD6C AFA5002C */  sw          $a1, 0x2c($sp)
/* 00C920 8000CD70 AFA60030 */  sw          $a2, 0x30($sp)
/* 00C924 8000CD74 C4840000 */  lwc1        $f4, 0x0($a0)
/* 00C928 8000CD78 E7A4001C */  swc1        $f4, 0x1c($sp)
/* 00C92C 8000CD7C C4860004 */  lwc1        $f6, 0x4($a0)
/* 00C930 8000CD80 E7A60020 */  swc1        $f6, 0x20($sp)
/* 00C934 8000CD84 C4880008 */  lwc1        $f8, 0x8($a0)
/* 00C938 8000CD88 27A4001C */  addiu       $a0, $sp, 0x1c
/* 00C93C 8000CD8C 0C00E9F0 */  jal         func_8003A7C0
/* 00C940 8000CD90 E7A80024 */   swc1       $f8, 0x24($sp)
/* 00C944 8000CD94 44801000 */  mtc1        $zero, $f2
/* 00C948 8000CD98 8FA20030 */  lw          $v0, 0x30($sp)
/* 00C94C 8000CD9C 8FAE002C */  lw          $t6, 0x2c($sp)
/* 00C950 8000CDA0 46020032 */  c.eq.s      $f0, $f2
/* 00C954 8000CDA4 00000000 */  nop
/* 00C958 8000CDA8 45000004 */  bc1f        .L8000CDBC
/* 00C95C 8000CDAC 00000000 */   nop
/* 00C960 8000CDB0 E5C20000 */  swc1        $f2, 0x0($t6)
/* 00C964 8000CDB4 10000016 */  b           .L8000CE10
/* 00C968 8000CDB8 E4420000 */   swc1       $f2, 0x0($v0)
.L8000CDBC:
/* 00C96C 8000CDBC 0C0032A9 */  jal         func_8000CAA4
/* 00C970 8000CDC0 27A4001C */   addiu      $a0, $sp, 0x1c
/* 00C974 8000CDC4 8FAF002C */  lw          $t7, 0x2c($sp)
/* 00C978 8000CDC8 E5E00000 */  swc1        $f0, 0x0($t7)
/* 00C97C 8000CDCC C7A0001C */  lwc1        $f0, 0x1c($sp)
/* 00C980 8000CDD0 C7AE0020 */  lwc1        $f14, 0x20($sp)
/* 00C984 8000CDD4 0C00ECC6 */  jal         func_8003B318
/* 00C988 8000CDD8 46000305 */   abs.s      $f12, $f0
/* 00C98C 8000CDDC 3C0143B4 */  lui         $at, 0x43b4
/* 00C990 8000CDE0 44816000 */  mtc1        $at, $f12
/* 00C994 8000CDE4 3C014334 */  lui         $at, 0x4334
/* 00C998 8000CDE8 44815000 */  mtc1        $at, $f10
/* 00C99C 8000CDEC 46006081 */  sub.s       $f2, $f12, $f0
/* 00C9A0 8000CDF0 8FA20030 */  lw          $v0, 0x30($sp)
/* 00C9A4 8000CDF4 4602503E */  c.le.s      $f10, $f2
/* 00C9A8 8000CDF8 E4420000 */  swc1        $f2, 0x0($v0)
/* 00C9AC 8000CDFC 45020005 */  bc1fl       .L8000CE14
/* 00C9B0 8000CE00 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00C9B4 8000CE04 C4500000 */  lwc1        $f16, 0x0($v0)
/* 00C9B8 8000CE08 460C8481 */  sub.s       $f18, $f16, $f12
/* 00C9BC 8000CE0C E4520000 */  swc1        $f18, 0x0($v0)
.L8000CE10:
/* 00C9C0 8000CE10 8FBF0014 */  lw          $ra, 0x14($sp)
.L8000CE14:
/* 00C9C4 8000CE14 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00C9C8 8000CE18 03E00008 */  jr          $ra
/* 00C9CC 8000CE1C 00000000 */   nop

glabel func_8000CE20 # 9
/* 00C9D0 8000CE20 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00C9D4 8000CE24 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00C9D8 8000CE28 E7AC0028 */  swc1        $f12, 0x28($sp)
/* 00C9DC 8000CE2C E7AE002C */  swc1        $f14, 0x2c($sp)
/* 00C9E0 8000CE30 AFA60030 */  sw          $a2, 0x30($sp)
/* 00C9E4 8000CE34 0C00F134 */  jal         func_8003C4D0
/* 00C9E8 8000CE38 C7AC0028 */   lwc1       $f12, 0x28($sp)
/* 00C9EC 8000CE3C E7A00024 */  swc1        $f0, 0x24($sp)
/* 00C9F0 8000CE40 0C00F0F7 */  jal         func_8003C3DC
/* 00C9F4 8000CE44 C7AC0028 */   lwc1       $f12, 0x28($sp)
/* 00C9F8 8000CE48 E7A00020 */  swc1        $f0, 0x20($sp)
/* 00C9FC 8000CE4C 0C00F134 */  jal         func_8003C4D0
/* 00CA00 8000CE50 C7AC002C */   lwc1       $f12, 0x2c($sp)
/* 00CA04 8000CE54 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 00CA08 8000CE58 0C00F0F7 */  jal         func_8003C3DC
/* 00CA0C 8000CE5C C7AC002C */   lwc1       $f12, 0x2c($sp)
/* 00CA10 8000CE60 C7A20024 */  lwc1        $f2, 0x24($sp)
/* 00CA14 8000CE64 C7A4001C */  lwc1        $f4, 0x1c($sp)
/* 00CA18 8000CE68 8FA20030 */  lw          $v0, 0x30($sp)
/* 00CA1C 8000CE6C 46041182 */  mul.s       $f6, $f2, $f4
/* 00CA20 8000CE70 00000000 */  nop
/* 00CA24 8000CE74 46001202 */  mul.s       $f8, $f2, $f0
/* 00CA28 8000CE78 E4460000 */  swc1        $f6, 0x0($v0)
/* 00CA2C 8000CE7C E4480004 */  swc1        $f8, 0x4($v0)
/* 00CA30 8000CE80 C7AA0020 */  lwc1        $f10, 0x20($sp)
/* 00CA34 8000CE84 46005407 */  neg.s       $f16, $f10
/* 00CA38 8000CE88 E4500008 */  swc1        $f16, 0x8($v0)
/* 00CA3C 8000CE8C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00CA40 8000CE90 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00CA44 8000CE94 03E00008 */  jr          $ra
/* 00CA48 8000CE98 00000000 */   nop

glabel func_8000CE9C # 10
/* 00CA4C 8000CE9C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00CA50 8000CEA0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00CA54 8000CEA4 E7AC0028 */  swc1        $f12, 0x28($sp)
/* 00CA58 8000CEA8 E7AE002C */  swc1        $f14, 0x2c($sp)
/* 00CA5C 8000CEAC AFA60030 */  sw          $a2, 0x30($sp)
/* 00CA60 8000CEB0 0C00F134 */  jal         func_8003C4D0
/* 00CA64 8000CEB4 C7AC0028 */   lwc1       $f12, 0x28($sp)
/* 00CA68 8000CEB8 E7A00024 */  swc1        $f0, 0x24($sp)
/* 00CA6C 8000CEBC 0C00F0F7 */  jal         func_8003C3DC
/* 00CA70 8000CEC0 C7AC0028 */   lwc1       $f12, 0x28($sp)
/* 00CA74 8000CEC4 E7A00020 */  swc1        $f0, 0x20($sp)
/* 00CA78 8000CEC8 0C00F134 */  jal         func_8003C4D0
/* 00CA7C 8000CECC C7AC002C */   lwc1       $f12, 0x2c($sp)
/* 00CA80 8000CED0 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 00CA84 8000CED4 0C00F0F7 */  jal         func_8003C3DC
/* 00CA88 8000CED8 C7AC002C */   lwc1       $f12, 0x2c($sp)
/* 00CA8C 8000CEDC C7A20024 */  lwc1        $f2, 0x24($sp)
/* 00CA90 8000CEE0 8FA20030 */  lw          $v0, 0x30($sp)
/* 00CA94 8000CEE4 46001102 */  mul.s       $f4, $f2, $f0
/* 00CA98 8000CEE8 E4440000 */  swc1        $f4, 0x0($v0)
/* 00CA9C 8000CEEC C7A60020 */  lwc1        $f6, 0x20($sp)
/* 00CAA0 8000CEF0 46003207 */  neg.s       $f8, $f6
/* 00CAA4 8000CEF4 E4480004 */  swc1        $f8, 0x4($v0)
/* 00CAA8 8000CEF8 C7AA001C */  lwc1        $f10, 0x1c($sp)
/* 00CAAC 8000CEFC 460A1402 */  mul.s       $f16, $f2, $f10
/* 00CAB0 8000CF00 E4500008 */  swc1        $f16, 0x8($v0)
/* 00CAB4 8000CF04 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00CAB8 8000CF08 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00CABC 8000CF0C 03E00008 */  jr          $ra
/* 00CAC0 8000CF10 00000000 */   nop

glabel func_8000CF14 # 11
/* 00CAC4 8000CF14 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 00CAC8 8000CF18 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00CACC 8000CF1C AFA5003C */  sw          $a1, 0x3c($sp)
/* 00CAD0 8000CF20 AFA70044 */  sw          $a3, 0x44($sp)
/* 00CAD4 8000CF24 C48E0000 */  lwc1        $f14, 0x0($a0)
/* 00CAD8 8000CF28 C4900004 */  lwc1        $f16, 0x4($a0)
/* 00CADC 8000CF2C C4820008 */  lwc1        $f2, 0x8($a0)
/* 00CAE0 8000CF30 460E7102 */  mul.s       $f4, $f14, $f14
/* 00CAE4 8000CF34 3C01800A */  lui         $at, %hi(D_800A0CEC)
/* 00CAE8 8000CF38 46108182 */  mul.s       $f6, $f16, $f16
/* 00CAEC 8000CF3C 46062200 */  add.s       $f8, $f4, $f6
/* 00CAF0 8000CF40 46021282 */  mul.s       $f10, $f2, $f2
/* 00CAF4 8000CF44 C4240CEC */  lwc1        $f4, %lo(D_800A0CEC)($at)
/* 00CAF8 8000CF48 3C01800A */  lui         $at, %hi(D_800A0CF0)
/* 00CAFC 8000CF4C 460A4000 */  add.s       $f0, $f8, $f10
/* 00CB00 8000CF50 46000004 */  sqrt.s      $f0, $f0
/* 00CB04 8000CF54 4604003C */  c.lt.s      $f0, $f4
/* 00CB08 8000CF58 00000000 */  nop
/* 00CB0C 8000CF5C 4502000D */  bc1fl       .L8000CF94
/* 00CB10 8000CF60 3C013F80 */   lui        $at, 0x3f80
/* 00CB14 8000CF64 C4260CF0 */  lwc1        $f6, %lo(D_800A0CF0)($at)
/* 00CB18 8000CF68 3C013F80 */  lui         $at, 0x3f80
/* 00CB1C 8000CF6C 4600303C */  c.lt.s      $f6, $f0
/* 00CB20 8000CF70 00000000 */  nop
/* 00CB24 8000CF74 45020007 */  bc1fl       .L8000CF94
/* 00CB28 8000CF78 3C013F80 */   lui        $at, 0x3f80
/* 00CB2C 8000CF7C 44817000 */  mtc1        $at, $f14
/* 00CB30 8000CF80 44801000 */  mtc1        $zero, $f2
/* 00CB34 8000CF84 44808000 */  mtc1        $zero, $f16
/* 00CB38 8000CF88 1000000B */  b           .L8000CFB8
/* 00CB3C 8000CF8C 00000000 */   nop
/* 00CB40 8000CF90 3C013F80 */  lui         $at, 0x3f80
.L8000CF94:
/* 00CB44 8000CF94 44814000 */  mtc1        $at, $f8
/* 00CB48 8000CF98 00000000 */  nop
/* 00CB4C 8000CF9C 46004303 */  div.s       $f12, $f8, $f0
/* 00CB50 8000CFA0 460C7382 */  mul.s       $f14, $f14, $f12
/* 00CB54 8000CFA4 00000000 */  nop
/* 00CB58 8000CFA8 460C8402 */  mul.s       $f16, $f16, $f12
/* 00CB5C 8000CFAC 00000000 */  nop
/* 00CB60 8000CFB0 460C1082 */  mul.s       $f2, $f2, $f12
/* 00CB64 8000CFB4 00000000 */  nop
.L8000CFB8:
/* 00CB68 8000CFB8 3C01800A */  lui         $at, %hi(D_800A0CF4)
/* 00CB6C 8000CFBC C42A0CF4 */  lwc1        $f10, %lo(D_800A0CF4)($at)
/* 00CB70 8000CFC0 46001007 */  neg.s       $f0, $f2
/* 00CB74 8000CFC4 3C01800A */  lui         $at, %hi(D_800A0CF8)
/* 00CB78 8000CFC8 4600503E */  c.le.s      $f10, $f0
/* 00CB7C 8000CFCC 46000486 */  mov.s       $f18, $f0
/* 00CB80 8000CFD0 45030008 */  bc1tl       .L8000CFF4
/* 00CB84 8000CFD4 44803000 */   mtc1       $zero, $f6
/* 00CB88 8000CFD8 C4240CF8 */  lwc1        $f4, %lo(D_800A0CF8)($at)
/* 00CB8C 8000CFDC 3C01BF80 */  lui         $at, 0xbf80
/* 00CB90 8000CFE0 4604003E */  c.le.s      $f0, $f4
/* 00CB94 8000CFE4 00000000 */  nop
/* 00CB98 8000CFE8 45020013 */  bc1fl       .L8000D038
/* 00CB9C 8000CFEC 44811000 */   mtc1       $at, $f2
/* 00CBA0 8000CFF0 44803000 */  mtc1        $zero, $f6
.L8000CFF4:
/* 00CBA4 8000CFF4 3C014387 */  lui         $at, 0x4387
/* 00CBA8 8000CFF8 4600303C */  c.lt.s      $f6, $f0
/* 00CBAC 8000CFFC 00000000 */  nop
/* 00CBB0 8000D000 45020006 */  bc1fl       .L8000D01C
/* 00CBB4 8000D004 44815000 */   mtc1       $at, $f10
/* 00CBB8 8000D008 3C0142B4 */  lui         $at, 0x42b4
/* 00CBBC 8000D00C 44814000 */  mtc1        $at, $f8
/* 00CBC0 8000D010 10000004 */  b           .L8000D024
/* 00CBC4 8000D014 E4C80000 */   swc1       $f8, 0x0($a2)
/* 00CBC8 8000D018 44815000 */  mtc1        $at, $f10
.L8000D01C:
/* 00CBCC 8000D01C 00000000 */  nop
/* 00CBD0 8000D020 E4CA0000 */  swc1        $f10, 0x0($a2)
.L8000D024:
/* 00CBD4 8000D024 C7A4003C */  lwc1        $f4, 0x3c($sp)
/* 00CBD8 8000D028 8FAE0044 */  lw          $t6, 0x44($sp)
/* 00CBDC 8000D02C 1000003F */  b           .L8000D12C
/* 00CBE0 8000D030 E5C40000 */   swc1       $f4, 0x0($t6)
/* 00CBE4 8000D034 44811000 */  mtc1        $at, $f2
.L8000D038:
/* 00CBE8 8000D038 3C013F80 */  lui         $at, 0x3f80
/* 00CBEC 8000D03C 4602003C */  c.lt.s      $f0, $f2
/* 00CBF0 8000D040 00000000 */  nop
/* 00CBF4 8000D044 45020004 */  bc1fl       .L8000D058
/* 00CBF8 8000D048 44813000 */   mtc1       $at, $f6
/* 00CBFC 8000D04C 10000009 */  b           .L8000D074
/* 00CC00 8000D050 46001486 */   mov.s      $f18, $f2
/* 00CC04 8000D054 44813000 */  mtc1        $at, $f6
.L8000D058:
/* 00CC08 8000D058 3C013F80 */  lui         $at, 0x3f80
/* 00CC0C 8000D05C 4600303C */  c.lt.s      $f6, $f0
/* 00CC10 8000D060 00000000 */  nop
/* 00CC14 8000D064 45000003 */  bc1f        .L8000D074
/* 00CC18 8000D068 00000000 */   nop
/* 00CC1C 8000D06C 44819000 */  mtc1        $at, $f18
/* 00CC20 8000D070 00000000 */  nop
.L8000D074:
/* 00CC24 8000D074 46129282 */  mul.s       $f10, $f18, $f18
/* 00CC28 8000D078 3C013F80 */  lui         $at, 0x3f80
/* 00CC2C 8000D07C 44814000 */  mtc1        $at, $f8
/* 00CC30 8000D080 C7AC003C */  lwc1        $f12, 0x3c($sp)
/* 00CC34 8000D084 AFA60040 */  sw          $a2, 0x40($sp)
/* 00CC38 8000D088 E7B20024 */  swc1        $f18, 0x24($sp)
/* 00CC3C 8000D08C 460A4001 */  sub.s       $f0, $f8, $f10
/* 00CC40 8000D090 46000004 */  sqrt.s      $f0, $f0
/* 00CC44 8000D094 46007103 */  div.s       $f4, $f14, $f0
/* 00CC48 8000D098 E7A00028 */  swc1        $f0, 0x28($sp)
/* 00CC4C 8000D09C 46008183 */  div.s       $f6, $f16, $f0
/* 00CC50 8000D0A0 E7A40020 */  swc1        $f4, 0x20($sp)
/* 00CC54 8000D0A4 0C00ED5E */  jal         func_8003B578
/* 00CC58 8000D0A8 E7A6001C */   swc1       $f6, 0x1c($sp)
/* 00CC5C 8000D0AC 44800000 */  mtc1        $zero, $f0
/* 00CC60 8000D0B0 8FA60040 */  lw          $a2, 0x40($sp)
/* 00CC64 8000D0B4 04410006 */  bgez        $v0, .L8000D0D0
/* 00CC68 8000D0B8 C7AC0028 */   lwc1       $f12, 0x28($sp)
/* 00CC6C 8000D0BC C7A80020 */  lwc1        $f8, 0x20($sp)
/* 00CC70 8000D0C0 4608003C */  c.lt.s      $f0, $f8
/* 00CC74 8000D0C4 00000000 */  nop
/* 00CC78 8000D0C8 45030008 */  bc1tl       .L8000D0EC
/* 00CC7C 8000D0CC C7A40020 */   lwc1       $f4, 0x20($sp)
.L8000D0D0:
/* 00CC80 8000D0D0 1840000C */  blez        $v0, .L8000D104
/* 00CC84 8000D0D4 C7AA0020 */   lwc1       $f10, 0x20($sp)
/* 00CC88 8000D0D8 4600503C */  c.lt.s      $f10, $f0
/* 00CC8C 8000D0DC 00000000 */  nop
/* 00CC90 8000D0E0 45020009 */  bc1fl       .L8000D108
/* 00CC94 8000D0E4 C7AE0024 */   lwc1       $f14, 0x24($sp)
/* 00CC98 8000D0E8 C7A40020 */  lwc1        $f4, 0x20($sp)
.L8000D0EC:
/* 00CC9C 8000D0EC C7A8001C */  lwc1        $f8, 0x1c($sp)
/* 00CCA0 8000D0F0 46006307 */  neg.s       $f12, $f12
/* 00CCA4 8000D0F4 46002187 */  neg.s       $f6, $f4
/* 00CCA8 8000D0F8 46004287 */  neg.s       $f10, $f8
/* 00CCAC 8000D0FC E7A60020 */  swc1        $f6, 0x20($sp)
/* 00CCB0 8000D100 E7AA001C */  swc1        $f10, 0x1c($sp)
.L8000D104:
/* 00CCB4 8000D104 C7AE0024 */  lwc1        $f14, 0x24($sp)
.L8000D108:
/* 00CCB8 8000D108 0C00ECC6 */  jal         func_8003B318
/* 00CCBC 8000D10C AFA60040 */   sw         $a2, 0x40($sp)
/* 00CCC0 8000D110 8FA60040 */  lw          $a2, 0x40($sp)
/* 00CCC4 8000D114 E4C00000 */  swc1        $f0, 0x0($a2)
/* 00CCC8 8000D118 C7AE001C */  lwc1        $f14, 0x1c($sp)
/* 00CCCC 8000D11C 0C00ECC6 */  jal         func_8003B318
/* 00CCD0 8000D120 C7AC0020 */   lwc1       $f12, 0x20($sp)
/* 00CCD4 8000D124 8FAF0044 */  lw          $t7, 0x44($sp)
/* 00CCD8 8000D128 E5E00000 */  swc1        $f0, 0x0($t7)
.L8000D12C:
/* 00CCDC 8000D12C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00CCE0 8000D130 27BD0038 */  addiu       $sp, $sp, 0x38
/* 00CCE4 8000D134 03E00008 */  jr          $ra
/* 00CCE8 8000D138 00000000 */   nop

glabel func_8000D13C # 12
/* 00CCEC 8000D13C 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 00CCF0 8000D140 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00CCF4 8000D144 C4900000 */  lwc1        $f16, 0x0($a0)
/* 00CCF8 8000D148 C4920004 */  lwc1        $f18, 0x4($a0)
/* 00CCFC 8000D14C C4820008 */  lwc1        $f2, 0x8($a0)
/* 00CD00 8000D150 46108102 */  mul.s       $f4, $f16, $f16
/* 00CD04 8000D154 3C01800A */  lui         $at, %hi(D_800A0CFC)
/* 00CD08 8000D158 46129182 */  mul.s       $f6, $f18, $f18
/* 00CD0C 8000D15C 46062200 */  add.s       $f8, $f4, $f6
/* 00CD10 8000D160 46021282 */  mul.s       $f10, $f2, $f2
/* 00CD14 8000D164 C4240CFC */  lwc1        $f4, %lo(D_800A0CFC)($at)
/* 00CD18 8000D168 3C01800A */  lui         $at, %hi(D_800A0D00)
/* 00CD1C 8000D16C 460A4000 */  add.s       $f0, $f8, $f10
/* 00CD20 8000D170 46000004 */  sqrt.s      $f0, $f0
/* 00CD24 8000D174 4604003C */  c.lt.s      $f0, $f4
/* 00CD28 8000D178 00000000 */  nop
/* 00CD2C 8000D17C 4502000C */  bc1fl       .L8000D1B0
/* 00CD30 8000D180 3C013F80 */   lui        $at, 0x3f80
/* 00CD34 8000D184 C4260D00 */  lwc1        $f6, %lo(D_800A0D00)($at)
/* 00CD38 8000D188 4600303C */  c.lt.s      $f6, $f0
/* 00CD3C 8000D18C 00000000 */  nop
/* 00CD40 8000D190 45020007 */  bc1fl       .L8000D1B0
/* 00CD44 8000D194 3C013F80 */   lui        $at, 0x3f80
/* 00CD48 8000D198 44801000 */  mtc1        $zero, $f2
/* 00CD4C 8000D19C 00001025 */  move        $v0, $zero
/* 00CD50 8000D1A0 E4C20000 */  swc1        $f2, 0x0($a2)
/* 00CD54 8000D1A4 1000004B */  b           .L8000D2D4
/* 00CD58 8000D1A8 E4A20000 */   swc1       $f2, 0x0($a1)
/* 00CD5C 8000D1AC 3C013F80 */  lui         $at, 0x3f80
.L8000D1B0:
/* 00CD60 8000D1B0 44814000 */  mtc1        $at, $f8
/* 00CD64 8000D1B4 3C01800A */  lui         $at, %hi(D_800A0D04)
/* 00CD68 8000D1B8 C42A0D04 */  lwc1        $f10, %lo(D_800A0D04)($at)
/* 00CD6C 8000D1BC 46004303 */  div.s       $f12, $f8, $f0
/* 00CD70 8000D1C0 3C01800A */  lui         $at, %hi(D_800A0D08)
/* 00CD74 8000D1C4 00001025 */  move        $v0, $zero
/* 00CD78 8000D1C8 460C8402 */  mul.s       $f16, $f16, $f12
/* 00CD7C 8000D1CC 00000000 */  nop
/* 00CD80 8000D1D0 460C9482 */  mul.s       $f18, $f18, $f12
/* 00CD84 8000D1D4 00000000 */  nop
/* 00CD88 8000D1D8 460C1082 */  mul.s       $f2, $f2, $f12
/* 00CD8C 8000D1DC 46001007 */  neg.s       $f0, $f2
/* 00CD90 8000D1E0 4600503E */  c.le.s      $f10, $f0
/* 00CD94 8000D1E4 46000386 */  mov.s       $f14, $f0
/* 00CD98 8000D1E8 45010007 */  bc1t        .L8000D208
/* 00CD9C 8000D1EC 00000000 */   nop
/* 00CDA0 8000D1F0 C4240D08 */  lwc1        $f4, %lo(D_800A0D08)($at)
/* 00CDA4 8000D1F4 3C01BF80 */  lui         $at, 0xbf80
/* 00CDA8 8000D1F8 4604003E */  c.le.s      $f0, $f4
/* 00CDAC 8000D1FC 00000000 */  nop
/* 00CDB0 8000D200 45020011 */  bc1fl       .L8000D248
/* 00CDB4 8000D204 44811000 */   mtc1       $at, $f2
.L8000D208:
/* 00CDB8 8000D208 44801000 */  mtc1        $zero, $f2
/* 00CDBC 8000D20C 3C014387 */  lui         $at, 0x4387
/* 00CDC0 8000D210 4600103C */  c.lt.s      $f2, $f0
/* 00CDC4 8000D214 00000000 */  nop
/* 00CDC8 8000D218 45020006 */  bc1fl       .L8000D234
/* 00CDCC 8000D21C 44814000 */   mtc1       $at, $f8
/* 00CDD0 8000D220 3C0142B4 */  lui         $at, 0x42b4
/* 00CDD4 8000D224 44813000 */  mtc1        $at, $f6
/* 00CDD8 8000D228 10000004 */  b           .L8000D23C
/* 00CDDC 8000D22C E4A60000 */   swc1       $f6, 0x0($a1)
/* 00CDE0 8000D230 44814000 */  mtc1        $at, $f8
.L8000D234:
/* 00CDE4 8000D234 00000000 */  nop
/* 00CDE8 8000D238 E4A80000 */  swc1        $f8, 0x0($a1)
.L8000D23C:
/* 00CDEC 8000D23C 10000025 */  b           .L8000D2D4
/* 00CDF0 8000D240 E4C20000 */   swc1       $f2, 0x0($a2)
/* 00CDF4 8000D244 44811000 */  mtc1        $at, $f2
.L8000D248:
/* 00CDF8 8000D248 3C013F80 */  lui         $at, 0x3f80
/* 00CDFC 8000D24C 4602003C */  c.lt.s      $f0, $f2
/* 00CE00 8000D250 00000000 */  nop
/* 00CE04 8000D254 45020004 */  bc1fl       .L8000D268
/* 00CE08 8000D258 44815000 */   mtc1       $at, $f10
/* 00CE0C 8000D25C 10000009 */  b           .L8000D284
/* 00CE10 8000D260 46001386 */   mov.s      $f14, $f2
/* 00CE14 8000D264 44815000 */  mtc1        $at, $f10
.L8000D268:
/* 00CE18 8000D268 3C013F80 */  lui         $at, 0x3f80
/* 00CE1C 8000D26C 4600503C */  c.lt.s      $f10, $f0
/* 00CE20 8000D270 00000000 */  nop
/* 00CE24 8000D274 45000003 */  bc1f        .L8000D284
/* 00CE28 8000D278 00000000 */   nop
/* 00CE2C 8000D27C 44817000 */  mtc1        $at, $f14
/* 00CE30 8000D280 00000000 */  nop
.L8000D284:
/* 00CE34 8000D284 460E7182 */  mul.s       $f6, $f14, $f14
/* 00CE38 8000D288 3C013F80 */  lui         $at, 0x3f80
/* 00CE3C 8000D28C 44812000 */  mtc1        $at, $f4
/* 00CE40 8000D290 AFA5003C */  sw          $a1, 0x3c($sp)
/* 00CE44 8000D294 AFA60040 */  sw          $a2, 0x40($sp)
/* 00CE48 8000D298 46062001 */  sub.s       $f0, $f4, $f6
/* 00CE4C 8000D29C 46000304 */  sqrt.s      $f12, $f0
/* 00CE50 8000D2A0 460C8203 */  div.s       $f8, $f16, $f12
/* 00CE54 8000D2A4 460C9283 */  div.s       $f10, $f18, $f12
/* 00CE58 8000D2A8 E7A80020 */  swc1        $f8, 0x20($sp)
/* 00CE5C 8000D2AC 0C00ECC6 */  jal         func_8003B318
/* 00CE60 8000D2B0 E7AA001C */   swc1       $f10, 0x1c($sp)
/* 00CE64 8000D2B4 8FA5003C */  lw          $a1, 0x3c($sp)
/* 00CE68 8000D2B8 E4A00000 */  swc1        $f0, 0x0($a1)
/* 00CE6C 8000D2BC C7AE001C */  lwc1        $f14, 0x1c($sp)
/* 00CE70 8000D2C0 0C00ECC6 */  jal         func_8003B318
/* 00CE74 8000D2C4 C7AC0020 */   lwc1       $f12, 0x20($sp)
/* 00CE78 8000D2C8 8FA60040 */  lw          $a2, 0x40($sp)
/* 00CE7C 8000D2CC 24020001 */  addiu       $v0, $zero, 0x1
/* 00CE80 8000D2D0 E4C00000 */  swc1        $f0, 0x0($a2)
.L8000D2D4:
/* 00CE84 8000D2D4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00CE88 8000D2D8 27BD0038 */  addiu       $sp, $sp, 0x38
/* 00CE8C 8000D2DC 03E00008 */  jr          $ra
/* 00CE90 8000D2E0 00000000 */   nop

glabel func_8000D2E4 # 13
/* 00CE94 8000D2E4 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 00CE98 8000D2E8 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00CE9C 8000D2EC F7B40010 */  sdc1        $f20, 0x10($sp)
/* 00CEA0 8000D2F0 AFA5003C */  sw          $a1, 0x3c($sp)
/* 00CEA4 8000D2F4 AFA70044 */  sw          $a3, 0x44($sp)
/* 00CEA8 8000D2F8 C48E0008 */  lwc1        $f14, 0x8($a0)
/* 00CEAC 8000D2FC 3C01800A */  lui         $at, %hi(D_800A0D0C)
/* 00CEB0 8000D300 C4240D0C */  lwc1        $f4, %lo(D_800A0D0C)($at)
/* 00CEB4 8000D304 46007387 */  neg.s       $f14, $f14
/* 00CEB8 8000D308 3C01800A */  lui         $at, %hi(D_800A0D10)
/* 00CEBC 8000D30C 4604703E */  c.le.s      $f14, $f4
/* 00CEC0 8000D310 00000000 */  nop
/* 00CEC4 8000D314 45030008 */  bc1tl       .L8000D338
/* 00CEC8 8000D318 44809000 */   mtc1       $zero, $f18
/* 00CECC 8000D31C C4260D10 */  lwc1        $f6, %lo(D_800A0D10)($at)
/* 00CED0 8000D320 3C01800A */  lui         $at, 0x800a
/* 00CED4 8000D324 460E303E */  c.le.s      $f6, $f14
/* 00CED8 8000D328 00000000 */  nop
/* 00CEDC 8000D32C 45000017 */  bc1f        .L8000D38C
/* 00CEE0 8000D330 00000000 */   nop
/* 00CEE4 8000D334 44809000 */  mtc1        $zero, $f18
.L8000D338:
/* 00CEE8 8000D338 3C0142B4 */  lui         $at, 0x42b4
/* 00CEEC 8000D33C 4612703E */  c.le.s      $f14, $f18
/* 00CEF0 8000D340 00000000 */  nop
/* 00CEF4 8000D344 45020006 */  bc1fl       .L8000D360
/* 00CEF8 8000D348 44815000 */   mtc1       $at, $f10
/* 00CEFC 8000D34C 3C014387 */  lui         $at, %hi(D_43870D14)
/* 00CF00 8000D350 44814000 */  mtc1        $at, $f8
/* 00CF04 8000D354 10000004 */  b           .L8000D368
/* 00CF08 8000D358 E4C80000 */   swc1       $f8, 0x0($a2)
/* 00CF0C 8000D35C 44815000 */  mtc1        $at, $f10
.L8000D360:
/* 00CF10 8000D360 00000000 */  nop
/* 00CF14 8000D364 E4CA0000 */  swc1        $f10, 0x0($a2)
.L8000D368:
/* 00CF18 8000D368 8FAE003C */  lw          $t6, 0x3c($sp)
/* 00CF1C 8000D36C E5D20000 */  swc1        $f18, 0x0($t6)
/* 00CF20 8000D370 C48E000C */  lwc1        $f14, 0xc($a0)
/* 00CF24 8000D374 C48C0010 */  lwc1        $f12, 0x10($a0)
/* 00CF28 8000D378 0C00ECC6 */  jal         func_8003B318
/* 00CF2C 8000D37C 46007387 */   neg.s      $f14, $f14
/* 00CF30 8000D380 8FAF0044 */  lw          $t7, 0x44($sp)
/* 00CF34 8000D384 10000091 */  b           .L8000D5CC
/* 00CF38 8000D388 E5E00000 */   swc1       $f0, 0x0($t7)
.L8000D38C:
/* 00CF3C 8000D38C C4240D14 */  lwc1        $f4, %lo(D_43870D14)($at)
/* 00CF40 8000D390 3C01800A */  lui         $at, %hi(D_800A0D18)
/* 00CF44 8000D394 4604703C */  c.lt.s      $f14, $f4
/* 00CF48 8000D398 00000000 */  nop
/* 00CF4C 8000D39C 45020012 */  bc1fl       .L8000D3E8
/* 00CF50 8000D3A0 3C01BF80 */   lui        $at, 0xbf80
/* 00CF54 8000D3A4 C4260D18 */  lwc1        $f6, %lo(D_800A0D18)($at)
/* 00CF58 8000D3A8 460E303C */  c.lt.s      $f6, $f14
/* 00CF5C 8000D3AC 00000000 */  nop
/* 00CF60 8000D3B0 4502000D */  bc1fl       .L8000D3E8
/* 00CF64 8000D3B4 3C01BF80 */   lui        $at, 0xbf80
/* 00CF68 8000D3B8 44809000 */  mtc1        $zero, $f18
/* 00CF6C 8000D3BC 00000000 */  nop
/* 00CF70 8000D3C0 E4D20000 */  swc1        $f18, 0x0($a2)
/* 00CF74 8000D3C4 C4880004 */  lwc1        $f8, 0x4($a0)
/* 00CF78 8000D3C8 C4940000 */  lwc1        $f20, 0x0($a0)
/* 00CF7C 8000D3CC E7A80024 */  swc1        $f8, 0x24($sp)
/* 00CF80 8000D3D0 C48A0020 */  lwc1        $f10, 0x20($a0)
/* 00CF84 8000D3D4 E7AA0030 */  swc1        $f10, 0x30($sp)
/* 00CF88 8000D3D8 C4840014 */  lwc1        $f4, 0x14($a0)
/* 00CF8C 8000D3DC 10000071 */  b           .L8000D5A4
/* 00CF90 8000D3E0 E7A40034 */   swc1       $f4, 0x34($sp)
/* 00CF94 8000D3E4 3C01BF80 */  lui         $at, 0xbf80
.L8000D3E8:
/* 00CF98 8000D3E8 44816000 */  mtc1        $at, $f12
/* 00CF9C 8000D3EC 3C013F80 */  lui         $at, 0x3f80
/* 00CFA0 8000D3F0 460C703C */  c.lt.s      $f14, $f12
/* 00CFA4 8000D3F4 00000000 */  nop
/* 00CFA8 8000D3F8 45020006 */  bc1fl       .L8000D414
/* 00CFAC 8000D3FC 44811000 */   mtc1       $at, $f2
/* 00CFB0 8000D400 3C013F80 */  lui         $at, 0x3f80
/* 00CFB4 8000D404 44811000 */  mtc1        $at, $f2
/* 00CFB8 8000D408 10000008 */  b           .L8000D42C
/* 00CFBC 8000D40C 46006386 */   mov.s      $f14, $f12
/* 00CFC0 8000D410 44811000 */  mtc1        $at, $f2
.L8000D414:
/* 00CFC4 8000D414 00000000 */  nop
/* 00CFC8 8000D418 460E103C */  c.lt.s      $f2, $f14
/* 00CFCC 8000D41C 00000000 */  nop
/* 00CFD0 8000D420 45000002 */  bc1f        .L8000D42C
/* 00CFD4 8000D424 00000000 */   nop
/* 00CFD8 8000D428 46001386 */  mov.s       $f14, $f2
.L8000D42C:
/* 00CFDC 8000D42C 460E7182 */  mul.s       $f6, $f14, $f14
/* 00CFE0 8000D430 46061001 */  sub.s       $f0, $f2, $f6
/* 00CFE4 8000D434 46000004 */  sqrt.s      $f0, $f0
/* 00CFE8 8000D438 E7A00028 */  swc1        $f0, 0x28($sp)
/* 00CFEC 8000D43C C4880000 */  lwc1        $f8, 0x0($a0)
/* 00CFF0 8000D440 46004503 */  div.s       $f20, $f8, $f0
/* 00CFF4 8000D444 460CA03C */  c.lt.s      $f20, $f12
/* 00CFF8 8000D448 00000000 */  nop
/* 00CFFC 8000D44C 45020004 */  bc1fl       .L8000D460
/* 00D000 8000D450 4614103C */   c.lt.s     $f2, $f20
/* 00D004 8000D454 10000006 */  b           .L8000D470
/* 00D008 8000D458 46006506 */   mov.s      $f20, $f12
/* 00D00C 8000D45C 4614103C */  c.lt.s      $f2, $f20
.L8000D460:
/* 00D010 8000D460 00000000 */  nop
/* 00D014 8000D464 45000002 */  bc1f        .L8000D470
/* 00D018 8000D468 00000000 */   nop
/* 00D01C 8000D46C 46001506 */  mov.s       $f20, $f2
.L8000D470:
/* 00D020 8000D470 4614A282 */  mul.s       $f10, $f20, $f20
/* 00D024 8000D474 44809000 */  mtc1        $zero, $f18
/* 00D028 8000D478 460A1001 */  sub.s       $f0, $f2, $f10
/* 00D02C 8000D47C 46147282 */  mul.s       $f10, $f14, $f20
/* 00D030 8000D480 46000004 */  sqrt.s      $f0, $f0
/* 00D034 8000D484 E7A00024 */  swc1        $f0, 0x24($sp)
/* 00D038 8000D488 C4840004 */  lwc1        $f4, 0x4($a0)
/* 00D03C 8000D48C 4612203C */  c.lt.s      $f4, $f18
/* 00D040 8000D490 00000000 */  nop
/* 00D044 8000D494 45020004 */  bc1fl       .L8000D4A8
/* 00D048 8000D498 C4880010 */   lwc1       $f8, 0x10($a0)
/* 00D04C 8000D49C 46000187 */  neg.s       $f6, $f0
/* 00D050 8000D4A0 E7A60024 */  swc1        $f6, 0x24($sp)
/* 00D054 8000D4A4 C4880010 */  lwc1        $f8, 0x10($a0)
.L8000D4A8:
/* 00D058 8000D4A8 C7A60024 */  lwc1        $f6, 0x24($sp)
/* 00D05C 8000D4AC 460A4102 */  mul.s       $f4, $f8, $f10
/* 00D060 8000D4B0 00000000 */  nop
/* 00D064 8000D4B4 46067202 */  mul.s       $f8, $f14, $f6
/* 00D068 8000D4B8 C486000C */  lwc1        $f6, 0xc($a0)
/* 00D06C 8000D4BC 46004287 */  neg.s       $f10, $f8
/* 00D070 8000D4C0 46065202 */  mul.s       $f8, $f10, $f6
/* 00D074 8000D4C4 46082280 */  add.s       $f10, $f4, $f8
/* 00D078 8000D4C8 460E5403 */  div.s       $f16, $f10, $f14
/* 00D07C 8000D4CC 460C803C */  c.lt.s      $f16, $f12
/* 00D080 8000D4D0 00000000 */  nop
/* 00D084 8000D4D4 45000003 */  bc1f        .L8000D4E4
/* 00D088 8000D4D8 00000000 */   nop
/* 00D08C 8000D4DC 10000006 */  b           .L8000D4F8
/* 00D090 8000D4E0 46006406 */   mov.s      $f16, $f12
.L8000D4E4:
/* 00D094 8000D4E4 4610103C */  c.lt.s      $f2, $f16
/* 00D098 8000D4E8 00000000 */  nop
/* 00D09C 8000D4EC 45000002 */  bc1f        .L8000D4F8
/* 00D0A0 8000D4F0 00000000 */   nop
/* 00D0A4 8000D4F4 46001406 */  mov.s       $f16, $f2
.L8000D4F8:
/* 00D0A8 8000D4F8 46108182 */  mul.s       $f6, $f16, $f16
/* 00D0AC 8000D4FC C7A40028 */  lwc1        $f4, 0x28($sp)
/* 00D0B0 8000D500 C7A80028 */  lwc1        $f8, 0x28($sp)
/* 00D0B4 8000D504 46061001 */  sub.s       $f0, $f2, $f6
/* 00D0B8 8000D508 46000004 */  sqrt.s      $f0, $f0
/* 00D0BC 8000D50C E7A00034 */  swc1        $f0, 0x34($sp)
/* 00D0C0 8000D510 C48C0014 */  lwc1        $f12, 0x14($a0)
/* 00D0C4 8000D514 460C903C */  c.lt.s      $f18, $f12
/* 00D0C8 8000D518 00000000 */  nop
/* 00D0CC 8000D51C 45020004 */  bc1fl       .L8000D530
/* 00D0D0 8000D520 4612603C */   c.lt.s     $f12, $f18
/* 00D0D4 8000D524 10000008 */  b           .L8000D548
/* 00D0D8 8000D528 24040001 */   addiu      $a0, $zero, 0x1
/* 00D0DC 8000D52C 4612603C */  c.lt.s      $f12, $f18
.L8000D530:
/* 00D0E0 8000D530 00001025 */  move        $v0, $zero
/* 00D0E4 8000D534 45000003 */  bc1f        .L8000D544
/* 00D0E8 8000D538 00000000 */   nop
/* 00D0EC 8000D53C 10000001 */  b           .L8000D544
/* 00D0F0 8000D540 2402FFFF */   addiu      $v0, $zero, -0x1
.L8000D544:
/* 00D0F4 8000D544 00402025 */  move        $a0, $v0
.L8000D548:
/* 00D0F8 8000D548 4604903C */  c.lt.s      $f18, $f4
/* 00D0FC 8000D54C 00000000 */  nop
/* 00D100 8000D550 45020004 */  bc1fl       .L8000D564
/* 00D104 8000D554 4612403C */   c.lt.s     $f8, $f18
/* 00D108 8000D558 10000008 */  b           .L8000D57C
/* 00D10C 8000D55C 24020001 */   addiu      $v0, $zero, 0x1
/* 00D110 8000D560 4612403C */  c.lt.s      $f8, $f18
.L8000D564:
/* 00D114 8000D564 00001825 */  move        $v1, $zero
/* 00D118 8000D568 45000003 */  bc1f        .L8000D578
/* 00D11C 8000D56C 00000000 */   nop
/* 00D120 8000D570 10000001 */  b           .L8000D578
/* 00D124 8000D574 2403FFFF */   addiu      $v1, $zero, -0x1
.L8000D578:
/* 00D128 8000D578 00601025 */  move        $v0, $v1
.L8000D57C:
/* 00D12C 8000D57C 50440004 */  beql        $v0, $a0, .L8000D590
/* 00D130 8000D580 C7AC0028 */   lwc1       $f12, 0x28($sp)
/* 00D134 8000D584 46000287 */  neg.s       $f10, $f0
/* 00D138 8000D588 E7AA0034 */  swc1        $f10, 0x34($sp)
/* 00D13C 8000D58C C7AC0028 */  lwc1        $f12, 0x28($sp)
.L8000D590:
/* 00D140 8000D590 AFA60040 */  sw          $a2, 0x40($sp)
/* 00D144 8000D594 0C00ECC6 */  jal         func_8003B318
/* 00D148 8000D598 E7B00030 */   swc1       $f16, 0x30($sp)
/* 00D14C 8000D59C 8FA60040 */  lw          $a2, 0x40($sp)
/* 00D150 8000D5A0 E4C00000 */  swc1        $f0, 0x0($a2)
.L8000D5A4:
/* 00D154 8000D5A4 C7AC0030 */  lwc1        $f12, 0x30($sp)
/* 00D158 8000D5A8 0C00ECC6 */  jal         func_8003B318
/* 00D15C 8000D5AC C7AE0034 */   lwc1       $f14, 0x34($sp)
/* 00D160 8000D5B0 8FB8003C */  lw          $t8, 0x3c($sp)
/* 00D164 8000D5B4 4600A306 */  mov.s       $f12, $f20
/* 00D168 8000D5B8 E7000000 */  swc1        $f0, 0x0($t8)
/* 00D16C 8000D5BC 0C00ECC6 */  jal         func_8003B318
/* 00D170 8000D5C0 C7AE0024 */   lwc1       $f14, 0x24($sp)
/* 00D174 8000D5C4 8FB90044 */  lw          $t9, 0x44($sp)
/* 00D178 8000D5C8 E7200000 */  swc1        $f0, 0x0($t9)
.L8000D5CC:
/* 00D17C 8000D5CC 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00D180 8000D5D0 D7B40010 */  ldc1        $f20, 0x10($sp)
/* 00D184 8000D5D4 27BD0038 */  addiu       $sp, $sp, 0x38
/* 00D188 8000D5D8 03E00008 */  jr          $ra
/* 00D18C 8000D5DC 00000000 */   nop

glabel func_8000D5E0 # 14
/* 00D190 8000D5E0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00D194 8000D5E4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00D198 8000D5E8 C4AE0000 */  lwc1        $f14, 0x0($a1)
/* 00D19C 8000D5EC C48C0000 */  lwc1        $f12, 0x0($a0)
/* 00D1A0 8000D5F0 AFA5001C */  sw          $a1, 0x1c($sp)
/* 00D1A4 8000D5F4 0C00E9BC */  jal         func_8003A6F0
/* 00D1A8 8000D5F8 AFA40018 */   sw         $a0, 0x18($sp)
/* 00D1AC 8000D5FC 3C01800A */  lui         $at, %hi(D_800A0D1C)
/* 00D1B0 8000D600 C4240D1C */  lwc1        $f4, %lo(D_800A0D1C)($at)
/* 00D1B4 8000D604 8FA40018 */  lw          $a0, 0x18($sp)
/* 00D1B8 8000D608 8FA5001C */  lw          $a1, 0x1c($sp)
/* 00D1BC 8000D60C 4604003E */  c.le.s      $f0, $f4
/* 00D1C0 8000D610 46000086 */  mov.s       $f2, $f0
/* 00D1C4 8000D614 45020008 */  bc1fl       .L8000D638
/* 00D1C8 8000D618 C4860000 */   lwc1       $f6, 0x0($a0)
/* 00D1CC 8000D61C 44801000 */  mtc1        $zero, $f2
/* 00D1D0 8000D620 00000000 */  nop
/* 00D1D4 8000D624 E4A20000 */  swc1        $f2, 0x0($a1)
/* 00D1D8 8000D628 E4820000 */  swc1        $f2, 0x0($a0)
/* 00D1DC 8000D62C 10000008 */  b           .L8000D650
/* 00D1E0 8000D630 46001006 */   mov.s      $f0, $f2
/* 00D1E4 8000D634 C4860000 */  lwc1        $f6, 0x0($a0)
.L8000D638:
/* 00D1E8 8000D638 46001006 */  mov.s       $f0, $f2
/* 00D1EC 8000D63C 46023203 */  div.s       $f8, $f6, $f2
/* 00D1F0 8000D640 E4880000 */  swc1        $f8, 0x0($a0)
/* 00D1F4 8000D644 C4AA0000 */  lwc1        $f10, 0x0($a1)
/* 00D1F8 8000D648 46025403 */  div.s       $f16, $f10, $f2
/* 00D1FC 8000D64C E4B00000 */  swc1        $f16, 0x0($a1)
.L8000D650:
/* 00D200 8000D650 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00D204 8000D654 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00D208 8000D658 03E00008 */  jr          $ra
/* 00D20C 8000D65C 00000000 */   nop

glabel func_8000D660 # 15
/* 00D210 8000D660 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00D214 8000D664 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00D218 8000D668 E7AC0020 */  swc1        $f12, 0x20($sp)
/* 00D21C 8000D66C AFA50024 */  sw          $a1, 0x24($sp)
/* 00D220 8000D670 AFA60028 */  sw          $a2, 0x28($sp)
/* 00D224 8000D674 0C00F134 */  jal         func_8003C4D0
/* 00D228 8000D678 C7AC0020 */   lwc1       $f12, 0x20($sp)
/* 00D22C 8000D67C C7AC0020 */  lwc1        $f12, 0x20($sp)
/* 00D230 8000D680 0C00F0F7 */  jal         func_8003C3DC
/* 00D234 8000D684 E7A00018 */   swc1       $f0, 0x18($sp)
/* 00D238 8000D688 8FA20024 */  lw          $v0, 0x24($sp)
/* 00D23C 8000D68C 8FA30028 */  lw          $v1, 0x28($sp)
/* 00D240 8000D690 C7AE0018 */  lwc1        $f14, 0x18($sp)
/* 00D244 8000D694 C4420000 */  lwc1        $f2, 0x0($v0)
/* 00D248 8000D698 C46C0000 */  lwc1        $f12, 0x0($v1)
/* 00D24C 8000D69C 460E1102 */  mul.s       $f4, $f2, $f14
/* 00D250 8000D6A0 00000000 */  nop
/* 00D254 8000D6A4 46006182 */  mul.s       $f6, $f12, $f0
/* 00D258 8000D6A8 00000000 */  nop
/* 00D25C 8000D6AC 46001282 */  mul.s       $f10, $f2, $f0
/* 00D260 8000D6B0 00000000 */  nop
/* 00D264 8000D6B4 460E6402 */  mul.s       $f16, $f12, $f14
/* 00D268 8000D6B8 46062201 */  sub.s       $f8, $f4, $f6
/* 00D26C 8000D6BC E4480000 */  swc1        $f8, 0x0($v0)
/* 00D270 8000D6C0 46105480 */  add.s       $f18, $f10, $f16
/* 00D274 8000D6C4 E4720000 */  swc1        $f18, 0x0($v1)
/* 00D278 8000D6C8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00D27C 8000D6CC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00D280 8000D6D0 03E00008 */  jr          $ra
/* 00D284 8000D6D4 00000000 */   nop

glabel func_8000D6D8 # 16
/* 00D288 8000D6D8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00D28C 8000D6DC AFBF0014 */  sw          $ra, 0x14($sp)
/* 00D290 8000D6E0 AFA40018 */  sw          $a0, 0x18($sp)
/* 00D294 8000D6E4 AFA5001C */  sw          $a1, 0x1c($sp)
/* 00D298 8000D6E8 AFA60020 */  sw          $a2, 0x20($sp)
/* 00D29C 8000D6EC 00A07025 */  move        $t6, $a1
/* 00D2A0 8000D6F0 C5C80004 */  lwc1        $f8, 0x4($t6)
/* 00D2A4 8000D6F4 C5D00008 */  lwc1        $f16, 0x8($t6)
/* 00D2A8 8000D6F8 C4A40000 */  lwc1        $f4, 0x0($a1)
/* 00D2AC 8000D6FC 46004287 */  neg.s       $f10, $f8
/* 00D2B0 8000D700 46008487 */  neg.s       $f18, $f16
/* 00D2B4 8000D704 46002187 */  neg.s       $f6, $f4
/* 00D2B8 8000D708 00C02025 */  move        $a0, $a2
/* 00D2BC 8000D70C 44065000 */  mfc1        $a2, $f10
/* 00D2C0 8000D710 44053000 */  mfc1        $a1, $f6
/* 00D2C4 8000D714 44079000 */  mfc1        $a3, $f18
/* 00D2C8 8000D718 0C00E6C1 */  jal         func_80039B04
/* 00D2CC 8000D71C 00000000 */   nop
/* 00D2D0 8000D720 8FA20018 */  lw          $v0, 0x18($sp)
/* 00D2D4 8000D724 8FA40020 */  lw          $a0, 0x20($sp)
/* 00D2D8 8000D728 C4440000 */  lwc1        $f4, 0x0($v0)
/* 00D2DC 8000D72C C4480004 */  lwc1        $f8, 0x4($v0)
/* 00D2E0 8000D730 C4500008 */  lwc1        $f16, 0x8($v0)
/* 00D2E4 8000D734 46002187 */  neg.s       $f6, $f4
/* 00D2E8 8000D738 46004287 */  neg.s       $f10, $f8
/* 00D2EC 8000D73C 46008487 */  neg.s       $f18, $f16
/* 00D2F0 8000D740 44065000 */  mfc1        $a2, $f10
/* 00D2F4 8000D744 44079000 */  mfc1        $a3, $f18
/* 00D2F8 8000D748 44053000 */  mfc1        $a1, $f6
/* 00D2FC 8000D74C 0C00E5CF */  jal         func_8003973C
/* 00D300 8000D750 00000000 */   nop
/* 00D304 8000D754 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00D308 8000D758 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00D30C 8000D75C 03E00008 */  jr          $ra
/* 00D310 8000D760 00000000 */   nop

glabel func_8000D764 # 17
/* 00D314 8000D764 44801000 */  mtc1        $zero, $f2
/* 00D318 8000D768 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 00D31C 8000D76C AFBF0014 */  sw          $ra, 0x14($sp)
/* 00D320 8000D770 4602603C */  c.lt.s      $f12, $f2
/* 00D324 8000D774 3C0143B4 */  lui         $at, 0x43b4
/* 00D328 8000D778 45020009 */  bc1fl       .L8000D7A0
/* 00D32C 8000D77C 3C0143B4 */   lui        $at, 0x43b4
/* 00D330 8000D780 44810000 */  mtc1        $at, $f0
/* 00D334 8000D784 00000000 */  nop
/* 00D338 8000D788 46006300 */  add.s       $f12, $f12, $f0
.L8000D78C:
/* 00D33C 8000D78C 4602603C */  c.lt.s      $f12, $f2
/* 00D340 8000D790 00000000 */  nop
/* 00D344 8000D794 4503FFFD */  bc1tl       .L8000D78C
/* 00D348 8000D798 46006300 */   add.s      $f12, $f12, $f0
/* 00D34C 8000D79C 3C0143B4 */  lui         $at, 0x43b4
.L8000D7A0:
/* 00D350 8000D7A0 44810000 */  mtc1        $at, $f0
/* 00D354 8000D7A4 00000000 */  nop
/* 00D358 8000D7A8 460C003E */  c.le.s      $f0, $f12
/* 00D35C 8000D7AC 00000000 */  nop
/* 00D360 8000D7B0 45020007 */  bc1fl       .L8000D7D0
/* 00D364 8000D7B4 AFA50044 */   sw         $a1, 0x44($sp)
/* 00D368 8000D7B8 46006301 */  sub.s       $f12, $f12, $f0
.L8000D7BC:
/* 00D36C 8000D7BC 460C003E */  c.le.s      $f0, $f12
/* 00D370 8000D7C0 00000000 */  nop
/* 00D374 8000D7C4 4503FFFD */  bc1tl       .L8000D7BC
/* 00D378 8000D7C8 46006301 */   sub.s      $f12, $f12, $f0
/* 00D37C 8000D7CC AFA50044 */  sw          $a1, 0x44($sp)
.L8000D7D0:
/* 00D380 8000D7D0 0C00F134 */  jal         func_8003C4D0
/* 00D384 8000D7D4 E7AC0040 */   swc1       $f12, 0x40($sp)
/* 00D388 8000D7D8 C7AC0040 */  lwc1        $f12, 0x40($sp)
/* 00D38C 8000D7DC 0C00F0F7 */  jal         func_8003C3DC
/* 00D390 8000D7E0 E7A0003C */   swc1       $f0, 0x3c($sp)
/* 00D394 8000D7E4 8FA50044 */  lw          $a1, 0x44($sp)
/* 00D398 8000D7E8 C7A2003C */  lwc1        $f2, 0x3c($sp)
/* 00D39C 8000D7EC 46000307 */  neg.s       $f12, $f0
/* 00D3A0 8000D7F0 C4A40024 */  lwc1        $f4, 0x24($a1)
/* 00D3A4 8000D7F4 C4AE0000 */  lwc1        $f14, 0x0($a1)
/* 00D3A8 8000D7F8 C4B0000C */  lwc1        $f16, 0xc($a1)
/* 00D3AC 8000D7FC C4B20018 */  lwc1        $f18, 0x18($a1)
/* 00D3B0 8000D800 E7A40028 */  swc1        $f4, 0x28($sp)
/* 00D3B4 8000D804 C4A60008 */  lwc1        $f6, 0x8($a1)
/* 00D3B8 8000D808 E7A60024 */  swc1        $f6, 0x24($sp)
/* 00D3BC 8000D80C C4A80014 */  lwc1        $f8, 0x14($a1)
/* 00D3C0 8000D810 460E1182 */  mul.s       $f6, $f2, $f14
/* 00D3C4 8000D814 E7A80020 */  swc1        $f8, 0x20($sp)
/* 00D3C8 8000D818 C4AA0020 */  lwc1        $f10, 0x20($a1)
/* 00D3CC 8000D81C C7A80024 */  lwc1        $f8, 0x24($sp)
/* 00D3D0 8000D820 E7AA001C */  swc1        $f10, 0x1c($sp)
/* 00D3D4 8000D824 46080282 */  mul.s       $f10, $f0, $f8
/* 00D3D8 8000D828 C4A4002C */  lwc1        $f4, 0x2c($a1)
/* 00D3DC 8000D82C 46101202 */  mul.s       $f8, $f2, $f16
/* 00D3E0 8000D830 E7A40018 */  swc1        $f4, 0x18($sp)
/* 00D3E4 8000D834 460A3100 */  add.s       $f4, $f6, $f10
/* 00D3E8 8000D838 E4A40000 */  swc1        $f4, 0x0($a1)
/* 00D3EC 8000D83C C7A60020 */  lwc1        $f6, 0x20($sp)
/* 00D3F0 8000D840 46060282 */  mul.s       $f10, $f0, $f6
/* 00D3F4 8000D844 460A4100 */  add.s       $f4, $f8, $f10
/* 00D3F8 8000D848 46121182 */  mul.s       $f6, $f2, $f18
/* 00D3FC 8000D84C E4A4000C */  swc1        $f4, 0xc($a1)
/* 00D400 8000D850 C7A8001C */  lwc1        $f8, 0x1c($sp)
/* 00D404 8000D854 46080282 */  mul.s       $f10, $f0, $f8
/* 00D408 8000D858 460A3100 */  add.s       $f4, $f6, $f10
/* 00D40C 8000D85C E4A40018 */  swc1        $f4, 0x18($a1)
/* 00D410 8000D860 C7A80028 */  lwc1        $f8, 0x28($sp)
/* 00D414 8000D864 C7AA0018 */  lwc1        $f10, 0x18($sp)
/* 00D418 8000D868 46081182 */  mul.s       $f6, $f2, $f8
/* 00D41C 8000D86C 00000000 */  nop
/* 00D420 8000D870 460A0102 */  mul.s       $f4, $f0, $f10
/* 00D424 8000D874 46043200 */  add.s       $f8, $f6, $f4
/* 00D428 8000D878 460E6282 */  mul.s       $f10, $f12, $f14
/* 00D42C 8000D87C E4A80024 */  swc1        $f8, 0x24($a1)
/* 00D430 8000D880 C7A60024 */  lwc1        $f6, 0x24($sp)
/* 00D434 8000D884 46061102 */  mul.s       $f4, $f2, $f6
/* 00D438 8000D888 46045200 */  add.s       $f8, $f10, $f4
/* 00D43C 8000D88C 46106182 */  mul.s       $f6, $f12, $f16
/* 00D440 8000D890 E4A80008 */  swc1        $f8, 0x8($a1)
/* 00D444 8000D894 C7AA0020 */  lwc1        $f10, 0x20($sp)
/* 00D448 8000D898 460A1102 */  mul.s       $f4, $f2, $f10
/* 00D44C 8000D89C 46043200 */  add.s       $f8, $f6, $f4
/* 00D450 8000D8A0 46126282 */  mul.s       $f10, $f12, $f18
/* 00D454 8000D8A4 E4A80014 */  swc1        $f8, 0x14($a1)
/* 00D458 8000D8A8 C7A6001C */  lwc1        $f6, 0x1c($sp)
/* 00D45C 8000D8AC 46061102 */  mul.s       $f4, $f2, $f6
/* 00D460 8000D8B0 46045200 */  add.s       $f8, $f10, $f4
/* 00D464 8000D8B4 E4A80020 */  swc1        $f8, 0x20($a1)
/* 00D468 8000D8B8 C7A60028 */  lwc1        $f6, 0x28($sp)
/* 00D46C 8000D8BC C7A40018 */  lwc1        $f4, 0x18($sp)
/* 00D470 8000D8C0 46066282 */  mul.s       $f10, $f12, $f6
/* 00D474 8000D8C4 00000000 */  nop
/* 00D478 8000D8C8 46041202 */  mul.s       $f8, $f2, $f4
/* 00D47C 8000D8CC 46085180 */  add.s       $f6, $f10, $f8
/* 00D480 8000D8D0 E4A6002C */  swc1        $f6, 0x2c($a1)
/* 00D484 8000D8D4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00D488 8000D8D8 27BD0040 */  addiu       $sp, $sp, 0x40
/* 00D48C 8000D8DC 03E00008 */  jr          $ra
/* 00D490 8000D8E0 00000000 */   nop

glabel func_8000D8E4 # 18
/* 00D494 8000D8E4 8C8E0000 */  lw          $t6, 0x0($a0)
/* 00D498 8000D8E8 00001825 */  move        $v1, $zero
/* 00D49C 8000D8EC 01C5082A */  slt         $at, $t6, $a1
/* 00D4A0 8000D8F0 10200007 */  beqz        $at, .L8000D910
/* 00D4A4 8000D8F4 00000000 */   nop
/* 00D4A8 8000D8F8 8C8F0004 */  lw          $t7, 0x4($a0)
.L8000D8FC:
/* 00D4AC 8000D8FC 24630001 */  addiu       $v1, $v1, 0x1
/* 00D4B0 8000D900 24840004 */  addiu       $a0, $a0, 0x4
/* 00D4B4 8000D904 01E5082A */  slt         $at, $t7, $a1
/* 00D4B8 8000D908 5420FFFC */  bnel        $at, $zero, .L8000D8FC
/* 00D4BC 8000D90C 8C8F0004 */   lw         $t7, 0x4($a0)
.L8000D910:
/* 00D4C0 8000D910 03E00008 */  jr          $ra
/* 00D4C4 8000D914 00601025 */   move       $v0, $v1

glabel func_8000D918 # 19
/* 00D4C8 8000D918 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00D4CC 8000D91C 3C013F80 */  lui         $at, 0x3f80
/* 00D4D0 8000D920 44812000 */  mtc1        $at, $f4
/* 00D4D4 8000D924 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00D4D8 8000D928 AFB00018 */  sw          $s0, 0x18($sp)
/* 00D4DC 8000D92C AFA50024 */  sw          $a1, 0x24($sp)
/* 00D4E0 8000D930 C4C60000 */  lwc1        $f6, 0x0($a2)
/* 00D4E4 8000D934 460C2001 */  sub.s       $f0, $f4, $f12
/* 00D4E8 8000D938 C4AA0000 */  lwc1        $f10, 0x0($a1)
/* 00D4EC 8000D93C 460C3202 */  mul.s       $f8, $f6, $f12
/* 00D4F0 8000D940 24C30004 */  addiu       $v1, $a2, 0x4
/* 00D4F4 8000D944 00E08025 */  move        $s0, $a3
/* 00D4F8 8000D948 460A0402 */  mul.s       $f16, $f0, $f10
/* 00D4FC 8000D94C 24060009 */  addiu       $a2, $zero, 0x9
/* 00D500 8000D950 24050001 */  addiu       $a1, $zero, 0x1
/* 00D504 8000D954 24E40004 */  addiu       $a0, $a3, 0x4
/* 00D508 8000D958 46104480 */  add.s       $f18, $f8, $f16
/* 00D50C 8000D95C E4F20000 */  swc1        $f18, 0x0($a3)
/* 00D510 8000D960 8FA20024 */  lw          $v0, 0x24($sp)
/* 00D514 8000D964 24420004 */  addiu       $v0, $v0, 0x4
/* 00D518 8000D968 C46A0000 */  lwc1        $f10, 0x0($v1)
/* 00D51C 8000D96C C44E0000 */  lwc1        $f14, 0x0($v0)
/* 00D520 8000D970 24A50004 */  addiu       $a1, $a1, 0x4
/* 00D524 8000D974 460C5482 */  mul.s       $f18, $f10, $f12
/* 00D528 8000D978 00000000 */  nop
/* 00D52C 8000D97C 460E0402 */  mul.s       $f16, $f0, $f14
/* 00D530 8000D980 10A60023 */  beq         $a1, $a2, .L8000DA10
/* 00D534 8000D984 00000000 */   nop
.L8000D988:
/* 00D538 8000D988 46109380 */  add.s       $f14, $f18, $f16
/* 00D53C 8000D98C 24A50004 */  addiu       $a1, $a1, 0x4
/* 00D540 8000D990 24420010 */  addiu       $v0, $v0, 0x10
/* 00D544 8000D994 24630010 */  addiu       $v1, $v1, 0x10
/* 00D548 8000D998 E48E0000 */  swc1        $f14, 0x0($a0)
/* 00D54C 8000D99C C46EFFF4 */  lwc1        $f14, -0xc($v1)
/* 00D550 8000D9A0 C44AFFF4 */  lwc1        $f10, -0xc($v0)
/* 00D554 8000D9A4 24840010 */  addiu       $a0, $a0, 0x10
/* 00D558 8000D9A8 460C7382 */  mul.s       $f14, $f14, $f12
/* 00D55C 8000D9AC 00000000 */  nop
/* 00D560 8000D9B0 460A0282 */  mul.s       $f10, $f0, $f10
/* 00D564 8000D9B4 460A7280 */  add.s       $f10, $f14, $f10
/* 00D568 8000D9B8 E48AFFF4 */  swc1        $f10, -0xc($a0)
/* 00D56C 8000D9BC C46AFFF8 */  lwc1        $f10, -0x8($v1)
/* 00D570 8000D9C0 C44EFFF8 */  lwc1        $f14, -0x8($v0)
/* 00D574 8000D9C4 460C5282 */  mul.s       $f10, $f10, $f12
/* 00D578 8000D9C8 00000000 */  nop
/* 00D57C 8000D9CC 460E0382 */  mul.s       $f14, $f0, $f14
/* 00D580 8000D9D0 460E5380 */  add.s       $f14, $f10, $f14
/* 00D584 8000D9D4 E48EFFF8 */  swc1        $f14, -0x8($a0)
/* 00D588 8000D9D8 C46EFFFC */  lwc1        $f14, -0x4($v1)
/* 00D58C 8000D9DC C44AFFFC */  lwc1        $f10, -0x4($v0)
/* 00D590 8000D9E0 460C7382 */  mul.s       $f14, $f14, $f12
/* 00D594 8000D9E4 00000000 */  nop
/* 00D598 8000D9E8 460A0282 */  mul.s       $f10, $f0, $f10
/* 00D59C 8000D9EC 460A7280 */  add.s       $f10, $f14, $f10
/* 00D5A0 8000D9F0 E48AFFFC */  swc1        $f10, -0x4($a0)
/* 00D5A4 8000D9F4 C46A0000 */  lwc1        $f10, 0x0($v1)
/* 00D5A8 8000D9F8 C44E0000 */  lwc1        $f14, 0x0($v0)
/* 00D5AC 8000D9FC 460C5482 */  mul.s       $f18, $f10, $f12
/* 00D5B0 8000DA00 00000000 */  nop
/* 00D5B4 8000DA04 460E0402 */  mul.s       $f16, $f0, $f14
/* 00D5B8 8000DA08 14A6FFDF */  bne         $a1, $a2, .L8000D988
/* 00D5BC 8000DA0C 00000000 */   nop
.L8000DA10:
/* 00D5C0 8000DA10 46109380 */  add.s       $f14, $f18, $f16
/* 00D5C4 8000DA14 24420010 */  addiu       $v0, $v0, 0x10
/* 00D5C8 8000DA18 24630010 */  addiu       $v1, $v1, 0x10
/* 00D5CC 8000DA1C 24840010 */  addiu       $a0, $a0, 0x10
/* 00D5D0 8000DA20 E48EFFF0 */  swc1        $f14, -0x10($a0)
/* 00D5D4 8000DA24 C46EFFF4 */  lwc1        $f14, -0xc($v1)
/* 00D5D8 8000DA28 C44AFFF4 */  lwc1        $f10, -0xc($v0)
/* 00D5DC 8000DA2C 460C7382 */  mul.s       $f14, $f14, $f12
/* 00D5E0 8000DA30 00000000 */  nop
/* 00D5E4 8000DA34 460A0282 */  mul.s       $f10, $f0, $f10
/* 00D5E8 8000DA38 460A7280 */  add.s       $f10, $f14, $f10
/* 00D5EC 8000DA3C E48AFFF4 */  swc1        $f10, -0xc($a0)
/* 00D5F0 8000DA40 C46AFFF8 */  lwc1        $f10, -0x8($v1)
/* 00D5F4 8000DA44 C44EFFF8 */  lwc1        $f14, -0x8($v0)
/* 00D5F8 8000DA48 460C5282 */  mul.s       $f10, $f10, $f12
/* 00D5FC 8000DA4C 00000000 */  nop
/* 00D600 8000DA50 460E0382 */  mul.s       $f14, $f0, $f14
/* 00D604 8000DA54 460E5380 */  add.s       $f14, $f10, $f14
/* 00D608 8000DA58 E48EFFF8 */  swc1        $f14, -0x8($a0)
/* 00D60C 8000DA5C C46EFFFC */  lwc1        $f14, -0x4($v1)
/* 00D610 8000DA60 C44AFFFC */  lwc1        $f10, -0x4($v0)
/* 00D614 8000DA64 460C7382 */  mul.s       $f14, $f14, $f12
/* 00D618 8000DA68 00000000 */  nop
/* 00D61C 8000DA6C 460A0282 */  mul.s       $f10, $f0, $f10
/* 00D620 8000DA70 460A7280 */  add.s       $f10, $f14, $f10
/* 00D624 8000DA74 E48AFFFC */  swc1        $f10, -0x4($a0)
/* 00D628 8000DA78 0C00E9F0 */  jal         func_8003A7C0
/* 00D62C 8000DA7C 02002025 */   move       $a0, $s0
/* 00D630 8000DA80 0C00E9F0 */  jal         func_8003A7C0
/* 00D634 8000DA84 2604000C */   addiu      $a0, $s0, 0xc
/* 00D638 8000DA88 0C00E9F0 */  jal         func_8003A7C0
/* 00D63C 8000DA8C 26040018 */   addiu      $a0, $s0, 0x18
/* 00D640 8000DA90 44800000 */  mtc1        $zero, $f0
/* 00D644 8000DA94 00000000 */  nop
/* 00D648 8000DA98 E6000024 */  swc1        $f0, 0x24($s0)
/* 00D64C 8000DA9C E6000028 */  swc1        $f0, 0x28($s0)
/* 00D650 8000DAA0 E600002C */  swc1        $f0, 0x2c($s0)
/* 00D654 8000DAA4 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00D658 8000DAA8 8FB00018 */  lw          $s0, 0x18($sp)
/* 00D65C 8000DAAC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00D660 8000DAB0 03E00008 */  jr          $ra
/* 00D664 8000DAB4 00000000 */   nop

glabel func_8000DAB8 # 20
/* 00D668 8000DAB8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00D66C 8000DABC AFBF0014 */  sw          $ra, 0x14($sp)
/* 00D670 8000DAC0 0C00FEE4 */  jal         func_8003FB90
/* 00D674 8000DAC4 27A6001C */   addiu      $a2, $sp, 0x1c
/* 00D678 8000DAC8 0C0032A9 */  jal         func_8000CAA4
/* 00D67C 8000DACC 27A4001C */   addiu      $a0, $sp, 0x1c
/* 00D680 8000DAD0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00D684 8000DAD4 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00D688 8000DAD8 03E00008 */  jr          $ra
/* 00D68C 8000DADC 00000000 */   nop

glabel func_8000DAE0 # 21
/* 00D690 8000DAE0 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 00D694 8000DAE4 C7AA0068 */  lwc1        $f10, 0x68($sp)
/* 00D698 8000DAE8 3C013FF0 */  lui         $at, 0x3ff0
/* 00D69C 8000DAEC 44812800 */  mtc1        $at, $f5
/* 00D6A0 8000DAF0 44802000 */  mtc1        $zero, $f4
/* 00D6A4 8000DAF4 46005221 */  cvt.d.s     $f8, $f10
/* 00D6A8 8000DAF8 C7A6006C */  lwc1        $f6, 0x6c($sp)
/* 00D6AC 8000DAFC 46282283 */  div.d       $f10, $f4, $f8
/* 00D6B0 8000DB00 3C014008 */  lui         $at, 0x4008
/* 00D6B4 8000DB04 E7A60000 */  swc1        $f6, 0x0($sp)
/* 00D6B8 8000DB08 46063482 */  mul.s       $f18, $f6, $f6
/* 00D6BC 8000DB0C 44813800 */  mtc1        $at, $f7
/* 00D6C0 8000DB10 3C013F80 */  lui         $at, 0x3f80
/* 00D6C4 8000DB14 AFA60060 */  sw          $a2, 0x60($sp)
/* 00D6C8 8000DB18 AFA70064 */  sw          $a3, 0x64($sp)
/* 00D6CC 8000DB1C 46205420 */  cvt.s.d     $f16, $f10
/* 00D6D0 8000DB20 46108102 */  mul.s       $f4, $f16, $f16
/* 00D6D4 8000DB24 E7A40024 */  swc1        $f4, 0x24($sp)
/* 00D6D8 8000DB28 46069202 */  mul.s       $f8, $f18, $f6
/* 00D6DC 8000DB2C C7AA0024 */  lwc1        $f10, 0x24($sp)
/* 00D6E0 8000DB30 44803000 */  mtc1        $zero, $f6
/* 00D6E4 8000DB34 460A4102 */  mul.s       $f4, $f8, $f10
/* 00D6E8 8000DB38 460020A1 */  cvt.d.s     $f2, $f4
/* 00D6EC 8000DB3C E7A40020 */  swc1        $f4, 0x20($sp)
/* 00D6F0 8000DB40 46221200 */  add.d       $f8, $f2, $f2
/* 00D6F4 8000DB44 46008121 */  cvt.d.s     $f4, $f16
/* 00D6F8 8000DB48 46244202 */  mul.d       $f8, $f8, $f4
/* 00D6FC 8000DB4C 46204120 */  cvt.s.d     $f4, $f8
/* 00D700 8000DB50 46009221 */  cvt.d.s     $f8, $f18
/* 00D704 8000DB54 E7A40014 */  swc1        $f4, 0x14($sp)
/* 00D708 8000DB58 46264202 */  mul.d       $f8, $f8, $f6
/* 00D70C 8000DB5C 460051A1 */  cvt.d.s     $f6, $f10
/* 00D710 8000DB60 46264282 */  mul.d       $f10, $f8, $f6
/* 00D714 8000DB64 00000000 */  nop
/* 00D718 8000DB68 46109182 */  mul.s       $f6, $f18, $f16
/* 00D71C 8000DB6C 46205220 */  cvt.s.d     $f8, $f10
/* 00D720 8000DB70 E7A6002C */  swc1        $f6, 0x2c($sp)
/* 00D724 8000DB74 C7A6002C */  lwc1        $f6, 0x2c($sp)
/* 00D728 8000DB78 C7AA0020 */  lwc1        $f10, 0x20($sp)
/* 00D72C 8000DB7C E7A80024 */  swc1        $f8, 0x24($sp)
/* 00D730 8000DB80 E7A60004 */  swc1        $f6, 0x4($sp)
/* 00D734 8000DB84 46065281 */  sub.s       $f10, $f10, $f6
/* 00D738 8000DB88 46082181 */  sub.s       $f6, $f4, $f8
/* 00D73C 8000DB8C E7AA0028 */  swc1        $f10, 0x28($sp)
/* 00D740 8000DB90 E7AA0008 */  swc1        $f10, 0x8($sp)
/* 00D744 8000DB94 44815000 */  mtc1        $at, $f10
/* 00D748 8000DB98 00000000 */  nop
/* 00D74C 8000DB9C 460A3180 */  add.s       $f6, $f6, $f10
/* 00D750 8000DBA0 460C3282 */  mul.s       $f10, $f6, $f12
/* 00D754 8000DBA4 46044181 */  sub.s       $f6, $f8, $f4
/* 00D758 8000DBA8 46067202 */  mul.s       $f8, $f14, $f6
/* 00D75C 8000DBAC C7A60008 */  lwc1        $f6, 0x8($sp)
/* 00D760 8000DBB0 46085100 */  add.s       $f4, $f10, $f8
/* 00D764 8000DBB4 C7AA0004 */  lwc1        $f10, 0x4($sp)
/* 00D768 8000DBB8 460A3201 */  sub.s       $f8, $f6, $f10
/* 00D76C 8000DBBC C7AA0000 */  lwc1        $f10, 0x0($sp)
/* 00D770 8000DBC0 460A4200 */  add.s       $f8, $f8, $f10
/* 00D774 8000DBC4 C7AA0060 */  lwc1        $f10, 0x60($sp)
/* 00D778 8000DBC8 46085282 */  mul.s       $f10, $f10, $f8
/* 00D77C 8000DBCC 460A2200 */  add.s       $f8, $f4, $f10
/* 00D780 8000DBD0 C7A40064 */  lwc1        $f4, 0x64($sp)
/* 00D784 8000DBD4 27BD0058 */  addiu       $sp, $sp, 0x58
/* 00D788 8000DBD8 46062282 */  mul.s       $f10, $f4, $f6
/* 00D78C 8000DBDC 03E00008 */  jr          $ra
/* 00D790 8000DBE0 460A4000 */   add.s      $f0, $f8, $f10

glabel func_8000DBE4 # 22
/* 00D794 8000DBE4 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 00D798 8000DBE8 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 00D79C 8000DBEC 4487A000 */  mtc1        $a3, $f20
/* 00D7A0 8000DBF0 C7A40050 */  lwc1        $f4, 0x50($sp)
/* 00D7A4 8000DBF4 AFB10028 */  sw          $s1, 0x28($sp)
/* 00D7A8 8000DBF8 AFB00024 */  sw          $s0, 0x24($sp)
/* 00D7AC 8000DBFC 4604A03C */  c.lt.s      $f20, $f4
/* 00D7B0 8000DC00 00A08025 */  move        $s0, $a1
/* 00D7B4 8000DC04 00C08825 */  move        $s1, $a2
/* 00D7B8 8000DC08 AFBF002C */  sw          $ra, 0x2c($sp)
/* 00D7BC 8000DC0C 45000002 */  bc1f        .L8000DC18
/* 00D7C0 8000DC10 AFA40040 */   sw         $a0, 0x40($sp)
/* 00D7C4 8000DC14 E7B40050 */  swc1        $f20, 0x50($sp)
.L8000DC18:
/* 00D7C8 8000DC18 44801000 */  mtc1        $zero, $f2
/* 00D7CC 8000DC1C 8FAE0040 */  lw          $t6, 0x40($sp)
/* 00D7D0 8000DC20 C7A60050 */  lwc1        $f6, 0x50($sp)
/* 00D7D4 8000DC24 C60E0000 */  lwc1        $f14, 0x0($s0)
/* 00D7D8 8000DC28 C5CC0000 */  lwc1        $f12, 0x0($t6)
/* 00D7DC 8000DC2C 44061000 */  mfc1        $a2, $f2
/* 00D7E0 8000DC30 44071000 */  mfc1        $a3, $f2
/* 00D7E4 8000DC34 E7B40010 */  swc1        $f20, 0x10($sp)
/* 00D7E8 8000DC38 0C0036B8 */  jal         func_8000DAE0
/* 00D7EC 8000DC3C E7A60014 */   swc1       $f6, 0x14($sp)
/* 00D7F0 8000DC40 44801000 */  mtc1        $zero, $f2
/* 00D7F4 8000DC44 E6200000 */  swc1        $f0, 0x0($s1)
/* 00D7F8 8000DC48 8FAF0040 */  lw          $t7, 0x40($sp)
/* 00D7FC 8000DC4C C7A80050 */  lwc1        $f8, 0x50($sp)
/* 00D800 8000DC50 C60E0004 */  lwc1        $f14, 0x4($s0)
/* 00D804 8000DC54 44061000 */  mfc1        $a2, $f2
/* 00D808 8000DC58 44071000 */  mfc1        $a3, $f2
/* 00D80C 8000DC5C C5EC0004 */  lwc1        $f12, 0x4($t7)
/* 00D810 8000DC60 E7B40010 */  swc1        $f20, 0x10($sp)
/* 00D814 8000DC64 0C0036B8 */  jal         func_8000DAE0
/* 00D818 8000DC68 E7A80014 */   swc1       $f8, 0x14($sp)
/* 00D81C 8000DC6C 44801000 */  mtc1        $zero, $f2
/* 00D820 8000DC70 E6200004 */  swc1        $f0, 0x4($s1)
/* 00D824 8000DC74 8FB80040 */  lw          $t8, 0x40($sp)
/* 00D828 8000DC78 C7AA0050 */  lwc1        $f10, 0x50($sp)
/* 00D82C 8000DC7C C60E0008 */  lwc1        $f14, 0x8($s0)
/* 00D830 8000DC80 44061000 */  mfc1        $a2, $f2
/* 00D834 8000DC84 44071000 */  mfc1        $a3, $f2
/* 00D838 8000DC88 C70C0008 */  lwc1        $f12, 0x8($t8)
/* 00D83C 8000DC8C E7B40010 */  swc1        $f20, 0x10($sp)
/* 00D840 8000DC90 0C0036B8 */  jal         func_8000DAE0
/* 00D844 8000DC94 E7AA0014 */   swc1       $f10, 0x14($sp)
/* 00D848 8000DC98 E6200008 */  swc1        $f0, 0x8($s1)
/* 00D84C 8000DC9C C6100000 */  lwc1        $f16, 0x0($s0)
/* 00D850 8000DCA0 C6320000 */  lwc1        $f18, 0x0($s1)
/* 00D854 8000DCA4 27A40030 */  addiu       $a0, $sp, 0x30
/* 00D858 8000DCA8 46128101 */  sub.s       $f4, $f16, $f18
/* 00D85C 8000DCAC E7A40030 */  swc1        $f4, 0x30($sp)
/* 00D860 8000DCB0 C6280004 */  lwc1        $f8, 0x4($s1)
/* 00D864 8000DCB4 C6060004 */  lwc1        $f6, 0x4($s0)
/* 00D868 8000DCB8 46083281 */  sub.s       $f10, $f6, $f8
/* 00D86C 8000DCBC E7AA0034 */  swc1        $f10, 0x34($sp)
/* 00D870 8000DCC0 C6320008 */  lwc1        $f18, 0x8($s1)
/* 00D874 8000DCC4 C6100008 */  lwc1        $f16, 0x8($s0)
/* 00D878 8000DCC8 46128101 */  sub.s       $f4, $f16, $f18
/* 00D87C 8000DCCC 0C00E974 */  jal         func_8003A5D0
/* 00D880 8000DCD0 E7A40038 */   swc1       $f4, 0x38($sp)
/* 00D884 8000DCD4 3C01800A */  lui         $at, %hi(D_800A0D20)
/* 00D888 8000DCD8 C4260D20 */  lwc1        $f6, %lo(D_800A0D20)($at)
/* 00D88C 8000DCDC 3C01800A */  lui         $at, %hi(D_800A0D24)
/* 00D890 8000DCE0 00001025 */  move        $v0, $zero
/* 00D894 8000DCE4 4606003C */  c.lt.s      $f0, $f6
/* 00D898 8000DCE8 00000000 */  nop
/* 00D89C 8000DCEC 4500000E */  bc1f        .L8000DD28
/* 00D8A0 8000DCF0 00000000 */   nop
/* 00D8A4 8000DCF4 C4280D24 */  lwc1        $f8, %lo(D_800A0D24)($at)
/* 00D8A8 8000DCF8 4600403C */  c.lt.s      $f8, $f0
/* 00D8AC 8000DCFC 00000000 */  nop
/* 00D8B0 8000DD00 45000009 */  bc1f        .L8000DD28
/* 00D8B4 8000DD04 00000000 */   nop
/* 00D8B8 8000DD08 C60A0000 */  lwc1        $f10, 0x0($s0)
/* 00D8BC 8000DD0C 2402FFFF */  addiu       $v0, $zero, -0x1
/* 00D8C0 8000DD10 E62A0000 */  swc1        $f10, 0x0($s1)
/* 00D8C4 8000DD14 C6100004 */  lwc1        $f16, 0x4($s0)
/* 00D8C8 8000DD18 E6300004 */  swc1        $f16, 0x4($s1)
/* 00D8CC 8000DD1C C6120008 */  lwc1        $f18, 0x8($s0)
/* 00D8D0 8000DD20 10000001 */  b           .L8000DD28
/* 00D8D4 8000DD24 E6320008 */   swc1       $f18, 0x8($s1)
.L8000DD28:
/* 00D8D8 8000DD28 8FBF002C */  lw          $ra, 0x2c($sp)
/* 00D8DC 8000DD2C D7B40018 */  ldc1        $f20, 0x18($sp)
/* 00D8E0 8000DD30 8FB00024 */  lw          $s0, 0x24($sp)
/* 00D8E4 8000DD34 8FB10028 */  lw          $s1, 0x28($sp)
/* 00D8E8 8000DD38 03E00008 */  jr          $ra
/* 00D8EC 8000DD3C 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_8000DD40 # 23
/* 00D8F0 8000DD40 04A00003 */  bltz        $a1, .L8000DD50
/* 00D8F4 8000DD44 3C013F80 */   lui        $at, 0x3f80
/* 00D8F8 8000DD48 10000002 */  b           .L8000DD54
/* 00D8FC 8000DD4C 00A01025 */   move       $v0, $a1
.L8000DD50:
/* 00D900 8000DD50 00051023 */  negu        $v0, $a1
.L8000DD54:
/* 00D904 8000DD54 44817000 */  mtc1        $at, $f14
/* 00D908 8000DD58 10400009 */  beqz        $v0, .L8000DD80
/* 00D90C 8000DD5C 46007086 */   mov.s      $f2, $f14
.L8000DD60:
/* 00D910 8000DD60 304E0001 */  andi        $t6, $v0, 0x1
/* 00D914 8000DD64 11C00003 */  beqz        $t6, .L8000DD74
/* 00D918 8000DD68 00027843 */   sra        $t7, $v0, 1
/* 00D91C 8000DD6C 460C1082 */  mul.s       $f2, $f2, $f12
/* 00D920 8000DD70 00000000 */  nop
.L8000DD74:
/* 00D924 8000DD74 460C6302 */  mul.s       $f12, $f12, $f12
/* 00D928 8000DD78 15E0FFF9 */  bnez        $t7, .L8000DD60
/* 00D92C 8000DD7C 01E01025 */   move       $v0, $t7
.L8000DD80:
/* 00D930 8000DD80 04A20004 */  bltzl       $a1, .L8000DD94
/* 00D934 8000DD84 46027003 */   div.s      $f0, $f14, $f2
/* 00D938 8000DD88 03E00008 */  jr          $ra
/* 00D93C 8000DD8C 46001006 */   mov.s      $f0, $f2
/* 00D940 8000DD90 46027003 */  div.s       $f0, $f14, $f2
.L8000DD94:
/* 00D944 8000DD94 03E00008 */  jr          $ra
/* 00D948 8000DD98 00000000 */   nop

glabel func_8000DD9C # 24
/* 00D94C 8000DD9C 2403FFFF */  addiu       $v1, $zero, -0x1
/* 00D950 8000DDA0 1880002A */  blez        $a0, .L8000DE4C
/* 00D954 8000DDA4 00001025 */   move       $v0, $zero
/* 00D958 8000DDA8 3C07EDB8 */  lui         $a3, 0xedb8
/* 00D95C 8000DDAC 34E78320 */  ori         $a3, $a3, 0x8320
/* 00D960 8000DDB0 00A03025 */  move        $a2, $a1
/* 00D964 8000DDB4 24080008 */  addiu       $t0, $zero, 0x8
.L8000DDB8:
/* 00D968 8000DDB8 90CE0000 */  lbu         $t6, 0x0($a2)
/* 00D96C 8000DDBC 24420001 */  addiu       $v0, $v0, 0x1
/* 00D970 8000DDC0 00002825 */  move        $a1, $zero
/* 00D974 8000DDC4 006E1826 */  xor         $v1, $v1, $t6
/* 00D978 8000DDC8 306F0001 */  andi        $t7, $v1, 0x1
.L8000DDCC:
/* 00D97C 8000DDCC 11E00004 */  beqz        $t7, .L8000DDE0
/* 00D980 8000DDD0 24A50004 */   addiu      $a1, $a1, 0x4
/* 00D984 8000DDD4 0003C042 */  srl         $t8, $v1, 1
/* 00D988 8000DDD8 10000003 */  b           .L8000DDE8
/* 00D98C 8000DDDC 03071826 */   xor        $v1, $t8, $a3
.L8000DDE0:
/* 00D990 8000DDE0 0003C842 */  srl         $t9, $v1, 1
/* 00D994 8000DDE4 03201825 */  move        $v1, $t9
.L8000DDE8:
/* 00D998 8000DDE8 30690001 */  andi        $t1, $v1, 0x1
/* 00D99C 8000DDEC 11200004 */  beqz        $t1, .L8000DE00
/* 00D9A0 8000DDF0 00035842 */   srl        $t3, $v1, 1
/* 00D9A4 8000DDF4 00035042 */  srl         $t2, $v1, 1
/* 00D9A8 8000DDF8 10000002 */  b           .L8000DE04
/* 00D9AC 8000DDFC 01471826 */   xor        $v1, $t2, $a3
.L8000DE00:
/* 00D9B0 8000DE00 01601825 */  move        $v1, $t3
.L8000DE04:
/* 00D9B4 8000DE04 306C0001 */  andi        $t4, $v1, 0x1
/* 00D9B8 8000DE08 11800004 */  beqz        $t4, .L8000DE1C
/* 00D9BC 8000DE0C 00037042 */   srl        $t6, $v1, 1
/* 00D9C0 8000DE10 00036842 */  srl         $t5, $v1, 1
/* 00D9C4 8000DE14 10000002 */  b           .L8000DE20
/* 00D9C8 8000DE18 01A71826 */   xor        $v1, $t5, $a3
.L8000DE1C:
/* 00D9CC 8000DE1C 01C01825 */  move        $v1, $t6
.L8000DE20:
/* 00D9D0 8000DE20 306F0001 */  andi        $t7, $v1, 0x1
/* 00D9D4 8000DE24 11E00004 */  beqz        $t7, .L8000DE38
/* 00D9D8 8000DE28 0003C842 */   srl        $t9, $v1, 1
/* 00D9DC 8000DE2C 0003C042 */  srl         $t8, $v1, 1
/* 00D9E0 8000DE30 10000002 */  b           .L8000DE3C
/* 00D9E4 8000DE34 03071826 */   xor        $v1, $t8, $a3
.L8000DE38:
/* 00D9E8 8000DE38 03201825 */  move        $v1, $t9
.L8000DE3C:
/* 00D9EC 8000DE3C 54A8FFE3 */  bnel        $a1, $t0, .L8000DDCC
/* 00D9F0 8000DE40 306F0001 */   andi       $t7, $v1, 0x1
/* 00D9F4 8000DE44 1444FFDC */  bne         $v0, $a0, .L8000DDB8
/* 00D9F8 8000DE48 24C60001 */   addiu      $a2, $a2, 0x1
.L8000DE4C:
/* 00D9FC 8000DE4C 2401FFFF */  addiu       $at, $zero, -0x1
/* 00DA00 8000DE50 03E00008 */  jr          $ra
/* 00DA04 8000DE54 00611026 */   xor        $v0, $v1, $at

glabel func_8000DE58 # 25
/* 00DA08 8000DE58 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00DA0C 8000DE5C AFB30024 */  sw          $s3, 0x24($sp)
/* 00DA10 8000DE60 00809825 */  move        $s3, $a0
/* 00DA14 8000DE64 AFBF002C */  sw          $ra, 0x2c($sp)
/* 00DA18 8000DE68 AFB40028 */  sw          $s4, 0x28($sp)
/* 00DA1C 8000DE6C AFB20020 */  sw          $s2, 0x20($sp)
/* 00DA20 8000DE70 AFB1001C */  sw          $s1, 0x1c($sp)
/* 00DA24 8000DE74 18800004 */  blez        $a0, .L8000DE88
/* 00DA28 8000DE78 AFB00018 */   sw         $s0, 0x18($sp)
/* 00DA2C 8000DE7C 2C810021 */  sltiu       $at, $a0, 0x21
/* 00DA30 8000DE80 14200005 */  bnez        $at, .L8000DE98
/* 00DA34 8000DE84 3C0E8007 */   lui        $t6, %hi(D_8006B580)
.L8000DE88:
/* 00DA38 8000DE88 0C00EAC8 */  jal         func_8003AB20
/* 00DA3C 8000DE8C 02602025 */   move       $a0, $s3
/* 00DA40 8000DE90 10000030 */  b           .L8000DF54
/* 00DA44 8000DE94 8FBF002C */   lw         $ra, 0x2c($sp)
.L8000DE98:
/* 00DA48 8000DE98 8DCEB580 */  lw          $t6, %lo(D_8006B580)($t6)
/* 00DA4C 8000DE9C 126E0015 */  beq         $s3, $t6, .L8000DEF4
/* 00DA50 8000DEA0 00000000 */   nop
/* 00DA54 8000DEA4 1A600011 */  blez        $s3, .L8000DEEC
/* 00DA58 8000DEA8 00008825 */   move       $s1, $zero
/* 00DA5C 8000DEAC 3C10800B */  lui         $s0, %hi(D_800B6810)
/* 00DA60 8000DEB0 3C14800B */  lui         $s4, %hi(D_800B6810)
/* 00DA64 8000DEB4 26946810 */  addiu       $s4, $s4, %lo(D_800B6810)
/* 00DA68 8000DEB8 26106810 */  addiu       $s0, $s0, %lo(D_800B6810)
.L8000DEBC:
/* 00DA6C 8000DEBC 26320001 */  addiu       $s2, $s1, 0x1
/* 00DA70 8000DEC0 A2110000 */  sb          $s1, 0x0($s0)
/* 00DA74 8000DEC4 0C00EAC8 */  jal         func_8003AB20
/* 00DA78 8000DEC8 02402025 */   move       $a0, $s2
/* 00DA7C 8000DECC 920F0000 */  lbu         $t7, 0x0($s0)
/* 00DA80 8000DED0 02821821 */  addu        $v1, $s4, $v0
/* 00DA84 8000DED4 90640000 */  lbu         $a0, 0x0($v1)
/* 00DA88 8000DED8 A06F0000 */  sb          $t7, 0x0($v1)
/* 00DA8C 8000DEDC 02408825 */  move        $s1, $s2
/* 00DA90 8000DEE0 26100001 */  addiu       $s0, $s0, 0x1
/* 00DA94 8000DEE4 1653FFF5 */  bne         $s2, $s3, .L8000DEBC
/* 00DA98 8000DEE8 A204FFFF */   sb         $a0, -0x1($s0)
.L8000DEEC:
/* 00DA9C 8000DEEC 3C018007 */  lui         $at, %hi(D_8006B580)
/* 00DAA0 8000DEF0 AC33B580 */  sw          $s3, %lo(D_8006B580)($at)
.L8000DEF4:
/* 00DAA4 8000DEF4 02730019 */  multu       $s3, $s3
/* 00DAA8 8000DEF8 3C14800B */  lui         $s4, %hi(D_800B6810)
/* 00DAAC 8000DEFC 26946810 */  addiu       $s4, $s4, %lo(D_800B6810)
/* 00DAB0 8000DF00 00002012 */  mflo        $a0
/* 00DAB4 8000DF04 0C00EAC8 */  jal         func_8003AB20
/* 00DAB8 8000DF08 00000000 */   nop
/* 00DABC 8000DF0C 2443FFFF */  addiu       $v1, $v0, -0x1
/* 00DAC0 8000DF10 92840000 */  lbu         $a0, 0x0($s4)
/* 00DAC4 8000DF14 0460000C */  bltz        $v1, .L8000DF48
/* 00DAC8 8000DF18 24110001 */   addiu      $s1, $zero, 0x1
/* 00DACC 8000DF1C 3C10800B */  lui         $s0, %hi(D_800B6810 + 0x1)
/* 00DAD0 8000DF20 26106811 */  addiu       $s0, $s0, %lo(D_800B6810 + 0x1)
.L8000DF24:
/* 00DAD4 8000DF24 26310001 */  addiu       $s1, $s1, 0x1
/* 00DAD8 8000DF28 0071C023 */  subu        $t8, $v1, $s1
/* 00DADC 8000DF2C 03111823 */  subu        $v1, $t8, $s1
/* 00DAE0 8000DF30 00801025 */  move        $v0, $a0
/* 00DAE4 8000DF34 24630001 */  addiu       $v1, $v1, 0x1
/* 00DAE8 8000DF38 92040000 */  lbu         $a0, 0x0($s0)
/* 00DAEC 8000DF3C 26100001 */  addiu       $s0, $s0, 0x1
/* 00DAF0 8000DF40 0461FFF8 */  bgez        $v1, .L8000DF24
/* 00DAF4 8000DF44 A202FFFF */   sb         $v0, -0x1($s0)
.L8000DF48:
/* 00DAF8 8000DF48 A2840000 */  sb          $a0, 0x0($s4)
/* 00DAFC 8000DF4C 00801025 */  move        $v0, $a0
/* 00DB00 8000DF50 8FBF002C */  lw          $ra, 0x2c($sp)
.L8000DF54:
/* 00DB04 8000DF54 8FB00018 */  lw          $s0, 0x18($sp)
/* 00DB08 8000DF58 8FB1001C */  lw          $s1, 0x1c($sp)
/* 00DB0C 8000DF5C 8FB20020 */  lw          $s2, 0x20($sp)
/* 00DB10 8000DF60 8FB30024 */  lw          $s3, 0x24($sp)
/* 00DB14 8000DF64 8FB40028 */  lw          $s4, 0x28($sp)
/* 00DB18 8000DF68 03E00008 */  jr          $ra
/* 00DB1C 8000DF6C 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8000DF70 # 26
/* 00DB20 8000DF70 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00DB24 8000DF74 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00DB28 8000DF78 C48C0000 */  lwc1        $f12, 0x0($a0)
/* 00DB2C 8000DF7C C48E0008 */  lwc1        $f14, 0x8($a0)
/* 00DB30 8000DF80 3C01800A */  lui         $at, %hi(D_800A10C0)
/* 00DB34 8000DF84 460C6102 */  mul.s       $f4, $f12, $f12
/* 00DB38 8000DF88 C42810C0 */  lwc1        $f8, %lo(D_800A10C0)($at)
/* 00DB3C 8000DF8C 00A03025 */  move        $a2, $a1
/* 00DB40 8000DF90 460E7182 */  mul.s       $f6, $f14, $f14
/* 00DB44 8000DF94 3C01800A */  lui         $at, %hi(D_800A10C4)
/* 00DB48 8000DF98 46062000 */  add.s       $f0, $f4, $f6
/* 00DB4C 8000DF9C 46000004 */  sqrt.s      $f0, $f0
/* 00DB50 8000DFA0 4608003C */  c.lt.s      $f0, $f8
/* 00DB54 8000DFA4 46000086 */  mov.s       $f2, $f0
/* 00DB58 8000DFA8 46026303 */  div.s       $f12, $f12, $f2
/* 00DB5C 8000DFAC 4502000A */  bc1fl       .L8000DFD8
/* 00DB60 8000DFB0 46027383 */   div.s      $f14, $f14, $f2
/* 00DB64 8000DFB4 C42A10C4 */  lwc1        $f10, %lo(D_800A10C4)($at)
/* 00DB68 8000DFB8 4600503C */  c.lt.s      $f10, $f0
/* 00DB6C 8000DFBC 00000000 */  nop
/* 00DB70 8000DFC0 45020005 */  bc1fl       .L8000DFD8
/* 00DB74 8000DFC4 46027383 */   div.s      $f14, $f14, $f2
/* 00DB78 8000DFC8 44808000 */  mtc1        $zero, $f16
/* 00DB7C 8000DFCC 00000000 */  nop
/* 00DB80 8000DFD0 E4B00000 */  swc1        $f16, 0x0($a1)
/* 00DB84 8000DFD4 46027383 */  div.s       $f14, $f14, $f2
.L8000DFD8:
/* 00DB88 8000DFD8 AFA40018 */  sw          $a0, 0x18($sp)
/* 00DB8C 8000DFDC 0C00ECC6 */  jal         func_8003B318
/* 00DB90 8000DFE0 AFA6001C */   sw         $a2, 0x1c($sp)
/* 00DB94 8000DFE4 8FA6001C */  lw          $a2, 0x1c($sp)
/* 00DB98 8000DFE8 46000087 */  neg.s       $f2, $f0
/* 00DB9C 8000DFEC 8FA50018 */  lw          $a1, 0x18($sp)
/* 00DBA0 8000DFF0 46001307 */  neg.s       $f12, $f2
/* 00DBA4 8000DFF4 0C0035D9 */  jal         func_8000D764
/* 00DBA8 8000DFF8 E4C20000 */   swc1       $f2, 0x0($a2)
/* 00DBAC 8000DFFC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00DBB0 8000E000 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00DBB4 8000E004 03E00008 */  jr          $ra
/* 00DBB8 8000E008 00000000 */   nop

glabel func_8000E00C # 27
/* 00DBBC 8000E00C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00DBC0 8000E010 AFA40028 */  sw          $a0, 0x28($sp)
/* 00DBC4 8000E014 8FAF0028 */  lw          $t7, 0x28($sp)
/* 00DBC8 8000E018 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00DBCC 8000E01C AFA5002C */  sw          $a1, 0x2c($sp)
/* 00DBD0 8000E020 8CA20054 */  lw          $v0, 0x54($a1)
/* 00DBD4 8000E024 8DE50000 */  lw          $a1, 0x0($t7)
/* 00DBD8 8000E028 8DE70008 */  lw          $a3, 0x8($t7)
/* 00DBDC 8000E02C 8DE60004 */  lw          $a2, 0x4($t7)
/* 00DBE0 8000E030 24440018 */  addiu       $a0, $v0, 0x18
/* 00DBE4 8000E034 AFA4001C */  sw          $a0, 0x1c($sp)
/* 00DBE8 8000E038 0C00E665 */  jal         func_80039994
/* 00DBEC 8000E03C AFA20024 */   sw         $v0, 0x24($sp)
/* 00DBF0 8000E040 8FA4001C */  lw          $a0, 0x1c($sp)
/* 00DBF4 8000E044 0C0037DC */  jal         func_8000DF70
/* 00DBF8 8000E048 27A50020 */   addiu      $a1, $sp, 0x20
/* 00DBFC 8000E04C 8FB80024 */  lw          $t8, 0x24($sp)
/* 00DC00 8000E050 C7A40020 */  lwc1        $f4, 0x20($sp)
/* 00DC04 8000E054 8FA4002C */  lw          $a0, 0x2c($sp)
/* 00DC08 8000E058 C7060048 */  lwc1        $f6, 0x48($t8)
/* 00DC0C 8000E05C 24060001 */  addiu       $a2, $zero, 0x1
/* 00DC10 8000E060 46062201 */  sub.s       $f8, $f4, $f6
/* 00DC14 8000E064 44054000 */  mfc1        $a1, $f8
/* 00DC18 8000E068 0C0057E5 */  jal         func_80015F94
/* 00DC1C 8000E06C 00000000 */   nop
/* 00DC20 8000E070 C7AA0020 */  lwc1        $f10, 0x20($sp)
/* 00DC24 8000E074 8FB90024 */  lw          $t9, 0x24($sp)
/* 00DC28 8000E078 E72A0048 */  swc1        $f10, 0x48($t9)
/* 00DC2C 8000E07C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00DC30 8000E080 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00DC34 8000E084 03E00008 */  jr          $ra
/* 00DC38 8000E088 00000000 */   nop

glabel func_8000E08C # 28
/* 00DC3C 8000E08C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00DC40 8000E090 04800004 */  bltz        $a0, .L8000E0A4
/* 00DC44 8000E094 AFBF0014 */   sw         $ra, 0x14($sp)
/* 00DC48 8000E098 2881014A */  slti        $at, $a0, 0x14a
/* 00DC4C 8000E09C 14200003 */  bnez        $at, .L8000E0AC
/* 00DC50 8000E0A0 00047080 */   sll        $t6, $a0, 2
.L8000E0A4:
/* 00DC54 8000E0A4 10000008 */  b           .L8000E0C8
/* 00DC58 8000E0A8 00001025 */   move       $v0, $zero
.L8000E0AC:
/* 00DC5C 8000E0AC 01C47023 */  subu        $t6, $t6, $a0
/* 00DC60 8000E0B0 000E7080 */  sll         $t6, $t6, 2
/* 00DC64 8000E0B4 01C47023 */  subu        $t6, $t6, $a0
/* 00DC68 8000E0B8 3C0F8007 */  lui         $t7, %hi(D_8006B590)
/* 00DC6C 8000E0BC 25EFB590 */  addiu       $t7, $t7, %lo(D_8006B590)
/* 00DC70 8000E0C0 000E7080 */  sll         $t6, $t6, 2
/* 00DC74 8000E0C4 01CF1021 */  addu        $v0, $t6, $t7
.L8000E0C8:
/* 00DC78 8000E0C8 10400007 */  beqz        $v0, .L8000E0E8
/* 00DC7C 8000E0CC 00000000 */   nop
/* 00DC80 8000E0D0 8C58000C */  lw          $t8, 0xc($v0)
/* 00DC84 8000E0D4 24010001 */  addiu       $at, $zero, 0x1
/* 00DC88 8000E0D8 3C04800B */  lui         $a0, %hi(D_800B6930)
/* 00DC8C 8000E0DC 33190007 */  andi        $t9, $t8, 0x7
/* 00DC90 8000E0E0 13210003 */  beq         $t9, $at, .L8000E0F0
/* 00DC94 8000E0E4 24846930 */   addiu      $a0, $a0, %lo(D_800B6930)
.L8000E0E8:
/* 00DC98 8000E0E8 10000005 */  b           .L8000E100
/* 00DC9C 8000E0EC 00001025 */   move       $v0, $zero
.L8000E0F0:
/* 00DCA0 8000E0F0 84450010 */  lh          $a1, 0x10($v0)
/* 00DCA4 8000E0F4 0C005C8A */  jal         func_80017228
/* 00DCA8 8000E0F8 27A60018 */   addiu      $a2, $sp, 0x18
/* 00DCAC 8000E0FC 8FA20018 */  lw          $v0, 0x18($sp)
.L8000E100:
/* 00DCB0 8000E100 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00DCB4 8000E104 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00DCB8 8000E108 03E00008 */  jr          $ra
/* 00DCBC 8000E10C 00000000 */   nop

glabel func_8000E110 # 29
/* 00DCC0 8000E110 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00DCC4 8000E114 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00DCC8 8000E118 8C820054 */  lw          $v0, 0x54($a0)
/* 00DCCC 8000E11C 24010001 */  addiu       $at, $zero, 0x1
/* 00DCD0 8000E120 3C04800B */  lui         $a0, %hi(D_800B6930)
/* 00DCD4 8000E124 8C4300F8 */  lw          $v1, 0xf8($v0)
/* 00DCD8 8000E128 24846930 */  addiu       $a0, $a0, %lo(D_800B6930)
/* 00DCDC 8000E12C 27A60020 */  addiu       $a2, $sp, 0x20
/* 00DCE0 8000E130 306E0007 */  andi        $t6, $v1, 0x7
/* 00DCE4 8000E134 11C10003 */  beq         $t6, $at, .L8000E144
/* 00DCE8 8000E138 24010003 */   addiu      $at, $zero, 0x3
/* 00DCEC 8000E13C 55C10004 */  bnel        $t6, $at, .L8000E150
/* 00DCF0 8000E140 8FBF0014 */   lw         $ra, 0x14($sp)
.L8000E144:
/* 00DCF4 8000E144 0C005C8A */  jal         func_80017228
/* 00DCF8 8000E148 844500FC */   lh         $a1, 0xfc($v0)
/* 00DCFC 8000E14C 8FBF0014 */  lw          $ra, 0x14($sp)
.L8000E150:
/* 00DD00 8000E150 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00DD04 8000E154 03E00008 */  jr          $ra
/* 00DD08 8000E158 00000000 */   nop

glabel func_8000E15C # 30
/* 00DD0C 8000E15C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00DD10 8000E160 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00DD14 8000E164 8C820054 */  lw          $v0, 0x54($a0)
/* 00DD18 8000E168 44800000 */  mtc1        $zero, $f0
/* 00DD1C 8000E16C 00002825 */  move        $a1, $zero
/* 00DD20 8000E170 A440011C */  sh          $zero, 0x11c($v0)
/* 00DD24 8000E174 E4400134 */  swc1        $f0, 0x134($v0)
/* 00DD28 8000E178 0C003864 */  jal         func_8000E190
/* 00DD2C 8000E17C E4400138 */   swc1       $f0, 0x138($v0)
/* 00DD30 8000E180 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00DD34 8000E184 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00DD38 8000E188 03E00008 */  jr          $ra
/* 00DD3C 8000E18C 00000000 */   nop

glabel func_8000E190 # 31
/* 00DD40 8000E190 8C820054 */  lw          $v0, 0x54($a0)
/* 00DD44 8000E194 24040004 */  addiu       $a0, $zero, 0x4
/* 00DD48 8000E198 8C460050 */  lw          $a2, 0x50($v0)
/* 00DD4C 8000E19C A445011A */  sh          $a1, 0x11a($v0)
/* 00DD50 8000E1A0 28C10002 */  slti        $at, $a2, 0x2
/* 00DD54 8000E1A4 14200016 */  bnez        $at, .L8000E200
/* 00DD58 8000E1A8 00000000 */   nop
/* 00DD5C 8000E1AC 8C4E004C */  lw          $t6, 0x4c($v0)
.L8000E1B0:
/* 00DD60 8000E1B0 01C47821 */  addu        $t7, $t6, $a0
/* 00DD64 8000E1B4 8DE30000 */  lw          $v1, 0x0($t7)
/* 00DD68 8000E1B8 24840004 */  addiu       $a0, $a0, 0x4
/* 00DD6C 8000E1BC 54600004 */  bnel        $v1, $zero, .L8000E1D0
/* 00DD70 8000E1C0 94670034 */   lhu        $a3, 0x34($v1)
/* 00DD74 8000E1C4 1000000B */  b           .L8000E1F4
/* 00DD78 8000E1C8 00061880 */   sll        $v1, $a2, 2
/* 00DD7C 8000E1CC 94670034 */  lhu         $a3, 0x34($v1)
.L8000E1D0:
/* 00DD80 8000E1D0 28E10026 */  slti        $at, $a3, 0x26
/* 00DD84 8000E1D4 14200006 */  bnez        $at, .L8000E1F0
/* 00DD88 8000E1D8 28E10064 */   slti       $at, $a3, 0x64
/* 00DD8C 8000E1DC 50200005 */  beql        $at, $zero, .L8000E1F4
/* 00DD90 8000E1E0 00061880 */   sll        $v1, $a2, 2
/* 00DD94 8000E1E4 8C780054 */  lw          $t8, 0x54($v1)
/* 00DD98 8000E1E8 A7050000 */  sh          $a1, 0x0($t8)
/* 00DD9C 8000E1EC 8C460050 */  lw          $a2, 0x50($v0)
.L8000E1F0:
/* 00DDA0 8000E1F0 00061880 */  sll         $v1, $a2, 2
.L8000E1F4:
/* 00DDA4 8000E1F4 0083082A */  slt         $at, $a0, $v1
/* 00DDA8 8000E1F8 5420FFED */  bnel        $at, $zero, .L8000E1B0
/* 00DDAC 8000E1FC 8C4E004C */   lw         $t6, 0x4c($v0)
.L8000E200:
/* 00DDB0 8000E200 03E00008 */  jr          $ra
/* 00DDB4 8000E204 00000000 */   nop

glabel func_8000E208 # 32
/* 00DDB8 8000E208 27BDFF68 */  addiu       $sp, $sp, -0x98
/* 00DDBC 8000E20C AFBF0044 */  sw          $ra, 0x44($sp)
/* 00DDC0 8000E210 AFBE0040 */  sw          $fp, 0x40($sp)
/* 00DDC4 8000E214 AFB7003C */  sw          $s7, 0x3c($sp)
/* 00DDC8 8000E218 AFB60038 */  sw          $s6, 0x38($sp)
/* 00DDCC 8000E21C AFB50034 */  sw          $s5, 0x34($sp)
/* 00DDD0 8000E220 AFB40030 */  sw          $s4, 0x30($sp)
/* 00DDD4 8000E224 AFB3002C */  sw          $s3, 0x2c($sp)
/* 00DDD8 8000E228 AFB20028 */  sw          $s2, 0x28($sp)
/* 00DDDC 8000E22C AFB10024 */  sw          $s1, 0x24($sp)
/* 00DDE0 8000E230 AFB00020 */  sw          $s0, 0x20($sp)
/* 00DDE4 8000E234 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 00DDE8 8000E238 8C940054 */  lw          $s4, 0x54($a0)
/* 00DDEC 8000E23C AFA40098 */  sw          $a0, 0x98($sp)
/* 00DDF0 8000E240 0C003864 */  jal         func_8000E190
/* 00DDF4 8000E244 00002825 */   move       $a1, $zero
/* 00DDF8 8000E248 868500FC */  lh          $a1, 0xfc($s4)
/* 00DDFC 8000E24C C6840104 */  lwc1        $f4, 0x104($s4)
/* 00DE00 8000E250 3C018007 */  lui         $at, %hi(D_800773E0)
/* 00DE04 8000E254 00057080 */  sll         $t6, $a1, 2
/* 00DE08 8000E258 002E0821 */  addu        $at, $at, $t6
/* 00DE0C 8000E25C E6840130 */  swc1        $f4, 0x130($s4)
/* 00DE10 8000E260 C42073E0 */  lwc1        $f0, %lo(D_800773E0)($at)
/* 00DE14 8000E264 3C04800B */  lui         $a0, %hi(D_800B6930)
/* 00DE18 8000E268 24846930 */  addiu       $a0, $a0, %lo(D_800B6930)
/* 00DE1C 8000E26C E6800134 */  swc1        $f0, 0x134($s4)
/* 00DE20 8000E270 0C005CA4 */  jal         func_80017290
/* 00DE24 8000E274 E6800138 */   swc1       $f0, 0x138($s4)
/* 00DE28 8000E278 868300FC */  lh          $v1, 0xfc($s4)
/* 00DE2C 8000E27C 3C198007 */  lui         $t9, %hi(D_80077778)
/* 00DE30 8000E280 8FA70098 */  lw          $a3, 0x98($sp)
/* 00DE34 8000E284 00037880 */  sll         $t7, $v1, 2
/* 00DE38 8000E288 032FC821 */  addu        $t9, $t9, $t7
/* 00DE3C 8000E28C 8F397778 */  lw          $t9, %lo(D_80077778)($t9)
/* 00DE40 8000E290 C4E60004 */  lwc1        $f6, 0x4($a3)
/* 00DE44 8000E294 3C188007 */  lui         $t8, %hi(D_80077048)
/* 00DE48 8000E298 00594021 */  addu        $t0, $v0, $t9
/* 00DE4C 8000E29C C5080000 */  lwc1        $f8, 0x0($t0)
/* 00DE50 8000E2A0 030FC021 */  addu        $t8, $t8, $t7
/* 00DE54 8000E2A4 8F187048 */  lw          $t8, %lo(D_80077048)($t8)
/* 00DE58 8000E2A8 46083282 */  mul.s       $f10, $f6, $f8
/* 00DE5C 8000E2AC 00409825 */  move        $s3, $v0
/* 00DE60 8000E2B0 03029021 */  addu        $s2, $t8, $v0
/* 00DE64 8000E2B4 E68A0008 */  swc1        $f10, 0x8($s4)
/* 00DE68 8000E2B8 C6900008 */  lwc1        $f16, 0x8($s4)
/* 00DE6C 8000E2BC E6900004 */  swc1        $f16, 0x4($s4)
/* 00DE70 8000E2C0 8E450000 */  lw          $a1, 0x0($s2)
/* 00DE74 8000E2C4 18A00041 */  blez        $a1, .L8000E3CC
/* 00DE78 8000E2C8 00000000 */   nop
/* 00DE7C 8000E2CC 4480A000 */  mtc1        $zero, $f20
/* 00DE80 8000E2D0 241E0001 */  addiu       $fp, $zero, 0x1
.L8000E2D4:
/* 00DE84 8000E2D4 18A0002E */  blez        $a1, .L8000E390
/* 00DE88 8000E2D8 8FA70098 */   lw         $a3, 0x98($sp)
/* 00DE8C 8000E2DC 28A10026 */  slti        $at, $a1, 0x26
/* 00DE90 8000E2E0 1020002B */  beqz        $at, .L8000E390
/* 00DE94 8000E2E4 2690023C */   addiu      $s0, $s4, 0x23c
/* 00DE98 8000E2E8 A69E011A */  sh          $fp, 0x11a($s4)
/* 00DE9C 8000E2EC 8E490004 */  lw          $t1, 0x4($s2)
/* 00DEA0 8000E2F0 02002025 */  move        $a0, $s0
/* 00DEA4 8000E2F4 02603025 */  move        $a2, $s3
/* 00DEA8 8000E2F8 269102B4 */  addiu       $s1, $s4, 0x2b4
/* 00DEAC 8000E2FC 269502E4 */  addiu       $s5, $s4, 0x2e4
/* 00DEB0 8000E300 26960018 */  addiu       $s6, $s4, 0x18
/* 00DEB4 8000E304 26970048 */  addiu       $s7, $s4, 0x48
/* 00DEB8 8000E308 0C0028D3 */  jal         func_8000A34C
/* 00DEBC 8000E30C 02692821 */   addu       $a1, $s3, $t1
/* 00DEC0 8000E310 8E4A0004 */  lw          $t2, 0x4($s2)
/* 00DEC4 8000E314 02202025 */  move        $a0, $s1
/* 00DEC8 8000E318 02603025 */  move        $a2, $s3
/* 00DECC 8000E31C 026A2821 */  addu        $a1, $s3, $t2
/* 00DED0 8000E320 0C0028EB */  jal         func_8000A3AC
/* 00DED4 8000E324 24A50018 */   addiu      $a1, $a1, 0x18
/* 00DED8 8000E328 E7B4007C */  swc1        $f20, 0x7c($sp)
/* 00DEDC 8000E32C E7B40080 */  swc1        $f20, 0x80($sp)
/* 00DEE0 8000E330 E7B40084 */  swc1        $f20, 0x84($sp)
/* 00DEE4 8000E334 02A02025 */  move        $a0, $s5
/* 00DEE8 8000E338 0C014388 */  jal         bzero
/* 00DEEC 8000E33C 2405000C */   addiu      $a1, $zero, 0xc
/* 00DEF0 8000E340 4407A000 */  mfc1        $a3, $f20
/* 00DEF4 8000E344 02202025 */  move        $a0, $s1
/* 00DEF8 8000E348 27A5007C */  addiu       $a1, $sp, 0x7c
/* 00DEFC 8000E34C 0C002935 */  jal         func_8000A4D4
/* 00DF00 8000E350 00003025 */   move       $a2, $zero
/* 00DF04 8000E354 4407A000 */  mfc1        $a3, $f20
/* 00DF08 8000E358 02002025 */  move        $a0, $s0
/* 00DF0C 8000E35C 27A5006C */  addiu       $a1, $sp, 0x6c
/* 00DF10 8000E360 0C002904 */  jal         func_8000A410
/* 00DF14 8000E364 00003025 */   move       $a2, $zero
/* 00DF18 8000E368 02C02025 */  move        $a0, $s6
/* 00DF1C 8000E36C 8FA5006C */  lw          $a1, 0x6c($sp)
/* 00DF20 8000E370 8FA60070 */  lw          $a2, 0x70($sp)
/* 00DF24 8000E374 0C00E665 */  jal         func_80039994
/* 00DF28 8000E378 8FA70074 */   lw         $a3, 0x74($sp)
/* 00DF2C 8000E37C 02C02025 */  move        $a0, $s6
/* 00DF30 8000E380 0C0037DC */  jal         func_8000DF70
/* 00DF34 8000E384 02E02825 */   move       $a1, $s7
/* 00DF38 8000E388 1000000D */  b           .L8000E3C0
/* 00DF3C 8000E38C 8E450008 */   lw         $a1, 0x8($s2)
.L8000E390:
/* 00DF40 8000E390 0C0058FF */  jal         func_800163FC
/* 00DF44 8000E394 00E02025 */   move       $a0, $a3
/* 00DF48 8000E398 50400009 */  beql        $v0, $zero, .L8000E3C0
/* 00DF4C 8000E39C 8E450008 */   lw         $a1, 0x8($s2)
/* 00DF50 8000E3A0 8C420054 */  lw          $v0, 0x54($v0)
/* 00DF54 8000E3A4 02603025 */  move        $a2, $s3
/* 00DF58 8000E3A8 A45E0000 */  sh          $fp, 0x0($v0)
/* 00DF5C 8000E3AC 8E4B0004 */  lw          $t3, 0x4($s2)
/* 00DF60 8000E3B0 24440004 */  addiu       $a0, $v0, 0x4
/* 00DF64 8000E3B4 0C0028D3 */  jal         func_8000A34C
/* 00DF68 8000E3B8 026B2821 */   addu       $a1, $s3, $t3
/* 00DF6C 8000E3BC 8E450008 */  lw          $a1, 0x8($s2)
.L8000E3C0:
/* 00DF70 8000E3C0 26520008 */  addiu       $s2, $s2, 0x8
/* 00DF74 8000E3C4 1CA0FFC3 */  bgtz        $a1, .L8000E2D4
/* 00DF78 8000E3C8 00000000 */   nop
.L8000E3CC:
/* 00DF7C 8000E3CC 0C003823 */  jal         func_8000E08C
/* 00DF80 8000E3D0 86840100 */   lh         $a0, 0x100($s4)
/* 00DF84 8000E3D4 8FBF0044 */  lw          $ra, 0x44($sp)
/* 00DF88 8000E3D8 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 00DF8C 8000E3DC 8FB00020 */  lw          $s0, 0x20($sp)
/* 00DF90 8000E3E0 8FB10024 */  lw          $s1, 0x24($sp)
/* 00DF94 8000E3E4 8FB20028 */  lw          $s2, 0x28($sp)
/* 00DF98 8000E3E8 8FB3002C */  lw          $s3, 0x2c($sp)
/* 00DF9C 8000E3EC 8FB40030 */  lw          $s4, 0x30($sp)
/* 00DFA0 8000E3F0 8FB50034 */  lw          $s5, 0x34($sp)
/* 00DFA4 8000E3F4 8FB60038 */  lw          $s6, 0x38($sp)
/* 00DFA8 8000E3F8 8FB7003C */  lw          $s7, 0x3c($sp)
/* 00DFAC 8000E3FC 8FBE0040 */  lw          $fp, 0x40($sp)
/* 00DFB0 8000E400 03E00008 */  jr          $ra
/* 00DFB4 8000E404 27BD0098 */   addiu      $sp, $sp, 0x98

glabel func_8000E408 # 33
/* 00DFB8 8000E408 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00DFBC 8000E40C AFA40028 */  sw          $a0, 0x28($sp)
/* 00DFC0 8000E410 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00DFC4 8000E414 AFA5002C */  sw          $a1, 0x2c($sp)
/* 00DFC8 8000E418 AFA60030 */  sw          $a2, 0x30($sp)
/* 00DFCC 8000E41C 24A4023C */  addiu       $a0, $a1, 0x23c
/* 00DFD0 8000E420 27A5001C */  addiu       $a1, $sp, 0x1c
/* 00DFD4 8000E424 8FA70030 */  lw          $a3, 0x30($sp)
/* 00DFD8 8000E428 0C002904 */  jal         func_8000A410
/* 00DFDC 8000E42C 00003025 */   move       $a2, $zero
/* 00DFE0 8000E430 8FA2002C */  lw          $v0, 0x2c($sp)
/* 00DFE4 8000E434 8FA70030 */  lw          $a3, 0x30($sp)
/* 00DFE8 8000E438 244501C0 */  addiu       $a1, $v0, 0x1c0
/* 00DFEC 8000E43C AFA50018 */  sw          $a1, 0x18($sp)
/* 00DFF0 8000E440 244402B4 */  addiu       $a0, $v0, 0x2b4
/* 00DFF4 8000E444 0C002935 */  jal         func_8000A4D4
/* 00DFF8 8000E448 244601CC */   addiu      $a2, $v0, 0x1cc
/* 00DFFC 8000E44C 27A4001C */  addiu       $a0, $sp, 0x1c
/* 00E000 8000E450 0C003803 */  jal         func_8000E00C
/* 00E004 8000E454 8FA50028 */   lw         $a1, 0x28($sp)
/* 00E008 8000E458 0C00202A */  jal         func_800080A8
/* 00E00C 8000E45C 8FA40018 */   lw         $a0, 0x18($sp)
/* 00E010 8000E460 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00E014 8000E464 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00E018 8000E468 03E00008 */  jr          $ra
/* 00E01C 8000E46C 00000000 */   nop

glabel func_8000E470 # 34
/* 00E020 8000E470 44866000 */  mtc1        $a2, $f12
/* 00E024 8000E474 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00E028 8000E478 AFB00018 */  sw          $s0, 0x18($sp)
/* 00E02C 8000E47C 00808025 */  move        $s0, $a0
/* 00E030 8000E480 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00E034 8000E484 AFA50024 */  sw          $a1, 0x24($sp)
/* 00E038 8000E488 24A40004 */  addiu       $a0, $a1, 0x4
/* 00E03C 8000E48C 44076000 */  mfc1        $a3, $f12
/* 00E040 8000E490 2605000C */  addiu       $a1, $s0, 0xc
/* 00E044 8000E494 0C002904 */  jal         func_8000A410
/* 00E048 8000E498 00003025 */   move       $a2, $zero
/* 00E04C 8000E49C 44806000 */  mtc1        $zero, $f12
/* 00E050 8000E4A0 C600000C */  lwc1        $f0, 0xc($s0)
/* 00E054 8000E4A4 3C0143B4 */  lui         $at, 0x43b4
/* 00E058 8000E4A8 460C003C */  c.lt.s      $f0, $f12
/* 00E05C 8000E4AC 00000000 */  nop
/* 00E060 8000E4B0 4502000B */  bc1fl       .L8000E4E0
/* 00E064 8000E4B4 3C0143B4 */   lui        $at, 0x43b4
/* 00E068 8000E4B8 44811000 */  mtc1        $at, $f2
/* 00E06C 8000E4BC 00000000 */  nop
/* 00E070 8000E4C0 46020100 */  add.s       $f4, $f0, $f2
.L8000E4C4:
/* 00E074 8000E4C4 E604000C */  swc1        $f4, 0xc($s0)
/* 00E078 8000E4C8 C600000C */  lwc1        $f0, 0xc($s0)
/* 00E07C 8000E4CC 460C003C */  c.lt.s      $f0, $f12
/* 00E080 8000E4D0 00000000 */  nop
/* 00E084 8000E4D4 4503FFFB */  bc1tl       .L8000E4C4
/* 00E088 8000E4D8 46020100 */   add.s      $f4, $f0, $f2
/* 00E08C 8000E4DC 3C0143B4 */  lui         $at, 0x43b4
.L8000E4E0:
/* 00E090 8000E4E0 44811000 */  mtc1        $at, $f2
/* 00E094 8000E4E4 24010001 */  addiu       $at, $zero, 0x1
/* 00E098 8000E4E8 4600103E */  c.le.s      $f2, $f0
/* 00E09C 8000E4EC 00000000 */  nop
/* 00E0A0 8000E4F0 45020009 */  bc1fl       .L8000E518
/* 00E0A4 8000E4F4 C6000010 */   lwc1       $f0, 0x10($s0)
/* 00E0A8 8000E4F8 46020181 */  sub.s       $f6, $f0, $f2
.L8000E4FC:
/* 00E0AC 8000E4FC E606000C */  swc1        $f6, 0xc($s0)
/* 00E0B0 8000E500 C600000C */  lwc1        $f0, 0xc($s0)
/* 00E0B4 8000E504 4600103E */  c.le.s      $f2, $f0
/* 00E0B8 8000E508 00000000 */  nop
/* 00E0BC 8000E50C 4503FFFB */  bc1tl       .L8000E4FC
/* 00E0C0 8000E510 46020181 */   sub.s      $f6, $f0, $f2
/* 00E0C4 8000E514 C6000010 */  lwc1        $f0, 0x10($s0)
.L8000E518:
/* 00E0C8 8000E518 460C003C */  c.lt.s      $f0, $f12
/* 00E0CC 8000E51C 00000000 */  nop
/* 00E0D0 8000E520 45020009 */  bc1fl       .L8000E548
/* 00E0D4 8000E524 4600103E */   c.le.s     $f2, $f0
/* 00E0D8 8000E528 46020200 */  add.s       $f8, $f0, $f2
.L8000E52C:
/* 00E0DC 8000E52C E6080010 */  swc1        $f8, 0x10($s0)
/* 00E0E0 8000E530 C6000010 */  lwc1        $f0, 0x10($s0)
/* 00E0E4 8000E534 460C003C */  c.lt.s      $f0, $f12
/* 00E0E8 8000E538 00000000 */  nop
/* 00E0EC 8000E53C 4503FFFB */  bc1tl       .L8000E52C
/* 00E0F0 8000E540 46020200 */   add.s      $f8, $f0, $f2
/* 00E0F4 8000E544 4600103E */  c.le.s      $f2, $f0
.L8000E548:
/* 00E0F8 8000E548 00000000 */  nop
/* 00E0FC 8000E54C 45020009 */  bc1fl       .L8000E574
/* 00E100 8000E550 C6000014 */   lwc1       $f0, 0x14($s0)
/* 00E104 8000E554 46020281 */  sub.s       $f10, $f0, $f2
.L8000E558:
/* 00E108 8000E558 E60A0010 */  swc1        $f10, 0x10($s0)
/* 00E10C 8000E55C C6000010 */  lwc1        $f0, 0x10($s0)
/* 00E110 8000E560 4600103E */  c.le.s      $f2, $f0
/* 00E114 8000E564 00000000 */  nop
/* 00E118 8000E568 4503FFFB */  bc1tl       .L8000E558
/* 00E11C 8000E56C 46020281 */   sub.s      $f10, $f0, $f2
/* 00E120 8000E570 C6000014 */  lwc1        $f0, 0x14($s0)
.L8000E574:
/* 00E124 8000E574 460C003C */  c.lt.s      $f0, $f12
/* 00E128 8000E578 00000000 */  nop
/* 00E12C 8000E57C 45020009 */  bc1fl       .L8000E5A4
/* 00E130 8000E580 4600103E */   c.le.s     $f2, $f0
/* 00E134 8000E584 46020400 */  add.s       $f16, $f0, $f2
.L8000E588:
/* 00E138 8000E588 E6100014 */  swc1        $f16, 0x14($s0)
/* 00E13C 8000E58C C6000014 */  lwc1        $f0, 0x14($s0)
/* 00E140 8000E590 460C003C */  c.lt.s      $f0, $f12
/* 00E144 8000E594 00000000 */  nop
/* 00E148 8000E598 4503FFFB */  bc1tl       .L8000E588
/* 00E14C 8000E59C 46020400 */   add.s      $f16, $f0, $f2
/* 00E150 8000E5A0 4600103E */  c.le.s      $f2, $f0
.L8000E5A4:
/* 00E154 8000E5A4 00000000 */  nop
/* 00E158 8000E5A8 45000008 */  bc1f        .L8000E5CC
/* 00E15C 8000E5AC 00000000 */   nop
/* 00E160 8000E5B0 46020481 */  sub.s       $f18, $f0, $f2
.L8000E5B4:
/* 00E164 8000E5B4 E6120014 */  swc1        $f18, 0x14($s0)
/* 00E168 8000E5B8 C6000014 */  lwc1        $f0, 0x14($s0)
/* 00E16C 8000E5BC 4600103E */  c.le.s      $f2, $f0
/* 00E170 8000E5C0 00000000 */  nop
/* 00E174 8000E5C4 4503FFFB */  bc1tl       .L8000E5B4
/* 00E178 8000E5C8 46020481 */   sub.s      $f18, $f0, $f2
.L8000E5CC:
/* 00E17C 8000E5CC 14410002 */  bne         $v0, $at, .L8000E5D8
/* 00E180 8000E5D0 8FAE0024 */   lw         $t6, 0x24($sp)
/* 00E184 8000E5D4 A5C00000 */  sh          $zero, 0x0($t6)
.L8000E5D8:
/* 00E188 8000E5D8 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00E18C 8000E5DC 8FB00018 */  lw          $s0, 0x18($sp)
/* 00E190 8000E5E0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00E194 8000E5E4 03E00008 */  jr          $ra
/* 00E198 8000E5E8 00000000 */   nop

glabel func_8000E5EC # 35
/* 00E19C 8000E5EC 27BDFF28 */  addiu       $sp, $sp, -0xd8
/* 00E1A0 8000E5F0 AFB00020 */  sw          $s0, 0x20($sp)
/* 00E1A4 8000E5F4 AFBF0044 */  sw          $ra, 0x44($sp)
/* 00E1A8 8000E5F8 AFBE0040 */  sw          $fp, 0x40($sp)
/* 00E1AC 8000E5FC AFB7003C */  sw          $s7, 0x3c($sp)
/* 00E1B0 8000E600 AFB60038 */  sw          $s6, 0x38($sp)
/* 00E1B4 8000E604 AFB50034 */  sw          $s5, 0x34($sp)
/* 00E1B8 8000E608 AFB40030 */  sw          $s4, 0x30($sp)
/* 00E1BC 8000E60C AFB3002C */  sw          $s3, 0x2c($sp)
/* 00E1C0 8000E610 AFB20028 */  sw          $s2, 0x28($sp)
/* 00E1C4 8000E614 AFB10024 */  sw          $s1, 0x24($sp)
/* 00E1C8 8000E618 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 00E1CC 8000E61C 8C940054 */  lw          $s4, 0x54($a0)
/* 00E1D0 8000E620 3C10800B */  lui         $s0, %hi(D_800B6930)
/* 00E1D4 8000E624 26106930 */  addiu       $s0, $s0, %lo(D_800B6930)
/* 00E1D8 8000E628 0080B825 */  move        $s7, $a0
/* 00E1DC 8000E62C 02002025 */  move        $a0, $s0
/* 00E1E0 8000E630 27A6009C */  addiu       $a2, $sp, 0x9c
/* 00E1E4 8000E634 0C005C8A */  jal         func_80017228
/* 00E1E8 8000E638 868500FC */   lh         $a1, 0xfc($s4)
/* 00E1EC 8000E63C 868E00FC */  lh          $t6, 0xfc($s4)
/* 00E1F0 8000E640 3C188007 */  lui         $t8, %hi(D_80077048)
/* 00E1F4 8000E644 8FB9009C */  lw          $t9, 0x9c($sp)
/* 00E1F8 8000E648 000E7880 */  sll         $t7, $t6, 2
/* 00E1FC 8000E64C 030FC021 */  addu        $t8, $t8, $t7
/* 00E200 8000E650 8F187048 */  lw          $t8, %lo(D_80077048)($t8)
/* 00E204 8000E654 C6800104 */  lwc1        $f0, 0x104($s4)
/* 00E208 8000E658 3C013F80 */  lui         $at, 0x3f80
/* 00E20C 8000E65C 44812000 */  mtc1        $at, $f4
/* 00E210 8000E660 02E02025 */  move        $a0, $s7
/* 00E214 8000E664 00002825 */  move        $a1, $zero
/* 00E218 8000E668 03199821 */  addu        $s3, $t8, $t9
/* 00E21C 8000E66C E6800134 */  swc1        $f0, 0x134($s4)
/* 00E220 8000E670 E6800138 */  swc1        $f0, 0x138($s4)
/* 00E224 8000E674 0C003864 */  jal         func_8000E190
/* 00E228 8000E678 E6840130 */   swc1       $f4, 0x130($s4)
/* 00E22C 8000E67C 02002025 */  move        $a0, $s0
/* 00E230 8000E680 0C005CA4 */  jal         func_80017290
/* 00E234 8000E684 868500FC */   lh         $a1, 0xfc($s4)
/* 00E238 8000E688 868900FC */  lh          $t1, 0xfc($s4)
/* 00E23C 8000E68C 3C0B8007 */  lui         $t3, %hi(D_80077778)
/* 00E240 8000E690 8FA8009C */  lw          $t0, 0x9c($sp)
/* 00E244 8000E694 00095080 */  sll         $t2, $t1, 2
/* 00E248 8000E698 016A5821 */  addu        $t3, $t3, $t2
/* 00E24C 8000E69C 8D6B7778 */  lw          $t3, %lo(D_80077778)($t3)
/* 00E250 8000E6A0 C6E80004 */  lwc1        $f8, 0x4($s7)
/* 00E254 8000E6A4 27BE0090 */  addiu       $fp, $sp, 0x90
/* 00E258 8000E6A8 010B6021 */  addu        $t4, $t0, $t3
/* 00E25C 8000E6AC C5860000 */  lwc1        $f6, 0x0($t4)
/* 00E260 8000E6B0 24160003 */  addiu       $s6, $zero, 0x3
/* 00E264 8000E6B4 46064282 */  mul.s       $f10, $f8, $f6
/* 00E268 8000E6B8 E68A0008 */  swc1        $f10, 0x8($s4)
/* 00E26C 8000E6BC 8E650000 */  lw          $a1, 0x0($s3)
/* 00E270 8000E6C0 58A0004A */  blezl       $a1, .L8000E7EC
/* 00E274 8000E6C4 8FBF0044 */   lw         $ra, 0x44($sp)
/* 00E278 8000E6C8 4480A000 */  mtc1        $zero, $f20
/* 00E27C 8000E6CC 27B500A4 */  addiu       $s5, $sp, 0xa4
.L8000E6D0:
/* 00E280 8000E6D0 18A00026 */  blez        $a1, .L8000E76C
/* 00E284 8000E6D4 28A10026 */   slti       $at, $a1, 0x26
/* 00E288 8000E6D8 10200024 */  beqz        $at, .L8000E76C
/* 00E28C 8000E6DC 02A02025 */   move       $a0, $s5
/* 00E290 8000E6E0 A696011A */  sh          $s6, 0x11a($s4)
/* 00E294 8000E6E4 8E6E0004 */  lw          $t6, 0x4($s3)
/* 00E298 8000E6E8 8FA6009C */  lw          $a2, 0x9c($sp)
/* 00E29C 8000E6EC 2690023C */  addiu       $s0, $s4, 0x23c
/* 00E2A0 8000E6F0 26110030 */  addiu       $s1, $s0, 0x30
/* 00E2A4 8000E6F4 26920018 */  addiu       $s2, $s4, 0x18
/* 00E2A8 8000E6F8 0C0028D3 */  jal         func_8000A34C
/* 00E2AC 8000E6FC 00CE2821 */   addu       $a1, $a2, $t6
/* 00E2B0 8000E700 4407A000 */  mfc1        $a3, $f20
/* 00E2B4 8000E704 02A02025 */  move        $a0, $s5
/* 00E2B8 8000E708 03C02825 */  move        $a1, $fp
/* 00E2BC 8000E70C 0C002904 */  jal         func_8000A410
/* 00E2C0 8000E710 00003025 */   move       $a2, $zero
/* 00E2C4 8000E714 0240C825 */  move        $t9, $s2
/* 00E2C8 8000E718 02004825 */  move        $t1, $s0
/* 00E2CC 8000E71C 26580030 */  addiu       $t8, $s2, 0x30
.L8000E720:
/* 00E2D0 8000E720 8F210000 */  lw          $at, 0x0($t9)
/* 00E2D4 8000E724 2739000C */  addiu       $t9, $t9, 0xc
/* 00E2D8 8000E728 2529000C */  addiu       $t1, $t1, 0xc
/* 00E2DC 8000E72C AD21FFF4 */  sw          $at, -0xc($t1)
/* 00E2E0 8000E730 8F21FFF8 */  lw          $at, -0x8($t9)
/* 00E2E4 8000E734 AD21FFF8 */  sw          $at, -0x8($t1)
/* 00E2E8 8000E738 8F21FFFC */  lw          $at, -0x4($t9)
/* 00E2EC 8000E73C 1738FFF8 */  bne         $t9, $t8, .L8000E720
/* 00E2F0 8000E740 AD21FFFC */   sw         $at, -0x4($t1)
/* 00E2F4 8000E744 02202025 */  move        $a0, $s1
/* 00E2F8 8000E748 8FA50090 */  lw          $a1, 0x90($sp)
/* 00E2FC 8000E74C 8FA60094 */  lw          $a2, 0x94($sp)
/* 00E300 8000E750 0C00E665 */  jal         func_80039994
/* 00E304 8000E754 8FA70098 */   lw         $a3, 0x98($sp)
/* 00E308 8000E758 02202025 */  move        $a0, $s1
/* 00E30C 8000E75C 0C0037DC */  jal         func_8000DF70
/* 00E310 8000E760 27A50080 */   addiu      $a1, $sp, 0x80
/* 00E314 8000E764 1000001C */  b           .L8000E7D8
/* 00E318 8000E768 E6940048 */   swc1       $f20, 0x48($s4)
.L8000E76C:
/* 00E31C 8000E76C 0C0058FF */  jal         func_800163FC
/* 00E320 8000E770 02E02025 */   move       $a0, $s7
/* 00E324 8000E774 10400018 */  beqz        $v0, .L8000E7D8
/* 00E328 8000E778 00408025 */   move       $s0, $v0
/* 00E32C 8000E77C 8C510054 */  lw          $s1, 0x54($v0)
/* 00E330 8000E780 02A02025 */  move        $a0, $s5
/* 00E334 8000E784 A6360000 */  sh          $s6, 0x0($s1)
/* 00E338 8000E788 8E680004 */  lw          $t0, 0x4($s3)
/* 00E33C 8000E78C 8FA6009C */  lw          $a2, 0x9c($sp)
/* 00E340 8000E790 0C0028D3 */  jal         func_8000A34C
/* 00E344 8000E794 00C82821 */   addu       $a1, $a2, $t0
/* 00E348 8000E798 4407A000 */  mfc1        $a3, $f20
/* 00E34C 8000E79C 02A02025 */  move        $a0, $s5
/* 00E350 8000E7A0 27A50068 */  addiu       $a1, $sp, 0x68
/* 00E354 8000E7A4 0C002904 */  jal         func_8000A410
/* 00E358 8000E7A8 00003025 */   move       $a2, $zero
/* 00E35C 8000E7AC 26320004 */  addiu       $s2, $s1, 0x4
/* 00E360 8000E7B0 02402025 */  move        $a0, $s2
/* 00E364 8000E7B4 8E05000C */  lw          $a1, 0xc($s0)
/* 00E368 8000E7B8 8E060010 */  lw          $a2, 0x10($s0)
/* 00E36C 8000E7BC 0C00E665 */  jal         func_80039994
/* 00E370 8000E7C0 8E070014 */   lw         $a3, 0x14($s0)
/* 00E374 8000E7C4 26440030 */  addiu       $a0, $s2, 0x30
/* 00E378 8000E7C8 8FA50068 */  lw          $a1, 0x68($sp)
/* 00E37C 8000E7CC 8FA6006C */  lw          $a2, 0x6c($sp)
/* 00E380 8000E7D0 0C00E665 */  jal         func_80039994
/* 00E384 8000E7D4 8FA70070 */   lw         $a3, 0x70($sp)
.L8000E7D8:
/* 00E388 8000E7D8 8E650008 */  lw          $a1, 0x8($s3)
/* 00E38C 8000E7DC 26730008 */  addiu       $s3, $s3, 0x8
/* 00E390 8000E7E0 1CA0FFBB */  bgtz        $a1, .L8000E6D0
/* 00E394 8000E7E4 00000000 */   nop
/* 00E398 8000E7E8 8FBF0044 */  lw          $ra, 0x44($sp)
.L8000E7EC:
/* 00E39C 8000E7EC D7B40018 */  ldc1        $f20, 0x18($sp)
/* 00E3A0 8000E7F0 8FB00020 */  lw          $s0, 0x20($sp)
/* 00E3A4 8000E7F4 8FB10024 */  lw          $s1, 0x24($sp)
/* 00E3A8 8000E7F8 8FB20028 */  lw          $s2, 0x28($sp)
/* 00E3AC 8000E7FC 8FB3002C */  lw          $s3, 0x2c($sp)
/* 00E3B0 8000E800 8FB40030 */  lw          $s4, 0x30($sp)
/* 00E3B4 8000E804 8FB50034 */  lw          $s5, 0x34($sp)
/* 00E3B8 8000E808 8FB60038 */  lw          $s6, 0x38($sp)
/* 00E3BC 8000E80C 8FB7003C */  lw          $s7, 0x3c($sp)
/* 00E3C0 8000E810 8FBE0040 */  lw          $fp, 0x40($sp)
/* 00E3C4 8000E814 03E00008 */  jr          $ra
/* 00E3C8 8000E818 27BD00D8 */   addiu      $sp, $sp, 0xd8

glabel func_8000E81C # 36
/* 00E3CC 8000E81C 44867000 */  mtc1        $a2, $f14
/* 00E3D0 8000E820 44800000 */  mtc1        $zero, $f0
/* 00E3D4 8000E824 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00E3D8 8000E828 00A03825 */  move        $a3, $a1
/* 00E3DC 8000E82C 4600703C */  c.lt.s      $f14, $f0
/* 00E3E0 8000E830 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E3E4 8000E834 3C013F80 */  lui         $at, 0x3f80
/* 00E3E8 8000E838 00802825 */  move        $a1, $a0
/* 00E3EC 8000E83C 45000006 */  bc1f        .L8000E858
/* 00E3F0 8000E840 24860030 */   addiu      $a2, $a0, 0x30
/* 00E3F4 8000E844 46000386 */  mov.s       $f14, $f0
/* 00E3F8 8000E848 3C013F80 */  lui         $at, 0x3f80
/* 00E3FC 8000E84C 44810000 */  mtc1        $at, $f0
/* 00E400 8000E850 10000008 */  b           .L8000E874
/* 00E404 8000E854 00000000 */   nop
.L8000E858:
/* 00E408 8000E858 44810000 */  mtc1        $at, $f0
/* 00E40C 8000E85C 00000000 */  nop
/* 00E410 8000E860 460E003C */  c.lt.s      $f0, $f14
/* 00E414 8000E864 00000000 */  nop
/* 00E418 8000E868 45000002 */  bc1f        .L8000E874
/* 00E41C 8000E86C 00000000 */   nop
/* 00E420 8000E870 46000386 */  mov.s       $f14, $f0
.L8000E874:
/* 00E424 8000E874 0C003646 */  jal         func_8000D918
/* 00E428 8000E878 460E0301 */   sub.s      $f12, $f0, $f14
/* 00E42C 8000E87C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00E430 8000E880 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00E434 8000E884 03E00008 */  jr          $ra
/* 00E438 8000E888 00000000 */   nop

glabel func_8000E88C # 37
/* 00E43C 8000E88C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00E440 8000E890 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E444 8000E894 8C820054 */  lw          $v0, 0x54($a0)
/* 00E448 8000E898 00002825 */  move        $a1, $zero
/* 00E44C 8000E89C 0C003864 */  jal         func_8000E190
/* 00E450 8000E8A0 AFA2001C */   sw         $v0, 0x1c($sp)
/* 00E454 8000E8A4 8FA2001C */  lw          $v0, 0x1c($sp)
/* 00E458 8000E8A8 3C013F80 */  lui         $at, 0x3f80
/* 00E45C 8000E8AC 44812000 */  mtc1        $at, $f4
/* 00E460 8000E8B0 C4400104 */  lwc1        $f0, 0x104($v0)
/* 00E464 8000E8B4 240E0002 */  addiu       $t6, $zero, 0x2
/* 00E468 8000E8B8 A44E011A */  sh          $t6, 0x11a($v0)
/* 00E46C 8000E8BC E4440130 */  swc1        $f4, 0x130($v0)
/* 00E470 8000E8C0 E4400134 */  swc1        $f0, 0x134($v0)
/* 00E474 8000E8C4 E4400138 */  swc1        $f0, 0x138($v0)
/* 00E478 8000E8C8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00E47C 8000E8CC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00E480 8000E8D0 03E00008 */  jr          $ra
/* 00E484 8000E8D4 00000000 */   nop

glabel func_8000E8D8 # 38
/* 00E488 8000E8D8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00E48C 8000E8DC AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E490 8000E8E0 8C820054 */  lw          $v0, 0x54($a0)
/* 00E494 8000E8E4 8C430108 */  lw          $v1, 0x108($v0)
/* 00E498 8000E8E8 00001025 */  move        $v0, $zero
/* 00E49C 8000E8EC 10600005 */  beqz        $v1, .L8000E904
/* 00E4A0 8000E8F0 00000000 */   nop
/* 00E4A4 8000E8F4 0060F809 */  jalr        $v1
/* 00E4A8 8000E8F8 00000000 */   nop
/* 00E4AC 8000E8FC 10000002 */  b           .L8000E908
/* 00E4B0 8000E900 8FBF0014 */   lw         $ra, 0x14($sp)
.L8000E904:
/* 00E4B4 8000E904 8FBF0014 */  lw          $ra, 0x14($sp)
.L8000E908:
/* 00E4B8 8000E908 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00E4BC 8000E90C 03E00008 */  jr          $ra
/* 00E4C0 8000E910 00000000 */   nop

glabel func_8000E914 # 39
/* 00E4C4 8000E914 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00E4C8 8000E918 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00E4CC 8000E91C AFB00018 */  sw          $s0, 0x18($sp)
/* 00E4D0 8000E920 8C830054 */  lw          $v1, 0x54($a0)
/* 00E4D4 8000E924 44802000 */  mtc1        $zero, $f4
/* 00E4D8 8000E928 00808025 */  move        $s0, $a0
/* 00E4DC 8000E92C 8C6E00F8 */  lw          $t6, 0xf8($v1)
/* 00E4E0 8000E930 00003025 */  move        $a2, $zero
/* 00E4E4 8000E934 31CF0007 */  andi        $t7, $t6, 0x7
/* 00E4E8 8000E938 AFAF0028 */  sw          $t7, 0x28($sp)
/* 00E4EC 8000E93C A4600118 */  sh          $zero, 0x118($v1)
/* 00E4F0 8000E940 8C650114 */  lw          $a1, 0x114($v1)
/* 00E4F4 8000E944 E4640148 */  swc1        $f4, 0x148($v1)
/* 00E4F8 8000E948 0C0093E7 */  jal         func_80024F9C
/* 00E4FC 8000E94C AFA3002C */   sw         $v1, 0x2c($sp)
/* 00E500 8000E950 8FA3002C */  lw          $v1, 0x2c($sp)
/* 00E504 8000E954 24190001 */  addiu       $t9, $zero, 0x1
/* 00E508 8000E958 02002025 */  move        $a0, $s0
/* 00E50C 8000E95C 8478011C */  lh          $t8, 0x11c($v1)
/* 00E510 8000E960 24060001 */  addiu       $a2, $zero, 0x1
/* 00E514 8000E964 AC620154 */  sw          $v0, 0x154($v1)
/* 00E518 8000E968 5700002F */  bnel        $t8, $zero, .L8000EA28
/* 00E51C 8000E96C 8FA20028 */   lw         $v0, 0x28($sp)
/* 00E520 8000E970 A479011C */  sh          $t9, 0x11c($v1)
/* 00E524 8000E974 8C650110 */  lw          $a1, 0x110($v1)
/* 00E528 8000E978 0C0093E7 */  jal         func_80024F9C
/* 00E52C 8000E97C AFA3002C */   sw         $v1, 0x2c($sp)
/* 00E530 8000E980 8FA3002C */  lw          $v1, 0x2c($sp)
/* 00E534 8000E984 10400027 */  beqz        $v0, .L8000EA24
/* 00E538 8000E988 00402825 */   move       $a1, $v0
/* 00E53C 8000E98C 8C680150 */  lw          $t0, 0x150($v1)
/* 00E540 8000E990 3C01800A */  lui         $at, %hi(D_800A10C8)
/* 00E544 8000E994 5448000C */  bnel        $v0, $t0, .L8000E9C8
/* 00E548 8000E998 960B0034 */   lhu        $t3, 0x34($s0)
/* 00E54C 8000E99C C42610C8 */  lwc1        $f6, %lo(D_800A10C8)($at)
/* 00E550 8000E9A0 C4680144 */  lwc1        $f8, 0x144($v1)
/* 00E554 8000E9A4 4608303C */  c.lt.s      $f6, $f8
/* 00E558 8000E9A8 00000000 */  nop
/* 00E55C 8000E9AC 4502001E */  bc1fl       .L8000EA28
/* 00E560 8000E9B0 8FA20028 */   lw         $v0, 0x28($sp)
/* 00E564 8000E9B4 8C6900F8 */  lw          $t1, 0xf8($v1)
/* 00E568 8000E9B8 312A0008 */  andi        $t2, $t1, 0x8
/* 00E56C 8000E9BC 5540001A */  bnel        $t2, $zero, .L8000EA28
/* 00E570 8000E9C0 8FA20028 */   lw         $v0, 0x28($sp)
/* 00E574 8000E9C4 960B0034 */  lhu         $t3, 0x34($s0)
.L8000E9C8:
/* 00E578 8000E9C8 24010025 */  addiu       $at, $zero, 0x25
/* 00E57C 8000E9CC 55610012 */  bnel        $t3, $at, .L8000EA18
/* 00E580 8000E9D0 44805000 */   mtc1       $zero, $f10
/* 00E584 8000E9D4 946C01E8 */  lhu         $t4, 0x1e8($v1)
/* 00E588 8000E9D8 02002025 */  move        $a0, $s0
/* 00E58C 8000E9DC 318D0040 */  andi        $t5, $t4, 0x40
/* 00E590 8000E9E0 55A00007 */  bnel        $t5, $zero, .L8000EA00
/* 00E594 8000E9E4 02002025 */   move       $a0, $s0
/* 00E598 8000E9E8 AFA3002C */  sw          $v1, 0x2c($sp)
/* 00E59C 8000E9EC 0C005203 */  jal         func_8001480C
/* 00E5A0 8000E9F0 AFA50024 */   sw         $a1, 0x24($sp)
/* 00E5A4 8000E9F4 8FA3002C */  lw          $v1, 0x2c($sp)
/* 00E5A8 8000E9F8 8FA50024 */  lw          $a1, 0x24($sp)
/* 00E5AC 8000E9FC 02002025 */  move        $a0, $s0
.L8000EA00:
/* 00E5B0 8000EA00 AFA3002C */  sw          $v1, 0x2c($sp)
/* 00E5B4 8000EA04 0C004FAD */  jal         func_80013EB4
/* 00E5B8 8000EA08 AFA50024 */   sw         $a1, 0x24($sp)
/* 00E5BC 8000EA0C 8FA3002C */  lw          $v1, 0x2c($sp)
/* 00E5C0 8000EA10 8FA50024 */  lw          $a1, 0x24($sp)
/* 00E5C4 8000EA14 44805000 */  mtc1        $zero, $f10
.L8000EA18:
/* 00E5C8 8000EA18 AC65014C */  sw          $a1, 0x14c($v1)
/* 00E5CC 8000EA1C AC650150 */  sw          $a1, 0x150($v1)
/* 00E5D0 8000EA20 E46A0144 */  swc1        $f10, 0x144($v1)
.L8000EA24:
/* 00E5D4 8000EA24 8FA20028 */  lw          $v0, 0x28($sp)
.L8000EA28:
/* 00E5D8 8000EA28 24010001 */  addiu       $at, $zero, 0x1
/* 00E5DC 8000EA2C 10410007 */  beq         $v0, $at, .L8000EA4C
/* 00E5E0 8000EA30 24010002 */   addiu      $at, $zero, 0x2
/* 00E5E4 8000EA34 10410009 */  beq         $v0, $at, .L8000EA5C
/* 00E5E8 8000EA38 24010003 */   addiu      $at, $zero, 0x3
/* 00E5EC 8000EA3C 1041000B */  beq         $v0, $at, .L8000EA6C
/* 00E5F0 8000EA40 00000000 */   nop
/* 00E5F4 8000EA44 1000000C */  b           .L8000EA78
/* 00E5F8 8000EA48 8FBF001C */   lw         $ra, 0x1c($sp)
.L8000EA4C:
/* 00E5FC 8000EA4C 0C003882 */  jal         func_8000E208
/* 00E600 8000EA50 02002025 */   move       $a0, $s0
/* 00E604 8000EA54 10000008 */  b           .L8000EA78
/* 00E608 8000EA58 8FBF001C */   lw         $ra, 0x1c($sp)
.L8000EA5C:
/* 00E60C 8000EA5C 0C003A23 */  jal         func_8000E88C
/* 00E610 8000EA60 02002025 */   move       $a0, $s0
/* 00E614 8000EA64 10000004 */  b           .L8000EA78
/* 00E618 8000EA68 8FBF001C */   lw         $ra, 0x1c($sp)
.L8000EA6C:
/* 00E61C 8000EA6C 0C00397B */  jal         func_8000E5EC
/* 00E620 8000EA70 02002025 */   move       $a0, $s0
/* 00E624 8000EA74 8FBF001C */  lw          $ra, 0x1c($sp)
.L8000EA78:
/* 00E628 8000EA78 8FB00018 */  lw          $s0, 0x18($sp)
/* 00E62C 8000EA7C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00E630 8000EA80 03E00008 */  jr          $ra
/* 00E634 8000EA84 00000000 */   nop

glabel func_8000EA88 # 40
/* 00E638 8000EA88 8CAE000C */  lw          $t6, 0xc($a1)
/* 00E63C 8000EA8C 24010001 */  addiu       $at, $zero, 0x1
/* 00E640 8000EA90 00A05025 */  move        $t2, $a1
/* 00E644 8000EA94 31CF0007 */  andi        $t7, $t6, 0x7
/* 00E648 8000EA98 15E10005 */  bne         $t7, $at, .L8000EAB0
/* 00E64C 8000EA9C 00805825 */   move       $t3, $a0
/* 00E650 8000EAA0 90B80012 */  lbu         $t8, 0x12($a1)
/* 00E654 8000EAA4 909900FF */  lbu         $t9, 0xff($a0)
/* 00E658 8000EAA8 00001025 */  move        $v0, $zero
/* 00E65C 8000EAAC 17190010 */  bne         $t8, $t9, .L8000EAF0
.L8000EAB0:
/* 00E660 8000EAB0 24A90024 */   addiu      $t1, $a1, 0x24
.L8000EAB4:
/* 00E664 8000EAB4 8D410000 */  lw          $at, 0x0($t2)
/* 00E668 8000EAB8 254A000C */  addiu       $t2, $t2, 0xc
/* 00E66C 8000EABC 256B000C */  addiu       $t3, $t3, 0xc
/* 00E670 8000EAC0 AD6100E0 */  sw          $at, 0xe0($t3)
/* 00E674 8000EAC4 8D41FFF8 */  lw          $at, -0x8($t2)
/* 00E678 8000EAC8 AD6100E4 */  sw          $at, 0xe4($t3)
/* 00E67C 8000EACC 8D41FFFC */  lw          $at, -0x4($t2)
/* 00E680 8000EAD0 1549FFF8 */  bne         $t2, $t1, .L8000EAB4
/* 00E684 8000EAD4 AD6100E8 */   sw         $at, 0xe8($t3)
/* 00E688 8000EAD8 8D410000 */  lw          $at, 0x0($t2)
/* 00E68C 8000EADC 24020001 */  addiu       $v0, $zero, 0x1
/* 00E690 8000EAE0 AD6100EC */  sw          $at, 0xec($t3)
/* 00E694 8000EAE4 8D490004 */  lw          $t1, 0x4($t2)
/* 00E698 8000EAE8 03E00008 */  jr          $ra
/* 00E69C 8000EAEC AD6900F0 */   sw         $t1, 0xf0($t3)
.L8000EAF0:
/* 00E6A0 8000EAF0 03E00008 */  jr          $ra
/* 00E6A4 8000EAF4 00000000 */   nop

glabel func_8000EAF8 # 41
/* 00E6A8 8000EAF8 44866000 */  mtc1        $a2, $f12
/* 00E6AC 8000EAFC 04A00004 */  bltz        $a1, .L8000EB10
/* 00E6B0 8000EB00 2418FFFE */   addiu      $t8, $zero, -0x2
/* 00E6B4 8000EB04 28A1014A */  slti        $at, $a1, 0x14a
/* 00E6B8 8000EB08 14200003 */  bnez        $at, .L8000EB18
/* 00E6BC 8000EB0C 00057080 */   sll        $t6, $a1, 2
.L8000EB10:
/* 00E6C0 8000EB10 10000008 */  b           .L8000EB34
/* 00E6C4 8000EB14 00001025 */   move       $v0, $zero
.L8000EB18:
/* 00E6C8 8000EB18 01C57023 */  subu        $t6, $t6, $a1
/* 00E6CC 8000EB1C 000E7080 */  sll         $t6, $t6, 2
/* 00E6D0 8000EB20 01C57023 */  subu        $t6, $t6, $a1
/* 00E6D4 8000EB24 3C0F8007 */  lui         $t7, %hi(D_8006B590)
/* 00E6D8 8000EB28 25EFB590 */  addiu       $t7, $t7, %lo(D_8006B590)
/* 00E6DC 8000EB2C 000E7080 */  sll         $t6, $t6, 2
/* 00E6E0 8000EB30 01CF1021 */  addu        $v0, $t6, $t7
.L8000EB34:
/* 00E6E4 8000EB34 3C08800A */  lui         $t0, %hi(D_800A0E30)
/* 00E6E8 8000EB38 0305C823 */  subu        $t9, $t8, $a1
/* 00E6EC 8000EB3C 25080E30 */  addiu       $t0, $t0, %lo(D_800A0E30)
/* 00E6F0 8000EB40 AC9900EC */  sw          $t9, 0xec($a0)
/* 00E6F4 8000EB44 AC8800F0 */  sw          $t0, 0xf0($a0)
/* 00E6F8 8000EB48 C4440008 */  lwc1        $f4, 0x8($v0)
/* 00E6FC 8000EB4C 3C012010 */  lui         $at, 0x2010
/* 00E700 8000EB50 908D00FF */  lbu         $t5, 0xff($a0)
/* 00E704 8000EB54 E48400F4 */  swc1        $f4, 0xf4($a0)
/* 00E708 8000EB58 8C49000C */  lw          $t1, 0xc($v0)
/* 00E70C 8000EB5C 01215024 */  and         $t2, $t1, $at
/* 00E710 8000EB60 3C010401 */  lui         $at, 0x401
/* 00E714 8000EB64 34210003 */  ori         $at, $at, 0x3
/* 00E718 8000EB68 01415825 */  or          $t3, $t2, $at
/* 00E71C 8000EB6C AC8B00F8 */  sw          $t3, 0xf8($a0)
/* 00E720 8000EB70 844C0010 */  lh          $t4, 0x10($v0)
/* 00E724 8000EB74 A08D00FE */  sb          $t5, 0xfe($a0)
/* 00E728 8000EB78 A48C00FC */  sh          $t4, 0xfc($a0)
/* 00E72C 8000EB7C 904E0012 */  lbu         $t6, 0x12($v0)
/* 00E730 8000EB80 A4850100 */  sh          $a1, 0x100($a0)
/* 00E734 8000EB84 AC800108 */  sw          $zero, 0x108($a0)
/* 00E738 8000EB88 AC80010C */  sw          $zero, 0x10c($a0)
/* 00E73C 8000EB8C E48C0104 */  swc1        $f12, 0x104($a0)
/* 00E740 8000EB90 AC800110 */  sw          $zero, 0x110($a0)
/* 00E744 8000EB94 AC800114 */  sw          $zero, 0x114($a0)
/* 00E748 8000EB98 03E00008 */  jr          $ra
/* 00E74C 8000EB9C A08E00FF */   sb         $t6, 0xff($a0)

glabel func_8000EBA0 # 42
/* 00E750 8000EBA0 04A00003 */  bltz        $a1, .L8000EBB0
/* 00E754 8000EBA4 28A1014A */   slti       $at, $a1, 0x14a
/* 00E758 8000EBA8 14200003 */  bnez        $at, .L8000EBB8
/* 00E75C 8000EBAC 00057080 */   sll        $t6, $a1, 2
.L8000EBB0:
/* 00E760 8000EBB0 10000008 */  b           .L8000EBD4
/* 00E764 8000EBB4 00001025 */   move       $v0, $zero
.L8000EBB8:
/* 00E768 8000EBB8 01C57023 */  subu        $t6, $t6, $a1
/* 00E76C 8000EBBC 000E7080 */  sll         $t6, $t6, 2
/* 00E770 8000EBC0 01C57023 */  subu        $t6, $t6, $a1
/* 00E774 8000EBC4 3C0F8007 */  lui         $t7, %hi(D_8006B590)
/* 00E778 8000EBC8 25EFB590 */  addiu       $t7, $t7, %lo(D_8006B590)
/* 00E77C 8000EBCC 000E7080 */  sll         $t6, $t6, 2
/* 00E780 8000EBD0 01CF1021 */  addu        $v0, $t6, $t7
.L8000EBD4:
/* 00E784 8000EBD4 14400003 */  bnez        $v0, .L8000EBE4
/* 00E788 8000EBD8 00404025 */   move       $t0, $v0
/* 00E78C 8000EBDC 03E00008 */  jr          $ra
/* 00E790 8000EBE0 00001025 */   move       $v0, $zero
.L8000EBE4:
/* 00E794 8000EBE4 00804825 */  move        $t1, $a0
/* 00E798 8000EBE8 24590024 */  addiu       $t9, $v0, 0x24
.L8000EBEC:
/* 00E79C 8000EBEC 8D010000 */  lw          $at, 0x0($t0)
/* 00E7A0 8000EBF0 2508000C */  addiu       $t0, $t0, 0xc
/* 00E7A4 8000EBF4 2529000C */  addiu       $t1, $t1, 0xc
/* 00E7A8 8000EBF8 AD2100E0 */  sw          $at, 0xe0($t1)
/* 00E7AC 8000EBFC 8D01FFF8 */  lw          $at, -0x8($t0)
/* 00E7B0 8000EC00 AD2100E4 */  sw          $at, 0xe4($t1)
/* 00E7B4 8000EC04 8D01FFFC */  lw          $at, -0x4($t0)
/* 00E7B8 8000EC08 1519FFF8 */  bne         $t0, $t9, .L8000EBEC
/* 00E7BC 8000EC0C AD2100E8 */   sw         $at, 0xe8($t1)
/* 00E7C0 8000EC10 8D010000 */  lw          $at, 0x0($t0)
/* 00E7C4 8000EC14 24020001 */  addiu       $v0, $zero, 0x1
/* 00E7C8 8000EC18 AD2100EC */  sw          $at, 0xec($t1)
/* 00E7CC 8000EC1C 8D190004 */  lw          $t9, 0x4($t0)
/* 00E7D0 8000EC20 24010001 */  addiu       $at, $zero, 0x1
/* 00E7D4 8000EC24 AD3900F0 */  sw          $t9, 0xf0($t1)
/* 00E7D8 8000EC28 8C8300F8 */  lw          $v1, 0xf8($a0)
/* 00E7DC 8000EC2C A4860100 */  sh          $a2, 0x100($a0)
/* 00E7E0 8000EC30 306A0007 */  andi        $t2, $v1, 0x7
/* 00E7E4 8000EC34 1541000B */  bne         $t2, $at, .L8000EC64
/* 00E7E8 8000EC38 00035B80 */   sll        $t3, $v1, 14
/* 00E7EC 8000EC3C 05600004 */  bltz        $t3, .L8000EC50
/* 00E7F0 8000EC40 3C014000 */   lui        $at, 0x4000
/* 00E7F4 8000EC44 8C8C0110 */  lw          $t4, 0x110($a0)
/* 00E7F8 8000EC48 55800007 */  bnel        $t4, $zero, .L8000EC68
/* 00E7FC 8000EC4C 3C01F9FF */   lui        $at, 0xf9ff
.L8000EC50:
/* 00E800 8000EC50 44812000 */  mtc1        $at, $f4
/* 00E804 8000EC54 AC800110 */  sw          $zero, 0x110($a0)
/* 00E808 8000EC58 AC800114 */  sw          $zero, 0x114($a0)
/* 00E80C 8000EC5C 8C8300F8 */  lw          $v1, 0xf8($a0)
/* 00E810 8000EC60 E4840104 */  swc1        $f4, 0x104($a0)
.L8000EC64:
/* 00E814 8000EC64 3C01F9FF */  lui         $at, 0xf9ff
.L8000EC68:
/* 00E818 8000EC68 3421FFF7 */  ori         $at, $at, 0xfff7
/* 00E81C 8000EC6C 00616824 */  and         $t5, $v1, $at
/* 00E820 8000EC70 AC8D00F8 */  sw          $t5, 0xf8($a0)
/* 00E824 8000EC74 03E00008 */  jr          $ra
/* 00E828 8000EC78 00000000 */   nop

glabel func_8000EC7C # 43
/* 00E82C 8000EC7C 8C990110 */  lw          $t9, 0x110($a0)
/* 00E830 8000EC80 8C8F012C */  lw          $t7, 0x12c($a0)
/* 00E834 8000EC84 84980140 */  lh          $t8, 0x140($a0)
/* 00E838 8000EC88 240EFFFF */  addiu       $t6, $zero, -0x1
/* 00E83C 8000EC8C A480011E */  sh          $zero, 0x11e($a0)
/* 00E840 8000EC90 A48E0120 */  sh          $t6, 0x120($a0)
/* 00E844 8000EC94 AC80012C */  sw          $zero, 0x12c($a0)
/* 00E848 8000EC98 A4800140 */  sh          $zero, 0x140($a0)
/* 00E84C 8000EC9C AC8F0128 */  sw          $t7, 0x128($a0)
/* 00E850 8000ECA0 17200002 */  bnez        $t9, .L8000ECAC
/* 00E854 8000ECA4 A498013E */   sh         $t8, 0x13e($a0)
/* 00E858 8000ECA8 AC850110 */  sw          $a1, 0x110($a0)
.L8000ECAC:
/* 00E85C 8000ECAC 03E00008 */  jr          $ra
/* 00E860 8000ECB0 00000000 */   nop

glabel func_8000ECB4 # 44
/* 00E864 8000ECB4 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 00E868 8000ECB8 AFBF003C */  sw          $ra, 0x3c($sp)
/* 00E86C 8000ECBC AFB60038 */  sw          $s6, 0x38($sp)
/* 00E870 8000ECC0 AFB50034 */  sw          $s5, 0x34($sp)
/* 00E874 8000ECC4 AFB40030 */  sw          $s4, 0x30($sp)
/* 00E878 8000ECC8 AFB3002C */  sw          $s3, 0x2c($sp)
/* 00E87C 8000ECCC AFB20028 */  sw          $s2, 0x28($sp)
/* 00E880 8000ECD0 AFB10024 */  sw          $s1, 0x24($sp)
/* 00E884 8000ECD4 AFB00020 */  sw          $s0, 0x20($sp)
/* 00E888 8000ECD8 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 00E88C 8000ECDC AFA40040 */  sw          $a0, 0x40($sp)
/* 00E890 8000ECE0 8C930054 */  lw          $s3, 0x54($a0)
/* 00E894 8000ECE4 3C158007 */  lui         $s5, %hi(D_8006B590)
/* 00E898 8000ECE8 24190001 */  addiu       $t9, $zero, 0x1
/* 00E89C 8000ECEC 966F011A */  lhu         $t7, 0x11a($s3)
/* 00E8A0 8000ECF0 26B5B590 */  addiu       $s5, $s5, %lo(D_8006B590)
/* 00E8A4 8000ECF4 2416002C */  addiu       $s6, $zero, 0x2c
/* 00E8A8 8000ECF8 15E00003 */  bnez        $t7, .L8000ED08
/* 00E8AC 8000ECFC 3C01800A */   lui        $at, %hi(D_800A10CC)
/* 00E8B0 8000ED00 2418FFFF */  addiu       $t8, $zero, -0x1
/* 00E8B4 8000ED04 A6780100 */  sh          $t8, 0x100($s3)
.L8000ED08:
/* 00E8B8 8000ED08 A660011C */  sh          $zero, 0x11c($s3)
/* 00E8BC 8000ED0C A6790118 */  sh          $t9, 0x118($s3)
/* 00E8C0 8000ED10 C43410CC */  lwc1        $f20, %lo(D_800A10CC)($at)
/* 00E8C4 8000ED14 86620100 */  lh          $v0, 0x100($s3)
.L8000ED18:
/* 00E8C8 8000ED18 04400003 */  bltz        $v0, .L8000ED28
/* 00E8CC 8000ED1C 2841014A */   slti       $at, $v0, 0x14a
/* 00E8D0 8000ED20 14200003 */  bnez        $at, .L8000ED30
/* 00E8D4 8000ED24 00000000 */   nop
.L8000ED28:
/* 00E8D8 8000ED28 10000005 */  b           .L8000ED40
/* 00E8DC 8000ED2C 0000A025 */   move       $s4, $zero
.L8000ED30:
/* 00E8E0 8000ED30 00560019 */  multu       $v0, $s6
/* 00E8E4 8000ED34 00004012 */  mflo        $t0
/* 00E8E8 8000ED38 02A8A021 */  addu        $s4, $s5, $t0
/* 00E8EC 8000ED3C 00000000 */  nop
.L8000ED40:
/* 00E8F0 8000ED40 86720120 */  lh          $s2, 0x120($s3)
/* 00E8F4 8000ED44 06400003 */  bltz        $s2, .L8000ED54
/* 00E8F8 8000ED48 2A41014A */   slti       $at, $s2, 0x14a
/* 00E8FC 8000ED4C 14200003 */  bnez        $at, .L8000ED5C
/* 00E900 8000ED50 00000000 */   nop
.L8000ED54:
/* 00E904 8000ED54 10000005 */  b           .L8000ED6C
/* 00E908 8000ED58 00008025 */   move       $s0, $zero
.L8000ED5C:
/* 00E90C 8000ED5C 02560019 */  multu       $s2, $s6
/* 00E910 8000ED60 00004812 */  mflo        $t1
/* 00E914 8000ED64 02A98021 */  addu        $s0, $s5, $t1
/* 00E918 8000ED68 00000000 */  nop
.L8000ED6C:
/* 00E91C 8000ED6C 16800007 */  bnez        $s4, .L8000ED8C
/* 00E920 8000ED70 00000000 */   nop
/* 00E924 8000ED74 16000005 */  bnez        $s0, .L8000ED8C
/* 00E928 8000ED78 00000000 */   nop
/* 00E92C 8000ED7C 0C003D35 */  jal         func_8000F4D4
/* 00E930 8000ED80 8FA40040 */   lw         $a0, 0x40($sp)
/* 00E934 8000ED84 10000097 */  b           .L8000EFE4
/* 00E938 8000ED88 8FBF003C */   lw         $ra, 0x3c($sp)
.L8000ED8C:
/* 00E93C 8000ED8C 12000006 */  beqz        $s0, .L8000EDA8
/* 00E940 8000ED90 02807025 */   move       $t6, $s4
/* 00E944 8000ED94 12800014 */  beqz        $s4, .L8000EDE8
/* 00E948 8000ED98 02602025 */   move       $a0, $s3
/* 00E94C 8000ED9C 8E8A000C */  lw          $t2, 0xc($s4)
/* 00E950 8000EDA0 000A5940 */  sll         $t3, $t2, 5
/* 00E954 8000EDA4 05610010 */  bgez        $t3, .L8000EDE8
.L8000EDA8:
/* 00E958 8000EDA8 02607825 */   move       $t7, $s3
/* 00E95C 8000EDAC 268D0024 */  addiu       $t5, $s4, 0x24
.L8000EDB0:
/* 00E960 8000EDB0 8DC10000 */  lw          $at, 0x0($t6)
/* 00E964 8000EDB4 25CE000C */  addiu       $t6, $t6, 0xc
/* 00E968 8000EDB8 25EF000C */  addiu       $t7, $t7, 0xc
/* 00E96C 8000EDBC ADE100E0 */  sw          $at, 0xe0($t7)
/* 00E970 8000EDC0 8DC1FFF8 */  lw          $at, -0x8($t6)
/* 00E974 8000EDC4 ADE100E4 */  sw          $at, 0xe4($t7)
/* 00E978 8000EDC8 8DC1FFFC */  lw          $at, -0x4($t6)
/* 00E97C 8000EDCC 15CDFFF8 */  bne         $t6, $t5, .L8000EDB0
/* 00E980 8000EDD0 ADE100E8 */   sw         $at, 0xe8($t7)
/* 00E984 8000EDD4 8DC10000 */  lw          $at, 0x0($t6)
/* 00E988 8000EDD8 ADE100EC */  sw          $at, 0xec($t7)
/* 00E98C 8000EDDC 8DCD0004 */  lw          $t5, 0x4($t6)
/* 00E990 8000EDE0 10000079 */  b           .L8000EFC8
/* 00E994 8000EDE4 ADED00F0 */   sw         $t5, 0xf0($t7)
.L8000EDE8:
/* 00E998 8000EDE8 8E110024 */  lw          $s1, 0x24($s0)
/* 00E99C 8000EDEC 16200003 */  bnez        $s1, .L8000EDFC
/* 00E9A0 8000EDF0 00000000 */   nop
/* 00E9A4 8000EDF4 3C118009 */  lui         $s1, %hi(D_80091D18)
/* 00E9A8 8000EDF8 26311D18 */  addiu       $s1, $s1, %lo(D_80091D18)
.L8000EDFC:
/* 00E9AC 8000EDFC 0C003AA2 */  jal         func_8000EA88
/* 00E9B0 8000EE00 02002825 */   move       $a1, $s0
/* 00E9B4 8000EE04 10400005 */  beqz        $v0, .L8000EE1C
/* 00E9B8 8000EE08 02602025 */   move       $a0, $s3
/* 00E9BC 8000EE0C 0C003B1F */  jal         func_8000EC7C
/* 00E9C0 8000EE10 02202825 */   move       $a1, $s1
/* 00E9C4 8000EE14 1000006C */  b           .L8000EFC8
/* 00E9C8 8000EE18 00000000 */   nop
.L8000EE1C:
/* 00E9CC 8000EE1C 8E18000C */  lw          $t8, 0xc($s0)
/* 00E9D0 8000EE20 0018C980 */  sll         $t9, $t8, 6
/* 00E9D4 8000EE24 0723001A */  bgezl       $t9, .L8000EE90
/* 00E9D8 8000EE28 00008825 */   move       $s1, $zero
/* 00E9DC 8000EE2C 86020014 */  lh          $v0, 0x14($s0)
/* 00E9E0 8000EE30 2401FFFF */  addiu       $at, $zero, -0x1
/* 00E9E4 8000EE34 02602025 */  move        $a0, $s3
/* 00E9E8 8000EE38 50410015 */  beql        $v0, $at, .L8000EE90
/* 00E9EC 8000EE3C 00008825 */   move       $s1, $zero
/* 00E9F0 8000EE40 04400004 */  bltz        $v0, .L8000EE54
/* 00E9F4 8000EE44 00409025 */   move       $s2, $v0
/* 00E9F8 8000EE48 2841014A */  slti        $at, $v0, 0x14a
/* 00E9FC 8000EE4C 14200003 */  bnez        $at, .L8000EE5C
/* 00EA00 8000EE50 00000000 */   nop
.L8000EE54:
/* 00EA04 8000EE54 10000005 */  b           .L8000EE6C
/* 00EA08 8000EE58 00008025 */   move       $s0, $zero
.L8000EE5C:
/* 00EA0C 8000EE5C 02560019 */  multu       $s2, $s6
/* 00EA10 8000EE60 00004012 */  mflo        $t0
/* 00EA14 8000EE64 02A88021 */  addu        $s0, $s5, $t0
/* 00EA18 8000EE68 00000000 */  nop
.L8000EE6C:
/* 00EA1C 8000EE6C 0C003AA2 */  jal         func_8000EA88
/* 00EA20 8000EE70 02002825 */   move       $a1, $s0
/* 00EA24 8000EE74 10400006 */  beqz        $v0, .L8000EE90
/* 00EA28 8000EE78 02602025 */   move       $a0, $s3
/* 00EA2C 8000EE7C 0C003B1F */  jal         func_8000EC7C
/* 00EA30 8000EE80 02202825 */   move       $a1, $s1
/* 00EA34 8000EE84 10000050 */  b           .L8000EFC8
/* 00EA38 8000EE88 00000000 */   nop
/* 00EA3C 8000EE8C 00008825 */  move        $s1, $zero
.L8000EE90:
/* 00EA40 8000EE90 926900FF */  lbu         $t1, 0xff($s3)
/* 00EA44 8000EE94 920B0012 */  lbu         $t3, 0x12($s0)
/* 00EA48 8000EE98 3C04800B */  lui         $a0, %hi(D_800B6830)
/* 00EA4C 8000EE9C 00095200 */  sll         $t2, $t1, 8
/* 00EA50 8000EEA0 24846830 */  addiu       $a0, $a0, %lo(D_800B6830)
/* 00EA54 8000EEA4 0C01239E */  jal         func_80048E78
/* 00EA58 8000EEA8 014B2821 */   addu       $a1, $t2, $t3
/* 00EA5C 8000EEAC 2443FF00 */  addiu       $v1, $v0, -0x100
/* 00EA60 8000EEB0 240100FE */  addiu       $at, $zero, 0xfe
/* 00EA64 8000EEB4 1441000A */  bne         $v0, $at, .L8000EEE0
/* 00EA68 8000EEB8 00602825 */   move       $a1, $v1
/* 00EA6C 8000EEBC 4406A000 */  mfc1        $a2, $f20
/* 00EA70 8000EEC0 02602025 */  move        $a0, $s3
/* 00EA74 8000EEC4 0C003ABE */  jal         func_8000EAF8
/* 00EA78 8000EEC8 02402825 */   move       $a1, $s2
/* 00EA7C 8000EECC 02602025 */  move        $a0, $s3
/* 00EA80 8000EED0 0C003B1F */  jal         func_8000EC7C
/* 00EA84 8000EED4 02202825 */   move       $a1, $s1
/* 00EA88 8000EED8 1000003B */  b           .L8000EFC8
/* 00EA8C 8000EEDC 00000000 */   nop
.L8000EEE0:
/* 00EA90 8000EEE0 2401FFFD */  addiu       $at, $zero, -0x3
/* 00EA94 8000EEE4 14610016 */  bne         $v1, $at, .L8000EF40
/* 00EA98 8000EEE8 02602025 */   move       $a0, $s3
/* 00EA9C 8000EEEC 02007025 */  move        $t6, $s0
/* 00EAA0 8000EEF0 02607825 */  move        $t7, $s3
/* 00EAA4 8000EEF4 260D0024 */  addiu       $t5, $s0, 0x24
.L8000EEF8:
/* 00EAA8 8000EEF8 8DC10000 */  lw          $at, 0x0($t6)
/* 00EAAC 8000EEFC 25CE000C */  addiu       $t6, $t6, 0xc
/* 00EAB0 8000EF00 25EF000C */  addiu       $t7, $t7, 0xc
/* 00EAB4 8000EF04 ADE100E0 */  sw          $at, 0xe0($t7)
/* 00EAB8 8000EF08 8DC1FFF8 */  lw          $at, -0x8($t6)
/* 00EABC 8000EF0C ADE100E4 */  sw          $at, 0xe4($t7)
/* 00EAC0 8000EF10 8DC1FFFC */  lw          $at, -0x4($t6)
/* 00EAC4 8000EF14 15CDFFF8 */  bne         $t6, $t5, .L8000EEF8
/* 00EAC8 8000EF18 ADE100E8 */   sw         $at, 0xe8($t7)
/* 00EACC 8000EF1C 8DC10000 */  lw          $at, 0x0($t6)
/* 00EAD0 8000EF20 02602025 */  move        $a0, $s3
/* 00EAD4 8000EF24 02202825 */  move        $a1, $s1
/* 00EAD8 8000EF28 ADE100EC */  sw          $at, 0xec($t7)
/* 00EADC 8000EF2C 8DCD0004 */  lw          $t5, 0x4($t6)
/* 00EAE0 8000EF30 0C003B1F */  jal         func_8000EC7C
/* 00EAE4 8000EF34 ADED00F0 */   sw         $t5, 0xf0($t7)
/* 00EAE8 8000EF38 10000023 */  b           .L8000EFC8
/* 00EAEC 8000EF3C 00000000 */   nop
.L8000EF40:
/* 00EAF0 8000EF40 0C003AE8 */  jal         func_8000EBA0
/* 00EAF4 8000EF44 02403025 */   move       $a2, $s2
/* 00EAF8 8000EF48 10400005 */  beqz        $v0, .L8000EF60
/* 00EAFC 8000EF4C 02602025 */   move       $a0, $s3
/* 00EB00 8000EF50 0C003B1F */  jal         func_8000EC7C
/* 00EB04 8000EF54 02202825 */   move       $a1, $s1
/* 00EB08 8000EF58 1000001B */  b           .L8000EFC8
/* 00EB0C 8000EF5C 00000000 */   nop
.L8000EF60:
/* 00EB10 8000EF60 1680000A */  bnez        $s4, .L8000EF8C
/* 00EB14 8000EF64 02804025 */   move       $t0, $s4
/* 00EB18 8000EF68 4406A000 */  mfc1        $a2, $f20
/* 00EB1C 8000EF6C 02602025 */  move        $a0, $s3
/* 00EB20 8000EF70 0C003ABE */  jal         func_8000EAF8
/* 00EB24 8000EF74 02402825 */   move       $a1, $s2
/* 00EB28 8000EF78 02602025 */  move        $a0, $s3
/* 00EB2C 8000EF7C 0C003B1F */  jal         func_8000EC7C
/* 00EB30 8000EF80 02202825 */   move       $a1, $s1
/* 00EB34 8000EF84 10000010 */  b           .L8000EFC8
/* 00EB38 8000EF88 00000000 */   nop
.L8000EF8C:
/* 00EB3C 8000EF8C 02604825 */  move        $t1, $s3
/* 00EB40 8000EF90 26990024 */  addiu       $t9, $s4, 0x24
.L8000EF94:
/* 00EB44 8000EF94 8D010000 */  lw          $at, 0x0($t0)
/* 00EB48 8000EF98 2508000C */  addiu       $t0, $t0, 0xc
/* 00EB4C 8000EF9C 2529000C */  addiu       $t1, $t1, 0xc
/* 00EB50 8000EFA0 AD2100E0 */  sw          $at, 0xe0($t1)
/* 00EB54 8000EFA4 8D01FFF8 */  lw          $at, -0x8($t0)
/* 00EB58 8000EFA8 AD2100E4 */  sw          $at, 0xe4($t1)
/* 00EB5C 8000EFAC 8D01FFFC */  lw          $at, -0x4($t0)
/* 00EB60 8000EFB0 1519FFF8 */  bne         $t0, $t9, .L8000EF94
/* 00EB64 8000EFB4 AD2100E8 */   sw         $at, 0xe8($t1)
/* 00EB68 8000EFB8 8D010000 */  lw          $at, 0x0($t0)
/* 00EB6C 8000EFBC AD2100EC */  sw          $at, 0xec($t1)
/* 00EB70 8000EFC0 8D190004 */  lw          $t9, 0x4($t0)
/* 00EB74 8000EFC4 AD3900F0 */  sw          $t9, 0xf0($t1)
.L8000EFC8:
/* 00EB78 8000EFC8 0C003A36 */  jal         func_8000E8D8
/* 00EB7C 8000EFCC 8FA40040 */   lw         $a0, 0x40($sp)
/* 00EB80 8000EFD0 5440FF51 */  bnel        $v0, $zero, .L8000ED18
/* 00EB84 8000EFD4 86620100 */   lh         $v0, 0x100($s3)
/* 00EB88 8000EFD8 0C003844 */  jal         func_8000E110
/* 00EB8C 8000EFDC 8FA40040 */   lw         $a0, 0x40($sp)
/* 00EB90 8000EFE0 8FBF003C */  lw          $ra, 0x3c($sp)
.L8000EFE4:
/* 00EB94 8000EFE4 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 00EB98 8000EFE8 8FB00020 */  lw          $s0, 0x20($sp)
/* 00EB9C 8000EFEC 8FB10024 */  lw          $s1, 0x24($sp)
/* 00EBA0 8000EFF0 8FB20028 */  lw          $s2, 0x28($sp)
/* 00EBA4 8000EFF4 8FB3002C */  lw          $s3, 0x2c($sp)
/* 00EBA8 8000EFF8 8FB40030 */  lw          $s4, 0x30($sp)
/* 00EBAC 8000EFFC 8FB50034 */  lw          $s5, 0x34($sp)
/* 00EBB0 8000F000 8FB60038 */  lw          $s6, 0x38($sp)
/* 00EBB4 8000F004 03E00008 */  jr          $ra
/* 00EBB8 8000F008 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_8000F00C # 45
/* 00EBBC 8000F00C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00EBC0 8000F010 AFB30020 */  sw          $s3, 0x20($sp)
/* 00EBC4 8000F014 3C13800B */  lui         $s3, %hi(D_800B6830)
/* 00EBC8 8000F018 26736830 */  addiu       $s3, $s3, %lo(D_800B6830)
/* 00EBCC 8000F01C AFBF002C */  sw          $ra, 0x2c($sp)
/* 00EBD0 8000F020 AFB50028 */  sw          $s5, 0x28($sp)
/* 00EBD4 8000F024 AFB40024 */  sw          $s4, 0x24($sp)
/* 00EBD8 8000F028 AFB2001C */  sw          $s2, 0x1c($sp)
/* 00EBDC 8000F02C AFB10018 */  sw          $s1, 0x18($sp)
/* 00EBE0 8000F030 AFB00014 */  sw          $s0, 0x14($sp)
/* 00EBE4 8000F034 02602025 */  move        $a0, $s3
/* 00EBE8 8000F038 0C012338 */  jal         func_80048CE0
/* 00EBEC 8000F03C 24050125 */   addiu      $a1, $zero, 0x125
/* 00EBF0 8000F040 3C028007 */  lui         $v0, %hi(D_8006EE48)
/* 00EBF4 8000F044 2451EE48 */  addiu       $s1, $v0, %lo(D_8006EE48)
/* 00EBF8 8000F048 922E0000 */  lbu         $t6, 0x0($s1)
/* 00EBFC 8000F04C 24120030 */  addiu       $s2, $zero, 0x30
/* 00EC00 8000F050 3C0F8007 */  lui         $t7, %hi(D_8006EE48)
/* 00EC04 8000F054 124E0012 */  beq         $s2, $t6, .L8000F0A0
/* 00EC08 8000F058 25EFEE48 */   addiu      $t7, $t7, %lo(D_8006EE48)
/* 00EC0C 8000F05C 91E20000 */  lbu         $v0, 0x0($t7)
/* 00EC10 8000F060 92390001 */  lbu         $t9, 0x1($s1)
.L8000F064:
/* 00EC14 8000F064 0002C200 */  sll         $t8, $v0, 8
/* 00EC18 8000F068 02602025 */  move        $a0, $s3
/* 00EC1C 8000F06C 03198021 */  addu        $s0, $t8, $t9
/* 00EC20 8000F070 0C01239E */  jal         func_80048E78
/* 00EC24 8000F074 02002825 */   move       $a1, $s0
/* 00EC28 8000F078 14400005 */  bnez        $v0, .L8000F090
/* 00EC2C 8000F07C 02602025 */   move       $a0, $s3
/* 00EC30 8000F080 86250002 */  lh          $a1, 0x2($s1)
/* 00EC34 8000F084 02003025 */  move        $a2, $s0
/* 00EC38 8000F088 0C012361 */  jal         func_80048D84
/* 00EC3C 8000F08C 24A50100 */   addiu      $a1, $a1, 0x100
.L8000F090:
/* 00EC40 8000F090 92220004 */  lbu         $v0, 0x4($s1)
/* 00EC44 8000F094 26310004 */  addiu       $s1, $s1, 0x4
/* 00EC48 8000F098 5642FFF2 */  bnel        $s2, $v0, .L8000F064
/* 00EC4C 8000F09C 92390001 */   lbu        $t9, 0x1($s1)
.L8000F0A0:
/* 00EC50 8000F0A0 3C118007 */  lui         $s1, %hi(D_8006B590)
/* 00EC54 8000F0A4 2631B590 */  addiu       $s1, $s1, %lo(D_8006B590)
/* 00EC58 8000F0A8 00009025 */  move        $s2, $zero
/* 00EC5C 8000F0AC 2415014A */  addiu       $s5, $zero, 0x14a
/* 00EC60 8000F0B0 3C140004 */  lui         $s4, 0x4
.L8000F0B4:
/* 00EC64 8000F0B4 8E28000C */  lw          $t0, 0xc($s1)
/* 00EC68 8000F0B8 01144824 */  and         $t1, $t0, $s4
/* 00EC6C 8000F0BC 5120000F */  beql        $t1, $zero, .L8000F0FC
/* 00EC70 8000F0C0 26520001 */   addiu      $s2, $s2, 0x1
/* 00EC74 8000F0C4 92230012 */  lbu         $v1, 0x12($s1)
/* 00EC78 8000F0C8 92220013 */  lbu         $v0, 0x13($s1)
/* 00EC7C 8000F0CC 02602025 */  move        $a0, $s3
/* 00EC80 8000F0D0 00035200 */  sll         $t2, $v1, 8
/* 00EC84 8000F0D4 10430008 */  beq         $v0, $v1, .L8000F0F8
/* 00EC88 8000F0D8 01428021 */   addu       $s0, $t2, $v0
/* 00EC8C 8000F0DC 0C01239E */  jal         func_80048E78
/* 00EC90 8000F0E0 02002825 */   move       $a1, $s0
/* 00EC94 8000F0E4 14400004 */  bnez        $v0, .L8000F0F8
/* 00EC98 8000F0E8 02602025 */   move       $a0, $s3
/* 00EC9C 8000F0EC 26450100 */  addiu       $a1, $s2, 0x100
/* 00ECA0 8000F0F0 0C012361 */  jal         func_80048D84
/* 00ECA4 8000F0F4 02003025 */   move       $a2, $s0
.L8000F0F8:
/* 00ECA8 8000F0F8 26520001 */  addiu       $s2, $s2, 0x1
.L8000F0FC:
/* 00ECAC 8000F0FC 1655FFED */  bne         $s2, $s5, .L8000F0B4
/* 00ECB0 8000F100 2631002C */   addiu      $s1, $s1, 0x2c
/* 00ECB4 8000F104 8FBF002C */  lw          $ra, 0x2c($sp)
/* 00ECB8 8000F108 8FB00014 */  lw          $s0, 0x14($sp)
/* 00ECBC 8000F10C 8FB10018 */  lw          $s1, 0x18($sp)
/* 00ECC0 8000F110 8FB2001C */  lw          $s2, 0x1c($sp)
/* 00ECC4 8000F114 8FB30020 */  lw          $s3, 0x20($sp)
/* 00ECC8 8000F118 8FB40024 */  lw          $s4, 0x24($sp)
/* 00ECCC 8000F11C 8FB50028 */  lw          $s5, 0x28($sp)
/* 00ECD0 8000F120 03E00008 */  jr          $ra
/* 00ECD4 8000F124 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8000F128 # 46
/* 00ECD8 8000F128 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00ECDC 8000F12C AFBF0014 */  sw          $ra, 0x14($sp)
/* 00ECE0 8000F130 3C04800B */  lui         $a0, %hi(D_800B6830)
/* 00ECE4 8000F134 0C012351 */  jal         func_80048D44
/* 00ECE8 8000F138 24846830 */   addiu      $a0, $a0, %lo(D_800B6830)
/* 00ECEC 8000F13C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00ECF0 8000F140 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00ECF4 8000F144 03E00008 */  jr          $ra
/* 00ECF8 8000F148 00000000 */   nop

glabel func_8000F14C # 47
/* 00ECFC 8000F14C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00ED00 8000F150 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00ED04 8000F154 AFB00018 */  sw          $s0, 0x18($sp)
/* 00ED08 8000F158 AFA40028 */  sw          $a0, 0x28($sp)
/* 00ED0C 8000F15C 8C900054 */  lw          $s0, 0x54($a0)
/* 00ED10 8000F160 44800000 */  mtc1        $zero, $f0
/* 00ED14 8000F164 860F0118 */  lh          $t7, 0x118($s0)
/* 00ED18 8000F168 E60001C0 */  swc1        $f0, 0x1c0($s0)
/* 00ED1C 8000F16C E60001C4 */  swc1        $f0, 0x1c4($s0)
/* 00ED20 8000F170 11E00003 */  beqz        $t7, .L8000F180
/* 00ED24 8000F174 E60001C8 */   swc1       $f0, 0x1c8($s0)
/* 00ED28 8000F178 0C003A45 */  jal         func_8000E914
/* 00ED2C 8000F17C 8FA40028 */   lw         $a0, 0x28($sp)
.L8000F180:
/* 00ED30 8000F180 9618011A */  lhu         $t8, 0x11a($s0)
/* 00ED34 8000F184 8FA40028 */  lw          $a0, 0x28($sp)
/* 00ED38 8000F188 2605014C */  addiu       $a1, $s0, 0x14c
/* 00ED3C 8000F18C 53000067 */  beql        $t8, $zero, .L8000F32C
/* 00ED40 8000F190 8FBF001C */   lw         $ra, 0x1c($sp)
/* 00ED44 8000F194 0C009374 */  jal         func_80024DD0
/* 00ED48 8000F198 26060144 */   addiu      $a2, $s0, 0x144
/* 00ED4C 8000F19C 8FA40028 */  lw          $a0, 0x28($sp)
/* 00ED50 8000F1A0 26050154 */  addiu       $a1, $s0, 0x154
/* 00ED54 8000F1A4 0C009374 */  jal         func_80024DD0
/* 00ED58 8000F1A8 26060148 */   addiu      $a2, $s0, 0x148
/* 00ED5C 8000F1AC 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 00ED60 8000F1B0 C426E4E4 */  lwc1        $f6, %lo(D_800AE4E4)($at)
/* 00ED64 8000F1B4 C6040130 */  lwc1        $f4, 0x130($s0)
/* 00ED68 8000F1B8 C6080138 */  lwc1        $f8, 0x138($s0)
/* 00ED6C 8000F1BC 44808000 */  mtc1        $zero, $f16
/* 00ED70 8000F1C0 46062002 */  mul.s       $f0, $f4, $f6
/* 00ED74 8000F1C4 3C04800B */  lui         $a0, %hi(D_800B6930)
/* 00ED78 8000F1C8 24846930 */  addiu       $a0, $a0, %lo(D_800B6930)
/* 00ED7C 8000F1CC 46004281 */  sub.s       $f10, $f8, $f0
/* 00ED80 8000F1D0 E60A0138 */  swc1        $f10, 0x138($s0)
/* 00ED84 8000F1D4 C6020138 */  lwc1        $f2, 0x138($s0)
/* 00ED88 8000F1D8 4610103E */  c.le.s      $f2, $f16
/* 00ED8C 8000F1DC 00000000 */  nop
/* 00ED90 8000F1E0 45020003 */  bc1fl       .L8000F1F0
/* 00ED94 8000F1E4 9602011A */   lhu        $v0, 0x11a($s0)
/* 00ED98 8000F1E8 46020000 */  add.s       $f0, $f0, $f2
/* 00ED9C 8000F1EC 9602011A */  lhu         $v0, 0x11a($s0)
.L8000F1F0:
/* 00EDA0 8000F1F0 24010001 */  addiu       $at, $zero, 0x1
/* 00EDA4 8000F1F4 10410007 */  beq         $v0, $at, .L8000F214
/* 00EDA8 8000F1F8 24010002 */   addiu      $at, $zero, 0x2
/* 00EDAC 8000F1FC 10410020 */  beq         $v0, $at, .L8000F280
/* 00EDB0 8000F200 24010003 */   addiu      $at, $zero, 0x3
/* 00EDB4 8000F204 5041000F */  beql        $v0, $at, .L8000F244
/* 00EDB8 8000F208 C6120134 */   lwc1       $f18, 0x134($s0)
/* 00EDBC 8000F20C 1000001D */  b           .L8000F284
/* 00EDC0 8000F210 8E02010C */   lw         $v0, 0x10c($s0)
.L8000F214:
/* 00EDC4 8000F214 860500FC */  lh          $a1, 0xfc($s0)
/* 00EDC8 8000F218 0C005CA4 */  jal         func_80017290
/* 00EDCC 8000F21C E7A00020 */   swc1       $f0, 0x20($sp)
/* 00EDD0 8000F220 C7A00020 */  lwc1        $f0, 0x20($sp)
/* 00EDD4 8000F224 8FA40028 */  lw          $a0, 0x28($sp)
/* 00EDD8 8000F228 02002825 */  move        $a1, $s0
/* 00EDDC 8000F22C 44060000 */  mfc1        $a2, $f0
/* 00EDE0 8000F230 0C003902 */  jal         func_8000E408
/* 00EDE4 8000F234 00000000 */   nop
/* 00EDE8 8000F238 10000012 */  b           .L8000F284
/* 00EDEC 8000F23C 8E02010C */   lw         $v0, 0x10c($s0)
/* 00EDF0 8000F240 C6120134 */  lwc1        $f18, 0x134($s0)
.L8000F244:
/* 00EDF4 8000F244 3C013F80 */  lui         $at, 0x3f80
/* 00EDF8 8000F248 44813000 */  mtc1        $at, $f6
/* 00EDFC 8000F24C 46121003 */  div.s       $f0, $f2, $f18
/* 00EE00 8000F250 C6040008 */  lwc1        $f4, 0x8($s0)
/* 00EE04 8000F254 C6100004 */  lwc1        $f16, 0x4($s0)
/* 00EE08 8000F258 2604023C */  addiu       $a0, $s0, 0x23c
/* 00EE0C 8000F25C 26050018 */  addiu       $a1, $s0, 0x18
/* 00EE10 8000F260 46003201 */  sub.s       $f8, $f6, $f0
/* 00EE14 8000F264 44060000 */  mfc1        $a2, $f0
/* 00EE18 8000F268 46082282 */  mul.s       $f10, $f4, $f8
/* 00EE1C 8000F26C 00000000 */  nop
/* 00EE20 8000F270 46008482 */  mul.s       $f18, $f16, $f0
/* 00EE24 8000F274 460A9180 */  add.s       $f6, $f18, $f10
/* 00EE28 8000F278 0C003A07 */  jal         func_8000E81C
/* 00EE2C 8000F27C E6060004 */   swc1       $f6, 0x4($s0)
.L8000F280:
/* 00EE30 8000F280 8E02010C */  lw          $v0, 0x10c($s0)
.L8000F284:
/* 00EE34 8000F284 00001825 */  move        $v1, $zero
/* 00EE38 8000F288 5040000C */  beql        $v0, $zero, .L8000F2BC
/* 00EE3C 8000F28C C6020138 */   lwc1       $f2, 0x138($s0)
/* 00EE40 8000F290 0040F809 */  jalr        $v0
/* 00EE44 8000F294 8FA40028 */   lw         $a0, 0x28($sp)
/* 00EE48 8000F298 24010001 */  addiu       $at, $zero, 0x1
/* 00EE4C 8000F29C 14410004 */  bne         $v0, $at, .L8000F2B0
/* 00EE50 8000F2A0 00401825 */   move       $v1, $v0
/* 00EE54 8000F2A4 44802000 */  mtc1        $zero, $f4
/* 00EE58 8000F2A8 00000000 */  nop
/* 00EE5C 8000F2AC E6040138 */  swc1        $f4, 0x138($s0)
.L8000F2B0:
/* 00EE60 8000F2B0 10000002 */  b           .L8000F2BC
/* 00EE64 8000F2B4 C6020138 */   lwc1       $f2, 0x138($s0)
/* 00EE68 8000F2B8 C6020138 */  lwc1        $f2, 0x138($s0)
.L8000F2BC:
/* 00EE6C 8000F2BC 44804000 */  mtc1        $zero, $f8
/* 00EE70 8000F2C0 00000000 */  nop
/* 00EE74 8000F2C4 4602403C */  c.lt.s      $f8, $f2
/* 00EE78 8000F2C8 00000000 */  nop
/* 00EE7C 8000F2CC 45030017 */  bc1tl       .L8000F32C
/* 00EE80 8000F2D0 8FBF001C */   lw         $ra, 0x1c($sp)
/* 00EE84 8000F2D4 8E1900F8 */  lw          $t9, 0xf8($s0)
/* 00EE88 8000F2D8 33280008 */  andi        $t0, $t9, 0x8
/* 00EE8C 8000F2DC 11000010 */  beqz        $t0, .L8000F320
/* 00EE90 8000F2E0 00000000 */   nop
/* 00EE94 8000F2E4 8609011E */  lh          $t1, 0x11e($s0)
/* 00EE98 8000F2E8 1520000D */  bnez        $t1, .L8000F320
/* 00EE9C 8000F2EC 00000000 */   nop
/* 00EEA0 8000F2F0 1460000B */  bnez        $v1, .L8000F320
/* 00EEA4 8000F2F4 00000000 */   nop
/* 00EEA8 8000F2F8 0C003A36 */  jal         func_8000E8D8
/* 00EEAC 8000F2FC 8FA40028 */   lw         $a0, 0x28($sp)
/* 00EEB0 8000F300 14400007 */  bnez        $v0, .L8000F320
/* 00EEB4 8000F304 00000000 */   nop
/* 00EEB8 8000F308 860A011C */  lh          $t2, 0x11c($s0)
/* 00EEBC 8000F30C 240C0001 */  addiu       $t4, $zero, 0x1
/* 00EEC0 8000F310 A60C0118 */  sh          $t4, 0x118($s0)
/* 00EEC4 8000F314 254B0001 */  addiu       $t3, $t2, 0x1
/* 00EEC8 8000F318 10000003 */  b           .L8000F328
/* 00EECC 8000F31C A60B011C */   sh         $t3, 0x11c($s0)
.L8000F320:
/* 00EED0 8000F320 0C003B2D */  jal         func_8000ECB4
/* 00EED4 8000F324 8FA40028 */   lw         $a0, 0x28($sp)
.L8000F328:
/* 00EED8 8000F328 8FBF001C */  lw          $ra, 0x1c($sp)
.L8000F32C:
/* 00EEDC 8000F32C 8FB00018 */  lw          $s0, 0x18($sp)
/* 00EEE0 8000F330 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00EEE4 8000F334 03E00008 */  jr          $ra
/* 00EEE8 8000F338 00000000 */   nop

glabel func_8000F33C # 48
/* 00EEEC 8000F33C 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 00EEF0 8000F340 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00EEF4 8000F344 AFB00018 */  sw          $s0, 0x18($sp)
/* 00EEF8 8000F348 8C870054 */  lw          $a3, 0x54($a0)
/* 00EEFC 8000F34C 00808025 */  move        $s0, $a0
/* 00EF00 8000F350 94E50000 */  lhu         $a1, 0x0($a3)
/* 00EF04 8000F354 50A00027 */  beql        $a1, $zero, .L8000F3F4
/* 00EF08 8000F358 8FBF001C */   lw         $ra, 0x1c($sp)
/* 00EF0C 8000F35C 8C8E0050 */  lw          $t6, 0x50($a0)
/* 00EF10 8000F360 24010001 */  addiu       $at, $zero, 0x1
/* 00EF14 8000F364 10A10008 */  beq         $a1, $at, .L8000F388
/* 00EF18 8000F368 8DC20054 */   lw         $v0, 0x54($t6)
/* 00EF1C 8000F36C 24010002 */  addiu       $at, $zero, 0x2
/* 00EF20 8000F370 10A10010 */  beq         $a1, $at, .L8000F3B4
/* 00EF24 8000F374 24010003 */   addiu      $at, $zero, 0x3
/* 00EF28 8000F378 50A10011 */  beql        $a1, $at, .L8000F3C0
/* 00EF2C 8000F37C C44A0138 */   lwc1       $f10, 0x138($v0)
/* 00EF30 8000F380 1000001C */  b           .L8000F3F4
/* 00EF34 8000F384 8FBF001C */   lw         $ra, 0x1c($sp)
.L8000F388:
/* 00EF38 8000F388 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 00EF3C 8000F38C C426E4E4 */  lwc1        $f6, %lo(D_800AE4E4)($at)
/* 00EF40 8000F390 C4440130 */  lwc1        $f4, 0x130($v0)
/* 00EF44 8000F394 02002025 */  move        $a0, $s0
/* 00EF48 8000F398 00E02825 */  move        $a1, $a3
/* 00EF4C 8000F39C 46062202 */  mul.s       $f8, $f4, $f6
/* 00EF50 8000F3A0 44064000 */  mfc1        $a2, $f8
/* 00EF54 8000F3A4 0C00391C */  jal         func_8000E470
/* 00EF58 8000F3A8 00000000 */   nop
/* 00EF5C 8000F3AC 10000011 */  b           .L8000F3F4
/* 00EF60 8000F3B0 8FBF001C */   lw         $ra, 0x1c($sp)
.L8000F3B4:
/* 00EF64 8000F3B4 1000000E */  b           .L8000F3F0
/* 00EF68 8000F3B8 A4E00000 */   sh         $zero, 0x0($a3)
/* 00EF6C 8000F3BC C44A0138 */  lwc1        $f10, 0x138($v0)
.L8000F3C0:
/* 00EF70 8000F3C0 C4500134 */  lwc1        $f16, 0x134($v0)
/* 00EF74 8000F3C4 24E40004 */  addiu       $a0, $a3, 0x4
/* 00EF78 8000F3C8 27A50028 */  addiu       $a1, $sp, 0x28
/* 00EF7C 8000F3CC 46105483 */  div.s       $f18, $f10, $f16
/* 00EF80 8000F3D0 44069000 */  mfc1        $a2, $f18
/* 00EF84 8000F3D4 0C003A07 */  jal         func_8000E81C
/* 00EF88 8000F3D8 00000000 */   nop
/* 00EF8C 8000F3DC 27A40028 */  addiu       $a0, $sp, 0x28
/* 00EF90 8000F3E0 2605000C */  addiu       $a1, $s0, 0xc
/* 00EF94 8000F3E4 26060010 */  addiu       $a2, $s0, 0x10
/* 00EF98 8000F3E8 0C0034B9 */  jal         func_8000D2E4
/* 00EF9C 8000F3EC 26070014 */   addiu      $a3, $s0, 0x14
.L8000F3F0:
/* 00EFA0 8000F3F0 8FBF001C */  lw          $ra, 0x1c($sp)
.L8000F3F4:
/* 00EFA4 8000F3F4 8FB00018 */  lw          $s0, 0x18($sp)
/* 00EFA8 8000F3F8 27BD0060 */  addiu       $sp, $sp, 0x60
/* 00EFAC 8000F3FC 03E00008 */  jr          $ra
/* 00EFB0 8000F400 00000000 */   nop

glabel func_8000F404 # 49
/* 00EFB4 8000F404 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00EFB8 8000F408 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00EFBC 8000F40C AFA40020 */  sw          $a0, 0x20($sp)
/* 00EFC0 8000F410 AFA50024 */  sw          $a1, 0x24($sp)
/* 00EFC4 8000F414 AFA60028 */  sw          $a2, 0x28($sp)
/* 00EFC8 8000F418 AFA7002C */  sw          $a3, 0x2c($sp)
/* 00EFCC 8000F41C 8C830054 */  lw          $v1, 0x54($a0)
/* 00EFD0 8000F420 00A02025 */  move        $a0, $a1
/* 00EFD4 8000F424 0C003823 */  jal         func_8000E08C
/* 00EFD8 8000F428 AFA3001C */   sw         $v1, 0x1c($sp)
/* 00EFDC 8000F42C 1440000D */  bnez        $v0, .L8000F464
/* 00EFE0 8000F430 8FA3001C */   lw         $v1, 0x1c($sp)
/* 00EFE4 8000F434 8FAF0024 */  lw          $t7, 0x24($sp)
/* 00EFE8 8000F438 3C048007 */  lui         $a0, %hi(D_8006B5A4)
/* 00EFEC 8000F43C AFA3001C */  sw          $v1, 0x1c($sp)
/* 00EFF0 8000F440 000FC080 */  sll         $t8, $t7, 2
/* 00EFF4 8000F444 030FC023 */  subu        $t8, $t8, $t7
/* 00EFF8 8000F448 0018C080 */  sll         $t8, $t8, 2
/* 00EFFC 8000F44C 030FC023 */  subu        $t8, $t8, $t7
/* 00F000 8000F450 0018C080 */  sll         $t8, $t8, 2
/* 00F004 8000F454 00982021 */  addu        $a0, $a0, $t8
/* 00F008 8000F458 0C003823 */  jal         func_8000E08C
/* 00F00C 8000F45C 8484B5A4 */   lh         $a0, %lo(D_8006B5A4)($a0)
/* 00F010 8000F460 8FA3001C */  lw          $v1, 0x1c($sp)
.L8000F464:
/* 00F014 8000F464 8FB90024 */  lw          $t9, 0x24($sp)
/* 00F018 8000F468 8FA2002C */  lw          $v0, 0x2c($sp)
/* 00F01C 8000F46C 8C690124 */  lw          $t1, 0x124($v1)
/* 00F020 8000F470 A4790120 */  sh          $t9, 0x120($v1)
/* 00F024 8000F474 8FA80028 */  lw          $t0, 0x28($sp)
/* 00F028 8000F478 240E0001 */  addiu       $t6, $zero, 0x1
/* 00F02C 8000F47C A4680140 */  sh          $t0, 0x140($v1)
/* 00F030 8000F480 AC490000 */  sw          $t1, 0x0($v0)
/* 00F034 8000F484 8C6B0124 */  lw          $t3, 0x124($v1)
/* 00F038 8000F488 946D011A */  lhu         $t5, 0x11a($v1)
/* 00F03C 8000F48C AC69012C */  sw          $t1, 0x12c($v1)
/* 00F040 8000F490 256C0001 */  addiu       $t4, $t3, 0x1
/* 00F044 8000F494 15A00005 */  bnez        $t5, .L8000F4AC
/* 00F048 8000F498 AC6C0124 */   sw         $t4, 0x124($v1)
/* 00F04C 8000F49C 0C003B2D */  jal         func_8000ECB4
/* 00F050 8000F4A0 8FA40020 */   lw         $a0, 0x20($sp)
/* 00F054 8000F4A4 10000003 */  b           .L8000F4B4
/* 00F058 8000F4A8 24020001 */   addiu      $v0, $zero, 0x1
.L8000F4AC:
/* 00F05C 8000F4AC A46E011E */  sh          $t6, 0x11e($v1)
/* 00F060 8000F4B0 00001025 */  move        $v0, $zero
.L8000F4B4:
/* 00F064 8000F4B4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00F068 8000F4B8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00F06C 8000F4BC 03E00008 */  jr          $ra
/* 00F070 8000F4C0 00000000 */   nop

glabel func_8000F4C4 # 50
/* 00F074 8000F4C4 8C820054 */  lw          $v0, 0x54($a0)
/* 00F078 8000F4C8 240E0001 */  addiu       $t6, $zero, 0x1
/* 00F07C 8000F4CC 03E00008 */  jr          $ra
/* 00F080 8000F4D0 A44E011E */   sh         $t6, 0x11e($v0)

glabel func_8000F4D4 # 51
/* 00F084 8000F4D4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00F088 8000F4D8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F08C 8000F4DC 8C820054 */  lw          $v0, 0x54($a0)
/* 00F090 8000F4E0 A4400118 */  sh          $zero, 0x118($v0)
/* 00F094 8000F4E4 A440011E */  sh          $zero, 0x11e($v0)
/* 00F098 8000F4E8 AC400128 */  sw          $zero, 0x128($v0)
/* 00F09C 8000F4EC AC400150 */  sw          $zero, 0x150($v0)
/* 00F0A0 8000F4F0 AC40014C */  sw          $zero, 0x14c($v0)
/* 00F0A4 8000F4F4 AC400154 */  sw          $zero, 0x154($v0)
/* 00F0A8 8000F4F8 A04000FF */  sb          $zero, 0xff($v0)
/* 00F0AC 8000F4FC 0C003857 */  jal         func_8000E15C
/* 00F0B0 8000F500 AFA40018 */   sw         $a0, 0x18($sp)
/* 00F0B4 8000F504 0C003D47 */  jal         func_8000F51C
/* 00F0B8 8000F508 8FA40018 */   lw         $a0, 0x18($sp)
/* 00F0BC 8000F50C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00F0C0 8000F510 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00F0C4 8000F514 03E00008 */  jr          $ra
/* 00F0C8 8000F518 00000000 */   nop

glabel func_8000F51C # 52
/* 00F0CC 8000F51C 8C820054 */  lw          $v0, 0x54($a0)
/* 00F0D0 8000F520 240EFFFF */  addiu       $t6, $zero, -0x1
/* 00F0D4 8000F524 A44E0120 */  sh          $t6, 0x120($v0)
/* 00F0D8 8000F528 AC40012C */  sw          $zero, 0x12c($v0)
/* 00F0DC 8000F52C 03E00008 */  jr          $ra
/* 00F0E0 8000F530 A4400140 */   sh         $zero, 0x140($v0)

glabel func_8000F534 # 53
/* 00F0E4 8000F534 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00F0E8 8000F538 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F0EC 8000F53C AFA50024 */  sw          $a1, 0x24($sp)
/* 00F0F0 8000F540 AFA60028 */  sw          $a2, 0x28($sp)
/* 00F0F4 8000F544 8C870054 */  lw          $a3, 0x54($a0)
/* 00F0F8 8000F548 AFA40020 */  sw          $a0, 0x20($sp)
/* 00F0FC 8000F54C 0C003D35 */  jal         func_8000F4D4
/* 00F100 8000F550 AFA7001C */   sw         $a3, 0x1c($sp)
/* 00F104 8000F554 8FA4001C */  lw          $a0, 0x1c($sp)
/* 00F108 8000F558 240E0001 */  addiu       $t6, $zero, 0x1
/* 00F10C 8000F55C A480011C */  sh          $zero, 0x11c($a0)
/* 00F110 8000F560 A48E0118 */  sh          $t6, 0x118($a0)
/* 00F114 8000F564 8FA60028 */  lw          $a2, 0x28($sp)
/* 00F118 8000F568 0C003ABE */  jal         func_8000EAF8
/* 00F11C 8000F56C 8FA50024 */   lw         $a1, 0x24($sp)
/* 00F120 8000F570 8FA7001C */  lw          $a3, 0x1c($sp)
/* 00F124 8000F574 240FFFFF */  addiu       $t7, $zero, -0x1
/* 00F128 8000F578 A4EF0100 */  sh          $t7, 0x100($a3)
/* 00F12C 8000F57C 0C003844 */  jal         func_8000E110
/* 00F130 8000F580 8FA40020 */   lw         $a0, 0x20($sp)
/* 00F134 8000F584 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00F138 8000F588 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00F13C 8000F58C 03E00008 */  jr          $ra
/* 00F140 8000F590 00000000 */   nop

glabel func_8000F594 # 54
/* 00F144 8000F594 8C830054 */  lw          $v1, 0x54($a0)
/* 00F148 8000F598 3C022010 */  lui         $v0, 0x2010
/* 00F14C 8000F59C 946E011A */  lhu         $t6, 0x11a($v1)
/* 00F150 8000F5A0 55C00004 */  bnel        $t6, $zero, .L8000F5B4
/* 00F154 8000F5A4 8C6200F8 */   lw         $v0, 0xf8($v1)
/* 00F158 8000F5A8 03E00008 */  jr          $ra
/* 00F15C 8000F5AC 34420400 */   ori        $v0, $v0, 0x400
/* 00F160 8000F5B0 8C6200F8 */  lw          $v0, 0xf8($v1)
.L8000F5B4:
/* 00F164 8000F5B4 03E00008 */  jr          $ra
/* 00F168 8000F5B8 00000000 */   nop

glabel func_8000F5BC # 55
/* 00F16C 8000F5BC 8C820054 */  lw          $v0, 0x54($a0)
/* 00F170 8000F5C0 3C013F80 */  lui         $at, 0x3f80
/* 00F174 8000F5C4 944E011A */  lhu         $t6, 0x11a($v0)
/* 00F178 8000F5C8 55C00005 */  bnel        $t6, $zero, .L8000F5E0
/* 00F17C 8000F5CC C44000F4 */   lwc1       $f0, 0xf4($v0)
/* 00F180 8000F5D0 44810000 */  mtc1        $at, $f0
/* 00F184 8000F5D4 03E00008 */  jr          $ra
/* 00F188 8000F5D8 00000000 */   nop
/* 00F18C 8000F5DC C44000F4 */  lwc1        $f0, 0xf4($v0)
.L8000F5E0:
/* 00F190 8000F5E0 03E00008 */  jr          $ra
/* 00F194 8000F5E4 00000000 */   nop

glabel func_8000F5E8 # 56
/* 00F198 8000F5E8 8C830054 */  lw          $v1, 0x54($a0)
/* 00F19C 8000F5EC 946E011A */  lhu         $t6, 0x11a($v1)
/* 00F1A0 8000F5F0 55C00004 */  bnel        $t6, $zero, .L8000F604
/* 00F1A4 8000F5F4 846200FC */   lh         $v0, 0xfc($v1)
/* 00F1A8 8000F5F8 03E00008 */  jr          $ra
/* 00F1AC 8000F5FC 2402FFFF */   addiu      $v0, $zero, -0x1
/* 00F1B0 8000F600 846200FC */  lh          $v0, 0xfc($v1)
.L8000F604:
/* 00F1B4 8000F604 03E00008 */  jr          $ra
/* 00F1B8 8000F608 00000000 */   nop

glabel func_8000F60C # 57
/* 00F1BC 8000F60C 04800003 */  bltz        $a0, .L8000F61C
/* 00F1C0 8000F610 2881014A */   slti       $at, $a0, 0x14a
/* 00F1C4 8000F614 14200003 */  bnez        $at, .L8000F624
/* 00F1C8 8000F618 00047080 */   sll        $t6, $a0, 2
.L8000F61C:
/* 00F1CC 8000F61C 10000008 */  b           .L8000F640
/* 00F1D0 8000F620 00001825 */   move       $v1, $zero
.L8000F624:
/* 00F1D4 8000F624 01C47023 */  subu        $t6, $t6, $a0
/* 00F1D8 8000F628 000E7080 */  sll         $t6, $t6, 2
/* 00F1DC 8000F62C 01C47023 */  subu        $t6, $t6, $a0
/* 00F1E0 8000F630 3C0F8007 */  lui         $t7, %hi(D_8006B590)
/* 00F1E4 8000F634 25EFB590 */  addiu       $t7, $t7, %lo(D_8006B590)
/* 00F1E8 8000F638 000E7080 */  sll         $t6, $t6, 2
/* 00F1EC 8000F63C 01CF1821 */  addu        $v1, $t6, $t7
.L8000F640:
/* 00F1F0 8000F640 10600003 */  beqz        $v1, .L8000F650
/* 00F1F4 8000F644 2401FFFD */   addiu      $at, $zero, -0x3
/* 00F1F8 8000F648 03E00008 */  jr          $ra
/* 00F1FC 8000F64C 8C620004 */   lw         $v0, 0x4($v1)
.L8000F650:
/* 00F200 8000F650 10810009 */  beq         $a0, $at, .L8000F678
/* 00F204 8000F654 3C02800A */   lui        $v0, 0x800a
/* 00F208 8000F658 2401FFFE */  addiu       $at, $zero, -0x2
/* 00F20C 8000F65C 10810008 */  beq         $a0, $at, .L8000F680
/* 00F210 8000F660 3C02800A */   lui        $v0, 0x800a
/* 00F214 8000F664 2401FFFF */  addiu       $at, $zero, -0x1
/* 00F218 8000F668 10810007 */  beq         $a0, $at, .L8000F688
/* 00F21C 8000F66C 3C02800A */   lui        $v0, 0x800a
/* 00F220 8000F670 10000007 */  b           .L8000F690
/* 00F224 8000F674 3C02800A */   lui        $v0, %hi(_string_ActNone)
.L8000F678:
/* 00F228 8000F678 03E00008 */  jr          $ra
/* 00F22C 8000F67C 24421044 */   addiu      $v0, $v0, %lo(_string_ActNone)
.L8000F680:
/* 00F230 8000F680 03E00008 */  jr          $ra
/* 00F234 8000F684 24421050 */   addiu      $v0, $v0, 0x1050
.L8000F688:
/* 00F238 8000F688 03E00008 */  jr          $ra
/* 00F23C 8000F68C 2442105C */   addiu      $v0, $v0, 0x105c
.L8000F690:
/* 00F240 8000F690 24421064 */  addiu       $v0, $v0, 0x1064
/* 00F244 8000F694 03E00008 */  jr          $ra
/* 00F248 8000F698 00000000 */   nop

glabel func_8000F69C # 58
/* 00F24C 8000F69C 8C830054 */  lw          $v1, 0x54($a0)
/* 00F250 8000F6A0 946E011A */  lhu         $t6, 0x11a($v1)
/* 00F254 8000F6A4 55C00004 */  bnel        $t6, $zero, .L8000F6B8
/* 00F258 8000F6A8 8C620128 */   lw         $v0, 0x128($v1)
/* 00F25C 8000F6AC 03E00008 */  jr          $ra
/* 00F260 8000F6B0 00001025 */   move       $v0, $zero
/* 00F264 8000F6B4 8C620128 */  lw          $v0, 0x128($v1)
.L8000F6B8:
/* 00F268 8000F6B8 03E00008 */  jr          $ra
/* 00F26C 8000F6BC 00000000 */   nop

glabel func_8000F6C0 # 59
/* 00F270 8000F6C0 8C830054 */  lw          $v1, 0x54($a0)
/* 00F274 8000F6C4 03E00008 */  jr          $ra
/* 00F278 8000F6C8 8C620128 */   lw         $v0, 0x128($v1)

glabel func_8000F6CC # 60
/* 00F27C 8000F6CC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00F280 8000F6D0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F284 8000F6D4 04A00004 */  bltz        $a1, .L8000F6E8
/* 00F288 8000F6D8 8C820054 */   lw         $v0, 0x54($a0)
/* 00F28C 8000F6DC 28A1014A */  slti        $at, $a1, 0x14a
/* 00F290 8000F6E0 54200006 */  bnel        $at, $zero, .L8000F6FC
/* 00F294 8000F6E4 A4450100 */   sh         $a1, 0x100($v0)
.L8000F6E8:
/* 00F298 8000F6E8 0C003D31 */  jal         func_8000F4C4
/* 00F29C 8000F6EC A4450100 */   sh         $a1, 0x100($v0)
/* 00F2A0 8000F6F0 10000005 */  b           .L8000F708
/* 00F2A4 8000F6F4 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00F2A8 8000F6F8 A4450100 */  sh          $a1, 0x100($v0)
.L8000F6FC:
/* 00F2AC 8000F6FC 0C003823 */  jal         func_8000E08C
/* 00F2B0 8000F700 00A02025 */   move       $a0, $a1
/* 00F2B4 8000F704 8FBF0014 */  lw          $ra, 0x14($sp)
.L8000F708:
/* 00F2B8 8000F708 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00F2BC 8000F70C 03E00008 */  jr          $ra
/* 00F2C0 8000F710 00000000 */   nop

glabel func_8000F714 # 61
/* 00F2C4 8000F714 3C058007 */  lui         $a1, %hi(D_8006B590)
/* 00F2C8 8000F718 8C820054 */  lw          $v0, 0x54($a0)
/* 00F2CC 8000F71C 24A5B590 */  addiu       $a1, $a1, %lo(D_8006B590)
/* 00F2D0 8000F720 2406002C */  addiu       $a2, $zero, 0x2c
.L8000F724:
/* 00F2D4 8000F724 84430100 */  lh          $v1, 0x100($v0)
/* 00F2D8 8000F728 04600003 */  bltz        $v1, .L8000F738
/* 00F2DC 8000F72C 2861014A */   slti       $at, $v1, 0x14a
/* 00F2E0 8000F730 14200003 */  bnez        $at, .L8000F740
/* 00F2E4 8000F734 00000000 */   nop
.L8000F738:
/* 00F2E8 8000F738 10000005 */  b           .L8000F750
/* 00F2EC 8000F73C 00002025 */   move       $a0, $zero
.L8000F740:
/* 00F2F0 8000F740 00660019 */  multu       $v1, $a2
/* 00F2F4 8000F744 00007012 */  mflo        $t6
/* 00F2F8 8000F748 00AE2021 */  addu        $a0, $a1, $t6
/* 00F2FC 8000F74C 00000000 */  nop
.L8000F750:
/* 00F300 8000F750 10800008 */  beqz        $a0, .L8000F774
/* 00F304 8000F754 00000000 */   nop
/* 00F308 8000F758 8C8F000C */  lw          $t7, 0xc($a0)
/* 00F30C 8000F75C 31F80008 */  andi        $t8, $t7, 0x8
/* 00F310 8000F760 13000004 */  beqz        $t8, .L8000F774
/* 00F314 8000F764 00000000 */   nop
/* 00F318 8000F768 84990014 */  lh          $t9, 0x14($a0)
/* 00F31C 8000F76C 1000FFED */  b           .L8000F724
/* 00F320 8000F770 A4590100 */   sh         $t9, 0x100($v0)
.L8000F774:
/* 00F324 8000F774 03E00008 */  jr          $ra
/* 00F328 8000F778 00000000 */   nop

glabel func_8000F77C # 62
/* 00F32C 8000F77C 3C038007 */  lui         $v1, %hi(D_8006B5BC)
/* 00F330 8000F780 2463B5BC */  addiu       $v1, $v1, %lo(D_8006B5BC)
/* 00F334 8000F784 2463002C */  addiu       $v1, $v1, 0x2c
/* 00F338 8000F788 24020002 */  addiu       $v0, $zero, 0x2
/* 00F33C 8000F78C 2404014A */  addiu       $a0, $zero, 0x14a
.L8000F790:
/* 00F340 8000F790 24420004 */  addiu       $v0, $v0, 0x4
/* 00F344 8000F794 1444FFFE */  bne         $v0, $a0, .L8000F790
/* 00F348 8000F798 246300B0 */   addiu      $v1, $v1, 0xb0
/* 00F34C 8000F79C 03E00008 */  jr          $ra
/* 00F350 8000F7A0 00000000 */   nop
/* 00F354 8000F7A4 00000000 */  nop
/* 00F358 8000F7A8 00000000 */  nop
/* 00F35C 8000F7AC 00000000 */  nop
