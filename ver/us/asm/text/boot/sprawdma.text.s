.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osSpRawStartDma # 0
/* 05A5D0 8005AA20 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 05A5D4 8005AA24 AFBF0014 */  sw          $ra, 0x14($sp)
/* 05A5D8 8005AA28 AFA40018 */  sw          $a0, 0x18($sp)
/* 05A5DC 8005AA2C AFA5001C */  sw          $a1, 0x1c($sp)
/* 05A5E0 8005AA30 AFA60020 */  sw          $a2, 0x20($sp)
/* 05A5E4 8005AA34 0C016AAC */  jal         __osSpDeviceBusy
/* 05A5E8 8005AA38 AFA70024 */   sw         $a3, 0x24($sp)
/* 05A5EC 8005AA3C 10400003 */  beqz        $v0, .L8005AA4C
/* 05A5F0 8005AA40 8FAE001C */   lw         $t6, 0x1c($sp)
/* 05A5F4 8005AA44 10000013 */  b           .L8005AA94
/* 05A5F8 8005AA48 2402FFFF */   addiu      $v0, $zero, -0x1
.L8005AA4C:
/* 05A5FC 8005AA4C 3C0FA404 */  lui         $t7, %hi(D_A4040000)
/* 05A600 8005AA50 ADEE0000 */  sw          $t6, %lo(D_A4040000)($t7)
/* 05A604 8005AA54 0C0143B0 */  jal         osVirtualToPhysical
/* 05A608 8005AA58 8FA40020 */   lw         $a0, 0x20($sp)
/* 05A60C 8005AA5C 3C18A404 */  lui         $t8, %hi(D_A4040004)
/* 05A610 8005AA60 AF020004 */  sw          $v0, %lo(D_A4040004)($t8)
/* 05A614 8005AA64 8FB90018 */  lw          $t9, 0x18($sp)
/* 05A618 8005AA68 8FAB0024 */  lw          $t3, 0x24($sp)
/* 05A61C 8005AA6C 00001025 */  move        $v0, $zero
/* 05A620 8005AA70 17200006 */  bnez        $t9, .L8005AA8C
/* 05A624 8005AA74 256CFFFF */   addiu      $t4, $t3, -0x1
/* 05A628 8005AA78 8FA80024 */  lw          $t0, 0x24($sp)
/* 05A62C 8005AA7C 3C0AA404 */  lui         $t2, %hi(D_A404000C)
/* 05A630 8005AA80 2509FFFF */  addiu       $t1, $t0, -0x1
/* 05A634 8005AA84 10000003 */  b           .L8005AA94
/* 05A638 8005AA88 AD49000C */   sw         $t1, %lo(D_A404000C)($t2)
.L8005AA8C:
/* 05A63C 8005AA8C 3C0DA404 */  lui         $t5, %hi(D_A4040008)
/* 05A640 8005AA90 ADAC0008 */  sw          $t4, %lo(D_A4040008)($t5)
.L8005AA94:
/* 05A644 8005AA94 8FBF0014 */  lw          $ra, 0x14($sp)
/* 05A648 8005AA98 27BD0018 */  addiu       $sp, $sp, 0x18
/* 05A64C 8005AA9C 03E00008 */  jr          $ra
/* 05A650 8005AAA0 00000000 */   nop
/* 05A654 8005AAA4 00000000 */  nop
/* 05A658 8005AAA8 00000000 */  nop
/* 05A65C 8005AAAC 00000000 */  nop
