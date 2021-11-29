.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005C7C0 # 0
/* 05C370 8005C7C0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 05C374 8005C7C4 AFB20028 */  sw          $s2, 0x28($sp)
/* 05C378 8005C7C8 00127400 */  sll         $t6, $s2, 16
/* 05C37C 8005C7CC 000E9403 */  sra         $s2, $t6, 16
/* 05C380 8005C7D0 AFB30024 */  sw          $s3, 0x24($sp)
/* 05C384 8005C7D4 0013C400 */  sll         $t8, $s3, 16
/* 05C388 8005C7D8 00189C03 */  sra         $s3, $t8, 16
/* 05C38C 8005C7DC 328E00FF */  andi        $t6, $s4, 0xff
/* 05C390 8005C7E0 AFB4001C */  sw          $s4, 0x1c($sp)
/* 05C394 8005C7E4 01C0A025 */  move        $s4, $t6
/* 05C398 8005C7E8 1E600004 */  bgtz        $s3, .L8005C7FC
/* 05C39C 8005C7EC AFBF0014 */   sw         $ra, 0x14($sp)
/* 05C3A0 8005C7F0 3C11800B */  lui         $s1, %hi(D_800ACD60)
/* 05C3A4 8005C7F4 2631CD60 */  addiu       $s1, $s1, %lo(D_800ACD60)
/* 05C3A8 8005C7F8 24130001 */  addiu       $s3, $zero, 0x1
.L8005C7FC:
/* 05C3AC 8005C7FC 24020066 */  addiu       $v0, $zero, 0x66
/* 05C3B0 8005C800 1054000C */  beq         $v0, $s4, .L8005C834
/* 05C3B4 8005C804 02801825 */   move       $v1, $s4
/* 05C3B8 8005C808 24040067 */  addiu       $a0, $zero, 0x67
/* 05C3BC 8005C80C 10830002 */  beq         $a0, $v1, .L8005C818
/* 05C3C0 8005C810 24010047 */   addiu      $at, $zero, 0x47
/* 05C3C4 8005C814 14610096 */  bne         $v1, $at, .L8005CA70
.L8005C818:
/* 05C3C8 8005C818 2A41FFFC */   slti       $at, $s2, -0x4
/* 05C3CC 8005C81C 14200094 */  bnez        $at, .L8005CA70
/* 05C3D0 8005C820 00000000 */   nop
/* 05C3D4 8005C824 8E0F0024 */  lw          $t7, 0x24($s0)
/* 05C3D8 8005C828 024F082A */  slt         $at, $s2, $t7
/* 05C3DC 8005C82C 10200090 */  beqz        $at, .L8005CA70
/* 05C3E0 8005C830 00000000 */   nop
.L8005C834:
/* 05C3E4 8005C834 26520001 */  addiu       $s2, $s2, 0x1
/* 05C3E8 8005C838 0012C400 */  sll         $t8, $s2, 16
/* 05C3EC 8005C83C 1043000E */  beq         $v0, $v1, .L8005C878
/* 05C3F0 8005C840 00189403 */   sra        $s2, $t8, 16
/* 05C3F4 8005C844 8E0E0030 */  lw          $t6, 0x30($s0)
/* 05C3F8 8005C848 8E020024 */  lw          $v0, 0x24($s0)
/* 05C3FC 8005C84C 31CF0008 */  andi        $t7, $t6, 0x8
/* 05C400 8005C850 15E00005 */  bnez        $t7, .L8005C868
/* 05C404 8005C854 0262082A */   slt        $at, $s3, $v0
/* 05C408 8005C858 50200004 */  beql        $at, $zero, .L8005C86C
/* 05C40C 8005C85C 0052C023 */   subu       $t8, $v0, $s2
/* 05C410 8005C860 AE130024 */  sw          $s3, 0x24($s0)
/* 05C414 8005C864 02601025 */  move        $v0, $s3
.L8005C868:
/* 05C418 8005C868 0052C023 */  subu        $t8, $v0, $s2
.L8005C86C:
/* 05C41C 8005C86C 07010002 */  bgez        $t8, .L8005C878
/* 05C420 8005C870 AE180024 */   sw         $t8, 0x24($s0)
/* 05C424 8005C874 AE000024 */  sw          $zero, 0x24($s0)
.L8005C878:
/* 05C428 8005C878 1E400033 */  bgtz        $s2, .L8005C948
/* 05C42C 8005C87C 0272082A */   slt        $at, $s3, $s2
/* 05C430 8005C880 8E0F0008 */  lw          $t7, 0x8($s0)
/* 05C434 8005C884 8E180014 */  lw          $t8, 0x14($s0)
/* 05C438 8005C888 240E0030 */  addiu       $t6, $zero, 0x30
/* 05C43C 8005C88C 00121823 */  negu        $v1, $s2
/* 05C440 8005C890 01F8C821 */  addu        $t9, $t7, $t8
/* 05C444 8005C894 A32E0000 */  sb          $t6, 0x0($t9)
/* 05C448 8005C898 8E0F0014 */  lw          $t7, 0x14($s0)
/* 05C44C 8005C89C 8E020024 */  lw          $v0, 0x24($s0)
/* 05C450 8005C8A0 02202825 */  move        $a1, $s1
/* 05C454 8005C8A4 25F80001 */  addiu       $t8, $t7, 0x1
/* 05C458 8005C8A8 1C400005 */  bgtz        $v0, .L8005C8C0
/* 05C45C 8005C8AC AE180014 */   sw         $t8, 0x14($s0)
/* 05C460 8005C8B0 8E0E0030 */  lw          $t6, 0x30($s0)
/* 05C464 8005C8B4 31D90008 */  andi        $t9, $t6, 0x8
/* 05C468 8005C8B8 5320000B */  beql        $t9, $zero, .L8005C8E8
/* 05C46C 8005C8BC 0043082A */   slt        $at, $v0, $v1
.L8005C8C0:
/* 05C470 8005C8C0 8E180008 */  lw          $t8, 0x8($s0)
/* 05C474 8005C8C4 8E0E0014 */  lw          $t6, 0x14($s0)
/* 05C478 8005C8C8 240F002E */  addiu       $t7, $zero, 0x2e
/* 05C47C 8005C8CC 030EC821 */  addu        $t9, $t8, $t6
/* 05C480 8005C8D0 A32F0000 */  sb          $t7, 0x0($t9)
/* 05C484 8005C8D4 8E180014 */  lw          $t8, 0x14($s0)
/* 05C488 8005C8D8 8E020024 */  lw          $v0, 0x24($s0)
/* 05C48C 8005C8DC 270E0001 */  addiu       $t6, $t8, 0x1
/* 05C490 8005C8E0 AE0E0014 */  sw          $t6, 0x14($s0)
/* 05C494 8005C8E4 0043082A */  slt         $at, $v0, $v1
.L8005C8E8:
/* 05C498 8005C8E8 50200006 */  beql        $at, $zero, .L8005C904
/* 05C49C 8005C8EC 0052C021 */   addu       $t8, $v0, $s2
/* 05C4A0 8005C8F0 00029023 */  negu        $s2, $v0
/* 05C4A4 8005C8F4 00127C00 */  sll         $t7, $s2, 16
/* 05C4A8 8005C8F8 000F9403 */  sra         $s2, $t7, 16
/* 05C4AC 8005C8FC 00121823 */  negu        $v1, $s2
/* 05C4B0 8005C900 0052C021 */  addu        $t8, $v0, $s2
.L8005C904:
/* 05C4B4 8005C904 0313082A */  slt         $at, $t8, $s3
/* 05C4B8 8005C908 AE030018 */  sw          $v1, 0x18($s0)
/* 05C4BC 8005C90C 10200004 */  beqz        $at, .L8005C920
/* 05C4C0 8005C910 AE180024 */   sw         $t8, 0x24($s0)
/* 05C4C4 8005C914 00189C00 */  sll         $s3, $t8, 16
/* 05C4C8 8005C918 00137403 */  sra         $t6, $s3, 16
/* 05C4CC 8005C91C 01C09825 */  move        $s3, $t6
.L8005C920:
/* 05C4D0 8005C920 8E0F0008 */  lw          $t7, 0x8($s0)
/* 05C4D4 8005C924 8E190014 */  lw          $t9, 0x14($s0)
/* 05C4D8 8005C928 AE13001C */  sw          $s3, 0x1c($s0)
/* 05C4DC 8005C92C 02603025 */  move        $a2, $s3
/* 05C4E0 8005C930 0C0118DC */  jal         memcpy
/* 05C4E4 8005C934 01F92021 */   addu       $a0, $t7, $t9
/* 05C4E8 8005C938 8E180024 */  lw          $t8, 0x24($s0)
/* 05C4EC 8005C93C 03137023 */  subu        $t6, $t8, $s3
/* 05C4F0 8005C940 100000E2 */  b           .L8005CCCC
/* 05C4F4 8005C944 AE0E0020 */   sw         $t6, 0x20($s0)
.L8005C948:
/* 05C4F8 8005C948 1020001D */  beqz        $at, .L8005C9C0
/* 05C4FC 8005C94C 02202825 */   move       $a1, $s1
/* 05C500 8005C950 8E0F0008 */  lw          $t7, 0x8($s0)
/* 05C504 8005C954 8E190014 */  lw          $t9, 0x14($s0)
/* 05C508 8005C958 02202825 */  move        $a1, $s1
/* 05C50C 8005C95C 02603025 */  move        $a2, $s3
/* 05C510 8005C960 0C0118DC */  jal         memcpy
/* 05C514 8005C964 01F92021 */   addu       $a0, $t7, $t9
/* 05C518 8005C968 8E180014 */  lw          $t8, 0x14($s0)
/* 05C51C 8005C96C 8E020024 */  lw          $v0, 0x24($s0)
/* 05C520 8005C970 02537823 */  subu        $t7, $s2, $s3
/* 05C524 8005C974 03137021 */  addu        $t6, $t8, $s3
/* 05C528 8005C978 AE0E0014 */  sw          $t6, 0x14($s0)
/* 05C52C 8005C97C 1C400005 */  bgtz        $v0, .L8005C994
/* 05C530 8005C980 AE0F0018 */   sw         $t7, 0x18($s0)
/* 05C534 8005C984 8E190030 */  lw          $t9, 0x30($s0)
/* 05C538 8005C988 33380008 */  andi        $t8, $t9, 0x8
/* 05C53C 8005C98C 1300000A */  beqz        $t8, .L8005C9B8
/* 05C540 8005C990 00000000 */   nop
.L8005C994:
/* 05C544 8005C994 8E0F0008 */  lw          $t7, 0x8($s0)
/* 05C548 8005C998 8E190014 */  lw          $t9, 0x14($s0)
/* 05C54C 8005C99C 240E002E */  addiu       $t6, $zero, 0x2e
/* 05C550 8005C9A0 01F9C021 */  addu        $t8, $t7, $t9
/* 05C554 8005C9A4 A30E0000 */  sb          $t6, 0x0($t8)
/* 05C558 8005C9A8 8E0F001C */  lw          $t7, 0x1c($s0)
/* 05C55C 8005C9AC 8E020024 */  lw          $v0, 0x24($s0)
/* 05C560 8005C9B0 25F90001 */  addiu       $t9, $t7, 0x1
/* 05C564 8005C9B4 AE19001C */  sw          $t9, 0x1c($s0)
.L8005C9B8:
/* 05C568 8005C9B8 100000C4 */  b           .L8005CCCC
/* 05C56C 8005C9BC AE020020 */   sw         $v0, 0x20($s0)
.L8005C9C0:
/* 05C570 8005C9C0 8E0E0008 */  lw          $t6, 0x8($s0)
/* 05C574 8005C9C4 8E180014 */  lw          $t8, 0x14($s0)
/* 05C578 8005C9C8 02403025 */  move        $a2, $s2
/* 05C57C 8005C9CC 0C0118DC */  jal         memcpy
/* 05C580 8005C9D0 01D82021 */   addu       $a0, $t6, $t8
/* 05C584 8005C9D4 8E0F0014 */  lw          $t7, 0x14($s0)
/* 05C588 8005C9D8 8E020024 */  lw          $v0, 0x24($s0)
/* 05C58C 8005C9DC 02729823 */  subu        $s3, $s3, $s2
/* 05C590 8005C9E0 00137400 */  sll         $t6, $s3, 16
/* 05C594 8005C9E4 01F2C821 */  addu        $t9, $t7, $s2
/* 05C598 8005C9E8 AE190014 */  sw          $t9, 0x14($s0)
/* 05C59C 8005C9EC 1C400005 */  bgtz        $v0, .L8005CA04
/* 05C5A0 8005C9F0 000E9C03 */   sra        $s3, $t6, 16
/* 05C5A4 8005C9F4 8E0F0030 */  lw          $t7, 0x30($s0)
/* 05C5A8 8005C9F8 31F90008 */  andi        $t9, $t7, 0x8
/* 05C5AC 8005C9FC 5320000B */  beql        $t9, $zero, .L8005CA2C
/* 05C5B0 8005CA00 0053082A */   slt        $at, $v0, $s3
.L8005CA04:
/* 05C5B4 8005CA04 8E180008 */  lw          $t8, 0x8($s0)
/* 05C5B8 8005CA08 8E0F0014 */  lw          $t7, 0x14($s0)
/* 05C5BC 8005CA0C 240E002E */  addiu       $t6, $zero, 0x2e
/* 05C5C0 8005CA10 030FC821 */  addu        $t9, $t8, $t7
/* 05C5C4 8005CA14 A32E0000 */  sb          $t6, 0x0($t9)
/* 05C5C8 8005CA18 8E180014 */  lw          $t8, 0x14($s0)
/* 05C5CC 8005CA1C 8E020024 */  lw          $v0, 0x24($s0)
/* 05C5D0 8005CA20 270F0001 */  addiu       $t7, $t8, 0x1
/* 05C5D4 8005CA24 AE0F0014 */  sw          $t7, 0x14($s0)
/* 05C5D8 8005CA28 0053082A */  slt         $at, $v0, $s3
.L8005CA2C:
/* 05C5DC 8005CA2C 10200004 */  beqz        $at, .L8005CA40
/* 05C5E0 8005CA30 02512821 */   addu       $a1, $s2, $s1
/* 05C5E4 8005CA34 00029C00 */  sll         $s3, $v0, 16
/* 05C5E8 8005CA38 00137403 */  sra         $t6, $s3, 16
/* 05C5EC 8005CA3C 01C09825 */  move        $s3, $t6
.L8005CA40:
/* 05C5F0 8005CA40 8E190008 */  lw          $t9, 0x8($s0)
/* 05C5F4 8005CA44 8E180014 */  lw          $t8, 0x14($s0)
/* 05C5F8 8005CA48 02603025 */  move        $a2, $s3
/* 05C5FC 8005CA4C 0C0118DC */  jal         memcpy
/* 05C600 8005CA50 03382021 */   addu       $a0, $t9, $t8
/* 05C604 8005CA54 8E0F0014 */  lw          $t7, 0x14($s0)
/* 05C608 8005CA58 8E190024 */  lw          $t9, 0x24($s0)
/* 05C60C 8005CA5C 01F37021 */  addu        $t6, $t7, $s3
/* 05C610 8005CA60 0333C023 */  subu        $t8, $t9, $s3
/* 05C614 8005CA64 AE0E0014 */  sw          $t6, 0x14($s0)
/* 05C618 8005CA68 10000098 */  b           .L8005CCCC
/* 05C61C 8005CA6C AE180018 */   sw         $t8, 0x18($s0)
.L8005CA70:
/* 05C620 8005CA70 10830003 */  beq         $a0, $v1, .L8005CA80
/* 05C624 8005CA74 24010047 */   addiu      $at, $zero, 0x47
/* 05C628 8005CA78 54610011 */  bnel        $v1, $at, .L8005CAC0
/* 05C62C 8005CA7C 8E180008 */   lw         $t8, 0x8($s0)
.L8005CA80:
/* 05C630 8005CA80 8E020024 */  lw          $v0, 0x24($s0)
/* 05C634 8005CA84 24140045 */  addiu       $s4, $zero, 0x45
/* 05C638 8005CA88 0262082A */  slt         $at, $s3, $v0
/* 05C63C 8005CA8C 50200004 */  beql        $at, $zero, .L8005CAA0
/* 05C640 8005CA90 244FFFFF */   addiu      $t7, $v0, -0x1
/* 05C644 8005CA94 AE130024 */  sw          $s3, 0x24($s0)
/* 05C648 8005CA98 02601025 */  move        $v0, $s3
/* 05C64C 8005CA9C 244FFFFF */  addiu       $t7, $v0, -0x1
.L8005CAA0:
/* 05C650 8005CAA0 05E10002 */  bgez        $t7, .L8005CAAC
/* 05C654 8005CAA4 AE0F0024 */   sw         $t7, 0x24($s0)
/* 05C658 8005CAA8 AE000024 */  sw          $zero, 0x24($s0)
.L8005CAAC:
/* 05C65C 8005CAAC 14830003 */  bne         $a0, $v1, .L8005CABC
/* 05C660 8005CAB0 00000000 */   nop
/* 05C664 8005CAB4 10000001 */  b           .L8005CABC
/* 05C668 8005CAB8 24140065 */   addiu      $s4, $zero, 0x65
.L8005CABC:
/* 05C66C 8005CABC 8E180008 */  lw          $t8, 0x8($s0)
.L8005CAC0:
/* 05C670 8005CAC0 8E0F0014 */  lw          $t7, 0x14($s0)
/* 05C674 8005CAC4 92390000 */  lbu         $t9, 0x0($s1)
/* 05C678 8005CAC8 26310001 */  addiu       $s1, $s1, 0x1
/* 05C67C 8005CACC 030F7021 */  addu        $t6, $t8, $t7
/* 05C680 8005CAD0 A1D90000 */  sb          $t9, 0x0($t6)
/* 05C684 8005CAD4 8E180014 */  lw          $t8, 0x14($s0)
/* 05C688 8005CAD8 8E020024 */  lw          $v0, 0x24($s0)
/* 05C68C 8005CADC 270F0001 */  addiu       $t7, $t8, 0x1
/* 05C690 8005CAE0 1C400005 */  bgtz        $v0, .L8005CAF8
/* 05C694 8005CAE4 AE0F0014 */   sw         $t7, 0x14($s0)
/* 05C698 8005CAE8 8E190030 */  lw          $t9, 0x30($s0)
/* 05C69C 8005CAEC 332E0008 */  andi        $t6, $t9, 0x8
/* 05C6A0 8005CAF0 11C0000A */  beqz        $t6, .L8005CB1C
/* 05C6A4 8005CAF4 00000000 */   nop
.L8005CAF8:
/* 05C6A8 8005CAF8 8E0F0008 */  lw          $t7, 0x8($s0)
/* 05C6AC 8005CAFC 8E190014 */  lw          $t9, 0x14($s0)
/* 05C6B0 8005CB00 2418002E */  addiu       $t8, $zero, 0x2e
/* 05C6B4 8005CB04 01F97021 */  addu        $t6, $t7, $t9
/* 05C6B8 8005CB08 A1D80000 */  sb          $t8, 0x0($t6)
/* 05C6BC 8005CB0C 8E0F0014 */  lw          $t7, 0x14($s0)
/* 05C6C0 8005CB10 8E020024 */  lw          $v0, 0x24($s0)
/* 05C6C4 8005CB14 25F90001 */  addiu       $t9, $t7, 0x1
/* 05C6C8 8005CB18 AE190014 */  sw          $t9, 0x14($s0)
.L8005CB1C:
/* 05C6CC 8005CB1C 58400016 */  blezl       $v0, .L8005CB78
/* 05C6D0 8005CB20 8E0E0008 */   lw         $t6, 0x8($s0)
/* 05C6D4 8005CB24 2673FFFF */  addiu       $s3, $s3, -0x1
/* 05C6D8 8005CB28 0013C400 */  sll         $t8, $s3, 16
/* 05C6DC 8005CB2C 00189C03 */  sra         $s3, $t8, 16
/* 05C6E0 8005CB30 0053082A */  slt         $at, $v0, $s3
/* 05C6E4 8005CB34 10200004 */  beqz        $at, .L8005CB48
/* 05C6E8 8005CB38 02202825 */   move       $a1, $s1
/* 05C6EC 8005CB3C 00029C00 */  sll         $s3, $v0, 16
/* 05C6F0 8005CB40 00137C03 */  sra         $t7, $s3, 16
/* 05C6F4 8005CB44 01E09825 */  move        $s3, $t7
.L8005CB48:
/* 05C6F8 8005CB48 8E190008 */  lw          $t9, 0x8($s0)
/* 05C6FC 8005CB4C 8E180014 */  lw          $t8, 0x14($s0)
/* 05C700 8005CB50 02603025 */  move        $a2, $s3
/* 05C704 8005CB54 0C0118DC */  jal         memcpy
/* 05C708 8005CB58 03382021 */   addu       $a0, $t9, $t8
/* 05C70C 8005CB5C 8E0E0014 */  lw          $t6, 0x14($s0)
/* 05C710 8005CB60 8E190024 */  lw          $t9, 0x24($s0)
/* 05C714 8005CB64 01D37821 */  addu        $t7, $t6, $s3
/* 05C718 8005CB68 0333C023 */  subu        $t8, $t9, $s3
/* 05C71C 8005CB6C AE0F0014 */  sw          $t7, 0x14($s0)
/* 05C720 8005CB70 AE180018 */  sw          $t8, 0x18($s0)
/* 05C724 8005CB74 8E0E0008 */  lw          $t6, 0x8($s0)
.L8005CB78:
/* 05C728 8005CB78 8E0F0014 */  lw          $t7, 0x14($s0)
/* 05C72C 8005CB7C 01CF8821 */  addu        $s1, $t6, $t7
/* 05C730 8005CB80 26310001 */  addiu       $s1, $s1, 0x1
/* 05C734 8005CB84 06400005 */  bltz        $s2, .L8005CB9C
/* 05C738 8005CB88 A234FFFF */   sb         $s4, -0x1($s1)
/* 05C73C 8005CB8C 2419002B */  addiu       $t9, $zero, 0x2b
/* 05C740 8005CB90 A2390000 */  sb          $t9, 0x0($s1)
/* 05C744 8005CB94 10000008 */  b           .L8005CBB8
/* 05C748 8005CB98 26310001 */   addiu      $s1, $s1, 0x1
.L8005CB9C:
/* 05C74C 8005CB9C 00129023 */  negu        $s2, $s2
/* 05C750 8005CBA0 00127400 */  sll         $t6, $s2, 16
/* 05C754 8005CBA4 2418002D */  addiu       $t8, $zero, 0x2d
/* 05C758 8005CBA8 000E7C03 */  sra         $t7, $t6, 16
/* 05C75C 8005CBAC A2380000 */  sb          $t8, 0x0($s1)
/* 05C760 8005CBB0 26310001 */  addiu       $s1, $s1, 0x1
/* 05C764 8005CBB4 01E09025 */  move        $s2, $t7
.L8005CBB8:
/* 05C768 8005CBB8 2A410064 */  slti        $at, $s2, 0x64
/* 05C76C 8005CBBC 5420002A */  bnel        $at, $zero, .L8005CC68
/* 05C770 8005CBC0 2402000A */   addiu      $v0, $zero, 0xa
/* 05C774 8005CBC4 2A4103E8 */  slti        $at, $s2, 0x3e8
/* 05C778 8005CBC8 14200013 */  bnez        $at, .L8005CC18
/* 05C77C 8005CBCC 240203E8 */   addiu      $v0, $zero, 0x3e8
/* 05C780 8005CBD0 0242001A */  div         $zero, $s2, $v0
/* 05C784 8005CBD4 14400002 */  bnez        $v0, .L8005CBE0
/* 05C788 8005CBD8 00000000 */   nop
/* 05C78C 8005CBDC 0007000D */  break       7
.L8005CBE0:
/* 05C790 8005CBE0 2401FFFF */  addiu       $at, $zero, -0x1
/* 05C794 8005CBE4 14410004 */  bne         $v0, $at, .L8005CBF8
/* 05C798 8005CBE8 3C018000 */   lui        $at, 0x8000
/* 05C79C 8005CBEC 16410002 */  bne         $s2, $at, .L8005CBF8
/* 05C7A0 8005CBF0 00000000 */   nop
/* 05C7A4 8005CBF4 0006000D */  break       6
.L8005CBF8:
/* 05C7A8 8005CBF8 00009010 */  mfhi        $s2
/* 05C7AC 8005CBFC 00127400 */  sll         $t6, $s2, 16
/* 05C7B0 8005CC00 0000C812 */  mflo        $t9
/* 05C7B4 8005CC04 27380030 */  addiu       $t8, $t9, 0x30
/* 05C7B8 8005CC08 000E7C03 */  sra         $t7, $t6, 16
/* 05C7BC 8005CC0C 01E09025 */  move        $s2, $t7
/* 05C7C0 8005CC10 A2380000 */  sb          $t8, 0x0($s1)
/* 05C7C4 8005CC14 26310001 */  addiu       $s1, $s1, 0x1
.L8005CC18:
/* 05C7C8 8005CC18 24020064 */  addiu       $v0, $zero, 0x64
/* 05C7CC 8005CC1C 0242001A */  div         $zero, $s2, $v0
/* 05C7D0 8005CC20 14400002 */  bnez        $v0, .L8005CC2C
/* 05C7D4 8005CC24 00000000 */   nop
/* 05C7D8 8005CC28 0007000D */  break       7
.L8005CC2C:
/* 05C7DC 8005CC2C 2401FFFF */  addiu       $at, $zero, -0x1
/* 05C7E0 8005CC30 14410004 */  bne         $v0, $at, .L8005CC44
/* 05C7E4 8005CC34 3C018000 */   lui        $at, 0x8000
/* 05C7E8 8005CC38 16410002 */  bne         $s2, $at, .L8005CC44
/* 05C7EC 8005CC3C 00000000 */   nop
/* 05C7F0 8005CC40 0006000D */  break       6
.L8005CC44:
/* 05C7F4 8005CC44 00009010 */  mfhi        $s2
/* 05C7F8 8005CC48 00127400 */  sll         $t6, $s2, 16
/* 05C7FC 8005CC4C 0000C812 */  mflo        $t9
/* 05C800 8005CC50 27380030 */  addiu       $t8, $t9, 0x30
/* 05C804 8005CC54 000E7C03 */  sra         $t7, $t6, 16
/* 05C808 8005CC58 01E09025 */  move        $s2, $t7
/* 05C80C 8005CC5C A2380000 */  sb          $t8, 0x0($s1)
/* 05C810 8005CC60 26310001 */  addiu       $s1, $s1, 0x1
/* 05C814 8005CC64 2402000A */  addiu       $v0, $zero, 0xa
.L8005CC68:
/* 05C818 8005CC68 0242001A */  div         $zero, $s2, $v0
/* 05C81C 8005CC6C 14400002 */  bnez        $v0, .L8005CC78
/* 05C820 8005CC70 00000000 */   nop
/* 05C824 8005CC74 0007000D */  break       7
.L8005CC78:
/* 05C828 8005CC78 2401FFFF */  addiu       $at, $zero, -0x1
/* 05C82C 8005CC7C 14410004 */  bne         $v0, $at, .L8005CC90
/* 05C830 8005CC80 3C018000 */   lui        $at, 0x8000
/* 05C834 8005CC84 16410002 */  bne         $s2, $at, .L8005CC90
/* 05C838 8005CC88 00000000 */   nop
/* 05C83C 8005CC8C 0006000D */  break       6
.L8005CC90:
/* 05C840 8005CC90 00009010 */  mfhi        $s2
/* 05C844 8005CC94 00127400 */  sll         $t6, $s2, 16
/* 05C848 8005CC98 0000C812 */  mflo        $t9
/* 05C84C 8005CC9C 27380030 */  addiu       $t8, $t9, 0x30
/* 05C850 8005CCA0 000E7C03 */  sra         $t7, $t6, 16
/* 05C854 8005CCA4 25F90030 */  addiu       $t9, $t7, 0x30
/* 05C858 8005CCA8 A2380000 */  sb          $t8, 0x0($s1)
/* 05C85C 8005CCAC A2390001 */  sb          $t9, 0x1($s1)
/* 05C860 8005CCB0 8E180008 */  lw          $t8, 0x8($s0)
/* 05C864 8005CCB4 01E09025 */  move        $s2, $t7
/* 05C868 8005CCB8 8E0F0014 */  lw          $t7, 0x14($s0)
/* 05C86C 8005CCBC 26310002 */  addiu       $s1, $s1, 0x2
/* 05C870 8005CCC0 02387023 */  subu        $t6, $s1, $t8
/* 05C874 8005CCC4 01CFC823 */  subu        $t9, $t6, $t7
/* 05C878 8005CCC8 AE19001C */  sw          $t9, 0x1c($s0)
.L8005CCCC:
/* 05C87C 8005CCCC 8E180030 */  lw          $t8, 0x30($s0)
/* 05C880 8005CCD0 24010010 */  addiu       $at, $zero, 0x10
/* 05C884 8005CCD4 330E0014 */  andi        $t6, $t8, 0x14
/* 05C888 8005CCD8 55C10010 */  bnel        $t6, $at, .L8005CD1C
/* 05C88C 8005CCDC 8FBF0014 */   lw         $ra, 0x14($sp)
/* 05C890 8005CCE0 8E0F000C */  lw          $t7, 0xc($s0)
/* 05C894 8005CCE4 8E190014 */  lw          $t9, 0x14($s0)
/* 05C898 8005CCE8 8E0E0018 */  lw          $t6, 0x18($s0)
/* 05C89C 8005CCEC 8E030028 */  lw          $v1, 0x28($s0)
/* 05C8A0 8005CCF0 01F9C021 */  addu        $t8, $t7, $t9
/* 05C8A4 8005CCF4 8E19001C */  lw          $t9, 0x1c($s0)
/* 05C8A8 8005CCF8 030E7821 */  addu        $t7, $t8, $t6
/* 05C8AC 8005CCFC 8E0E0020 */  lw          $t6, 0x20($s0)
/* 05C8B0 8005CD00 01F9C021 */  addu        $t8, $t7, $t9
/* 05C8B4 8005CD04 030E1021 */  addu        $v0, $t8, $t6
/* 05C8B8 8005CD08 0043082A */  slt         $at, $v0, $v1
/* 05C8BC 8005CD0C 10200002 */  beqz        $at, .L8005CD18
/* 05C8C0 8005CD10 00627823 */   subu       $t7, $v1, $v0
/* 05C8C4 8005CD14 AE0F0010 */  sw          $t7, 0x10($s0)
.L8005CD18:
/* 05C8C8 8005CD18 8FBF0014 */  lw          $ra, 0x14($sp)
.L8005CD1C:
/* 05C8CC 8005CD1C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 05C8D0 8005CD20 03E00008 */  jr          $ra
/* 05C8D4 8005CD24 00000000 */   nop

