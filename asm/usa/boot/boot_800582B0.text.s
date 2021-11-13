.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800582B0 # 0
/* 000000 800582B0 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 000004 800582B4 24820040 */  addiu       $v0, $a0, 0x40
/* 000008 800582B8 24A30010 */  addiu       $v1, $a1, 0x10
/* 00000C 800582BC 03A05025 */  move        $t2, $sp
/* 000010 800582C0 00A03825 */  move        $a3, $a1
.L800582C4:
/* 000014 800582C4 C4840000 */  lwc1        $f4, 0x0($a0)
/* 000018 800582C8 C4E60000 */  lwc1        $f6, 0x0($a3)
/* 00001C 800582CC C48A0004 */  lwc1        $f10, 0x4($a0)
/* 000020 800582D0 C4F00010 */  lwc1        $f16, 0x10($a3)
/* 000024 800582D4 46062202 */  mul.s       $f8, $f4, $f6
/* 000028 800582D8 C4840008 */  lwc1        $f4, 0x8($a0)
/* 00002C 800582DC C4E60020 */  lwc1        $f6, 0x20($a3)
/* 000030 800582E0 46105482 */  mul.s       $f18, $f10, $f16
/* 000034 800582E4 C48A000C */  lwc1        $f10, 0xc($a0)
/* 000038 800582E8 C4F00030 */  lwc1        $f16, 0x30($a3)
/* 00003C 800582EC 24E70004 */  addiu       $a3, $a3, 0x4
/* 000040 800582F0 254A0004 */  addiu       $t2, $t2, 0x4
/* 000044 800582F4 46124200 */  add.s       $f8, $f8, $f18
/* 000048 800582F8 46062482 */  mul.s       $f18, $f4, $f6
/* 00004C 800582FC 46124200 */  add.s       $f8, $f8, $f18
/* 000050 80058300 46105482 */  mul.s       $f18, $f10, $f16
/* 000054 80058304 46124200 */  add.s       $f8, $f8, $f18
/* 000058 80058308 14E3FFEE */  bne         $a3, $v1, .L800582C4
/* 00005C 8005830C E548FFFC */   swc1       $f8, -0x4($t2)
/* 000060 80058310 24840010 */  addiu       $a0, $a0, 0x10
/* 000064 80058314 5482FFEB */  bnel        $a0, $v0, .L800582C4
/* 000068 80058318 00A03825 */   move       $a3, $a1
/* 00006C 8005831C E4C8003C */  swc1        $f8, 0x3c($a2)
/* 000070 80058320 8FA80000 */  lw          $t0, 0x0($sp)
/* 000074 80058324 8FA90004 */  lw          $t1, 0x4($sp)
/* 000078 80058328 8FAA0008 */  lw          $t2, 0x8($sp)
/* 00007C 8005832C 8FAB000C */  lw          $t3, 0xc($sp)
/* 000080 80058330 8FAC0010 */  lw          $t4, 0x10($sp)
/* 000084 80058334 8FAD0014 */  lw          $t5, 0x14($sp)
/* 000088 80058338 8FAE0018 */  lw          $t6, 0x18($sp)
/* 00008C 8005833C 8FAF001C */  lw          $t7, 0x1c($sp)
/* 000090 80058340 8FB80020 */  lw          $t8, 0x20($sp)
/* 000094 80058344 8FB90024 */  lw          $t9, 0x24($sp)
/* 000098 80058348 8FA20028 */  lw          $v0, 0x28($sp)
/* 00009C 8005834C 8FA3002C */  lw          $v1, 0x2c($sp)
/* 0000A0 80058350 8FA40030 */  lw          $a0, 0x30($sp)
/* 0000A4 80058354 8FA50034 */  lw          $a1, 0x34($sp)
/* 0000A8 80058358 8FA70038 */  lw          $a3, 0x38($sp)
/* 0000AC 8005835C 27BD0040 */  addiu       $sp, $sp, 0x40
/* 0000B0 80058360 ACC80000 */  sw          $t0, 0x0($a2)
/* 0000B4 80058364 ACC90004 */  sw          $t1, 0x4($a2)
/* 0000B8 80058368 ACCA0008 */  sw          $t2, 0x8($a2)
/* 0000BC 8005836C ACCB000C */  sw          $t3, 0xc($a2)
/* 0000C0 80058370 ACCC0010 */  sw          $t4, 0x10($a2)
/* 0000C4 80058374 ACCD0014 */  sw          $t5, 0x14($a2)
/* 0000C8 80058378 ACCE0018 */  sw          $t6, 0x18($a2)
/* 0000CC 8005837C ACCF001C */  sw          $t7, 0x1c($a2)
/* 0000D0 80058380 ACD80020 */  sw          $t8, 0x20($a2)
/* 0000D4 80058384 ACD90024 */  sw          $t9, 0x24($a2)
/* 0000D8 80058388 ACC20028 */  sw          $v0, 0x28($a2)
/* 0000DC 8005838C ACC3002C */  sw          $v1, 0x2c($a2)
/* 0000E0 80058390 ACC40030 */  sw          $a0, 0x30($a2)
/* 0000E4 80058394 ACC50034 */  sw          $a1, 0x34($a2)
/* 0000E8 80058398 03E00008 */  jr          $ra
/* 0000EC 8005839C ACC70038 */   sw         $a3, 0x38($a2)

