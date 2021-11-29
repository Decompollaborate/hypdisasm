.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel _Litob # 0
/* 05C0D0 8005C520 27BDFF70 */  addiu       $sp, $sp, -0x90
/* 05C0D4 8005C524 AFB10020 */  sw          $s1, 0x20($sp)
/* 05C0D8 8005C528 30A200FF */  andi        $v0, $a1, 0xff
/* 05C0DC 8005C52C 24030058 */  addiu       $v1, $zero, 0x58
/* 05C0E0 8005C530 00808825 */  move        $s1, $a0
/* 05C0E4 8005C534 AFBF002C */  sw          $ra, 0x2c($sp)
/* 05C0E8 8005C538 AFB30028 */  sw          $s3, 0x28($sp)
/* 05C0EC 8005C53C AFB20024 */  sw          $s2, 0x24($sp)
/* 05C0F0 8005C540 AFB0001C */  sw          $s0, 0x1c($sp)
/* 05C0F4 8005C544 14620004 */  bne         $v1, $v0, .L8005C558
/* 05C0F8 8005C548 AFA50094 */   sw         $a1, 0x94($sp)
/* 05C0FC 8005C54C 3C13800A */  lui         $s3, %hi(udigs)
/* 05C100 8005C550 10000003 */  b           .L8005C560
/* 05C104 8005C554 267350B4 */   addiu      $s3, $s3, %lo(udigs)
.L8005C558:
/* 05C108 8005C558 3C13800A */  lui         $s3, %hi(ldigs)
/* 05C10C 8005C55C 267350A0 */  addiu       $s3, $s3, %lo(ldigs)
.L8005C560:
/* 05C110 8005C560 2401006F */  addiu       $at, $zero, 0x6f
/* 05C114 8005C564 14410003 */  bne         $v0, $at, .L8005C574
/* 05C118 8005C568 24100018 */   addiu      $s0, $zero, 0x18
/* 05C11C 8005C56C 10000009 */  b           .L8005C594
/* 05C120 8005C570 24090008 */   addiu      $t1, $zero, 0x8
.L8005C574:
/* 05C124 8005C574 24010078 */  addiu       $at, $zero, 0x78
/* 05C128 8005C578 10410005 */  beq         $v0, $at, .L8005C590
/* 05C12C 8005C57C 24080010 */   addiu      $t0, $zero, 0x10
/* 05C130 8005C580 10620003 */  beq         $v1, $v0, .L8005C590
/* 05C134 8005C584 00000000 */   nop
/* 05C138 8005C588 10000001 */  b           .L8005C590
/* 05C13C 8005C58C 2408000A */   addiu      $t0, $zero, 0xa
.L8005C590:
/* 05C140 8005C590 01004825 */  move        $t1, $t0
.L8005C594:
/* 05C144 8005C594 8E380000 */  lw          $t8, 0x0($s1)
/* 05C148 8005C598 8E390004 */  lw          $t9, 0x4($s1)
/* 05C14C 8005C59C 24010064 */  addiu       $at, $zero, 0x64
/* 05C150 8005C5A0 AFB80060 */  sw          $t8, 0x60($sp)
/* 05C154 8005C5A4 AFB80040 */  sw          $t8, 0x40($sp)
/* 05C158 8005C5A8 AFB90044 */  sw          $t9, 0x44($sp)
/* 05C15C 8005C5AC 10410004 */  beq         $v0, $at, .L8005C5C0
/* 05C160 8005C5B0 AFB90064 */   sw         $t9, 0x64($sp)
/* 05C164 8005C5B4 24010069 */  addiu       $at, $zero, 0x69
/* 05C168 8005C5B8 54410010 */  bnel        $v0, $at, .L8005C5FC
/* 05C16C 8005C5BC 8FAA0060 */   lw         $t2, 0x60($sp)
.L8005C5C0:
/* 05C170 8005C5C0 8FAC0040 */  lw          $t4, 0x40($sp)
/* 05C174 8005C5C4 5D80000D */  bgtzl       $t4, .L8005C5FC
/* 05C178 8005C5C8 8FAA0060 */   lw         $t2, 0x60($sp)
/* 05C17C 8005C5CC 05800003 */  bltz        $t4, .L8005C5DC
/* 05C180 8005C5D0 8FAE0060 */   lw         $t6, 0x60($sp)
/* 05C184 8005C5D4 10000009 */  b           .L8005C5FC
/* 05C188 8005C5D8 8FAA0060 */   lw         $t2, 0x60($sp)
.L8005C5DC:
/* 05C18C 8005C5DC 8FAF0064 */  lw          $t7, 0x64($sp)
/* 05C190 8005C5E0 01C0C027 */  not         $t8, $t6
/* 05C194 8005C5E4 2DE10001 */  sltiu       $at, $t7, 0x1
/* 05C198 8005C5E8 0301C021 */  addu        $t8, $t8, $at
/* 05C19C 8005C5EC 000FC823 */  negu        $t9, $t7
/* 05C1A0 8005C5F0 AFB90064 */  sw          $t9, 0x64($sp)
/* 05C1A4 8005C5F4 AFB80060 */  sw          $t8, 0x60($sp)
/* 05C1A8 8005C5F8 8FAA0060 */  lw          $t2, 0x60($sp)
.L8005C5FC:
/* 05C1AC 8005C5FC 8FAB0064 */  lw          $t3, 0x64($sp)
/* 05C1B0 8005C600 24080017 */  addiu       $t0, $zero, 0x17
/* 05C1B4 8005C604 15400006 */  bnez        $t2, .L8005C620
/* 05C1B8 8005C608 8FA40060 */   lw         $a0, 0x60($sp)
/* 05C1BC 8005C60C 55600005 */  bnel        $t3, $zero, .L8005C624
/* 05C1C0 8005C610 24100017 */   addiu      $s0, $zero, 0x17
/* 05C1C4 8005C614 8E2C0024 */  lw          $t4, 0x24($s1)
/* 05C1C8 8005C618 51800010 */  beql        $t4, $zero, .L8005C65C
/* 05C1CC 8005C61C 27B20078 */   addiu      $s2, $sp, 0x78
.L8005C620:
/* 05C1D0 8005C620 24100017 */  addiu       $s0, $zero, 0x17
.L8005C624:
/* 05C1D4 8005C624 8FA50064 */  lw          $a1, 0x64($sp)
/* 05C1D8 8005C628 01203825 */  move        $a3, $t1
/* 05C1DC 8005C62C 000937C3 */  sra         $a2, $t1, 31
/* 05C1E0 8005C630 AFA8004C */  sw          $t0, 0x4c($sp)
/* 05C1E4 8005C634 0C014467 */  jal         __ull_rem
/* 05C1E8 8005C638 AFA90070 */   sw         $t1, 0x70($sp)
/* 05C1EC 8005C63C 8FA8004C */  lw          $t0, 0x4c($sp)
/* 05C1F0 8005C640 00737021 */  addu        $t6, $v1, $s3
/* 05C1F4 8005C644 91CF0000 */  lbu         $t7, 0x0($t6)
/* 05C1F8 8005C648 27B20078 */  addiu       $s2, $sp, 0x78
/* 05C1FC 8005C64C 8FA90070 */  lw          $t1, 0x70($sp)
/* 05C200 8005C650 0248C021 */  addu        $t8, $s2, $t0
/* 05C204 8005C654 A30F0000 */  sb          $t7, 0x0($t8)
/* 05C208 8005C658 27B20078 */  addiu       $s2, $sp, 0x78
.L8005C65C:
/* 05C20C 8005C65C 8FA40060 */  lw          $a0, 0x60($sp)
/* 05C210 8005C660 8FA50064 */  lw          $a1, 0x64($sp)
/* 05C214 8005C664 01203825 */  move        $a3, $t1
/* 05C218 8005C668 000937C3 */  sra         $a2, $t1, 31
/* 05C21C 8005C66C 0C014476 */  jal         __ull_div
/* 05C220 8005C670 AFA90070 */   sw         $t1, 0x70($sp)
/* 05C224 8005C674 8FA90070 */  lw          $t1, 0x70($sp)
/* 05C228 8005C678 AE230004 */  sw          $v1, 0x4($s1)
/* 05C22C 8005C67C 0440002B */  bltz        $v0, .L8005C72C
/* 05C230 8005C680 AE220000 */   sw         $v0, 0x0($s1)
/* 05C234 8005C684 1C400003 */  bgtz        $v0, .L8005C694
/* 05C238 8005C688 00000000 */   nop
/* 05C23C 8005C68C 50600028 */  beql        $v1, $zero, .L8005C730
/* 05C240 8005C690 240C0018 */   addiu      $t4, $zero, 0x18
.L8005C694:
/* 05C244 8005C694 1A000025 */  blez        $s0, .L8005C72C
/* 05C248 8005C698 000967C3 */   sra        $t4, $t1, 31
/* 05C24C 8005C69C 8E2A0000 */  lw          $t2, 0x0($s1)
/* 05C250 8005C6A0 8E2B0004 */  lw          $t3, 0x4($s1)
/* 05C254 8005C6A4 AFA9003C */  sw          $t1, 0x3c($sp)
/* 05C258 8005C6A8 AFAC0038 */  sw          $t4, 0x38($sp)
/* 05C25C 8005C6AC AFAA0040 */  sw          $t2, 0x40($sp)
/* 05C260 8005C6B0 AFAB0044 */  sw          $t3, 0x44($sp)
/* 05C264 8005C6B4 8FAE0038 */  lw          $t6, 0x38($sp)
.L8005C6B8:
/* 05C268 8005C6B8 8FAF003C */  lw          $t7, 0x3c($sp)
/* 05C26C 8005C6BC 27A40050 */  addiu       $a0, $sp, 0x50
/* 05C270 8005C6C0 8FA60040 */  lw          $a2, 0x40($sp)
/* 05C274 8005C6C4 8FA70044 */  lw          $a3, 0x44($sp)
/* 05C278 8005C6C8 AFAE0010 */  sw          $t6, 0x10($sp)
/* 05C27C 8005C6CC 0C0175E8 */  jal         lldiv
/* 05C280 8005C6D0 AFAF0014 */   sw         $t7, 0x14($sp)
/* 05C284 8005C6D4 8FB80050 */  lw          $t8, 0x50($sp)
/* 05C288 8005C6D8 8FB90054 */  lw          $t9, 0x54($sp)
/* 05C28C 8005C6DC 2604FFFF */  addiu       $a0, $s0, -0x1
/* 05C290 8005C6E0 AE380000 */  sw          $t8, 0x0($s1)
/* 05C294 8005C6E4 AE390004 */  sw          $t9, 0x4($s1)
/* 05C298 8005C6E8 8FAB005C */  lw          $t3, 0x5c($sp)
/* 05C29C 8005C6EC 02447821 */  addu        $t7, $s2, $a0
/* 05C2A0 8005C6F0 00808025 */  move        $s0, $a0
/* 05C2A4 8005C6F4 01736821 */  addu        $t5, $t3, $s3
/* 05C2A8 8005C6F8 91AE0000 */  lbu         $t6, 0x0($t5)
/* 05C2AC 8005C6FC A1EE0000 */  sb          $t6, 0x0($t7)
/* 05C2B0 8005C700 8E380000 */  lw          $t8, 0x0($s1)
/* 05C2B4 8005C704 8E390004 */  lw          $t9, 0x4($s1)
/* 05C2B8 8005C708 AFB80040 */  sw          $t8, 0x40($sp)
/* 05C2BC 8005C70C 07000007 */  bltz        $t8, .L8005C72C
/* 05C2C0 8005C710 AFB90044 */   sw         $t9, 0x44($sp)
/* 05C2C4 8005C714 1F000003 */  bgtz        $t8, .L8005C724
/* 05C2C8 8005C718 00000000 */   nop
/* 05C2CC 8005C71C 53200004 */  beql        $t9, $zero, .L8005C730
/* 05C2D0 8005C720 240C0018 */   addiu      $t4, $zero, 0x18
.L8005C724:
/* 05C2D4 8005C724 5E00FFE4 */  bgtzl       $s0, .L8005C6B8
/* 05C2D8 8005C728 8FAE0038 */   lw         $t6, 0x38($sp)
.L8005C72C:
/* 05C2DC 8005C72C 240C0018 */  addiu       $t4, $zero, 0x18
.L8005C730:
/* 05C2E0 8005C730 01903023 */  subu        $a2, $t4, $s0
/* 05C2E4 8005C734 AE260014 */  sw          $a2, 0x14($s1)
/* 05C2E8 8005C738 8E240008 */  lw          $a0, 0x8($s1)
/* 05C2EC 8005C73C 0C0118DC */  jal         memcpy
/* 05C2F0 8005C740 02502821 */   addu       $a1, $s2, $s0
/* 05C2F4 8005C744 8E250014 */  lw          $a1, 0x14($s1)
/* 05C2F8 8005C748 8E240024 */  lw          $a0, 0x24($s1)
/* 05C2FC 8005C74C 00A4082A */  slt         $at, $a1, $a0
/* 05C300 8005C750 10200002 */  beqz        $at, .L8005C75C
/* 05C304 8005C754 00856823 */   subu       $t5, $a0, $a1
/* 05C308 8005C758 AE2D0010 */  sw          $t5, 0x10($s1)
.L8005C75C:
/* 05C30C 8005C75C 04830010 */  bgezl       $a0, .L8005C7A0
/* 05C310 8005C760 8FBF002C */   lw         $ra, 0x2c($sp)
/* 05C314 8005C764 8E2E0030 */  lw          $t6, 0x30($s1)
/* 05C318 8005C768 24010010 */  addiu       $at, $zero, 0x10
/* 05C31C 8005C76C 31CF0014 */  andi        $t7, $t6, 0x14
/* 05C320 8005C770 55E1000B */  bnel        $t7, $at, .L8005C7A0
/* 05C324 8005C774 8FBF002C */   lw         $ra, 0x2c($sp)
/* 05C328 8005C778 8E380028 */  lw          $t8, 0x28($s1)
/* 05C32C 8005C77C 8E39000C */  lw          $t9, 0xc($s1)
/* 05C330 8005C780 8E220010 */  lw          $v0, 0x10($s1)
/* 05C334 8005C784 03195023 */  subu        $t2, $t8, $t9
/* 05C338 8005C788 01425823 */  subu        $t3, $t2, $v0
/* 05C33C 8005C78C 01658023 */  subu        $s0, $t3, $a1
/* 05C340 8005C790 1A000002 */  blez        $s0, .L8005C79C
/* 05C344 8005C794 00506021 */   addu       $t4, $v0, $s0
/* 05C348 8005C798 AE2C0010 */  sw          $t4, 0x10($s1)
.L8005C79C:
/* 05C34C 8005C79C 8FBF002C */  lw          $ra, 0x2c($sp)
.L8005C7A0:
/* 05C350 8005C7A0 8FB0001C */  lw          $s0, 0x1c($sp)
/* 05C354 8005C7A4 8FB10020 */  lw          $s1, 0x20($sp)
/* 05C358 8005C7A8 8FB20024 */  lw          $s2, 0x24($sp)
/* 05C35C 8005C7AC 8FB30028 */  lw          $s3, 0x28($sp)
/* 05C360 8005C7B0 03E00008 */  jr          $ra
/* 05C364 8005C7B4 27BD0090 */   addiu      $sp, $sp, 0x90
/* 05C368 8005C7B8 00000000 */  nop
/* 05C36C 8005C7BC 00000000 */  nop
