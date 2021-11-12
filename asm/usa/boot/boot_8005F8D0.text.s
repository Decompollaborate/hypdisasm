.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005F8D0 # 0
/* 05F480 8005F8D0 00A6001A */  div         $zero, $a1, $a2
/* 05F484 8005F8D4 00001012 */  mflo        $v0
/* 05F488 8005F8D8 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 05F48C 8005F8DC 14C00002 */  bne         $a2, $zero, .L8005F8E8
/* 05F490 8005F8E0 00000000 */   nop
/* 05F494 8005F8E4 0007000D */  break       7
.L8005F8E8:
/* 05F498 8005F8E8 2401FFFF */  addiu       $at, $zero, -0x1
/* 05F49C 8005F8EC 14C10004 */  bne         $a2, $at, .L8005F900
/* 05F4A0 8005F8F0 3C018000 */   lui        $at, 0x8000
/* 05F4A4 8005F8F4 14A10002 */  bne         $a1, $at, .L8005F900
/* 05F4A8 8005F8F8 00000000 */   nop
/* 05F4AC 8005F8FC 0006000D */  break       6
.L8005F900:
/* 05F4B0 8005F900 00C20019 */  multu       $a2, $v0
/* 05F4B4 8005F904 AFA20000 */  sw          $v0, 0x0($sp)
/* 05F4B8 8005F908 27AF0000 */  addiu       $t7, $sp, 0x0
/* 05F4BC 8005F90C 00007012 */  mflo        $t6
/* 05F4C0 8005F910 00AE1823 */  subu        $v1, $a1, $t6
/* 05F4C4 8005F914 04410008 */  bgez        $v0, .L8005F938
/* 05F4C8 8005F918 AFA30004 */   sw         $v1, 0x4($sp)
/* 05F4CC 8005F91C AFA20000 */  sw          $v0, 0x0($sp)
/* 05F4D0 8005F920 18600005 */  blez        $v1, .L8005F938
/* 05F4D4 8005F924 AFA30004 */   sw         $v1, 0x4($sp)
/* 05F4D8 8005F928 24420001 */  addiu       $v0, $v0, 0x1
/* 05F4DC 8005F92C 00661823 */  subu        $v1, $v1, $a2
/* 05F4E0 8005F930 AFA30004 */  sw          $v1, 0x4($sp)
/* 05F4E4 8005F934 AFA20000 */  sw          $v0, 0x0($sp)
.L8005F938:
/* 05F4E8 8005F938 8DE10000 */  lw          $at, 0x0($t7)
/* 05F4EC 8005F93C 00801025 */  move        $v0, $a0
/* 05F4F0 8005F940 AC810000 */  sw          $at, 0x0($a0)
/* 05F4F4 8005F944 8DE80004 */  lw          $t0, 0x4($t7)
/* 05F4F8 8005F948 27BD0008 */  addiu       $sp, $sp, 0x8
/* 05F4FC 8005F94C 03E00008 */  jr          $ra
/* 05F500 8005F950 AC880004 */   sw         $t0, 0x4($a0)

