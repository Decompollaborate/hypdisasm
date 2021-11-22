.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osTimerServicesInit # 0
/* 058670 80058AC0 3C018010 */  lui         $at, %hi(__osCurrentTime)
/* 058674 80058AC4 240E0000 */  addiu       $t6, $zero, 0x0
/* 058678 80058AC8 240F0000 */  addiu       $t7, $zero, 0x0
/* 05867C 80058ACC AC2F0354 */  sw          $t7, %lo(__osCurrentTime + 0x4)($at)
/* 058680 80058AD0 AC2E0350 */  sw          $t6, %lo(__osCurrentTime)($at)
/* 058684 80058AD4 3C018010 */  lui         $at, %hi(__osBaseCounter)
/* 058688 80058AD8 3C18800A */  lui         $t8, %hi(__osTimerList)
/* 05868C 80058ADC 8F18F8D0 */  lw          $t8, %lo(__osTimerList)($t8)
/* 058690 80058AE0 AC200358 */  sw          $zero, %lo(__osBaseCounter)($at)
/* 058694 80058AE4 3C018010 */  lui         $at, %hi(__osViIntrCount)
/* 058698 80058AE8 AC20035C */  sw          $zero, %lo(__osViIntrCount)($at)
/* 05869C 80058AEC 3C19800A */  lui         $t9, %hi(__osTimerList)
/* 0586A0 80058AF0 AF180004 */  sw          $t8, 0x4($t8)
/* 0586A4 80058AF4 8F39F8D0 */  lw          $t9, %lo(__osTimerList)($t9)
/* 0586A8 80058AF8 3C09800A */  lui         $t1, %hi(__osTimerList)
/* 0586AC 80058AFC 240A0000 */  addiu       $t2, $zero, 0x0
/* 0586B0 80058B00 8F280004 */  lw          $t0, 0x4($t9)
/* 0586B4 80058B04 240B0000 */  addiu       $t3, $zero, 0x0
/* 0586B8 80058B08 3C0C800A */  lui         $t4, %hi(__osTimerList)
/* 0586BC 80058B0C AF280000 */  sw          $t0, 0x0($t9)
/* 0586C0 80058B10 8D29F8D0 */  lw          $t1, %lo(__osTimerList)($t1)
/* 0586C4 80058B14 3C0D800A */  lui         $t5, %hi(__osTimerList)
/* 0586C8 80058B18 3C18800A */  lui         $t8, %hi(__osTimerList)
/* 0586CC 80058B1C AD2A0010 */  sw          $t2, 0x10($t1)
/* 0586D0 80058B20 AD2B0014 */  sw          $t3, 0x14($t1)
/* 0586D4 80058B24 8D8CF8D0 */  lw          $t4, %lo(__osTimerList)($t4)
/* 0586D8 80058B28 8D8E0010 */  lw          $t6, 0x10($t4)
/* 0586DC 80058B2C 8D8F0014 */  lw          $t7, 0x14($t4)
/* 0586E0 80058B30 AD8E0008 */  sw          $t6, 0x8($t4)
/* 0586E4 80058B34 AD8F000C */  sw          $t7, 0xc($t4)
/* 0586E8 80058B38 8DADF8D0 */  lw          $t5, %lo(__osTimerList)($t5)
/* 0586EC 80058B3C ADA00018 */  sw          $zero, 0x18($t5)
/* 0586F0 80058B40 8F18F8D0 */  lw          $t8, %lo(__osTimerList)($t8)
/* 0586F4 80058B44 03E00008 */  jr          $ra
/* 0586F8 80058B48 AF00001C */   sw         $zero, 0x1c($t8)

