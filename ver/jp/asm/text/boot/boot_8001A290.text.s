.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8001A290 # 0
/* 019E40 8001A290 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 019E44 8001A294 AFBF001C */  sw          $ra, 0x1c($sp)
/* 019E48 8001A298 AFB00018 */  sw          $s0, 0x18($sp)
/* 019E4C 8001A29C 00A03825 */  move        $a3, $a1
/* 019E50 8001A2A0 AC850000 */  sw          $a1, 0x0($a0)
/* 019E54 8001A2A4 00808025 */  move        $s0, $a0
/* 019E58 8001A2A8 00052880 */  sll         $a1, $a1, 2
/* 019E5C 8001A2AC 00A72823 */  subu        $a1, $a1, $a3
/* 019E60 8001A2B0 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 019E64 8001A2B4 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 019E68 8001A2B8 00052880 */  sll         $a1, $a1, 2
/* 019E6C 8001A2BC AFA70024 */  sw          $a3, 0x24($sp)
/* 019E70 8001A2C0 0C00DA76 */  jal         func_800369D8
/* 019E74 8001A2C4 24060013 */   addiu      $a2, $zero, 0x13
/* 019E78 8001A2C8 8FA70024 */  lw          $a3, 0x24($sp)
/* 019E7C 8001A2CC AE020004 */  sw          $v0, 0x4($s0)
/* 019E80 8001A2D0 00002025 */  move        $a0, $zero
/* 019E84 8001A2D4 10E00027 */  beqz        $a3, .L8001A374
/* 019E88 8001A2D8 00401825 */   move       $v1, $v0
/* 019E8C 8001A2DC 30E20003 */  andi        $v0, $a3, 0x3
/* 019E90 8001A2E0 1040000A */  beqz        $v0, .L8001A30C
/* 019E94 8001A2E4 00402825 */   move       $a1, $v0
.L8001A2E8:
/* 019E98 8001A2E8 246EFFF4 */  addiu       $t6, $v1, -0xc
/* 019E9C 8001A2EC 2462000C */  addiu       $v0, $v1, 0xc
/* 019EA0 8001A2F0 AC620008 */  sw          $v0, 0x8($v1)
/* 019EA4 8001A2F4 AC6E0004 */  sw          $t6, 0x4($v1)
/* 019EA8 8001A2F8 AC600000 */  sw          $zero, 0x0($v1)
/* 019EAC 8001A2FC 24840001 */  addiu       $a0, $a0, 0x1
/* 019EB0 8001A300 14A4FFF9 */  bne         $a1, $a0, .L8001A2E8
/* 019EB4 8001A304 00401825 */   move       $v1, $v0
/* 019EB8 8001A308 1087001A */  beq         $a0, $a3, .L8001A374
.L8001A30C:
/* 019EBC 8001A30C 2462000C */   addiu      $v0, $v1, 0xc
/* 019EC0 8001A310 246FFFF4 */  addiu       $t7, $v1, -0xc
/* 019EC4 8001A314 AC620008 */  sw          $v0, 0x8($v1)
/* 019EC8 8001A318 AC600000 */  sw          $zero, 0x0($v1)
/* 019ECC 8001A31C AC6F0004 */  sw          $t7, 0x4($v1)
/* 019ED0 8001A320 2458FFF4 */  addiu       $t8, $v0, -0xc
/* 019ED4 8001A324 00401825 */  move        $v1, $v0
/* 019ED8 8001A328 2442000C */  addiu       $v0, $v0, 0xc
/* 019EDC 8001A32C AC58FFF8 */  sw          $t8, -0x8($v0)
/* 019EE0 8001A330 AC40FFF4 */  sw          $zero, -0xc($v0)
/* 019EE4 8001A334 AC620008 */  sw          $v0, 0x8($v1)
/* 019EE8 8001A338 2459FFF4 */  addiu       $t9, $v0, -0xc
/* 019EEC 8001A33C 00401825 */  move        $v1, $v0
/* 019EF0 8001A340 2442000C */  addiu       $v0, $v0, 0xc
/* 019EF4 8001A344 AC59FFF8 */  sw          $t9, -0x8($v0)
/* 019EF8 8001A348 AC40FFF4 */  sw          $zero, -0xc($v0)
/* 019EFC 8001A34C AC620008 */  sw          $v0, 0x8($v1)
/* 019F00 8001A350 2448FFF4 */  addiu       $t0, $v0, -0xc
/* 019F04 8001A354 00401825 */  move        $v1, $v0
/* 019F08 8001A358 2442000C */  addiu       $v0, $v0, 0xc
/* 019F0C 8001A35C AC48FFF8 */  sw          $t0, -0x8($v0)
/* 019F10 8001A360 AC40FFF4 */  sw          $zero, -0xc($v0)
/* 019F14 8001A364 AC620008 */  sw          $v0, 0x8($v1)
/* 019F18 8001A368 24840004 */  addiu       $a0, $a0, 0x4
/* 019F1C 8001A36C 1487FFE7 */  bne         $a0, $a3, .L8001A30C
/* 019F20 8001A370 00401825 */   move       $v1, $v0
.L8001A374:
/* 019F24 8001A374 AC60FFFC */  sw          $zero, -0x4($v1)
/* 019F28 8001A378 8E090004 */  lw          $t1, 0x4($s0)
/* 019F2C 8001A37C 2463FFF4 */  addiu       $v1, $v1, -0xc
/* 019F30 8001A380 AD200004 */  sw          $zero, 0x4($t1)
/* 019F34 8001A384 8E0A0004 */  lw          $t2, 0x4($s0)
/* 019F38 8001A388 AE000008 */  sw          $zero, 0x8($s0)
/* 019F3C 8001A38C AE00000C */  sw          $zero, 0xc($s0)
/* 019F40 8001A390 AE000014 */  sw          $zero, 0x14($s0)
/* 019F44 8001A394 AE0A0010 */  sw          $t2, 0x10($s0)
/* 019F48 8001A398 8FBF001C */  lw          $ra, 0x1c($sp)
/* 019F4C 8001A39C 8FB00018 */  lw          $s0, 0x18($sp)
/* 019F50 8001A3A0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 019F54 8001A3A4 03E00008 */  jr          $ra
/* 019F58 8001A3A8 00000000 */   nop

