.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80051430 # 0
/* 050FE0 80051430 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 050FE4 80051434 AFBF001C */  sw          $ra, 0x1c($sp)
/* 050FE8 80051438 E7AC0028 */  swc1        $f12, 0x28($sp)
/* 050FEC 8005143C 0C015594 */  jal         func_80055650
/* 050FF0 80051440 AFB00018 */   sw         $s0, 0x18($sp)
/* 050FF4 80051444 3C0E800A */  lui         $t6, %hi(D_800A4E14)
/* 050FF8 80051448 8DCE4E14 */  lw          $t6, %lo(D_800A4E14)($t6)
/* 050FFC 8005144C C7A40028 */  lwc1        $f4, 0x28($sp)
/* 051000 80051450 3C0F800A */  lui         $t7, %hi(D_800A4E14)
/* 051004 80051454 00408025 */  move        $s0, $v0
/* 051008 80051458 E5C40024 */  swc1        $f4, 0x24($t6)
/* 05100C 8005145C 8DEF4E14 */  lw          $t7, %lo(D_800A4E14)($t7)
/* 051010 80051460 02002025 */  move        $a0, $s0
/* 051014 80051464 95F80000 */  lhu         $t8, 0x0($t7)
/* 051018 80051468 37190004 */  ori         $t9, $t8, 0x4
/* 05101C 8005146C 0C01559C */  jal         func_80055670
/* 051020 80051470 A5F90000 */   sh         $t9, 0x0($t7)
/* 051024 80051474 8FBF001C */  lw          $ra, 0x1c($sp)
/* 051028 80051478 8FB00018 */  lw          $s0, 0x18($sp)
/* 05102C 8005147C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 051030 80051480 03E00008 */  jr          $ra
/* 051034 80051484 00000000 */   nop
/* 051038 80051488 00000000 */  nop
/* 05103C 8005148C 00000000 */  nop
