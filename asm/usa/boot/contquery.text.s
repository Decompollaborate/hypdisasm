.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osContStartQuery # 0
/* 0517F0 80051C40 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0517F4 80051C44 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0517F8 80051C48 0C0160FC */  jal         __osSiGetAccess
/* 0517FC 80051C4C AFA40020 */   sw         $a0, 0x20($sp)
/* 051800 80051C50 3C0E8010 */  lui         $t6, %hi(__osContLastPoll)
/* 051804 80051C54 91CEDC50 */  lbu         $t6, %lo(__osContLastPoll)($t6)
/* 051808 80051C58 11C0000B */  beqz        $t6, .L80051C88
/* 05180C 80051C5C 00000000 */   nop
/* 051810 80051C60 0C0146DA */  jal         __osPackRequestData
/* 051814 80051C64 00002025 */   move       $a0, $zero
/* 051818 80051C68 3C058010 */  lui         $a1, %hi(__osContPifRam)
/* 05181C 80051C6C 24A5DC10 */  addiu       $a1, $a1, %lo(__osContPifRam)
/* 051820 80051C70 0C016118 */  jal         __osSiRawStartDma
/* 051824 80051C74 24040001 */   addiu      $a0, $zero, 0x1
/* 051828 80051C78 8FA40020 */  lw          $a0, 0x20($sp)
/* 05182C 80051C7C 00002825 */  move        $a1, $zero
/* 051830 80051C80 0C014554 */  jal         osRecvMesg
/* 051834 80051C84 24060001 */   addiu      $a2, $zero, 0x1
.L80051C88:
/* 051838 80051C88 3C058010 */  lui         $a1, %hi(__osContPifRam)
/* 05183C 80051C8C 24A5DC10 */  addiu       $a1, $a1, %lo(__osContPifRam)
/* 051840 80051C90 0C016118 */  jal         __osSiRawStartDma
/* 051844 80051C94 00002025 */   move       $a0, $zero
/* 051848 80051C98 3C018010 */  lui         $at, %hi(__osContLastPoll)
/* 05184C 80051C9C AFA2001C */  sw          $v0, 0x1c($sp)
/* 051850 80051CA0 0C01610D */  jal         __osSiRelAccess
/* 051854 80051CA4 A020DC50 */   sb         $zero, %lo(__osContLastPoll)($at)
/* 051858 80051CA8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 05185C 80051CAC 8FA2001C */  lw          $v0, 0x1c($sp)
/* 051860 80051CB0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 051864 80051CB4 03E00008 */  jr          $ra
/* 051868 80051CB8 00000000 */   nop

glabel osContGetQuery # 1
/* 05186C 80051CBC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 051870 80051CC0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 051874 80051CC4 00802825 */  move        $a1, $a0
/* 051878 80051CC8 0C0146AF */  jal         __osContGetInitData
/* 05187C 80051CCC 27A4001F */   addiu      $a0, $sp, 0x1f
/* 051880 80051CD0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 051884 80051CD4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 051888 80051CD8 03E00008 */  jr          $ra
/* 05188C 80051CDC 00000000 */   nop