glabel func_800583A0 # 1
/* 0000F0 800583A0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0000F4 800583A4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0000F8 800583A8 240E0001 */  addiu       $t6, $zero, 0x1
/* 0000FC 800583AC 3C01800A */  lui         $at, %hi(D_8009F8B0)
/* 000100 800583B0 3C048010 */  lui         $a0, %hi(D_80100318)
/* 000104 800583B4 3C058010 */  lui         $a1, %hi(D_80100310)
/* 000108 800583B8 AC2EF8B0 */  sw          $t6, %lo(D_8009F8B0)($at)
/* 00010C 800583BC 24A50310 */  addiu       $a1, $a1, %lo(D_80100310)
/* 000110 800583C0 24840318 */  addiu       $a0, $a0, %lo(D_80100318)
/* 000114 800583C4 0C0145B8 */  jal         func_800516E0
/* 000118 800583C8 24060001 */   addiu      $a2, $zero, 0x1
/* 00011C 800583CC 3C048010 */  lui         $a0, %hi(D_80100318)
/* 000120 800583D0 24840318 */  addiu       $a0, $a0, %lo(D_80100318)
/* 000124 800583D4 00002825 */  move        $a1, $zero
/* 000128 800583D8 0C014C64 */  jal         func_80053190
/* 00012C 800583DC 00003025 */   move       $a2, $zero
/* 000130 800583E0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000134 800583E4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000138 800583E8 03E00008 */  jr          $ra
/* 00013C 800583EC 00000000 */   nop

glabel func_800583F0 # 2
/* 000140 800583F0 3C0E800A */  lui         $t6, %hi(D_8009F8B0)
/* 000144 800583F4 8DCEF8B0 */  lw          $t6, %lo(D_8009F8B0)($t6)
/* 000148 800583F8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00014C 800583FC AFBF0014 */  sw          $ra, 0x14($sp)
/* 000150 80058400 15C00003 */  bne         $t6, $zero, .L80058410
/* 000154 80058404 00000000 */   nop
/* 000158 80058408 0C0160E8 */  jal         func_800583A0
/* 00015C 8005840C 00000000 */   nop
.L80058410:
/* 000160 80058410 3C048010 */  lui         $a0, %hi(D_80100318)
/* 000164 80058414 24840318 */  addiu       $a0, $a0, %lo(D_80100318)
/* 000168 80058418 27A5001C */  addiu       $a1, $sp, 0x1c
/* 00016C 8005841C 0C014554 */  jal         func_80051550
/* 000170 80058420 24060001 */   addiu      $a2, $zero, 0x1
/* 000174 80058424 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000178 80058428 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00017C 8005842C 03E00008 */  jr          $ra
/* 000180 80058430 00000000 */   nop

