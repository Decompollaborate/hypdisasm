.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004CE60 # 0
/* 000000 8004CE60 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 000004 8004CE64 E7AC0004 */  swc1        $f12, 0x4($sp)
/* 000008 8004CE68 8FAE0004 */  lw          $t6, 0x4($sp)
/* 00000C 8004CE6C 3C027F80 */  lui         $v0, 0x7f80
/* 000010 8004CE70 01C27824 */  and         $t7, $t6, $v0
/* 000014 8004CE74 144F0005 */  bne         $v0, $t7, .L8004CE8C
/* 000018 8004CE78 000EC240 */   sll        $t8, $t6, 9
/* 00001C 8004CE7C 53000004 */  beql        $t8, $zero, .L8004CE90
/* 000020 8004CE80 00001025 */   move       $v0, $zero
/* 000024 8004CE84 10000002 */  b           .L8004CE90
/* 000028 8004CE88 24020001 */   addiu      $v0, $zero, 0x1
.L8004CE8C:
/* 00002C 8004CE8C 00001025 */  move        $v0, $zero
.L8004CE90:
/* 000030 8004CE90 03E00008 */  jr          $ra
/* 000034 8004CE94 27BD0008 */   addiu      $sp, $sp, 0x8

glabel func_8004CE98 # 1
/* 000038 8004CE98 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 00003C 8004CE9C F7AC0000 */  sdc1        $f12, 0x0($sp)
/* 000040 8004CEA0 8FAE0000 */  lw          $t6, 0x0($sp)
/* 000044 8004CEA4 3C027FF0 */  lui         $v0, 0x7ff0
/* 000048 8004CEA8 01C27824 */  and         $t7, $t6, $v0
/* 00004C 8004CEAC 144F0007 */  bne         $v0, $t7, .L8004CECC
/* 000050 8004CEB0 000EC300 */   sll        $t8, $t6, 12
/* 000054 8004CEB4 17000003 */  bne         $t8, $zero, .L8004CEC4
/* 000058 8004CEB8 8FB90004 */   lw         $t9, 0x4($sp)
/* 00005C 8004CEBC 53200004 */  beql        $t9, $zero, .L8004CED0
/* 000060 8004CEC0 00001025 */   move       $v0, $zero
.L8004CEC4:
/* 000064 8004CEC4 10000002 */  b           .L8004CED0
/* 000068 8004CEC8 24020001 */   addiu      $v0, $zero, 0x1
.L8004CECC:
/* 00006C 8004CECC 00001025 */  move        $v0, $zero
.L8004CED0:
/* 000070 8004CED0 03E00008 */  jr          $ra
/* 000074 8004CED4 27BD0008 */   addiu      $sp, $sp, 0x8

glabel func_8004CED8 # 2
/* 000078 8004CED8 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 00007C 8004CEDC E7AC0004 */  swc1        $f12, 0x4($sp)
/* 000080 8004CEE0 8FAE0004 */  lw          $t6, 0x4($sp)
/* 000084 8004CEE4 3C027F80 */  lui         $v0, 0x7f80
/* 000088 8004CEE8 01C27824 */  and         $t7, $t6, $v0
/* 00008C 8004CEEC 144F0005 */  bne         $v0, $t7, .L8004CF04
/* 000090 8004CEF0 000EC240 */   sll        $t8, $t6, 9
/* 000094 8004CEF4 57000004 */  bnel        $t8, $zero, .L8004CF08
/* 000098 8004CEF8 00001025 */   move       $v0, $zero
/* 00009C 8004CEFC 10000002 */  b           .L8004CF08
/* 0000A0 8004CF00 24020001 */   addiu      $v0, $zero, 0x1
.L8004CF04:
/* 0000A4 8004CF04 00001025 */  move        $v0, $zero
.L8004CF08:
/* 0000A8 8004CF08 03E00008 */  jr          $ra
/* 0000AC 8004CF0C 27BD0008 */   addiu      $sp, $sp, 0x8