glabel __osTimerInterrupt # 1
/* 0586FC 80058B4C 3C0E800A */  lui         $t6, %hi(__osTimerList)
/* 058700 80058B50 8DCEF8D0 */  lw          $t6, %lo(__osTimerList)($t6)
/* 058704 80058B54 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 058708 80058B58 AFBF0014 */  sw          $ra, 0x14($sp)
/* 05870C 80058B5C 8DCF0000 */  lw          $t7, 0x0($t6)
/* 058710 80058B60 11EE0054 */  beq         $t7, $t6, .L80058CB4
/* 058714 80058B64 00000000 */   nop
.L80058B68:
/* 058718 80058B68 3C18800A */  lui         $t8, %hi(__osTimerList)
/* 05871C 80058B6C 8F18F8D0 */  lw          $t8, %lo(__osTimerList)($t8)
/* 058720 80058B70 8F190000 */  lw          $t9, 0x0($t8)
/* 058724 80058B74 17380006 */  bne         $t9, $t8, .L80058B90
/* 058728 80058B78 AFB90024 */   sw         $t9, 0x24($sp)
/* 05872C 80058B7C 0C0176C0 */  jal         __osSetCompare
/* 058730 80058B80 00002025 */   move       $a0, $zero
/* 058734 80058B84 3C018010 */  lui         $at, %hi(__osTimerCounter)
/* 058738 80058B88 1000004A */  b           .L80058CB4
/* 05873C 80058B8C AC200360 */   sw         $zero, %lo(__osTimerCounter)($at)
.L80058B90:
/* 058740 80058B90 0C014CB8 */  jal         osGetCount
/* 058744 80058B94 00000000 */   nop
/* 058748 80058B98 AFA20020 */  sw          $v0, 0x20($sp)
/* 05874C 80058B9C 3C098010 */  lui         $t1, %hi(__osTimerCounter)
/* 058750 80058BA0 8D290360 */  lw          $t1, %lo(__osTimerCounter)($t1)
/* 058754 80058BA4 8FA80020 */  lw          $t0, 0x20($sp)
/* 058758 80058BA8 8FAF0024 */  lw          $t7, 0x24($sp)
/* 05875C 80058BAC 3C018010 */  lui         $at, %hi(__osTimerCounter)
/* 058760 80058BB0 01095023 */  subu        $t2, $t0, $t1
/* 058764 80058BB4 AFAA001C */  sw          $t2, 0x1c($sp)
/* 058768 80058BB8 AC280360 */  sw          $t0, %lo(__osTimerCounter)($at)
/* 05876C 80058BBC 8DEE0010 */  lw          $t6, 0x10($t7)
/* 058770 80058BC0 8FAB001C */  lw          $t3, 0x1c($sp)
/* 058774 80058BC4 240C0000 */  addiu       $t4, $zero, 0x0
/* 058778 80058BC8 01E0C825 */  move        $t9, $t7
/* 05877C 80058BCC 01CC082B */  sltu        $at, $t6, $t4
/* 058780 80058BD0 8DEF0014 */  lw          $t7, 0x14($t7)
/* 058784 80058BD4 14200016 */  bnez        $at, .L80058C30
/* 058788 80058BD8 01606825 */   move       $t5, $t3
/* 05878C 80058BDC 018E082B */  sltu        $at, $t4, $t6
/* 058790 80058BE0 14200003 */  bnez        $at, .L80058BF0
/* 058794 80058BE4 01AF082B */   sltu       $at, $t5, $t7
/* 058798 80058BE8 10200011 */  beqz        $at, .L80058C30
/* 05879C 80058BEC 00000000 */   nop
.L80058BF0:
/* 0587A0 80058BF0 27380010 */  addiu       $t8, $t9, 0x10
/* 0587A4 80058BF4 AFB80018 */  sw          $t8, 0x18($sp)
/* 0587A8 80058BF8 8F2B0014 */  lw          $t3, 0x14($t9)
/* 0587AC 80058BFC 8F2A0010 */  lw          $t2, 0x10($t9)
/* 0587B0 80058C00 016D082B */  sltu        $at, $t3, $t5
/* 0587B4 80058C04 014C4023 */  subu        $t0, $t2, $t4
/* 0587B8 80058C08 01014023 */  subu        $t0, $t0, $at
/* 0587BC 80058C0C 016D4823 */  subu        $t1, $t3, $t5
/* 0587C0 80058C10 AF290014 */  sw          $t1, 0x14($t9)
/* 0587C4 80058C14 AF280010 */  sw          $t0, 0x10($t9)
/* 0587C8 80058C18 8FAE0024 */  lw          $t6, 0x24($sp)
/* 0587CC 80058C1C 8DC40010 */  lw          $a0, 0x10($t6)
/* 0587D0 80058C20 0C016331 */  jal         __osSetTimerIntr
/* 0587D4 80058C24 8DC50014 */   lw         $a1, 0x14($t6)
/* 0587D8 80058C28 10000022 */  b           .L80058CB4
/* 0587DC 80058C2C 00000000 */   nop
.L80058C30:
/* 0587E0 80058C30 8FAF0024 */  lw          $t7, 0x24($sp)
/* 0587E4 80058C34 8DF80000 */  lw          $t8, 0x0($t7)
/* 0587E8 80058C38 8DEA0004 */  lw          $t2, 0x4($t7)
/* 0587EC 80058C3C AD580000 */  sw          $t8, 0x0($t2)
/* 0587F0 80058C40 8FAB0024 */  lw          $t3, 0x24($sp)
/* 0587F4 80058C44 8D6C0004 */  lw          $t4, 0x4($t3)
/* 0587F8 80058C48 8D6D0000 */  lw          $t5, 0x0($t3)
/* 0587FC 80058C4C ADAC0004 */  sw          $t4, 0x4($t5)
/* 058800 80058C50 8FA80024 */  lw          $t0, 0x24($sp)
/* 058804 80058C54 AD000000 */  sw          $zero, 0x0($t0)
/* 058808 80058C58 8FA90024 */  lw          $t1, 0x24($sp)
/* 05880C 80058C5C AD200004 */  sw          $zero, 0x4($t1)
/* 058810 80058C60 8FB90024 */  lw          $t9, 0x24($sp)
/* 058814 80058C64 8F2E0018 */  lw          $t6, 0x18($t9)
/* 058818 80058C68 11C00005 */  beqz        $t6, .L80058C80
/* 05881C 80058C6C 00000000 */   nop
/* 058820 80058C70 01C02025 */  move        $a0, $t6
/* 058824 80058C74 8F25001C */  lw          $a1, 0x1c($t9)
/* 058828 80058C78 0C014C64 */  jal         osSendMesg
/* 05882C 80058C7C 00003025 */   move       $a2, $zero
.L80058C80:
/* 058830 80058C80 8FAF0024 */  lw          $t7, 0x24($sp)
/* 058834 80058C84 8DF80008 */  lw          $t8, 0x8($t7)
/* 058838 80058C88 8DF9000C */  lw          $t9, 0xc($t7)
/* 05883C 80058C8C 17000003 */  bnez        $t8, .L80058C9C
/* 058840 80058C90 00000000 */   nop
/* 058844 80058C94 1320FFB4 */  beqz        $t9, .L80058B68
/* 058848 80058C98 00000000 */   nop
.L80058C9C:
/* 05884C 80058C9C ADF80010 */  sw          $t8, 0x10($t7)
/* 058850 80058CA0 ADF90014 */  sw          $t9, 0x14($t7)
/* 058854 80058CA4 0C016359 */  jal         __osInsertTimer
/* 058858 80058CA8 8FA40024 */   lw         $a0, 0x24($sp)
/* 05885C 80058CAC 1000FFAE */  b           .L80058B68
/* 058860 80058CB0 00000000 */   nop
.L80058CB4:
/* 058864 80058CB4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 058868 80058CB8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 05886C 80058CBC 03E00008 */  jr          $ra
/* 058870 80058CC0 00000000 */   nop

