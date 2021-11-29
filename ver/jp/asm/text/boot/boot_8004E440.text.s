.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004E440 # 0
/* 04DFF0 8004E440 3C0E800A */  lui         $t6, %hi(D_800A3128)
/* 04DFF4 8004E444 8DCE3128 */  lw          $t6, %lo(D_800A3128)($t6)
/* 04DFF8 8004E448 44844000 */  mtc1        $a0, $f8
/* 04DFFC 8004E44C 27BDFFF0 */  addiu       $sp, $sp, -0x10
/* 04E000 8004E450 448E2000 */  mtc1        $t6, $f4
/* 04E004 8004E454 468042A0 */  cvt.s.w     $f10, $f8
/* 04E008 8004E458 04810005 */  bgez        $a0, .L8004E470
/* 04E00C 8004E45C 468021A0 */   cvt.s.w    $f6, $f4
/* 04E010 8004E460 3C014F80 */  lui         $at, 0x4f80
/* 04E014 8004E464 44818000 */  mtc1        $at, $f16
/* 04E018 8004E468 00000000 */  nop
/* 04E01C 8004E46C 46105280 */  add.s       $f10, $f10, $f16
.L8004E470:
/* 04E020 8004E470 460A3483 */  div.s       $f18, $f6, $f10
/* 04E024 8004E474 3C013F00 */  lui         $at, 0x3f00
/* 04E028 8004E478 44812000 */  mtc1        $at, $f4
/* 04E02C 8004E47C 24050001 */  addiu       $a1, $zero, 0x1
/* 04E030 8004E480 46049300 */  add.s       $f12, $f18, $f4
/* 04E034 8004E484 444FF800 */  cfc1        $t7, $31
/* 04E038 8004E488 44C5F800 */  ctc1        $a1, $31
/* 04E03C 8004E48C 00000000 */  nop
/* 04E040 8004E490 46006224 */  cvt.w.s     $f8, $f12
/* 04E044 8004E494 4445F800 */  cfc1        $a1, $31
/* 04E048 8004E498 00000000 */  nop
/* 04E04C 8004E49C 30A10004 */  andi        $at, $a1, 0x4
/* 04E050 8004E4A0 30A50078 */  andi        $a1, $a1, 0x78
/* 04E054 8004E4A4 10A00013 */  beqz        $a1, .L8004E4F4
/* 04E058 8004E4A8 3C014F00 */   lui        $at, 0x4f00
/* 04E05C 8004E4AC 44814000 */  mtc1        $at, $f8
/* 04E060 8004E4B0 24050001 */  addiu       $a1, $zero, 0x1
/* 04E064 8004E4B4 46086201 */  sub.s       $f8, $f12, $f8
/* 04E068 8004E4B8 44C5F800 */  ctc1        $a1, $31
/* 04E06C 8004E4BC 00000000 */  nop
/* 04E070 8004E4C0 46004224 */  cvt.w.s     $f8, $f8
/* 04E074 8004E4C4 4445F800 */  cfc1        $a1, $31
/* 04E078 8004E4C8 00000000 */  nop
/* 04E07C 8004E4CC 30A10004 */  andi        $at, $a1, 0x4
/* 04E080 8004E4D0 30A50078 */  andi        $a1, $a1, 0x78
/* 04E084 8004E4D4 14A00005 */  bnez        $a1, .L8004E4EC
/* 04E088 8004E4D8 00000000 */   nop
/* 04E08C 8004E4DC 44054000 */  mfc1        $a1, $f8
/* 04E090 8004E4E0 3C018000 */  lui         $at, 0x8000
/* 04E094 8004E4E4 10000007 */  b           .L8004E504
/* 04E098 8004E4E8 00A12825 */   or         $a1, $a1, $at
.L8004E4EC:
/* 04E09C 8004E4EC 10000005 */  b           .L8004E504
/* 04E0A0 8004E4F0 2405FFFF */   addiu      $a1, $zero, -0x1
.L8004E4F4:
/* 04E0A4 8004E4F4 44054000 */  mfc1        $a1, $f8
/* 04E0A8 8004E4F8 00000000 */  nop
/* 04E0AC 8004E4FC 04A0FFFB */  bltz        $a1, .L8004E4EC
/* 04E0B0 8004E500 00000000 */   nop
.L8004E504:
/* 04E0B4 8004E504 44CFF800 */  ctc1        $t7, $31
/* 04E0B8 8004E508 2CA10084 */  sltiu       $at, $a1, 0x84
/* 04E0BC 8004E50C 10200003 */  beqz        $at, .L8004E51C
/* 04E0C0 8004E510 00000000 */   nop
/* 04E0C4 8004E514 10000020 */  b           .L8004E598
/* 04E0C8 8004E518 2402FFFF */   addiu      $v0, $zero, -0x1
.L8004E51C:
/* 04E0CC 8004E51C 24010042 */  addiu       $at, $zero, 0x42
/* 04E0D0 8004E520 00A1001B */  divu        $zero, $a1, $at
/* 04E0D4 8004E524 00003012 */  mflo        $a2
/* 04E0D8 8004E528 30D800FF */  andi        $t8, $a2, 0xff
/* 04E0DC 8004E52C 03003025 */  move        $a2, $t8
/* 04E0E0 8004E530 28C10011 */  slti        $at, $a2, 0x11
/* 04E0E4 8004E534 14200002 */  bnez        $at, .L8004E540
/* 04E0E8 8004E538 00000000 */   nop
/* 04E0EC 8004E53C 24060010 */  addiu       $a2, $zero, 0x10
.L8004E540:
/* 04E0F0 8004E540 24B9FFFF */  addiu       $t9, $a1, -0x1
/* 04E0F4 8004E544 3C08A450 */  lui         $t0, %hi(D_A4500010)
/* 04E0F8 8004E548 AD190010 */  sw          $t9, %lo(D_A4500010)($t0)
/* 04E0FC 8004E54C 24C9FFFF */  addiu       $t1, $a2, -0x1
/* 04E100 8004E550 3C0AA450 */  lui         $t2, %hi(D_A4500014)
/* 04E104 8004E554 AD490014 */  sw          $t1, %lo(D_A4500014)($t2)
/* 04E108 8004E558 240B0001 */  addiu       $t3, $zero, 0x1
/* 04E10C 8004E55C 3C0CA450 */  lui         $t4, %hi(D_A4500008)
/* 04E110 8004E560 AD8B0008 */  sw          $t3, %lo(D_A4500008)($t4)
/* 04E114 8004E564 3C0D800A */  lui         $t5, %hi(D_800A3128)
/* 04E118 8004E568 8DAD3128 */  lw          $t5, %lo(D_800A3128)($t5)
/* 04E11C 8004E56C 01A5001A */  div         $zero, $t5, $a1
/* 04E120 8004E570 00001012 */  mflo        $v0
/* 04E124 8004E574 14A00002 */  bnez        $a1, .L8004E580
/* 04E128 8004E578 00000000 */   nop
/* 04E12C 8004E57C 0007000D */  break       7
.L8004E580:
/* 04E130 8004E580 2401FFFF */  addiu       $at, $zero, -0x1
/* 04E134 8004E584 14A10004 */  bne         $a1, $at, .L8004E598
/* 04E138 8004E588 3C018000 */   lui        $at, 0x8000
/* 04E13C 8004E58C 15A10002 */  bne         $t5, $at, .L8004E598
/* 04E140 8004E590 00000000 */   nop
/* 04E144 8004E594 0006000D */  break       6
.L8004E598:
/* 04E148 8004E598 03E00008 */  jr          $ra
/* 04E14C 8004E59C 27BD0010 */   addiu      $sp, $sp, 0x10

