.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osVoiceContDataCrc # 0
/* 000000 8005B030 00803025 */  move        $a2, $a0
/* 000004 8005B034 00001825 */  move        $v1, $zero
/* 000008 8005B038 10A00018 */  beq         $a1, $zero, .L8005B09C
/* 00000C 8005B03C 00A01025 */   move       $v0, $a1
.L8005B040:
/* 000010 8005B040 24040080 */  addiu       $a0, $zero, 0x80
/* 000014 8005B044 90C50000 */  lbu         $a1, 0x0($a2)
.L8005B048:
/* 000018 8005B048 00037040 */  sll         $t6, $v1, 1
/* 00001C 8005B04C 00A47824 */  and         $t7, $a1, $a0
/* 000020 8005B050 11E00008 */  beq         $t7, $zero, .L8005B074
/* 000024 8005B054 01C01825 */   move       $v1, $t6
/* 000028 8005B058 31D80100 */  andi        $t8, $t6, 0x100
/* 00002C 8005B05C 13000003 */  beq         $t8, $zero, .L8005B06C
/* 000030 8005B060 00000000 */   nop
/* 000034 8005B064 10000007 */  b           .L8005B084
/* 000038 8005B068 39C30084 */   xori       $v1, $t6, 0x84
.L8005B06C:
/* 00003C 8005B06C 10000005 */  b           .L8005B084
/* 000040 8005B070 24630001 */   addiu      $v1, $v1, 0x1
.L8005B074:
/* 000044 8005B074 30680100 */  andi        $t0, $v1, 0x100
/* 000048 8005B078 11000002 */  beq         $t0, $zero, .L8005B084
/* 00004C 8005B07C 38690085 */   xori       $t1, $v1, 0x85
/* 000050 8005B080 01201825 */  move        $v1, $t1
.L8005B084:
/* 000054 8005B084 00045042 */  srl         $t2, $a0, 1
/* 000058 8005B088 1540FFEF */  bne         $t2, $zero, .L8005B048
/* 00005C 8005B08C 01402025 */   move       $a0, $t2
/* 000060 8005B090 2442FFFF */  addiu       $v0, $v0, -0x1
/* 000064 8005B094 1440FFEA */  bne         $v0, $zero, .L8005B040
/* 000068 8005B098 24C60001 */   addiu      $a2, $a2, 0x1
.L8005B09C:
/* 00006C 8005B09C 00035840 */  sll         $t3, $v1, 1
.L8005B0A0:
/* 000070 8005B0A0 316C0100 */  andi        $t4, $t3, 0x100
/* 000074 8005B0A4 11800002 */  beq         $t4, $zero, .L8005B0B0
/* 000078 8005B0A8 01601825 */   move       $v1, $t3
/* 00007C 8005B0AC 39630085 */  xori        $v1, $t3, 0x85
.L8005B0B0:
/* 000080 8005B0B0 24420001 */  addiu       $v0, $v0, 0x1
/* 000084 8005B0B4 2C410008 */  sltiu       $at, $v0, 0x8
/* 000088 8005B0B8 5420FFF9 */  bnel        $at, $zero, .L8005B0A0
/* 00008C 8005B0BC 00035840 */   sll        $t3, $v1, 1
/* 000090 8005B0C0 03E00008 */  jr          $ra
/* 000094 8005B0C4 306200FF */   andi       $v0, $v1, 0xff
/* 000098 8005B0C8 00000000 */  nop
/* 00009C 8005B0CC 00000000 */  nop
