.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_801162D0 # 0
/* 007F70 801162D0 3C038013 */  lui         $v1, %hi(D_80137EE4)
/* 007F74 801162D4 8C637EE4 */  lw          $v1, %lo(D_80137EE4)($v1)
/* 007F78 801162D8 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 007F7C 801162DC 3C0A800B */  lui         $t2, %hi(D_800B2C74)
/* 007F80 801162E0 8D4A2C74 */  lw          $t2, %lo(D_800B2C74)($t2)
/* 007F84 801162E4 AFBF002C */  sw          $ra, 0x2c($sp)
/* 007F88 801162E8 8C680020 */  lw          $t0, 0x20($v1)
/* 007F8C 801162EC 3C0F800F */  lui         $t7, %hi(D_800F5290)
/* 007F90 801162F0 8DEF5290 */  lw          $t7, %lo(D_800F5290)($t7)
/* 007F94 801162F4 8C6E006C */  lw          $t6, 0x6c($v1)
/* 007F98 801162F8 000A5940 */  sll         $t3, $t2, 5
/* 007F9C 801162FC 010B1021 */  addu        $v0, $t0, $t3
/* 007FA0 80116300 44802000 */  mtc1        $zero, $f4
/* 007FA4 80116304 000FC080 */  sll         $t8, $t7, 2
/* 007FA8 80116308 01D8C821 */  addu        $t9, $t6, $t8
/* 007FAC 8011630C 8F290000 */  lw          $t1, 0x0($t9)
/* 007FB0 80116310 8C450010 */  lw          $a1, 0x10($v0)
/* 007FB4 80116314 8C460014 */  lw          $a2, 0x14($v0)
/* 007FB8 80116318 8C470018 */  lw          $a3, 0x18($v0)
/* 007FBC 8011631C E7A40010 */  swc1        $f4, 0x10($sp)
/* 007FC0 80116320 C446001C */  lwc1        $f6, 0x1c($v0)
/* 007FC4 80116324 24040025 */  addiu       $a0, $zero, 0x25
/* 007FC8 80116328 E7A60014 */  swc1        $f6, 0x14($sp)
/* 007FCC 8011632C C468000C */  lwc1        $f8, 0xc($v1)
/* 007FD0 80116330 AFA00020 */  sw          $zero, 0x20($sp)
/* 007FD4 80116334 AFA9001C */  sw          $t1, 0x1c($sp)
/* 007FD8 80116338 0C007179 */  jal         func_8001C5E4
/* 007FDC 8011633C E7A80018 */   swc1       $f8, 0x18($sp)
/* 007FE0 80116340 8FBF002C */  lw          $ra, 0x2c($sp)
/* 007FE4 80116344 3C018007 */  lui         $at, %hi(D_80071E88)
/* 007FE8 80116348 AC221E88 */  sw          $v0, %lo(D_80071E88)($at)
/* 007FEC 8011634C 03E00008 */  jr          $ra
/* 007FF0 80116350 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_80116354 # 1
/* 007FF4 80116354 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 007FF8 80116358 AFBF0014 */  sw          $ra, 0x14($sp)
/* 007FFC 8011635C 8C820054 */  lw          $v0, 0x54($a0)
/* 008000 80116360 44856000 */  mtc1        $a1, $f12
/* 008004 80116364 944301EA */  lhu         $v1, 0x1ea($v0)
/* 008008 80116368 E7AC0024 */  swc1        $f12, 0x24($sp)
/* 00800C 8011636C 0C003775 */  jal         func_8000DDD4
/* 008010 80116370 A7A3001A */   sh         $v1, 0x1a($sp)
/* 008014 80116374 304E0010 */  andi        $t6, $v0, 0x10
/* 008018 80116378 97A3001A */  lhu         $v1, 0x1a($sp)
/* 00801C 8011637C 15C00003 */  bnez        $t6, .L8011638C
/* 008020 80116380 C7AC0024 */   lwc1       $f12, 0x24($sp)
/* 008024 80116384 1000006A */  b           .L80116530
/* 008028 80116388 46006006 */   mov.s      $f0, $f12
.L8011638C:
/* 00802C 8011638C 44801000 */  mtc1        $zero, $f2
/* 008030 80116390 44808000 */  mtc1        $zero, $f16
/* 008034 80116394 3C0143B4 */  lui         $at, 0x43b4
/* 008038 80116398 4602603C */  c.lt.s      $f12, $f2
/* 00803C 8011639C 00000000 */  nop
/* 008040 801163A0 45020009 */  bc1fl       .L801163C8
/* 008044 801163A4 3C0143B4 */   lui        $at, 0x43b4
/* 008048 801163A8 44810000 */  mtc1        $at, $f0
/* 00804C 801163AC 00000000 */  nop
/* 008050 801163B0 46006300 */  add.s       $f12, $f12, $f0
.L801163B4:
/* 008054 801163B4 4602603C */  c.lt.s      $f12, $f2
/* 008058 801163B8 00000000 */  nop
/* 00805C 801163BC 4503FFFD */  bc1tl       .L801163B4
/* 008060 801163C0 46006300 */   add.s      $f12, $f12, $f0
/* 008064 801163C4 3C0143B4 */  lui         $at, 0x43b4
.L801163C8:
/* 008068 801163C8 44810000 */  mtc1        $at, $f0
/* 00806C 801163CC 3C0142B4 */  lui         $at, 0x42b4
/* 008070 801163D0 460C003E */  c.le.s      $f0, $f12
/* 008074 801163D4 00000000 */  nop
/* 008078 801163D8 45020007 */  bc1fl       .L801163F8
/* 00807C 801163DC 460C803E */   c.le.s     $f16, $f12
/* 008080 801163E0 46006301 */  sub.s       $f12, $f12, $f0
.L801163E4:
/* 008084 801163E4 460C003E */  c.le.s      $f0, $f12
/* 008088 801163E8 00000000 */  nop
/* 00808C 801163EC 4503FFFD */  bc1tl       .L801163E4
/* 008090 801163F0 46006301 */   sub.s      $f12, $f12, $f0
/* 008094 801163F4 460C803E */  c.le.s      $f16, $f12
.L801163F8:
/* 008098 801163F8 00000000 */  nop
/* 00809C 801163FC 45020010 */  bc1fl       .L80116440
/* 0080A0 80116400 3C0142B4 */   lui        $at, 0x42b4
/* 0080A4 80116404 44811000 */  mtc1        $at, $f2
/* 0080A8 80116408 306F0024 */  andi        $t7, $v1, 0x24
/* 0080AC 8011640C 4602603C */  c.lt.s      $f12, $f2
/* 0080B0 80116410 00000000 */  nop
/* 0080B4 80116414 4502000A */  bc1fl       .L80116440
/* 0080B8 80116418 3C0142B4 */   lui        $at, 0x42b4
/* 0080BC 8011641C 11E00002 */  beqz        $t7, .L80116428
/* 0080C0 80116420 00601025 */   move       $v0, $v1
/* 0080C4 80116424 46001306 */  mov.s       $f12, $f2
.L80116428:
/* 0080C8 80116428 30580009 */  andi        $t8, $v0, 0x9
/* 0080CC 8011642C 53000040 */  beql        $t8, $zero, .L80116530
/* 0080D0 80116430 46006006 */   mov.s      $f0, $f12
/* 0080D4 80116434 1000003D */  b           .L8011652C
/* 0080D8 80116438 46008306 */   mov.s      $f12, $f16
/* 0080DC 8011643C 3C0142B4 */  lui         $at, 0x42b4
.L80116440:
/* 0080E0 80116440 44811000 */  mtc1        $at, $f2
/* 0080E4 80116444 3C014334 */  lui         $at, 0x4334
/* 0080E8 80116448 460C103E */  c.le.s      $f2, $f12
/* 0080EC 8011644C 00000000 */  nop
/* 0080F0 80116450 45020010 */  bc1fl       .L80116494
/* 0080F4 80116454 3C014334 */   lui        $at, 0x4334
/* 0080F8 80116458 44817000 */  mtc1        $at, $f14
/* 0080FC 8011645C 30790024 */  andi        $t9, $v1, 0x24
/* 008100 80116460 460E603C */  c.lt.s      $f12, $f14
/* 008104 80116464 00000000 */  nop
/* 008108 80116468 4502000A */  bc1fl       .L80116494
/* 00810C 8011646C 3C014334 */   lui        $at, 0x4334
/* 008110 80116470 13200002 */  beqz        $t9, .L8011647C
/* 008114 80116474 00601025 */   move       $v0, $v1
/* 008118 80116478 46001306 */  mov.s       $f12, $f2
.L8011647C:
/* 00811C 8011647C 30480009 */  andi        $t0, $v0, 0x9
/* 008120 80116480 5100002B */  beql        $t0, $zero, .L80116530
/* 008124 80116484 46006006 */   mov.s      $f0, $f12
/* 008128 80116488 10000028 */  b           .L8011652C
/* 00812C 8011648C 46007306 */   mov.s      $f12, $f14
/* 008130 80116490 3C014334 */  lui         $at, 0x4334
.L80116494:
/* 008134 80116494 44817000 */  mtc1        $at, $f14
/* 008138 80116498 3C014387 */  lui         $at, 0x4387
/* 00813C 8011649C 460C703E */  c.le.s      $f14, $f12
/* 008140 801164A0 00000000 */  nop
/* 008144 801164A4 45020010 */  bc1fl       .L801164E8
/* 008148 801164A8 3C014387 */   lui        $at, 0x4387
/* 00814C 801164AC 44811000 */  mtc1        $at, $f2
/* 008150 801164B0 30690024 */  andi        $t1, $v1, 0x24
/* 008154 801164B4 4602603C */  c.lt.s      $f12, $f2
/* 008158 801164B8 00000000 */  nop
/* 00815C 801164BC 4502000A */  bc1fl       .L801164E8
/* 008160 801164C0 3C014387 */   lui        $at, 0x4387
/* 008164 801164C4 11200002 */  beqz        $t1, .L801164D0
/* 008168 801164C8 00601025 */   move       $v0, $v1
/* 00816C 801164CC 46001306 */  mov.s       $f12, $f2
.L801164D0:
/* 008170 801164D0 304A0009 */  andi        $t2, $v0, 0x9
/* 008174 801164D4 51400016 */  beql        $t2, $zero, .L80116530
/* 008178 801164D8 46006006 */   mov.s      $f0, $f12
/* 00817C 801164DC 10000013 */  b           .L8011652C
/* 008180 801164E0 46007306 */   mov.s      $f12, $f14
/* 008184 801164E4 3C014387 */  lui         $at, 0x4387
.L801164E8:
/* 008188 801164E8 44811000 */  mtc1        $at, $f2
/* 00818C 801164EC 00000000 */  nop
/* 008190 801164F0 460C103E */  c.le.s      $f2, $f12
/* 008194 801164F4 00000000 */  nop
/* 008198 801164F8 4502000D */  bc1fl       .L80116530
/* 00819C 801164FC 46006006 */   mov.s      $f0, $f12
/* 0081A0 80116500 4600603E */  c.le.s      $f12, $f0
/* 0081A4 80116504 306B0024 */  andi        $t3, $v1, 0x24
/* 0081A8 80116508 45020009 */  bc1fl       .L80116530
/* 0081AC 8011650C 46006006 */   mov.s      $f0, $f12
/* 0081B0 80116510 11600002 */  beqz        $t3, .L8011651C
/* 0081B4 80116514 00601025 */   move       $v0, $v1
/* 0081B8 80116518 46001306 */  mov.s       $f12, $f2
.L8011651C:
/* 0081BC 8011651C 304C0009 */  andi        $t4, $v0, 0x9
/* 0081C0 80116520 51800003 */  beql        $t4, $zero, .L80116530
/* 0081C4 80116524 46006006 */   mov.s      $f0, $f12
/* 0081C8 80116528 46008306 */  mov.s       $f12, $f16
.L8011652C:
/* 0081CC 8011652C 46006006 */  mov.s       $f0, $f12
.L80116530:
/* 0081D0 80116530 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0081D4 80116534 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0081D8 80116538 03E00008 */  jr          $ra
/* 0081DC 8011653C 00000000 */   nop

