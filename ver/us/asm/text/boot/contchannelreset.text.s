.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osContChannelReset # 0
/* 0553D0 80055820 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0553D4 80055824 3C028010 */  lui         $v0, %hi(__osPfsPifRam)
/* 0553D8 80055828 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0553DC 8005582C 24420390 */  addiu       $v0, $v0, %lo(__osPfsPifRam)
/* 0553E0 80055830 AFA40028 */  sw          $a0, 0x28($sp)
/* 0553E4 80055834 AFA2001C */  sw          $v0, 0x1c($sp)
/* 0553E8 80055838 0C0160FC */  jal         __osSiGetAccess
/* 0553EC 8005583C AFA5002C */   sw         $a1, 0x2c($sp)
/* 0553F0 80055840 8FA5002C */  lw          $a1, 0x2c($sp)
/* 0553F4 80055844 3C078010 */  lui         $a3, %hi(__osPfsPifRam)
/* 0553F8 80055848 24E70390 */  addiu       $a3, $a3, %lo(__osPfsPifRam)
/* 0553FC 8005584C 240E0001 */  addiu       $t6, $zero, 0x1
/* 055400 80055850 8FA2001C */  lw          $v0, 0x1c($sp)
/* 055404 80055854 ACEE003C */  sw          $t6, 0x3c($a3)
/* 055408 80055858 18A00010 */  blez        $a1, .L8005589C
/* 05540C 8005585C 00001825 */   move       $v1, $zero
/* 055410 80055860 30A60003 */  andi        $a2, $a1, 0x3
/* 055414 80055864 10C00006 */  beqz        $a2, .L80055880
/* 055418 80055868 00C02025 */   move       $a0, $a2
.L8005586C:
/* 05541C 8005586C 24630001 */  addiu       $v1, $v1, 0x1
/* 055420 80055870 A0400000 */  sb          $zero, 0x0($v0)
/* 055424 80055874 1483FFFD */  bne         $a0, $v1, .L8005586C
/* 055428 80055878 24420001 */   addiu      $v0, $v0, 0x1
/* 05542C 8005587C 10650007 */  beq         $v1, $a1, .L8005589C
.L80055880:
/* 055430 80055880 24630004 */   addiu      $v1, $v1, 0x4
/* 055434 80055884 A0400001 */  sb          $zero, 0x1($v0)
/* 055438 80055888 A0400002 */  sb          $zero, 0x2($v0)
/* 05543C 8005588C A0400003 */  sb          $zero, 0x3($v0)
/* 055440 80055890 24420004 */  addiu       $v0, $v0, 0x4
/* 055444 80055894 1465FFFA */  bne         $v1, $a1, .L80055880
/* 055448 80055898 A040FFFC */   sb         $zero, -0x4($v0)
.L8005589C:
/* 05544C 8005589C 240F00FD */  addiu       $t7, $zero, 0xfd
/* 055450 800558A0 241800FE */  addiu       $t8, $zero, 0xfe
/* 055454 800558A4 A04F0000 */  sb          $t7, 0x0($v0)
/* 055458 800558A8 24420001 */  addiu       $v0, $v0, 0x1
/* 05545C 800558AC A0580000 */  sb          $t8, 0x0($v0)
/* 055460 800558B0 24040001 */  addiu       $a0, $zero, 0x1
/* 055464 800558B4 0C016118 */  jal         __osSiRawStartDma
/* 055468 800558B8 00E02825 */   move       $a1, $a3
/* 05546C 800558BC 8FA40028 */  lw          $a0, 0x28($sp)
/* 055470 800558C0 00002825 */  move        $a1, $zero
/* 055474 800558C4 0C014554 */  jal         osRecvMesg
/* 055478 800558C8 24060001 */   addiu      $a2, $zero, 0x1
/* 05547C 800558CC 3C058010 */  lui         $a1, %hi(__osPfsPifRam)
/* 055480 800558D0 24A50390 */  addiu       $a1, $a1, %lo(__osPfsPifRam)
/* 055484 800558D4 0C016118 */  jal         __osSiRawStartDma
/* 055488 800558D8 00002025 */   move       $a0, $zero
/* 05548C 800558DC AFA20020 */  sw          $v0, 0x20($sp)
/* 055490 800558E0 8FA40028 */  lw          $a0, 0x28($sp)
/* 055494 800558E4 00002825 */  move        $a1, $zero
/* 055498 800558E8 0C014554 */  jal         osRecvMesg
/* 05549C 800558EC 24060001 */   addiu      $a2, $zero, 0x1
/* 0554A0 800558F0 0C01610D */  jal         __osSiRelAccess
/* 0554A4 800558F4 00000000 */   nop
/* 0554A8 800558F8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0554AC 800558FC 8FA20020 */  lw          $v0, 0x20($sp)
/* 0554B0 80055900 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0554B4 80055904 03E00008 */  jr          $ra
/* 0554B8 80055908 00000000 */   nop
/* 0554BC 8005590C 00000000 */  nop
