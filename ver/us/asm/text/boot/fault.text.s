.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800422A0 # 0
/* 041E50 800422A0 AFA50004 */  sw          $a1, 0x4($sp)
/* 041E54 800422A4 8CC30000 */  lw          $v1, 0x0($a2)
/* 041E58 800422A8 24020001 */  addiu       $v0, $zero, 0x1
/* 041E5C 800422AC 1060000C */  beqz        $v1, .L800422E0
/* 041E60 800422B0 00000000 */   nop
/* 041E64 800422B4 8CCE0004 */  lw          $t6, 0x4($a2)
.L800422B8:
/* 041E68 800422B8 00647824 */  and         $t7, $v1, $a0
/* 041E6C 800422BC 55CF0005 */  bnel        $t6, $t7, .L800422D4
/* 041E70 800422C0 8CC3000C */   lw         $v1, 0xc($a2)
/* 041E74 800422C4 50400003 */  beql        $v0, $zero, .L800422D4
/* 041E78 800422C8 8CC3000C */   lw         $v1, 0xc($a2)
/* 041E7C 800422CC 00001025 */  move        $v0, $zero
/* 041E80 800422D0 8CC3000C */  lw          $v1, 0xc($a2)
.L800422D4:
/* 041E84 800422D4 24C6000C */  addiu       $a2, $a2, 0xc
/* 041E88 800422D8 5460FFF7 */  bnel        $v1, $zero, .L800422B8
/* 041E8C 800422DC 8CCE0004 */   lw         $t6, 0x4($a2)
.L800422E0:
/* 041E90 800422E0 03E00008 */  jr          $ra
/* 041E94 800422E4 00000000 */   nop

glabel func_800422E8 # 1
/* 041E98 800422E8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 041E9C 800422EC AFBF0014 */  sw          $ra, 0x14($sp)
/* 041EA0 800422F0 AFA5001C */  sw          $a1, 0x1c($sp)
/* 041EA4 800422F4 AFA40018 */  sw          $a0, 0x18($sp)
/* 041EA8 800422F8 0C013398 */  jal         func_8004CE60
/* 041EAC 800422FC C7AC001C */   lwc1       $f12, 0x1c($sp)
/* 041EB0 80042300 54400008 */  bnel        $v0, $zero, .L80042324
/* 041EB4 80042304 8FBF0014 */   lw         $ra, 0x14($sp)
/* 041EB8 80042308 0C0133B6 */  jal         func_8004CED8
/* 041EBC 8004230C C7AC001C */   lwc1       $f12, 0x1c($sp)
/* 041EC0 80042310 54400004 */  bnel        $v0, $zero, .L80042324
/* 041EC4 80042314 8FBF0014 */   lw         $ra, 0x14($sp)
/* 041EC8 80042318 0C0133D4 */  jal         func_8004CF50
/* 041ECC 8004231C C7AC001C */   lwc1       $f12, 0x1c($sp)
/* 041ED0 80042320 8FBF0014 */  lw          $ra, 0x14($sp)
.L80042324:
/* 041ED4 80042324 27BD0018 */  addiu       $sp, $sp, 0x18
/* 041ED8 80042328 03E00008 */  jr          $ra
/* 041EDC 8004232C 00000000 */   nop

glabel func_80042330 # 2
/* 041EE0 80042330 44876000 */  mtc1        $a3, $f12
/* 041EE4 80042334 44866800 */  mtc1        $a2, $f13
/* 041EE8 80042338 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 041EEC 8004233C AFBF0014 */  sw          $ra, 0x14($sp)
/* 041EF0 80042340 AFA40018 */  sw          $a0, 0x18($sp)
/* 041EF4 80042344 0C0133A6 */  jal         func_8004CE98
/* 041EF8 80042348 F7AC0020 */   sdc1       $f12, 0x20($sp)
/* 041EFC 8004234C 14400007 */  bnez        $v0, .L8004236C
/* 041F00 80042350 D7AC0020 */   ldc1       $f12, 0x20($sp)
/* 041F04 80042354 0C0133C4 */  jal         func_8004CF10
/* 041F08 80042358 F7AC0020 */   sdc1       $f12, 0x20($sp)
/* 041F0C 8004235C 14400003 */  bnez        $v0, .L8004236C
/* 041F10 80042360 D7AC0020 */   ldc1       $f12, 0x20($sp)
/* 041F14 80042364 0C0133E2 */  jal         func_8004CF88
/* 041F18 80042368 00000000 */   nop
.L8004236C:
/* 041F1C 8004236C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 041F20 80042370 27BD0018 */  addiu       $sp, $sp, 0x18
/* 041F24 80042374 03E00008 */  jr          $ra
/* 041F28 80042378 00000000 */   nop

