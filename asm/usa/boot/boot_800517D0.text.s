.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800517D0 # 0
/* 051380 800517D0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 051384 800517D4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 051388 800517D8 AFA40020 */  sw          $a0, 0x20($sp)
/* 05138C 800517DC 0C0160FC */  jal         __osSiGetAccess
/* 051390 800517E0 AFA50024 */   sw         $a1, 0x24($sp)
/* 051394 800517E4 3C0E8010 */  lui         $t6, %hi(__osContLastPoll)
/* 051398 800517E8 91CEDC50 */  lbu         $t6, %lo(__osContLastPoll)($t6)
/* 05139C 800517EC 240100FF */  addiu       $at, $zero, 0xff
/* 0513A0 800517F0 11C10020 */  beq         $t6, $at, .L80051874
/* 0513A4 800517F4 00000000 */   nop
/* 0513A8 800517F8 0C014630 */  jal         func_800518C0
/* 0513AC 800517FC 00000000 */   nop
/* 0513B0 80051800 3C058010 */  lui         $a1, %hi(D_800FDC10)
/* 0513B4 80051804 24A5DC10 */  addiu       $a1, $a1, %lo(D_800FDC10)
/* 0513B8 80051808 0C016118 */  jal         __osSiRawStartDma
/* 0513BC 8005180C 24040001 */   addiu      $a0, $zero, 0x1
/* 0513C0 80051810 8FA40020 */  lw          $a0, 0x20($sp)
/* 0513C4 80051814 00002825 */  move        $a1, $zero
/* 0513C8 80051818 0C014554 */  jal         osRecvMesg
/* 0513CC 8005181C 24060001 */   addiu      $a2, $zero, 0x1
/* 0513D0 80051820 3C058010 */  lui         $a1, %hi(D_800FDC10)
/* 0513D4 80051824 24A5DC10 */  addiu       $a1, $a1, %lo(D_800FDC10)
/* 0513D8 80051828 0C016118 */  jal         __osSiRawStartDma
/* 0513DC 8005182C 00002025 */   move       $a0, $zero
/* 0513E0 80051830 8FA40020 */  lw          $a0, 0x20($sp)
/* 0513E4 80051834 00002825 */  move        $a1, $zero
/* 0513E8 80051838 0C014554 */  jal         osRecvMesg
/* 0513EC 8005183C 24060001 */   addiu      $a2, $zero, 0x1
/* 0513F0 80051840 0C0146DA */  jal         func_80051B68
/* 0513F4 80051844 240400FF */   addiu      $a0, $zero, 0xff
/* 0513F8 80051848 3C058010 */  lui         $a1, %hi(D_800FDC10)
/* 0513FC 8005184C 24A5DC10 */  addiu       $a1, $a1, %lo(D_800FDC10)
/* 051400 80051850 0C016118 */  jal         __osSiRawStartDma
/* 051404 80051854 24040001 */   addiu      $a0, $zero, 0x1
/* 051408 80051858 8FA40020 */  lw          $a0, 0x20($sp)
/* 05140C 8005185C 00002825 */  move        $a1, $zero
/* 051410 80051860 0C014554 */  jal         osRecvMesg
/* 051414 80051864 24060001 */   addiu      $a2, $zero, 0x1
/* 051418 80051868 240F00FF */  addiu       $t7, $zero, 0xff
/* 05141C 8005186C 3C018010 */  lui         $at, %hi(__osContLastPoll)
/* 051420 80051870 A02FDC50 */  sb          $t7, %lo(__osContLastPoll)($at)
.L80051874:
/* 051424 80051874 3C058010 */  lui         $a1, %hi(D_800FDC10)
/* 051428 80051878 24A5DC10 */  addiu       $a1, $a1, %lo(D_800FDC10)
/* 05142C 8005187C 0C016118 */  jal         __osSiRawStartDma
/* 051430 80051880 00002025 */   move       $a0, $zero
/* 051434 80051884 AFA20018 */  sw          $v0, 0x18($sp)
/* 051438 80051888 8FA40020 */  lw          $a0, 0x20($sp)
/* 05143C 8005188C 00002825 */  move        $a1, $zero
/* 051440 80051890 0C014554 */  jal         osRecvMesg
/* 051444 80051894 24060001 */   addiu      $a2, $zero, 0x1
/* 051448 80051898 27A4001F */  addiu       $a0, $sp, 0x1f
/* 05144C 8005189C 0C0146AF */  jal         func_80051ABC
/* 051450 800518A0 8FA50024 */   lw         $a1, 0x24($sp)
/* 051454 800518A4 0C01610D */  jal         __osSiRelAccess
/* 051458 800518A8 00000000 */   nop
/* 05145C 800518AC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 051460 800518B0 8FA20018 */  lw          $v0, 0x18($sp)
/* 051464 800518B4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 051468 800518B8 03E00008 */  jr          $ra
/* 05146C 800518BC 00000000 */   nop

