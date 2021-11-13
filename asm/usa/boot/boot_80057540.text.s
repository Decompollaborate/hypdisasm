.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80057540 # 0
/* 000000 80057540 4442F800 */  cfc1        $v0, $f31
/* 000004 80057544 44C4F800 */  ctc1        $a0, $f31
/* 000008 80057548 03E00008 */  jr          $ra
/* 00000C 8005754C 00000000 */   nop

glabel func_80057550 # 1
/* 000010 80057550 40849000 */  cop0        0x0849000
/* 000014 80057554 00000000 */  nop
/* 000018 80057558 03E00008 */  jr          $ra
/* 00001C 8005755C 00000000 */   nop

glabel func_80057560 # 2
/* 000020 80057560 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000024 80057564 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000028 80057568 AFA40018 */  sw          $a0, 0x18($sp)
/* 00002C 8005756C 0C017550 */  jal         func_8005D540
/* 000030 80057570 AFA5001C */   sw         $a1, 0x1c($sp)
/* 000034 80057574 10400003 */  beq         $v0, $zero, .L80057584
/* 000038 80057578 8FAE0018 */   lw         $t6, 0x18($sp)
/* 00003C 8005757C 10000007 */  b           .L8005759C
/* 000040 80057580 2402FFFF */   addiu      $v0, $zero, -0x1
.L80057584:
/* 000044 80057584 3C01A000 */  lui         $at, 0xa000
/* 000048 80057588 01C17825 */  or          $t7, $t6, $at
/* 00004C 8005758C 8DF80000 */  lw          $t8, 0x0($t7)
/* 000050 80057590 8FB9001C */  lw          $t9, 0x1c($sp)
/* 000054 80057594 00001025 */  move        $v0, $zero
/* 000058 80057598 AF380000 */  sw          $t8, 0x0($t9)
.L8005759C:
/* 00005C 8005759C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000060 800575A0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000064 800575A4 03E00008 */  jr          $ra
/* 000068 800575A8 00000000 */   nop
/* 00006C 800575AC 00000000 */  nop