glabel func_8004237C # 3
/* 041F2C 8004237C 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 041F30 80042380 AFBF001C */  sw          $ra, 0x1c($sp)
/* 041F34 80042384 AFB00018 */  sw          $s0, 0x18($sp)
/* 041F38 80042388 AFA40038 */  sw          $a0, 0x38($sp)
/* 041F3C 8004238C 3C05800A */  lui         $a1, %hi(_faultstring_cause)
/* 041F40 80042390 3C06800A */  lui         $a2, %hi(D_8009D550)
/* 041F44 80042394 24C6D550 */  addiu       $a2, $a2, %lo(D_8009D550)
/* 041F48 80042398 24A578E4 */  addiu       $a1, $a1, %lo(_faultstring_cause)
/* 041F4C 8004239C 0C0108A8 */  jal         func_800422A0
/* 041F50 800423A0 8C840120 */   lw         $a0, 0x120($a0)
/* 041F54 800423A4 8FB00038 */  lw          $s0, 0x38($sp)
/* 041F58 800423A8 3C05800A */  lui         $a1, %hi(D_800A78EC)
/* 041F5C 800423AC 3C06800A */  lui         $a2, %hi(D_8009D6A0)
/* 041F60 800423B0 24C6D6A0 */  addiu       $a2, $a2, %lo(D_8009D6A0)
/* 041F64 800423B4 24A578EC */  addiu       $a1, $a1, %lo(D_800A78EC)
/* 041F68 800423B8 26100020 */  addiu       $s0, $s0, 0x20
/* 041F6C 800423BC 0C0108A8 */  jal         func_800422A0
/* 041F70 800423C0 8E0400F8 */   lw         $a0, 0xf8($s0)
/* 041F74 800423C4 3C05800A */  lui         $a1, %hi(D_800A7AB4)
/* 041F78 800423C8 3C06800A */  lui         $a2, %hi(D_8009D814)
/* 041F7C 800423CC 24C6D814 */  addiu       $a2, $a2, %lo(D_8009D814)
/* 041F80 800423D0 24A57AB4 */  addiu       $a1, $a1, %lo(D_800A7AB4)
/* 041F84 800423D4 0C0108A8 */  jal         func_800422A0
/* 041F88 800423D8 8E04010C */   lw         $a0, 0x10c($s0)
/* 041F8C 800423DC 3C04800A */  lui         $a0, %hi(D_800A7ABC)
/* 041F90 800423E0 24847ABC */  addiu       $a0, $a0, %lo(D_800A7ABC)
/* 041F94 800423E4 8E060110 */  lw          $a2, 0x110($s0)
/* 041F98 800423E8 0C0108CC */  jal         func_80042330
/* 041F9C 800423EC 8E070114 */   lw         $a3, 0x114($s0)
/* 041FA0 800423F0 3C04800A */  lui         $a0, %hi(D_800A7AC4)
/* 041FA4 800423F4 24847AC4 */  addiu       $a0, $a0, %lo(D_800A7AC4)
/* 041FA8 800423F8 8E060118 */  lw          $a2, 0x118($s0)
/* 041FAC 800423FC 0C0108CC */  jal         func_80042330
/* 041FB0 80042400 8E07011C */   lw         $a3, 0x11c($s0)
/* 041FB4 80042404 3C04800A */  lui         $a0, %hi(D_800A7AC8)
/* 041FB8 80042408 24847AC8 */  addiu       $a0, $a0, %lo(D_800A7AC8)
/* 041FBC 8004240C 8E060120 */  lw          $a2, 0x120($s0)
/* 041FC0 80042410 0C0108CC */  jal         func_80042330
/* 041FC4 80042414 8E070124 */   lw         $a3, 0x124($s0)
/* 041FC8 80042418 3C04800A */  lui         $a0, %hi(D_800A7AD0)
/* 041FCC 8004241C 24847AD0 */  addiu       $a0, $a0, %lo(D_800A7AD0)
/* 041FD0 80042420 8E060128 */  lw          $a2, 0x128($s0)
/* 041FD4 80042424 0C0108CC */  jal         func_80042330
/* 041FD8 80042428 8E07012C */   lw         $a3, 0x12c($s0)
/* 041FDC 8004242C 3C04800A */  lui         $a0, %hi(D_800A7AD4)
/* 041FE0 80042430 24847AD4 */  addiu       $a0, $a0, %lo(D_800A7AD4)
/* 041FE4 80042434 8E060130 */  lw          $a2, 0x130($s0)
/* 041FE8 80042438 0C0108CC */  jal         func_80042330
/* 041FEC 8004243C 8E070134 */   lw         $a3, 0x134($s0)
/* 041FF0 80042440 3C04800A */  lui         $a0, %hi(D_800A7ADC)
/* 041FF4 80042444 24847ADC */  addiu       $a0, $a0, %lo(D_800A7ADC)
/* 041FF8 80042448 8E060138 */  lw          $a2, 0x138($s0)
/* 041FFC 8004244C 0C0108CC */  jal         func_80042330
/* 042000 80042450 8E07013C */   lw         $a3, 0x13c($s0)
/* 042004 80042454 3C04800A */  lui         $a0, %hi(D_800A7AE0)
/* 042008 80042458 24847AE0 */  addiu       $a0, $a0, %lo(D_800A7AE0)
/* 04200C 8004245C 8E060140 */  lw          $a2, 0x140($s0)
/* 042010 80042460 0C0108CC */  jal         func_80042330
/* 042014 80042464 8E070144 */   lw         $a3, 0x144($s0)
/* 042018 80042468 3C04800A */  lui         $a0, %hi(D_800A7AE8)
/* 04201C 8004246C 24847AE8 */  addiu       $a0, $a0, %lo(D_800A7AE8)
/* 042020 80042470 8E060148 */  lw          $a2, 0x148($s0)
/* 042024 80042474 0C0108CC */  jal         func_80042330
/* 042028 80042478 8E07014C */   lw         $a3, 0x14c($s0)
/* 04202C 8004247C 3C04800A */  lui         $a0, %hi(D_800A7AEC)
/* 042030 80042480 24847AEC */  addiu       $a0, $a0, %lo(D_800A7AEC)
/* 042034 80042484 8E060150 */  lw          $a2, 0x150($s0)
/* 042038 80042488 0C0108CC */  jal         func_80042330
/* 04203C 8004248C 8E070154 */   lw         $a3, 0x154($s0)
/* 042040 80042490 3C04800A */  lui         $a0, %hi(D_800A7AF4)
/* 042044 80042494 24847AF4 */  addiu       $a0, $a0, %lo(D_800A7AF4)
/* 042048 80042498 8E060158 */  lw          $a2, 0x158($s0)
/* 04204C 8004249C 0C0108CC */  jal         func_80042330
/* 042050 800424A0 8E07015C */   lw         $a3, 0x15c($s0)
/* 042054 800424A4 3C04800A */  lui         $a0, %hi(D_800A7AF8)
/* 042058 800424A8 24847AF8 */  addiu       $a0, $a0, %lo(D_800A7AF8)
/* 04205C 800424AC 8E060160 */  lw          $a2, 0x160($s0)
/* 042060 800424B0 0C0108CC */  jal         func_80042330
/* 042064 800424B4 8E070164 */   lw         $a3, 0x164($s0)
/* 042068 800424B8 3C04800A */  lui         $a0, %hi(D_800A7B00)
/* 04206C 800424BC 24847B00 */  addiu       $a0, $a0, %lo(D_800A7B00)
/* 042070 800424C0 8E060168 */  lw          $a2, 0x168($s0)
/* 042074 800424C4 0C0108CC */  jal         func_80042330
/* 042078 800424C8 8E07016C */   lw         $a3, 0x16c($s0)
/* 04207C 800424CC 3C04800A */  lui         $a0, %hi(D_800A7B04)
/* 042080 800424D0 24847B04 */  addiu       $a0, $a0, %lo(D_800A7B04)
/* 042084 800424D4 8E060170 */  lw          $a2, 0x170($s0)
/* 042088 800424D8 0C0108CC */  jal         func_80042330
/* 04208C 800424DC 8E070174 */   lw         $a3, 0x174($s0)
/* 042090 800424E0 3C04800A */  lui         $a0, %hi(D_800A7B0C)
/* 042094 800424E4 24847B0C */  addiu       $a0, $a0, %lo(D_800A7B0C)
/* 042098 800424E8 8E060178 */  lw          $a2, 0x178($s0)
/* 04209C 800424EC 0C0108CC */  jal         func_80042330
/* 0420A0 800424F0 8E07017C */   lw         $a3, 0x17c($s0)
/* 0420A4 800424F4 3C04800A */  lui         $a0, %hi(D_800A7B10)
/* 0420A8 800424F8 24847B10 */  addiu       $a0, $a0, %lo(D_800A7B10)
/* 0420AC 800424FC 8E060180 */  lw          $a2, 0x180($s0)
/* 0420B0 80042500 0C0108CC */  jal         func_80042330
/* 0420B4 80042504 8E070184 */   lw         $a3, 0x184($s0)
/* 0420B8 80042508 3C04800A */  lui         $a0, %hi(D_800A7B18)
/* 0420BC 8004250C 24847B18 */  addiu       $a0, $a0, %lo(D_800A7B18)
/* 0420C0 80042510 8E060188 */  lw          $a2, 0x188($s0)
/* 0420C4 80042514 0C0108CC */  jal         func_80042330
/* 0420C8 80042518 8E07018C */   lw         $a3, 0x18c($s0)
/* 0420CC 8004251C 3C04800A */  lui         $a0, %hi(D_800A7B20)
/* 0420D0 80042520 24847B20 */  addiu       $a0, $a0, %lo(D_800A7B20)
/* 0420D4 80042524 0C0108BA */  jal         func_800422E8
/* 0420D8 80042528 8E050114 */   lw         $a1, 0x114($s0)
/* 0420DC 8004252C 3C04800A */  lui         $a0, %hi(D_800A7B28)
/* 0420E0 80042530 24847B28 */  addiu       $a0, $a0, %lo(D_800A7B28)
/* 0420E4 80042534 0C0108BA */  jal         func_800422E8
/* 0420E8 80042538 8E05011C */   lw         $a1, 0x11c($s0)
/* 0420EC 8004253C 3C04800A */  lui         $a0, %hi(D_800A7B2C)
/* 0420F0 80042540 24847B2C */  addiu       $a0, $a0, %lo(D_800A7B2C)
/* 0420F4 80042544 0C0108BA */  jal         func_800422E8
/* 0420F8 80042548 8E050124 */   lw         $a1, 0x124($s0)
/* 0420FC 8004254C 3C04800A */  lui         $a0, %hi(D_800A7B30)
/* 042100 80042550 24847B30 */  addiu       $a0, $a0, %lo(D_800A7B30)
/* 042104 80042554 0C0108BA */  jal         func_800422E8
/* 042108 80042558 8E05012C */   lw         $a1, 0x12c($s0)
/* 04210C 8004255C 3C04800A */  lui         $a0, %hi(D_800A7B34)
/* 042110 80042560 24847B34 */  addiu       $a0, $a0, %lo(D_800A7B34)
/* 042114 80042564 0C0108BA */  jal         func_800422E8
/* 042118 80042568 8E050134 */   lw         $a1, 0x134($s0)
/* 04211C 8004256C 3C04800A */  lui         $a0, %hi(D_800A7B3C)
/* 042120 80042570 24847B3C */  addiu       $a0, $a0, %lo(D_800A7B3C)
/* 042124 80042574 0C0108BA */  jal         func_800422E8
/* 042128 80042578 8E05013C */   lw         $a1, 0x13c($s0)
/* 04212C 8004257C 3C04800A */  lui         $a0, %hi(D_800A7B40)
/* 042130 80042580 24847B40 */  addiu       $a0, $a0, %lo(D_800A7B40)
/* 042134 80042584 0C0108BA */  jal         func_800422E8
/* 042138 80042588 8E050144 */   lw         $a1, 0x144($s0)
/* 04213C 8004258C 3C04800A */  lui         $a0, %hi(D_800A7B44)
/* 042140 80042590 24847B44 */  addiu       $a0, $a0, %lo(D_800A7B44)
/* 042144 80042594 0C0108BA */  jal         func_800422E8
/* 042148 80042598 8E05014C */   lw         $a1, 0x14c($s0)
/* 04214C 8004259C 3C04800A */  lui         $a0, %hi(D_800A7B48)
/* 042150 800425A0 24847B48 */  addiu       $a0, $a0, %lo(D_800A7B48)
/* 042154 800425A4 0C0108BA */  jal         func_800422E8
/* 042158 800425A8 8E050154 */   lw         $a1, 0x154($s0)
/* 04215C 800425AC 3C04800A */  lui         $a0, %hi(D_800A7B50)
/* 042160 800425B0 24847B50 */  addiu       $a0, $a0, %lo(D_800A7B50)
/* 042164 800425B4 0C0108BA */  jal         func_800422E8
/* 042168 800425B8 8E05015C */   lw         $a1, 0x15c($s0)
/* 04216C 800425BC 3C04800A */  lui         $a0, %hi(D_800A7B54)
/* 042170 800425C0 24847B54 */  addiu       $a0, $a0, %lo(D_800A7B54)
/* 042174 800425C4 0C0108BA */  jal         func_800422E8
/* 042178 800425C8 8E050164 */   lw         $a1, 0x164($s0)
/* 04217C 800425CC 3C04800A */  lui         $a0, %hi(D_800A7B58)
/* 042180 800425D0 24847B58 */  addiu       $a0, $a0, %lo(D_800A7B58)
/* 042184 800425D4 0C0108BA */  jal         func_800422E8
/* 042188 800425D8 8E05016C */   lw         $a1, 0x16c($s0)
/* 04218C 800425DC 3C04800A */  lui         $a0, %hi(D_800A7B5C)
/* 042190 800425E0 24847B5C */  addiu       $a0, $a0, %lo(D_800A7B5C)
/* 042194 800425E4 0C0108BA */  jal         func_800422E8
/* 042198 800425E8 8E050174 */   lw         $a1, 0x174($s0)
/* 04219C 800425EC 3C04800A */  lui         $a0, %hi(D_800A7B64)
/* 0421A0 800425F0 24847B64 */  addiu       $a0, $a0, %lo(D_800A7B64)
/* 0421A4 800425F4 0C0108BA */  jal         func_800422E8
/* 0421A8 800425F8 8E05017C */   lw         $a1, 0x17c($s0)
/* 0421AC 800425FC 3C04800A */  lui         $a0, %hi(D_800A7B68)
/* 0421B0 80042600 24847B68 */  addiu       $a0, $a0, %lo(D_800A7B68)
/* 0421B4 80042604 0C0108BA */  jal         func_800422E8
/* 0421B8 80042608 8E050184 */   lw         $a1, 0x184($s0)
/* 0421BC 8004260C 3C04800A */  lui         $a0, %hi(D_800A7B6C)
/* 0421C0 80042610 24847B6C */  addiu       $a0, $a0, %lo(D_800A7B6C)
/* 0421C4 80042614 0C0108BA */  jal         func_800422E8
/* 0421C8 80042618 8E05018C */   lw         $a1, 0x18c($s0)
/* 0421CC 8004261C 3C04800A */  lui         $a0, %hi(_faultstring_FiT)
/* 0421D0 80042620 24847B74 */  addiu       $a0, $a0, %lo(_faultstring_FiT)
/* 0421D4 80042624 24050028 */  addiu       $a1, $zero, 0x28
/* 0421D8 80042628 0C00F2A6 */  jal         func_8003CA98
/* 0421DC 8004262C 24060009 */   addiu      $a2, $zero, 0x9
/* 0421E0 80042630 8FAF0038 */  lw          $t7, 0x38($sp)
/* 0421E4 80042634 3C05800A */  lui         $a1, %hi(D_800A7B78)
/* 0421E8 80042638 24A57B78 */  addiu       $a1, $a1, %lo(D_800A7B78)
/* 0421EC 8004263C 27A40028 */  addiu       $a0, $sp, 0x28
/* 0421F0 80042640 0C014E38 */  jal         func_800538E0
/* 0421F4 80042644 8DE60014 */   lw         $a2, 0x14($t7)
/* 0421F8 80042648 27A40028 */  addiu       $a0, $sp, 0x28
/* 0421FC 8004264C 24050048 */  addiu       $a1, $zero, 0x48
/* 042200 80042650 0C00F2A6 */  jal         func_8003CA98
/* 042204 80042654 24060009 */   addiu      $a2, $zero, 0x9
/* 042208 80042658 3C05800A */  lui         $a1, %hi(D_800A7B7C)
/* 04220C 8004265C 24A57B7C */  addiu       $a1, $a1, %lo(D_800A7B7C)
/* 042210 80042660 27A40028 */  addiu       $a0, $sp, 0x28
/* 042214 80042664 0C014E38 */  jal         func_800538E0
/* 042218 80042668 8E0600FC */   lw         $a2, 0xfc($s0)
/* 04221C 8004266C 27A40028 */  addiu       $a0, $sp, 0x28
/* 042220 80042670 24050068 */  addiu       $a1, $zero, 0x68
/* 042224 80042674 0C00F2A6 */  jal         func_8003CA98
/* 042228 80042678 24060009 */   addiu      $a2, $zero, 0x9
/* 04222C 8004267C 3C05800A */  lui         $a1, %hi(D_800A7B84)
/* 042230 80042680 24A57B84 */  addiu       $a1, $a1, %lo(D_800A7B84)
/* 042234 80042684 27A40028 */  addiu       $a0, $sp, 0x28
/* 042238 80042688 0C014E38 */  jal         func_800538E0
/* 04223C 8004268C 8E0600E4 */   lw         $a2, 0xe4($s0)
/* 042240 80042690 27A40028 */  addiu       $a0, $sp, 0x28
/* 042244 80042694 240500B8 */  addiu       $a1, $zero, 0xb8
/* 042248 80042698 0C00F2A6 */  jal         func_8003CA98
/* 04224C 8004269C 24060009 */   addiu      $a2, $zero, 0x9
/* 042250 800426A0 8FBF001C */  lw          $ra, 0x1c($sp)
/* 042254 800426A4 8FB00018 */  lw          $s0, 0x18($sp)
/* 042258 800426A8 27BD0038 */  addiu       $sp, $sp, 0x38
/* 04225C 800426AC 03E00008 */  jr          $ra
/* 042260 800426B0 00000000 */   nop

