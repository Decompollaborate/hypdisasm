.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800582B0 # 0
/* 057E60 800582B0 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 057E64 800582B4 24820040 */  addiu       $v0, $a0, 0x40
/* 057E68 800582B8 24A30010 */  addiu       $v1, $a1, 0x10
/* 057E6C 800582BC 03A05025 */  move        $t2, $sp
/* 057E70 800582C0 00A03825 */  move        $a3, $a1
.L800582C4:
/* 057E74 800582C4 C4840000 */  lwc1        $f4, 0x0($a0)
/* 057E78 800582C8 C4E60000 */  lwc1        $f6, 0x0($a3)
/* 057E7C 800582CC C48A0004 */  lwc1        $f10, 0x4($a0)
/* 057E80 800582D0 C4F00010 */  lwc1        $f16, 0x10($a3)
/* 057E84 800582D4 46062202 */  mul.s       $f8, $f4, $f6
/* 057E88 800582D8 C4840008 */  lwc1        $f4, 0x8($a0)
/* 057E8C 800582DC C4E60020 */  lwc1        $f6, 0x20($a3)
/* 057E90 800582E0 46105482 */  mul.s       $f18, $f10, $f16
/* 057E94 800582E4 C48A000C */  lwc1        $f10, 0xc($a0)
/* 057E98 800582E8 C4F00030 */  lwc1        $f16, 0x30($a3)
/* 057E9C 800582EC 24E70004 */  addiu       $a3, $a3, 0x4
/* 057EA0 800582F0 254A0004 */  addiu       $t2, $t2, 0x4
/* 057EA4 800582F4 46124200 */  add.s       $f8, $f8, $f18
/* 057EA8 800582F8 46062482 */  mul.s       $f18, $f4, $f6
/* 057EAC 800582FC 46124200 */  add.s       $f8, $f8, $f18
/* 057EB0 80058300 46105482 */  mul.s       $f18, $f10, $f16
/* 057EB4 80058304 46124200 */  add.s       $f8, $f8, $f18
/* 057EB8 80058308 14E3FFEE */  bne         $a3, $v1, .L800582C4
/* 057EBC 8005830C E548FFFC */   swc1       $f8, -0x4($t2)
/* 057EC0 80058310 24840010 */  addiu       $a0, $a0, 0x10
/* 057EC4 80058314 5482FFEB */  bnel        $a0, $v0, .L800582C4
/* 057EC8 80058318 00A03825 */   move       $a3, $a1
/* 057ECC 8005831C E4C8003C */  swc1        $f8, 0x3c($a2)
/* 057ED0 80058320 8FA80000 */  lw          $t0, 0x0($sp)
/* 057ED4 80058324 8FA90004 */  lw          $t1, 0x4($sp)
/* 057ED8 80058328 8FAA0008 */  lw          $t2, 0x8($sp)
/* 057EDC 8005832C 8FAB000C */  lw          $t3, 0xc($sp)
/* 057EE0 80058330 8FAC0010 */  lw          $t4, 0x10($sp)
/* 057EE4 80058334 8FAD0014 */  lw          $t5, 0x14($sp)
/* 057EE8 80058338 8FAE0018 */  lw          $t6, 0x18($sp)
/* 057EEC 8005833C 8FAF001C */  lw          $t7, 0x1c($sp)
/* 057EF0 80058340 8FB80020 */  lw          $t8, 0x20($sp)
/* 057EF4 80058344 8FB90024 */  lw          $t9, 0x24($sp)
/* 057EF8 80058348 8FA20028 */  lw          $v0, 0x28($sp)
/* 057EFC 8005834C 8FA3002C */  lw          $v1, 0x2c($sp)
/* 057F00 80058350 8FA40030 */  lw          $a0, 0x30($sp)
/* 057F04 80058354 8FA50034 */  lw          $a1, 0x34($sp)
/* 057F08 80058358 8FA70038 */  lw          $a3, 0x38($sp)
/* 057F0C 8005835C 27BD0040 */  addiu       $sp, $sp, 0x40
/* 057F10 80058360 ACC80000 */  sw          $t0, 0x0($a2)
/* 057F14 80058364 ACC90004 */  sw          $t1, 0x4($a2)
/* 057F18 80058368 ACCA0008 */  sw          $t2, 0x8($a2)
/* 057F1C 8005836C ACCB000C */  sw          $t3, 0xc($a2)
/* 057F20 80058370 ACCC0010 */  sw          $t4, 0x10($a2)
/* 057F24 80058374 ACCD0014 */  sw          $t5, 0x14($a2)
/* 057F28 80058378 ACCE0018 */  sw          $t6, 0x18($a2)
/* 057F2C 8005837C ACCF001C */  sw          $t7, 0x1c($a2)
/* 057F30 80058380 ACD80020 */  sw          $t8, 0x20($a2)
/* 057F34 80058384 ACD90024 */  sw          $t9, 0x24($a2)
/* 057F38 80058388 ACC20028 */  sw          $v0, 0x28($a2)
/* 057F3C 8005838C ACC3002C */  sw          $v1, 0x2c($a2)
/* 057F40 80058390 ACC40030 */  sw          $a0, 0x30($a2)
/* 057F44 80058394 ACC50034 */  sw          $a1, 0x34($a2)
/* 057F48 80058398 03E00008 */  jr          $ra
/* 057F4C 8005839C ACC70038 */   sw         $a3, 0x38($a2)