glabel __osSetTimerIntr # 2
/* 058874 80058CC4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 058878 80058CC8 AFA40028 */  sw          $a0, 0x28($sp)
/* 05887C 80058CCC 8FAE0028 */  lw          $t6, 0x28($sp)
/* 058880 80058CD0 AFA5002C */  sw          $a1, 0x2c($sp)
/* 058884 80058CD4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 058888 80058CD8 15C00008 */  bnez        $t6, .L80058CFC
/* 05888C 80058CDC 8FAF002C */   lw         $t7, 0x2c($sp)
/* 058890 80058CE0 2DE101D4 */  sltiu       $at, $t7, 0x1d4
/* 058894 80058CE4 10200005 */  beqz        $at, .L80058CFC
/* 058898 80058CE8 00000000 */   nop
/* 05889C 80058CEC 24180000 */  addiu       $t8, $zero, 0x0
/* 0588A0 80058CF0 241901D4 */  addiu       $t9, $zero, 0x1d4
/* 0588A4 80058CF4 AFB9002C */  sw          $t9, 0x2c($sp)
/* 0588A8 80058CF8 AFB80028 */  sw          $t8, 0x28($sp)
.L80058CFC:
/* 0588AC 80058CFC 0C015FFC */  jal         __osDisableInt
/* 0588B0 80058D00 00000000 */   nop
/* 0588B4 80058D04 0C014CB8 */  jal         osGetCount
/* 0588B8 80058D08 AFA2001C */   sw         $v0, 0x1c($sp)
/* 0588BC 80058D0C 3C018010 */  lui         $at, %hi(__osTimerCounter)
/* 0588C0 80058D10 AC220360 */  sw          $v0, %lo(__osTimerCounter)($at)
/* 0588C4 80058D14 3C088010 */  lui         $t0, %hi(__osTimerCounter)
/* 0588C8 80058D18 8D080360 */  lw          $t0, %lo(__osTimerCounter)($t0)
/* 0588CC 80058D1C 8FAD002C */  lw          $t5, 0x2c($sp)
/* 0588D0 80058D20 8FAC0028 */  lw          $t4, 0x28($sp)
/* 0588D4 80058D24 01005825 */  move        $t3, $t0
/* 0588D8 80058D28 016D7821 */  addu        $t7, $t3, $t5
/* 0588DC 80058D2C 240A0000 */  addiu       $t2, $zero, 0x0
/* 0588E0 80058D30 01ED082B */  sltu        $at, $t7, $t5
/* 0588E4 80058D34 002A7021 */  addu        $t6, $at, $t2
/* 0588E8 80058D38 01CC7021 */  addu        $t6, $t6, $t4
/* 0588EC 80058D3C AFAE0020 */  sw          $t6, 0x20($sp)
/* 0588F0 80058D40 AFAF0024 */  sw          $t7, 0x24($sp)
/* 0588F4 80058D44 0C0176C0 */  jal         __osSetCompare
/* 0588F8 80058D48 01E02025 */   move       $a0, $t7
/* 0588FC 80058D4C 0C016018 */  jal         __osRestoreInt
/* 058900 80058D50 8FA4001C */   lw         $a0, 0x1c($sp)
/* 058904 80058D54 8FBF0014 */  lw          $ra, 0x14($sp)
/* 058908 80058D58 27BD0028 */  addiu       $sp, $sp, 0x28
/* 05890C 80058D5C 03E00008 */  jr          $ra
/* 058910 80058D60 00000000 */   nop

