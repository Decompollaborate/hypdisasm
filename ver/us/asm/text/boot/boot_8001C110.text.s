.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8001C110 # 0
/* 01BCC0 8001C110 3C01800B */  lui         $at, %hi(D_800B6990)
/* 01BCC4 8001C114 3C03800B */  lui         $v1, %hi(D_800B6998)
/* 01BCC8 8001C118 3C02800B */  lui         $v0, %hi(D_800B69B8)
/* 01BCCC 8001C11C 244269B8 */  addiu       $v0, $v0, %lo(D_800B69B8)
/* 01BCD0 8001C120 24636998 */  addiu       $v1, $v1, %lo(D_800B6998)
/* 01BCD4 8001C124 AC206990 */  sw          $zero, %lo(D_800B6990)($at)
/* 01BCD8 8001C128 AC206994 */  sw          $zero, %lo(D_800B6994)($at)
.L8001C12C:
/* 01BCDC 8001C12C 24630010 */  addiu       $v1, $v1, 0x10
/* 01BCE0 8001C130 AC60FFF4 */  sw          $zero, -0xc($v1)
/* 01BCE4 8001C134 AC60FFF8 */  sw          $zero, -0x8($v1)
/* 01BCE8 8001C138 AC60FFFC */  sw          $zero, -0x4($v1)
/* 01BCEC 8001C13C 1462FFFB */  bne         $v1, $v0, .L8001C12C
/* 01BCF0 8001C140 AC60FFF0 */   sw         $zero, -0x10($v1)
/* 01BCF4 8001C144 3C01800B */  lui         $at, %hi(D_800B69B8)
/* 01BCF8 8001C148 03E00008 */  jr          $ra
/* 01BCFC 8001C14C AC2069B8 */   sw         $zero, %lo(D_800B69B8)($at)

