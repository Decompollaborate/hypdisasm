.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800537E0 # 0
/* 000000 800537E0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000004 800537E4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000008 800537E8 0C0164A8 */  jal         func_800592A0
/* 00000C 800537EC 00002025 */   move       $a0, $zero
/* 000010 800537F0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000014 800537F4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000018 800537F8 03E00008 */  jr          $ra
/* 00001C 800537FC 00000000 */   nop

glabel func_80053800 # 1
/* 000020 80053800 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000024 80053804 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000028 80053808 0C015FFC */  jal         func_80057FF0
/* 00002C 8005380C AFA40018 */   sw         $a0, 0x18($sp)
/* 000030 80053810 3C05800A */  lui         $a1, %hi(D_8009F954)
/* 000034 80053814 24A5F954 */  addiu       $a1, $a1, %lo(D_8009F954)
/* 000038 80053818 8CAF0000 */  lw          $t7, 0x0($a1)
/* 00003C 8005381C 8FAE0018 */  lw          $t6, 0x18($sp)
/* 000040 80053820 00402025 */  move        $a0, $v0
/* 000044 80053824 ADEE0004 */  sw          $t6, 0x4($t7)
/* 000048 80053828 8CA30000 */  lw          $v1, 0x0($a1)
/* 00004C 8005382C 94780000 */  lhu         $t8, 0x0($v1)
/* 000050 80053830 37190010 */  ori         $t9, $t8, 0x10
/* 000054 80053834 0C016018 */  jal         func_80058060
/* 000058 80053838 A4790000 */   sh         $t9, 0x0($v1)
/* 00005C 8005383C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000060 80053840 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000064 80053844 03E00008 */  jr          $ra
/* 000068 80053848 00000000 */   nop
/* 00006C 8005384C 00000000 */  nop