glabel func_8005CD28 # 1
/* 05C8D8 8005CD28 03E00008 */  jr          $ra
/* 05C8DC 8005CD2C 00000000 */   nop

glabel func_8005CD30 # 2
/* 05C8E0 8005CD30 27BDFF30 */  addiu       $sp, $sp, -0xd0
/* 05C8E4 8005CD34 AFBF003C */  sw          $ra, 0x3c($sp)
/* 05C8E8 8005CD38 AFB50038 */  sw          $s5, 0x38($sp)
/* 05C8EC 8005CD3C AFB40034 */  sw          $s4, 0x34($sp)
/* 05C8F0 8005CD40 AFB30030 */  sw          $s3, 0x30($sp)
/* 05C8F4 8005CD44 AFB2002C */  sw          $s2, 0x2c($sp)
/* 05C8F8 8005CD48 AFB10028 */  sw          $s1, 0x28($sp)
/* 05C8FC 8005CD4C AFB00024 */  sw          $s0, 0x24($sp)
/* 05C900 8005CD50 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 05C904 8005CD54 AFA400D0 */  sw          $a0, 0xd0($sp)
/* 05C908 8005CD58 AFA500D4 */  sw          $a1, 0xd4($sp)
/* 05C90C 8005CD5C 8C820024 */  lw          $v0, 0x24($a0)
/* 05C910 8005CD60 27B500B0 */  addiu       $s5, $sp, 0xb0
/* 05C914 8005CD64 D4940000 */  ldc1        $f20, 0x0($a0)
/* 05C918 8005CD68 04410003 */  bgez        $v0, .L8005CD78
/* 05C91C 8005CD6C 240F0006 */   addiu      $t7, $zero, 0x6
/* 05C920 8005CD70 1000000C */  b           .L8005CDA4
/* 05C924 8005CD74 AC8F0024 */   sw         $t7, 0x24($a0)
.L8005CD78:
/* 05C928 8005CD78 1440000A */  bnez        $v0, .L8005CDA4
/* 05C92C 8005CD7C 93B800D7 */   lbu        $t8, 0xd7($sp)
/* 05C930 8005CD80 24010067 */  addiu       $at, $zero, 0x67
/* 05C934 8005CD84 13010004 */  beq         $t8, $at, .L8005CD98
/* 05C938 8005CD88 AFB80048 */   sw         $t8, 0x48($sp)
/* 05C93C 8005CD8C 24010047 */  addiu       $at, $zero, 0x47
/* 05C940 8005CD90 57010005 */  bnel        $t8, $at, .L8005CDA8
/* 05C944 8005CD94 8FAE00D0 */   lw         $t6, 0xd0($sp)
.L8005CD98:
/* 05C948 8005CD98 8FAF00D0 */  lw          $t7, 0xd0($sp)
/* 05C94C 8005CD9C 24190001 */  addiu       $t9, $zero, 0x1
/* 05C950 8005CDA0 ADF90024 */  sw          $t9, 0x24($t7)
.L8005CDA4:
/* 05C954 8005CDA4 8FAE00D0 */  lw          $t6, 0xd0($sp)
.L8005CDA8:
/* 05C958 8005CDA8 240107FF */  addiu       $at, $zero, 0x7ff
/* 05C95C 8005CDAC 95C40000 */  lhu         $a0, 0x0($t6)
/* 05C960 8005CDB0 30837FF0 */  andi        $v1, $a0, 0x7ff0
/* 05C964 8005CDB4 0003C103 */  sra         $t8, $v1, 4
/* 05C968 8005CDB8 0018CC00 */  sll         $t9, $t8, 16
/* 05C96C 8005CDBC 00191C03 */  sra         $v1, $t9, 16
/* 05C970 8005CDC0 14610018 */  bne         $v1, $at, .L8005CE24
/* 05C974 8005CDC4 00000000 */   nop
/* 05C978 8005CDC8 A7A0009A */  sh          $zero, 0x9a($sp)
/* 05C97C 8005CDCC 95D80000 */  lhu         $t8, 0x0($t6)
/* 05C980 8005CDD0 24030002 */  addiu       $v1, $zero, 0x2
/* 05C984 8005CDD4 00031400 */  sll         $v0, $v1, 16
/* 05C988 8005CDD8 3319000F */  andi        $t9, $t8, 0xf
/* 05C98C 8005CDDC 5720000A */  bnel        $t9, $zero, .L8005CE08
/* 05C990 8005CDE0 00027C03 */   sra        $t7, $v0, 16
/* 05C994 8005CDE4 95CF0002 */  lhu         $t7, 0x2($t6)
/* 05C998 8005CDE8 55E00007 */  bnel        $t7, $zero, .L8005CE08
/* 05C99C 8005CDEC 00027C03 */   sra        $t7, $v0, 16
/* 05C9A0 8005CDF0 95D80004 */  lhu         $t8, 0x4($t6)
/* 05C9A4 8005CDF4 57000004 */  bnel        $t8, $zero, .L8005CE08
/* 05C9A8 8005CDF8 00027C03 */   sra        $t7, $v0, 16
/* 05C9AC 8005CDFC 95D90006 */  lhu         $t9, 0x6($t6)
/* 05C9B0 8005CE00 13200003 */  beqz        $t9, .L8005CE10
/* 05C9B4 8005CE04 00027C03 */   sra        $t7, $v0, 16
.L8005CE08:
/* 05C9B8 8005CE08 10000014 */  b           .L8005CE5C
/* 05C9BC 8005CE0C 01E01025 */   move       $v0, $t7
.L8005CE10:
/* 05C9C0 8005CE10 24030001 */  addiu       $v1, $zero, 0x1
/* 05C9C4 8005CE14 00031400 */  sll         $v0, $v1, 16
/* 05C9C8 8005CE18 00027C03 */  sra         $t7, $v0, 16
/* 05C9CC 8005CE1C 1000000F */  b           .L8005CE5C
/* 05C9D0 8005CE20 01E01025 */   move       $v0, $t7
.L8005CE24:
/* 05C9D4 8005CE24 18600008 */  blez        $v1, .L8005CE48
/* 05C9D8 8005CE28 3098800F */   andi       $t8, $a0, 0x800f
/* 05C9DC 8005CE2C 8FB900D0 */  lw          $t9, 0xd0($sp)
/* 05C9E0 8005CE30 370E3FF0 */  ori         $t6, $t8, 0x3ff0
/* 05C9E4 8005CE34 246FFC02 */  addiu       $t7, $v1, -0x3fe
/* 05C9E8 8005CE38 A72E0000 */  sh          $t6, 0x0($t9)
/* 05C9EC 8005CE3C A7AF009A */  sh          $t7, 0x9a($sp)
/* 05C9F0 8005CE40 10000006 */  b           .L8005CE5C
/* 05C9F4 8005CE44 2402FFFF */   addiu      $v0, $zero, -0x1
.L8005CE48:
/* 05C9F8 8005CE48 04610003 */  bgez        $v1, .L8005CE58
/* 05C9FC 8005CE4C 00001025 */   move       $v0, $zero
/* 05CA00 8005CE50 10000002 */  b           .L8005CE5C
/* 05CA04 8005CE54 24020002 */   addiu      $v0, $zero, 0x2
.L8005CE58:
/* 05CA08 8005CE58 A7A0009A */  sh          $zero, 0x9a($sp)
.L8005CE5C:
/* 05CA0C 8005CE5C 18400012 */  blez        $v0, .L8005CEA8
/* 05CA10 8005CE60 0002C400 */   sll        $t8, $v0, 16
/* 05CA14 8005CE64 0002C400 */  sll         $t8, $v0, 16
/* 05CA18 8005CE68 00187403 */  sra         $t6, $t8, 16
/* 05CA1C 8005CE6C 24010002 */  addiu       $at, $zero, 0x2
/* 05CA20 8005CE70 15C10004 */  bne         $t6, $at, .L8005CE84
/* 05CA24 8005CE74 8FB900D0 */   lw         $t9, 0xd0($sp)
/* 05CA28 8005CE78 3C05800B */  lui         $a1, %hi(D_800ACD58)
/* 05CA2C 8005CE7C 10000003 */  b           .L8005CE8C
/* 05CA30 8005CE80 24A5CD58 */   addiu      $a1, $a1, %lo(D_800ACD58)
.L8005CE84:
/* 05CA34 8005CE84 3C05800B */  lui         $a1, %hi(D_800ACD5C)
/* 05CA38 8005CE88 24A5CD5C */  addiu       $a1, $a1, %lo(D_800ACD5C)
.L8005CE8C:
/* 05CA3C 8005CE8C 240F0003 */  addiu       $t7, $zero, 0x3
/* 05CA40 8005CE90 AF2F0014 */  sw          $t7, 0x14($t9)
/* 05CA44 8005CE94 8F240008 */  lw          $a0, 0x8($t9)
/* 05CA48 8005CE98 0C0118DC */  jal         memcpy
/* 05CA4C 8005CE9C 24060003 */   addiu      $a2, $zero, 0x3
/* 05CA50 8005CEA0 100000ED */  b           .L8005D258
/* 05CA54 8005CEA4 8FBF003C */   lw         $ra, 0x3c($sp)
.L8005CEA8:
/* 05CA58 8005CEA8 00187403 */  sra         $t6, $t8, 16
/* 05CA5C 8005CEAC 15C00003 */  bnez        $t6, .L8005CEBC
/* 05CA60 8005CEB0 00009825 */   move       $s3, $zero
/* 05CA64 8005CEB4 100000E2 */  b           .L8005D240
/* 05CA68 8005CEB8 A7A0009A */   sh         $zero, 0x9a($sp)
.L8005CEBC:
/* 05CA6C 8005CEBC 44801800 */  mtc1        $zero, $f3
/* 05CA70 8005CEC0 44801000 */  mtc1        $zero, $f2
/* 05CA74 8005CEC4 93AF00D7 */  lbu         $t7, 0xd7($sp)
/* 05CA78 8005CEC8 87B9009A */  lh          $t9, 0x9a($sp)
/* 05CA7C 8005CECC 4622A03C */  c.lt.d      $f20, $f2
/* 05CA80 8005CED0 24017597 */  addiu       $at, $zero, 0x7597
/* 05CA84 8005CED4 00001825 */  move        $v1, $zero
/* 05CA88 8005CED8 27B500B1 */  addiu       $s5, $sp, 0xb1
/* 05CA8C 8005CEDC 45000002 */  bc1f        .L8005CEE8
/* 05CA90 8005CEE0 AFAF0048 */   sw         $t7, 0x48($sp)
/* 05CA94 8005CEE4 4620A507 */  neg.d       $f20, $f20
.L8005CEE8:
/* 05CA98 8005CEE8 03210019 */  multu       $t9, $at
/* 05CA9C 8005CEEC 3C010001 */  lui         $at, 0x1
/* 05CAA0 8005CEF0 342186A0 */  ori         $at, $at, 0x86a0
/* 05CAA4 8005CEF4 24050006 */  addiu       $a1, $zero, 0x6
/* 05CAA8 8005CEF8 0000C012 */  mflo        $t8
/* 05CAAC 8005CEFC 00000000 */  nop
/* 05CAB0 8005CF00 00000000 */  nop
/* 05CAB4 8005CF04 0301001A */  div         $zero, $t8, $at
/* 05CAB8 8005CF08 00007012 */  mflo        $t6
/* 05CABC 8005CF0C 25CFFFFC */  addiu       $t7, $t6, -0x4
/* 05CAC0 8005CF10 000FCC00 */  sll         $t9, $t7, 16
/* 05CAC4 8005CF14 0019C403 */  sra         $t8, $t9, 16
/* 05CAC8 8005CF18 07010019 */  bgez        $t8, .L8005CF80
/* 05CACC 8005CF1C A7AF009A */   sh         $t7, 0x9a($sp)
/* 05CAD0 8005CF20 000FCC00 */  sll         $t9, $t7, 16
/* 05CAD4 8005CF24 0019C403 */  sra         $t8, $t9, 16
/* 05CAD8 8005CF28 240E0003 */  addiu       $t6, $zero, 0x3
/* 05CADC 8005CF2C 01D82023 */  subu        $a0, $t6, $t8
/* 05CAE0 8005CF30 2401FFFC */  addiu       $at, $zero, -0x4
/* 05CAE4 8005CF34 00811024 */  and         $v0, $a0, $at
/* 05CAE8 8005CF38 0002C823 */  negu        $t9, $v0
/* 05CAEC 8005CF3C 1840002C */  blez        $v0, .L8005CFF0
/* 05CAF0 8005CF40 A7B9009A */   sh         $t9, 0x9a($sp)
/* 05CAF4 8005CF44 3C04800B */  lui         $a0, %hi(D_800ACD10)
/* 05CAF8 8005CF48 2484CD10 */  addiu       $a0, $a0, %lo(D_800ACD10)
.L8005CF4C:
/* 05CAFC 8005CF4C 304E0001 */  andi        $t6, $v0, 0x1
/* 05CB00 8005CF50 11C00006 */  beqz        $t6, .L8005CF6C
/* 05CB04 8005CF54 0002C843 */   sra        $t9, $v0, 1
/* 05CB08 8005CF58 0003C0C0 */  sll         $t8, $v1, 3
/* 05CB0C 8005CF5C 00987821 */  addu        $t7, $a0, $t8
/* 05CB10 8005CF60 D5E40000 */  ldc1        $f4, 0x0($t7)
/* 05CB14 8005CF64 4624A502 */  mul.d       $f20, $f20, $f4
/* 05CB18 8005CF68 00000000 */  nop
.L8005CF6C:
/* 05CB1C 8005CF6C 03201025 */  move        $v0, $t9
/* 05CB20 8005CF70 1F20FFF6 */  bgtz        $t9, .L8005CF4C
/* 05CB24 8005CF74 24630001 */   addiu      $v1, $v1, 0x1
/* 05CB28 8005CF78 1000001E */  b           .L8005CFF4
/* 05CB2C 8005CF7C 8FAF0048 */   lw         $t7, 0x48($sp)
.L8005CF80:
/* 05CB30 8005CF80 87AE009A */  lh          $t6, 0x9a($sp)
/* 05CB34 8005CF84 3C013FF0 */  lui         $at, 0x3ff0
/* 05CB38 8005CF88 00001825 */  move        $v1, $zero
/* 05CB3C 8005CF8C 19C00018 */  blez        $t6, .L8005CFF0
/* 05CB40 8005CF90 31D8FFFC */   andi       $t8, $t6, 0xfffc
/* 05CB44 8005CF94 00181400 */  sll         $v0, $t8, 16
/* 05CB48 8005CF98 0018CC00 */  sll         $t9, $t8, 16
/* 05CB4C 8005CF9C 44810800 */  mtc1        $at, $f1
/* 05CB50 8005CFA0 44800000 */  mtc1        $zero, $f0
/* 05CB54 8005CFA4 00197403 */  sra         $t6, $t9, 16
/* 05CB58 8005CFA8 00027C03 */  sra         $t7, $v0, 16
/* 05CB5C 8005CFAC A7B8009A */  sh          $t8, 0x9a($sp)
/* 05CB60 8005CFB0 19C0000E */  blez        $t6, .L8005CFEC
/* 05CB64 8005CFB4 01E01025 */   move       $v0, $t7
/* 05CB68 8005CFB8 3C04800B */  lui         $a0, %hi(D_800ACD10)
/* 05CB6C 8005CFBC 2484CD10 */  addiu       $a0, $a0, %lo(D_800ACD10)
.L8005CFC0:
/* 05CB70 8005CFC0 304F0001 */  andi        $t7, $v0, 0x1
/* 05CB74 8005CFC4 11E00006 */  beqz        $t7, .L8005CFE0
/* 05CB78 8005CFC8 00027043 */   sra        $t6, $v0, 1
/* 05CB7C 8005CFCC 0003C0C0 */  sll         $t8, $v1, 3
/* 05CB80 8005CFD0 0098C821 */  addu        $t9, $a0, $t8
/* 05CB84 8005CFD4 D7260000 */  ldc1        $f6, 0x0($t9)
/* 05CB88 8005CFD8 46260002 */  mul.d       $f0, $f0, $f6
/* 05CB8C 8005CFDC 00000000 */  nop
.L8005CFE0:
/* 05CB90 8005CFE0 01C01025 */  move        $v0, $t6
/* 05CB94 8005CFE4 1DC0FFF6 */  bgtz        $t6, .L8005CFC0
/* 05CB98 8005CFE8 24630001 */   addiu      $v1, $v1, 0x1
.L8005CFEC:
/* 05CB9C 8005CFEC 4620A503 */  div.d       $f20, $f20, $f0
.L8005CFF0:
/* 05CBA0 8005CFF0 8FAF0048 */  lw          $t7, 0x48($sp)
.L8005CFF4:
/* 05CBA4 8005CFF4 24010066 */  addiu       $at, $zero, 0x66
/* 05CBA8 8005CFF8 8FB800D0 */  lw          $t8, 0xd0($sp)
/* 05CBAC 8005CFFC 15E10004 */  bne         $t7, $at, .L8005D010
/* 05CBB0 8005D000 240E0030 */   addiu      $t6, $zero, 0x30
/* 05CBB4 8005D004 87A5009A */  lh          $a1, 0x9a($sp)
/* 05CBB8 8005D008 10000001 */  b           .L8005D010
/* 05CBBC 8005D00C 24A5000A */   addiu      $a1, $a1, 0xa
.L8005D010:
/* 05CBC0 8005D010 8F190024 */  lw          $t9, 0x24($t8)
/* 05CBC4 8005D014 00B9A021 */  addu        $s4, $a1, $t9
/* 05CBC8 8005D018 2A810014 */  slti        $at, $s4, 0x14
/* 05CBCC 8005D01C 14200002 */  bnez        $at, .L8005D028
/* 05CBD0 8005D020 00000000 */   nop
/* 05CBD4 8005D024 24140013 */  addiu       $s4, $zero, 0x13
.L8005D028:
/* 05CBD8 8005D028 1A800033 */  blez        $s4, .L8005D0F8
/* 05CBDC 8005D02C A3AE00B0 */   sb         $t6, 0xb0($sp)
/* 05CBE0 8005D030 4634103C */  c.lt.d      $f2, $f20
/* 05CBE4 8005D034 24130030 */  addiu       $s3, $zero, 0x30
/* 05CBE8 8005D038 27B20074 */  addiu       $s2, $sp, 0x74
/* 05CBEC 8005D03C 4502002F */  bc1fl       .L8005D0FC
/* 05CBF0 8005D040 87B8009A */   lh         $t8, 0x9a($sp)
/* 05CBF4 8005D044 4620A20D */  trunc.w.d   $f8, $f20
.L8005D048:
/* 05CBF8 8005D048 2694FFF8 */  addiu       $s4, $s4, -0x8
/* 05CBFC 8005D04C 26B50008 */  addiu       $s5, $s5, 0x8
/* 05CC00 8005D050 44114000 */  mfc1        $s1, $f8
/* 05CC04 8005D054 1A800008 */  blez        $s4, .L8005D078
/* 05CC08 8005D058 00000000 */   nop
/* 05CC0C 8005D05C 44915000 */  mtc1        $s1, $f10
/* 05CC10 8005D060 3C01800B */  lui         $at, %hi(D_800ACD68)
/* 05CC14 8005D064 D428CD68 */  ldc1        $f8, %lo(D_800ACD68)($at)
/* 05CC18 8005D068 46805121 */  cvt.d.w     $f4, $f10
/* 05CC1C 8005D06C 4624A181 */  sub.d       $f6, $f20, $f4
/* 05CC20 8005D070 46283502 */  mul.d       $f20, $f6, $f8
/* 05CC24 8005D074 00000000 */  nop
.L8005D078:
/* 05CC28 8005D078 1A200011 */  blez        $s1, .L8005D0C0
/* 05CC2C 8005D07C 24100008 */   addiu      $s0, $zero, 0x8
/* 05CC30 8005D080 24100007 */  addiu       $s0, $zero, 0x7
/* 05CC34 8005D084 0600000E */  bltz        $s0, .L8005D0C0
/* 05CC38 8005D088 02402025 */   move       $a0, $s2
.L8005D08C:
/* 05CC3C 8005D08C 02202825 */  move        $a1, $s1
/* 05CC40 8005D090 0C017628 */  jal         func_8005D8A0
/* 05CC44 8005D094 2406000A */   addiu      $a2, $zero, 0xa
/* 05CC48 8005D098 8FB80078 */  lw          $t8, 0x78($sp)
/* 05CC4C 8005D09C 26B5FFFF */  addiu       $s5, $s5, -0x1
/* 05CC50 8005D0A0 27190030 */  addiu       $t9, $t8, 0x30
/* 05CC54 8005D0A4 A2B90000 */  sb          $t9, 0x0($s5)
/* 05CC58 8005D0A8 8FB10074 */  lw          $s1, 0x74($sp)
/* 05CC5C 8005D0AC 5A200005 */  blezl       $s1, .L8005D0C4
/* 05CC60 8005D0B0 44801800 */   mtc1       $zero, $f3
/* 05CC64 8005D0B4 2610FFFF */  addiu       $s0, $s0, -0x1
/* 05CC68 8005D0B8 0603FFF4 */  bgezl       $s0, .L8005D08C
/* 05CC6C 8005D0BC 02402025 */   move       $a0, $s2
.L8005D0C0:
/* 05CC70 8005D0C0 44801800 */  mtc1        $zero, $f3
.L8005D0C4:
/* 05CC74 8005D0C4 44801000 */  mtc1        $zero, $f2
/* 05CC78 8005D0C8 2610FFFF */  addiu       $s0, $s0, -0x1
/* 05CC7C 8005D0CC 06000004 */  bltz        $s0, .L8005D0E0
.L8005D0D0:
/* 05CC80 8005D0D0 2610FFFF */   addiu      $s0, $s0, -0x1
/* 05CC84 8005D0D4 26B5FFFF */  addiu       $s5, $s5, -0x1
/* 05CC88 8005D0D8 0601FFFD */  bgez        $s0, .L8005D0D0
/* 05CC8C 8005D0DC A2B30000 */   sb         $s3, 0x0($s5)
.L8005D0E0:
/* 05CC90 8005D0E0 1A800005 */  blez        $s4, .L8005D0F8
/* 05CC94 8005D0E4 26B50008 */   addiu      $s5, $s5, 0x8
/* 05CC98 8005D0E8 4634103C */  c.lt.d      $f2, $f20
/* 05CC9C 8005D0EC 00000000 */  nop
/* 05CCA0 8005D0F0 4503FFD5 */  bc1tl       .L8005D048
/* 05CCA4 8005D0F4 4620A20D */   trunc.w.d  $f8, $f20
.L8005D0F8:
/* 05CCA8 8005D0F8 87B8009A */  lh          $t8, 0x9a($sp)
.L8005D0FC:
/* 05CCAC 8005D0FC 93AE00B1 */  lbu         $t6, 0xb1($sp)
/* 05CCB0 8005D100 27AF00B0 */  addiu       $t7, $sp, 0xb0
/* 05CCB4 8005D104 24020030 */  addiu       $v0, $zero, 0x30
/* 05CCB8 8005D108 02AFA023 */  subu        $s4, $s5, $t7
/* 05CCBC 8005D10C 27190007 */  addiu       $t9, $t8, 0x7
/* 05CCC0 8005D110 2694FFFF */  addiu       $s4, $s4, -0x1
/* 05CCC4 8005D114 A7B9009A */  sh          $t9, 0x9a($sp)
/* 05CCC8 8005D118 144E0009 */  bne         $v0, $t6, .L8005D140
/* 05CCCC 8005D11C 27B500B1 */   addiu      $s5, $sp, 0xb1
/* 05CCD0 8005D120 87AF009A */  lh          $t7, 0x9a($sp)
.L8005D124:
/* 05CCD4 8005D124 26B50001 */  addiu       $s5, $s5, 0x1
/* 05CCD8 8005D128 2694FFFF */  addiu       $s4, $s4, -0x1
/* 05CCDC 8005D12C 25F8FFFF */  addiu       $t8, $t7, -0x1
/* 05CCE0 8005D130 A7B8009A */  sh          $t8, 0x9a($sp)
/* 05CCE4 8005D134 92B90000 */  lbu         $t9, 0x0($s5)
/* 05CCE8 8005D138 5059FFFA */  beql        $v0, $t9, .L8005D124
/* 05CCEC 8005D13C 87AF009A */   lh         $t7, 0x9a($sp)
.L8005D140:
/* 05CCF0 8005D140 8FAE0048 */  lw          $t6, 0x48($sp)
/* 05CCF4 8005D144 24010066 */  addiu       $at, $zero, 0x66
/* 05CCF8 8005D148 8FB800D0 */  lw          $t8, 0xd0($sp)
/* 05CCFC 8005D14C 15C10004 */  bne         $t6, $at, .L8005D160
/* 05CD00 8005D150 8FAF0048 */   lw         $t7, 0x48($sp)
/* 05CD04 8005D154 87A5009A */  lh          $a1, 0x9a($sp)
/* 05CD08 8005D158 10000009 */  b           .L8005D180
/* 05CD0C 8005D15C 24A50001 */   addiu      $a1, $a1, 0x1
.L8005D160:
/* 05CD10 8005D160 24010065 */  addiu       $at, $zero, 0x65
/* 05CD14 8005D164 11E10003 */  beq         $t7, $at, .L8005D174
/* 05CD18 8005D168 24010045 */   addiu      $at, $zero, 0x45
/* 05CD1C 8005D16C 15E10003 */  bne         $t7, $at, .L8005D17C
/* 05CD20 8005D170 00001025 */   move       $v0, $zero
.L8005D174:
/* 05CD24 8005D174 10000001 */  b           .L8005D17C
/* 05CD28 8005D178 24020001 */   addiu      $v0, $zero, 0x1
.L8005D17C:
/* 05CD2C 8005D17C 00402825 */  move        $a1, $v0
.L8005D180:
/* 05CD30 8005D180 8F190024 */  lw          $t9, 0x24($t8)
/* 05CD34 8005D184 00B99821 */  addu        $s3, $a1, $t9
/* 05CD38 8005D188 00137400 */  sll         $t6, $s3, 16
/* 05CD3C 8005D18C 000E9C03 */  sra         $s3, $t6, 16
/* 05CD40 8005D190 0293082A */  slt         $at, $s4, $s3
/* 05CD44 8005D194 10200004 */  beqz        $at, .L8005D1A8
/* 05CD48 8005D198 00000000 */   nop
/* 05CD4C 8005D19C 00149C00 */  sll         $s3, $s4, 16
/* 05CD50 8005D1A0 0013C403 */  sra         $t8, $s3, 16
/* 05CD54 8005D1A4 03009825 */  move        $s3, $t8
.L8005D1A8:
/* 05CD58 8005D1A8 1A600025 */  blez        $s3, .L8005D240
/* 05CD5C 8005D1AC 0274082A */   slt        $at, $s3, $s4
/* 05CD60 8005D1B0 10200007 */  beqz        $at, .L8005D1D0
/* 05CD64 8005D1B4 02751021 */   addu       $v0, $s3, $s5
/* 05CD68 8005D1B8 90590000 */  lbu         $t9, 0x0($v0)
/* 05CD6C 8005D1BC 2B210035 */  slti        $at, $t9, 0x35
/* 05CD70 8005D1C0 54200004 */  bnel        $at, $zero, .L8005D1D4
/* 05CD74 8005D1C4 24050030 */   addiu      $a1, $zero, 0x30
/* 05CD78 8005D1C8 10000003 */  b           .L8005D1D8
/* 05CD7C 8005D1CC 24050039 */   addiu      $a1, $zero, 0x39
.L8005D1D0:
/* 05CD80 8005D1D0 24050030 */  addiu       $a1, $zero, 0x30
.L8005D1D4:
/* 05CD84 8005D1D4 02751021 */  addu        $v0, $s3, $s5
.L8005D1D8:
/* 05CD88 8005D1D8 904EFFFF */  lbu         $t6, -0x1($v0)
/* 05CD8C 8005D1DC 2663FFFF */  addiu       $v1, $s3, -0x1
/* 05CD90 8005D1E0 00A02025 */  move        $a0, $a1
/* 05CD94 8005D1E4 14AE0009 */  bne         $a1, $t6, .L8005D20C
/* 05CD98 8005D1E8 24010039 */   addiu      $at, $zero, 0x39
/* 05CD9C 8005D1EC 00751021 */  addu        $v0, $v1, $s5
.L8005D1F0:
/* 05CDA0 8005D1F0 9059FFFF */  lbu         $t9, -0x1($v0)
/* 05CDA4 8005D1F4 2673FFFF */  addiu       $s3, $s3, -0x1
/* 05CDA8 8005D1F8 00137C00 */  sll         $t7, $s3, 16
/* 05CDAC 8005D1FC 2463FFFF */  addiu       $v1, $v1, -0x1
/* 05CDB0 8005D200 2442FFFF */  addiu       $v0, $v0, -0x1
/* 05CDB4 8005D204 1099FFFA */  beq         $a0, $t9, .L8005D1F0
/* 05CDB8 8005D208 000F9C03 */   sra        $s3, $t7, 16
.L8005D20C:
/* 05CDBC 8005D20C 14810004 */  bne         $a0, $at, .L8005D220
/* 05CDC0 8005D210 02A31021 */   addu       $v0, $s5, $v1
/* 05CDC4 8005D214 904E0000 */  lbu         $t6, 0x0($v0)
/* 05CDC8 8005D218 25CF0001 */  addiu       $t7, $t6, 0x1
/* 05CDCC 8005D21C A04F0000 */  sb          $t7, 0x0($v0)
.L8005D220:
/* 05CDD0 8005D220 04610007 */  bgez        $v1, .L8005D240
/* 05CDD4 8005D224 87AE009A */   lh         $t6, 0x9a($sp)
/* 05CDD8 8005D228 26730001 */  addiu       $s3, $s3, 0x1
/* 05CDDC 8005D22C 0013C400 */  sll         $t8, $s3, 16
/* 05CDE0 8005D230 25CF0001 */  addiu       $t7, $t6, 0x1
/* 05CDE4 8005D234 A7AF009A */  sh          $t7, 0x9a($sp)
/* 05CDE8 8005D238 00189C03 */  sra         $s3, $t8, 16
/* 05CDEC 8005D23C 26B5FFFF */  addiu       $s5, $s5, -0x1
.L8005D240:
/* 05CDF0 8005D240 8FB000D0 */  lw          $s0, 0xd0($sp)
/* 05CDF4 8005D244 93B400D7 */  lbu         $s4, 0xd7($sp)
/* 05CDF8 8005D248 02A08825 */  move        $s1, $s5
/* 05CDFC 8005D24C 0C0171F0 */  jal         func_8005C7C0
/* 05CE00 8005D250 87B2009A */   lh         $s2, 0x9a($sp)
/* 05CE04 8005D254 8FBF003C */  lw          $ra, 0x3c($sp)
.L8005D258:
/* 05CE08 8005D258 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 05CE0C 8005D25C 8FB00024 */  lw          $s0, 0x24($sp)
/* 05CE10 8005D260 8FB10028 */  lw          $s1, 0x28($sp)
/* 05CE14 8005D264 8FB2002C */  lw          $s2, 0x2c($sp)
/* 05CE18 8005D268 8FB30030 */  lw          $s3, 0x30($sp)
/* 05CE1C 8005D26C 8FB40034 */  lw          $s4, 0x34($sp)
/* 05CE20 8005D270 8FB50038 */  lw          $s5, 0x38($sp)
/* 05CE24 8005D274 03E00008 */  jr          $ra
/* 05CE28 8005D278 27BD00D0 */   addiu      $sp, $sp, 0xd0
/* 05CE2C 8005D27C 00000000 */  nop