glabel func_8004E5A0 # 1
/* 04E150 8004E5A0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 04E154 8004E5A4 AFA40028 */  sw          $a0, 0x28($sp)
/* 04E158 8004E5A8 AFA5002C */  sw          $a1, 0x2c($sp)
/* 04E15C 8004E5AC 8FAE002C */  lw          $t6, 0x2c($sp)
/* 04E160 8004E5B0 8FAF0028 */  lw          $t7, 0x28($sp)
/* 04E164 8004E5B4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04E168 8004E5B8 AFA60030 */  sw          $a2, 0x30($sp)
/* 04E16C 8004E5BC AFA70034 */  sw          $a3, 0x34($sp)
/* 04E170 8004E5C0 AFB00018 */  sw          $s0, 0x18($sp)
/* 04E174 8004E5C4 ADEE0014 */  sw          $t6, 0x14($t7)
/* 04E178 8004E5C8 8FB90028 */  lw          $t9, 0x28($sp)
/* 04E17C 8004E5CC 8FB8003C */  lw          $t8, 0x3c($sp)
/* 04E180 8004E5D0 AF380004 */  sw          $t8, 0x4($t9)
/* 04E184 8004E5D4 8FA80028 */  lw          $t0, 0x28($sp)
/* 04E188 8004E5D8 AD000000 */  sw          $zero, 0x0($t0)
/* 04E18C 8004E5DC 8FA90028 */  lw          $t1, 0x28($sp)
/* 04E190 8004E5E0 AD200008 */  sw          $zero, 0x8($t1)
/* 04E194 8004E5E4 8FAB0028 */  lw          $t3, 0x28($sp)
/* 04E198 8004E5E8 8FAA0030 */  lw          $t2, 0x30($sp)
/* 04E19C 8004E5EC AD6A011C */  sw          $t2, 0x11c($t3)
/* 04E1A0 8004E5F0 8FAC0034 */  lw          $t4, 0x34($sp)
/* 04E1A4 8004E5F4 8FAD0028 */  lw          $t5, 0x28($sp)
/* 04E1A8 8004E5F8 01807825 */  move        $t7, $t4
/* 04E1AC 8004E5FC 000C77C3 */  sra         $t6, $t4, 31
/* 04E1B0 8004E600 ADAE0038 */  sw          $t6, 0x38($t5)
/* 04E1B4 8004E604 ADAF003C */  sw          $t7, 0x3c($t5)
/* 04E1B8 8004E608 8FB80038 */  lw          $t8, 0x38($sp)
/* 04E1BC 8004E60C 8FB90028 */  lw          $t9, 0x28($sp)
/* 04E1C0 8004E610 3C0C8005 */  lui         $t4, %hi(__osCleanupThread)
/* 04E1C4 8004E614 03004825 */  move        $t1, $t8
/* 04E1C8 8004E618 2D210010 */  sltiu       $at, $t1, 0x10
/* 04E1CC 8004E61C 001847C3 */  sra         $t0, $t8, 31
/* 04E1D0 8004E620 01015023 */  subu        $t2, $t0, $at
/* 04E1D4 8004E624 252BFFF0 */  addiu       $t3, $t1, -0x10
/* 04E1D8 8004E628 AF2B00F4 */  sw          $t3, 0xf4($t9)
/* 04E1DC 8004E62C AF2A00F0 */  sw          $t2, 0xf0($t9)
/* 04E1E0 8004E630 8FAD0028 */  lw          $t5, 0x28($sp)
/* 04E1E4 8004E634 258C5580 */  addiu       $t4, $t4, %lo(__osCleanupThread)
/* 04E1E8 8004E638 01807825 */  move        $t7, $t4
/* 04E1EC 8004E63C 000C77C3 */  sra         $t6, $t4, 31
/* 04E1F0 8004E640 ADAE0100 */  sw          $t6, 0x100($t5)
/* 04E1F4 8004E644 ADAF0104 */  sw          $t7, 0x104($t5)
/* 04E1F8 8004E648 8FA90028 */  lw          $t1, 0x28($sp)
/* 04E1FC 8004E64C 3C18003F */  lui         $t8, (0x3FFF01 >> 16)
/* 04E200 8004E650 3718FF01 */  ori         $t8, $t8, (0x3FFF01 & 0xFFFF)
/* 04E204 8004E654 AFB80020 */  sw          $t8, 0x20($sp)
/* 04E208 8004E658 3408FF03 */  ori         $t0, $zero, 0xff03
/* 04E20C 8004E65C AD280118 */  sw          $t0, 0x118($t1)
/* 04E210 8004E660 8FAA0020 */  lw          $t2, 0x20($sp)
/* 04E214 8004E664 8FAC0028 */  lw          $t4, 0x28($sp)
/* 04E218 8004E668 3C01003F */  lui         $at, 0x3f
/* 04E21C 8004E66C 01415824 */  and         $t3, $t2, $at
/* 04E220 8004E670 000BCC02 */  srl         $t9, $t3, 16
/* 04E224 8004E674 AD990128 */  sw          $t9, 0x128($t4)
/* 04E228 8004E678 8FAF0028 */  lw          $t7, 0x28($sp)
/* 04E22C 8004E67C 3C0E0100 */  lui         $t6, (0x1000800 >> 16)
/* 04E230 8004E680 35CE0800 */  ori         $t6, $t6, (0x1000800 & 0xFFFF)
/* 04E234 8004E684 ADEE012C */  sw          $t6, 0x12c($t7)
/* 04E238 8004E688 8FAD0028 */  lw          $t5, 0x28($sp)
/* 04E23C 8004E68C 24180001 */  addiu       $t8, $zero, 0x1
/* 04E240 8004E690 ADA00018 */  sw          $zero, 0x18($t5)
/* 04E244 8004E694 8FA80028 */  lw          $t0, 0x28($sp)
/* 04E248 8004E698 A5180010 */  sh          $t8, 0x10($t0)
/* 04E24C 8004E69C 8FA90028 */  lw          $t1, 0x28($sp)
/* 04E250 8004E6A0 0C015594 */  jal         func_80055650
/* 04E254 8004E6A4 A5200012 */   sh         $zero, 0x12($t1)
/* 04E258 8004E6A8 3C0A800A */  lui         $t2, %hi(D_800A4D6C)
/* 04E25C 8004E6AC 8D4A4D6C */  lw          $t2, %lo(D_800A4D6C)($t2)
/* 04E260 8004E6B0 8FAB0028 */  lw          $t3, 0x28($sp)
/* 04E264 8004E6B4 00408025 */  move        $s0, $v0
/* 04E268 8004E6B8 3C01800A */  lui         $at, %hi(D_800A4D6C)
/* 04E26C 8004E6BC AD6A000C */  sw          $t2, 0xc($t3)
/* 04E270 8004E6C0 8FB90028 */  lw          $t9, 0x28($sp)
/* 04E274 8004E6C4 02002025 */  move        $a0, $s0
/* 04E278 8004E6C8 0C01559C */  jal         func_80055670
/* 04E27C 8004E6CC AC394D6C */   sw         $t9, %lo(D_800A4D6C)($at)
/* 04E280 8004E6D0 8FBF001C */  lw          $ra, 0x1c($sp)
/* 04E284 8004E6D4 8FB00018 */  lw          $s0, 0x18($sp)
/* 04E288 8004E6D8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 04E28C 8004E6DC 03E00008 */  jr          $ra
/* 04E290 8004E6E0 00000000 */   nop
/* 04E294 8004E6E4 00000000 */  nop
/* 04E298 8004E6E8 00000000 */  nop
/* 04E29C 8004E6EC 00000000 */  nop