glabel func_8005F954 # 1
/* 05F504 8005F954 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 05F508 8005F958 AFA40030 */  sw          $a0, 0x30($sp)
/* 05F50C 8005F95C AFBF0014 */  sw          $ra, 0x14($sp)
/* 05F510 8005F960 AFA60038 */  sw          $a2, 0x38($sp)
/* 05F514 8005F964 AFA7003C */  sw          $a3, 0x3c($sp)
/* 05F518 8005F968 00C02025 */  move        $a0, $a2
/* 05F51C 8005F96C 00E02825 */  move        $a1, $a3
/* 05F520 8005F970 8FA70044 */  lw          $a3, 0x44($sp)
/* 05F524 8005F974 0C014917 */  jal         __ll_div
/* 05F528 8005F978 8FA60040 */   lw         $a2, 0x40($sp)
/* 05F52C 8005F97C AFA20020 */  sw          $v0, 0x20($sp)
/* 05F530 8005F980 AFA30024 */  sw          $v1, 0x24($sp)
/* 05F534 8005F984 8FA40040 */  lw          $a0, 0x40($sp)
/* 05F538 8005F988 8FA50044 */  lw          $a1, 0x44($sp)
/* 05F53C 8005F98C 00403025 */  move        $a2, $v0
/* 05F540 8005F990 0C01492E */  jal         __ll_mul
/* 05F544 8005F994 00603825 */   move       $a3, $v1
/* 05F548 8005F998 8FAE0038 */  lw          $t6, 0x38($sp)
/* 05F54C 8005F99C 8FAF003C */  lw          $t7, 0x3c($sp)
/* 05F550 8005F9A0 8FA80020 */  lw          $t0, 0x20($sp)
/* 05F554 8005F9A4 01C2C023 */  subu        $t8, $t6, $v0
/* 05F558 8005F9A8 01E3082B */  sltu        $at, $t7, $v1
/* 05F55C 8005F9AC 0301C023 */  subu        $t8, $t8, $at
/* 05F560 8005F9B0 01E3C823 */  subu        $t9, $t7, $v1
/* 05F564 8005F9B4 AFB9002C */  sw          $t9, 0x2c($sp)
/* 05F568 8005F9B8 AFB80028 */  sw          $t8, 0x28($sp)
/* 05F56C 8005F9BC 1D000017 */  bgtz        $t0, .L8005FA1C
/* 05F570 8005F9C0 8FA90024 */   lw         $t1, 0x24($sp)
/* 05F574 8005F9C4 05000003 */  bltz        $t0, .L8005F9D4
/* 05F578 8005F9C8 00000000 */   nop
/* 05F57C 8005F9CC 10000014 */  b           .L8005FA20
/* 05F580 8005F9D0 27A80020 */   addiu      $t0, $sp, 0x20
.L8005F9D4:
/* 05F584 8005F9D4 07020012 */  bltzl       $t8, .L8005FA20
/* 05F588 8005F9D8 27A80020 */   addiu      $t0, $sp, 0x20
/* 05F58C 8005F9DC 1F000003 */  bgtz        $t8, .L8005F9EC
/* 05F590 8005F9E0 252B0001 */   addiu      $t3, $t1, 0x1
/* 05F594 8005F9E4 5320000E */  beql        $t9, $zero, .L8005FA20
/* 05F598 8005F9E8 27A80020 */   addiu      $t0, $sp, 0x20
.L8005F9EC:
/* 05F59C 8005F9EC 8FAC0040 */  lw          $t4, 0x40($sp)
/* 05F5A0 8005F9F0 8FAD0044 */  lw          $t5, 0x44($sp)
/* 05F5A4 8005F9F4 2D610001 */  sltiu       $at, $t3, 0x1
/* 05F5A8 8005F9F8 01015021 */  addu        $t2, $t0, $at
/* 05F5AC 8005F9FC 030C7023 */  subu        $t6, $t8, $t4
/* 05F5B0 8005FA00 032D082B */  sltu        $at, $t9, $t5
/* 05F5B4 8005FA04 01C17023 */  subu        $t6, $t6, $at
/* 05F5B8 8005FA08 032D7823 */  subu        $t7, $t9, $t5
/* 05F5BC 8005FA0C AFAA0020 */  sw          $t2, 0x20($sp)
/* 05F5C0 8005FA10 AFAB0024 */  sw          $t3, 0x24($sp)
/* 05F5C4 8005FA14 AFAF002C */  sw          $t7, 0x2c($sp)
/* 05F5C8 8005FA18 AFAE0028 */  sw          $t6, 0x28($sp)
.L8005FA1C:
/* 05F5CC 8005FA1C 27A80020 */  addiu       $t0, $sp, 0x20
.L8005FA20:
/* 05F5D0 8005FA20 8FA20030 */  lw          $v0, 0x30($sp)
/* 05F5D4 8005FA24 8D010000 */  lw          $at, 0x0($t0)
/* 05F5D8 8005FA28 AC410000 */  sw          $at, 0x0($v0)
/* 05F5DC 8005FA2C 8D0B0004 */  lw          $t3, 0x4($t0)
/* 05F5E0 8005FA30 AC4B0004 */  sw          $t3, 0x4($v0)
/* 05F5E4 8005FA34 8D010008 */  lw          $at, 0x8($t0)
/* 05F5E8 8005FA38 AC410008 */  sw          $at, 0x8($v0)
/* 05F5EC 8005FA3C 8D0B000C */  lw          $t3, 0xc($t0)
/* 05F5F0 8005FA40 AC4B000C */  sw          $t3, 0xc($v0)
/* 05F5F4 8005FA44 8FBF0014 */  lw          $ra, 0x14($sp)
/* 05F5F8 8005FA48 27BD0030 */  addiu       $sp, $sp, 0x30
/* 05F5FC 8005FA4C 03E00008 */  jr          $ra
/* 05F600 8005FA50 00000000 */   nop
/* 05F604 8005FA54 00000000 */  nop
/* 05F608 8005FA58 00000000 */  nop
/* 05F60C 8005FA5C 00000000 */  nop
