.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800537E0 # 0
/* 053390 800537E0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 053394 800537E4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 053398 800537E8 0C0164A8 */  jal         func_800592A0
/* 05339C 800537EC 00002025 */   move       $a0, $zero
/* 0533A0 800537F0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0533A4 800537F4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0533A8 800537F8 03E00008 */  jr          $ra
/* 0533AC 800537FC 00000000 */   nop

glabel func_80053800 # 1
/* 0533B0 80053800 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0533B4 80053804 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0533B8 80053808 0C015FFC */  jal         __osDisableInt
/* 0533BC 8005380C AFA40018 */   sw         $a0, 0x18($sp)
/* 0533C0 80053810 3C05800A */  lui         $a1, %hi(__osViNext)
/* 0533C4 80053814 24A5F954 */  addiu       $a1, $a1, %lo(__osViNext)
/* 0533C8 80053818 8CAF0000 */  lw          $t7, 0x0($a1)
/* 0533CC 8005381C 8FAE0018 */  lw          $t6, 0x18($sp)
/* 0533D0 80053820 00402025 */  move        $a0, $v0
/* 0533D4 80053824 ADEE0004 */  sw          $t6, 0x4($t7)
/* 0533D8 80053828 8CA30000 */  lw          $v1, 0x0($a1)
/* 0533DC 8005382C 94780000 */  lhu         $t8, 0x0($v1)
/* 0533E0 80053830 37190010 */  ori         $t9, $t8, 0x10
/* 0533E4 80053834 0C016018 */  jal         __osRestoreInt
/* 0533E8 80053838 A4790000 */   sh         $t9, 0x0($v1)
/* 0533EC 8005383C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0533F0 80053840 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0533F4 80053844 03E00008 */  jr          $ra
/* 0533F8 80053848 00000000 */   nop
/* 0533FC 8005384C 00000000 */  nop
