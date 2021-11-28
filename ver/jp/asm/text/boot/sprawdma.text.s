.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osSpRawStartDma # 0
/* 059070 800594C0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 059074 800594C4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 059078 800594C8 AFA40018 */  sw          $a0, 0x18($sp)
/* 05907C 800594CC AFA5001C */  sw          $a1, 0x1c($sp)
/* 059080 800594D0 AFA60020 */  sw          $a2, 0x20($sp)
/* 059084 800594D4 0C016554 */  jal         __osSpDeviceBusy
/* 059088 800594D8 AFA70024 */   sw         $a3, 0x24($sp)
/* 05908C 800594DC 10400003 */  beqz        $v0, .L800594EC
/* 059090 800594E0 00000000 */   nop
/* 059094 800594E4 10000015 */  b           .L8005953C
/* 059098 800594E8 2402FFFF */   addiu      $v0, $zero, -0x1
.L800594EC:
/* 05909C 800594EC 8FAE001C */  lw          $t6, 0x1c($sp)
/* 0590A0 800594F0 3C0FA404 */  lui         $t7, %hi(D_A4040000)
/* 0590A4 800594F4 ADEE0000 */  sw          $t6, %lo(D_A4040000)($t7)
/* 0590A8 800594F8 0C0140F4 */  jal         osVirtualToPhysical
/* 0590AC 800594FC 8FA40020 */   lw         $a0, 0x20($sp)
/* 0590B0 80059500 3C18A404 */  lui         $t8, %hi(D_A4040004)
/* 0590B4 80059504 AF020004 */  sw          $v0, %lo(D_A4040004)($t8)
/* 0590B8 80059508 8FB90018 */  lw          $t9, 0x18($sp)
/* 0590BC 8005950C 17200006 */  bnez        $t9, .L80059528
/* 0590C0 80059510 00000000 */   nop
/* 0590C4 80059514 8FA80024 */  lw          $t0, 0x24($sp)
/* 0590C8 80059518 3C0AA404 */  lui         $t2, %hi(D_A404000C)
/* 0590CC 8005951C 2509FFFF */  addiu       $t1, $t0, -0x1
/* 0590D0 80059520 10000005 */  b           .L80059538
/* 0590D4 80059524 AD49000C */   sw         $t1, %lo(D_A404000C)($t2)
.L80059528:
/* 0590D8 80059528 8FAB0024 */  lw          $t3, 0x24($sp)
/* 0590DC 8005952C 3C0DA404 */  lui         $t5, %hi(D_A4040008)
/* 0590E0 80059530 256CFFFF */  addiu       $t4, $t3, -0x1
/* 0590E4 80059534 ADAC0008 */  sw          $t4, %lo(D_A4040008)($t5)
.L80059538:
/* 0590E8 80059538 00001025 */  move        $v0, $zero
.L8005953C:
/* 0590EC 8005953C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0590F0 80059540 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0590F4 80059544 03E00008 */  jr          $ra
/* 0590F8 80059548 00000000 */   nop
/* 0590FC 8005954C 00000000 */  nop
