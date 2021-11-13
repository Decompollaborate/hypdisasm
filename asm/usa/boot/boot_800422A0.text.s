.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800422A0 # 0
/* 000000 800422A0 AFA50004 */  sw          $a1, 0x4($sp)
/* 000004 800422A4 8CC30000 */  lw          $v1, 0x0($a2)
/* 000008 800422A8 24020001 */  addiu       $v0, $zero, 0x1
/* 00000C 800422AC 1060000C */  beq         $v1, $zero, .L800422E0
/* 000010 800422B0 00000000 */   nop
/* 000014 800422B4 8CCE0004 */  lw          $t6, 0x4($a2)
.L800422B8:
/* 000018 800422B8 00647824 */  and         $t7, $v1, $a0
/* 00001C 800422BC 55CF0005 */  bnel        $t6, $t7, .L800422D4
/* 000020 800422C0 8CC3000C */   lw         $v1, 0xc($a2)
/* 000024 800422C4 50400003 */  beql        $v0, $zero, .L800422D4
/* 000028 800422C8 8CC3000C */   lw         $v1, 0xc($a2)
/* 00002C 800422CC 00001025 */  move        $v0, $zero
/* 000030 800422D0 8CC3000C */  lw          $v1, 0xc($a2)
.L800422D4:
/* 000034 800422D4 24C6000C */  addiu       $a2, $a2, 0xc
/* 000038 800422D8 5460FFF7 */  bnel        $v1, $zero, .L800422B8
/* 00003C 800422DC 8CCE0004 */   lw         $t6, 0x4($a2)
.L800422E0:
/* 000040 800422E0 03E00008 */  jr          $ra
/* 000044 800422E4 00000000 */   nop

glabel func_800422E8 # 1
/* 000048 800422E8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00004C 800422EC AFBF0014 */  sw          $ra, 0x14($sp)
/* 000050 800422F0 AFA5001C */  sw          $a1, 0x1c($sp)
/* 000054 800422F4 AFA40018 */  sw          $a0, 0x18($sp)
/* 000058 800422F8 0C013398 */  jal         func_8004CE60
/* 00005C 800422FC C7AC001C */   lwc1       $f12, 0x1c($sp)
/* 000060 80042300 54400008 */  bnel        $v0, $zero, .L80042324
/* 000064 80042304 8FBF0014 */   lw         $ra, 0x14($sp)
/* 000068 80042308 0C0133B6 */  jal         func_8004CED8
/* 00006C 8004230C C7AC001C */   lwc1       $f12, 0x1c($sp)
/* 000070 80042310 54400004 */  bnel        $v0, $zero, .L80042324
/* 000074 80042314 8FBF0014 */   lw         $ra, 0x14($sp)
/* 000078 80042318 0C0133D4 */  jal         func_8004CF50
/* 00007C 8004231C C7AC001C */   lwc1       $f12, 0x1c($sp)
/* 000080 80042320 8FBF0014 */  lw          $ra, 0x14($sp)
.L80042324:
/* 000084 80042324 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000088 80042328 03E00008 */  jr          $ra
/* 00008C 8004232C 00000000 */   nop

glabel func_80042330 # 2
/* 000090 80042330 44876000 */  mtc1        $a3, $f12
/* 000094 80042334 44866800 */  mtc1        $a2, $f13
/* 000098 80042338 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00009C 8004233C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0000A0 80042340 AFA40018 */  sw          $a0, 0x18($sp)
/* 0000A4 80042344 0C0133A6 */  jal         func_8004CE98
/* 0000A8 80042348 F7AC0020 */   sdc1       $f12, 0x20($sp)
/* 0000AC 8004234C 14400007 */  bne         $v0, $zero, .L8004236C
/* 0000B0 80042350 D7AC0020 */   ldc1       $f12, 0x20($sp)
/* 0000B4 80042354 0C0133C4 */  jal         func_8004CF10
/* 0000B8 80042358 F7AC0020 */   sdc1       $f12, 0x20($sp)
/* 0000BC 8004235C 14400003 */  bne         $v0, $zero, .L8004236C
/* 0000C0 80042360 D7AC0020 */   ldc1       $f12, 0x20($sp)
/* 0000C4 80042364 0C0133E2 */  jal         func_8004CF88
/* 0000C8 80042368 00000000 */   nop
.L8004236C:
/* 0000CC 8004236C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0000D0 80042370 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0000D4 80042374 03E00008 */  jr          $ra
/* 0000D8 80042378 00000000 */   nop