glabel func_8001C150 # 1
/* 01BD00 8001C150 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01BD04 8001C154 AFBF001C */  sw          $ra, 0x1c($sp)
/* 01BD08 8001C158 AFB10018 */  sw          $s1, 0x18($sp)
/* 01BD0C 8001C15C 00808825 */  move        $s1, $a0
/* 01BD10 8001C160 AFB00014 */  sw          $s0, 0x14($sp)
/* 01BD14 8001C164 AFA5002C */  sw          $a1, 0x2c($sp)
/* 01BD18 8001C168 AFA60030 */  sw          $a2, 0x30($sp)
/* 01BD1C 8001C16C 0C00208F */  jal         func_8000823C
/* 01BD20 8001C170 AFA70034 */   sw         $a3, 0x34($sp)
/* 01BD24 8001C174 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 01BD28 8001C178 00408025 */  move        $s0, $v0
/* 01BD2C 8001C17C 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 01BD30 8001C180 24050010 */  addiu       $a1, $zero, 0x10
/* 01BD34 8001C184 0C00E03D */  jal         func_800380F4
/* 01BD38 8001C188 24060040 */   addiu      $a2, $zero, 0x40
/* 01BD3C 8001C18C 00402025 */  move        $a0, $v0
/* 01BD40 8001C190 24050010 */  addiu       $a1, $zero, 0x10
/* 01BD44 8001C194 0C014388 */  jal         bzero
/* 01BD48 8001C198 AFA20020 */   sw         $v0, 0x20($sp)
/* 01BD4C 8001C19C 8FA30020 */  lw          $v1, 0x20($sp)
/* 01BD50 8001C1A0 8FAE0030 */  lw          $t6, 0x30($sp)
/* 01BD54 8001C1A4 24080087 */  addiu       $t0, $zero, 0x87
/* 01BD58 8001C1A8 02002025 */  move        $a0, $s0
/* 01BD5C 8001C1AC AC6E0004 */  sw          $t6, 0x4($v1)
/* 01BD60 8001C1B0 8FAF0034 */  lw          $t7, 0x34($sp)
/* 01BD64 8001C1B4 AC6F0008 */  sw          $t7, 0x8($v1)
/* 01BD68 8001C1B8 8FB8002C */  lw          $t8, 0x2c($sp)
/* 01BD6C 8001C1BC AC780000 */  sw          $t8, 0x0($v1)
/* 01BD70 8001C1C0 8FB90038 */  lw          $t9, 0x38($sp)
/* 01BD74 8001C1C4 AC79000C */  sw          $t9, 0xc($v1)
/* 01BD78 8001C1C8 A6080034 */  sh          $t0, 0x34($s0)
/* 01BD7C 8001C1CC 0C00213A */  jal         func_800084E8
/* 01BD80 8001C1D0 AE030054 */   sw         $v1, 0x54($s0)
/* 01BD84 8001C1D4 0C00219D */  jal         func_80008674
/* 01BD88 8001C1D8 00402025 */   move       $a0, $v0
/* 01BD8C 8001C1DC C6240000 */  lwc1        $f4, 0x0($s1)
/* 01BD90 8001C1E0 3C04800B */  lui         $a0, %hi(D_800B69B8)
/* 01BD94 8001C1E4 248469B8 */  addiu       $a0, $a0, %lo(D_800B69B8)
/* 01BD98 8001C1E8 E6040018 */  swc1        $f4, 0x18($s0)
/* 01BD9C 8001C1EC C6260004 */  lwc1        $f6, 0x4($s1)
/* 01BDA0 8001C1F0 8E090038 */  lw          $t1, 0x38($s0)
/* 01BDA4 8001C1F4 3C01800B */  lui         $at, %hi(D_800B6990)
/* 01BDA8 8001C1F8 E606001C */  swc1        $f6, 0x1c($s0)
/* 01BDAC 8001C1FC C6280008 */  lwc1        $f8, 0x8($s1)
/* 01BDB0 8001C200 E6080020 */  swc1        $f8, 0x20($s0)
/* 01BDB4 8001C204 C62A0000 */  lwc1        $f10, 0x0($s1)
/* 01BDB8 8001C208 E60A0044 */  swc1        $f10, 0x44($s0)
/* 01BDBC 8001C20C C6300004 */  lwc1        $f16, 0x4($s1)
/* 01BDC0 8001C210 E6100048 */  swc1        $f16, 0x48($s0)
/* 01BDC4 8001C214 C6320008 */  lwc1        $f18, 0x8($s1)
/* 01BDC8 8001C218 E612004C */  swc1        $f18, 0x4c($s0)
/* 01BDCC 8001C21C 8C830000 */  lw          $v1, 0x0($a0)
/* 01BDD0 8001C220 8FBF001C */  lw          $ra, 0x1c($sp)
/* 01BDD4 8001C224 8FB10018 */  lw          $s1, 0x18($sp)
/* 01BDD8 8001C228 00035080 */  sll         $t2, $v1, 2
/* 01BDDC 8001C22C 002A0821 */  addu        $at, $at, $t2
/* 01BDE0 8001C230 8FB00014 */  lw          $s0, 0x14($sp)
/* 01BDE4 8001C234 AC296990 */  sw          $t1, %lo(D_800B6990)($at)
/* 01BDE8 8001C238 246B0001 */  addiu       $t3, $v1, 0x1
/* 01BDEC 8001C23C AC8B0000 */  sw          $t3, 0x0($a0)
/* 01BDF0 8001C240 03E00008 */  jr          $ra
/* 01BDF4 8001C244 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8001C248 # 2
/* 01BDF8 8001C248 00047080 */  sll         $t6, $a0, 2
/* 01BDFC 8001C24C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01BE00 8001C250 3C04800B */  lui         $a0, %hi(D_800B6990)
/* 01BE04 8001C254 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01BE08 8001C258 008E2021 */  addu        $a0, $a0, $t6
/* 01BE0C 8001C25C AFA5001C */  sw          $a1, 0x1c($sp)
/* 01BE10 8001C260 0C001FA3 */  jal         func_80007E8C
/* 01BE14 8001C264 8C846990 */   lw         $a0, %lo(D_800B6990)($a0)
/* 01BE18 8001C268 8C430054 */  lw          $v1, 0x54($v0)
/* 01BE1C 8001C26C 8FAF001C */  lw          $t7, 0x1c($sp)
/* 01BE20 8001C270 AC6F000C */  sw          $t7, 0xc($v1)
/* 01BE24 8001C274 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01BE28 8001C278 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01BE2C 8001C27C 03E00008 */  jr          $ra
/* 01BE30 8001C280 00000000 */   nop

