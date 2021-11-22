.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osVoiceStopReadData # 0
/* 054BF0 80055040 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 054BF4 80055044 AFBF002C */  sw          $ra, 0x2c($sp)
/* 054BF8 80055048 AFB50028 */  sw          $s5, 0x28($sp)
/* 054BFC 8005504C AFB00014 */  sw          $s0, 0x14($sp)
/* 054C00 80055050 00808025 */  move        $s0, $a0
/* 054C04 80055054 27B5003F */  addiu       $s5, $sp, 0x3f
/* 054C08 80055058 AFB40024 */  sw          $s4, 0x24($sp)
/* 054C0C 8005505C AFB30020 */  sw          $s3, 0x20($sp)
/* 054C10 80055060 AFB2001C */  sw          $s2, 0x1c($sp)
/* 054C14 80055064 AFB10018 */  sw          $s1, 0x18($sp)
/* 054C18 80055068 8E050004 */  lw          $a1, 0x4($s0)
/* 054C1C 8005506C 8C840000 */  lw          $a0, 0x0($a0)
/* 054C20 80055070 0C01558C */  jal         __osVoiceGetStatus
/* 054C24 80055074 02A03025 */   move       $a2, $s5
/* 054C28 80055078 10400003 */  beqz        $v0, .L80055088
/* 054C2C 8005507C 93AE003F */   lbu        $t6, 0x3f($sp)
/* 054C30 80055080 1000002F */  b           .L80055140
/* 054C34 80055084 8FBF002C */   lw         $ra, 0x2c($sp)
.L80055088:
/* 054C38 80055088 31CF0002 */  andi        $t7, $t6, 0x2
/* 054C3C 8005508C 51E00004 */  beql        $t7, $zero, .L800550A0
/* 054C40 80055090 8E180008 */   lw         $t8, 0x8($s0)
/* 054C44 80055094 10000029 */  b           .L8005513C
/* 054C48 80055098 2402000F */   addiu      $v0, $zero, 0xf
/* 054C4C 8005509C 8E180008 */  lw          $t8, 0x8($s0)
.L800550A0:
/* 054C50 800550A0 24190700 */  addiu       $t9, $zero, 0x700
/* 054C54 800550A4 00003025 */  move        $a2, $zero
/* 054C58 800550A8 17000003 */  bnez        $t8, .L800550B8
/* 054C5C 800550AC 27A70038 */   addiu      $a3, $sp, 0x38
/* 054C60 800550B0 10000022 */  b           .L8005513C
/* 054C64 800550B4 24020005 */   addiu      $v0, $zero, 0x5
.L800550B8:
/* 054C68 800550B8 AFB90038 */  sw          $t9, 0x38($sp)
/* 054C6C 800550BC 8E050004 */  lw          $a1, 0x4($s0)
/* 054C70 800550C0 0C0156D0 */  jal         __osVoiceContWrite4
/* 054C74 800550C4 8E040000 */   lw         $a0, 0x0($s0)
/* 054C78 800550C8 1440001B */  bnez        $v0, .L80055138
/* 054C7C 800550CC 00401825 */   move       $v1, $v0
/* 054C80 800550D0 00008825 */  move        $s1, $zero
/* 054C84 800550D4 24140014 */  addiu       $s4, $zero, 0x14
/* 054C88 800550D8 2413000F */  addiu       $s3, $zero, 0xf
/* 054C8C 800550DC 24120007 */  addiu       $s2, $zero, 0x7
/* 054C90 800550E0 02002025 */  move        $a0, $s0
.L800550E4:
/* 054C94 800550E4 0C01575C */  jal         __osVoiceCheckResult
/* 054C98 800550E8 02A02825 */   move       $a1, $s5
/* 054C9C 800550EC 3048FF00 */  andi        $t0, $v0, 0xff00
/* 054CA0 800550F0 1100000A */  beqz        $t0, .L8005511C
/* 054CA4 800550F4 00401825 */   move       $v1, $v0
/* 054CA8 800550F8 30430007 */  andi        $v1, $v0, 0x7
/* 054CAC 800550FC 50600003 */  beql        $v1, $zero, .L8005510C
/* 054CB0 80055100 00001825 */   move       $v1, $zero
/* 054CB4 80055104 16430003 */  bne         $s2, $v1, .L80055114
/* 054CB8 80055108 00001825 */   move       $v1, $zero
.L8005510C:
/* 054CBC 8005510C 10000004 */  b           .L80055120
/* 054CC0 80055110 AE000008 */   sw         $zero, 0x8($s0)
.L80055114:
/* 054CC4 80055114 10000002 */  b           .L80055120
/* 054CC8 80055118 24030005 */   addiu      $v1, $zero, 0x5
.L8005511C:
/* 054CCC 8005511C AE000008 */  sw          $zero, 0x8($s0)
.L80055120:
/* 054CD0 80055120 26310001 */  addiu       $s1, $s1, 0x1
/* 054CD4 80055124 14730004 */  bne         $v1, $s3, .L80055138
/* 054CD8 80055128 AFB10040 */   sw         $s1, 0x40($sp)
/* 054CDC 8005512C 5634FFED */  bnel        $s1, $s4, .L800550E4
/* 054CE0 80055130 02002025 */   move       $a0, $s0
/* 054CE4 80055134 AFB10040 */  sw          $s1, 0x40($sp)
.L80055138:
/* 054CE8 80055138 00601025 */  move        $v0, $v1
.L8005513C:
/* 054CEC 8005513C 8FBF002C */  lw          $ra, 0x2c($sp)
.L80055140:
/* 054CF0 80055140 8FB00014 */  lw          $s0, 0x14($sp)
/* 054CF4 80055144 8FB10018 */  lw          $s1, 0x18($sp)
/* 054CF8 80055148 8FB2001C */  lw          $s2, 0x1c($sp)
/* 054CFC 8005514C 8FB30020 */  lw          $s3, 0x20($sp)
/* 054D00 80055150 8FB40024 */  lw          $s4, 0x24($sp)
/* 054D04 80055154 8FB50028 */  lw          $s5, 0x28($sp)
/* 054D08 80055158 03E00008 */  jr          $ra
/* 054D0C 8005515C 27BD0048 */   addiu      $sp, $sp, 0x48