glabel __osInsertTimer # 3
/* 058914 80058D64 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 058918 80058D68 AFBF0014 */  sw          $ra, 0x14($sp)
/* 05891C 80058D6C 0C015FFC */  jal         __osDisableInt
/* 058920 80058D70 AFA40038 */   sw         $a0, 0x38($sp)
/* 058924 80058D74 3C0E800A */  lui         $t6, %hi(__osTimerList)
/* 058928 80058D78 8DCEF8D0 */  lw          $t6, %lo(__osTimerList)($t6)
/* 05892C 80058D7C AFA20024 */  sw          $v0, 0x24($sp)
/* 058930 80058D80 8FB80038 */  lw          $t8, 0x38($sp)
/* 058934 80058D84 8DCF0000 */  lw          $t7, 0x0($t6)
/* 058938 80058D88 AFAF0034 */  sw          $t7, 0x34($sp)
/* 05893C 80058D8C 8F090014 */  lw          $t1, 0x14($t8)
/* 058940 80058D90 8F080010 */  lw          $t0, 0x10($t8)
/* 058944 80058D94 AFA9002C */  sw          $t1, 0x2c($sp)
/* 058948 80058D98 11EE0029 */  beq         $t7, $t6, .L80058E40
/* 05894C 80058D9C AFA80028 */   sw         $t0, 0x28($sp)
/* 058950 80058DA0 8DEA0010 */  lw          $t2, 0x10($t7)
/* 058954 80058DA4 8DEB0014 */  lw          $t3, 0x14($t7)
/* 058958 80058DA8 010A082B */  sltu        $at, $t0, $t2
/* 05895C 80058DAC 14200024 */  bnez        $at, .L80058E40
/* 058960 80058DB0 0148082B */   sltu       $at, $t2, $t0
/* 058964 80058DB4 14200003 */  bnez        $at, .L80058DC4
/* 058968 80058DB8 0169082B */   sltu       $at, $t3, $t1
/* 05896C 80058DBC 10200020 */  beqz        $at, .L80058E40
/* 058970 80058DC0 00000000 */   nop
.L80058DC4:
/* 058974 80058DC4 27B90028 */  addiu       $t9, $sp, 0x28
/* 058978 80058DC8 8FB80034 */  lw          $t8, 0x34($sp)
/* 05897C 80058DCC AFB90020 */  sw          $t9, 0x20($sp)
/* 058980 80058DD0 8F2D0004 */  lw          $t5, 0x4($t9)
/* 058984 80058DD4 8F2C0000 */  lw          $t4, 0x0($t9)
/* 058988 80058DD8 8F0F0014 */  lw          $t7, 0x14($t8)
/* 05898C 80058DDC 8F0E0010 */  lw          $t6, 0x10($t8)
/* 058990 80058DE0 3C18800A */  lui         $t8, %hi(__osTimerList)
/* 058994 80058DE4 01AF082B */  sltu        $at, $t5, $t7
/* 058998 80058DE8 018E4023 */  subu        $t0, $t4, $t6
/* 05899C 80058DEC 01014023 */  subu        $t0, $t0, $at
/* 0589A0 80058DF0 01AF4823 */  subu        $t1, $t5, $t7
/* 0589A4 80058DF4 AF290004 */  sw          $t1, 0x4($t9)
/* 0589A8 80058DF8 AF280000 */  sw          $t0, 0x0($t9)
/* 0589AC 80058DFC 8FAA0034 */  lw          $t2, 0x34($sp)
/* 0589B0 80058E00 8F18F8D0 */  lw          $t8, %lo(__osTimerList)($t8)
/* 0589B4 80058E04 8D4B0000 */  lw          $t3, 0x0($t2)
/* 0589B8 80058E08 1178000D */  beq         $t3, $t8, .L80058E40
/* 0589BC 80058E0C AFAB0034 */   sw         $t3, 0x34($sp)
/* 0589C0 80058E10 8FAC0028 */  lw          $t4, 0x28($sp)
/* 0589C4 80058E14 8D6E0010 */  lw          $t6, 0x10($t3)
/* 0589C8 80058E18 8FAD002C */  lw          $t5, 0x2c($sp)
/* 0589CC 80058E1C 8D6F0014 */  lw          $t7, 0x14($t3)
/* 0589D0 80058E20 01CC082B */  sltu        $at, $t6, $t4
/* 0589D4 80058E24 1420FFE7 */  bnez        $at, .L80058DC4
/* 0589D8 80058E28 00000000 */   nop
/* 0589DC 80058E2C 018E082B */  sltu        $at, $t4, $t6
/* 0589E0 80058E30 14200003 */  bnez        $at, .L80058E40
/* 0589E4 80058E34 01ED082B */   sltu       $at, $t7, $t5
/* 0589E8 80058E38 1420FFE2 */  bnez        $at, .L80058DC4
/* 0589EC 80058E3C 00000000 */   nop
.L80058E40:
/* 0589F0 80058E40 8FB90038 */  lw          $t9, 0x38($sp)
/* 0589F4 80058E44 8FA80028 */  lw          $t0, 0x28($sp)
/* 0589F8 80058E48 8FA9002C */  lw          $t1, 0x2c($sp)
/* 0589FC 80058E4C 3C18800A */  lui         $t8, %hi(__osTimerList)
/* 058A00 80058E50 AF280010 */  sw          $t0, 0x10($t9)
/* 058A04 80058E54 AF290014 */  sw          $t1, 0x14($t9)
/* 058A08 80058E58 8F18F8D0 */  lw          $t8, %lo(__osTimerList)($t8)
/* 058A0C 80058E5C 8FAA0034 */  lw          $t2, 0x34($sp)
/* 058A10 80058E60 1158000D */  beq         $t2, $t8, .L80058E98
/* 058A14 80058E64 00000000 */   nop
/* 058A18 80058E68 254B0010 */  addiu       $t3, $t2, 0x10
/* 058A1C 80058E6C AFAB001C */  sw          $t3, 0x1c($sp)
/* 058A20 80058E70 8D4D0014 */  lw          $t5, 0x14($t2)
/* 058A24 80058E74 8D4C0010 */  lw          $t4, 0x10($t2)
/* 058A28 80058E78 8FAE0028 */  lw          $t6, 0x28($sp)
/* 058A2C 80058E7C 8FAF002C */  lw          $t7, 0x2c($sp)
/* 058A30 80058E80 018E4023 */  subu        $t0, $t4, $t6
/* 058A34 80058E84 01AF082B */  sltu        $at, $t5, $t7
/* 058A38 80058E88 01014023 */  subu        $t0, $t0, $at
/* 058A3C 80058E8C 01AF4823 */  subu        $t1, $t5, $t7
/* 058A40 80058E90 AD490014 */  sw          $t1, 0x14($t2)
/* 058A44 80058E94 AD480010 */  sw          $t0, 0x10($t2)
.L80058E98:
/* 058A48 80058E98 8FB90034 */  lw          $t9, 0x34($sp)
/* 058A4C 80058E9C 8FB80038 */  lw          $t8, 0x38($sp)
/* 058A50 80058EA0 AF190000 */  sw          $t9, 0x0($t8)
/* 058A54 80058EA4 8FAB0034 */  lw          $t3, 0x34($sp)
/* 058A58 80058EA8 8FAD0038 */  lw          $t5, 0x38($sp)
/* 058A5C 80058EAC 8D6C0004 */  lw          $t4, 0x4($t3)
/* 058A60 80058EB0 ADAC0004 */  sw          $t4, 0x4($t5)
/* 058A64 80058EB4 8FAF0034 */  lw          $t7, 0x34($sp)
/* 058A68 80058EB8 8FAE0038 */  lw          $t6, 0x38($sp)
/* 058A6C 80058EBC 8DE80004 */  lw          $t0, 0x4($t7)
/* 058A70 80058EC0 AD0E0000 */  sw          $t6, 0x0($t0)
/* 058A74 80058EC4 8FAA0034 */  lw          $t2, 0x34($sp)
/* 058A78 80058EC8 8FA90038 */  lw          $t1, 0x38($sp)
/* 058A7C 80058ECC AD490004 */  sw          $t1, 0x4($t2)
/* 058A80 80058ED0 0C016018 */  jal         __osRestoreInt
/* 058A84 80058ED4 8FA40024 */   lw         $a0, 0x24($sp)
/* 058A88 80058ED8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 058A8C 80058EDC 8FA20028 */  lw          $v0, 0x28($sp)
/* 058A90 80058EE0 8FA3002C */  lw          $v1, 0x2c($sp)
/* 058A94 80058EE4 03E00008 */  jr          $ra
/* 058A98 80058EE8 27BD0038 */   addiu      $sp, $sp, 0x38
/* 058A9C 80058EEC 00000000 */  nop
