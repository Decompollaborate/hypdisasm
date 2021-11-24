.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osViGetCurrentFramebuffer # 0
/* 0546E0 80054B30 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0546E4 80054B34 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0546E8 80054B38 0C015FFC */  jal         __osDisableInt
/* 0546EC 80054B3C 00000000 */   nop
/* 0546F0 80054B40 3C0E800A */  lui         $t6, %hi(__osViCurr)
/* 0546F4 80054B44 8DCEF950 */  lw          $t6, %lo(__osViCurr)($t6)
/* 0546F8 80054B48 00402025 */  move        $a0, $v0
/* 0546FC 80054B4C 8DCF0004 */  lw          $t7, 0x4($t6)
/* 054700 80054B50 0C016018 */  jal         __osRestoreInt
/* 054704 80054B54 AFAF0018 */   sw         $t7, 0x18($sp)
/* 054708 80054B58 8FBF0014 */  lw          $ra, 0x14($sp)
/* 05470C 80054B5C 8FA20018 */  lw          $v0, 0x18($sp)
/* 054710 80054B60 27BD0020 */  addiu       $sp, $sp, 0x20
/* 054714 80054B64 03E00008 */  jr          $ra
/* 054718 80054B68 00000000 */   nop
/* 05471C 80054B6C 00000000 */  nop
