.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80052BA0 # 0
/* 052750 80052BA0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 052754 80052BA4 3C0F800A */  lui         $t7, %hi(D_800A4B6E + 0x2)
/* 052758 80052BA8 91EF4B70 */  lbu         $t7, %lo(D_800A4B6E + 0x2)($t7)
/* 05275C 80052BAC AFA40020 */  sw          $a0, 0x20($sp)
/* 052760 80052BB0 8FAE0020 */  lw          $t6, 0x20($sp)
/* 052764 80052BB4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 052768 80052BB8 AFA50024 */  sw          $a1, 0x24($sp)
/* 05276C 80052BBC 11E00003 */  beqz        $t7, .L80052BCC
/* 052770 80052BC0 AFAE001C */   sw         $t6, 0x1c($sp)
/* 052774 80052BC4 25D8E000 */  addiu       $t8, $t6, -0x2000
/* 052778 80052BC8 AFB8001C */  sw          $t8, 0x1c($sp)
.L80052BCC:
/* 05277C 80052BCC 8FB90020 */  lw          $t9, 0x20($sp)
/* 052780 80052BD0 8FA80024 */  lw          $t0, 0x24($sp)
/* 052784 80052BD4 03284821 */  addu        $t1, $t9, $t0
/* 052788 80052BD8 312A1FFF */  andi        $t2, $t1, 0x1fff
/* 05278C 80052BDC 15400005 */  bnez        $t2, .L80052BF4
/* 052790 80052BE0 00000000 */   nop
/* 052794 80052BE4 240B0001 */  addiu       $t3, $zero, 0x1
/* 052798 80052BE8 3C01800A */  lui         $at, %hi(D_800A4B6E + 0x2)
/* 05279C 80052BEC 10000003 */  b           .L80052BFC
/* 0527A0 80052BF0 A02B4B70 */   sb         $t3, %lo(D_800A4B6E + 0x2)($at)
.L80052BF4:
/* 0527A4 80052BF4 3C01800A */  lui         $at, %hi(D_800A4B6E + 0x2)
/* 0527A8 80052BF8 A0204B70 */  sb          $zero, %lo(D_800A4B6E + 0x2)($at)
.L80052BFC:
/* 0527AC 80052BFC 0C016560 */  jal         func_80059580
/* 0527B0 80052C00 00000000 */   nop
/* 0527B4 80052C04 10400003 */  beqz        $v0, .L80052C14
/* 0527B8 80052C08 00000000 */   nop
/* 0527BC 80052C0C 10000009 */  b           .L80052C34
/* 0527C0 80052C10 2402FFFF */   addiu      $v0, $zero, -0x1
.L80052C14:
/* 0527C4 80052C14 0C0140F4 */  jal         osVirtualToPhysical
/* 0527C8 80052C18 8FA4001C */   lw         $a0, 0x1c($sp)
/* 0527CC 80052C1C 3C0CA450 */  lui         $t4, %hi(D_A4500000)
/* 0527D0 80052C20 AD820000 */  sw          $v0, %lo(D_A4500000)($t4)
/* 0527D4 80052C24 8FAD0024 */  lw          $t5, 0x24($sp)
/* 0527D8 80052C28 3C0FA450 */  lui         $t7, %hi(D_A4500004)
/* 0527DC 80052C2C 00001025 */  move        $v0, $zero
/* 0527E0 80052C30 ADED0004 */  sw          $t5, %lo(D_A4500004)($t7)
.L80052C34:
/* 0527E4 80052C34 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0527E8 80052C38 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0527EC 80052C3C 03E00008 */  jr          $ra
/* 0527F0 80052C40 00000000 */   nop
/* 0527F4 80052C44 00000000 */  nop
/* 0527F8 80052C48 00000000 */  nop
/* 0527FC 80052C4C 00000000 */  nop