glabel func_800518C0 # 1
/* 051470 800518C0 3C038010 */  lui         $v1, %hi(D_800FDC10)
/* 051474 800518C4 2463DC10 */  addiu       $v1, $v1, %lo(D_800FDC10)
/* 051478 800518C8 240E0001 */  addiu       $t6, $zero, 0x1
/* 05147C 800518CC AC6E003C */  sw          $t6, 0x3c($v1)
/* 051480 800518D0 3C028010 */  lui         $v0, %hi(D_800FDC10 + 0x1)
/* 051484 800518D4 240300FD */  addiu       $v1, $zero, 0xfd
/* 051488 800518D8 2442DC11 */  addiu       $v0, $v0, %lo(D_800FDC10 + 0x1)
/* 05148C 800518DC 3C018010 */  lui         $at, %hi(D_800FDC10)
/* 051490 800518E0 A023DC10 */  sb          $v1, %lo(D_800FDC10)($at)
/* 051494 800518E4 240F00FE */  addiu       $t7, $zero, 0xfe
/* 051498 800518E8 A0430002 */  sb          $v1, 0x2($v0)
/* 05149C 800518EC A0430001 */  sb          $v1, 0x1($v0)
/* 0514A0 800518F0 A0430000 */  sb          $v1, 0x0($v0)
/* 0514A4 800518F4 24420003 */  addiu       $v0, $v0, 0x3
/* 0514A8 800518F8 03E00008 */  jr          $ra
/* 0514AC 800518FC A04F0000 */   sb         $t7, 0x0($v0)

glabel func_80051900 # 2
/* 0514B0 80051900 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0514B4 80051904 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0514B8 80051908 0C0160FC */  jal         __osSiGetAccess
/* 0514BC 8005190C AFA40018 */   sw         $a0, 0x18($sp)
/* 0514C0 80051910 93A2001B */  lbu         $v0, 0x1b($sp)
/* 0514C4 80051914 240E0004 */  addiu       $t6, $zero, 0x4
/* 0514C8 80051918 240F00FE */  addiu       $t7, $zero, 0xfe
/* 0514CC 8005191C 28410005 */  slti        $at, $v0, 0x5
/* 0514D0 80051920 14200003 */  bnez        $at, .L80051930
/* 0514D4 80051924 3C018010 */   lui        $at, %hi(D_800FDC51)
/* 0514D8 80051928 10000003 */  b           .L80051938
/* 0514DC 8005192C A02EDC51 */   sb         $t6, %lo(D_800FDC51)($at)
.L80051930:
/* 0514E0 80051930 3C018010 */  lui         $at, %hi(D_800FDC51)
/* 0514E4 80051934 A022DC51 */  sb          $v0, %lo(D_800FDC51)($at)
.L80051938:
/* 0514E8 80051938 3C018010 */  lui         $at, %hi(__osContLastPoll)
/* 0514EC 8005193C 0C01610D */  jal         __osSiRelAccess
/* 0514F0 80051940 A02FDC50 */   sb         $t7, %lo(__osContLastPoll)($at)
/* 0514F4 80051944 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0514F8 80051948 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0514FC 8005194C 00001025 */  move        $v0, $zero
/* 051500 80051950 03E00008 */  jr          $ra
/* 051504 80051954 00000000 */   nop
/* 051508 80051958 00000000 */  nop
/* 05150C 8005195C 00000000 */  nop
