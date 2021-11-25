.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osAiSetNextBuffer # 0
/* 054F70 800553C0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 054F74 800553C4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 054F78 800553C8 AFA5001C */  sw          $a1, 0x1c($sp)
/* 054F7C 800553CC 0C016C00 */  jal         __osAiDeviceBusy
/* 054F80 800553D0 AFA40018 */   sw         $a0, 0x18($sp)
/* 054F84 800553D4 10400003 */  beqz        $v0, .L800553E4
/* 054F88 800553D8 8FA40018 */   lw         $a0, 0x18($sp)
/* 054F8C 800553DC 10000018 */  b           .L80055440
/* 054F90 800553E0 2402FFFF */   addiu      $v0, $zero, -0x1
.L800553E4:
/* 054F94 800553E4 3C0E800A */  lui         $t6, %hi(D_8009F690)
/* 054F98 800553E8 91CEF690 */  lbu         $t6, %lo(D_8009F690)($t6)
/* 054F9C 800553EC 8FAF001C */  lw          $t7, 0x1c($sp)
/* 054FA0 800553F0 00802825 */  move        $a1, $a0
/* 054FA4 800553F4 11C00002 */  beqz        $t6, .L80055400
/* 054FA8 800553F8 008FC021 */   addu       $t8, $a0, $t7
/* 054FAC 800553FC 2485E000 */  addiu       $a1, $a0, -0x2000
.L80055400:
/* 054FB0 80055400 33191FFF */  andi        $t9, $t8, 0x1fff
/* 054FB4 80055404 17200005 */  bnez        $t9, .L8005541C
/* 054FB8 80055408 3C01800A */   lui        $at, %hi(D_8009F690)
/* 054FBC 8005540C 24080001 */  addiu       $t0, $zero, 0x1
/* 054FC0 80055410 3C01800A */  lui         $at, %hi(D_8009F690)
/* 054FC4 80055414 10000002 */  b           .L80055420
/* 054FC8 80055418 A028F690 */   sb         $t0, %lo(D_8009F690)($at)
.L8005541C:
/* 054FCC 8005541C A020F690 */  sb          $zero, %lo(D_8009F690)($at)
.L80055420:
/* 054FD0 80055420 0C0143B0 */  jal         osVirtualToPhysical
/* 054FD4 80055424 00A02025 */   move       $a0, $a1
/* 054FD8 80055428 3C09A450 */  lui         $t1, %hi(D_A4500000)
/* 054FDC 8005542C AD220000 */  sw          $v0, %lo(D_A4500000)($t1)
/* 054FE0 80055430 8FAA001C */  lw          $t2, 0x1c($sp)
/* 054FE4 80055434 3C0BA450 */  lui         $t3, %hi(D_A4500004)
/* 054FE8 80055438 00001025 */  move        $v0, $zero
/* 054FEC 8005543C AD6A0004 */  sw          $t2, %lo(D_A4500004)($t3)
.L80055440:
/* 054FF0 80055440 8FBF0014 */  lw          $ra, 0x14($sp)
/* 054FF4 80055444 27BD0018 */  addiu       $sp, $sp, 0x18
/* 054FF8 80055448 03E00008 */  jr          $ra
/* 054FFC 8005544C 00000000 */   nop
