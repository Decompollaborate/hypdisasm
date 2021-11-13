.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80053790 # 0
/* 000000 80053790 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000004 80053794 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000008 80053798 0C015FFC */  jal         func_80057FF0
/* 00000C 8005379C E7AC0018 */   swc1       $f12, 0x18($sp)
/* 000010 800537A0 3C05800A */  lui         $a1, %hi(D_8009F954)
/* 000014 800537A4 24A5F954 */  addiu       $a1, $a1, %lo(D_8009F954)
/* 000018 800537A8 8CAE0000 */  lw          $t6, 0x0($a1)
/* 00001C 800537AC C7A40018 */  lwc1        $f4, 0x18($sp)
/* 000020 800537B0 00402025 */  move        $a0, $v0
/* 000024 800537B4 E5C40024 */  swc1        $f4, 0x24($t6)
/* 000028 800537B8 8CA30000 */  lw          $v1, 0x0($a1)
/* 00002C 800537BC 946F0000 */  lhu         $t7, 0x0($v1)
/* 000030 800537C0 35F80004 */  ori         $t8, $t7, 0x4
/* 000034 800537C4 0C016018 */  jal         func_80058060
/* 000038 800537C8 A4780000 */   sh         $t8, 0x0($v1)
/* 00003C 800537CC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000040 800537D0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000044 800537D4 03E00008 */  jr          $ra
/* 000048 800537D8 00000000 */   nop
/* 00004C 800537DC 00000000 */  nop