glabel func_8001C284 # 3
/* 01BE34 8001C284 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01BE38 8001C288 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01BE3C 8001C28C 8C830054 */  lw          $v1, 0x54($a0)
/* 01BE40 8001C290 24010001 */  addiu       $at, $zero, 0x1
/* 01BE44 8001C294 8C620000 */  lw          $v0, 0x0($v1)
/* 01BE48 8001C298 1040000A */  beqz        $v0, .L8001C2C4
/* 01BE4C 8001C29C 00000000 */   nop
/* 01BE50 8001C2A0 10410012 */  beq         $v0, $at, .L8001C2EC
/* 01BE54 8001C2A4 24010002 */   addiu      $at, $zero, 0x2
/* 01BE58 8001C2A8 1041001A */  beq         $v0, $at, .L8001C314
/* 01BE5C 8001C2AC 3C04800B */   lui        $a0, 0x800b
/* 01BE60 8001C2B0 24010003 */  addiu       $at, $zero, 0x3
/* 01BE64 8001C2B4 10410020 */  beq         $v0, $at, .L8001C338
/* 01BE68 8001C2B8 3C04800B */   lui        $a0, 0x800b
/* 01BE6C 8001C2BC 10000023 */  b           .L8001C34C
/* 01BE70 8001C2C0 8FBF0014 */   lw         $ra, 0x14($sp)
.L8001C2C4:
/* 01BE74 8001C2C4 0C043A56 */  jal         func_8010E958
/* 01BE78 8001C2C8 8C640004 */   lw         $a0, 0x4($v1)
/* 01BE7C 8001C2CC 3C04800B */  lui         $a0, %hi(D_800B69C0)
/* 01BE80 8001C2D0 3C05800A */  lui         $a1, %hi(D_800A38DC)
/* 01BE84 8001C2D4 24A538DC */  addiu       $a1, $a1, %lo(D_800A38DC)
/* 01BE88 8001C2D8 248469C0 */  addiu       $a0, $a0, %lo(D_800B69C0)
/* 01BE8C 8001C2DC 0C014E38 */  jal         func_800538E0
/* 01BE90 8001C2E0 00403025 */   move       $a2, $v0
/* 01BE94 8001C2E4 10000019 */  b           .L8001C34C
/* 01BE98 8001C2E8 8FBF0014 */   lw         $ra, 0x14($sp)
.L8001C2EC:
/* 01BE9C 8001C2EC 0C043A56 */  jal         func_8010E958
/* 01BEA0 8001C2F0 8C640004 */   lw         $a0, 0x4($v1)
/* 01BEA4 8001C2F4 3C04800B */  lui         $a0, %hi(D_800B69C0)
/* 01BEA8 8001C2F8 3C05800A */  lui         $a1, %hi(D_800A38FC)
/* 01BEAC 8001C2FC 24A538FC */  addiu       $a1, $a1, %lo(D_800A38FC)
/* 01BEB0 8001C300 248469C0 */  addiu       $a0, $a0, %lo(D_800B69C0)
/* 01BEB4 8001C304 0C014E38 */  jal         func_800538E0
/* 01BEB8 8001C308 00403025 */   move       $a2, $v0
/* 01BEBC 8001C30C 1000000F */  b           .L8001C34C
/* 01BEC0 8001C310 8FBF0014 */   lw         $ra, 0x14($sp)
.L8001C314:
/* 01BEC4 8001C314 8C6E0004 */  lw          $t6, 0x4($v1)
/* 01BEC8 8001C318 3C058008 */  lui         $a1, %hi(D_80078120)
/* 01BECC 8001C31C 248469C0 */  addiu       $a0, $a0, 0x69c0
/* 01BED0 8001C320 000E7880 */  sll         $t7, $t6, 2
/* 01BED4 8001C324 00AF2821 */  addu        $a1, $a1, $t7
/* 01BED8 8001C328 0C014E38 */  jal         func_800538E0
/* 01BEDC 8001C32C 8CA58120 */   lw         $a1, %lo(D_80078120)($a1)
/* 01BEE0 8001C330 10000006 */  b           .L8001C34C
/* 01BEE4 8001C334 8FBF0014 */   lw         $ra, 0x14($sp)
.L8001C338:
/* 01BEE8 8001C338 3C058008 */  lui         $a1, %hi(D_80078120)
/* 01BEEC 8001C33C 8CA58120 */  lw          $a1, %lo(D_80078120)($a1)
/* 01BEF0 8001C340 0C014E38 */  jal         func_800538E0
/* 01BEF4 8001C344 248469C0 */   addiu      $a0, $a0, 0x69c0
/* 01BEF8 8001C348 8FBF0014 */  lw          $ra, 0x14($sp)
.L8001C34C:
/* 01BEFC 8001C34C 3C02800B */  lui         $v0, %hi(D_800B69C0)
/* 01BF00 8001C350 244269C0 */  addiu       $v0, $v0, %lo(D_800B69C0)
/* 01BF04 8001C354 03E00008 */  jr          $ra
/* 01BF08 8001C358 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8001C35C # 4
/* 01BF0C 8001C35C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01BF10 8001C360 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01BF14 8001C364 8C820054 */  lw          $v0, 0x54($a0)
/* 01BF18 8001C368 3C04800B */  lui         $a0, %hi(D_800B6A88)
/* 01BF1C 8001C36C 24846A88 */  addiu       $a0, $a0, %lo(D_800B6A88)
/* 01BF20 8001C370 8C4E000C */  lw          $t6, 0xc($v0)
/* 01BF24 8001C374 3C05800A */  lui         $a1, 0x800a
/* 01BF28 8001C378 2DC10005 */  sltiu       $at, $t6, 0x5
/* 01BF2C 8001C37C 10200029 */  beqz        $at, .L8001C424
/* 01BF30 8001C380 000E7080 */   sll        $t6, $t6, 2
/* 01BF34 8001C384 3C01800A */  lui         $at, %hi(jtbl_800A39DC)
/* 01BF38 8001C388 002E0821 */  addu        $at, $at, $t6
/* 01BF3C 8001C38C 8C2E39DC */  lw          $t6, %lo(jtbl_800A39DC)($at)
/* 01BF40 8001C390 01C00008 */  jr          $t6
/* 01BF44 8001C394 00000000 */   nop
glabel L8001C398
/* 01BF48 8001C398 3C04800B */  lui         $a0, %hi(D_800B6A88)
/* 01BF4C 8001C39C 3C05800A */  lui         $a1, %hi(D_800A391C)
/* 01BF50 8001C3A0 24A5391C */  addiu       $a1, $a1, %lo(D_800A391C)
/* 01BF54 8001C3A4 0C014E38 */  jal         func_800538E0
/* 01BF58 8001C3A8 24846A88 */   addiu      $a0, $a0, %lo(D_800B6A88)
/* 01BF5C 8001C3AC 10000020 */  b           .L8001C430
/* 01BF60 8001C3B0 8FBF0014 */   lw         $ra, 0x14($sp)
glabel L8001C3B4
/* 01BF64 8001C3B4 3C04800B */  lui         $a0, %hi(D_800B6A88)
/* 01BF68 8001C3B8 3C05800A */  lui         $a1, %hi(D_800A3934)
/* 01BF6C 8001C3BC 24A53934 */  addiu       $a1, $a1, %lo(D_800A3934)
/* 01BF70 8001C3C0 0C014E38 */  jal         func_800538E0
/* 01BF74 8001C3C4 24846A88 */   addiu      $a0, $a0, %lo(D_800B6A88)
/* 01BF78 8001C3C8 10000019 */  b           .L8001C430
/* 01BF7C 8001C3CC 8FBF0014 */   lw         $ra, 0x14($sp)
glabel L8001C3D0
/* 01BF80 8001C3D0 3C04800B */  lui         $a0, %hi(D_800B6A88)
/* 01BF84 8001C3D4 3C05800A */  lui         $a1, %hi(D_800A3944)
/* 01BF88 8001C3D8 24A53944 */  addiu       $a1, $a1, %lo(D_800A3944)
/* 01BF8C 8001C3DC 0C014E38 */  jal         func_800538E0
/* 01BF90 8001C3E0 24846A88 */   addiu      $a0, $a0, %lo(D_800B6A88)
/* 01BF94 8001C3E4 10000012 */  b           .L8001C430
/* 01BF98 8001C3E8 8FBF0014 */   lw         $ra, 0x14($sp)
glabel L8001C3EC
/* 01BF9C 8001C3EC 3C04800B */  lui         $a0, %hi(D_800B6A88)
/* 01BFA0 8001C3F0 3C05800A */  lui         $a1, %hi(D_800A3964)
/* 01BFA4 8001C3F4 24A53964 */  addiu       $a1, $a1, %lo(D_800A3964)
/* 01BFA8 8001C3F8 0C014E38 */  jal         func_800538E0
/* 01BFAC 8001C3FC 24846A88 */   addiu      $a0, $a0, %lo(D_800B6A88)
/* 01BFB0 8001C400 1000000B */  b           .L8001C430
/* 01BFB4 8001C404 8FBF0014 */   lw         $ra, 0x14($sp)
glabel L8001C408
/* 01BFB8 8001C408 3C04800B */  lui         $a0, %hi(D_800B6A88)
/* 01BFBC 8001C40C 3C05800A */  lui         $a1, %hi(D_800A3994)
/* 01BFC0 8001C410 24A53994 */  addiu       $a1, $a1, %lo(D_800A3994)
/* 01BFC4 8001C414 0C014E38 */  jal         func_800538E0
/* 01BFC8 8001C418 24846A88 */   addiu      $a0, $a0, %lo(D_800B6A88)
/* 01BFCC 8001C41C 10000004 */  b           .L8001C430
/* 01BFD0 8001C420 8FBF0014 */   lw         $ra, 0x14($sp)
.L8001C424:
/* 01BFD4 8001C424 0C014E38 */  jal         func_800538E0
/* 01BFD8 8001C428 24A539B8 */   addiu      $a1, $a1, 0x39b8
/* 01BFDC 8001C42C 8FBF0014 */  lw          $ra, 0x14($sp)
.L8001C430:
/* 01BFE0 8001C430 3C02800B */  lui         $v0, %hi(D_800B6A88)
/* 01BFE4 8001C434 24426A88 */  addiu       $v0, $v0, %lo(D_800B6A88)
/* 01BFE8 8001C438 03E00008 */  jr          $ra
/* 01BFEC 8001C43C 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8001C440 # 5
/* 01BFF0 8001C440 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01BFF4 8001C444 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01BFF8 8001C448 0C007A0C */  jal         func_8001E830
/* 01BFFC 8001C44C 00000000 */   nop
/* 01C000 8001C450 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01C004 8001C454 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01C008 8001C458 03E00008 */  jr          $ra
/* 01C00C 8001C45C 00000000 */   nop

