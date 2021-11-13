.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004CE60 # 0
/* 04CA10 8004CE60 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 04CA14 8004CE64 E7AC0004 */  swc1        $f12, 0x4($sp)
/* 04CA18 8004CE68 8FAE0004 */  lw          $t6, 0x4($sp)
/* 04CA1C 8004CE6C 3C027F80 */  lui         $v0, 0x7f80
/* 04CA20 8004CE70 01C27824 */  and         $t7, $t6, $v0
/* 04CA24 8004CE74 144F0005 */  bne         $v0, $t7, .L8004CE8C
/* 04CA28 8004CE78 000EC240 */   sll        $t8, $t6, 9
/* 04CA2C 8004CE7C 53000004 */  beql        $t8, $zero, .L8004CE90
/* 04CA30 8004CE80 00001025 */   move       $v0, $zero
/* 04CA34 8004CE84 10000002 */  b           .L8004CE90
/* 04CA38 8004CE88 24020001 */   addiu      $v0, $zero, 0x1
.L8004CE8C:
/* 04CA3C 8004CE8C 00001025 */  move        $v0, $zero
.L8004CE90:
/* 04CA40 8004CE90 03E00008 */  jr          $ra
/* 04CA44 8004CE94 27BD0008 */   addiu      $sp, $sp, 0x8

glabel func_8004CE98 # 1
/* 04CA48 8004CE98 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 04CA4C 8004CE9C F7AC0000 */  sdc1        $f12, 0x0($sp)
/* 04CA50 8004CEA0 8FAE0000 */  lw          $t6, 0x0($sp)
/* 04CA54 8004CEA4 3C027FF0 */  lui         $v0, 0x7ff0
/* 04CA58 8004CEA8 01C27824 */  and         $t7, $t6, $v0
/* 04CA5C 8004CEAC 144F0007 */  bne         $v0, $t7, .L8004CECC
/* 04CA60 8004CEB0 000EC300 */   sll        $t8, $t6, 12
/* 04CA64 8004CEB4 17000003 */  bne         $t8, $zero, .L8004CEC4
/* 04CA68 8004CEB8 8FB90004 */   lw         $t9, 0x4($sp)
/* 04CA6C 8004CEBC 53200004 */  beql        $t9, $zero, .L8004CED0
/* 04CA70 8004CEC0 00001025 */   move       $v0, $zero
.L8004CEC4:
/* 04CA74 8004CEC4 10000002 */  b           .L8004CED0
/* 04CA78 8004CEC8 24020001 */   addiu      $v0, $zero, 0x1
.L8004CECC:
/* 04CA7C 8004CECC 00001025 */  move        $v0, $zero
.L8004CED0:
/* 04CA80 8004CED0 03E00008 */  jr          $ra
/* 04CA84 8004CED4 27BD0008 */   addiu      $sp, $sp, 0x8

glabel func_8004CED8 # 2
/* 04CA88 8004CED8 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 04CA8C 8004CEDC E7AC0004 */  swc1        $f12, 0x4($sp)
/* 04CA90 8004CEE0 8FAE0004 */  lw          $t6, 0x4($sp)
/* 04CA94 8004CEE4 3C027F80 */  lui         $v0, 0x7f80
/* 04CA98 8004CEE8 01C27824 */  and         $t7, $t6, $v0
/* 04CA9C 8004CEEC 144F0005 */  bne         $v0, $t7, .L8004CF04
/* 04CAA0 8004CEF0 000EC240 */   sll        $t8, $t6, 9
/* 04CAA4 8004CEF4 57000004 */  bnel        $t8, $zero, .L8004CF08
/* 04CAA8 8004CEF8 00001025 */   move       $v0, $zero
/* 04CAAC 8004CEFC 10000002 */  b           .L8004CF08
/* 04CAB0 8004CF00 24020001 */   addiu      $v0, $zero, 0x1
.L8004CF04:
/* 04CAB4 8004CF04 00001025 */  move        $v0, $zero
.L8004CF08:
/* 04CAB8 8004CF08 03E00008 */  jr          $ra
/* 04CABC 8004CF0C 27BD0008 */   addiu      $sp, $sp, 0x8