glabel func_8004CF10 # 3
/* 0000B0 8004CF10 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 0000B4 8004CF14 F7AC0000 */  sdc1        $f12, 0x0($sp)
/* 0000B8 8004CF18 8FAE0000 */  lw          $t6, 0x0($sp)
/* 0000BC 8004CF1C 3C027FF0 */  lui         $v0, 0x7ff0
/* 0000C0 8004CF20 01C27824 */  and         $t7, $t6, $v0
/* 0000C4 8004CF24 144F0007 */  bne         $v0, $t7, .L8004CF44
/* 0000C8 8004CF28 000EC300 */   sll        $t8, $t6, 12
/* 0000CC 8004CF2C 17000005 */  bne         $t8, $zero, .L8004CF44
/* 0000D0 8004CF30 8FB90004 */   lw         $t9, 0x4($sp)
/* 0000D4 8004CF34 57200004 */  bnel        $t9, $zero, .L8004CF48
/* 0000D8 8004CF38 00001025 */   move       $v0, $zero
/* 0000DC 8004CF3C 10000002 */  b           .L8004CF48
/* 0000E0 8004CF40 24020001 */   addiu      $v0, $zero, 0x1
.L8004CF44:
/* 0000E4 8004CF44 00001025 */  move        $v0, $zero
.L8004CF48:
/* 0000E8 8004CF48 03E00008 */  jr          $ra
/* 0000EC 8004CF4C 27BD0008 */   addiu      $sp, $sp, 0x8

glabel func_8004CF50 # 4
/* 0000F0 8004CF50 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 0000F4 8004CF54 E7AC0004 */  swc1        $f12, 0x4($sp)
/* 0000F8 8004CF58 8FAE0004 */  lw          $t6, 0x4($sp)
/* 0000FC 8004CF5C 3C017F80 */  lui         $at, 0x7f80
/* 000100 8004CF60 00001025 */  move        $v0, $zero
/* 000104 8004CF64 01C17824 */  and         $t7, $t6, $at
/* 000108 8004CF68 15E00005 */  bne         $t7, $zero, .L8004CF80
/* 00010C 8004CF6C 000EC240 */   sll        $t8, $t6, 9
/* 000110 8004CF70 13000003 */  beq         $t8, $zero, .L8004CF80
/* 000114 8004CF74 00000000 */   nop
/* 000118 8004CF78 10000001 */  b           .L8004CF80
/* 00011C 8004CF7C 24020001 */   addiu      $v0, $zero, 0x1
.L8004CF80:
/* 000120 8004CF80 03E00008 */  jr          $ra
/* 000124 8004CF84 27BD0008 */   addiu      $sp, $sp, 0x8

glabel func_8004CF88 # 5
/* 000128 8004CF88 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 00012C 8004CF8C F7AC0000 */  sdc1        $f12, 0x0($sp)
/* 000130 8004CF90 8FAE0000 */  lw          $t6, 0x0($sp)
/* 000134 8004CF94 3C017FF0 */  lui         $at, 0x7ff0
/* 000138 8004CF98 00001025 */  move        $v0, $zero
/* 00013C 8004CF9C 01C17824 */  and         $t7, $t6, $at
/* 000140 8004CFA0 15E00007 */  bne         $t7, $zero, .L8004CFC0
/* 000144 8004CFA4 000EC300 */   sll        $t8, $t6, 12
/* 000148 8004CFA8 17000003 */  bne         $t8, $zero, .L8004CFB8
/* 00014C 8004CFAC 8FB90004 */   lw         $t9, 0x4($sp)
/* 000150 8004CFB0 13200003 */  beq         $t9, $zero, .L8004CFC0
/* 000154 8004CFB4 00000000 */   nop
.L8004CFB8:
/* 000158 8004CFB8 10000001 */  b           .L8004CFC0
/* 00015C 8004CFBC 24020001 */   addiu      $v0, $zero, 0x1
.L8004CFC0:
/* 000160 8004CFC0 03E00008 */  jr          $ra
/* 000164 8004CFC4 27BD0008 */   addiu      $sp, $sp, 0x8

glabel func_8004CFC8 # 6
/* 000168 8004CFC8 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 00016C 8004CFCC E7AC0004 */  swc1        $f12, 0x4($sp)
/* 000170 8004CFD0 8FAE0004 */  lw          $t6, 0x4($sp)
/* 000174 8004CFD4 3C027F80 */  lui         $v0, 0x7f80
/* 000178 8004CFD8 000E7840 */  sll         $t7, $t6, 1
/* 00017C 8004CFDC 11E00005 */  beq         $t7, $zero, .L8004CFF4
/* 000180 8004CFE0 01C2C024 */   and        $t8, $t6, $v0
/* 000184 8004CFE4 13000005 */  beq         $t8, $zero, .L8004CFFC
/* 000188 8004CFE8 01C2C824 */   and        $t9, $t6, $v0
/* 00018C 8004CFEC 50590004 */  beql        $v0, $t9, .L8004D000
/* 000190 8004CFF0 00001025 */   move       $v0, $zero
.L8004CFF4:
/* 000194 8004CFF4 10000002 */  b           .L8004D000
/* 000198 8004CFF8 24020001 */   addiu      $v0, $zero, 0x1
.L8004CFFC:
/* 00019C 8004CFFC 00001025 */  move        $v0, $zero
.L8004D000:
/* 0001A0 8004D000 03E00008 */  jr          $ra
/* 0001A4 8004D004 27BD0008 */   addiu      $sp, $sp, 0x8