glabel func_8001C460 # 6
/* 01C010 8001C460 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01C014 8001C464 AFA40018 */  sw          $a0, 0x18($sp)
/* 01C018 8001C468 24A7000F */  addiu       $a3, $a1, 0xf
/* 01C01C 8001C46C 2401FFF0 */  addiu       $at, $zero, -0x10
/* 01C020 8001C470 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01C024 8001C474 00E12824 */  and         $a1, $a3, $at
/* 01C028 8001C478 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 01C02C 8001C47C 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 01C030 8001C480 AFA5001C */  sw          $a1, 0x1c($sp)
/* 01C034 8001C484 0C00E03D */  jal         func_800380F4
/* 01C038 8001C488 24060033 */   addiu      $a2, $zero, 0x33
/* 01C03C 8001C48C 3C03800B */  lui         $v1, %hi(D_800B6B50)
/* 01C040 8001C490 24636B50 */  addiu       $v1, $v1, %lo(D_800B6B50)
/* 01C044 8001C494 3C04800B */  lui         $a0, %hi(D_800B6B58)
/* 01C048 8001C498 AC620000 */  sw          $v0, 0x0($v1)
/* 01C04C 8001C49C 8FA6001C */  lw          $a2, 0x1c($sp)
/* 01C050 8001C4A0 24846B58 */  addiu       $a0, $a0, %lo(D_800B6B58)
/* 01C054 8001C4A4 0C00DFC0 */  jal         func_80037F00
/* 01C058 8001C4A8 00402825 */   move       $a1, $v0
/* 01C05C 8001C4AC 3C04800B */  lui         $a0, %hi(D_800B6B68)
/* 01C060 8001C4B0 24846B68 */  addiu       $a0, $a0, %lo(D_800B6B68)
/* 01C064 8001C4B4 0C01059C */  jal         func_80041670
/* 01C068 8001C4B8 8FA50018 */   lw         $a1, 0x18($sp)
/* 01C06C 8001C4BC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01C070 8001C4C0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01C074 8001C4C4 03E00008 */  jr          $ra
/* 01C078 8001C4C8 00000000 */   nop