glabel func_8001A3AC # 1
/* 019F5C 8001A3AC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 019F60 8001A3B0 00803025 */  move        $a2, $a0
/* 019F64 8001A3B4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 019F68 8001A3B8 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 019F6C 8001A3BC 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 019F70 8001A3C0 0C00DB8B */  jal         func_80036E2C
/* 019F74 8001A3C4 8CC50004 */   lw         $a1, 0x4($a2)
/* 019F78 8001A3C8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 019F7C 8001A3CC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 019F80 8001A3D0 03E00008 */  jr          $ra
/* 019F84 8001A3D4 00000000 */   nop

glabel func_8001A3D8 # 2
/* 019F88 8001A3D8 8C820010 */  lw          $v0, 0x10($a0)
/* 019F8C 8001A3DC 00A03025 */  move        $a2, $a1
/* 019F90 8001A3E0 8C430008 */  lw          $v1, 0x8($v0)
/* 019F94 8001A3E4 50600003 */  beql        $v1, $zero, .L8001A3F4
/* 019F98 8001A3E8 8C85000C */   lw         $a1, 0xc($a0)
/* 019F9C 8001A3EC AC600004 */  sw          $zero, 0x4($v1)
/* 019FA0 8001A3F0 8C85000C */  lw          $a1, 0xc($a0)
.L8001A3F4:
/* 019FA4 8001A3F4 AC830010 */  sw          $v1, 0x10($a0)
/* 019FA8 8001A3F8 AC400008 */  sw          $zero, 0x8($v0)
/* 019FAC 8001A3FC AC460000 */  sw          $a2, 0x0($v0)
/* 019FB0 8001A400 10A00002 */  beqz        $a1, .L8001A40C
/* 019FB4 8001A404 AC450004 */   sw         $a1, 0x4($v0)
/* 019FB8 8001A408 ACA20008 */  sw          $v0, 0x8($a1)
.L8001A40C:
/* 019FBC 8001A40C 8C8E0008 */  lw          $t6, 0x8($a0)
/* 019FC0 8001A410 AC82000C */  sw          $v0, 0xc($a0)
/* 019FC4 8001A414 15C00002 */  bnez        $t6, .L8001A420
/* 019FC8 8001A418 00000000 */   nop
/* 019FCC 8001A41C AC820008 */  sw          $v0, 0x8($a0)
.L8001A420:
/* 019FD0 8001A420 03E00008 */  jr          $ra
/* 019FD4 8001A424 00000000 */   nop

glabel func_8001A428 # 3
/* 019FD8 8001A428 8C830008 */  lw          $v1, 0x8($a0)
/* 019FDC 8001A42C 00001025 */  move        $v0, $zero
/* 019FE0 8001A430 14600003 */  bnez        $v1, .L8001A440
/* 019FE4 8001A434 AC830014 */   sw         $v1, 0x14($a0)
/* 019FE8 8001A438 03E00008 */  jr          $ra
/* 019FEC 8001A43C ACA00000 */   sw         $zero, 0x0($a1)
.L8001A440:
/* 019FF0 8001A440 8C6E0000 */  lw          $t6, 0x0($v1)
/* 019FF4 8001A444 24020001 */  addiu       $v0, $zero, 0x1
/* 019FF8 8001A448 ACAE0000 */  sw          $t6, 0x0($a1)
/* 019FFC 8001A44C 03E00008 */  jr          $ra
/* 01A000 8001A450 00000000 */   nop