glabel func_8004D008 # 7
/* 0001A8 8004D008 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 0001AC 8004D00C F7AC0000 */  sdc1        $f12, 0x0($sp)
/* 0001B0 8004D010 8FAE0000 */  lw          $t6, 0x0($sp)
/* 0001B4 8004D014 8FB90000 */  lw          $t9, 0x0($sp)
/* 0001B8 8004D018 8FB80004 */  lw          $t8, 0x4($sp)
/* 0001BC 8004D01C 000E7840 */  sll         $t7, $t6, 1
/* 0001C0 8004D020 55E00003 */  bnel        $t7, $zero, .L8004D030
/* 0001C4 8004D024 3C027FF0 */   lui        $v0, 0x7ff0
/* 0001C8 8004D028 13000006 */  beq         $t8, $zero, .L8004D044
/* 0001CC 8004D02C 3C027FF0 */   lui        $v0, 0x7ff0
.L8004D030:
/* 0001D0 8004D030 03224024 */  and         $t0, $t9, $v0
/* 0001D4 8004D034 11000005 */  beq         $t0, $zero, .L8004D04C
/* 0001D8 8004D038 03224824 */   and        $t1, $t9, $v0
/* 0001DC 8004D03C 50490004 */  beql        $v0, $t1, .L8004D050
/* 0001E0 8004D040 00001025 */   move       $v0, $zero
.L8004D044:
/* 0001E4 8004D044 10000002 */  b           .L8004D050
/* 0001E8 8004D048 24020001 */   addiu      $v0, $zero, 0x1
.L8004D04C:
/* 0001EC 8004D04C 00001025 */  move        $v0, $zero
.L8004D050:
/* 0001F0 8004D050 03E00008 */  jr          $ra
/* 0001F4 8004D054 27BD0008 */   addiu      $sp, $sp, 0x8

glabel func_8004D058 # 8
/* 0001F8 8004D058 3C01800A */  lui         $at, %hi(D_800A7E60)
/* 0001FC 8004D05C 03E00008 */  jr          $ra
/* 000200 8004D060 C4207E60 */   lwc1       $f0, %lo(D_800A7E60)($at)

glabel func_8004D064 # 9
/* 000204 8004D064 3C01800A */  lui         $at, %hi(D_800A7C30)
/* 000208 8004D068 03E00008 */  jr          $ra
/* 00020C 8004D06C D4207C30 */   ldc1       $f0, %lo(D_800A7C30)($at)

glabel func_8004D070 # 10
/* 000210 8004D070 3C03800A */  lui         $v1, %hi(D_8009D9A0)
/* 000214 8004D074 2463D9A0 */  addiu       $v1, $v1, %lo(D_8009D9A0)
/* 000218 8004D078 8C6E0000 */  lw          $t6, 0x0($v1)
/* 00021C 8004D07C 5DC00004 */  bgtzl       $t6, .L8004D090
/* 000220 8004D080 8C6F0000 */   lw         $t7, 0x0($v1)
/* 000224 8004D084 03E00008 */  jr          $ra
/* 000228 8004D088 00001025 */   move       $v0, $zero
/* 00022C 8004D08C 8C6F0000 */  lw          $t7, 0x0($v1)
.L8004D090:
/* 000230 8004D090 24020001 */  addiu       $v0, $zero, 0x1
/* 000234 8004D094 25F8FFFF */  addiu       $t8, $t7, -0x1
/* 000238 8004D098 AC780000 */  sw          $t8, 0x0($v1)
/* 00023C 8004D09C 03E00008 */  jr          $ra
/* 000240 8004D0A0 00000000 */   nop
/* 000244 8004D0A4 00000000 */  nop
/* 000248 8004D0A8 00000000 */  nop
/* 00024C 8004D0AC 00000000 */  nop
