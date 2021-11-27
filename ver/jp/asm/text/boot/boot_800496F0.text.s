.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800496F0 # 0
/* 0492A0 800496F0 03E00008 */  jr          $ra
/* 0492A4 800496F4 00000000 */   nop

glabel func_800496F8 # 1
/* 0492A8 800496F8 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 0492AC 800496FC AFBF001C */  sw          $ra, 0x1c($sp)
/* 0492B0 80049700 AFB00018 */  sw          $s0, 0x18($sp)
/* 0492B4 80049704 AFA00044 */  sw          $zero, 0x44($sp)
/* 0492B8 80049708 84AE0000 */  lh          $t6, 0x0($a1)
/* 0492BC 8004970C 3C07800A */  lui         $a3, %hi(D_800A2E64)
/* 0492C0 80049710 00808025 */  move        $s0, $a0
/* 0492C4 80049714 A48E0016 */  sh          $t6, 0x16($a0)
/* 0492C8 80049718 90AF0004 */  lbu         $t7, 0x4($a1)
/* 0492CC 8004971C AC80000C */  sw          $zero, 0xc($a0)
/* 0492D0 80049720 00001825 */  move        $v1, $zero
/* 0492D4 80049724 A48F001A */  sh          $t7, 0x1a($a0)
/* 0492D8 80049728 84B80002 */  lh          $t8, 0x2($a1)
/* 0492DC 8004972C A4800014 */  sh          $zero, 0x14($a0)
/* 0492E0 80049730 AC800008 */  sw          $zero, 0x8($a0)
/* 0492E4 80049734 AC800010 */  sw          $zero, 0x10($a0)
/* 0492E8 80049738 A4980018 */  sh          $t8, 0x18($a0)
/* 0492EC 8004973C 8CE72E64 */  lw          $a3, %lo(D_800A2E64)($a3)
/* 0492F0 80049740 84A20000 */  lh          $v0, 0x0($a1)
/* 0492F4 80049744 8CE60020 */  lw          $a2, 0x20($a3)
/* 0492F8 80049748 10C0000C */  beqz        $a2, .L8004977C
/* 0492FC 8004974C 00C02025 */   move       $a0, $a2
/* 049300 80049750 AFA60044 */  sw          $a2, 0x44($sp)
/* 049304 80049754 AFA00024 */  sw          $zero, 0x24($sp)
/* 049308 80049758 0C014B8C */  jal         func_80052E30
/* 04930C 8004975C AFA6002C */   sw         $a2, 0x2c($sp)
/* 049310 80049760 3C05800A */  lui         $a1, %hi(D_800A2E64)
/* 049314 80049764 8CA52E64 */  lw          $a1, %lo(D_800A2E64)($a1)
/* 049318 80049768 8FA4002C */  lw          $a0, 0x2c($sp)
/* 04931C 8004976C 0C014B98 */  jal         func_80052E60
/* 049320 80049770 24A50018 */   addiu      $a1, $a1, 0x18
/* 049324 80049774 10000021 */  b           .L800497FC
/* 049328 80049778 8FA30024 */   lw         $v1, 0x24($sp)
.L8004977C:
/* 04932C 8004977C 8CE60010 */  lw          $a2, 0x10($a3)
/* 049330 80049780 10C0000C */  beqz        $a2, .L800497B4
/* 049334 80049784 00C02025 */   move       $a0, $a2
/* 049338 80049788 AFA60044 */  sw          $a2, 0x44($sp)
/* 04933C 8004978C AFA30024 */  sw          $v1, 0x24($sp)
/* 049340 80049790 0C014B8C */  jal         func_80052E30
/* 049344 80049794 AFA6002C */   sw         $a2, 0x2c($sp)
/* 049348 80049798 3C05800A */  lui         $a1, %hi(D_800A2E64)
/* 04934C 8004979C 8CA52E64 */  lw          $a1, %lo(D_800A2E64)($a1)
/* 049350 800497A0 8FA4002C */  lw          $a0, 0x2c($sp)
/* 049354 800497A4 0C014B98 */  jal         func_80052E60
/* 049358 800497A8 24A50018 */   addiu      $a1, $a1, 0x18
/* 04935C 800497AC 10000013 */  b           .L800497FC
/* 049360 800497B0 8FA30024 */   lw         $v1, 0x24($sp)
.L800497B4:
/* 049364 800497B4 8CE60018 */  lw          $a2, 0x18($a3)
/* 049368 800497B8 50C00011 */  beql        $a2, $zero, .L80049800
/* 04936C 800497BC 8FAB0044 */   lw         $t3, 0x44($sp)
/* 049370 800497C0 8CD90008 */  lw          $t9, 0x8($a2)
.L800497C4:
/* 049374 800497C4 87280016 */  lh          $t0, 0x16($t9)
/* 049378 800497C8 0048082A */  slt         $at, $v0, $t0
/* 04937C 800497CC 54200009 */  bnel        $at, $zero, .L800497F4
/* 049380 800497D0 8CC60000 */   lw         $a2, 0x0($a2)
/* 049384 800497D4 8CC90088 */  lw          $t1, 0x88($a2)
/* 049388 800497D8 55200006 */  bnel        $t1, $zero, .L800497F4
/* 04938C 800497DC 8CC60000 */   lw         $a2, 0x0($a2)
/* 049390 800497E0 AFA60044 */  sw          $a2, 0x44($sp)
/* 049394 800497E4 8CCA0008 */  lw          $t2, 0x8($a2)
/* 049398 800497E8 24030001 */  addiu       $v1, $zero, 0x1
/* 04939C 800497EC 85420016 */  lh          $v0, 0x16($t2)
/* 0493A0 800497F0 8CC60000 */  lw          $a2, 0x0($a2)
.L800497F4:
/* 0493A4 800497F4 54C0FFF3 */  bnel        $a2, $zero, .L800497C4
/* 0493A8 800497F8 8CD90008 */   lw         $t9, 0x8($a2)
.L800497FC:
/* 0493AC 800497FC 8FAB0044 */  lw          $t3, 0x44($sp)
.L80049800:
/* 0493B0 80049800 51600038 */  beql        $t3, $zero, .L800498E4
/* 0493B4 80049804 8FA20044 */   lw         $v0, 0x44($sp)
/* 0493B8 80049808 1060002E */  beqz        $v1, .L800498C4
/* 0493BC 8004980C 8FA90044 */   lw         $t1, 0x44($sp)
/* 0493C0 80049810 240C0200 */  addiu       $t4, $zero, 0x200
/* 0493C4 80049814 AD6C0088 */  sw          $t4, 0x88($t3)
/* 0493C8 80049818 8FAD0044 */  lw          $t5, 0x44($sp)
/* 0493CC 8004981C 8DAE0008 */  lw          $t6, 0x8($t5)
/* 0493D0 80049820 ADC00008 */  sw          $zero, 0x8($t6)
/* 0493D4 80049824 8DAF0008 */  lw          $t7, 0x8($t5)
/* 0493D8 80049828 ADE00010 */  sw          $zero, 0x10($t7)
/* 0493DC 8004982C ADB00008 */  sw          $s0, 0x8($t5)
/* 0493E0 80049830 8FB80044 */  lw          $t8, 0x44($sp)
/* 0493E4 80049834 0C01275C */  jal         func_80049D70
/* 0493E8 80049838 AE180008 */   sw         $t8, 0x8($s0)
/* 0493EC 8004983C 3C19800A */  lui         $t9, %hi(D_800A2E64)
/* 0493F0 80049840 8F392E64 */  lw          $t9, %lo(D_800A2E64)($t9)
/* 0493F4 80049844 2409000B */  addiu       $t1, $zero, 0xb
/* 0493F8 80049848 24050003 */  addiu       $a1, $zero, 0x3
/* 0493FC 8004984C 8F280028 */  lw          $t0, 0x28($t9)
/* 049400 80049850 A4490008 */  sh          $t1, 0x8($v0)
/* 049404 80049854 AC40000C */  sw          $zero, 0xc($v0)
/* 049408 80049858 AC480004 */  sw          $t0, 0x4($v0)
/* 04940C 8004985C 8FAA0044 */  lw          $t2, 0x44($sp)
/* 049410 80049860 00403025 */  move        $a2, $v0
/* 049414 80049864 8D4C0088 */  lw          $t4, 0x88($t2)
/* 049418 80049868 258BFFC0 */  addiu       $t3, $t4, -0x40
/* 04941C 8004986C AC4B0010 */  sw          $t3, 0x10($v0)
/* 049420 80049870 0C012910 */  jal         func_8004A440
/* 049424 80049874 8E040008 */   lw         $a0, 0x8($s0)
/* 049428 80049878 0C01275C */  jal         func_80049D70
/* 04942C 8004987C 00000000 */   nop
/* 049430 80049880 10400015 */  beqz        $v0, .L800498D8
/* 049434 80049884 00403025 */   move       $a2, $v0
/* 049438 80049888 3C0E800A */  lui         $t6, %hi(D_800A2E64)
/* 04943C 8004988C 8DCE2E64 */  lw          $t6, %lo(D_800A2E64)($t6)
/* 049440 80049890 8FAD0044 */  lw          $t5, 0x44($sp)
/* 049444 80049894 2408000F */  addiu       $t0, $zero, 0xf
/* 049448 80049898 8DCF0028 */  lw          $t7, 0x28($t6)
/* 04944C 8004989C 8DB80088 */  lw          $t8, 0x88($t5)
/* 049450 800498A0 A4480008 */  sh          $t0, 0x8($v0)
/* 049454 800498A4 AC400000 */  sw          $zero, 0x0($v0)
/* 049458 800498A8 01F8C821 */  addu        $t9, $t7, $t8
/* 04945C 800498AC AC590004 */  sw          $t9, 0x4($v0)
/* 049460 800498B0 8E040008 */  lw          $a0, 0x8($s0)
/* 049464 800498B4 0C012910 */  jal         func_8004A440
/* 049468 800498B8 24050003 */   addiu      $a1, $zero, 0x3
/* 04946C 800498BC 10000007 */  b           .L800498DC
/* 049470 800498C0 240B0001 */   addiu      $t3, $zero, 0x1
.L800498C4:
/* 049474 800498C4 AD200088 */  sw          $zero, 0x88($t1)
/* 049478 800498C8 8FAA0044 */  lw          $t2, 0x44($sp)
/* 04947C 800498CC AD500008 */  sw          $s0, 0x8($t2)
/* 049480 800498D0 8FAC0044 */  lw          $t4, 0x44($sp)
/* 049484 800498D4 AE0C0008 */  sw          $t4, 0x8($s0)
.L800498D8:
/* 049488 800498D8 240B0001 */  addiu       $t3, $zero, 0x1
.L800498DC:
/* 04948C 800498DC AE0B0010 */  sw          $t3, 0x10($s0)
/* 049490 800498E0 8FA20044 */  lw          $v0, 0x44($sp)
.L800498E4:
/* 049494 800498E4 8FBF001C */  lw          $ra, 0x1c($sp)
/* 049498 800498E8 8FB00018 */  lw          $s0, 0x18($sp)
/* 04949C 800498EC 0002702B */  sltu        $t6, $zero, $v0
/* 0494A0 800498F0 01C01025 */  move        $v0, $t6
/* 0494A4 800498F4 03E00008 */  jr          $ra
/* 0494A8 800498F8 27BD0048 */   addiu      $sp, $sp, 0x48
/* 0494AC 800498FC 00000000 */  nop