glabel Fault_ThreadEntry # 4
/* 042264 800426B4 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 042268 800426B8 AFB20020 */  sw          $s2, 0x20($sp)
/* 04226C 800426BC 3C128010 */  lui         $s2, %hi(D_800F8ED0)
/* 042270 800426C0 26528ED0 */  addiu       $s2, $s2, %lo(D_800F8ED0)
/* 042274 800426C4 AFBF0034 */  sw          $ra, 0x34($sp)
/* 042278 800426C8 AFA40050 */  sw          $a0, 0x50($sp)
/* 04227C 800426CC AFB60030 */  sw          $s6, 0x30($sp)
/* 042280 800426D0 AFB5002C */  sw          $s5, 0x2c($sp)
/* 042284 800426D4 AFB40028 */  sw          $s4, 0x28($sp)
/* 042288 800426D8 AFB30024 */  sw          $s3, 0x24($sp)
/* 04228C 800426DC AFB1001C */  sw          $s1, 0x1c($sp)
/* 042290 800426E0 AFB00018 */  sw          $s0, 0x18($sp)
/* 042294 800426E4 2404000C */  addiu       $a0, $zero, 0xc
/* 042298 800426E8 02402825 */  move        $a1, $s2
/* 04229C 800426EC 0C0145C4 */  jal         func_80051710
/* 0422A0 800426F0 24060001 */   addiu      $a2, $zero, 0x1
/* 0422A4 800426F4 3C16800A */  lui         $s6, %hi(D_8009D9B0)
/* 0422A8 800426F8 3C15800A */  lui         $s5, %hi(D_800A7BBC)
/* 0422AC 800426FC 3C10800A */  lui         $s0, %hi(D_8009D9AC)
/* 0422B0 80042700 2610D9AC */  addiu       $s0, $s0, %lo(D_8009D9AC)
/* 0422B4 80042704 26B57BBC */  addiu       $s5, $s5, %lo(D_800A7BBC)
/* 0422B8 80042708 26D6D9B0 */  addiu       $s6, $s6, %lo(D_8009D9B0)
/* 0422BC 8004270C 27B3004C */  addiu       $s3, $sp, 0x4c
/* 0422C0 80042710 27B10040 */  addiu       $s1, $sp, 0x40
/* 0422C4 80042714 02402025 */  move        $a0, $s2
.L80042718:
/* 0422C8 80042718 02602825 */  move        $a1, $s3
/* 0422CC 8004271C 0C014554 */  jal         osRecvMesg
/* 0422D0 80042720 24060001 */   addiu      $a2, $zero, 0x1
/* 0422D4 80042724 8E040000 */  lw          $a0, 0x0($s0)
/* 0422D8 80042728 24050028 */  addiu       $a1, $zero, 0x28
/* 0422DC 8004272C 1080000D */  beqz        $a0, .L80042764
/* 0422E0 80042730 00000000 */   nop
/* 0422E4 80042734 0C00F2A6 */  jal         func_8003CA98
/* 0422E8 80042738 24060009 */   addiu      $a2, $zero, 0x9
/* 0422EC 8004273C 02202025 */  move        $a0, $s1
/* 0422F0 80042740 02A02825 */  move        $a1, $s5
/* 0422F4 80042744 0C014E38 */  jal         func_800538E0
/* 0422F8 80042748 8EC60000 */   lw         $a2, 0x0($s6)
/* 0422FC 8004274C 02202025 */  move        $a0, $s1
/* 042300 80042750 240500C8 */  addiu       $a1, $zero, 0xc8
/* 042304 80042754 0C00F2A6 */  jal         func_8003CA98
/* 042308 80042758 24060009 */   addiu      $a2, $zero, 0x9
/* 04230C 8004275C 10000007 */  b           .L8004277C
/* 042310 80042760 AE000000 */   sw         $zero, 0x0($s0)
.L80042764:
/* 042314 80042764 0C0154EC */  jal         func_800553B0
/* 042318 80042768 00000000 */   nop
/* 04231C 8004276C 10400003 */  beqz        $v0, .L8004277C
/* 042320 80042770 00402025 */   move       $a0, $v0
/* 042324 80042774 0C0108DF */  jal         func_8004237C
/* 042328 80042778 00000000 */   nop
.L8004277C:
/* 04232C 8004277C 0C014D70 */  jal         osViBlack
/* 042330 80042780 00002025 */   move       $a0, $zero
/* 042334 80042784 1000FFE4 */  b           .L80042718
/* 042338 80042788 02402025 */   move       $a0, $s2
/* 04233C 8004278C 00000000 */  nop
/* 042340 80042790 00000000 */  nop
/* 042344 80042794 00000000 */  nop
/* 042348 80042798 00000000 */  nop
/* 04234C 8004279C 00000000 */  nop
/* 042350 800427A0 8FBF0034 */  lw          $ra, 0x34($sp)
/* 042354 800427A4 8FB00018 */  lw          $s0, 0x18($sp)
/* 042358 800427A8 8FB1001C */  lw          $s1, 0x1c($sp)
/* 04235C 800427AC 8FB20020 */  lw          $s2, 0x20($sp)
/* 042360 800427B0 8FB30024 */  lw          $s3, 0x24($sp)
/* 042364 800427B4 8FB40028 */  lw          $s4, 0x28($sp)
/* 042368 800427B8 8FB5002C */  lw          $s5, 0x2c($sp)
/* 04236C 800427BC 8FB60030 */  lw          $s6, 0x30($sp)
/* 042370 800427C0 03E00008 */  jr          $ra
/* 042374 800427C4 27BD0050 */   addiu      $sp, $sp, 0x50