glabel func_8001C4CC # 7
/* 01C07C 8001C4CC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01C080 8001C4D0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01C084 8001C4D4 3C04800B */  lui         $a0, %hi(D_800B6B68)
/* 01C088 8001C4D8 0C0105FB */  jal         func_800417EC
/* 01C08C 8001C4DC 24846B68 */   addiu      $a0, $a0, %lo(D_800B6B68)
/* 01C090 8001C4E0 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 01C094 8001C4E4 3C05800B */  lui         $a1, %hi(D_800B6B50)
/* 01C098 8001C4E8 8CA56B50 */  lw          $a1, %lo(D_800B6B50)($a1)
/* 01C09C 8001C4EC 0C00E152 */  jal         func_80038548
/* 01C0A0 8001C4F0 24842960 */   addiu      $a0, $a0, %lo(D_800F2960)
/* 01C0A4 8001C4F4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01C0A8 8001C4F8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01C0AC 8001C4FC 03E00008 */  jr          $ra
/* 01C0B0 8001C500 00000000 */   nop

glabel func_8001C504 # 8
/* 01C0B4 8001C504 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01C0B8 8001C508 AFA40028 */  sw          $a0, 0x28($sp)
/* 01C0BC 8001C50C AFBF0014 */  sw          $ra, 0x14($sp)
/* 01C0C0 8001C510 00A03025 */  move        $a2, $a1
/* 01C0C4 8001C514 24A40008 */  addiu       $a0, $a1, 0x8
/* 01C0C8 8001C518 27A5001C */  addiu       $a1, $sp, 0x1c
/* 01C0CC 8001C51C 0C00E957 */  jal         func_8003A55C
/* 01C0D0 8001C520 AFA6002C */   sw         $a2, 0x2c($sp)
/* 01C0D4 8001C524 8FA6002C */  lw          $a2, 0x2c($sp)
/* 01C0D8 8001C528 C7A4001C */  lwc1        $f4, 0x1c($sp)
/* 01C0DC 8001C52C C7B00020 */  lwc1        $f16, 0x20($sp)
/* 01C0E0 8001C530 80CE000B */  lb          $t6, 0xb($a2)
/* 01C0E4 8001C534 8FB90028 */  lw          $t9, 0x28($sp)
/* 01C0E8 8001C538 27A5001C */  addiu       $a1, $sp, 0x1c
/* 01C0EC 8001C53C 448E3000 */  mtc1        $t6, $f6
/* 01C0F0 8001C540 00000000 */  nop
/* 01C0F4 8001C544 46803220 */  cvt.s.w     $f8, $f6
/* 01C0F8 8001C548 46082282 */  mul.s       $f10, $f4, $f8
/* 01C0FC 8001C54C C7A80024 */  lwc1        $f8, 0x24($sp)
/* 01C100 8001C550 E7AA001C */  swc1        $f10, 0x1c($sp)
/* 01C104 8001C554 80CF000B */  lb          $t7, 0xb($a2)
/* 01C108 8001C558 448F9000 */  mtc1        $t7, $f18
/* 01C10C 8001C55C 00000000 */  nop
/* 01C110 8001C560 468091A0 */  cvt.s.w     $f6, $f18
/* 01C114 8001C564 46068102 */  mul.s       $f4, $f16, $f6
/* 01C118 8001C568 E7A40020 */  swc1        $f4, 0x20($sp)
/* 01C11C 8001C56C 80D8000B */  lb          $t8, 0xb($a2)
/* 01C120 8001C570 44985000 */  mtc1        $t8, $f10
/* 01C124 8001C574 00000000 */  nop
/* 01C128 8001C578 468054A0 */  cvt.s.w     $f18, $f10
/* 01C12C 8001C57C 46124402 */  mul.s       $f16, $f8, $f18
/* 01C130 8001C580 E7B00024 */  swc1        $f16, 0x24($sp)
/* 01C134 8001C584 0C0450EF */  jal         func_801143BC
/* 01C138 8001C588 8F240038 */   lw         $a0, 0x38($t9)
/* 01C13C 8001C58C 8FA40028 */  lw          $a0, 0x28($sp)
/* 01C140 8001C590 3C053F00 */  lui         $a1, 0x3f00
/* 01C144 8001C594 3C06447A */  lui         $a2, 0x447a
/* 01C148 8001C598 0C045369 */  jal         func_80114DA4
/* 01C14C 8001C59C 24070000 */   addiu      $a3, $zero, 0x0
/* 01C150 8001C5A0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01C154 8001C5A4 27BD0028 */  addiu       $sp, $sp, 0x28
/* 01C158 8001C5A8 03E00008 */  jr          $ra
/* 01C15C 8001C5AC 00000000 */   nop

