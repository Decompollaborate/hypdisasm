.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osStartThread # 0
/* 0507A0 80050BF0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0507A4 80050BF4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 0507A8 80050BF8 AFA40028 */  sw          $a0, 0x28($sp)
/* 0507AC 80050BFC AFB10018 */  sw          $s1, 0x18($sp)
/* 0507B0 80050C00 0C015FFC */  jal         __osDisableInt
/* 0507B4 80050C04 AFB00014 */   sw         $s0, 0x14($sp)
/* 0507B8 80050C08 8FAE0028 */  lw          $t6, 0x28($sp)
/* 0507BC 80050C0C 24010001 */  addiu       $at, $zero, 0x1
/* 0507C0 80050C10 00408025 */  move        $s0, $v0
/* 0507C4 80050C14 95D10010 */  lhu         $s1, 0x10($t6)
/* 0507C8 80050C18 1221000C */  beq         $s1, $at, .L80050C4C
/* 0507CC 80050C1C 24010008 */   addiu      $at, $zero, 0x8
/* 0507D0 80050C20 1621002A */  bne         $s1, $at, .L80050CCC
/* 0507D4 80050C24 00000000 */   nop
/* 0507D8 80050C28 8FB80028 */  lw          $t8, 0x28($sp)
/* 0507DC 80050C2C 240F0002 */  addiu       $t7, $zero, 0x2
/* 0507E0 80050C30 3C04800A */  lui         $a0, %hi(__osRunQueue)
/* 0507E4 80050C34 A70F0010 */  sh          $t7, 0x10($t8)
/* 0507E8 80050C38 8FA50028 */  lw          $a1, 0x28($sp)
/* 0507EC 80050C3C 0C015F51 */  jal         __osEnqueueThread
/* 0507F0 80050C40 2484F898 */   addiu      $a0, $a0, %lo(__osRunQueue)
/* 0507F4 80050C44 10000021 */  b           .L80050CCC
/* 0507F8 80050C48 00000000 */   nop
.L80050C4C:
/* 0507FC 80050C4C 8FB90028 */  lw          $t9, 0x28($sp)
/* 050800 80050C50 8F280008 */  lw          $t0, 0x8($t9)
/* 050804 80050C54 11000005 */  beq         $t0, $zero, .L80050C6C
/* 050808 80050C58 00000000 */   nop
/* 05080C 80050C5C 3C09800A */  lui         $t1, %hi(__osRunQueue)
/* 050810 80050C60 2529F898 */  addiu       $t1, $t1, %lo(__osRunQueue)
/* 050814 80050C64 1509000A */  bne         $t0, $t1, .L80050C90
/* 050818 80050C68 00000000 */   nop
.L80050C6C:
/* 05081C 80050C6C 8FAB0028 */  lw          $t3, 0x28($sp)
/* 050820 80050C70 240A0002 */  addiu       $t2, $zero, 0x2
/* 050824 80050C74 3C04800A */  lui         $a0, %hi(__osRunQueue)
/* 050828 80050C78 A56A0010 */  sh          $t2, 0x10($t3)
/* 05082C 80050C7C 8FA50028 */  lw          $a1, 0x28($sp)
/* 050830 80050C80 0C015F51 */  jal         __osEnqueueThread
/* 050834 80050C84 2484F898 */   addiu      $a0, $a0, %lo(__osRunQueue)
/* 050838 80050C88 10000010 */  b           .L80050CCC
/* 05083C 80050C8C 00000000 */   nop
.L80050C90:
/* 050840 80050C90 8FAD0028 */  lw          $t5, 0x28($sp)
/* 050844 80050C94 240C0008 */  addiu       $t4, $zero, 0x8
/* 050848 80050C98 A5AC0010 */  sh          $t4, 0x10($t5)
/* 05084C 80050C9C 8FAE0028 */  lw          $t6, 0x28($sp)
/* 050850 80050CA0 8DC40008 */  lw          $a0, 0x8($t6)
/* 050854 80050CA4 0C015F51 */  jal         __osEnqueueThread
/* 050858 80050CA8 01C02825 */   move       $a1, $t6
/* 05085C 80050CAC 8FAF0028 */  lw          $t7, 0x28($sp)
/* 050860 80050CB0 0C015F63 */  jal         __osPopThread
/* 050864 80050CB4 8DE40008 */   lw         $a0, 0x8($t7)
/* 050868 80050CB8 00408825 */  move        $s1, $v0
/* 05086C 80050CBC 3C04800A */  lui         $a0, %hi(__osRunQueue)
/* 050870 80050CC0 2484F898 */  addiu       $a0, $a0, %lo(__osRunQueue)
/* 050874 80050CC4 0C015F51 */  jal         __osEnqueueThread
/* 050878 80050CC8 02202825 */   move       $a1, $s1
.L80050CCC:
/* 05087C 80050CCC 3C18800A */  lui         $t8, %hi(D_8009F8A0)
/* 050880 80050CD0 8F18F8A0 */  lw          $t8, %lo(D_8009F8A0)($t8)
/* 050884 80050CD4 17000005 */  bne         $t8, $zero, .L80050CEC
/* 050888 80050CD8 00000000 */   nop
/* 05088C 80050CDC 0C015F69 */  jal         __osDispatchThread
/* 050890 80050CE0 00000000 */   nop
/* 050894 80050CE4 1000000F */  b           .L80050D24
/* 050898 80050CE8 00000000 */   nop
.L80050CEC:
/* 05089C 80050CEC 3C19800A */  lui         $t9, %hi(D_8009F8A0)
/* 0508A0 80050CF0 3C09800A */  lui         $t1, %hi(__osRunQueue)
/* 0508A4 80050CF4 8D29F898 */  lw          $t1, %lo(__osRunQueue)($t1)
/* 0508A8 80050CF8 8F39F8A0 */  lw          $t9, %lo(D_8009F8A0)($t9)
/* 0508AC 80050CFC 8D2A0004 */  lw          $t2, 0x4($t1)
/* 0508B0 80050D00 8F280004 */  lw          $t0, 0x4($t9)
/* 0508B4 80050D04 010A082A */  slt         $at, $t0, $t2
/* 0508B8 80050D08 10200006 */  beq         $at, $zero, .L80050D24
/* 0508BC 80050D0C 00000000 */   nop
/* 0508C0 80050D10 240B0002 */  addiu       $t3, $zero, 0x2
/* 0508C4 80050D14 3C04800A */  lui         $a0, %hi(__osRunQueue)
/* 0508C8 80050D18 A72B0010 */  sh          $t3, 0x10($t9)
/* 0508CC 80050D1C 0C015F11 */  jal         __osEnqueueAndYield
/* 0508D0 80050D20 2484F898 */   addiu      $a0, $a0, %lo(__osRunQueue)
.L80050D24:
/* 0508D4 80050D24 0C016018 */  jal         __osRestoreInt
/* 0508D8 80050D28 02002025 */   move       $a0, $s0
/* 0508DC 80050D2C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0508E0 80050D30 8FB00014 */  lw          $s0, 0x14($sp)
/* 0508E4 80050D34 8FB10018 */  lw          $s1, 0x18($sp)
/* 0508E8 80050D38 03E00008 */  jr          $ra
/* 0508EC 80050D3C 27BD0028 */   addiu      $sp, $sp, 0x28
