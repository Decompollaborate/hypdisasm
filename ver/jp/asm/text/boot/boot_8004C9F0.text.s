.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004C9F0 # 0
/* 04C5A0 8004C9F0 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 04C5A4 8004C9F4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 04C5A8 8004C9F8 AFB30020 */  sw          $s3, 0x20($sp)
/* 04C5AC 8004C9FC AFB2001C */  sw          $s2, 0x1c($sp)
/* 04C5B0 8004CA00 AFB10018 */  sw          $s1, 0x18($sp)
/* 04C5B4 8004CA04 AFB00014 */  sw          $s0, 0x14($sp)
/* 04C5B8 8004CA08 A3A00037 */  sb          $zero, 0x37($sp)
/* 04C5BC 8004CA0C 00A03825 */  move        $a3, $a1
/* 04C5C0 8004CA10 ACA60004 */  sw          $a2, 0x4($a1)
/* 04C5C4 8004CA14 ACA40000 */  sw          $a0, 0x0($a1)
/* 04C5C8 8004CA18 ACA00008 */  sw          $zero, 0x8($a1)
/* 04C5CC 8004CA1C 00C09025 */  move        $s2, $a2
/* 04C5D0 8004CA20 00C02825 */  move        $a1, $a2
/* 04C5D4 8004CA24 00809825 */  move        $s3, $a0
/* 04C5D8 8004CA28 27A60037 */  addiu       $a2, $sp, 0x37
/* 04C5DC 8004CA2C 0C0134B4 */  jal         func_8004D2D0
/* 04C5E0 8004CA30 AFA70044 */   sw         $a3, 0x44($sp)
/* 04C5E4 8004CA34 10400003 */  beqz        $v0, .L8004CA44
/* 04C5E8 8004CA38 02602025 */   move       $a0, $s3
/* 04C5EC 8004CA3C 10000033 */  b           .L8004CB0C
/* 04C5F0 8004CA40 8FBF0024 */   lw         $ra, 0x24($sp)
.L8004CA44:
/* 04C5F4 8004CA44 0C013530 */  jal         func_8004D4C0
/* 04C5F8 8004CA48 02402825 */   move       $a1, $s2
/* 04C5FC 8004CA4C 10400003 */  beqz        $v0, .L8004CA5C
/* 04C600 8004CA50 3C10800A */   lui        $s0, %hi(D_800A3110)
/* 04C604 8004CA54 1000002C */  b           .L8004CB08
/* 04C608 8004CA58 24020004 */   addiu      $v0, $zero, 0x4
.L8004CA5C:
/* 04C60C 8004CA5C 3C11800A */  lui         $s1, %hi(D_800A3115)
/* 04C610 8004CA60 26313115 */  addiu       $s1, $s1, %lo(D_800A3115)
/* 04C614 8004CA64 26103110 */  addiu       $s0, $s0, %lo(D_800A3110)
/* 04C618 8004CA68 02602025 */  move        $a0, $s3
.L8004CA6C:
/* 04C61C 8004CA6C 02402825 */  move        $a1, $s2
/* 04C620 8004CA70 0C01356C */  jal         func_8004D5B0
/* 04C624 8004CA74 92060000 */   lbu        $a2, 0x0($s0)
/* 04C628 8004CA78 10400003 */  beqz        $v0, .L8004CA88
/* 04C62C 8004CA7C 26100001 */   addiu      $s0, $s0, 0x1
/* 04C630 8004CA80 10000022 */  b           .L8004CB0C
/* 04C634 8004CA84 8FBF0024 */   lw         $ra, 0x24($sp)
.L8004CA88:
/* 04C638 8004CA88 5611FFF8 */  bnel        $s0, $s1, .L8004CA6C
/* 04C63C 8004CA8C 02602025 */   move       $a0, $s3
/* 04C640 8004CA90 02602025 */  move        $a0, $s3
/* 04C644 8004CA94 02402825 */  move        $a1, $s2
/* 04C648 8004CA98 0C0134B4 */  jal         func_8004D2D0
/* 04C64C 8004CA9C 27A60037 */   addiu      $a2, $sp, 0x37
/* 04C650 8004CAA0 10400003 */  beqz        $v0, .L8004CAB0
/* 04C654 8004CAA4 93AE0037 */   lbu        $t6, 0x37($sp)
/* 04C658 8004CAA8 10000018 */  b           .L8004CB0C
/* 04C65C 8004CAAC 8FBF0024 */   lw         $ra, 0x24($sp)
.L8004CAB0:
/* 04C660 8004CAB0 31CF0002 */  andi        $t7, $t6, 0x2
/* 04C664 8004CAB4 11E00003 */  beqz        $t7, .L8004CAC4
/* 04C668 8004CAB8 24180100 */   addiu      $t8, $zero, 0x100
/* 04C66C 8004CABC 10000012 */  b           .L8004CB08
/* 04C670 8004CAC0 2402000F */   addiu      $v0, $zero, 0xf
.L8004CAC4:
/* 04C674 8004CAC4 AFB80030 */  sw          $t8, 0x30($sp)
/* 04C678 8004CAC8 02602025 */  move        $a0, $s3
/* 04C67C 8004CACC 02402825 */  move        $a1, $s2
/* 04C680 8004CAD0 00003025 */  move        $a2, $zero
/* 04C684 8004CAD4 0C0135E8 */  jal         func_8004D7A0
/* 04C688 8004CAD8 27A70030 */   addiu      $a3, $sp, 0x30
/* 04C68C 8004CADC 10400003 */  beqz        $v0, .L8004CAEC
/* 04C690 8004CAE0 8FA40044 */   lw         $a0, 0x44($sp)
/* 04C694 8004CAE4 10000009 */  b           .L8004CB0C
/* 04C698 8004CAE8 8FBF0024 */   lw         $ra, 0x24($sp)
.L8004CAEC:
/* 04C69C 8004CAEC 0C013674 */  jal         func_8004D9D0
/* 04C6A0 8004CAF0 27A50037 */   addiu      $a1, $sp, 0x37
/* 04C6A4 8004CAF4 3059FF00 */  andi        $t9, $v0, 0xff00
/* 04C6A8 8004CAF8 13200002 */  beqz        $t9, .L8004CB04
/* 04C6AC 8004CAFC 00401825 */   move       $v1, $v0
/* 04C6B0 8004CB00 24030005 */  addiu       $v1, $zero, 0x5
.L8004CB04:
/* 04C6B4 8004CB04 00601025 */  move        $v0, $v1
.L8004CB08:
/* 04C6B8 8004CB08 8FBF0024 */  lw          $ra, 0x24($sp)
.L8004CB0C:
/* 04C6BC 8004CB0C 8FB00014 */  lw          $s0, 0x14($sp)
/* 04C6C0 8004CB10 8FB10018 */  lw          $s1, 0x18($sp)
/* 04C6C4 8004CB14 8FB2001C */  lw          $s2, 0x1c($sp)
/* 04C6C8 8004CB18 8FB30020 */  lw          $s3, 0x20($sp)
/* 04C6CC 8004CB1C 03E00008 */  jr          $ra
/* 04C6D0 8004CB20 27BD0040 */   addiu      $sp, $sp, 0x40
/* 04C6D4 8004CB24 00000000 */  nop
/* 04C6D8 8004CB28 00000000 */  nop
/* 04C6DC 8004CB2C 00000000 */  nop
