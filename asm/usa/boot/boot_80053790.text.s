.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80053790 # 0
/* 053340 80053790 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 053344 80053794 AFBF0014 */  sw          $ra, 0x14($sp)
/* 053348 80053798 0C015FFC */  jal         __osDisableInt
/* 05334C 8005379C E7AC0018 */   swc1       $f12, 0x18($sp)
/* 053350 800537A0 3C05800A */  lui         $a1, %hi(D_8009F954)
/* 053354 800537A4 24A5F954 */  addiu       $a1, $a1, %lo(D_8009F954)
/* 053358 800537A8 8CAE0000 */  lw          $t6, 0x0($a1)
/* 05335C 800537AC C7A40018 */  lwc1        $f4, 0x18($sp)
/* 053360 800537B0 00402025 */  move        $a0, $v0
/* 053364 800537B4 E5C40024 */  swc1        $f4, 0x24($t6)
/* 053368 800537B8 8CA30000 */  lw          $v1, 0x0($a1)
/* 05336C 800537BC 946F0000 */  lhu         $t7, 0x0($v1)
/* 053370 800537C0 35F80004 */  ori         $t8, $t7, 0x4
/* 053374 800537C4 0C016018 */  jal         __osRestoreInt
/* 053378 800537C8 A4780000 */   sh         $t8, 0x0($v1)
/* 05337C 800537CC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 053380 800537D0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 053384 800537D4 03E00008 */  jr          $ra
/* 053388 800537D8 00000000 */   nop
/* 05338C 800537DC 00000000 */  nop