glabel func_8004237C # 3
/* 0000DC 8004237C 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 0000E0 80042380 AFBF001C */  sw          $ra, 0x1c($sp)
/* 0000E4 80042384 AFB00018 */  sw          $s0, 0x18($sp)
/* 0000E8 80042388 AFA40038 */  sw          $a0, 0x38($sp)
/* 0000EC 8004238C 3C05800A */  lui         $a1, %hi(D_800A78E4)
/* 0000F0 80042390 3C06800A */  lui         $a2, %hi(D_8009D550)
/* 0000F4 80042394 24C6D550 */  addiu       $a2, $a2, %lo(D_8009D550)
/* 0000F8 80042398 24A578E4 */  addiu       $a1, $a1, %lo(D_800A78E4)
/* 0000FC 8004239C 0C0108A8 */  jal         func_800422A0
/* 000100 800423A0 8C840120 */   lw         $a0, 0x120($a0)
/* 000104 800423A4 8FB00038 */  lw          $s0, 0x38($sp)
/* 000108 800423A8 3C05800A */  lui         $a1, %hi(D_800A78EC)
/* 00010C 800423AC 3C06800A */  lui         $a2, %hi(D_8009D6A0)
/* 000110 800423B0 24C6D6A0 */  addiu       $a2, $a2, %lo(D_8009D6A0)
/* 000114 800423B4 24A578EC */  addiu       $a1, $a1, %lo(D_800A78EC)
/* 000118 800423B8 26100020 */  addiu       $s0, $s0, 0x20
/* 00011C 800423BC 0C0108A8 */  jal         func_800422A0
/* 000120 800423C0 8E0400F8 */   lw         $a0, 0xf8($s0)
/* 000124 800423C4 3C05800A */  lui         $a1, %hi(D_800A7AB4)
/* 000128 800423C8 3C06800A */  lui         $a2, %hi(D_8009D814)
/* 00012C 800423CC 24C6D814 */  addiu       $a2, $a2, %lo(D_8009D814)
/* 000130 800423D0 24A57AB4 */  addiu       $a1, $a1, %lo(D_800A7AB4)
/* 000134 800423D4 0C0108A8 */  jal         func_800422A0
/* 000138 800423D8 8E04010C */   lw         $a0, 0x10c($s0)
/* 00013C 800423DC 3C04800A */  lui         $a0, %hi(D_800A7ABC)
/* 000140 800423E0 24847ABC */  addiu       $a0, $a0, %lo(D_800A7ABC)
/* 000144 800423E4 8E060110 */  lw          $a2, 0x110($s0)
/* 000148 800423E8 0C0108CC */  jal         func_80042330
/* 00014C 800423EC 8E070114 */   lw         $a3, 0x114($s0)
/* 000150 800423F0 3C04800A */  lui         $a0, %hi(D_800A7AC4)
/* 000154 800423F4 24847AC4 */  addiu       $a0, $a0, %lo(D_800A7AC4)
/* 000158 800423F8 8E060118 */  lw          $a2, 0x118($s0)
/* 00015C 800423FC 0C0108CC */  jal         func_80042330
/* 000160 80042400 8E07011C */   lw         $a3, 0x11c($s0)
/* 000164 80042404 3C04800A */  lui         $a0, %hi(D_800A7AC8)
/* 000168 80042408 24847AC8 */  addiu       $a0, $a0, %lo(D_800A7AC8)
/* 00016C 8004240C 8E060120 */  lw          $a2, 0x120($s0)
/* 000170 80042410 0C0108CC */  jal         func_80042330
/* 000174 80042414 8E070124 */   lw         $a3, 0x124($s0)
/* 000178 80042418 3C04800A */  lui         $a0, %hi(D_800A7AD0)
/* 00017C 8004241C 24847AD0 */  addiu       $a0, $a0, %lo(D_800A7AD0)
/* 000180 80042420 8E060128 */  lw          $a2, 0x128($s0)
/* 000184 80042424 0C0108CC */  jal         func_80042330
/* 000188 80042428 8E07012C */   lw         $a3, 0x12c($s0)
/* 00018C 8004242C 3C04800A */  lui         $a0, %hi(D_800A7AD4)
/* 000190 80042430 24847AD4 */  addiu       $a0, $a0, %lo(D_800A7AD4)
/* 000194 80042434 8E060130 */  lw          $a2, 0x130($s0)
/* 000198 80042438 0C0108CC */  jal         func_80042330
/* 00019C 8004243C 8E070134 */   lw         $a3, 0x134($s0)
/* 0001A0 80042440 3C04800A */  lui         $a0, %hi(D_800A7ADC)
/* 0001A4 80042444 24847ADC */  addiu       $a0, $a0, %lo(D_800A7ADC)
/* 0001A8 80042448 8E060138 */  lw          $a2, 0x138($s0)
/* 0001AC 8004244C 0C0108CC */  jal         func_80042330
/* 0001B0 80042450 8E07013C */   lw         $a3, 0x13c($s0)
/* 0001B4 80042454 3C04800A */  lui         $a0, %hi(D_800A7AE0)
/* 0001B8 80042458 24847AE0 */  addiu       $a0, $a0, %lo(D_800A7AE0)
/* 0001BC 8004245C 8E060140 */  lw          $a2, 0x140($s0)
/* 0001C0 80042460 0C0108CC */  jal         func_80042330
/* 0001C4 80042464 8E070144 */   lw         $a3, 0x144($s0)
/* 0001C8 80042468 3C04800A */  lui         $a0, %hi(D_800A7AE8)
/* 0001CC 8004246C 24847AE8 */  addiu       $a0, $a0, %lo(D_800A7AE8)
/* 0001D0 80042470 8E060148 */  lw          $a2, 0x148($s0)
/* 0001D4 80042474 0C0108CC */  jal         func_80042330
/* 0001D8 80042478 8E07014C */   lw         $a3, 0x14c($s0)
/* 0001DC 8004247C 3C04800A */  lui         $a0, %hi(D_800A7AEC)
/* 0001E0 80042480 24847AEC */  addiu       $a0, $a0, %lo(D_800A7AEC)
/* 0001E4 80042484 8E060150 */  lw          $a2, 0x150($s0)
/* 0001E8 80042488 0C0108CC */  jal         func_80042330
/* 0001EC 8004248C 8E070154 */   lw         $a3, 0x154($s0)
/* 0001F0 80042490 3C04800A */  lui         $a0, %hi(D_800A7AF4)
/* 0001F4 80042494 24847AF4 */  addiu       $a0, $a0, %lo(D_800A7AF4)
/* 0001F8 80042498 8E060158 */  lw          $a2, 0x158($s0)
/* 0001FC 8004249C 0C0108CC */  jal         func_80042330
/* 000200 800424A0 8E07015C */   lw         $a3, 0x15c($s0)
/* 000204 800424A4 3C04800A */  lui         $a0, %hi(D_800A7AF8)
/* 000208 800424A8 24847AF8 */  addiu       $a0, $a0, %lo(D_800A7AF8)
/* 00020C 800424AC 8E060160 */  lw          $a2, 0x160($s0)
/* 000210 800424B0 0C0108CC */  jal         func_80042330
/* 000214 800424B4 8E070164 */   lw         $a3, 0x164($s0)
/* 000218 800424B8 3C04800A */  lui         $a0, %hi(D_800A7B00)
/* 00021C 800424BC 24847B00 */  addiu       $a0, $a0, %lo(D_800A7B00)
/* 000220 800424C0 8E060168 */  lw          $a2, 0x168($s0)
/* 000224 800424C4 0C0108CC */  jal         func_80042330
/* 000228 800424C8 8E07016C */   lw         $a3, 0x16c($s0)
/* 00022C 800424CC 3C04800A */  lui         $a0, %hi(D_800A7B04)
/* 000230 800424D0 24847B04 */  addiu       $a0, $a0, %lo(D_800A7B04)
/* 000234 800424D4 8E060170 */  lw          $a2, 0x170($s0)
/* 000238 800424D8 0C0108CC */  jal         func_80042330
/* 00023C 800424DC 8E070174 */   lw         $a3, 0x174($s0)
/* 000240 800424E0 3C04800A */  lui         $a0, %hi(D_800A7B0C)
/* 000244 800424E4 24847B0C */  addiu       $a0, $a0, %lo(D_800A7B0C)
/* 000248 800424E8 8E060178 */  lw          $a2, 0x178($s0)
/* 00024C 800424EC 0C0108CC */  jal         func_80042330
/* 000250 800424F0 8E07017C */   lw         $a3, 0x17c($s0)
/* 000254 800424F4 3C04800A */  lui         $a0, %hi(D_800A7B10)
/* 000258 800424F8 24847B10 */  addiu       $a0, $a0, %lo(D_800A7B10)
/* 00025C 800424FC 8E060180 */  lw          $a2, 0x180($s0)
/* 000260 80042500 0C0108CC */  jal         func_80042330
/* 000264 80042504 8E070184 */   lw         $a3, 0x184($s0)
/* 000268 80042508 3C04800A */  lui         $a0, %hi(D_800A7B18)
/* 00026C 8004250C 24847B18 */  addiu       $a0, $a0, %lo(D_800A7B18)
/* 000270 80042510 8E060188 */  lw          $a2, 0x188($s0)
/* 000274 80042514 0C0108CC */  jal         func_80042330
/* 000278 80042518 8E07018C */   lw         $a3, 0x18c($s0)
/* 00027C 8004251C 3C04800A */  lui         $a0, %hi(D_800A7B20)
/* 000280 80042520 24847B20 */  addiu       $a0, $a0, %lo(D_800A7B20)
/* 000284 80042524 0C0108BA */  jal         func_800422E8
/* 000288 80042528 8E050114 */   lw         $a1, 0x114($s0)
/* 00028C 8004252C 3C04800A */  lui         $a0, %hi(D_800A7B28)
/* 000290 80042530 24847B28 */  addiu       $a0, $a0, %lo(D_800A7B28)
/* 000294 80042534 0C0108BA */  jal         func_800422E8
/* 000298 80042538 8E05011C */   lw         $a1, 0x11c($s0)
/* 00029C 8004253C 3C04800A */  lui         $a0, %hi(D_800A7B2C)
/* 0002A0 80042540 24847B2C */  addiu       $a0, $a0, %lo(D_800A7B2C)
/* 0002A4 80042544 0C0108BA */  jal         func_800422E8
/* 0002A8 80042548 8E050124 */   lw         $a1, 0x124($s0)
/* 0002AC 8004254C 3C04800A */  lui         $a0, %hi(D_800A7B30)
/* 0002B0 80042550 24847B30 */  addiu       $a0, $a0, %lo(D_800A7B30)
/* 0002B4 80042554 0C0108BA */  jal         func_800422E8
/* 0002B8 80042558 8E05012C */   lw         $a1, 0x12c($s0)
/* 0002BC 8004255C 3C04800A */  lui         $a0, %hi(D_800A7B34)
/* 0002C0 80042560 24847B34 */  addiu       $a0, $a0, %lo(D_800A7B34)
/* 0002C4 80042564 0C0108BA */  jal         func_800422E8
/* 0002C8 80042568 8E050134 */   lw         $a1, 0x134($s0)
/* 0002CC 8004256C 3C04800A */  lui         $a0, %hi(D_800A7B3C)
/* 0002D0 80042570 24847B3C */  addiu       $a0, $a0, %lo(D_800A7B3C)
/* 0002D4 80042574 0C0108BA */  jal         func_800422E8
/* 0002D8 80042578 8E05013C */   lw         $a1, 0x13c($s0)
/* 0002DC 8004257C 3C04800A */  lui         $a0, %hi(D_800A7B40)
/* 0002E0 80042580 24847B40 */  addiu       $a0, $a0, %lo(D_800A7B40)
/* 0002E4 80042584 0C0108BA */  jal         func_800422E8
/* 0002E8 80042588 8E050144 */   lw         $a1, 0x144($s0)
/* 0002EC 8004258C 3C04800A */  lui         $a0, %hi(D_800A7B44)
/* 0002F0 80042590 24847B44 */  addiu       $a0, $a0, %lo(D_800A7B44)
/* 0002F4 80042594 0C0108BA */  jal         func_800422E8
/* 0002F8 80042598 8E05014C */   lw         $a1, 0x14c($s0)
/* 0002FC 8004259C 3C04800A */  lui         $a0, %hi(D_800A7B48)
/* 000300 800425A0 24847B48 */  addiu       $a0, $a0, %lo(D_800A7B48)
/* 000304 800425A4 0C0108BA */  jal         func_800422E8
/* 000308 800425A8 8E050154 */   lw         $a1, 0x154($s0)
/* 00030C 800425AC 3C04800A */  lui         $a0, %hi(D_800A7B50)
/* 000310 800425B0 24847B50 */  addiu       $a0, $a0, %lo(D_800A7B50)
/* 000314 800425B4 0C0108BA */  jal         func_800422E8
/* 000318 800425B8 8E05015C */   lw         $a1, 0x15c($s0)
/* 00031C 800425BC 3C04800A */  lui         $a0, %hi(D_800A7B54)
/* 000320 800425C0 24847B54 */  addiu       $a0, $a0, %lo(D_800A7B54)
/* 000324 800425C4 0C0108BA */  jal         func_800422E8
/* 000328 800425C8 8E050164 */   lw         $a1, 0x164($s0)
/* 00032C 800425CC 3C04800A */  lui         $a0, %hi(D_800A7B58)
/* 000330 800425D0 24847B58 */  addiu       $a0, $a0, %lo(D_800A7B58)
/* 000334 800425D4 0C0108BA */  jal         func_800422E8
/* 000338 800425D8 8E05016C */   lw         $a1, 0x16c($s0)
/* 00033C 800425DC 3C04800A */  lui         $a0, %hi(D_800A7B5C)
/* 000340 800425E0 24847B5C */  addiu       $a0, $a0, %lo(D_800A7B5C)
/* 000344 800425E4 0C0108BA */  jal         func_800422E8
/* 000348 800425E8 8E050174 */   lw         $a1, 0x174($s0)
/* 00034C 800425EC 3C04800A */  lui         $a0, %hi(D_800A7B64)
/* 000350 800425F0 24847B64 */  addiu       $a0, $a0, %lo(D_800A7B64)
/* 000354 800425F4 0C0108BA */  jal         func_800422E8
/* 000358 800425F8 8E05017C */   lw         $a1, 0x17c($s0)
/* 00035C 800425FC 3C04800A */  lui         $a0, %hi(D_800A7B68)
/* 000360 80042600 24847B68 */  addiu       $a0, $a0, %lo(D_800A7B68)
/* 000364 80042604 0C0108BA */  jal         func_800422E8
/* 000368 80042608 8E050184 */   lw         $a1, 0x184($s0)
/* 00036C 8004260C 3C04800A */  lui         $a0, %hi(D_800A7B6C)
/* 000370 80042610 24847B6C */  addiu       $a0, $a0, %lo(D_800A7B6C)
/* 000374 80042614 0C0108BA */  jal         func_800422E8
/* 000378 80042618 8E05018C */   lw         $a1, 0x18c($s0)
/* 00037C 8004261C 3C04800A */  lui         $a0, %hi(D_800A7B74)
/* 000380 80042620 24847B74 */  addiu       $a0, $a0, %lo(D_800A7B74)
/* 000384 80042624 24050028 */  addiu       $a1, $zero, 0x28
/* 000388 80042628 0C00F2A6 */  jal         func_8003CA98
/* 00038C 8004262C 24060009 */   addiu      $a2, $zero, 0x9
/* 000390 80042630 8FAF0038 */  lw          $t7, 0x38($sp)
/* 000394 80042634 3C05800A */  lui         $a1, %hi(D_800A7B78)
/* 000398 80042638 24A57B78 */  addiu       $a1, $a1, %lo(D_800A7B78)
/* 00039C 8004263C 27A40028 */  addiu       $a0, $sp, 0x28
/* 0003A0 80042640 0C014E38 */  jal         func_800538E0
/* 0003A4 80042644 8DE60014 */   lw         $a2, 0x14($t7)
/* 0003A8 80042648 27A40028 */  addiu       $a0, $sp, 0x28
/* 0003AC 8004264C 24050048 */  addiu       $a1, $zero, 0x48
/* 0003B0 80042650 0C00F2A6 */  jal         func_8003CA98
/* 0003B4 80042654 24060009 */   addiu      $a2, $zero, 0x9
/* 0003B8 80042658 3C05800A */  lui         $a1, %hi(D_800A7B7C)
/* 0003BC 8004265C 24A57B7C */  addiu       $a1, $a1, %lo(D_800A7B7C)
/* 0003C0 80042660 27A40028 */  addiu       $a0, $sp, 0x28
/* 0003C4 80042664 0C014E38 */  jal         func_800538E0
/* 0003C8 80042668 8E0600FC */   lw         $a2, 0xfc($s0)
/* 0003CC 8004266C 27A40028 */  addiu       $a0, $sp, 0x28
/* 0003D0 80042670 24050068 */  addiu       $a1, $zero, 0x68
/* 0003D4 80042674 0C00F2A6 */  jal         func_8003CA98
/* 0003D8 80042678 24060009 */   addiu      $a2, $zero, 0x9
/* 0003DC 8004267C 3C05800A */  lui         $a1, %hi(D_800A7B84)
/* 0003E0 80042680 24A57B84 */  addiu       $a1, $a1, %lo(D_800A7B84)
/* 0003E4 80042684 27A40028 */  addiu       $a0, $sp, 0x28
/* 0003E8 80042688 0C014E38 */  jal         func_800538E0
/* 0003EC 8004268C 8E0600E4 */   lw         $a2, 0xe4($s0)
/* 0003F0 80042690 27A40028 */  addiu       $a0, $sp, 0x28
/* 0003F4 80042694 240500B8 */  addiu       $a1, $zero, 0xb8
/* 0003F8 80042698 0C00F2A6 */  jal         func_8003CA98
/* 0003FC 8004269C 24060009 */   addiu      $a2, $zero, 0x9
/* 000400 800426A0 8FBF001C */  lw          $ra, 0x1c($sp)
/* 000404 800426A4 8FB00018 */  lw          $s0, 0x18($sp)
/* 000408 800426A8 27BD0038 */  addiu       $sp, $sp, 0x38
/* 00040C 800426AC 03E00008 */  jr          $ra
/* 000410 800426B0 00000000 */   nop