glabel func_8004CF10 # 3
/* 04CAC0 8004CF10 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 04CAC4 8004CF14 F7AC0000 */  sdc1        $f12, 0x0($sp)
/* 04CAC8 8004CF18 8FAE0000 */  lw          $t6, 0x0($sp)
/* 04CACC 8004CF1C 3C027FF0 */  lui         $v0, 0x7ff0
/* 04CAD0 8004CF20 01C27824 */  and         $t7, $t6, $v0
/* 04CAD4 8004CF24 144F0007 */  bne         $v0, $t7, .L8004CF44
/* 04CAD8 8004CF28 000EC300 */   sll        $t8, $t6, 12
/* 04CADC 8004CF2C 17000005 */  bne         $t8, $zero, .L8004CF44
/* 04CAE0 8004CF30 8FB90004 */   lw         $t9, 0x4($sp)
/* 04CAE4 8004CF34 57200004 */  bnel        $t9, $zero, .L8004CF48
/* 04CAE8 8004CF38 00001025 */   move       $v0, $zero
/* 04CAEC 8004CF3C 10000002 */  b           .L8004CF48
/* 04CAF0 8004CF40 24020001 */   addiu      $v0, $zero, 0x1
.L8004CF44:
/* 04CAF4 8004CF44 00001025 */  move        $v0, $zero
.L8004CF48:
/* 04CAF8 8004CF48 03E00008 */  jr          $ra
/* 04CAFC 8004CF4C 27BD0008 */   addiu      $sp, $sp, 0x8

glabel func_8004CF50 # 4
/* 04CB00 8004CF50 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 04CB04 8004CF54 E7AC0004 */  swc1        $f12, 0x4($sp)
/* 04CB08 8004CF58 8FAE0004 */  lw          $t6, 0x4($sp)
/* 04CB0C 8004CF5C 3C017F80 */  lui         $at, 0x7f80
/* 04CB10 8004CF60 00001025 */  move        $v0, $zero
/* 04CB14 8004CF64 01C17824 */  and         $t7, $t6, $at
/* 04CB18 8004CF68 15E00005 */  bne         $t7, $zero, .L8004CF80
/* 04CB1C 8004CF6C 000EC240 */   sll        $t8, $t6, 9
/* 04CB20 8004CF70 13000003 */  beq         $t8, $zero, .L8004CF80
/* 04CB24 8004CF74 00000000 */   nop
/* 04CB28 8004CF78 10000001 */  b           .L8004CF80
/* 04CB2C 8004CF7C 24020001 */   addiu      $v0, $zero, 0x1
.L8004CF80:
/* 04CB30 8004CF80 03E00008 */  jr          $ra
/* 04CB34 8004CF84 27BD0008 */   addiu      $sp, $sp, 0x8

glabel func_8004CF88 # 5
/* 04CB38 8004CF88 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 04CB3C 8004CF8C F7AC0000 */  sdc1        $f12, 0x0($sp)
/* 04CB40 8004CF90 8FAE0000 */  lw          $t6, 0x0($sp)
/* 04CB44 8004CF94 3C017FF0 */  lui         $at, 0x7ff0
/* 04CB48 8004CF98 00001025 */  move        $v0, $zero
/* 04CB4C 8004CF9C 01C17824 */  and         $t7, $t6, $at
/* 04CB50 8004CFA0 15E00007 */  bne         $t7, $zero, .L8004CFC0
/* 04CB54 8004CFA4 000EC300 */   sll        $t8, $t6, 12
/* 04CB58 8004CFA8 17000003 */  bne         $t8, $zero, .L8004CFB8
/* 04CB5C 8004CFAC 8FB90004 */   lw         $t9, 0x4($sp)
/* 04CB60 8004CFB0 13200003 */  beq         $t9, $zero, .L8004CFC0
/* 04CB64 8004CFB4 00000000 */   nop
.L8004CFB8:
/* 04CB68 8004CFB8 10000001 */  b           .L8004CFC0
/* 04CB6C 8004CFBC 24020001 */   addiu      $v0, $zero, 0x1
.L8004CFC0:
/* 04CB70 8004CFC0 03E00008 */  jr          $ra
/* 04CB74 8004CFC4 27BD0008 */   addiu      $sp, $sp, 0x8

glabel func_8004CFC8 # 6
/* 04CB78 8004CFC8 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 04CB7C 8004CFCC E7AC0004 */  swc1        $f12, 0x4($sp)
/* 04CB80 8004CFD0 8FAE0004 */  lw          $t6, 0x4($sp)
/* 04CB84 8004CFD4 3C027F80 */  lui         $v0, 0x7f80
/* 04CB88 8004CFD8 000E7840 */  sll         $t7, $t6, 1
/* 04CB8C 8004CFDC 11E00005 */  beq         $t7, $zero, .L8004CFF4
/* 04CB90 8004CFE0 01C2C024 */   and        $t8, $t6, $v0
/* 04CB94 8004CFE4 13000005 */  beq         $t8, $zero, .L8004CFFC
/* 04CB98 8004CFE8 01C2C824 */   and        $t9, $t6, $v0
/* 04CB9C 8004CFEC 50590004 */  beql        $v0, $t9, .L8004D000
/* 04CBA0 8004CFF0 00001025 */   move       $v0, $zero
.L8004CFF4:
/* 04CBA4 8004CFF4 10000002 */  b           .L8004D000
/* 04CBA8 8004CFF8 24020001 */   addiu      $v0, $zero, 0x1
.L8004CFFC:
/* 04CBAC 8004CFFC 00001025 */  move        $v0, $zero
.L8004D000:
/* 04CBB0 8004D000 03E00008 */  jr          $ra
/* 04CBB4 8004D004 27BD0008 */   addiu      $sp, $sp, 0x8