glabel func_8001A454 # 4
/* 01A004 8001A454 8C820014 */  lw          $v0, 0x14($a0)
/* 01A008 8001A458 5440000C */  bnel        $v0, $zero, .L8001A48C
/* 01A00C 8001A45C 8C430008 */   lw         $v1, 0x8($v0)
/* 01A010 8001A460 8C830008 */  lw          $v1, 0x8($a0)
/* 01A014 8001A464 00001025 */  move        $v0, $zero
/* 01A018 8001A468 14600003 */  bnez        $v1, .L8001A478
/* 01A01C 8001A46C AC830014 */   sw         $v1, 0x14($a0)
/* 01A020 8001A470 03E00008 */  jr          $ra
/* 01A024 8001A474 ACA00000 */   sw         $zero, 0x0($a1)
.L8001A478:
/* 01A028 8001A478 8C6E0000 */  lw          $t6, 0x0($v1)
/* 01A02C 8001A47C 24020001 */  addiu       $v0, $zero, 0x1
/* 01A030 8001A480 03E00008 */  jr          $ra
/* 01A034 8001A484 ACAE0000 */   sw         $t6, 0x0($a1)
/* 01A038 8001A488 8C430008 */  lw          $v1, 0x8($v0)
.L8001A48C:
/* 01A03C 8001A48C 00001025 */  move        $v0, $zero
/* 01A040 8001A490 14600003 */  bnez        $v1, .L8001A4A0
/* 01A044 8001A494 AC830014 */   sw         $v1, 0x14($a0)
/* 01A048 8001A498 03E00008 */  jr          $ra
/* 01A04C 8001A49C ACA00000 */   sw         $zero, 0x0($a1)
.L8001A4A0:
/* 01A050 8001A4A0 8C6F0000 */  lw          $t7, 0x0($v1)
/* 01A054 8001A4A4 24020001 */  addiu       $v0, $zero, 0x1
/* 01A058 8001A4A8 ACAF0000 */  sw          $t7, 0x0($a1)
/* 01A05C 8001A4AC 03E00008 */  jr          $ra
/* 01A060 8001A4B0 00000000 */   nop

glabel func_8001A4B4 # 5
/* 01A064 8001A4B4 8C830014 */  lw          $v1, 0x14($a0)
/* 01A068 8001A4B8 8C620004 */  lw          $v0, 0x4($v1)
/* 01A06C 8001A4BC 8C650008 */  lw          $a1, 0x8($v1)
/* 01A070 8001A4C0 50400004 */  beql        $v0, $zero, .L8001A4D4
/* 01A074 8001A4C4 AC850008 */   sw         $a1, 0x8($a0)
/* 01A078 8001A4C8 10000002 */  b           .L8001A4D4
/* 01A07C 8001A4CC AC450008 */   sw         $a1, 0x8($v0)
/* 01A080 8001A4D0 AC850008 */  sw          $a1, 0x8($a0)
.L8001A4D4:
/* 01A084 8001A4D4 50A00004 */  beql        $a1, $zero, .L8001A4E8
/* 01A088 8001A4D8 AC82000C */   sw         $v0, 0xc($a0)
/* 01A08C 8001A4DC 10000002 */  b           .L8001A4E8
/* 01A090 8001A4E0 ACA20004 */   sw         $v0, 0x4($a1)
/* 01A094 8001A4E4 AC82000C */  sw          $v0, 0xc($a0)
.L8001A4E8:
/* 01A098 8001A4E8 8C860010 */  lw          $a2, 0x10($a0)
/* 01A09C 8001A4EC AC820014 */  sw          $v0, 0x14($a0)
/* 01A0A0 8001A4F0 8C650000 */  lw          $a1, 0x0($v1)
/* 01A0A4 8001A4F4 AC600004 */  sw          $zero, 0x4($v1)
/* 01A0A8 8001A4F8 10C00002 */  beqz        $a2, .L8001A504
/* 01A0AC 8001A4FC AC660008 */   sw         $a2, 0x8($v1)
/* 01A0B0 8001A500 ACC30004 */  sw          $v1, 0x4($a2)
.L8001A504:
/* 01A0B4 8001A504 AC830010 */  sw          $v1, 0x10($a0)
/* 01A0B8 8001A508 03E00008 */  jr          $ra
/* 01A0BC 8001A50C 00A01025 */   move       $v0, $a1

glabel func_8001A510 # 6
/* 01A0C0 8001A510 8C820014 */  lw          $v0, 0x14($a0)
/* 01A0C4 8001A514 03E00008 */  jr          $ra
/* 01A0C8 8001A518 AC450000 */   sw         $a1, 0x0($v0)

glabel func_8001A51C # 7
/* 01A0CC 8001A51C 8C820010 */  lw          $v0, 0x10($a0)
/* 01A0D0 8001A520 0002702B */  sltu        $t6, $zero, $v0
/* 01A0D4 8001A524 03E00008 */  jr          $ra
/* 01A0D8 8001A528 01C01025 */   move       $v0, $t6
/* 01A0DC 8001A52C 00000000 */  nop
