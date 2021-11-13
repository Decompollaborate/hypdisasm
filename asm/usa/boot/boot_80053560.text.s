.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80053560 # 0
/* 053110 80053560 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 053114 80053564 AFBF0014 */  sw          $ra, 0x14($sp)
/* 053118 80053568 0C015FFC */  jal         __osDisableInt
/* 05311C 8005356C AFA40018 */   sw         $a0, 0x18($sp)
/* 053120 80053570 3C05800A */  lui         $a1, %hi(D_8009F954)
/* 053124 80053574 24A5F954 */  addiu       $a1, $a1, %lo(D_8009F954)
/* 053128 80053578 8CAF0000 */  lw          $t7, 0x0($a1)
/* 05312C 8005357C 8FAE0018 */  lw          $t6, 0x18($sp)
/* 053130 80053580 24180001 */  addiu       $t8, $zero, 0x1
/* 053134 80053584 00402025 */  move        $a0, $v0
/* 053138 80053588 ADEE0008 */  sw          $t6, 0x8($t7)
/* 05313C 8005358C 8CB90000 */  lw          $t9, 0x0($a1)
/* 053140 80053590 A7380000 */  sh          $t8, 0x0($t9)
/* 053144 80053594 8CA30000 */  lw          $v1, 0x0($a1)
/* 053148 80053598 8C680008 */  lw          $t0, 0x8($v1)
/* 05314C 8005359C 8D090004 */  lw          $t1, 0x4($t0)
/* 053150 800535A0 0C016018 */  jal         __osRestoreInt
/* 053154 800535A4 AC69000C */   sw         $t1, 0xc($v1)
/* 053158 800535A8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 05315C 800535AC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 053160 800535B0 03E00008 */  jr          $ra
/* 053164 800535B4 00000000 */   nop
/* 053168 800535B8 00000000 */  nop
/* 05316C 800535BC 00000000 */  nop
