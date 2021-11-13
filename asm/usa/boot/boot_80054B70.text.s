.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80054B70 # 0
/* 054720 80054B70 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 054724 80054B74 AFBF0014 */  sw          $ra, 0x14($sp)
/* 054728 80054B78 0C015FFC */  jal         func_80057FF0
/* 05472C 80054B7C 00000000 */   nop
/* 054730 80054B80 3C0E800A */  lui         $t6, %hi(D_8009F954)
/* 054734 80054B84 8DCEF954 */  lw          $t6, %lo(D_8009F954)($t6)
/* 054738 80054B88 00402025 */  move        $a0, $v0
/* 05473C 80054B8C 8DCF0004 */  lw          $t7, 0x4($t6)
/* 054740 80054B90 0C016018 */  jal         func_80058060
/* 054744 80054B94 AFAF0018 */   sw         $t7, 0x18($sp)
/* 054748 80054B98 8FBF0014 */  lw          $ra, 0x14($sp)
/* 05474C 80054B9C 8FA20018 */  lw          $v0, 0x18($sp)
/* 054750 80054BA0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 054754 80054BA4 03E00008 */  jr          $ra
/* 054758 80054BA8 00000000 */   nop
/* 05475C 80054BAC 00000000 */  nop