glabel func_800583A0 # 1
/* 057F50 800583A0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 057F54 800583A4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 057F58 800583A8 240E0001 */  addiu       $t6, $zero, 0x1
/* 057F5C 800583AC 3C01800A */  lui         $at, %hi(D_8009F8B0)
/* 057F60 800583B0 3C048010 */  lui         $a0, %hi(D_80100318)
/* 057F64 800583B4 3C058010 */  lui         $a1, %hi(D_80100310)
/* 057F68 800583B8 AC2EF8B0 */  sw          $t6, %lo(D_8009F8B0)($at)
/* 057F6C 800583BC 24A50310 */  addiu       $a1, $a1, %lo(D_80100310)
/* 057F70 800583C0 24840318 */  addiu       $a0, $a0, %lo(D_80100318)
/* 057F74 800583C4 0C0145B8 */  jal         osCreateMesgQueue
/* 057F78 800583C8 24060001 */   addiu      $a2, $zero, 0x1
/* 057F7C 800583CC 3C048010 */  lui         $a0, %hi(D_80100318)
/* 057F80 800583D0 24840318 */  addiu       $a0, $a0, %lo(D_80100318)
/* 057F84 800583D4 00002825 */  move        $a1, $zero
/* 057F88 800583D8 0C014C64 */  jal         osSendMesg
/* 057F8C 800583DC 00003025 */   move       $a2, $zero
/* 057F90 800583E0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 057F94 800583E4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 057F98 800583E8 03E00008 */  jr          $ra
/* 057F9C 800583EC 00000000 */   nop

glabel __osSiGetAccess # 2
/* 057FA0 800583F0 3C0E800A */  lui         $t6, %hi(D_8009F8B0)
/* 057FA4 800583F4 8DCEF8B0 */  lw          $t6, %lo(D_8009F8B0)($t6)
/* 057FA8 800583F8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 057FAC 800583FC AFBF0014 */  sw          $ra, 0x14($sp)
/* 057FB0 80058400 15C00003 */  bne         $t6, $zero, .L80058410
/* 057FB4 80058404 00000000 */   nop
/* 057FB8 80058408 0C0160E8 */  jal         func_800583A0
/* 057FBC 8005840C 00000000 */   nop
.L80058410:
/* 057FC0 80058410 3C048010 */  lui         $a0, %hi(D_80100318)
/* 057FC4 80058414 24840318 */  addiu       $a0, $a0, %lo(D_80100318)
/* 057FC8 80058418 27A5001C */  addiu       $a1, $sp, 0x1c
/* 057FCC 8005841C 0C014554 */  jal         osRecvMesg
/* 057FD0 80058420 24060001 */   addiu      $a2, $zero, 0x1
/* 057FD4 80058424 8FBF0014 */  lw          $ra, 0x14($sp)
/* 057FD8 80058428 27BD0020 */  addiu       $sp, $sp, 0x20
/* 057FDC 8005842C 03E00008 */  jr          $ra
/* 057FE0 80058430 00000000 */   nop