glabel func_80058434 # 3
/* 000184 80058434 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000188 80058438 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00018C 8005843C 3C048010 */  lui         $a0, %hi(D_80100318)
/* 000190 80058440 24840318 */  addiu       $a0, $a0, %lo(D_80100318)
/* 000194 80058444 00002825 */  move        $a1, $zero
/* 000198 80058448 0C014C64 */  jal         func_80053190
/* 00019C 8005844C 00003025 */   move       $a2, $zero
/* 0001A0 80058450 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0001A4 80058454 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0001A8 80058458 03E00008 */  jr          $ra
/* 0001AC 8005845C 00000000 */   nop

glabel func_80058460 # 4
/* 0001B0 80058460 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0001B4 80058464 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0001B8 80058468 AFA5001C */  sw          $a1, 0x1c($sp)
/* 0001BC 8005846C 3C0EA480 */  lui         $t6, %hi(D_A4800018)
/* 0001C0 80058470 8DCF0018 */  lw          $t7, %lo(D_A4800018)($t6)
/* 0001C4 80058474 00803025 */  move        $a2, $a0
/* 0001C8 80058478 24010001 */  addiu       $at, $zero, 0x1
/* 0001CC 8005847C 31F80003 */  andi        $t8, $t7, 0x3
/* 0001D0 80058480 13000003 */  beq         $t8, $zero, .L80058490
/* 0001D4 80058484 00000000 */   nop
/* 0001D8 80058488 1000001C */  b           .L800584FC
/* 0001DC 8005848C 2402FFFF */   addiu      $v0, $zero, -0x1
.L80058490:
/* 0001E0 80058490 14C10005 */  bne         $a2, $at, .L800584A8
/* 0001E4 80058494 8FA4001C */   lw         $a0, 0x1c($sp)
/* 0001E8 80058498 24050040 */  addiu       $a1, $zero, 0x40
/* 0001EC 8005849C 0C0151DC */  jal         func_80054770
/* 0001F0 800584A0 AFA60018 */   sw         $a2, 0x18($sp)
/* 0001F4 800584A4 8FA60018 */  lw          $a2, 0x18($sp)
.L800584A8:
/* 0001F8 800584A8 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0001FC 800584AC 0C0143B0 */  jal         func_80050EC0
/* 000200 800584B0 AFA60018 */   sw         $a2, 0x18($sp)
/* 000204 800584B4 8FA60018 */  lw          $a2, 0x18($sp)
/* 000208 800584B8 3C19A480 */  lui         $t9, %hi(D_A4800000)
/* 00020C 800584BC AF220000 */  sw          $v0, %lo(D_A4800000)($t9)
/* 000210 800584C0 14C00006 */  bne         $a2, $zero, .L800584DC
/* 000214 800584C4 3C0A1FC0 */   lui        $t2, 0x1fc0
/* 000218 800584C8 3C081FC0 */  lui         $t0, 0x1fc0
/* 00021C 800584CC 350807C0 */  ori         $t0, $t0, 0x7c0
/* 000220 800584D0 3C09A480 */  lui         $t1, %hi(D_A4800004)
/* 000224 800584D4 10000004 */  b           .L800584E8
/* 000228 800584D8 AD280004 */   sw         $t0, %lo(D_A4800004)($t1)
.L800584DC:
/* 00022C 800584DC 354A07C0 */  ori         $t2, $t2, 0x7c0
/* 000230 800584E0 3C0BA480 */  lui         $t3, %hi(D_A4800010)
/* 000234 800584E4 AD6A0010 */  sw          $t2, %lo(D_A4800010)($t3)
.L800584E8:
/* 000238 800584E8 14C00003 */  bne         $a2, $zero, .L800584F8
/* 00023C 800584EC 8FA4001C */   lw         $a0, 0x1c($sp)
/* 000240 800584F0 0C014CD0 */  jal         func_80053340
/* 000244 800584F4 24050040 */   addiu      $a1, $zero, 0x40
.L800584F8:
/* 000248 800584F8 00001025 */  move        $v0, $zero
.L800584FC:
/* 00024C 800584FC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000250 80058500 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000254 80058504 03E00008 */  jr          $ra
/* 000258 80058508 00000000 */   nop
/* 00025C 8005850C 00000000 */  nop
