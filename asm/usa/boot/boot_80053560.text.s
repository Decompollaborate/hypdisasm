.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80053560 # 0
/* 000000 80053560 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000004 80053564 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000008 80053568 0C015FFC */  jal         func_80057FF0
/* 00000C 8005356C AFA40018 */   sw         $a0, 0x18($sp)
/* 000010 80053570 3C05800A */  lui         $a1, %hi(D_8009F954)
/* 000014 80053574 24A5F954 */  addiu       $a1, $a1, %lo(D_8009F954)
/* 000018 80053578 8CAF0000 */  lw          $t7, 0x0($a1)
/* 00001C 8005357C 8FAE0018 */  lw          $t6, 0x18($sp)
/* 000020 80053580 24180001 */  addiu       $t8, $zero, 0x1
/* 000024 80053584 00402025 */  move        $a0, $v0
/* 000028 80053588 ADEE0008 */  sw          $t6, 0x8($t7)
/* 00002C 8005358C 8CB90000 */  lw          $t9, 0x0($a1)
/* 000030 80053590 A7380000 */  sh          $t8, 0x0($t9)
/* 000034 80053594 8CA30000 */  lw          $v1, 0x0($a1)
/* 000038 80053598 8C680008 */  lw          $t0, 0x8($v1)
/* 00003C 8005359C 8D090004 */  lw          $t1, 0x4($t0)
/* 000040 800535A0 0C016018 */  jal         func_80058060
/* 000044 800535A4 AC69000C */   sw         $t1, 0xc($v1)
/* 000048 800535A8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00004C 800535AC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000050 800535B0 03E00008 */  jr          $ra
/* 000054 800535B4 00000000 */   nop
/* 000058 800535B8 00000000 */  nop
/* 00005C 800535BC 00000000 */  nop