glabel func_80116540 # 2
/* 0081E0 80116540 3C048007 */  lui         $a0, %hi(D_80071E88)
/* 0081E4 80116544 8C841E88 */  lw          $a0, %lo(D_80071E88)($a0)
/* 0081E8 80116548 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0081EC 8011654C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0081F0 80116550 50800009 */  beql        $a0, $zero, .L80116578
/* 0081F4 80116554 8FBF0014 */   lw         $ra, 0x14($sp)
/* 0081F8 80116558 0C046702 */  jal         func_80119C08
/* 0081FC 8011655C 00000000 */   nop
/* 008200 80116560 3C048007 */  lui         $a0, %hi(D_80071E88)
/* 008204 80116564 8C841E88 */  lw          $a0, %lo(D_80071E88)($a0)
/* 008208 80116568 24050003 */  addiu       $a1, $zero, 0x3
/* 00820C 8011656C 0C043A31 */  jal         func_8010E8C4
/* 008210 80116570 24840044 */   addiu      $a0, $a0, 0x44
/* 008214 80116574 8FBF0014 */  lw          $ra, 0x14($sp)
.L80116578:
/* 008218 80116578 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00821C 8011657C 03E00008 */  jr          $ra
/* 008220 80116580 00000000 */   nop
/* 008224 80116584 00000000 */  nop
/* 008228 80116588 00000000 */  nop
/* 00822C 8011658C 00000000 */  nop