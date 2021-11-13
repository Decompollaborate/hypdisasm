.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80058510 # 0
/* 0580C0 80058510 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 0580C4 80058514 AFA40038 */  sw          $a0, 0x38($sp)
/* 0580C8 80058518 8FAE0038 */  lw          $t6, 0x38($sp)
/* 0580CC 8005851C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0580D0 80058520 AFA60040 */  sw          $a2, 0x40($sp)
/* 0580D4 80058524 AFA70044 */  sw          $a3, 0x44($sp)
/* 0580D8 80058528 ADC00000 */  sw          $zero, 0x0($t6)
/* 0580DC 8005852C 8FAF0038 */  lw          $t7, 0x38($sp)
/* 0580E0 80058530 ADE00004 */  sw          $zero, 0x4($t7)
/* 0580E4 80058534 8FA80038 */  lw          $t0, 0x38($sp)
/* 0580E8 80058538 8FB9004C */  lw          $t9, 0x4c($sp)
/* 0580EC 8005853C 8FB80048 */  lw          $t8, 0x48($sp)
/* 0580F0 80058540 AD19000C */  sw          $t9, 0xc($t0)
/* 0580F4 80058544 AD180008 */  sw          $t8, 0x8($t0)
/* 0580F8 80058548 8FAA0040 */  lw          $t2, 0x40($sp)
/* 0580FC 8005854C 8FAB0044 */  lw          $t3, 0x44($sp)
/* 058100 80058550 15400003 */  bne         $t2, $zero, .L80058560
/* 058104 80058554 00000000 */   nop
/* 058108 80058558 11600005 */  beq         $t3, $zero, .L80058570
/* 05810C 8005855C 00000000 */   nop
.L80058560:
/* 058110 80058560 8FA90038 */  lw          $t1, 0x38($sp)
/* 058114 80058564 AD2A0010 */  sw          $t2, 0x10($t1)
/* 058118 80058568 10000006 */  b           .L80058584
/* 05811C 8005856C AD2B0014 */   sw         $t3, 0x14($t1)
.L80058570:
/* 058120 80058570 8FAE0038 */  lw          $t6, 0x38($sp)
/* 058124 80058574 8FAC0048 */  lw          $t4, 0x48($sp)
/* 058128 80058578 8FAD004C */  lw          $t5, 0x4c($sp)
/* 05812C 8005857C ADCC0010 */  sw          $t4, 0x10($t6)
/* 058130 80058580 ADCD0014 */  sw          $t5, 0x14($t6)
.L80058584:
/* 058134 80058584 8FAF0050 */  lw          $t7, 0x50($sp)
/* 058138 80058588 8FB80038 */  lw          $t8, 0x38($sp)
/* 05813C 8005858C AF0F0018 */  sw          $t7, 0x18($t8)
/* 058140 80058590 8FA80038 */  lw          $t0, 0x38($sp)
/* 058144 80058594 8FB90054 */  lw          $t9, 0x54($sp)
/* 058148 80058598 0C015FFC */  jal         __osDisableInt
/* 05814C 8005859C AD19001C */   sw         $t9, 0x1c($t0)
/* 058150 800585A0 3C0A800A */  lui         $t2, %hi(D_8009F8D0)
/* 058154 800585A4 8D4AF8D0 */  lw          $t2, %lo(D_8009F8D0)($t2)
/* 058158 800585A8 AFA20020 */  sw          $v0, 0x20($sp)
/* 05815C 800585AC 8D4B0000 */  lw          $t3, 0x0($t2)
/* 058160 800585B0 116A0028 */  beq         $t3, $t2, .L80058654
/* 058164 800585B4 00000000 */   nop
/* 058168 800585B8 3C09800A */  lui         $t1, %hi(D_8009F8D0)
/* 05816C 800585BC 8D29F8D0 */  lw          $t1, %lo(D_8009F8D0)($t1)
/* 058170 800585C0 8D2C0000 */  lw          $t4, 0x0($t1)
/* 058174 800585C4 0C014CB8 */  jal         func_800532E0
/* 058178 800585C8 AFAC002C */   sw         $t4, 0x2c($sp)
/* 05817C 800585CC AFA20028 */  sw          $v0, 0x28($sp)
/* 058180 800585D0 3C0E8010 */  lui         $t6, %hi(D_80100360)
/* 058184 800585D4 8DCE0360 */  lw          $t6, %lo(D_80100360)($t6)
/* 058188 800585D8 8FAD0028 */  lw          $t5, 0x28($sp)
/* 05818C 800585DC 8FA8002C */  lw          $t0, 0x2c($sp)
/* 058190 800585E0 24180000 */  addiu       $t8, $zero, 0x0
/* 058194 800585E4 01AE7823 */  subu        $t7, $t5, $t6
/* 058198 800585E8 AFAF0024 */  sw          $t7, 0x24($sp)
/* 05819C 800585EC 8D0A0010 */  lw          $t2, 0x10($t0)
/* 0581A0 800585F0 01E0C825 */  move        $t9, $t7
/* 0581A4 800585F4 8D0B0014 */  lw          $t3, 0x14($t0)
/* 0581A8 800585F8 0158082B */  sltu        $at, $t2, $t8
/* 0581AC 800585FC 14200010 */  bne         $at, $zero, .L80058640
/* 0581B0 80058600 030A082B */   sltu       $at, $t8, $t2
/* 0581B4 80058604 14200003 */  bne         $at, $zero, .L80058614
/* 0581B8 80058608 032B082B */   sltu       $at, $t9, $t3
/* 0581BC 8005860C 1020000C */  beq         $at, $zero, .L80058640
/* 0581C0 80058610 00000000 */   nop
.L80058614:
/* 0581C4 80058614 25090010 */  addiu       $t1, $t0, 0x10
/* 0581C8 80058618 AFA9001C */  sw          $t1, 0x1c($sp)
/* 0581CC 8005861C 8D0D0014 */  lw          $t5, 0x14($t0)
/* 0581D0 80058620 8D0C0010 */  lw          $t4, 0x10($t0)
/* 0581D4 80058624 01B9082B */  sltu        $at, $t5, $t9
/* 0581D8 80058628 01987023 */  subu        $t6, $t4, $t8
/* 0581DC 8005862C 01C17023 */  subu        $t6, $t6, $at
/* 0581E0 80058630 01B97823 */  subu        $t7, $t5, $t9
/* 0581E4 80058634 AD0F0014 */  sw          $t7, 0x14($t0)
/* 0581E8 80058638 10000006 */  b           .L80058654
/* 0581EC 8005863C AD0E0010 */   sw         $t6, 0x10($t0)
.L80058640:
/* 0581F0 80058640 8FA9002C */  lw          $t1, 0x2c($sp)
/* 0581F4 80058644 240A0000 */  addiu       $t2, $zero, 0x0
/* 0581F8 80058648 240B0001 */  addiu       $t3, $zero, 0x1
/* 0581FC 8005864C AD2B0014 */  sw          $t3, 0x14($t1)
/* 058200 80058650 AD2A0010 */  sw          $t2, 0x10($t1)
.L80058654:
/* 058204 80058654 0C016359 */  jal         func_80058D64
/* 058208 80058658 8FA40038 */   lw         $a0, 0x38($sp)
/* 05820C 8005865C 3C0C800A */  lui         $t4, %hi(D_8009F8D0)
/* 058210 80058660 8D8CF8D0 */  lw          $t4, %lo(D_8009F8D0)($t4)
/* 058214 80058664 AFA20030 */  sw          $v0, 0x30($sp)
/* 058218 80058668 AFA30034 */  sw          $v1, 0x34($sp)
/* 05821C 8005866C 8D8D0000 */  lw          $t5, 0x0($t4)
/* 058220 80058670 8DA40010 */  lw          $a0, 0x10($t5)
/* 058224 80058674 0C016331 */  jal         func_80058CC4
/* 058228 80058678 8DA50014 */   lw         $a1, 0x14($t5)
/* 05822C 8005867C 0C016018 */  jal         __osRestoreInt
/* 058230 80058680 8FA40020 */   lw         $a0, 0x20($sp)
/* 058234 80058684 8FBF0014 */  lw          $ra, 0x14($sp)
/* 058238 80058688 27BD0038 */  addiu       $sp, $sp, 0x38
/* 05823C 8005868C 00001025 */  move        $v0, $zero
/* 058240 80058690 03E00008 */  jr          $ra
/* 058244 80058694 00000000 */   nop
/* 058248 80058698 00000000 */  nop
/* 05824C 8005869C 00000000 */  nop