glabel func_8001C5B0 # 9
/* 01C160 8001C5B0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01C164 8001C5B4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01C168 8001C5B8 90AE0006 */  lbu         $t6, 0x6($a1)
/* 01C16C 8001C5BC 3C198008 */  lui         $t9, %hi(D_80078130)
/* 01C170 8001C5C0 000E7880 */  sll         $t7, $t6, 2
/* 01C174 8001C5C4 032FC821 */  addu        $t9, $t9, $t7
/* 01C178 8001C5C8 8F398130 */  lw          $t9, %lo(D_80078130)($t9)
/* 01C17C 8001C5CC 0320F809 */  jalr        $t9
/* 01C180 8001C5D0 00000000 */   nop
/* 01C184 8001C5D4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01C188 8001C5D8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01C18C 8001C5DC 03E00008 */  jr          $ra
/* 01C190 8001C5E0 00000000 */   nop

glabel func_8001C5E4 # 10
/* 01C194 8001C5E4 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 01C198 8001C5E8 AFB50028 */  sw          $s5, 0x28($sp)
/* 01C19C 8001C5EC AFBF002C */  sw          $ra, 0x2c($sp)
/* 01C1A0 8001C5F0 AFB40024 */  sw          $s4, 0x24($sp)
/* 01C1A4 8001C5F4 AFB30020 */  sw          $s3, 0x20($sp)
/* 01C1A8 8001C5F8 AFB2001C */  sw          $s2, 0x1c($sp)
/* 01C1AC 8001C5FC AFB10018 */  sw          $s1, 0x18($sp)
/* 01C1B0 8001C600 AFB00014 */  sw          $s0, 0x14($sp)
/* 01C1B4 8001C604 8C930038 */  lw          $s3, 0x38($a0)
/* 01C1B8 8001C608 3C15800B */  lui         $s5, %hi(D_800B6B68)
/* 01C1BC 8001C60C 26B56B68 */  addiu       $s5, $s5, %lo(D_800B6B68)
/* 01C1C0 8001C610 00A09025 */  move        $s2, $a1
/* 01C1C4 8001C614 0080A025 */  move        $s4, $a0
/* 01C1C8 8001C618 02A02025 */  move        $a0, $s5
/* 01C1CC 8001C61C 0C01081E */  jal         func_80042078
/* 01C1D0 8001C620 02602825 */   move       $a1, $s3
/* 01C1D4 8001C624 10400016 */  beqz        $v0, .L8001C680
/* 01C1D8 8001C628 00408025 */   move       $s0, $v0
/* 01C1DC 8001C62C 3C11800B */  lui         $s1, %hi(D_800B6B58)
/* 01C1E0 8001C630 26316B58 */  addiu       $s1, $s1, %lo(D_800B6B58)
.L8001C634:
/* 01C1E4 8001C634 12400003 */  beqz        $s2, .L8001C644
/* 01C1E8 8001C638 02802025 */   move       $a0, $s4
/* 01C1EC 8001C63C 0240F809 */  jalr        $s2
/* 01C1F0 8001C640 02002825 */   move       $a1, $s0
.L8001C644:
/* 01C1F4 8001C644 960E0004 */  lhu         $t6, 0x4($s0)
/* 01C1F8 8001C648 02202025 */  move        $a0, $s1
/* 01C1FC 8001C64C 31CF0001 */  andi        $t7, $t6, 0x1
/* 01C200 8001C650 51E00004 */  beql        $t7, $zero, .L8001C664
/* 01C204 8001C654 02202025 */   move       $a0, $s1
/* 01C208 8001C658 0C00E152 */  jal         func_80038548
/* 01C20C 8001C65C 8E050008 */   lw         $a1, 0x8($s0)
/* 01C210 8001C660 02202025 */  move        $a0, $s1
.L8001C664:
/* 01C214 8001C664 0C00E152 */  jal         func_80038548
/* 01C218 8001C668 02002825 */   move       $a1, $s0
/* 01C21C 8001C66C 02A02025 */  move        $a0, $s5
/* 01C220 8001C670 0C01082D */  jal         func_800420B4
/* 01C224 8001C674 02602825 */   move       $a1, $s3
/* 01C228 8001C678 1440FFEE */  bnez        $v0, .L8001C634
/* 01C22C 8001C67C 00408025 */   move       $s0, $v0
.L8001C680:
/* 01C230 8001C680 02A02025 */  move        $a0, $s5
/* 01C234 8001C684 0C010795 */  jal         func_80041E54
/* 01C238 8001C688 02602825 */   move       $a1, $s3
/* 01C23C 8001C68C 96980036 */  lhu         $t8, 0x36($s4)
/* 01C240 8001C690 3319F7FF */  andi        $t9, $t8, 0xf7ff
/* 01C244 8001C694 A6990036 */  sh          $t9, 0x36($s4)
/* 01C248 8001C698 8FBF002C */  lw          $ra, 0x2c($sp)
/* 01C24C 8001C69C 8FB50028 */  lw          $s5, 0x28($sp)
/* 01C250 8001C6A0 8FB40024 */  lw          $s4, 0x24($sp)
/* 01C254 8001C6A4 8FB30020 */  lw          $s3, 0x20($sp)
/* 01C258 8001C6A8 8FB2001C */  lw          $s2, 0x1c($sp)
/* 01C25C 8001C6AC 8FB10018 */  lw          $s1, 0x18($sp)
/* 01C260 8001C6B0 8FB00014 */  lw          $s0, 0x14($sp)
/* 01C264 8001C6B4 03E00008 */  jr          $ra
/* 01C268 8001C6B8 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8001C6BC # 11
/* 01C26C 8001C6BC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01C270 8001C6C0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01C274 8001C6C4 948E0034 */  lhu         $t6, 0x34($a0)
/* 01C278 8001C6C8 3C058008 */  lui         $a1, %hi(D_80078154)
/* 01C27C 8001C6CC 000E7880 */  sll         $t7, $t6, 2
/* 01C280 8001C6D0 01EE7823 */  subu        $t7, $t7, $t6
/* 01C284 8001C6D4 000F78C0 */  sll         $t7, $t7, 3
/* 01C288 8001C6D8 00AF2821 */  addu        $a1, $a1, $t7
/* 01C28C 8001C6DC 0C007179 */  jal         func_8001C5E4
/* 01C290 8001C6E0 8CA58154 */   lw         $a1, %lo(D_80078154)($a1)
/* 01C294 8001C6E4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01C298 8001C6E8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01C29C 8001C6EC 03E00008 */  jr          $ra
/* 01C2A0 8001C6F0 00000000 */   nop