glabel func_800426B4 # 4
/* 000414 800426B4 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 000418 800426B8 AFB20020 */  sw          $s2, 0x20($sp)
/* 00041C 800426BC 3C128010 */  lui         $s2, %hi(D_800F8ED0)
/* 000420 800426C0 26528ED0 */  addiu       $s2, $s2, %lo(D_800F8ED0)
/* 000424 800426C4 AFBF0034 */  sw          $ra, 0x34($sp)
/* 000428 800426C8 AFA40050 */  sw          $a0, 0x50($sp)
/* 00042C 800426CC AFB60030 */  sw          $s6, 0x30($sp)
/* 000430 800426D0 AFB5002C */  sw          $s5, 0x2c($sp)
/* 000434 800426D4 AFB40028 */  sw          $s4, 0x28($sp)
/* 000438 800426D8 AFB30024 */  sw          $s3, 0x24($sp)
/* 00043C 800426DC AFB1001C */  sw          $s1, 0x1c($sp)
/* 000440 800426E0 AFB00018 */  sw          $s0, 0x18($sp)
/* 000444 800426E4 2404000C */  addiu       $a0, $zero, 0xc
/* 000448 800426E8 02402825 */  move        $a1, $s2
/* 00044C 800426EC 0C0145C4 */  jal         func_80051710
/* 000450 800426F0 24060001 */   addiu      $a2, $zero, 0x1
/* 000454 800426F4 3C16800A */  lui         $s6, %hi(D_8009D9B0)
/* 000458 800426F8 3C15800A */  lui         $s5, %hi(D_800A7BBC)
/* 00045C 800426FC 3C10800A */  lui         $s0, %hi(D_8009D9AC)
/* 000460 80042700 2610D9AC */  addiu       $s0, $s0, %lo(D_8009D9AC)
/* 000464 80042704 26B57BBC */  addiu       $s5, $s5, %lo(D_800A7BBC)
/* 000468 80042708 26D6D9B0 */  addiu       $s6, $s6, %lo(D_8009D9B0)
/* 00046C 8004270C 27B3004C */  addiu       $s3, $sp, 0x4c
/* 000470 80042710 27B10040 */  addiu       $s1, $sp, 0x40
/* 000474 80042714 02402025 */  move        $a0, $s2
.L80042718:
/* 000478 80042718 02602825 */  move        $a1, $s3
/* 00047C 8004271C 0C014554 */  jal         func_80051550
/* 000480 80042720 24060001 */   addiu      $a2, $zero, 0x1
/* 000484 80042724 8E040000 */  lw          $a0, 0x0($s0)
/* 000488 80042728 24050028 */  addiu       $a1, $zero, 0x28
/* 00048C 8004272C 1080000D */  beq         $a0, $zero, .L80042764
/* 000490 80042730 00000000 */   nop
/* 000494 80042734 0C00F2A6 */  jal         func_8003CA98
/* 000498 80042738 24060009 */   addiu      $a2, $zero, 0x9
/* 00049C 8004273C 02202025 */  move        $a0, $s1
/* 0004A0 80042740 02A02825 */  move        $a1, $s5
/* 0004A4 80042744 0C014E38 */  jal         func_800538E0
/* 0004A8 80042748 8EC60000 */   lw         $a2, 0x0($s6)
/* 0004AC 8004274C 02202025 */  move        $a0, $s1
/* 0004B0 80042750 240500C8 */  addiu       $a1, $zero, 0xc8
/* 0004B4 80042754 0C00F2A6 */  jal         func_8003CA98
/* 0004B8 80042758 24060009 */   addiu      $a2, $zero, 0x9
/* 0004BC 8004275C 10000007 */  b           .L8004277C
/* 0004C0 80042760 AE000000 */   sw         $zero, 0x0($s0)
.L80042764:
/* 0004C4 80042764 0C0154EC */  jal         func_800553B0
/* 0004C8 80042768 00000000 */   nop
/* 0004CC 8004276C 10400003 */  beq         $v0, $zero, .L8004277C
/* 0004D0 80042770 00402025 */   move       $a0, $v0
/* 0004D4 80042774 0C0108DF */  jal         func_8004237C
/* 0004D8 80042778 00000000 */   nop
.L8004277C:
/* 0004DC 8004277C 0C014D70 */  jal         func_800535C0
/* 0004E0 80042780 00002025 */   move       $a0, $zero
/* 0004E4 80042784 1000FFE4 */  b           .L80042718
/* 0004E8 80042788 02402025 */   move       $a0, $s2
/* 0004EC 8004278C 00000000 */  nop
/* 0004F0 80042790 00000000 */  nop
/* 0004F4 80042794 00000000 */  nop
/* 0004F8 80042798 00000000 */  nop
/* 0004FC 8004279C 00000000 */  nop
/* 000500 800427A0 8FBF0034 */  lw          $ra, 0x34($sp)
/* 000504 800427A4 8FB00018 */  lw          $s0, 0x18($sp)
/* 000508 800427A8 8FB1001C */  lw          $s1, 0x1c($sp)
/* 00050C 800427AC 8FB20020 */  lw          $s2, 0x20($sp)
/* 000510 800427B0 8FB30024 */  lw          $s3, 0x24($sp)
/* 000514 800427B4 8FB40028 */  lw          $s4, 0x28($sp)
/* 000518 800427B8 8FB5002C */  lw          $s5, 0x2c($sp)
/* 00051C 800427BC 8FB60030 */  lw          $s6, 0x30($sp)
/* 000520 800427C0 03E00008 */  jr          $ra
/* 000524 800427C4 27BD0050 */   addiu      $sp, $sp, 0x50

