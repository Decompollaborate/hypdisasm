.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005B770 # 0
/* 05B320 8005B770 24010002 */  addiu       $at, $zero, 0x2
/* 05B324 8005B774 14A10008 */  bne         $a1, $at, .L8005B798
/* 05B328 8005B778 8C82001C */   lw         $v0, 0x1c($a0)
/* 05B32C 8005B77C 8C8E0014 */  lw          $t6, 0x14($a0)
/* 05B330 8005B780 000E7880 */  sll         $t7, $t6, 2
/* 05B334 8005B784 004FC021 */  addu        $t8, $v0, $t7
/* 05B338 8005B788 AF060000 */  sw          $a2, 0x0($t8)
/* 05B33C 8005B78C 8C990014 */  lw          $t9, 0x14($a0)
/* 05B340 8005B790 27280001 */  addiu       $t0, $t9, 0x1
/* 05B344 8005B794 AC880014 */  sw          $t0, 0x14($a0)
.L8005B798:
/* 05B348 8005B798 03E00008 */  jr          $ra
/* 05B34C 8005B79C 00001025 */   move       $v0, $zero

glabel func_8005B7A0 # 1
/* 05B350 8005B7A0 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 05B354 8005B7A4 8FA80050 */  lw          $t0, 0x50($sp)
/* 05B358 8005B7A8 AFBF003C */  sw          $ra, 0x3c($sp)
/* 05B35C 8005B7AC AFB60038 */  sw          $s6, 0x38($sp)
/* 05B360 8005B7B0 AFB50034 */  sw          $s5, 0x34($sp)
/* 05B364 8005B7B4 AFB40030 */  sw          $s4, 0x30($sp)
/* 05B368 8005B7B8 AFB3002C */  sw          $s3, 0x2c($sp)
/* 05B36C 8005B7BC AFB20028 */  sw          $s2, 0x28($sp)
/* 05B370 8005B7C0 AFB10024 */  sw          $s1, 0x24($sp)
/* 05B374 8005B7C4 AFB00020 */  sw          $s0, 0x20($sp)
/* 05B378 8005B7C8 8C83001C */  lw          $v1, 0x1c($a0)
/* 05B37C 8005B7CC 3C0E0200 */  lui         $t6, 0x200
/* 05B380 8005B7D0 00061040 */  sll         $v0, $a2, 1
/* 05B384 8005B7D4 3C0F0200 */  lui         $t7, 0x200
/* 05B388 8005B7D8 35CE06C0 */  ori         $t6, $t6, 0x6c0
/* 05B38C 8005B7DC 35EF0800 */  ori         $t7, $t7, 0x800
/* 05B390 8005B7E0 AD0E0000 */  sw          $t6, 0x0($t0)
/* 05B394 8005B7E4 AD020004 */  sw          $v0, 0x4($t0)
/* 05B398 8005B7E8 AD0F0008 */  sw          $t7, 0x8($t0)
/* 05B39C 8005B7EC AD02000C */  sw          $v0, 0xc($t0)
/* 05B3A0 8005B7F0 8C980014 */  lw          $t8, 0x14($a0)
/* 05B3A4 8005B7F4 00C0A025 */  move        $s4, $a2
/* 05B3A8 8005B7F8 00A0A825 */  move        $s5, $a1
/* 05B3AC 8005B7FC 00E0B025 */  move        $s6, $a3
/* 05B3B0 8005B800 00809825 */  move        $s3, $a0
/* 05B3B4 8005B804 00008025 */  move        $s0, $zero
/* 05B3B8 8005B808 1B000010 */  blez        $t8, .L8005B84C
/* 05B3BC 8005B80C 25120010 */   addiu      $s2, $t0, 0x10
/* 05B3C0 8005B810 00608825 */  move        $s1, $v1
.L8005B814:
/* 05B3C4 8005B814 8E240000 */  lw          $a0, 0x0($s1)
/* 05B3C8 8005B818 AFB20010 */  sw          $s2, 0x10($sp)
/* 05B3CC 8005B81C 02A02825 */  move        $a1, $s5
/* 05B3D0 8005B820 8C990004 */  lw          $t9, 0x4($a0)
/* 05B3D4 8005B824 02803025 */  move        $a2, $s4
/* 05B3D8 8005B828 02C03825 */  move        $a3, $s6
/* 05B3DC 8005B82C 0320F809 */  jalr        $t9
/* 05B3E0 8005B830 00000000 */   nop
/* 05B3E4 8005B834 8E690014 */  lw          $t1, 0x14($s3)
/* 05B3E8 8005B838 26100001 */  addiu       $s0, $s0, 0x1
/* 05B3EC 8005B83C 26310004 */  addiu       $s1, $s1, 0x4
/* 05B3F0 8005B840 0209082A */  slt         $at, $s0, $t1
/* 05B3F4 8005B844 1420FFF3 */  bnez        $at, .L8005B814
/* 05B3F8 8005B848 00409025 */   move       $s2, $v0
.L8005B84C:
/* 05B3FC 8005B84C 8FBF003C */  lw          $ra, 0x3c($sp)
/* 05B400 8005B850 02401025 */  move        $v0, $s2
/* 05B404 8005B854 8FB20028 */  lw          $s2, 0x28($sp)
/* 05B408 8005B858 8FB00020 */  lw          $s0, 0x20($sp)
/* 05B40C 8005B85C 8FB10024 */  lw          $s1, 0x24($sp)
/* 05B410 8005B860 8FB3002C */  lw          $s3, 0x2c($sp)
/* 05B414 8005B864 8FB40030 */  lw          $s4, 0x30($sp)
/* 05B418 8005B868 8FB50034 */  lw          $s5, 0x34($sp)
/* 05B41C 8005B86C 8FB60038 */  lw          $s6, 0x38($sp)
/* 05B420 8005B870 03E00008 */  jr          $ra
/* 05B424 8005B874 27BD0040 */   addiu      $sp, $sp, 0x40
/* 05B428 8005B878 00000000 */  nop
/* 05B42C 8005B87C 00000000 */  nop