glabel Fault_Start # 5
/* 042378 800427C8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 04237C 800427CC AFA40020 */  sw          $a0, 0x20($sp)
/* 042380 800427D0 AFA50024 */  sw          $a1, 0x24($sp)
/* 042384 800427D4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 042388 800427D8 3C058010 */  lui         $a1, %hi(D_800F8EE8)
/* 04238C 800427DC 3C048010 */  lui         $a0, %hi(D_800F8ED0)
/* 042390 800427E0 24848ED0 */  addiu       $a0, $a0, %lo(D_800F8ED0)
/* 042394 800427E4 24A58EE8 */  addiu       $a1, $a1, %lo(D_800F8EE8)
/* 042398 800427E8 0C0145B8 */  jal         osCreateMesgQueue
/* 04239C 800427EC 24060001 */   addiu      $a2, $zero, 0x1
/* 0423A0 800427F0 8FAF0024 */  lw          $t7, 0x24($sp)
/* 0423A4 800427F4 3C0E8010 */  lui         $t6, %hi(D_800F8ED0)
/* 0423A8 800427F8 25CE8ED0 */  addiu       $t6, $t6, %lo(D_800F8ED0)
/* 0423AC 800427FC 3C048010 */  lui         $a0, %hi(D_800F8B20)
/* 0423B0 80042800 3C068004 */  lui         $a2, %hi(Fault_ThreadEntry)
/* 0423B4 80042804 24C626B4 */  addiu       $a2, $a2, %lo(Fault_ThreadEntry)
/* 0423B8 80042808 24848B20 */  addiu       $a0, $a0, %lo(D_800F8B20)
/* 0423BC 8004280C AFAE0010 */  sw          $t6, 0x10($sp)
/* 0423C0 80042810 8FA50020 */  lw          $a1, 0x20($sp)
/* 0423C4 80042814 00003825 */  move        $a3, $zero
/* 0423C8 80042818 0C0142A8 */  jal         osCreateThread
/* 0423CC 8004281C AFAF0014 */   sw         $t7, 0x14($sp)
/* 0423D0 80042820 3C048010 */  lui         $a0, %hi(D_800F8B20)
/* 0423D4 80042824 0C0142FC */  jal         osStartThread
/* 0423D8 80042828 24848B20 */   addiu      $a0, $a0, %lo(D_800F8B20)
/* 0423DC 8004282C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0423E0 80042830 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0423E4 80042834 03E00008 */  jr          $ra
/* 0423E8 80042838 00000000 */   nop
/* 0423EC 8004283C 00000000 */  nop