glabel func_8001C6F4 # 12
/* 01C2A4 8001C6F4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01C2A8 8001C6F8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01C2AC 8001C6FC 0C007179 */  jal         func_8001C5E4
/* 01C2B0 8001C700 00002825 */   move       $a1, $zero
/* 01C2B4 8001C704 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01C2B8 8001C708 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01C2BC 8001C70C 03E00008 */  jr          $ra
/* 01C2C0 8001C710 00000000 */   nop

glabel func_8001C714 # 13
/* 01C2C4 8001C714 3C03800B */  lui         $v1, %hi(D_800B6B68)
/* 01C2C8 8001C718 24636B68 */  addiu       $v1, $v1, %lo(D_800B6B68)
/* 01C2CC 8001C71C 8C6E0014 */  lw          $t6, 0x14($v1)
/* 01C2D0 8001C720 8C6F001C */  lw          $t7, 0x1c($v1)
/* 01C2D4 8001C724 03E00008 */  jr          $ra
/* 01C2D8 8001C728 01CF1023 */   subu       $v0, $t6, $t7

glabel func_8001C72C # 14
/* 01C2DC 8001C72C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01C2E0 8001C730 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01C2E4 8001C734 948E0036 */  lhu         $t6, 0x36($a0)
/* 01C2E8 8001C738 00803825 */  move        $a3, $a0
/* 01C2EC 8001C73C 35CF0800 */  ori         $t7, $t6, 0x800
/* 01C2F0 8001C740 A48F0036 */  sh          $t7, 0x36($a0)
/* 01C2F4 8001C744 3C04800B */  lui         $a0, %hi(D_800B6B68)
/* 01C2F8 8001C748 24846B68 */  addiu       $a0, $a0, %lo(D_800B6B68)
/* 01C2FC 8001C74C 0C010695 */  jal         func_80041A54
/* 01C300 8001C750 8CE60038 */   lw         $a2, 0x38($a3)
/* 01C304 8001C754 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01C308 8001C758 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01C30C 8001C75C 03E00008 */  jr          $ra
/* 01C310 8001C760 00000000 */   nop

