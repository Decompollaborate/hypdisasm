.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005A030 # 0
/* 059BE0 8005A030 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 059BE4 8005A034 3C03A460 */  lui         $v1, 0xa460
/* 059BE8 8005A038 34630010 */  ori         $v1, $v1, 0x10
/* 059BEC 8005A03C AFBF0014 */  sw          $ra, 0x14($sp)
/* 059BF0 8005A040 AFA40018 */  sw          $a0, 0x18($sp)
/* 059BF4 8005A044 AFA5001C */  sw          $a1, 0x1c($sp)
/* 059BF8 8005A048 8C620000 */  lw          $v0, 0x0($v1)
/* 059BFC 8005A04C 00C02025 */  move        $a0, $a2
/* 059C00 8005A050 304E0003 */  andi        $t6, $v0, 0x3
/* 059C04 8005A054 11C00005 */  beqz        $t6, .L8005A06C
/* 059C08 8005A058 00000000 */   nop
/* 059C0C 8005A05C 8C620000 */  lw          $v0, 0x0($v1)
.L8005A060:
/* 059C10 8005A060 304F0003 */  andi        $t7, $v0, 0x3
/* 059C14 8005A064 55E0FFFE */  bnel        $t7, $zero, .L8005A060
/* 059C18 8005A068 8C620000 */   lw         $v0, 0x0($v1)
.L8005A06C:
/* 059C1C 8005A06C 0C0143B0 */  jal         osVirtualToPhysical
/* 059C20 8005A070 AFA70024 */   sw         $a3, 0x24($sp)
/* 059C24 8005A074 8FA30018 */  lw          $v1, 0x18($sp)
/* 059C28 8005A078 8FA70024 */  lw          $a3, 0x24($sp)
/* 059C2C 8005A07C 3C18A460 */  lui         $t8, %hi(D_A4600000)
/* 059C30 8005A080 AF020000 */  sw          $v0, %lo(D_A4600000)($t8)
/* 059C34 8005A084 3C198000 */  lui         $t9, %hi(D_80000308)
/* 059C38 8005A088 8F390308 */  lw          $t9, %lo(D_80000308)($t9)
/* 059C3C 8005A08C 8FA8001C */  lw          $t0, 0x1c($sp)
/* 059C40 8005A090 3C011FFF */  lui         $at, 0x1fff
/* 059C44 8005A094 3421FFFF */  ori         $at, $at, 0xffff
/* 059C48 8005A098 03284825 */  or          $t1, $t9, $t0
/* 059C4C 8005A09C 01215024 */  and         $t2, $t1, $at
/* 059C50 8005A0A0 3C0BA460 */  lui         $t3, %hi(D_A4600004)
/* 059C54 8005A0A4 10600006 */  beqz        $v1, .L8005A0C0
/* 059C58 8005A0A8 AD6A0004 */   sw         $t2, %lo(D_A4600004)($t3)
/* 059C5C 8005A0AC 24010001 */  addiu       $at, $zero, 0x1
/* 059C60 8005A0B0 10610007 */  beq         $v1, $at, .L8005A0D0
/* 059C64 8005A0B4 24EEFFFF */   addiu      $t6, $a3, -0x1
/* 059C68 8005A0B8 1000000B */  b           .L8005A0E8
/* 059C6C 8005A0BC 2402FFFF */   addiu      $v0, $zero, -0x1
.L8005A0C0:
/* 059C70 8005A0C0 24ECFFFF */  addiu       $t4, $a3, -0x1
/* 059C74 8005A0C4 3C0DA460 */  lui         $t5, %hi(D_A460000C)
/* 059C78 8005A0C8 10000006 */  b           .L8005A0E4
/* 059C7C 8005A0CC ADAC000C */   sw         $t4, %lo(D_A460000C)($t5)
.L8005A0D0:
/* 059C80 8005A0D0 3C0FA460 */  lui         $t7, %hi(D_A4600008)
/* 059C84 8005A0D4 10000003 */  b           .L8005A0E4
/* 059C88 8005A0D8 ADEE0008 */   sw         $t6, %lo(D_A4600008)($t7)
/* 059C8C 8005A0DC 10000002 */  b           .L8005A0E8
/* 059C90 8005A0E0 2402FFFF */   addiu      $v0, $zero, -0x1
.L8005A0E4:
/* 059C94 8005A0E4 00001025 */  move        $v0, $zero
.L8005A0E8:
/* 059C98 8005A0E8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 059C9C 8005A0EC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 059CA0 8005A0F0 03E00008 */  jr          $ra
/* 059CA4 8005A0F4 00000000 */   nop
/* 059CA8 8005A0F8 00000000 */  nop
/* 059CAC 8005A0FC 00000000 */  nop