glabel __osSiRelAccess # 3
/* 057FE4 80058434 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 057FE8 80058438 AFBF0014 */  sw          $ra, 0x14($sp)
/* 057FEC 8005843C 3C048010 */  lui         $a0, %hi(D_80100318)
/* 057FF0 80058440 24840318 */  addiu       $a0, $a0, %lo(D_80100318)
/* 057FF4 80058444 00002825 */  move        $a1, $zero
/* 057FF8 80058448 0C014C64 */  jal         osSendMesg
/* 057FFC 8005844C 00003025 */   move       $a2, $zero
/* 058000 80058450 8FBF0014 */  lw          $ra, 0x14($sp)
/* 058004 80058454 27BD0018 */  addiu       $sp, $sp, 0x18
/* 058008 80058458 03E00008 */  jr          $ra
/* 05800C 8005845C 00000000 */   nop

glabel __osSiRawStartDma # 4
/* 058010 80058460 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 058014 80058464 AFBF0014 */  sw          $ra, 0x14($sp)
/* 058018 80058468 AFA5001C */  sw          $a1, 0x1c($sp)
/* 05801C 8005846C 3C0EA480 */  lui         $t6, %hi(D_A4800018)
/* 058020 80058470 8DCF0018 */  lw          $t7, %lo(D_A4800018)($t6)
/* 058024 80058474 00803025 */  move        $a2, $a0
/* 058028 80058478 24010001 */  addiu       $at, $zero, 0x1
/* 05802C 8005847C 31F80003 */  andi        $t8, $t7, 0x3
/* 058030 80058480 13000003 */  beq         $t8, $zero, .L80058490
/* 058034 80058484 00000000 */   nop
/* 058038 80058488 1000001C */  b           .L800584FC
/* 05803C 8005848C 2402FFFF */   addiu      $v0, $zero, -0x1
.L80058490:
/* 058040 80058490 14C10005 */  bne         $a2, $at, .L800584A8
/* 058044 80058494 8FA4001C */   lw         $a0, 0x1c($sp)
/* 058048 80058498 24050040 */  addiu       $a1, $zero, 0x40
/* 05804C 8005849C 0C0151DC */  jal         osWriteBackDCache
/* 058050 800584A0 AFA60018 */   sw         $a2, 0x18($sp)
/* 058054 800584A4 8FA60018 */  lw          $a2, 0x18($sp)
.L800584A8:
/* 058058 800584A8 8FA4001C */  lw          $a0, 0x1c($sp)
/* 05805C 800584AC 0C0143B0 */  jal         osVirtualToPhysical
/* 058060 800584B0 AFA60018 */   sw         $a2, 0x18($sp)
/* 058064 800584B4 8FA60018 */  lw          $a2, 0x18($sp)
/* 058068 800584B8 3C19A480 */  lui         $t9, %hi(D_A4800000)
/* 05806C 800584BC AF220000 */  sw          $v0, %lo(D_A4800000)($t9)
/* 058070 800584C0 14C00006 */  bne         $a2, $zero, .L800584DC
/* 058074 800584C4 3C0A1FC0 */   lui        $t2, 0x1fc0
/* 058078 800584C8 3C081FC0 */  lui         $t0, 0x1fc0
/* 05807C 800584CC 350807C0 */  ori         $t0, $t0, 0x7c0
/* 058080 800584D0 3C09A480 */  lui         $t1, %hi(D_A4800004)
/* 058084 800584D4 10000004 */  b           .L800584E8
/* 058088 800584D8 AD280004 */   sw         $t0, %lo(D_A4800004)($t1)
.L800584DC:
/* 05808C 800584DC 354A07C0 */  ori         $t2, $t2, 0x7c0
/* 058090 800584E0 3C0BA480 */  lui         $t3, %hi(D_A4800010)
/* 058094 800584E4 AD6A0010 */  sw          $t2, %lo(D_A4800010)($t3)
.L800584E8:
/* 058098 800584E8 14C00003 */  bne         $a2, $zero, .L800584F8
/* 05809C 800584EC 8FA4001C */   lw         $a0, 0x1c($sp)
/* 0580A0 800584F0 0C014CD0 */  jal         osInvalDCache
/* 0580A4 800584F4 24050040 */   addiu      $a1, $zero, 0x40
.L800584F8:
/* 0580A8 800584F8 00001025 */  move        $v0, $zero
.L800584FC:
/* 0580AC 800584FC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0580B0 80058500 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0580B4 80058504 03E00008 */  jr          $ra
/* 0580B8 80058508 00000000 */   nop
/* 0580BC 8005850C 00000000 */  nop