glabel func_8001C764 # 15
/* 01C314 8001C764 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01C318 8001C768 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01C31C 8001C76C AFA40018 */  sw          $a0, 0x18($sp)
/* 01C320 8001C770 AFA60020 */  sw          $a2, 0x20($sp)
/* 01C324 8001C774 8CAE0050 */  lw          $t6, 0x50($a1)
/* 01C328 8001C778 95CF0036 */  lhu         $t7, 0x36($t6)
/* 01C32C 8001C77C 31F80030 */  andi        $t8, $t7, 0x30
/* 01C330 8001C780 13000003 */  beqz        $t8, .L8001C790
/* 01C334 8001C784 00000000 */   nop
/* 01C338 8001C788 1000001A */  b           .L8001C7F4
/* 01C33C 8001C78C 00001025 */   move       $v0, $zero
.L8001C790:
/* 01C340 8001C790 0C0071C5 */  jal         func_8001C714
/* 01C344 8001C794 00000000 */   nop
/* 01C348 8001C798 1C400003 */  bgtz        $v0, .L8001C7A8
/* 01C34C 8001C79C 3C04800B */   lui        $a0, %hi(D_800B6B58)
/* 01C350 8001C7A0 10000014 */  b           .L8001C7F4
/* 01C354 8001C7A4 00001025 */   move       $v0, $zero
.L8001C7A8:
/* 01C358 8001C7A8 24846B58 */  addiu       $a0, $a0, %lo(D_800B6B58)
/* 01C35C 8001C7AC 2405000C */  addiu       $a1, $zero, 0xc
/* 01C360 8001C7B0 0C00E03D */  jal         func_800380F4
/* 01C364 8001C7B4 240600C6 */   addiu      $a2, $zero, 0xc6
/* 01C368 8001C7B8 14400003 */  bnez        $v0, .L8001C7C8
/* 01C36C 8001C7BC 00401825 */   move       $v1, $v0
/* 01C370 8001C7C0 1000000C */  b           .L8001C7F4
/* 01C374 8001C7C4 00001025 */   move       $v0, $zero
.L8001C7C8:
/* 01C378 8001C7C8 8FA40018 */  lw          $a0, 0x18($sp)
/* 01C37C 8001C7CC 50800005 */  beql        $a0, $zero, .L8001C7E4
/* 01C380 8001C7D0 AC400000 */   sw         $zero, 0x0($v0)
/* 01C384 8001C7D4 8C990038 */  lw          $t9, 0x38($a0)
/* 01C388 8001C7D8 10000002 */  b           .L8001C7E4
/* 01C38C 8001C7DC AC590000 */   sw         $t9, 0x0($v0)
/* 01C390 8001C7E0 AC400000 */  sw          $zero, 0x0($v0)
.L8001C7E4:
/* 01C394 8001C7E4 93A80023 */  lbu         $t0, 0x23($sp)
/* 01C398 8001C7E8 A4600004 */  sh          $zero, 0x4($v1)
/* 01C39C 8001C7EC 00601025 */  move        $v0, $v1
/* 01C3A0 8001C7F0 A0680006 */  sb          $t0, 0x6($v1)
.L8001C7F4:
/* 01C3A4 8001C7F4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01C3A8 8001C7F8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01C3AC 8001C7FC 03E00008 */  jr          $ra
/* 01C3B0 8001C800 00000000 */   nop

glabel func_8001C804 # 16
/* 01C3B4 8001C804 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01C3B8 8001C808 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01C3BC 8001C80C AFA60020 */  sw          $a2, 0x20($sp)
/* 01C3C0 8001C810 AFA5001C */  sw          $a1, 0x1c($sp)
/* 01C3C4 8001C814 0C0071D9 */  jal         func_8001C764
/* 01C3C8 8001C818 00003025 */   move       $a2, $zero
/* 01C3CC 8001C81C 10400007 */  beqz        $v0, .L8001C83C
/* 01C3D0 8001C820 00402825 */   move       $a1, $v0
/* 01C3D4 8001C824 27AE0020 */  addiu       $t6, $sp, 0x20
/* 01C3D8 8001C828 8DC10000 */  lw          $at, 0x0($t6)
/* 01C3DC 8001C82C A8410008 */  swl         $at, 0x8($v0)
/* 01C3E0 8001C830 B841000B */  swr         $at, 0xb($v0)
/* 01C3E4 8001C834 0C0071CB */  jal         func_8001C72C
/* 01C3E8 8001C838 8FA4001C */   lw         $a0, 0x1c($sp)
.L8001C83C:
/* 01C3EC 8001C83C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01C3F0 8001C840 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01C3F4 8001C844 03E00008 */  jr          $ra
/* 01C3F8 8001C848 00000000 */   nop

glabel func_8001C84C # 17
/* 01C3FC 8001C84C 03E00008 */  jr          $ra
/* 01C400 8001C850 00000000 */   nop
/* 01C404 8001C854 00000000 */  nop
/* 01C408 8001C858 00000000 */  nop
/* 01C40C 8001C85C 00000000 */  nop
