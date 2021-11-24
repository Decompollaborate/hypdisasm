.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800534B0 # 0
/* 053060 800534B0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 053064 800534B4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 053068 800534B8 AFA40020 */  sw          $a0, 0x20($sp)
/* 05306C 800534BC 0C016430 */  jal         __osPiGetAccess
/* 053070 800534C0 AFA50024 */   sw         $a1, 0x24($sp)
/* 053074 800534C4 8FA40020 */  lw          $a0, 0x20($sp)
/* 053078 800534C8 0C01644C */  jal         func_80059130
/* 05307C 800534CC 8FA50024 */   lw         $a1, 0x24($sp)
/* 053080 800534D0 0C016441 */  jal         __osPiRelAccess
/* 053084 800534D4 AFA2001C */   sw         $v0, 0x1c($sp)
/* 053088 800534D8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 05308C 800534DC 8FA2001C */  lw          $v0, 0x1c($sp)
/* 053090 800534E0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 053094 800534E4 03E00008 */  jr          $ra
/* 053098 800534E8 00000000 */   nop
/* 05309C 800534EC 00000000 */  nop
/* 0530A0 800534F0 00000000 */  nop
/* 0530A4 800534F4 00000000 */  nop
/* 0530A8 800534F8 00000000 */  nop
/* 0530AC 800534FC 00000000 */  nop
/* 0530B0 80053500 00000000 */  nop
/* 0530B4 80053504 00000000 */  nop
/* 0530B8 80053508 00000000 */  nop
/* 0530BC 8005350C 00000000 */  nop
/* 0530C0 80053510 00000000 */  nop
/* 0530C4 80053514 00000000 */  nop
/* 0530C8 80053518 00000000 */  nop
/* 0530CC 8005351C 00000000 */  nop
/* 0530D0 80053520 00000000 */  nop
/* 0530D4 80053524 00000000 */  nop
/* 0530D8 80053528 00000000 */  nop
/* 0530DC 8005352C 00000000 */  nop
/* 0530E0 80053530 00000000 */  nop
/* 0530E4 80053534 00000000 */  nop
/* 0530E8 80053538 00000000 */  nop
/* 0530EC 8005353C 00000000 */  nop
/* 0530F0 80053540 00000000 */  nop
/* 0530F4 80053544 00000000 */  nop
/* 0530F8 80053548 00000000 */  nop
/* 0530FC 8005354C 00000000 */  nop