glabel func_8004D008 # 7
/* 04CBB8 8004D008 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 04CBBC 8004D00C F7AC0000 */  sdc1        $f12, 0x0($sp)
/* 04CBC0 8004D010 8FAE0000 */  lw          $t6, 0x0($sp)
/* 04CBC4 8004D014 8FB90000 */  lw          $t9, 0x0($sp)
/* 04CBC8 8004D018 8FB80004 */  lw          $t8, 0x4($sp)
/* 04CBCC 8004D01C 000E7840 */  sll         $t7, $t6, 1
/* 04CBD0 8004D020 55E00003 */  bnel        $t7, $zero, .L8004D030
/* 04CBD4 8004D024 3C027FF0 */   lui        $v0, 0x7ff0
/* 04CBD8 8004D028 13000006 */  beq         $t8, $zero, .L8004D044
/* 04CBDC 8004D02C 3C027FF0 */   lui        $v0, 0x7ff0
.L8004D030:
/* 04CBE0 8004D030 03224024 */  and         $t0, $t9, $v0
/* 04CBE4 8004D034 11000005 */  beq         $t0, $zero, .L8004D04C
/* 04CBE8 8004D038 03224824 */   and        $t1, $t9, $v0
/* 04CBEC 8004D03C 50490004 */  beql        $v0, $t1, .L8004D050
/* 04CBF0 8004D040 00001025 */   move       $v0, $zero
.L8004D044:
/* 04CBF4 8004D044 10000002 */  b           .L8004D050
/* 04CBF8 8004D048 24020001 */   addiu      $v0, $zero, 0x1
.L8004D04C:
/* 04CBFC 8004D04C 00001025 */  move        $v0, $zero
.L8004D050:
/* 04CC00 8004D050 03E00008 */  jr          $ra
/* 04CC04 8004D054 27BD0008 */   addiu      $sp, $sp, 0x8

glabel func_8004D058 # 8
/* 04CC08 8004D058 3C01800A */  lui         $at, %hi(D_800A7E60)
/* 04CC0C 8004D05C 03E00008 */  jr          $ra
/* 04CC10 8004D060 C4207E60 */   lwc1       $f0, %lo(D_800A7E60)($at)

glabel func_8004D064 # 9
/* 04CC14 8004D064 3C01800A */  lui         $at, %hi(D_800A7C30)
/* 04CC18 8004D068 03E00008 */  jr          $ra
/* 04CC1C 8004D06C D4207C30 */   ldc1       $f0, %lo(D_800A7C30)($at)

glabel func_8004D070 # 10
/* 04CC20 8004D070 3C03800A */  lui         $v1, %hi(D_8009D9A0)
/* 04CC24 8004D074 2463D9A0 */  addiu       $v1, $v1, %lo(D_8009D9A0)
/* 04CC28 8004D078 8C6E0000 */  lw          $t6, 0x0($v1)
/* 04CC2C 8004D07C 5DC00004 */  bgtzl       $t6, .L8004D090
/* 04CC30 8004D080 8C6F0000 */   lw         $t7, 0x0($v1)
/* 04CC34 8004D084 03E00008 */  jr          $ra
/* 04CC38 8004D088 00001025 */   move       $v0, $zero
/* 04CC3C 8004D08C 8C6F0000 */  lw          $t7, 0x0($v1)
.L8004D090:
/* 04CC40 8004D090 24020001 */  addiu       $v0, $zero, 0x1
/* 04CC44 8004D094 25F8FFFF */  addiu       $t8, $t7, -0x1
/* 04CC48 8004D098 AC780000 */  sw          $t8, 0x0($v1)
/* 04CC4C 8004D09C 03E00008 */  jr          $ra
/* 04CC50 8004D0A0 00000000 */   nop
/* 04CC54 8004D0A4 00000000 */  nop
/* 04CC58 8004D0A8 00000000 */  nop
/* 04CC5C 8004D0AC 00000000 */  nop
