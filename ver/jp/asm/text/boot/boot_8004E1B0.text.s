.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004E1B0 # 0
/* 04DD60 8004E1B0 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 04DD64 8004E1B4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04DD68 8004E1B8 240E0001 */  addiu       $t6, $zero, 0x1
/* 04DD6C 8004E1BC 3C018010 */  lui         $at, %hi(D_801022B0)
/* 04DD70 8004E1C0 AFB00018 */  sw          $s0, 0x18($sp)
/* 04DD74 8004E1C4 AFA00030 */  sw          $zero, 0x30($sp)
/* 04DD78 8004E1C8 0C0152F0 */  jal         func_80054BC0
/* 04DD7C 8004E1CC AC2E22B0 */   sw         $t6, %lo(D_801022B0)($at)
/* 04DD80 8004E1D0 00408025 */  move        $s0, $v0
/* 04DD84 8004E1D4 3C012000 */  lui         $at, 0x2000
/* 04DD88 8004E1D8 0C0152EC */  jal         func_80054BB0
/* 04DD8C 8004E1DC 02012025 */   or         $a0, $s0, $at
/* 04DD90 8004E1E0 3C040100 */  lui         $a0, 0x100
/* 04DD94 8004E1E4 0C0152F4 */  jal         func_80054BD0
/* 04DD98 8004E1E8 34840800 */   ori        $a0, $a0, 0x800
/* 04DD9C 8004E1EC 3C041FC0 */  lui         $a0, 0x1fc0
/* 04DDA0 8004E1F0 348407FC */  ori         $a0, $a0, 0x7fc
/* 04DDA4 8004E1F4 0C0152F8 */  jal         func_80054BE0
/* 04DDA8 8004E1F8 27A50034 */   addiu      $a1, $sp, 0x34
/* 04DDAC 8004E1FC 10400007 */  beqz        $v0, .L8004E21C
/* 04DDB0 8004E200 00000000 */   nop
.L8004E204:
/* 04DDB4 8004E204 3C041FC0 */  lui         $a0, 0x1fc0
/* 04DDB8 8004E208 348407FC */  ori         $a0, $a0, 0x7fc
/* 04DDBC 8004E20C 0C0152F8 */  jal         func_80054BE0
/* 04DDC0 8004E210 27A50034 */   addiu      $a1, $sp, 0x34
/* 04DDC4 8004E214 1440FFFB */  bnez        $v0, .L8004E204
/* 04DDC8 8004E218 00000000 */   nop
.L8004E21C:
/* 04DDCC 8004E21C 8FA50034 */  lw          $a1, 0x34($sp)
/* 04DDD0 8004E220 3C041FC0 */  lui         $a0, 0x1fc0
/* 04DDD4 8004E224 348407FC */  ori         $a0, $a0, 0x7fc
/* 04DDD8 8004E228 34AF0008 */  ori         $t7, $a1, 0x8
/* 04DDDC 8004E22C 0C01530C */  jal         func_80054C30
/* 04DDE0 8004E230 01E02825 */   move       $a1, $t7
/* 04DDE4 8004E234 10400009 */  beqz        $v0, .L8004E25C
/* 04DDE8 8004E238 00000000 */   nop
.L8004E23C:
/* 04DDEC 8004E23C 8FA50034 */  lw          $a1, 0x34($sp)
/* 04DDF0 8004E240 3C041FC0 */  lui         $a0, 0x1fc0
/* 04DDF4 8004E244 348407FC */  ori         $a0, $a0, 0x7fc
/* 04DDF8 8004E248 34B80008 */  ori         $t8, $a1, 0x8
/* 04DDFC 8004E24C 0C01530C */  jal         func_80054C30
/* 04DE00 8004E250 03002825 */   move       $a1, $t8
/* 04DE04 8004E254 1440FFF9 */  bnez        $v0, .L8004E23C
/* 04DE08 8004E258 00000000 */   nop
.L8004E25C:
/* 04DE0C 8004E25C 3C088005 */  lui         $t0, %hi(func_80054C80)
/* 04DE10 8004E260 25084C80 */  addiu       $t0, $t0, %lo(func_80054C80)
/* 04DE14 8004E264 8D010000 */  lw          $at, 0x0($t0)
/* 04DE18 8004E268 3C198000 */  lui         $t9, %hi(D_80000000)
/* 04DE1C 8004E26C 3C0D8005 */  lui         $t5, %hi(func_80054C80)
/* 04DE20 8004E270 AF210000 */  sw          $at, %lo(D_80000000)($t9)
/* 04DE24 8004E274 8D0B0004 */  lw          $t3, 0x4($t0)
/* 04DE28 8004E278 25AD4C80 */  addiu       $t5, $t5, %lo(func_80054C80)
/* 04DE2C 8004E27C 3C0C8000 */  lui         $t4, 0x8000
/* 04DE30 8004E280 AF2B0004 */  sw          $t3, %lo(D_80000004)($t9)
/* 04DE34 8004E284 8D010008 */  lw          $at, 0x8($t0)
/* 04DE38 8004E288 358C0080 */  ori         $t4, $t4, 0x80
/* 04DE3C 8004E28C 3C098005 */  lui         $t1, %hi(func_80054C80)
/* 04DE40 8004E290 AF210008 */  sw          $at, %lo(D_80000008)($t9)
/* 04DE44 8004E294 8D0B000C */  lw          $t3, 0xc($t0)
/* 04DE48 8004E298 25294C80 */  addiu       $t1, $t1, %lo(func_80054C80)
/* 04DE4C 8004E29C 3C0A8000 */  lui         $t2, 0x8000
/* 04DE50 8004E2A0 AF2B000C */  sw          $t3, %lo(D_8000000C)($t9)
/* 04DE54 8004E2A4 8DA10000 */  lw          $at, 0x0($t5)
/* 04DE58 8004E2A8 354A0100 */  ori         $t2, $t2, 0x100
/* 04DE5C 8004E2AC 3C0E8005 */  lui         $t6, %hi(func_80054C80)
/* 04DE60 8004E2B0 AD810000 */  sw          $at, 0x0($t4)
/* 04DE64 8004E2B4 8DB80004 */  lw          $t8, 0x4($t5)
/* 04DE68 8004E2B8 25CE4C80 */  addiu       $t6, $t6, %lo(func_80054C80)
/* 04DE6C 8004E2BC 3C0F8000 */  lui         $t7, 0x8000
/* 04DE70 8004E2C0 AD980004 */  sw          $t8, 0x4($t4)
/* 04DE74 8004E2C4 8DA10008 */  lw          $at, 0x8($t5)
/* 04DE78 8004E2C8 35EF0180 */  ori         $t7, $t7, 0x180
/* 04DE7C 8004E2CC 3C048000 */  lui         $a0, 0x8000
/* 04DE80 8004E2D0 AD810008 */  sw          $at, 0x8($t4)
/* 04DE84 8004E2D4 8DB8000C */  lw          $t8, 0xc($t5)
/* 04DE88 8004E2D8 24050190 */  addiu       $a1, $zero, 0x190
/* 04DE8C 8004E2DC AD98000C */  sw          $t8, 0xc($t4)
/* 04DE90 8004E2E0 8D210000 */  lw          $at, 0x0($t1)
/* 04DE94 8004E2E4 AD410000 */  sw          $at, 0x0($t2)
/* 04DE98 8004E2E8 8D2B0004 */  lw          $t3, 0x4($t1)
/* 04DE9C 8004E2EC AD4B0004 */  sw          $t3, 0x4($t2)
/* 04DEA0 8004E2F0 8D210008 */  lw          $at, 0x8($t1)
/* 04DEA4 8004E2F4 AD410008 */  sw          $at, 0x8($t2)
/* 04DEA8 8004E2F8 8D2B000C */  lw          $t3, 0xc($t1)
/* 04DEAC 8004E2FC AD4B000C */  sw          $t3, 0xc($t2)
/* 04DEB0 8004E300 8DC10000 */  lw          $at, 0x0($t6)
/* 04DEB4 8004E304 ADE10000 */  sw          $at, 0x0($t7)
/* 04DEB8 8004E308 8DD80004 */  lw          $t8, 0x4($t6)
/* 04DEBC 8004E30C ADF80004 */  sw          $t8, 0x4($t7)
/* 04DEC0 8004E310 8DC10008 */  lw          $at, 0x8($t6)
/* 04DEC4 8004E314 ADE10008 */  sw          $at, 0x8($t7)
/* 04DEC8 8004E318 8DD8000C */  lw          $t8, 0xc($t6)
/* 04DECC 8004E31C 0C014868 */  jal         func_800521A0
/* 04DED0 8004E320 ADF8000C */   sw         $t8, 0xc($t7)
/* 04DED4 8004E324 3C048000 */  lui         $a0, 0x8000
/* 04DED8 8004E328 0C014560 */  jal         func_80051580
/* 04DEDC 8004E32C 24050190 */   addiu      $a1, $zero, 0x190
/* 04DEE0 8004E330 0C015564 */  jal         func_80055590
/* 04DEE4 8004E334 00000000 */   nop
/* 04DEE8 8004E338 24040004 */  addiu       $a0, $zero, 0x4
/* 04DEEC 8004E33C 0C01557C */  jal         func_800555F0
/* 04DEF0 8004E340 27A50030 */   addiu      $a1, $sp, 0x30
/* 04DEF4 8004E344 8FA80030 */  lw          $t0, 0x30($sp)
/* 04DEF8 8004E348 2401FFF0 */  addiu       $at, $zero, -0x10
/* 04DEFC 8004E34C 0101C824 */  and         $t9, $t0, $at
/* 04DF00 8004E350 13200006 */  beqz        $t9, .L8004E36C
/* 04DF04 8004E354 AFB90030 */   sw         $t9, 0x30($sp)
/* 04DF08 8004E358 3C01800A */  lui         $at, %hi(D_800A3120)
/* 04DF0C 8004E35C 03205825 */  move        $t3, $t9
/* 04DF10 8004E360 240A0000 */  addiu       $t2, $zero, 0x0
/* 04DF14 8004E364 AC2A3120 */  sw          $t2, %lo(D_800A3120)($at)
/* 04DF18 8004E368 AC2B3124 */  sw          $t3, %lo(D_800A3124)($at)
.L8004E36C:
/* 04DF1C 8004E36C 3C04800A */  lui         $a0, %hi(D_800A3120)
/* 04DF20 8004E370 3C05800A */  lui         $a1, %hi(D_800A3124)
/* 04DF24 8004E374 8CA53124 */  lw          $a1, %lo(D_800A3124)($a1)
/* 04DF28 8004E378 8C843120 */  lw          $a0, %lo(D_800A3120)($a0)
/* 04DF2C 8004E37C 24060000 */  addiu       $a2, $zero, 0x0
/* 04DF30 8004E380 0C0144B6 */  jal         func_800512D8
/* 04DF34 8004E384 24070003 */   addiu      $a3, $zero, 0x3
/* 04DF38 8004E388 AFA20020 */  sw          $v0, 0x20($sp)
/* 04DF3C 8004E38C AFA30024 */  sw          $v1, 0x24($sp)
/* 04DF40 8004E390 8FA50024 */  lw          $a1, 0x24($sp)
/* 04DF44 8004E394 8FA40020 */  lw          $a0, 0x20($sp)
/* 04DF48 8004E398 24060000 */  addiu       $a2, $zero, 0x0
/* 04DF4C 8004E39C 0C014476 */  jal         func_800511D8
/* 04DF50 8004E3A0 24070004 */   addiu      $a3, $zero, 0x4
/* 04DF54 8004E3A4 3C098000 */  lui         $t1, %hi(osResetType)
/* 04DF58 8004E3A8 8D29030C */  lw          $t1, %lo(osResetType)($t1)
/* 04DF5C 8004E3AC 3C01800A */  lui         $at, %hi(D_800A3120)
/* 04DF60 8004E3B0 AC223120 */  sw          $v0, %lo(D_800A3120)($at)
/* 04DF64 8004E3B4 15200005 */  bnez        $t1, .L8004E3CC
/* 04DF68 8004E3B8 AC233124 */   sw         $v1, %lo(D_800A3124)($at)
/* 04DF6C 8004E3BC 3C048000 */  lui         $a0, %hi(osAppNmiBuffer)
/* 04DF70 8004E3C0 2484031C */  addiu       $a0, $a0, %lo(osAppNmiBuffer)
/* 04DF74 8004E3C4 0C013C58 */  jal         func_8004F160
/* 04DF78 8004E3C8 24050040 */   addiu      $a1, $zero, 0x40
.L8004E3CC:
/* 04DF7C 8004E3CC 3C0D8000 */  lui         $t5, %hi(osTvType)
/* 04DF80 8004E3D0 8DAD0300 */  lw          $t5, %lo(osTvType)($t5)
/* 04DF84 8004E3D4 15A00006 */  bnez        $t5, .L8004E3F0
/* 04DF88 8004E3D8 00000000 */   nop
/* 04DF8C 8004E3DC 3C0C02F5 */  lui         $t4, 0x2f5
/* 04DF90 8004E3E0 358CB2D2 */  ori         $t4, $t4, 0xb2d2
/* 04DF94 8004E3E4 3C01800A */  lui         $at, %hi(D_800A3128)
/* 04DF98 8004E3E8 1000000F */  b           .L8004E428
/* 04DF9C 8004E3EC AC2C3128 */   sw         $t4, %lo(D_800A3128)($at)
.L8004E3F0:
/* 04DFA0 8004E3F0 3C0F8000 */  lui         $t7, %hi(osTvType)
/* 04DFA4 8004E3F4 8DEF0300 */  lw          $t7, %lo(osTvType)($t7)
/* 04DFA8 8004E3F8 24010002 */  addiu       $at, $zero, 0x2
/* 04DFAC 8004E3FC 15E10006 */  bne         $t7, $at, .L8004E418
/* 04DFB0 8004E400 00000000 */   nop
/* 04DFB4 8004E404 3C0E02E6 */  lui         $t6, 0x2e6
/* 04DFB8 8004E408 35CE025C */  ori         $t6, $t6, 0x25c
/* 04DFBC 8004E40C 3C01800A */  lui         $at, %hi(D_800A3128)
/* 04DFC0 8004E410 10000005 */  b           .L8004E428
/* 04DFC4 8004E414 AC2E3128 */   sw         $t6, %lo(D_800A3128)($at)
.L8004E418:
/* 04DFC8 8004E418 3C1802E6 */  lui         $t8, 0x2e6
/* 04DFCC 8004E41C 3718D354 */  ori         $t8, $t8, 0xd354
/* 04DFD0 8004E420 3C01800A */  lui         $at, %hi(D_800A3128)
/* 04DFD4 8004E424 AC383128 */  sw          $t8, %lo(D_800A3128)($at)
.L8004E428:
/* 04DFD8 8004E428 8FBF001C */  lw          $ra, 0x1c($sp)
/* 04DFDC 8004E42C 8FB00018 */  lw          $s0, 0x18($sp)
/* 04DFE0 8004E430 27BD0038 */  addiu       $sp, $sp, 0x38
/* 04DFE4 8004E434 03E00008 */  jr          $ra
/* 04DFE8 8004E438 00000000 */   nop
/* 04DFEC 8004E43C 00000000 */  nop