glabel func_800427C8 # 5
/* 000528 800427C8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00052C 800427CC AFA40020 */  sw          $a0, 0x20($sp)
/* 000530 800427D0 AFA50024 */  sw          $a1, 0x24($sp)
/* 000534 800427D4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 000538 800427D8 3C058010 */  lui         $a1, %hi(D_800F8EE8)
/* 00053C 800427DC 3C048010 */  lui         $a0, %hi(D_800F8ED0)
/* 000540 800427E0 24848ED0 */  addiu       $a0, $a0, %lo(D_800F8ED0)
/* 000544 800427E4 24A58EE8 */  addiu       $a1, $a1, %lo(D_800F8EE8)
/* 000548 800427E8 0C0145B8 */  jal         func_800516E0
/* 00054C 800427EC 24060001 */   addiu      $a2, $zero, 0x1
/* 000550 800427F0 8FAF0024 */  lw          $t7, 0x24($sp)
/* 000554 800427F4 3C0E8010 */  lui         $t6, %hi(D_800F8ED0)
/* 000558 800427F8 25CE8ED0 */  addiu       $t6, $t6, %lo(D_800F8ED0)
/* 00055C 800427FC 3C048010 */  lui         $a0, %hi(D_800F8B20)
/* 000560 80042800 3C068004 */  lui         $a2, %hi(func_800426B4)
/* 000564 80042804 24C626B4 */  addiu       $a2, $a2, %lo(func_800426B4)
/* 000568 80042808 24848B20 */  addiu       $a0, $a0, %lo(D_800F8B20)
/* 00056C 8004280C AFAE0010 */  sw          $t6, 0x10($sp)
/* 000570 80042810 8FA50020 */  lw          $a1, 0x20($sp)
/* 000574 80042814 00003825 */  move        $a3, $zero
/* 000578 80042818 0C0142A8 */  jal         func_80050AA0
/* 00057C 8004281C AFAF0014 */   sw         $t7, 0x14($sp)
/* 000580 80042820 3C048010 */  lui         $a0, %hi(D_800F8B20)
/* 000584 80042824 0C0142FC */  jal         func_80050BF0
/* 000588 80042828 24848B20 */   addiu      $a0, $a0, %lo(D_800F8B20)
/* 00058C 8004282C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 000590 80042830 27BD0020 */  addiu       $sp, $sp, 0x20
/* 000594 80042834 03E00008 */  jr          $ra
/* 000598 80042838 00000000 */   nop
/* 00059C 8004283C 00000000 */  nop
