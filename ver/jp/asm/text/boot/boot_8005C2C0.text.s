.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005C2C0 # 0
/* 05BE70 8005C2C0 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 05BE74 8005C2C4 8FAF0078 */  lw          $t7, 0x78($sp)
/* 05BE78 8005C2C8 AFB5002C */  sw          $s5, 0x2c($sp)
/* 05BE7C 8005C2CC AFB40028 */  sw          $s4, 0x28($sp)
/* 05BE80 8005C2D0 AFB1001C */  sw          $s1, 0x1c($sp)
/* 05BE84 8005C2D4 AFA60070 */  sw          $a2, 0x70($sp)
/* 05BE88 8005C2D8 30CEFFFF */  andi        $t6, $a2, 0xffff
/* 05BE8C 8005C2DC 24010001 */  addiu       $at, $zero, 0x1
/* 05BE90 8005C2E0 01C03025 */  move        $a2, $t6
/* 05BE94 8005C2E4 00A08825 */  move        $s1, $a1
/* 05BE98 8005C2E8 0080A825 */  move        $s5, $a0
/* 05BE9C 8005C2EC AFBF003C */  sw          $ra, 0x3c($sp)
/* 05BEA0 8005C2F0 AFBE0038 */  sw          $fp, 0x38($sp)
/* 05BEA4 8005C2F4 AFB70034 */  sw          $s7, 0x34($sp)
/* 05BEA8 8005C2F8 AFB60030 */  sw          $s6, 0x30($sp)
/* 05BEAC 8005C2FC AFB30024 */  sw          $s3, 0x24($sp)
/* 05BEB0 8005C300 AFB20020 */  sw          $s2, 0x20($sp)
/* 05BEB4 8005C304 AFB00018 */  sw          $s0, 0x18($sp)
/* 05BEB8 8005C308 AFA70074 */  sw          $a3, 0x74($sp)
/* 05BEBC 8005C30C 11E10008 */  beq         $t7, $at, .L8005C330
/* 05BEC0 8005C310 24140002 */   addiu      $s4, $zero, 0x2
/* 05BEC4 8005C314 29C10007 */  slti        $at, $t6, 0x7
/* 05BEC8 8005C318 50200006 */  beql        $at, $zero, .L8005C334
/* 05BECC 8005C31C 00C08025 */   move       $s0, $a2
/* 05BED0 8005C320 51C00004 */  beql        $t6, $zero, .L8005C334
/* 05BED4 8005C324 00C08025 */   move       $s0, $a2
/* 05BED8 8005C328 1000006C */  b           .L8005C4DC
/* 05BEDC 8005C32C 00001025 */   move       $v0, $zero
.L8005C330:
/* 05BEE0 8005C330 00C08025 */  move        $s0, $a2
.L8005C334:
/* 05BEE4 8005C334 0C0150EC */  jal         func_800543B0
/* 05BEE8 8005C338 A7A60072 */   sh         $a2, 0x72($sp)
/* 05BEEC 8005C33C 0010C0C3 */  sra         $t8, $s0, 3
/* 05BEF0 8005C340 0010C940 */  sll         $t9, $s0, 5
/* 05BEF4 8005C344 3C17800A */  lui         $s7, %hi(D_800A4D30)
/* 05BEF8 8005C348 3C168010 */  lui         $s6, %hi(D_80102380)
/* 05BEFC 8005C34C 3C138010 */  lui         $s3, %hi(D_80104A60)
/* 05BF00 8005C350 26734A60 */  addiu       $s3, $s3, %lo(D_80104A60)
/* 05BF04 8005C354 26D62380 */  addiu       $s6, $s6, %lo(D_80102380)
/* 05BF08 8005C358 26F74D30 */  addiu       $s7, $s7, %lo(D_800A4D30)
/* 05BF0C 8005C35C AFB90040 */  sw          $t9, 0x40($sp)
/* 05BF10 8005C360 AFB80044 */  sw          $t8, 0x44($sp)
/* 05BF14 8005C364 241E0003 */  addiu       $fp, $zero, 0x3
.L8005C368:
/* 05BF18 8005C368 92C80000 */  lbu         $t0, 0x0($s6)
/* 05BF1C 8005C36C 24010003 */  addiu       $at, $zero, 0x3
/* 05BF20 8005C370 02608025 */  move        $s0, $s3
/* 05BF24 8005C374 15010004 */  bne         $t0, $at, .L8005C388
/* 05BF28 8005C378 00001025 */   move       $v0, $zero
/* 05BF2C 8005C37C 8EE90000 */  lw          $t1, 0x0($s7)
/* 05BF30 8005C380 52290022 */  beql        $s1, $t1, .L8005C40C
/* 05BF34 8005C384 02718021 */   addu       $s0, $s3, $s1
.L8005C388:
/* 05BF38 8005C388 A2DE0000 */  sb          $fp, 0x0($s6)
/* 05BF3C 8005C38C 1A200010 */  blez        $s1, .L8005C3D0
/* 05BF40 8005C390 AEF10000 */   sw         $s1, 0x0($s7)
/* 05BF44 8005C394 32240003 */  andi        $a0, $s1, 0x3
/* 05BF48 8005C398 10800006 */  beqz        $a0, .L8005C3B4
/* 05BF4C 8005C39C 00801825 */   move       $v1, $a0
.L8005C3A0:
/* 05BF50 8005C3A0 24420001 */  addiu       $v0, $v0, 0x1
/* 05BF54 8005C3A4 A2000000 */  sb          $zero, 0x0($s0)
/* 05BF58 8005C3A8 1462FFFD */  bne         $v1, $v0, .L8005C3A0
/* 05BF5C 8005C3AC 26100001 */   addiu      $s0, $s0, 0x1
/* 05BF60 8005C3B0 10510007 */  beq         $v0, $s1, .L8005C3D0
.L8005C3B4:
/* 05BF64 8005C3B4 24420004 */   addiu      $v0, $v0, 0x4
/* 05BF68 8005C3B8 A2000000 */  sb          $zero, 0x0($s0)
/* 05BF6C 8005C3BC A2000001 */  sb          $zero, 0x1($s0)
/* 05BF70 8005C3C0 A2000002 */  sb          $zero, 0x2($s0)
/* 05BF74 8005C3C4 A2000003 */  sb          $zero, 0x3($s0)
/* 05BF78 8005C3C8 1451FFFA */  bne         $v0, $s1, .L8005C3B4
/* 05BF7C 8005C3CC 26100004 */   addiu      $s0, $s0, 0x4
.L8005C3D0:
/* 05BF80 8005C3D0 240A0001 */  addiu       $t2, $zero, 0x1
/* 05BF84 8005C3D4 AE6A003C */  sw          $t2, 0x3c($s3)
/* 05BF88 8005C3D8 240B00FF */  addiu       $t3, $zero, 0xff
/* 05BF8C 8005C3DC 240C0023 */  addiu       $t4, $zero, 0x23
/* 05BF90 8005C3E0 240D0001 */  addiu       $t5, $zero, 0x1
/* 05BF94 8005C3E4 240E00FF */  addiu       $t6, $zero, 0xff
/* 05BF98 8005C3E8 240F00FE */  addiu       $t7, $zero, 0xfe
/* 05BF9C 8005C3EC A20B0000 */  sb          $t3, 0x0($s0)
/* 05BFA0 8005C3F0 A20C0001 */  sb          $t4, 0x1($s0)
/* 05BFA4 8005C3F4 A20D0002 */  sb          $t5, 0x2($s0)
/* 05BFA8 8005C3F8 A21E0003 */  sb          $fp, 0x3($s0)
/* 05BFAC 8005C3FC A20E0026 */  sb          $t6, 0x26($s0)
/* 05BFB0 8005C400 10000002 */  b           .L8005C40C
/* 05BFB4 8005C404 A20F0027 */   sb         $t7, 0x27($s0)
/* 05BFB8 8005C408 02718021 */  addu        $s0, $s3, $s1
.L8005C40C:
/* 05BFBC 8005C40C 8FB80044 */  lw          $t8, 0x44($sp)
/* 05BFC0 8005C410 A2180004 */  sb          $t8, 0x4($s0)
/* 05BFC4 8005C414 0C015290 */  jal         func_80054A40
/* 05BFC8 8005C418 97A40072 */   lhu        $a0, 0x72($sp)
/* 05BFCC 8005C41C 8FB90040 */  lw          $t9, 0x40($sp)
/* 05BFD0 8005C420 26050006 */  addiu       $a1, $s0, 0x6
/* 05BFD4 8005C424 24060020 */  addiu       $a2, $zero, 0x20
/* 05BFD8 8005C428 00594025 */  or          $t0, $v0, $t9
/* 05BFDC 8005C42C A2080005 */  sb          $t0, 0x5($s0)
/* 05BFE0 8005C430 0C013E84 */  jal         func_8004FA10
/* 05BFE4 8005C434 8FA40074 */   lw         $a0, 0x74($sp)
/* 05BFE8 8005C438 24040001 */  addiu       $a0, $zero, 0x1
/* 05BFEC 8005C43C 0C015108 */  jal         func_80054420
/* 05BFF0 8005C440 02602825 */   move       $a1, $s3
/* 05BFF4 8005C444 0C0152C4 */  jal         func_80054B10
/* 05BFF8 8005C448 8FA40074 */   lw         $a0, 0x74($sp)
/* 05BFFC 8005C44C 305200FF */  andi        $s2, $v0, 0xff
/* 05C000 8005C450 02A02025 */  move        $a0, $s5
/* 05C004 8005C454 00002825 */  move        $a1, $zero
/* 05C008 8005C458 0C013A48 */  jal         func_8004E920
/* 05C00C 8005C45C 24060001 */   addiu      $a2, $zero, 0x1
/* 05C010 8005C460 00002025 */  move        $a0, $zero
/* 05C014 8005C464 0C015108 */  jal         func_80054420
/* 05C018 8005C468 02602825 */   move       $a1, $s3
/* 05C01C 8005C46C 02A02025 */  move        $a0, $s5
/* 05C020 8005C470 00002825 */  move        $a1, $zero
/* 05C024 8005C474 0C013A48 */  jal         func_8004E920
/* 05C028 8005C478 24060001 */   addiu      $a2, $zero, 0x1
/* 05C02C 8005C47C 92030002 */  lbu         $v1, 0x2($s0)
/* 05C030 8005C480 306900C0 */  andi        $t1, $v1, 0xc0
/* 05C034 8005C484 00091903 */  sra         $v1, $t1, 4
/* 05C038 8005C488 5460000C */  bnel        $v1, $zero, .L8005C4BC
/* 05C03C 8005C48C 24030001 */   addiu      $v1, $zero, 0x1
/* 05C040 8005C490 920B0026 */  lbu         $t3, 0x26($s0)
/* 05C044 8005C494 02A02025 */  move        $a0, $s5
/* 05C048 8005C498 51720009 */  beql        $t3, $s2, .L8005C4C0
/* 05C04C 8005C49C 24010004 */   addiu      $at, $zero, 0x4
/* 05C050 8005C4A0 0C0155EC */  jal         func_800557B0
/* 05C054 8005C4A4 02202825 */   move       $a1, $s1
/* 05C058 8005C4A8 14400009 */  bnez        $v0, .L8005C4D0
/* 05C05C 8005C4AC 00401825 */   move       $v1, $v0
/* 05C060 8005C4B0 10000002 */  b           .L8005C4BC
/* 05C064 8005C4B4 24030004 */   addiu      $v1, $zero, 0x4
/* 05C068 8005C4B8 24030001 */  addiu       $v1, $zero, 0x1
.L8005C4BC:
/* 05C06C 8005C4BC 24010004 */  addiu       $at, $zero, 0x4
.L8005C4C0:
/* 05C070 8005C4C0 14610003 */  bne         $v1, $at, .L8005C4D0
/* 05C074 8005C4C4 2A820000 */   slti       $v0, $s4, 0x0
/* 05C078 8005C4C8 1040FFA7 */  beqz        $v0, .L8005C368
/* 05C07C 8005C4CC 2694FFFF */   addiu      $s4, $s4, -0x1
.L8005C4D0:
/* 05C080 8005C4D0 0C0150FD */  jal         func_800543F4
/* 05C084 8005C4D4 AFA30064 */   sw         $v1, 0x64($sp)
/* 05C088 8005C4D8 8FA20064 */  lw          $v0, 0x64($sp)
.L8005C4DC:
/* 05C08C 8005C4DC 8FBF003C */  lw          $ra, 0x3c($sp)
/* 05C090 8005C4E0 8FB00018 */  lw          $s0, 0x18($sp)
/* 05C094 8005C4E4 8FB1001C */  lw          $s1, 0x1c($sp)
/* 05C098 8005C4E8 8FB20020 */  lw          $s2, 0x20($sp)
/* 05C09C 8005C4EC 8FB30024 */  lw          $s3, 0x24($sp)
/* 05C0A0 8005C4F0 8FB40028 */  lw          $s4, 0x28($sp)
/* 05C0A4 8005C4F4 8FB5002C */  lw          $s5, 0x2c($sp)
/* 05C0A8 8005C4F8 8FB60030 */  lw          $s6, 0x30($sp)
/* 05C0AC 8005C4FC 8FB70034 */  lw          $s7, 0x34($sp)
/* 05C0B0 8005C500 8FBE0038 */  lw          $fp, 0x38($sp)
/* 05C0B4 8005C504 03E00008 */  jr          $ra
/* 05C0B8 8005C508 27BD0068 */   addiu      $sp, $sp, 0x68
/* 05C0BC 8005C50C 00000000 */  nop
