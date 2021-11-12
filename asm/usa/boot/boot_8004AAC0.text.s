.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004AAC0 # 0
/* 04A670 8004AAC0 3C038005 */  lui         $v1, %hi(D_8004B5DC)
/* 04A674 8004AAC4 000440C0 */  sll         $t0, $a0, 3
/* 04A678 8004AAC8 2463B5DC */  addiu       $v1, $v1, %lo(D_8004B5DC)
/* 04A67C 8004AACC 01034820 */  add         $t1, $t0, $v1
/* 04A680 8004AAD0 91380004 */  lbu         $t8, 0x4($t1)
/* 04A684 8004AAD4 91390005 */  lbu         $t9, 0x5($t1)
/* 04A688 8004AAD8 3C010007 */  lui         $at, 0x7
/* 04A68C 8004AADC ACB80000 */  sw          $t8, 0x0($a1)
/* 04A690 8004AAE0 ACD90000 */  sw          $t9, 0x0($a2)
/* 04A694 8004AAE4 85280006 */  lh          $t0, 0x6($t1)
/* 04A698 8004AAE8 3421EE80 */  ori         $at, $at, 0xee80
/* 04A69C 8004AAEC ACE80000 */  sw          $t0, 0x0($a3)
/* 04A6A0 8004AAF0 8D220000 */  lw          $v0, 0x0($t1)
/* 04A6A4 8004AAF4 03E00008 */  jr          $ra
/* 04A6A8 8004AAF8 00411020 */   add        $v0, $v0, $at

glabel func_8004AAFC # 1
/* 04A6AC 8004AAFC 34018800 */  ori         $at, $zero, 0x8800
/* 04A6B0 8004AB00 0081082A */  slt         $at, $a0, $at
/* 04A6B4 8004AB04 14200010 */  bne         $at, $zero, .L8004AB48
/* 04A6B8 8004AB08 240600BC */   addiu      $a2, $zero, 0xbc
/* 04A6BC 8004AB0C 00042A02 */  srl         $a1, $a0, 8
/* 04A6C0 8004AB10 20A5FF78 */  addi        $a1, $a1, -0x88
/* 04A6C4 8004AB14 00C50019 */  multu       $a2, $a1
/* 04A6C8 8004AB18 308700FF */  andi        $a3, $a0, 0xff
/* 04A6CC 8004AB1C 20E7FFC0 */  addi        $a3, $a3, -0x40
/* 04A6D0 8004AB20 28E10040 */  slti        $at, $a3, 0x40
/* 04A6D4 8004AB24 00003012 */  mflo        $a2
/* 04A6D8 8004AB28 54200003 */  bnel        $at, $zero, .L8004AB38
/* 04A6DC 8004AB2C 00003012 */   mflo       $a2
/* 04A6E0 8004AB30 20E7FFFF */  addi        $a3, $a3, -0x1
/* 04A6E4 8004AB34 00003012 */  mflo        $a2
.L8004AB38:
/* 04A6E8 8004AB38 20E7030A */  addi        $a3, $a3, 0x30a
/* 04A6EC 8004AB3C 00E63820 */  add         $a3, $a3, $a2
/* 04A6F0 8004AB40 03E00008 */  jr          $ra
/* 04A6F4 8004AB44 000711C0 */   sll        $v0, $a3, 7
.L8004AB48:
/* 04A6F8 8004AB48 00042A02 */  srl         $a1, $a0, 8
/* 04A6FC 8004AB4C 20A5FF7F */  addi        $a1, $a1, -0x81
/* 04A700 8004AB50 00C50019 */  multu       $a2, $a1
/* 04A704 8004AB54 308700FF */  andi        $a3, $a0, 0xff
/* 04A708 8004AB58 20E7FFC0 */  addi        $a3, $a3, -0x40
/* 04A70C 8004AB5C 28E10040 */  slti        $at, $a3, 0x40
/* 04A710 8004AB60 00003012 */  mflo        $a2
/* 04A714 8004AB64 54200003 */  bnel        $at, $zero, .L8004AB74
/* 04A718 8004AB68 00003012 */   mflo       $a2
/* 04A71C 8004AB6C 20E7FFFF */  addi        $a3, $a3, -0x1
/* 04A720 8004AB70 00003012 */  mflo        $a2
.L8004AB74:
/* 04A724 8004AB74 00E63820 */  add         $a3, $a3, $a2
/* 04A728 8004AB78 3C068005 */  lui         $a2, %hi(func_8004AB94)
/* 04A72C 8004AB7C 00073840 */  sll         $a3, $a3, 1
/* 04A730 8004AB80 24C6AB94 */  addiu       $a2, $a2, %lo(func_8004AB94)
/* 04A734 8004AB84 00E63820 */  add         $a3, $a3, $a2
/* 04A738 8004AB88 84E60000 */  lh          $a2, 0x0($a3)
/* 04A73C 8004AB8C 03E00008 */  jr          $ra
/* 04A740 8004AB90 000611C0 */   sll        $v0, $a2, 7

glabel func_8004AB94 # 2
/* 04A744 8004AB94 00000001 */  movci       0x0000001
/* 04A748 8004AB98 00020003 */  sra         $zero, $v0, 0
/* 04A74C 8004AB9C 00040005 */  special(0x05) $zero, $zero, $a0
/* 04A750 8004ABA0 00060007 */  srav        $zero, $zero, $a2
/* 04A754 8004ABA4 00080009 */  jalr        $zero,$zero
/* 04A758 8004ABA8 000A000B */   movn       $zero, $zero, $t2
/* 04A75C 8004ABAC 000C000D */  break       12
/* 04A760 8004ABB0 000E000F */  sync        14
/* 04A764 8004ABB4 00100011 */  mthi        $zero
/* 04A768 8004ABB8 00120013 */  mtlo        $zero
/* 04A76C 8004ABBC 00140015 */  special(0x15) $zero, $zero, $s4
/* 04A770 8004ABC0 00160017 */  dsrav       $zero, $s6, $zero
/* 04A774 8004ABC4 00180019 */  multu       $zero, $t8
/* 04A778 8004ABC8 001A001B */  divu        $zero, $zero, $k0
/* 04A77C 8004ABCC 001C001D */  dmultu      $zero, $gp
/* 04A780 8004ABD0 001E001F */  ddivu       $zero, $fp
/* 04A784 8004ABD4 00200021 */  addu        $zero, $at, $zero
/* 04A788 8004ABD8 00220023 */  subu        $zero, $at, $v0
/* 04A78C 8004ABDC 00240025 */  or          $zero, $at, $a0
/* 04A790 8004ABE0 00260027 */  nor         $zero, $at, $a2
/* 04A794 8004ABE4 00280029 */  special(0x29) $zero, $at, $t0
/* 04A798 8004ABE8 002A002B */  sltu        $zero, $at, $t2
/* 04A79C 8004ABEC 002C002D */  daddu       $zero, $at, $t4
/* 04A7A0 8004ABF0 002E002F */  dsubu       $zero, $at, $t6
/* 04A7A4 8004ABF4 00300031 */  tgeu        $at, $s0
/* 04A7A8 8004ABF8 00320033 */  tltu        $at, $s2
/* 04A7AC 8004ABFC 00340035 */  special(0x35) $zero, $at, $s4
/* 04A7B0 8004AC00 00360037 */  special(0x37) $zero, $at, $s6
/* 04A7B4 8004AC04 00380039 */  special(0x39) $zero, $at, $t8
/* 04A7B8 8004AC08 003A003B */  dsra        $zero, $k0, 0
/* 04A7BC 8004AC0C 003C003D */  special(0x3d) $zero, $at, $gp
/* 04A7C0 8004AC10 003E003F */  dsra32      $zero, $fp, 0
/* 04A7C4 8004AC14 00400041 */  movci       0x0400041
/* 04A7C8 8004AC18 00420043 */  sra         $zero, $v0, 1
/* 04A7CC 8004AC1C 00440045 */  special(0x05) $zero, $v0, $a0
/* 04A7D0 8004AC20 00460047 */  srav        $zero, $v0, $a2
/* 04A7D4 8004AC24 00480049 */  jalr        $zero,$v0
/* 04A7D8 8004AC28 004A004B */   movn       $zero, $v0, $t2
/* 04A7DC 8004AC2C 004C004D */  break       76
/* 04A7E0 8004AC30 004E004F */  sync        78
/* 04A7E4 8004AC34 00500051 */  mthi        $v0
/* 04A7E8 8004AC38 00520053 */  mtlo        $v0
/* 04A7EC 8004AC3C 00540055 */  special(0x15) $zero, $v0, $s4
/* 04A7F0 8004AC40 00560057 */  dsrav       $zero, $s6, $v0
/* 04A7F4 8004AC44 00580059 */  multu       $v0, $t8
/* 04A7F8 8004AC48 005A005B */  divu        $zero, $v0, $k0
/* 04A7FC 8004AC4C 005C005D */  dmultu      $v0, $gp
/* 04A800 8004AC50 005E005F */  ddivu       $v0, $fp
/* 04A804 8004AC54 00600061 */  addu        $zero, $v1, $zero
/* 04A808 8004AC58 00620063 */  subu        $zero, $v1, $v0
/* 04A80C 8004AC5C 00640065 */  or          $zero, $v1, $a0
/* 04A810 8004AC60 00660067 */  nor         $zero, $v1, $a2
/* 04A814 8004AC64 00680069 */  special(0x29) $zero, $v1, $t0
/* 04A818 8004AC68 006A006B */  sltu        $zero, $v1, $t2
/* 04A81C 8004AC6C 00000000 */  nop
/* 04A820 8004AC70 00000000 */  nop
/* 04A824 8004AC74 00000000 */  nop
/* 04A828 8004AC78 00000000 */  nop
/* 04A82C 8004AC7C 00000000 */  nop
/* 04A830 8004AC80 0000006C */  dadd        $zero, $zero, $zero
/* 04A834 8004AC84 006D006E */  dsub        $zero, $v1, $t5
/* 04A838 8004AC88 006F0070 */  tge         $v1, $t7
/* 04A83C 8004AC8C 00710072 */  tlt         $v1, $s1
/* 04A840 8004AC90 00730000 */  sll         $zero, $s3, 0
/* 04A844 8004AC94 00000000 */  nop
/* 04A848 8004AC98 00000000 */  nop
/* 04A84C 8004AC9C 00000000 */  nop
/* 04A850 8004ACA0 00000074 */  teq         $zero, $zero
/* 04A854 8004ACA4 00750076 */  tne         $v1, $s5
/* 04A858 8004ACA8 00770078 */  dsll        $zero, $s7, 1
/* 04A85C 8004ACAC 0079007A */  dsrl        $zero, $t9, 1
/* 04A860 8004ACB0 00000000 */  nop
/* 04A864 8004ACB4 00000000 */  nop
/* 04A868 8004ACB8 00000000 */  nop
/* 04A86C 8004ACBC 00000000 */  nop
/* 04A870 8004ACC0 00000000 */  nop
/* 04A874 8004ACC4 00000000 */  nop
/* 04A878 8004ACC8 007B007C */  dsll32      $zero, $k1, 1
/* 04A87C 8004ACCC 007D007E */  dsrl32      $zero, $sp, 1
/* 04A880 8004ACD0 007F0080 */  sll         $zero, $ra, 2
/* 04A884 8004ACD4 00810082 */  srl         $zero, $at, 2
/* 04A888 8004ACD8 00830084 */  sllv        $zero, $a0, $v1
/* 04A88C 8004ACDC 00850086 */  srlv        $zero, $a0, $a1
/* 04A890 8004ACE0 00870088 */  jr          $a0
/* 04A894 8004ACE4 00000000 */   nop
/* 04A898 8004ACE8 00000000 */  nop
/* 04A89C 8004ACEC 00000000 */  nop
/* 04A8A0 8004ACF0 00000089 */  jalr        $zero,$zero
/* 04A8A4 8004ACF4 008A008B */   movn       $zero, $a0, $t2
/* 04A8A8 8004ACF8 008C008D */  break       140
/* 04A8AC 8004ACFC 008E008F */  sync        142
/* 04A8B0 8004AD00 00900000 */  sll         $zero, $s0, 0
/* 04A8B4 8004AD04 00000000 */  nop
/* 04A8B8 8004AD08 00000091 */  mthi        $zero
/* 04A8BC 8004AD0C 00000000 */  nop
/* 04A8C0 8004AD10 00000000 */  nop
/* 04A8C4 8004AD14 00000000 */  nop
/* 04A8C8 8004AD18 00000000 */  nop
/* 04A8CC 8004AD1C 00000000 */  nop
/* 04A8D0 8004AD20 00000000 */  nop
/* 04A8D4 8004AD24 00000000 */  nop
/* 04A8D8 8004AD28 00000092 */  mflo        $zero
/* 04A8DC 8004AD2C 00930094 */  dsllv       $zero, $s3, $a0
/* 04A8E0 8004AD30 00950096 */  dsrlv       $zero, $s5, $a0
/* 04A8E4 8004AD34 00970098 */  mult        $a0, $s7
/* 04A8E8 8004AD38 0099009A */  div         $zero, $a0, $t9
/* 04A8EC 8004AD3C 009B0000 */  sll         $zero, $k1, 0
/* 04A8F0 8004AD40 00000000 */  nop
/* 04A8F4 8004AD44 00000000 */  nop
/* 04A8F8 8004AD48 00000000 */  nop
/* 04A8FC 8004AD4C 009C009D */  dmultu      $a0, $gp
/* 04A900 8004AD50 009E009F */  ddivu       $a0, $fp
/* 04A904 8004AD54 00A000A1 */  addu        $zero, $a1, $zero
/* 04A908 8004AD58 00A200A3 */  subu        $zero, $a1, $v0
/* 04A90C 8004AD5C 00A400A5 */  or          $zero, $a1, $a0
/* 04A910 8004AD60 00A600A7 */  nor         $zero, $a1, $a2
/* 04A914 8004AD64 00A800A9 */  special(0x29) $zero, $a1, $t0
/* 04A918 8004AD68 00AA00AB */  sltu        $zero, $a1, $t2
/* 04A91C 8004AD6C 00AC00AD */  daddu       $zero, $a1, $t4
/* 04A920 8004AD70 00AE00AF */  dsubu       $zero, $a1, $t6
/* 04A924 8004AD74 00B000B1 */  tgeu        $a1, $s0
/* 04A928 8004AD78 00B200B3 */  tltu        $a1, $s2
/* 04A92C 8004AD7C 00B400B5 */  special(0x35) $zero, $a1, $s4
/* 04A930 8004AD80 00000000 */  nop
/* 04A934 8004AD84 00000000 */  nop
/* 04A938 8004AD88 00000000 */  nop
/* 04A93C 8004AD8C 00B600B7 */  special(0x37) $zero, $a1, $s6
/* 04A940 8004AD90 00B800B9 */  special(0x39) $zero, $a1, $t8
/* 04A944 8004AD94 00BA00BB */  dsra        $zero, $k0, 2
/* 04A948 8004AD98 00BC00BD */  special(0x3d) $zero, $a1, $gp
/* 04A94C 8004AD9C 00BE00BF */  dsra32      $zero, $fp, 2
/* 04A950 8004ADA0 00C000C1 */  movci       0x0C000C1
/* 04A954 8004ADA4 00C200C3 */  sra         $zero, $v0, 3
/* 04A958 8004ADA8 00C400C5 */  special(0x05) $zero, $a2, $a0
/* 04A95C 8004ADAC 00C600C7 */  srav        $zero, $a2, $a2
/* 04A960 8004ADB0 00C800C9 */  jalr        $zero,$a2
/* 04A964 8004ADB4 00CA00CB */   movn       $zero, $a2, $t2
/* 04A968 8004ADB8 00CC00CD */  break       204
/* 04A96C 8004ADBC 00CE00CF */  sync        206
/* 04A970 8004ADC0 00000000 */  nop
/* 04A974 8004ADC4 00000000 */  nop
/* 04A978 8004ADC8 00D000D1 */  mthi        $a2
/* 04A97C 8004ADCC 00D200D3 */  mtlo        $a2
/* 04A980 8004ADD0 00D400D5 */  special(0x15) $zero, $a2, $s4
/* 04A984 8004ADD4 00D600D7 */  dsrav       $zero, $s6, $a2
/* 04A988 8004ADD8 00D800D9 */  multu       $a2, $t8
/* 04A98C 8004ADDC 00DA00DB */  divu        $zero, $a2, $k0
/* 04A990 8004ADE0 00DC00DD */  dmultu      $a2, $gp
/* 04A994 8004ADE4 00DE00DF */  ddivu       $a2, $fp
/* 04A998 8004ADE8 00E000E1 */  addu        $zero, $a3, $zero
/* 04A99C 8004ADEC 00E200E3 */  subu        $zero, $a3, $v0
/* 04A9A0 8004ADF0 00E400E5 */  or          $zero, $a3, $a0
/* 04A9A4 8004ADF4 00E600E7 */  nor         $zero, $a3, $a2
/* 04A9A8 8004ADF8 00E800E9 */  special(0x29) $zero, $a3, $t0
/* 04A9AC 8004ADFC 00EA00EB */  sltu        $zero, $a3, $t2
/* 04A9B0 8004AE00 00EC00ED */  daddu       $zero, $a3, $t4
/* 04A9B4 8004AE04 00EE00EF */  dsubu       $zero, $a3, $t6
/* 04A9B8 8004AE08 00F000F1 */  tgeu        $a3, $s0
/* 04A9BC 8004AE0C 00F200F3 */  tltu        $a3, $s2
/* 04A9C0 8004AE10 00F400F5 */  special(0x35) $zero, $a3, $s4
/* 04A9C4 8004AE14 00F600F7 */  special(0x37) $zero, $a3, $s6
/* 04A9C8 8004AE18 00F800F9 */  special(0x39) $zero, $a3, $t8
/* 04A9CC 8004AE1C 00FA00FB */  dsra        $zero, $k0, 3
/* 04A9D0 8004AE20 00FC00FD */  special(0x3d) $zero, $a3, $gp
/* 04A9D4 8004AE24 00FE00FF */  dsra32      $zero, $fp, 3
/* 04A9D8 8004AE28 01000101 */  movci       0x1000101
/* 04A9DC 8004AE2C 01020103 */  sra         $zero, $v0, 4
/* 04A9E0 8004AE30 01040105 */  special(0x05) $zero, $t0, $a0
/* 04A9E4 8004AE34 01060107 */  srav        $zero, $t0, $a2
/* 04A9E8 8004AE38 01080109 */  jalr        $zero,$t0
/* 04A9EC 8004AE3C 010A010B */   movn       $zero, $t0, $t2
/* 04A9F0 8004AE40 010C010D */  break       268
/* 04A9F4 8004AE44 010E010F */  sync        270
/* 04A9F8 8004AE48 01100111 */  mthi        $t0
/* 04A9FC 8004AE4C 01120113 */  mtlo        $t0
/* 04AA00 8004AE50 01140115 */  special(0x15) $zero, $t0, $s4
/* 04AA04 8004AE54 01160117 */  dsrav       $zero, $s6, $t0
/* 04AA08 8004AE58 01180119 */  multu       $t0, $t8
/* 04AA0C 8004AE5C 011A011B */  divu        $zero, $t0, $k0
/* 04AA10 8004AE60 011C011D */  dmultu      $t0, $gp
/* 04AA14 8004AE64 011E011F */  ddivu       $t0, $fp
/* 04AA18 8004AE68 01200121 */  addu        $zero, $t1, $zero
/* 04AA1C 8004AE6C 01220123 */  subu        $zero, $t1, $v0
/* 04AA20 8004AE70 00000000 */  nop
/* 04AA24 8004AE74 00000000 */  nop
/* 04AA28 8004AE78 00000000 */  nop
/* 04AA2C 8004AE7C 00000000 */  nop
/* 04AA30 8004AE80 00000000 */  nop
/* 04AA34 8004AE84 01240125 */  or          $zero, $t1, $a0
/* 04AA38 8004AE88 01260127 */  nor         $zero, $t1, $a2
/* 04AA3C 8004AE8C 01280129 */  special(0x29) $zero, $t1, $t0
/* 04AA40 8004AE90 012A012B */  sltu        $zero, $t1, $t2
/* 04AA44 8004AE94 012C012D */  daddu       $zero, $t1, $t4
/* 04AA48 8004AE98 012E012F */  dsubu       $zero, $t1, $t6
/* 04AA4C 8004AE9C 01300131 */  tgeu        $t1, $s0
/* 04AA50 8004AEA0 01320133 */  tltu        $t1, $s2
/* 04AA54 8004AEA4 01340135 */  special(0x35) $zero, $t1, $s4
/* 04AA58 8004AEA8 01360137 */  special(0x37) $zero, $t1, $s6
/* 04AA5C 8004AEAC 01380139 */  special(0x39) $zero, $t1, $t8
/* 04AA60 8004AEB0 013A013B */  dsra        $zero, $k0, 4
/* 04AA64 8004AEB4 013C013D */  special(0x3d) $zero, $t1, $gp
/* 04AA68 8004AEB8 013E013F */  dsra32      $zero, $fp, 4
/* 04AA6C 8004AEBC 01400141 */  movci       0x1400141
/* 04AA70 8004AEC0 01420143 */  sra         $zero, $v0, 5
/* 04AA74 8004AEC4 01440145 */  special(0x05) $zero, $t2, $a0
/* 04AA78 8004AEC8 01460147 */  srav        $zero, $t2, $a2
/* 04AA7C 8004AECC 01480149 */  jalr        $zero,$t2
/* 04AA80 8004AED0 014A014B */   movn       $zero, $t2, $t2
/* 04AA84 8004AED4 014C014D */  break       332
/* 04AA88 8004AED8 014E014F */  sync        334
/* 04AA8C 8004AEDC 01500151 */  mthi        $t2
/* 04AA90 8004AEE0 01520153 */  mtlo        $t2
/* 04AA94 8004AEE4 01540155 */  special(0x15) $zero, $t2, $s4
/* 04AA98 8004AEE8 01560157 */  dsrav       $zero, $s6, $t2
/* 04AA9C 8004AEEC 01580159 */  multu       $t2, $t8
/* 04AAA0 8004AEF0 015A015B */  divu        $zero, $t2, $k0
/* 04AAA4 8004AEF4 015C015D */  dmultu      $t2, $gp
/* 04AAA8 8004AEF8 015E015F */  ddivu       $t2, $fp
/* 04AAAC 8004AEFC 01600161 */  addu        $zero, $t3, $zero
/* 04AAB0 8004AF00 01620163 */  subu        $zero, $t3, $v0
/* 04AAB4 8004AF04 01640165 */  or          $zero, $t3, $a0
/* 04AAB8 8004AF08 01660167 */  nor         $zero, $t3, $a2
/* 04AABC 8004AF0C 01680169 */  special(0x29) $zero, $t3, $t0
/* 04AAC0 8004AF10 016A016B */  sltu        $zero, $t3, $t2
/* 04AAC4 8004AF14 016C016D */  daddu       $zero, $t3, $t4
/* 04AAC8 8004AF18 016E016F */  dsubu       $zero, $t3, $t6
/* 04AACC 8004AF1C 01700171 */  tgeu        $t3, $s0
/* 04AAD0 8004AF20 01720173 */  tltu        $t3, $s2
/* 04AAD4 8004AF24 01740175 */  special(0x35) $zero, $t3, $s4
/* 04AAD8 8004AF28 01760177 */  special(0x37) $zero, $t3, $s6
/* 04AADC 8004AF2C 01780179 */  special(0x39) $zero, $t3, $t8
/* 04AAE0 8004AF30 00000000 */  nop
/* 04AAE4 8004AF34 00000000 */  nop
/* 04AAE8 8004AF38 00000000 */  nop
/* 04AAEC 8004AF3C 00000000 */  nop
/* 04AAF0 8004AF40 017A017B */  dsra        $zero, $k0, 5
/* 04AAF4 8004AF44 017C017D */  special(0x3d) $zero, $t3, $gp
/* 04AAF8 8004AF48 017E017F */  dsra32      $zero, $fp, 5
/* 04AAFC 8004AF4C 01800181 */  movci       0x1800181
/* 04AB00 8004AF50 01820183 */  sra         $zero, $v0, 6
/* 04AB04 8004AF54 01840185 */  special(0x05) $zero, $t4, $a0
/* 04AB08 8004AF58 01860187 */  srav        $zero, $t4, $a2
/* 04AB0C 8004AF5C 01880189 */  jalr        $zero,$t4
/* 04AB10 8004AF60 018A018B */   movn       $zero, $t4, $t2
/* 04AB14 8004AF64 018C018D */  break       396
/* 04AB18 8004AF68 018E018F */  sync        398
/* 04AB1C 8004AF6C 01900191 */  mthi        $t4
/* 04AB20 8004AF70 00000000 */  nop
/* 04AB24 8004AF74 00000000 */  nop
/* 04AB28 8004AF78 00000000 */  nop
/* 04AB2C 8004AF7C 00000000 */  nop
/* 04AB30 8004AF80 01920193 */  mtlo        $t4
/* 04AB34 8004AF84 01940195 */  special(0x15) $zero, $t4, $s4
/* 04AB38 8004AF88 01960197 */  dsrav       $zero, $s6, $t4
/* 04AB3C 8004AF8C 01980199 */  multu       $t4, $t8
/* 04AB40 8004AF90 019A019B */  divu        $zero, $t4, $k0
/* 04AB44 8004AF94 019C019D */  dmultu      $t4, $gp
/* 04AB48 8004AF98 019E019F */  ddivu       $t4, $fp
/* 04AB4C 8004AF9C 01A001A1 */  addu        $zero, $t5, $zero
/* 04AB50 8004AFA0 01A201A3 */  subu        $zero, $t5, $v0
/* 04AB54 8004AFA4 01A401A5 */  or          $zero, $t5, $a0
/* 04AB58 8004AFA8 01A601A7 */  nor         $zero, $t5, $a2
/* 04AB5C 8004AFAC 01A801A9 */  special(0x29) $zero, $t5, $t0
/* 04AB60 8004AFB0 01AA0000 */  sll         $zero, $t2, 0
/* 04AB64 8004AFB4 00000000 */  nop
/* 04AB68 8004AFB8 00000000 */  nop
/* 04AB6C 8004AFBC 00000000 */  nop
/* 04AB70 8004AFC0 00000000 */  nop
/* 04AB74 8004AFC4 00000000 */  nop
/* 04AB78 8004AFC8 00000000 */  nop
/* 04AB7C 8004AFCC 00000000 */  nop
/* 04AB80 8004AFD0 00000000 */  nop
/* 04AB84 8004AFD4 00000000 */  nop
/* 04AB88 8004AFD8 00000000 */  nop
/* 04AB8C 8004AFDC 00000000 */  nop
/* 04AB90 8004AFE0 00000000 */  nop
/* 04AB94 8004AFE4 00000000 */  nop
/* 04AB98 8004AFE8 00000000 */  nop
/* 04AB9C 8004AFEC 00000000 */  nop
/* 04ABA0 8004AFF0 00000000 */  nop
/* 04ABA4 8004AFF4 00000000 */  nop
/* 04ABA8 8004AFF8 00000000 */  nop
/* 04ABAC 8004AFFC 01AB01AC */  dadd        $zero, $t5, $t3
/* 04ABB0 8004B000 01AD01AE */  dsub        $zero, $t5, $t5
/* 04ABB4 8004B004 01AF01B0 */  tge         $t5, $t7
/* 04ABB8 8004B008 01B101B2 */  tlt         $t5, $s1
/* 04ABBC 8004B00C 01B301B4 */  teq         $t5, $s3
/* 04ABC0 8004B010 01B501B6 */  tne         $t5, $s5
/* 04ABC4 8004B014 01B701B8 */  dsll        $zero, $s7, 6
/* 04ABC8 8004B018 01B901BA */  dsrl        $zero, $t9, 6
/* 04ABCC 8004B01C 01BB01BC */  dsll32      $zero, $k1, 6
/* 04ABD0 8004B020 01BD01BE */  dsrl32      $zero, $sp, 6
/* 04ABD4 8004B024 01BF01C0 */  sll         $zero, $ra, 7
/* 04ABD8 8004B028 01C101C2 */  srl         $zero, $at, 7
/* 04ABDC 8004B02C 01C301C4 */  sllv        $zero, $t6, $v1
/* 04ABE0 8004B030 01C501C6 */  srlv        $zero, $t6, $a1
/* 04ABE4 8004B034 01C701C8 */  jr          $t6
/* 04ABE8 8004B038 01C901CA */   movz       $zero, $t6, $t1
/* 04ABEC 8004B03C 01CB0000 */  sll         $zero, $t3, 0
/* 04ABF0 8004B040 00000000 */  nop
/* 04ABF4 8004B044 00000000 */  nop
/* 04ABF8 8004B048 00000000 */  nop
/* 04ABFC 8004B04C 00000000 */  nop
/* 04AC00 8004B050 00000000 */  nop
/* 04AC04 8004B054 00000000 */  nop
/* 04AC08 8004B058 00000000 */  nop
/* 04AC0C 8004B05C 01CC01CD */  break       460
/* 04AC10 8004B060 01CE01CF */  sync        462
/* 04AC14 8004B064 01D001D1 */  mthi        $t6
/* 04AC18 8004B068 01D201D3 */  mtlo        $t6
/* 04AC1C 8004B06C 01D401D5 */  special(0x15) $zero, $t6, $s4
/* 04AC20 8004B070 01D601D7 */  dsrav       $zero, $s6, $t6
/* 04AC24 8004B074 01D801D9 */  multu       $t6, $t8
/* 04AC28 8004B078 01DA01DB */  divu        $zero, $t6, $k0
/* 04AC2C 8004B07C 01DC01DD */  dmultu      $t6, $gp
/* 04AC30 8004B080 01DE01DF */  ddivu       $t6, $fp
/* 04AC34 8004B084 01E001E1 */  addu        $zero, $t7, $zero
/* 04AC38 8004B088 01E201E3 */  subu        $zero, $t7, $v0
/* 04AC3C 8004B08C 01E401E5 */  or          $zero, $t7, $a0
/* 04AC40 8004B090 01E601E7 */  nor         $zero, $t7, $a2
/* 04AC44 8004B094 01E801E9 */  special(0x29) $zero, $t7, $t0
/* 04AC48 8004B098 01EA01EB */  sltu        $zero, $t7, $t2
/* 04AC4C 8004B09C 01EC0000 */  sll         $zero, $t4, 0
/* 04AC50 8004B0A0 00000000 */  nop
/* 04AC54 8004B0A4 00000000 */  nop
/* 04AC58 8004B0A8 00000000 */  nop
/* 04AC5C 8004B0AC 00000000 */  nop
/* 04AC60 8004B0B0 00000000 */  nop
/* 04AC64 8004B0B4 00000000 */  nop
/* 04AC68 8004B0B8 01ED01EE */  dsub        $zero, $t7, $t5
/* 04AC6C 8004B0BC 01EF01F0 */  tge         $t7, $t7
/* 04AC70 8004B0C0 01F101F2 */  tlt         $t7, $s1
/* 04AC74 8004B0C4 01F301F4 */  teq         $t7, $s3
/* 04AC78 8004B0C8 01F501F6 */  tne         $t7, $s5
/* 04AC7C 8004B0CC 01F701F8 */  dsll        $zero, $s7, 7
/* 04AC80 8004B0D0 01F901FA */  dsrl        $zero, $t9, 7
/* 04AC84 8004B0D4 01FB01FC */  dsll32      $zero, $k1, 7
/* 04AC88 8004B0D8 01FD01FE */  dsrl32      $zero, $sp, 7
/* 04AC8C 8004B0DC 01FF0200 */  sll         $zero, $ra, 8
/* 04AC90 8004B0E0 02010202 */  srl         $zero, $at, 8
/* 04AC94 8004B0E4 02030204 */  sllv        $zero, $s0, $v1
/* 04AC98 8004B0E8 02050206 */  srlv        $zero, $s0, $a1
/* 04AC9C 8004B0EC 02070208 */  jr          $s0
/* 04ACA0 8004B0F0 0209020A */   movz       $zero, $s0, $t1
/* 04ACA4 8004B0F4 020B020C */  syscall     523
/* 04ACA8 8004B0F8 020D0000 */  sll         $zero, $t5, 0
/* 04ACAC 8004B0FC 00000000 */  nop
/* 04ACB0 8004B100 00000000 */  nop
/* 04ACB4 8004B104 00000000 */  nop
/* 04ACB8 8004B108 00000000 */  nop
/* 04ACBC 8004B10C 00000000 */  nop
/* 04ACC0 8004B110 00000000 */  nop
/* 04ACC4 8004B114 00000000 */  nop
/* 04ACC8 8004B118 00000000 */  nop
/* 04ACCC 8004B11C 00000000 */  nop
/* 04ACD0 8004B120 00000000 */  nop
/* 04ACD4 8004B124 00000000 */  nop
/* 04ACD8 8004B128 00000000 */  nop
/* 04ACDC 8004B12C 00000000 */  nop
/* 04ACE0 8004B130 00000000 */  nop
/* 04ACE4 8004B134 00000000 */  nop
/* 04ACE8 8004B138 00000000 */  nop
/* 04ACEC 8004B13C 00000000 */  nop
/* 04ACF0 8004B140 00000000 */  nop
/* 04ACF4 8004B144 00000000 */  nop
/* 04ACF8 8004B148 00000000 */  nop
/* 04ACFC 8004B14C 00000000 */  nop
/* 04AD00 8004B150 00000000 */  nop
/* 04AD04 8004B154 00000000 */  nop
/* 04AD08 8004B158 00000000 */  nop
/* 04AD0C 8004B15C 00000000 */  nop
/* 04AD10 8004B160 00000000 */  nop
/* 04AD14 8004B164 00000000 */  nop
/* 04AD18 8004B168 00000000 */  nop
/* 04AD1C 8004B16C 00000000 */  nop
/* 04AD20 8004B170 00000000 */  nop
/* 04AD24 8004B174 020E020F */  sync        526
/* 04AD28 8004B178 02100211 */  mthi        $s0
/* 04AD2C 8004B17C 02120213 */  mtlo        $s0
/* 04AD30 8004B180 02140215 */  special(0x15) $zero, $s0, $s4
/* 04AD34 8004B184 02160217 */  dsrav       $zero, $s6, $s0
/* 04AD38 8004B188 02180219 */  multu       $s0, $t8
/* 04AD3C 8004B18C 021A021B */  divu        $zero, $s0, $k0
/* 04AD40 8004B190 021C021D */  dmultu      $s0, $gp
/* 04AD44 8004B194 021E021F */  ddivu       $s0, $fp
/* 04AD48 8004B198 02200221 */  addu        $zero, $s1, $zero
/* 04AD4C 8004B19C 00000000 */  nop
/* 04AD50 8004B1A0 00000000 */  nop
/* 04AD54 8004B1A4 00000000 */  nop
/* 04AD58 8004B1A8 00000000 */  nop
/* 04AD5C 8004B1AC 00000000 */  nop
/* 04AD60 8004B1B0 02220223 */  subu        $zero, $s1, $v0
/* 04AD64 8004B1B4 02240225 */  or          $zero, $s1, $a0
/* 04AD68 8004B1B8 02260227 */  nor         $zero, $s1, $a2
/* 04AD6C 8004B1BC 02280229 */  special(0x29) $zero, $s1, $t0
/* 04AD70 8004B1C0 022A022B */  sltu        $zero, $s1, $t2
/* 04AD74 8004B1C4 022C022D */  daddu       $zero, $s1, $t4
/* 04AD78 8004B1C8 022E022F */  dsubu       $zero, $s1, $t6
/* 04AD7C 8004B1CC 02300231 */  tgeu        $s1, $s0
/* 04AD80 8004B1D0 02320233 */  tltu        $s1, $s2
/* 04AD84 8004B1D4 02340235 */  special(0x35) $zero, $s1, $s4
/* 04AD88 8004B1D8 00000000 */  nop
/* 04AD8C 8004B1DC 00000000 */  nop
/* 04AD90 8004B1E0 00000000 */  nop
/* 04AD94 8004B1E4 00000000 */  nop
/* 04AD98 8004B1E8 00000000 */  nop
/* 04AD9C 8004B1EC 02360237 */  special(0x37) $zero, $s1, $s6
/* 04ADA0 8004B1F0 02380239 */  special(0x39) $zero, $s1, $t8
/* 04ADA4 8004B1F4 023A023B */  dsra        $zero, $k0, 8
/* 04ADA8 8004B1F8 023C023D */  special(0x3d) $zero, $s1, $gp
/* 04ADAC 8004B1FC 023E0000 */  sll         $zero, $fp, 0
/* 04ADB0 8004B200 00000000 */  nop
/* 04ADB4 8004B204 00000000 */  nop
/* 04ADB8 8004B208 00000000 */  nop
/* 04ADBC 8004B20C 00000000 */  nop
/* 04ADC0 8004B210 00000000 */  nop
/* 04ADC4 8004B214 023F0240 */  sll         $zero, $ra, 9
/* 04ADC8 8004B218 02410242 */  srl         $zero, $at, 9
/* 04ADCC 8004B21C 02430244 */  sllv        $zero, $s2, $v1
/* 04ADD0 8004B220 02450246 */  srlv        $zero, $s2, $a1
/* 04ADD4 8004B224 02470248 */  jr          $s2
/* 04ADD8 8004B228 00000000 */   nop
/* 04ADDC 8004B22C 00000000 */  nop
/* 04ADE0 8004B230 0249024A */  movz        $zero, $s2, $t1
/* 04ADE4 8004B234 024B024C */  syscall     587
/* 04ADE8 8004B238 024D024E */  special(0x0e) $zero, $s2, $t5
/* 04ADEC 8004B23C 024F0250 */  mfhi        $zero
/* 04ADF0 8004B240 02510252 */  mflo        $zero
/* 04ADF4 8004B244 02530254 */  dsllv       $zero, $s3, $s2
/* 04ADF8 8004B248 02550256 */  dsrlv       $zero, $s5, $s2
/* 04ADFC 8004B24C 02570000 */  sll         $zero, $s7, 0
/* 04AE00 8004B250 00000000 */  nop
/* 04AE04 8004B254 00000000 */  nop
/* 04AE08 8004B258 02580259 */  multu       $s2, $t8
/* 04AE0C 8004B25C 025A025B */  divu        $zero, $s2, $k0
/* 04AE10 8004B260 025C025D */  dmultu      $s2, $gp
/* 04AE14 8004B264 025E025F */  ddivu       $s2, $fp
/* 04AE18 8004B268 02600261 */  addu        $zero, $s3, $zero
/* 04AE1C 8004B26C 02620263 */  subu        $zero, $s3, $v0
/* 04AE20 8004B270 02640265 */  or          $zero, $s3, $a0
/* 04AE24 8004B274 02660000 */  sll         $zero, $a2, 0
/* 04AE28 8004B278 00000000 */  nop
/* 04AE2C 8004B27C 00000000 */  nop
/* 04AE30 8004B280 00000000 */  nop
/* 04AE34 8004B284 00000000 */  nop
/* 04AE38 8004B288 00000000 */  nop
/* 04AE3C 8004B28C 00000000 */  nop
/* 04AE40 8004B290 00000000 */  nop
/* 04AE44 8004B294 00000000 */  nop
/* 04AE48 8004B298 00000000 */  nop
/* 04AE4C 8004B29C 00000000 */  nop
/* 04AE50 8004B2A0 00000000 */  nop
/* 04AE54 8004B2A4 00000000 */  nop
/* 04AE58 8004B2A8 02670268 */  special(0x28) $zero, $s3, $a3
/* 04AE5C 8004B2AC 0269026A */  slt         $zero, $s3, $t1
/* 04AE60 8004B2B0 026B026C */  dadd        $zero, $s3, $t3
/* 04AE64 8004B2B4 026D026E */  dsub        $zero, $s3, $t5
/* 04AE68 8004B2B8 026F0270 */  tge         $s3, $t7
/* 04AE6C 8004B2BC 02710272 */  tlt         $s3, $s1
/* 04AE70 8004B2C0 02730274 */  teq         $s3, $s3
/* 04AE74 8004B2C4 02750276 */  tne         $s3, $s5
/* 04AE78 8004B2C8 02770278 */  dsll        $zero, $s7, 9
/* 04AE7C 8004B2CC 0279027A */  dsrl        $zero, $t9, 9
/* 04AE80 8004B2D0 027B027C */  dsll32      $zero, $k1, 9
/* 04AE84 8004B2D4 027D027E */  dsrl32      $zero, $sp, 9
/* 04AE88 8004B2D8 027F0280 */  sll         $zero, $ra, 10
/* 04AE8C 8004B2DC 02810000 */  sll         $zero, $at, 0
/* 04AE90 8004B2E0 00000000 */  nop
/* 04AE94 8004B2E4 00000000 */  nop
/* 04AE98 8004B2E8 00000000 */  nop
/* 04AE9C 8004B2EC 02820283 */  sra         $zero, $v0, 10
/* 04AEA0 8004B2F0 02840285 */  special(0x05) $zero, $s4, $a0
/* 04AEA4 8004B2F4 02860287 */  srav        $zero, $s4, $a2
/* 04AEA8 8004B2F8 02880289 */  jalr        $zero,$s4
/* 04AEAC 8004B2FC 028A028B */   movn       $zero, $s4, $t2
/* 04AEB0 8004B300 028C028D */  break       652
/* 04AEB4 8004B304 028E028F */  sync        654
/* 04AEB8 8004B308 02900291 */  mthi        $s4
/* 04AEBC 8004B30C 02920293 */  mtlo        $s4
/* 04AEC0 8004B310 02940295 */  special(0x15) $zero, $s4, $s4
/* 04AEC4 8004B314 02960297 */  dsrav       $zero, $s6, $s4
/* 04AEC8 8004B318 02980299 */  multu       $s4, $t8
/* 04AECC 8004B31C 029A029B */  divu        $zero, $s4, $k0
/* 04AED0 8004B320 029C029D */  dmultu      $s4, $gp
/* 04AED4 8004B324 029E029F */  ddivu       $s4, $fp
/* 04AED8 8004B328 00000000 */  nop
/* 04AEDC 8004B32C 00000000 */  nop
/* 04AEE0 8004B330 00000000 */  nop
/* 04AEE4 8004B334 00000000 */  nop
/* 04AEE8 8004B338 00000000 */  nop
/* 04AEEC 8004B33C 00000000 */  nop
/* 04AEF0 8004B340 00000000 */  nop
/* 04AEF4 8004B344 00000000 */  nop
/* 04AEF8 8004B348 00000000 */  nop
/* 04AEFC 8004B34C 00000000 */  nop
/* 04AF00 8004B350 00000000 */  nop
/* 04AF04 8004B354 00000000 */  nop
/* 04AF08 8004B358 00000000 */  nop
/* 04AF0C 8004B35C 00000000 */  nop
/* 04AF10 8004B360 00000000 */  nop
/* 04AF14 8004B364 00000000 */  nop
/* 04AF18 8004B368 00000000 */  nop
/* 04AF1C 8004B36C 00000000 */  nop
/* 04AF20 8004B370 00000000 */  nop
/* 04AF24 8004B374 00000000 */  nop
/* 04AF28 8004B378 00000000 */  nop
/* 04AF2C 8004B37C 00000000 */  nop
/* 04AF30 8004B380 00000000 */  nop
/* 04AF34 8004B384 00000000 */  nop
/* 04AF38 8004B388 00000000 */  nop
/* 04AF3C 8004B38C 00000000 */  nop
/* 04AF40 8004B390 00000000 */  nop
/* 04AF44 8004B394 00000000 */  nop
/* 04AF48 8004B398 00000000 */  nop
/* 04AF4C 8004B39C 00000000 */  nop
/* 04AF50 8004B3A0 02A002A1 */  addu        $zero, $s5, $zero
/* 04AF54 8004B3A4 02A202A3 */  subu        $zero, $s5, $v0
/* 04AF58 8004B3A8 02A402A5 */  or          $zero, $s5, $a0
/* 04AF5C 8004B3AC 02A602A7 */  nor         $zero, $s5, $a2
/* 04AF60 8004B3B0 02A802A9 */  special(0x29) $zero, $s5, $t0
/* 04AF64 8004B3B4 02AA02AB */  sltu        $zero, $s5, $t2
/* 04AF68 8004B3B8 00000000 */  nop
/* 04AF6C 8004B3BC 00000000 */  nop
/* 04AF70 8004B3C0 00000000 */  nop
/* 04AF74 8004B3C4 00000000 */  nop
/* 04AF78 8004B3C8 00000000 */  nop
/* 04AF7C 8004B3CC 00000000 */  nop
/* 04AF80 8004B3D0 02AC02AD */  daddu       $zero, $s5, $t4
/* 04AF84 8004B3D4 02AE0000 */  sll         $zero, $t6, 0
/* 04AF88 8004B3D8 00000000 */  nop
/* 04AF8C 8004B3DC 00000000 */  nop
/* 04AF90 8004B3E0 00000000 */  nop
/* 04AF94 8004B3E4 00000000 */  nop
/* 04AF98 8004B3E8 00000000 */  nop
/* 04AF9C 8004B3EC 00000000 */  nop
/* 04AFA0 8004B3F0 00000000 */  nop
/* 04AFA4 8004B3F4 00000000 */  nop
/* 04AFA8 8004B3F8 02AF02B0 */  tge         $s5, $t7
/* 04AFAC 8004B3FC 02B102B2 */  tlt         $s5, $s1
/* 04AFB0 8004B400 02B302B4 */  teq         $s5, $s3
/* 04AFB4 8004B404 02B502B6 */  tne         $s5, $s5
/* 04AFB8 8004B408 02B702B8 */  dsll        $zero, $s7, 10
/* 04AFBC 8004B40C 02B902BA */  dsrl        $zero, $t9, 10
/* 04AFC0 8004B410 02BB02BC */  dsll32      $zero, $k1, 10
/* 04AFC4 8004B414 02BD02BE */  dsrl32      $zero, $sp, 10
/* 04AFC8 8004B418 02BF0000 */  sll         $zero, $ra, 0
/* 04AFCC 8004B41C 00000000 */  nop
/* 04AFD0 8004B420 00000000 */  nop
/* 04AFD4 8004B424 00000000 */  nop
/* 04AFD8 8004B428 00000000 */  nop
/* 04AFDC 8004B42C 00000000 */  nop
/* 04AFE0 8004B430 00000000 */  nop
/* 04AFE4 8004B434 00000000 */  nop
/* 04AFE8 8004B438 00000000 */  nop
/* 04AFEC 8004B43C 00000000 */  nop
/* 04AFF0 8004B440 00000000 */  nop
/* 04AFF4 8004B444 00000000 */  nop
/* 04AFF8 8004B448 00000000 */  nop
/* 04AFFC 8004B44C 00000000 */  nop
/* 04B000 8004B450 00000000 */  nop
/* 04B004 8004B454 00000000 */  nop
/* 04B008 8004B458 00000000 */  nop
/* 04B00C 8004B45C 00000000 */  nop
/* 04B010 8004B460 00000000 */  nop
/* 04B014 8004B464 02C002C1 */  movci       0x2C002C1
/* 04B018 8004B468 02C202C3 */  sra         $zero, $v0, 11
/* 04B01C 8004B46C 02C402C5 */  special(0x05) $zero, $s6, $a0
/* 04B020 8004B470 02C602C7 */  srav        $zero, $s6, $a2
/* 04B024 8004B474 02C802C9 */  jalr        $zero,$s6
/* 04B028 8004B478 02CA02CB */   movn       $zero, $s6, $t2
/* 04B02C 8004B47C 02CC02CD */  break       716
/* 04B030 8004B480 02CE02CF */  sync        718
/* 04B034 8004B484 02D002D1 */  mthi        $s6
/* 04B038 8004B488 02D202D3 */  mtlo        $s6
/* 04B03C 8004B48C 02D402D5 */  special(0x15) $zero, $s6, $s4
/* 04B040 8004B490 02D602D7 */  dsrav       $zero, $s6, $s6
/* 04B044 8004B494 02D80000 */  sll         $zero, $t8, 0
/* 04B048 8004B498 00000000 */  nop
/* 04B04C 8004B49C 00000000 */  nop
/* 04B050 8004B4A0 00000000 */  nop
/* 04B054 8004B4A4 00000000 */  nop
/* 04B058 8004B4A8 00000000 */  nop
/* 04B05C 8004B4AC 00000000 */  nop
/* 04B060 8004B4B0 00000000 */  nop
/* 04B064 8004B4B4 00000000 */  nop
/* 04B068 8004B4B8 00000000 */  nop
/* 04B06C 8004B4BC 00000000 */  nop
/* 04B070 8004B4C0 00000000 */  nop
/* 04B074 8004B4C4 00000000 */  nop
/* 04B078 8004B4C8 00000000 */  nop
/* 04B07C 8004B4CC 00000000 */  nop
/* 04B080 8004B4D0 00000000 */  nop
/* 04B084 8004B4D4 00000000 */  nop
/* 04B088 8004B4D8 00000000 */  nop
/* 04B08C 8004B4DC 00000000 */  nop
/* 04B090 8004B4E0 00000000 */  nop
/* 04B094 8004B4E4 00000000 */  nop
/* 04B098 8004B4E8 00000000 */  nop
/* 04B09C 8004B4EC 00000000 */  nop
/* 04B0A0 8004B4F0 00000000 */  nop
/* 04B0A4 8004B4F4 00000000 */  nop
/* 04B0A8 8004B4F8 00000000 */  nop
/* 04B0AC 8004B4FC 00000000 */  nop
/* 04B0B0 8004B500 00000000 */  nop
/* 04B0B4 8004B504 02D902DA */  div         $zero, $s6, $t9
/* 04B0B8 8004B508 02DB02DC */  dmult       $s6, $k1
/* 04B0BC 8004B50C 02DD02DE */  ddiv        $zero, $s6, $sp
/* 04B0C0 8004B510 02DF02E0 */  add         $zero, $s6, $ra
/* 04B0C4 8004B514 02E102E2 */  sub         $zero, $s7, $at
/* 04B0C8 8004B518 02E302E4 */  and         $zero, $s7, $v1
/* 04B0CC 8004B51C 02E502E6 */  xor         $zero, $s7, $a1
/* 04B0D0 8004B520 02E702E8 */  special(0x28) $zero, $s7, $a3
/* 04B0D4 8004B524 02E902EA */  slt         $zero, $s7, $t1
/* 04B0D8 8004B528 02EB02EC */  dadd        $zero, $s7, $t3
/* 04B0DC 8004B52C 02ED02EE */  dsub        $zero, $s7, $t5
/* 04B0E0 8004B530 02EF02F0 */  tge         $s7, $t7
/* 04B0E4 8004B534 02F102F2 */  tlt         $s7, $s1
/* 04B0E8 8004B538 02F302F4 */  teq         $s7, $s3
/* 04B0EC 8004B53C 02F502F6 */  tne         $s7, $s5
/* 04B0F0 8004B540 02F702F8 */  dsll        $zero, $s7, 11
/* 04B0F4 8004B544 02F902FA */  dsrl        $zero, $t9, 11
/* 04B0F8 8004B548 02FB02FC */  dsll32      $zero, $k1, 11
/* 04B0FC 8004B54C 02FD0000 */  sll         $zero, $sp, 0
/* 04B100 8004B550 00000000 */  nop
/* 04B104 8004B554 00000000 */  nop
/* 04B108 8004B558 00000000 */  nop
/* 04B10C 8004B55C 02FE02FF */  dsra32      $zero, $fp, 11
/* 04B110 8004B560 03000301 */  movci       0x3000301
/* 04B114 8004B564 03020000 */  sll         $zero, $v0, 0
/* 04B118 8004B568 00000000 */  nop
/* 04B11C 8004B56C 00000000 */  nop
/* 04B120 8004B570 00000000 */  nop
/* 04B124 8004B574 00000000 */  nop
/* 04B128 8004B578 00000000 */  nop
/* 04B12C 8004B57C 00000000 */  nop
/* 04B130 8004B580 00000000 */  nop
/* 04B134 8004B584 00000000 */  nop
/* 04B138 8004B588 00000000 */  nop
/* 04B13C 8004B58C 00000000 */  nop
/* 04B140 8004B590 00000000 */  nop
/* 04B144 8004B594 00000000 */  nop
/* 04B148 8004B598 00000000 */  nop
/* 04B14C 8004B59C 00000000 */  nop
/* 04B150 8004B5A0 00000000 */  nop
/* 04B154 8004B5A4 00000000 */  nop
/* 04B158 8004B5A8 00000000 */  nop
/* 04B15C 8004B5AC 03030304 */  sllv        $zero, $t8, $v1
/* 04B160 8004B5B0 03050306 */  srlv        $zero, $t8, $a1
/* 04B164 8004B5B4 00000000 */  nop
/* 04B168 8004B5B8 00000000 */  nop
/* 04B16C 8004B5BC 00000000 */  nop
/* 04B170 8004B5C0 00000000 */  nop
/* 04B174 8004B5C4 00000000 */  nop
/* 04B178 8004B5C8 00000000 */  nop
/* 04B17C 8004B5CC 00000000 */  nop
/* 04B180 8004B5D0 00000000 */  nop
/* 04B184 8004B5D4 00000307 */  srav        $zero, $zero, $zero
/* 04B188 8004B5D8 03080309 */  jalr        $zero,$t8
/* 04B18C 8004B5DC 00000000 */   nop
/* 04B190 8004B5E0 0610000C */  bltzal      $s0, .L8004B614
/* 04B194 8004B5E4 00000030 */   tge        $zero, $zero
/* 04B198 8004B5E8 020B000A */  movz        $zero, $s0, $t3
/* 04B19C 8004B5EC 0000003C */  dsll32      $zero, $zero, 0
/* 04B1A0 8004B5F0 0404000A */  regimm(0x04) $zero, 0xa
/* 04B1A4 8004B5F4 00000044 */  sllv        $zero, $zero, $zero
/* 04B1A8 8004B5F8 0A0B000A */  j           func_882C0028
/* 04B1AC 8004B5FC 0000007C */   dsll32     $zero, $zero, 1
/* 04B1B0 8004B600 080E000B */  j           fakefunc_8038002C
/* 04B1B4 8004B604 000000B4 */   teq        $zero, $zero
/* 04B1B8 8004B608 0E0C000A */  jal         func_88300028
/* 04B1BC 8004B60C 00000108 */   jr         $zero
/* 04B1C0 8004B610 0A0C000A */   j          func_88300028
.L8004B614:
/* 04B1C4 8004B614 00000144 */   sllv       $zero, $zero, $zero
/* 04B1C8 8004B618 0204000A */  movz        $zero, $s0, $a0
/* 04B1CC 8004B61C 00000148 */  jr          $zero
/* 04B1D0 8004B620 060E000A */   tnei       $s0, 0xa
/* 04B1D4 8004B624 00000172 */  tlt         $zero, $zero
/* 04B1D8 8004B628 040E000A */  tnei        $zero, 0xa
/* 04B1DC 8004B62C 0000018E */  special(0x0e) $zero, $zero, $zero
/* 04B1E0 8004B630 0605000A */  regimm(0x05) $s0, 0xa
/* 04B1E4 8004B634 0000019E */  ddiv        $zero, $zero, $zero
/* 04B1E8 8004B638 08080007 */  j           func_8020001C
/* 04B1EC 8004B63C 000001BE */   dsrl32     $zero, $zero, 6
/* 04B1F0 8004B640 02050001 */  movci       0x2050001
/* 04B1F4 8004B644 000001C4 */  sllv        $zero, $zero, $zero
/* 04B1F8 8004B648 0A020004 */  j           fakefunc_88080010
/* 04B1FC 8004B64C 000001CE */   special(0x0e) $zero, $zero, $zero
/* 04B200 8004B650 02020001 */  movci       0x2020001
/* 04B204 8004B654 000001D0 */  mfhi        $zero
/* 04B208 8004B658 060B000A */  tltiu       $s0, 0xa
/* 04B20C 8004B65C 000001F2 */  tlt         $zero, $zero
/* 04B210 8004B660 080C000A */  j           func_80300028
/* 04B214 8004B664 00000222 */   sub        $zero, $zero, $zero
/* 04B218 8004B668 060B000A */  tltiu       $s0, 0xa
/* 04B21C 8004B66C 00000244 */  sllv        $zero, $zero, $zero
/* 04B220 8004B670 080B000A */  j           func_802C0028
/* 04B224 8004B674 00000270 */   tge        $zero, $zero
/* 04B228 8004B678 080C000A */  j           func_80300028
/* 04B22C 8004B67C 000002A0 */   add        $zero, $zero, $zero
/* 04B230 8004B680 080B000A */  j           func_802C0028
/* 04B234 8004B684 000002CC */   syscall    0
/* 04B238 8004B688 080C000A */  j           func_80300028
/* 04B23C 8004B68C 000002FC */   dsll32     $zero, $zero, 11
/* 04B240 8004B690 080C000A */  j           func_80300028
/* 04B244 8004B694 0000032C */   dadd       $zero, $zero, $zero
/* 04B248 8004B698 080B000A */  j           func_802C0028
/* 04B24C 8004B69C 00000358 */   mult       $zero, $zero
/* 04B250 8004B6A0 080C000A */  j           func_80300028
/* 04B254 8004B6A4 00000388 */   jr         $zero
/* 04B258 8004B6A8 080C000A */   j          func_80300028
/* 04B25C 8004B6AC 000003B8 */   dsll       $zero, $zero, 14
/* 04B260 8004B6B0 02080007 */  srav        $zero, $s0, $t0
/* 04B264 8004B6B4 000003C0 */  sll         $zero, $zero, 15
/* 04B268 8004B6B8 020B0007 */  srav        $zero, $s0, $t3
/* 04B26C 8004B6BC 000003CC */  syscall     0
/* 04B270 8004B6C0 0A080007 */  j           fakefunc_8820001C
/* 04B274 8004B6C4 000003F4 */   teq        $zero, $zero
/* 04B278 8004B6C8 08060006 */  j           fakefunc_80180018
/* 04B27C 8004B6CC 0000040C */   syscall    0
/* 04B280 8004B6D0 0A080007 */  j           fakefunc_8820001C
/* 04B284 8004B6D4 00000434 */   teq        $zero, $zero
/* 04B288 8004B6D8 080B000A */  j           func_802C0028
/* 04B28C 8004B6DC 00000460 */   add        $zero, $zero, $zero
/* 04B290 8004B6E0 0E0C000A */  jal         func_88300028
/* 04B294 8004B6E4 000004B4 */   teq        $zero, $zero
/* 04B298 8004B6E8 0A0B000A */  j           func_882C0028
/* 04B29C 8004B6EC 000004EC */   dadd       $zero, $zero, $zero
/* 04B2A0 8004B6F0 0A0B000A */  j           func_882C0028
/* 04B2A4 8004B6F4 00000524 */   and        $zero, $zero, $zero
/* 04B2A8 8004B6F8 0A0C000A */  j           func_88300028
/* 04B2AC 8004B6FC 00000560 */   add        $zero, $zero, $zero
/* 04B2B0 8004B700 0A0B000A */  j           func_882C0028
/* 04B2B4 8004B704 00000598 */   mult       $zero, $zero
/* 04B2B8 8004B708 0A0B000A */  j           func_882C0028
/* 04B2BC 8004B70C 000005D0 */   mfhi       $zero
/* 04B2C0 8004B710 0A0B000A */  j           func_882C0028
/* 04B2C4 8004B714 00000608 */   jr         $zero
/* 04B2C8 8004B718 0A0C000A */   j          func_88300028
/* 04B2CC 8004B71C 00000644 */   sllv       $zero, $zero, $zero
/* 04B2D0 8004B720 0A0B000A */  j           func_882C0028
/* 04B2D4 8004B724 0000067C */   dsll32     $zero, $zero, 25
/* 04B2D8 8004B728 020B000A */  movz        $zero, $s0, $t3
/* 04B2DC 8004B72C 00000688 */  jr          $zero
/* 04B2E0 8004B730 080C000A */   j          func_80300028
/* 04B2E4 8004B734 000006B8 */   dsll       $zero, $zero, 26
/* 04B2E8 8004B738 0A0B000A */  j           func_882C0028
/* 04B2EC 8004B73C 000006F0 */   tge        $zero, $zero
/* 04B2F0 8004B740 080B000A */  j           func_802C0028
/* 04B2F4 8004B744 0000071C */   dmult      $zero, $zero
/* 04B2F8 8004B748 0C0B000A */  jal         func_802C0028
/* 04B2FC 8004B74C 0000075E */   ddiv       $zero, $zero, $zero
/* 04B300 8004B750 0A0B000A */  j           func_882C0028
/* 04B304 8004B754 00000796 */   dsrlv      $zero, $zero, $zero
/* 04B308 8004B758 0C0C000A */  jal         func_80300028
/* 04B30C 8004B75C 000007DE */   ddiv       $zero, $zero, $zero
/* 04B310 8004B760 0A0B000A */  j           func_882C0028
/* 04B314 8004B764 00000816 */   dsrlv      $at, $zero, $zero
/* 04B318 8004B768 0C0C000A */  jal         func_80300028
/* 04B31C 8004B76C 0000085E */   ddiv       $at, $zero, $zero
/* 04B320 8004B770 0A0B000A */  j           func_882C0028
/* 04B324 8004B774 00000896 */   dsrlv      $at, $zero, $zero
/* 04B328 8004B778 0A0C000A */  j           func_88300028
/* 04B32C 8004B77C 000008D2 */   mflo       $at
/* 04B330 8004B780 0A0B000A */  j           func_882C0028
/* 04B334 8004B784 0000090A */   movz       $at, $zero, $zero
/* 04B338 8004B788 0A0C000A */  j           func_88300028
/* 04B33C 8004B78C 00000946 */   srlv       $at, $zero, $zero
/* 04B340 8004B790 0A0B000A */  j           func_882C0028
/* 04B344 8004B794 0000097E */   dsrl32     $at, $zero, 5
/* 04B348 8004B798 0E0B000A */  jal         func_882C0028
/* 04B34C 8004B79C 000009CC */   syscall    0
/* 04B350 8004B7A0 0A0B000A */  j           func_882C0028
/* 04B354 8004B7A4 00000A04 */   sllv       $at, $zero, $zero
/* 04B358 8004B7A8 0A0B000A */  j           func_882C0028
/* 04B35C 8004B7AC 00000A3C */   dsll32     $at, $zero, 8
/* 04B360 8004B7B0 0A0B000A */  j           func_882C0028
/* 04B364 8004B7B4 00000A74 */   teq        $zero, $zero
/* 04B368 8004B7B8 040E000A */  tnei        $zero, 0xa
/* 04B36C 8004B7BC 00000A90 */  mfhi        $at
/* 04B370 8004B7C0 080B000A */  j           func_802C0028
/* 04B374 8004B7C4 00000ABC */   dsll32     $at, $zero, 10
/* 04B378 8004B7C8 040E000A */  tnei        $zero, 0xa
/* 04B37C 8004B7CC 00000AD8 */  mult        $zero, $zero
/* 04B380 8004B7D0 0603000A */  bgezl       $s0, .L8004B7FC
/* 04B384 8004B7D4 00000AE2 */   sub        $at, $zero, $zero
/* 04B388 8004B7D8 0A01FFFE */  j           fakefunc_8807FFF8
/* 04B38C 8004B7DC 00000AE8 */   special(0x28) $at, $zero, $zero
/* 04B390 8004B7E0 0610000D */  bltzal      $s0, .L8004B818
/* 04B394 8004B7E4 00000B18 */   mult       $zero, $zero
/* 04B398 8004B7E8 080A0008 */  j           fakefunc_80280020
/* 04B39C 8004B7EC 00000B40 */   sll        $at, $zero, 13
/* 04B3A0 8004B7F0 080C000A */  j           func_80300028
/* 04B3A4 8004B7F4 00000B70 */   tge        $zero, $zero
/* 04B3A8 8004B7F8 080A0008 */  j           fakefunc_80280020
.L8004B7FC:
/* 04B3AC 8004B7FC 00000B98 */   mult       $zero, $zero
/* 04B3B0 8004B800 080D000B */  j           fakefunc_8034002C
/* 04B3B4 8004B804 00000BCC */   syscall    0
/* 04B3B8 8004B808 080A0008 */  j           fakefunc_80280020
/* 04B3BC 8004B80C 00000BF4 */   teq        $zero, $zero
/* 04B3C0 8004B810 060B000A */  tltiu       $s0, 0xa
/* 04B3C4 8004B814 00000C16 */  dsrlv       $at, $zero, $zero
.L8004B818:
/* 04B3C8 8004B818 080D0008 */  j           fakefunc_80340020
/* 04B3CC 8004B81C 00000C4A */   movz       $at, $zero, $zero
/* 04B3D0 8004B820 080B000A */  j           func_802C0028
/* 04B3D4 8004B824 00000C76 */   tne        $zero, $zero
/* 04B3D8 8004B828 020B000A */  movz        $zero, $s0, $t3
/* 04B3DC 8004B82C 00000C82 */  srl         $at, $zero, 18
/* 04B3E0 8004B830 040F000A */  regimm(0x0f) $zero, 0xa
/* 04B3E4 8004B834 00000CA0 */  add         $at, $zero, $zero
/* 04B3E8 8004B838 080B000A */  j           func_802C0028
/* 04B3EC 8004B83C 00000CCC */   syscall    0
/* 04B3F0 8004B840 020B000A */  movz        $zero, $s0, $t3
/* 04B3F4 8004B844 00000CD8 */  mult        $zero, $zero
/* 04B3F8 8004B848 0C090008 */  jal         func_80240020
/* 04B3FC 8004B84C 00000D0E */   special(0x0e) $at, $zero, $zero
/* 04B400 8004B850 08090008 */  j           func_80240020
/* 04B404 8004B854 00000D32 */   tlt        $zero, $zero
/* 04B408 8004B858 080A0008 */  j           fakefunc_80280020
/* 04B40C 8004B85C 00000D5A */   div        $at, $zero, $zero
/* 04B410 8004B860 080D0008 */  j           fakefunc_80340020
/* 04B414 8004B864 00000D8E */   special(0x0e) $at, $zero, $zero
/* 04B418 8004B868 080D0008 */  j           fakefunc_80340020
/* 04B41C 8004B86C 00000DC2 */   srl        $at, $zero, 23
/* 04B420 8004B870 06090008 */  tgeiu       $s0, 0x8
/* 04B424 8004B874 00000DDE */  ddiv        $at, $zero, $zero
/* 04B428 8004B878 080A0008 */  j           fakefunc_80280020
/* 04B42C 8004B87C 00000E06 */   srlv       $at, $zero, $zero
/* 04B430 8004B880 040B0009 */  tltiu       $zero, 0x9
/* 04B434 8004B884 00000E1C */  dmult       $zero, $zero
/* 04B438 8004B888 08090007 */  j           fakefunc_8024001C
/* 04B43C 8004B88C 00000E40 */   sll        $at, $zero, 25
/* 04B440 8004B890 08080007 */  j           func_8020001C
/* 04B444 8004B894 00000E60 */   add        $at, $zero, $zero
/* 04B448 8004B898 0C080007 */  jal         func_8020001C
/* 04B44C 8004B89C 00000E90 */   mfhi       $at
/* 04B450 8004B8A0 08080007 */  j           func_8020001C
/* 04B454 8004B8A4 00000EB0 */   tge        $zero, $zero
/* 04B458 8004B8A8 080C0007 */  j           fakefunc_8030001C
/* 04B45C 8004B8AC 00000EE0 */   add        $at, $zero, $zero
/* 04B460 8004B8B0 08080007 */  j           func_8020001C
/* 04B464 8004B8B4 00000F00 */   sll        $at, $zero, 28
/* 04B468 8004B8B8 060E000A */  tnei        $s0, 0xa
/* 04B46C 8004B8BC 00000F2A */  slt         $at, $zero, $zero
/* 04B470 8004B8C0 020B000A */  movz        $zero, $s0, $t3
/* 04B474 8004B8C4 00000F36 */  tne         $zero, $zero
/* 04B478 8004B8C8 060E000A */  tnei        $s0, 0xa
/* 04B47C 8004B8CC 00000F60 */  add         $at, $zero, $zero
/* 04B480 8004B8D0 0602000A */  bltzl       $s0, .L8004B8FC
/* 04B484 8004B8D4 00000F66 */   xor        $at, $zero, $zero
/* 04B488 8004B8D8 0610000C */  bltzal      $s0, .L8004B90C
/* 04B48C 8004B8DC 00000F96 */   dsrlv      $at, $zero, $zero
/* 04B490 8004B8E0 0610000B */  bltzal      $s0, .L8004B910
/* 04B494 8004B8E4 00000FC6 */   srlv       $at, $zero, $zero
/* 04B498 8004B8E8 020B0007 */  srav        $zero, $s0, $t3
/* 04B49C 8004B8EC 00000FD2 */  mflo        $at
/* 04B4A0 8004B8F0 080C0009 */  j           func_80300024
/* 04B4A4 8004B8F4 00001002 */   srl        $v0, $zero, 0
/* 04B4A8 8004B8F8 080C000A */  j           func_80300028
.L8004B8FC:
/* 04B4AC 8004B8FC 00001032 */   tlt        $zero, $zero
/* 04B4B0 8004B900 08080008 */  j           fakefunc_80200020
/* 04B4B4 8004B904 00001052 */   mflo       $v0
/* 04B4B8 8004B908 0A0B000A */  j           func_882C0028
.L8004B90C:
/* 04B4BC 8004B90C 0000108A */   movz       $v0, $zero, $zero
.L8004B910:
/* 04B4C0 8004B910 020B000A */  movz        $zero, $s0, $t3
/* 04B4C4 8004B914 00001096 */  dsrlv       $v0, $zero, $zero
/* 04B4C8 8004B918 080F000A */  j           fakefunc_803C0028
/* 04B4CC 8004B91C 000010D2 */   mflo       $v0
/* 04B4D0 8004B920 0402000A */  bltzl       $zero, .L8004B94C
/* 04B4D4 8004B924 000010D6 */   dsrlv      $v0, $zero, $zero
/* 04B4D8 8004B928 0C0B000A */  jal         func_802C0028
/* 04B4DC 8004B92C 00001118 */   mult       $zero, $zero
/* 04B4E0 8004B930 0605000A */  regimm(0x05) $s0, 0xa
/* 04B4E4 8004B934 00001128 */  special(0x28) $v0, $zero, $zero
/* 04B4E8 8004B938 06060006 */  regimm(0x06) $s0, 0x6
/* 04B4EC 8004B93C 0000113A */  dsrl        $v0, $zero, 4
/* 04B4F0 8004B940 08050005 */  j           fakefunc_80140014
/* 04B4F4 8004B944 0000114E */   special(0x0e) $v0, $zero, $zero
/* 04B4F8 8004B948 060F000B */  regimm(0x0f) $s0, 0xb
.L8004B94C:
/* 04B4FC 8004B94C 0000117C */  dsll32      $v0, $zero, 5
/* 04B500 8004B950 0C0B000A */  jal         func_802C0028
/* 04B504 8004B954 000011BE */   dsrl32     $v0, $zero, 6
/* 04B508 8004B958 0602000A */  bltzl       $s0, .L8004B984
/* 04B50C 8004B95C 000011C4 */   sllv       $v0, $zero, $zero
/* 04B510 8004B960 0404000B */  regimm(0x04) $zero, 0xb
/* 04B514 8004B964 000011CC */  syscall     0
/* 04B518 8004B968 08080007 */  j           func_8020001C
/* 04B51C 8004B96C 000011EC */   dadd       $v0, $zero, $zero
/* 04B520 8004B970 0610000C */  bltzal      $s0, .L8004B9A4
/* 04B524 8004B974 0000121C */   dmult      $zero, $zero
/* 04B528 8004B978 0610000C */  bltzal      $s0, .L8004B9AC
/* 04B52C 8004B97C 0000124C */   syscall    0
/* 04B530 8004B980 0403000A */  bgezl       $zero, .L8004B9AC
.L8004B984:
/* 04B534 8004B984 00001252 */   mflo       $v0
/* 04B538 8004B988 0A0C0007 */  j           fakefunc_8830001C
/* 04B53C 8004B98C 0000128E */   special(0x0e) $v0, $zero, $zero
/* 04B540 8004B990 080E000A */  j           fakefunc_80380028
/* 04B544 8004B994 000012C6 */   srlv       $v0, $zero, $zero
/* 04B548 8004B998 04040006 */  regimm(0x04) $zero, 0x6
/* 04B54C 8004B99C 000012CE */  special(0x0e) $v0, $zero, $zero
/* 04B550 8004B9A0 02050001 */  movci       0x2050001
.L8004B9A4:
/* 04B554 8004B9A4 000012D4 */  dsllv       $v0, $zero, $zero
/* 04B558 8004B9A8 060E000A */  tnei        $s0, 0xa
.L8004B9AC:
/* 04B55C 8004B9AC 000012FE */  dsrl32      $v0, $zero, 11
/* 04B560 8004B9B0 0605000A */  regimm(0x05) $s0, 0xa
/* 04B564 8004B9B4 0000130E */  special(0x0e) $v0, $zero, $zero
/* 04B568 8004B9B8 06060006 */  regimm(0x06) $s0, 0x6
/* 04B56C 8004B9BC 00001320 */  add         $v0, $zero, $zero
/* 04B570 8004B9C0 0610000B */  bltzal      $s0, .L8004B9F0
/* 04B574 8004B9C4 00001350 */   mfhi       $v0
/* 04B578 8004B9C8 0610000B */  bltzal      $s0, .L8004B9F8
/* 04B57C 8004B9CC 00001380 */   sll        $v0, $zero, 14
/* 04B580 8004B9D0 0610000B */  bltzal      $s0, .L8004BA00
/* 04B584 8004B9D4 000013B0 */   tge        $zero, $zero
/* 04B588 8004B9D8 080B0007 */  j           fakefunc_802C001C
/* 04B58C 8004B9DC 000013DC */   dmult      $zero, $zero
/* 04B590 8004B9E0 0A0E000D */  j           fakefunc_88380034
/* 04B594 8004B9E4 00001422 */   sub        $v0, $zero, $zero
/* 04B598 8004B9E8 0A0E000D */  j           fakefunc_88380034
/* 04B59C 8004B9EC 00001468 */   special(0x28) $v0, $zero, $zero
.L8004B9F0:
/* 04B5A0 8004B9F0 0A0E000D */  j           fakefunc_88380034
/* 04B5A4 8004B9F4 000014AE */   dsub       $v0, $zero, $zero
.L8004B9F8:
/* 04B5A8 8004B9F8 0A0E000D */  j           fakefunc_88380034
/* 04B5AC 8004B9FC 000014F4 */   teq        $zero, $zero
.L8004BA00:
/* 04B5B0 8004BA00 0A0E000D */  j           fakefunc_88380034
/* 04B5B4 8004BA04 0000153A */   dsrl       $v0, $zero, 20
/* 04B5B8 8004BA08 0A0F000E */  j           fakefunc_883C0038
/* 04B5BC 8004BA0C 00001586 */   srlv       $v0, $zero, $zero
/* 04B5C0 8004BA10 100B000A */  beq         $zero, $t3, .L8004BA3C
/* 04B5C4 8004BA14 000015DE */   ddiv       $v0, $zero, $zero
/* 04B5C8 8004BA18 0A0E000A */  j           func_88380028
/* 04B5CC 8004BA1C 00001624 */   and        $v0, $zero, $zero
/* 04B5D0 8004BA20 080E000D */  j           func_80380034
/* 04B5D4 8004BA24 0000165C */   dmult      $zero, $zero
/* 04B5D8 8004BA28 080E000D */  j           func_80380034
/* 04B5DC 8004BA2C 00001694 */   dsllv      $v0, $zero, $zero
/* 04B5E0 8004BA30 080E000D */  j           func_80380034
/* 04B5E4 8004BA34 000016CC */   syscall    0
/* 04B5E8 8004BA38 080D000C */  j           fakefunc_80340030
.L8004BA3C:
/* 04B5EC 8004BA3C 00001700 */   sll        $v0, $zero, 28
/* 04B5F0 8004BA40 040E000D */  tnei        $zero, 0xd
/* 04B5F4 8004BA44 0000171C */  dmult       $zero, $zero
/* 04B5F8 8004BA48 040E000D */  tnei        $zero, 0xd
/* 04B5FC 8004BA4C 00001738 */  dsll        $v0, $zero, 28
/* 04B600 8004BA50 060E000D */  tnei        $s0, 0xd
/* 04B604 8004BA54 00001762 */  sub         $v0, $zero, $zero
/* 04B608 8004BA58 060E000D */  tnei        $s0, 0xd
/* 04B60C 8004BA5C 0000178C */  syscall     0
/* 04B610 8004BA60 0610000D */  bltzal      $s0, .L8004BA98
/* 04B614 8004BA64 000017BC */   dsll32     $v0, $zero, 30
/* 04B618 8004BA68 0A0E000D */  j           fakefunc_88380034
/* 04B61C 8004BA6C 00001802 */   srl        $v1, $zero, 0
/* 04B620 8004BA70 0C0F000D */  jal         func_803C0034
/* 04B624 8004BA74 0000185C */   dmult      $zero, $zero
/* 04B628 8004BA78 0C0F000D */  jal         func_803C0034
/* 04B62C 8004BA7C 000018B6 */   tne        $zero, $zero
/* 04B630 8004BA80 0C0F000D */  jal         func_803C0034
/* 04B634 8004BA84 00001910 */   mfhi       $v1
/* 04B638 8004BA88 0C0F000D */  jal         func_803C0034
/* 04B63C 8004BA8C 0000196A */   slt        $v1, $zero, $zero
/* 04B640 8004BA90 0C0E000C */  jal         func_80380030
/* 04B644 8004BA94 000019BE */   dsrl32     $v1, $zero, 6
.L8004BA98:
/* 04B648 8004BA98 08080007 */  j           func_8020001C
/* 04B64C 8004BA9C 000019DE */   ddiv       $v1, $zero, $zero
/* 04B650 8004BAA0 0C0C000A */  jal         func_80300028
/* 04B654 8004BAA4 00001A26 */   xor        $v1, $zero, $zero
/* 04B658 8004BAA8 0A0F000D */  j           fakefunc_883C0034
/* 04B65C 8004BAAC 00001A72 */   tlt        $zero, $zero
/* 04B660 8004BAB0 0A0F000D */  j           fakefunc_883C0034
/* 04B664 8004BAB4 00001ABE */   dsrl32     $v1, $zero, 10
/* 04B668 8004BAB8 0A0F000D */  j           fakefunc_883C0034
/* 04B66C 8004BABC 00001B0A */   movz       $v1, $zero, $zero
/* 04B670 8004BAC0 0A0F000D */  j           fakefunc_883C0034
/* 04B674 8004BAC4 00001B56 */   dsrlv      $v1, $zero, $zero
/* 04B678 8004BAC8 0610000D */  bltzal      $s0, .L8004BB00
/* 04B67C 8004BACC 00001B86 */   srlv       $v1, $zero, $zero
/* 04B680 8004BAD0 0610000D */  bltzal      $s0, .L8004BB08
/* 04B684 8004BAD4 00001BB6 */   tne        $zero, $zero
/* 04B688 8004BAD8 080C000A */  j           func_80300028
/* 04B68C 8004BADC 00001BE6 */   xor        $v1, $zero, $zero
/* 04B690 8004BAE0 080D000B */  j           fakefunc_8034002C
/* 04B694 8004BAE4 00001C1A */   div        $v1, $zero, $zero
/* 04B698 8004BAE8 080D000B */  j           fakefunc_8034002C
/* 04B69C 8004BAEC 00001C4E */   special(0x0e) $v1, $zero, $zero
/* 04B6A0 8004BAF0 080D000B */  j           fakefunc_8034002C
/* 04B6A4 8004BAF4 00001C82 */   srl        $v1, $zero, 18
/* 04B6A8 8004BAF8 080C000A */  j           func_80300028
/* 04B6AC 8004BAFC 00001CB2 */   tlt        $zero, $zero
.L8004BB00:
/* 04B6B0 8004BB00 080C000A */  j           func_80300028
/* 04B6B4 8004BB04 00001CE2 */   sub        $v1, $zero, $zero
.L8004BB08:
/* 04B6B8 8004BB08 080D000B */  j           fakefunc_8034002C
/* 04B6BC 8004BB0C 00001D16 */   dsrlv      $v1, $zero, $zero
/* 04B6C0 8004BB10 0E0A0008 */  jal         func_88280020
/* 04B6C4 8004BB14 00001D5C */   dmult      $zero, $zero
/* 04B6C8 8004BB18 080D0008 */  j           fakefunc_80340020
/* 04B6CC 8004BB1C 00001D90 */   mfhi       $v1
/* 04B6D0 8004BB20 080D000B */  j           fakefunc_8034002C
/* 04B6D4 8004BB24 00001DC4 */   sllv       $v1, $zero, $zero
/* 04B6D8 8004BB28 080D000B */  j           fakefunc_8034002C
/* 04B6DC 8004BB2C 00001DF8 */   dsll       $v1, $zero, 23
/* 04B6E0 8004BB30 080D000B */  j           fakefunc_8034002C
/* 04B6E4 8004BB34 00001E2C */   dadd       $v1, $zero, $zero
/* 04B6E8 8004BB38 080C000A */  j           func_80300028
/* 04B6EC 8004BB3C 00001E5C */   dmult      $zero, $zero
/* 04B6F0 8004BB40 040C000B */  teqi        $zero, 0xb
/* 04B6F4 8004BB44 00001E74 */  teq         $zero, $zero
/* 04B6F8 8004BB48 040C000B */  teqi        $zero, 0xb
/* 04B6FC 8004BB4C 00001E8C */  syscall     0
/* 04B700 8004BB50 060C000B */  teqi        $s0, 0xb
/* 04B704 8004BB54 00001EB0 */  tge         $zero, $zero
/* 04B708 8004BB58 040C000B */  teqi        $zero, 0xb
/* 04B70C 8004BB5C 00001EC8 */  jr          $zero
/* 04B710 8004BB60 080C000A */   j          func_80300028
/* 04B714 8004BB64 00001EF8 */   dsll       $v1, $zero, 27
/* 04B718 8004BB68 080B000A */  j           func_802C0028
/* 04B71C 8004BB6C 00001F24 */   and        $v1, $zero, $zero
/* 04B720 8004BB70 080D000B */  j           fakefunc_8034002C
/* 04B724 8004BB74 00001F58 */   mult       $zero, $zero
/* 04B728 8004BB78 080D000B */  j           fakefunc_8034002C
/* 04B72C 8004BB7C 00001F8C */   syscall    0
/* 04B730 8004BB80 080D000B */  j           fakefunc_8034002C
/* 04B734 8004BB84 00001FC0 */   sll        $v1, $zero, 31
/* 04B738 8004BB88 080C000A */  j           func_80300028
/* 04B73C 8004BB8C 00001FF0 */   tge        $zero, $zero
/* 04B740 8004BB90 080C000A */  j           func_80300028
/* 04B744 8004BB94 00002020 */   add        $a0, $zero, $zero
/* 04B748 8004BB98 08080007 */  j           func_8020001C
/* 04B74C 8004BB9C 00002040 */   sll        $a0, $zero, 1
/* 04B750 8004BBA0 080A0008 */  j           fakefunc_80280020
/* 04B754 8004BBA4 00002068 */   special(0x28) $a0, $zero, $zero
/* 04B758 8004BBA8 080D000B */  j           fakefunc_8034002C
/* 04B75C 8004BBAC 0000209C */   dmult      $zero, $zero
/* 04B760 8004BBB0 080D000B */  j           fakefunc_8034002C
/* 04B764 8004BBB4 000020D0 */   mfhi       $a0
/* 04B768 8004BBB8 080D000B */  j           fakefunc_8034002C
/* 04B76C 8004BBBC 00002104 */   sllv       $a0, $zero, $zero
/* 04B770 8004BBC0 080C000A */  j           func_80300028
/* 04B774 8004BBC4 00002134 */   teq        $zero, $zero
/* 04B778 8004BBC8 0610000C */  bltzal      $s0, .L8004BBFC
/* 04B77C 8004BBCC 00002164 */   and        $a0, $zero, $zero
/* 04B780 8004BBD0 0610000C */  bltzal      $s0, .L8004BC04
/* 04B784 8004BBD4 00002194 */   dsllv      $a0, $zero, $zero
/* 04B788 8004BBD8 080F000A */  j           fakefunc_803C0028
/* 04B78C 8004BBDC 000021D0 */   mfhi       $a0
/* 04B790 8004BBE0 0610000B */  bltzal      $s0, .L8004BC10
/* 04B794 8004BBE4 00002200 */   sll        $a0, $zero, 8
/* 04B798 8004BBE8 040B000A */  tltiu       $zero, 0xa
/* 04B79C 8004BBEC 00002216 */  dsrlv       $a0, $zero, $zero
/* 04B7A0 8004BBF0 0605000A */  regimm(0x05) $s0, 0xa
/* 04B7A4 8004BBF4 00002226 */  xor         $a0, $zero, $zero
/* 04B7A8 8004BBF8 0A0B000A */  j           func_882C0028
.L8004BBFC:
/* 04B7AC 8004BBFC 0000225E */   ddiv       $a0, $zero, $zero
/* 04B7B0 8004BC00 080E000B */  j           fakefunc_8038002C
.L8004BC04:
/* 04B7B4 8004BC04 00002296 */   dsrlv      $a0, $zero, $zero
/* 04B7B8 8004BC08 0E0C000A */  jal         func_88300028
/* 04B7BC 8004BC0C 000022EA */   slt        $a0, $zero, $zero
.L8004BC10:
/* 04B7C0 8004BC10 0C0C000A */  jal         func_80300028
/* 04B7C4 8004BC14 00002332 */   tlt        $zero, $zero
/* 04B7C8 8004BC18 0405000A */  regimm(0x05) $zero, 0xa
/* 04B7CC 8004BC1C 0000233C */  dsll32      $a0, $zero, 12
/* 04B7D0 8004BC20 040E000A */  tnei        $zero, 0xa
/* 04B7D4 8004BC24 00002358 */  mult        $zero, $zero
/* 04B7D8 8004BC28 040E000A */  tnei        $zero, 0xa
/* 04B7DC 8004BC2C 00002374 */  teq         $zero, $zero
/* 04B7E0 8004BC30 0605000A */  regimm(0x05) $s0, 0xa
/* 04B7E4 8004BC34 00002384 */  sllv        $a0, $zero, $zero
/* 04B7E8 8004BC38 08080007 */  j           func_8020001C
/* 04B7EC 8004BC3C 000023A4 */   and        $a0, $zero, $zero
/* 04B7F0 8004BC40 04050001 */  regimm(0x05) $zero, 0x1
/* 04B7F4 8004BC44 000023AE */  dsub        $a0, $zero, $zero
/* 04B7F8 8004BC48 0A030005 */  j           fakefunc_880C0014
/* 04B7FC 8004BC4C 000023BE */   dsrl32     $a0, $zero, 14
/* 04B800 8004BC50 04020001 */  bltzl       $zero, .L8004BC58
/* 04B804 8004BC54 000023C2 */   srl        $a0, $zero, 15
.L8004BC58:
/* 04B808 8004BC58 080B000A */  j           func_802C0028
/* 04B80C 8004BC5C 000023EE */   dsub       $a0, $zero, $zero
/* 04B810 8004BC60 080C000A */  j           func_80300028
/* 04B814 8004BC64 0000241E */   ddiv       $a0, $zero, $zero
/* 04B818 8004BC68 060B000A */  tltiu       $s0, 0xa
/* 04B81C 8004BC6C 00002440 */  sll         $a0, $zero, 17
/* 04B820 8004BC70 080B000A */  j           func_802C0028
/* 04B824 8004BC74 0000246C */   dadd       $a0, $zero, $zero
/* 04B828 8004BC78 080C000A */  j           func_80300028
/* 04B82C 8004BC7C 0000249C */   dmult      $zero, $zero
/* 04B830 8004BC80 080B000A */  j           func_802C0028
/* 04B834 8004BC84 000024C8 */   jr         $zero
/* 04B838 8004BC88 080C000A */   j          func_80300028
/* 04B83C 8004BC8C 000024F8 */   dsll       $a0, $zero, 19
/* 04B840 8004BC90 080C000A */  j           func_80300028
/* 04B844 8004BC94 00002528 */   special(0x28) $a0, $zero, $zero
/* 04B848 8004BC98 080B000A */  j           func_802C0028
/* 04B84C 8004BC9C 00002554 */   dsllv      $a0, $zero, $zero
/* 04B850 8004BCA0 080C000A */  j           func_80300028
/* 04B854 8004BCA4 00002584 */   sllv       $a0, $zero, $zero
/* 04B858 8004BCA8 0A0C000A */  j           func_88300028
/* 04B85C 8004BCAC 000025C0 */   sll        $a0, $zero, 23
/* 04B860 8004BCB0 04080007 */  tgei        $zero, 0x7
/* 04B864 8004BCB4 000025D0 */  mfhi        $a0
/* 04B868 8004BCB8 040B0007 */  tltiu       $zero, 0x7
/* 04B86C 8004BCBC 000025E6 */  xor         $a0, $zero, $zero
/* 04B870 8004BCC0 0A090007 */  j           fakefunc_8824001C
/* 04B874 8004BCC4 00002614 */   dsllv      $a0, $zero, $zero
/* 04B878 8004BCC8 0A070006 */  j           fakefunc_881C0018
/* 04B87C 8004BCCC 00002638 */   dsll       $a0, $zero, 24
/* 04B880 8004BCD0 0A090007 */  j           fakefunc_8824001C
/* 04B884 8004BCD4 00002666 */   xor        $a0, $zero, $zero
/* 04B888 8004BCD8 0A0B000A */  j           func_882C0028
/* 04B88C 8004BCDC 0000269E */   ddiv       $a0, $zero, $zero
/* 04B890 8004BCE0 0E0D000B */  jal         func_8834002C
/* 04B894 8004BCE4 000026FA */   dsrl       $a0, $zero, 27
/* 04B898 8004BCE8 0C0B000A */  jal         func_802C0028
/* 04B89C 8004BCEC 0000273C */   dsll32     $a0, $zero, 28
/* 04B8A0 8004BCF0 0A0B000A */  j           func_882C0028
/* 04B8A4 8004BCF4 00002774 */   teq        $zero, $zero
/* 04B8A8 8004BCF8 0C0C000A */  jal         func_80300028
/* 04B8AC 8004BCFC 000027BC */   dsll32     $a0, $zero, 30
/* 04B8B0 8004BD00 0A0B000A */  j           func_882C0028
/* 04B8B4 8004BD04 000027F4 */   teq        $zero, $zero
/* 04B8B8 8004BD08 0A0B000A */  j           func_882C0028
/* 04B8BC 8004BD0C 0000282C */   dadd       $a1, $zero, $zero
/* 04B8C0 8004BD10 0A0B000A */  j           func_882C0028
/* 04B8C4 8004BD14 00002864 */   and        $a1, $zero, $zero
/* 04B8C8 8004BD18 0C0C000A */  jal         func_80300028
/* 04B8CC 8004BD1C 000028AC */   dadd       $a1, $zero, $zero
/* 04B8D0 8004BD20 0A0B000A */  j           func_882C0028
/* 04B8D4 8004BD24 000028E4 */   and        $a1, $zero, $zero
/* 04B8D8 8004BD28 040B000A */  tltiu       $zero, 0xa
/* 04B8DC 8004BD2C 000028FA */  dsrl        $a1, $zero, 3
/* 04B8E0 8004BD30 080C000A */  j           func_80300028
/* 04B8E4 8004BD34 0000292A */   slt        $a1, $zero, $zero
/* 04B8E8 8004BD38 0A0B000A */  j           func_882C0028
/* 04B8EC 8004BD3C 00002962 */   sub        $a1, $zero, $zero
/* 04B8F0 8004BD40 0A0B000A */  j           func_882C0028
/* 04B8F4 8004BD44 0000299A */   div        $a1, $zero, $zero
/* 04B8F8 8004BD48 0C0B000A */  jal         func_802C0028
/* 04B8FC 8004BD4C 000029DC */   dmult      $zero, $zero
/* 04B900 8004BD50 0A0B000A */  j           func_882C0028
/* 04B904 8004BD54 00002A14 */   dsllv      $a1, $zero, $zero
/* 04B908 8004BD58 0C0C000A */  jal         func_80300028
/* 04B90C 8004BD5C 00002A5C */   dmult      $zero, $zero
/* 04B910 8004BD60 0A0B000A */  j           func_882C0028
/* 04B914 8004BD64 00002A94 */   dsllv      $a1, $zero, $zero
/* 04B918 8004BD68 0C0C000A */  jal         func_80300028
/* 04B91C 8004BD6C 00002ADC */   dmult      $zero, $zero
/* 04B920 8004BD70 0A0B000A */  j           func_882C0028
/* 04B924 8004BD74 00002B14 */   dsllv      $a1, $zero, $zero
/* 04B928 8004BD78 0A0C000A */  j           func_88300028
/* 04B92C 8004BD7C 00002B50 */   mfhi       $a1
/* 04B930 8004BD80 0A0B000A */  j           func_882C0028
/* 04B934 8004BD84 00002B88 */   jr         $zero
/* 04B938 8004BD88 0A0C000A */   j          func_88300028
/* 04B93C 8004BD8C 00002BC4 */   sllv       $a1, $zero, $zero
/* 04B940 8004BD90 0A0B000A */  j           func_882C0028
/* 04B944 8004BD94 00002BFC */   dsll32     $a1, $zero, 15
/* 04B948 8004BD98 100B000A */  beq         $zero, $t3, .L8004BDC4
/* 04B94C 8004BD9C 00002C54 */   dsllv      $a1, $zero, $zero
/* 04B950 8004BDA0 0A0B000A */  j           func_882C0028
/* 04B954 8004BDA4 00002C8C */   syscall    0
/* 04B958 8004BDA8 0A0B000A */  j           func_882C0028
/* 04B95C 8004BDAC 00002CC4 */   sllv       $a1, $zero, $zero
/* 04B960 8004BDB0 0A0B000A */  j           func_882C0028
/* 04B964 8004BDB4 00002CFC */   dsll32     $a1, $zero, 19
/* 04B968 8004BDB8 040E000A */  tnei        $zero, 0xa
/* 04B96C 8004BDBC 00002D18 */  mult        $zero, $zero
/* 04B970 8004BDC0 060B000A */  tltiu       $s0, 0xa
.L8004BDC4:
/* 04B974 8004BDC4 00002D3A */  dsrl        $a1, $zero, 20
/* 04B978 8004BDC8 060E000A */  tnei        $s0, 0xa
/* 04B97C 8004BDCC 00002D64 */  and         $a1, $zero, $zero
/* 04B980 8004BDD0 0603000B */  bgezl       $s0, .L8004BE00
/* 04B984 8004BDD4 00002D6E */   dsub       $a1, $zero, $zero
/* 04B988 8004BDD8 0A01FFFE */  j           fakefunc_8807FFF8
/* 04B98C 8004BDDC 00002D74 */   teq        $zero, $zero
/* 04B990 8004BDE0 0610000C */  bltzal      $s0, .L8004BE14
/* 04B994 8004BDE4 00002DA4 */   and        $a1, $zero, $zero
/* 04B998 8004BDE8 080A0008 */  j           fakefunc_80280020
/* 04B99C 8004BDEC 00002DCC */   syscall    0
/* 04B9A0 8004BDF0 0A0C000A */  j           func_88300028
/* 04B9A4 8004BDF4 00002E08 */   jr         $zero
/* 04B9A8 8004BDF8 080A0008 */   j          fakefunc_80280020
/* 04B9AC 8004BDFC 00002E30 */   tge        $zero, $zero
.L8004BE00:
/* 04B9B0 8004BE00 0A0C000A */  j           func_88300028
/* 04B9B4 8004BE04 00002E6C */   dadd       $a1, $zero, $zero
/* 04B9B8 8004BE08 0A0A0008 */  j           func_88280020
/* 04B9BC 8004BE0C 00002E9E */   ddiv       $a1, $zero, $zero
/* 04B9C0 8004BE10 060B000A */  tltiu       $s0, 0xa
.L8004BE14:
/* 04B9C4 8004BE14 00002EC0 */  sll         $a1, $zero, 27
/* 04B9C8 8004BE18 080D0008 */  j           fakefunc_80340020
/* 04B9CC 8004BE1C 00002EF4 */   teq        $zero, $zero
/* 04B9D0 8004BE20 080B000A */  j           func_802C0028
/* 04B9D4 8004BE24 00002F20 */   add        $a1, $zero, $zero
/* 04B9D8 8004BE28 040B000A */  tltiu       $zero, 0xa
/* 04B9DC 8004BE2C 00002F36 */  tne         $zero, $zero
/* 04B9E0 8004BE30 040F000A */  regimm(0x0f) $zero, 0xa
/* 04B9E4 8004BE34 00002F54 */  dsllv       $a1, $zero, $zero
/* 04B9E8 8004BE38 080B000A */  j           func_802C0028
/* 04B9EC 8004BE3C 00002F80 */   sll        $a1, $zero, 30
/* 04B9F0 8004BE40 020B000A */  movz        $zero, $s0, $t3
/* 04B9F4 8004BE44 00002F8C */  syscall     0
/* 04B9F8 8004BE48 0C090008 */  jal         func_80240020
/* 04B9FC 8004BE4C 00002FC2 */   srl        $a1, $zero, 31
/* 04BA00 8004BE50 08090008 */  j           func_80240020
/* 04BA04 8004BE54 00002FE6 */   xor        $a1, $zero, $zero
/* 04BA08 8004BE58 0A0A0008 */  j           func_88280020
/* 04BA0C 8004BE5C 00003018 */   mult       $zero, $zero
/* 04BA10 8004BE60 080D0008 */  j           fakefunc_80340020
/* 04BA14 8004BE64 0000304C */   syscall    0
/* 04BA18 8004BE68 0A0D0008 */  j           fakefunc_88340020
/* 04BA1C 8004BE6C 0000308E */   special(0x0e) $a2, $zero, $zero
/* 04BA20 8004BE70 06090008 */  tgeiu       $s0, 0x8
/* 04BA24 8004BE74 000030AA */  slt         $a2, $zero, $zero
/* 04BA28 8004BE78 080A0008 */  j           fakefunc_80280020
/* 04BA2C 8004BE7C 000030D2 */   mflo       $a2
/* 04BA30 8004BE80 060B000A */  tltiu       $s0, 0xa
/* 04BA34 8004BE84 000030F4 */  teq         $zero, $zero
/* 04BA38 8004BE88 08090007 */  j           fakefunc_8024001C
/* 04BA3C 8004BE8C 00003118 */   mult       $zero, $zero
/* 04BA40 8004BE90 08080007 */  j           func_8020001C
/* 04BA44 8004BE94 00003138 */   dsll       $a2, $zero, 4
/* 04BA48 8004BE98 0C080007 */  jal         func_8020001C
/* 04BA4C 8004BE9C 00003168 */   special(0x28) $a2, $zero, $zero
/* 04BA50 8004BEA0 08080007 */  j           func_8020001C
/* 04BA54 8004BEA4 00003188 */   jr         $zero
/* 04BA58 8004BEA8 080C0007 */   j          fakefunc_8030001C
/* 04BA5C 8004BEAC 000031B8 */   dsll       $a2, $zero, 6
/* 04BA60 8004BEB0 08080007 */  j           func_8020001C
/* 04BA64 8004BEB4 000031D8 */   mult       $zero, $zero
/* 04BA68 8004BEB8 060E000A */  tnei        $s0, 0xa
/* 04BA6C 8004BEBC 00003202 */  srl         $a2, $zero, 8
/* 04BA70 8004BEC0 040B000A */  tltiu       $zero, 0xa
/* 04BA74 8004BEC4 00003218 */  mult        $zero, $zero
/* 04BA78 8004BEC8 060E000A */  tnei        $s0, 0xa
/* 04BA7C 8004BECC 00003242 */  srl         $a2, $zero, 9
/* 04BA80 8004BED0 0803000B */  j           fakefunc_800C002C
/* 04BA84 8004BED4 0000324E */   special(0x0e) $a2, $zero, $zero
/* 04BA88 8004BED8 0610000C */  bltzal      $s0, .L8004BF0C
/* 04BA8C 8004BEDC 0000327E */   dsrl32     $a2, $zero, 9
/* 04BA90 8004BEE0 0610000A */  bltzal      $s0, .L8004BF0C
/* 04BA94 8004BEE4 000032AE */   dsub       $a2, $zero, $zero
/* 04BA98 8004BEE8 040B0007 */  tltiu       $zero, 0x7
/* 04BA9C 8004BEEC 000032C4 */  sllv        $a2, $zero, $zero
/* 04BAA0 8004BEF0 080C0009 */  j           func_80300024
/* 04BAA4 8004BEF4 000032F4 */   teq        $zero, $zero
/* 04BAA8 8004BEF8 080C000A */  j           func_80300028
/* 04BAAC 8004BEFC 00003324 */   and        $a2, $zero, $zero
/* 04BAB0 8004BF00 08080008 */  j           fakefunc_80200020
/* 04BAB4 8004BF04 00003344 */   sllv       $a2, $zero, $zero
/* 04BAB8 8004BF08 0A0B000A */  j           func_882C0028
.L8004BF0C:
/* 04BABC 8004BF0C 0000337C */   dsll32     $a2, $zero, 13
/* 04BAC0 8004BF10 040B000A */  tltiu       $zero, 0xa
/* 04BAC4 8004BF14 00003392 */  mflo        $a2
/* 04BAC8 8004BF18 080E000A */  j           fakefunc_80380028
/* 04BACC 8004BF1C 000033CA */   movz       $a2, $zero, $zero
/* 04BAD0 8004BF20 0602000A */  bltzl       $s0, .L8004BF4C
/* 04BAD4 8004BF24 000033D0 */   mfhi       $a2
/* 04BAD8 8004BF28 0C0B000A */  jal         func_802C0028
/* 04BADC 8004BF2C 00003412 */   mflo       $a2
/* 04BAE0 8004BF30 0606000A */  regimm(0x06) $s0, 0xa
/* 04BAE4 8004BF34 00003424 */  and         $a2, $zero, $zero
/* 04BAE8 8004BF38 08060006 */  j           fakefunc_80180018
/* 04BAEC 8004BF3C 0000343C */   dsll32     $a2, $zero, 16
/* 04BAF0 8004BF40 0A060006 */  j           fakefunc_88180018
/* 04BAF4 8004BF44 0000345A */   div        $a2, $zero, $zero
/* 04BAF8 8004BF48 0610000B */  bltzal      $s0, .L8004BF78
.L8004BF4C:
/* 04BAFC 8004BF4C 0000348A */   movz       $a2, $zero, $zero
/* 04BB00 8004BF50 0C0B000A */  jal         func_802C0028
/* 04BB04 8004BF54 000034CC */   syscall    0
/* 04BB08 8004BF58 0602000A */  bltzl       $s0, .L8004BF84
/* 04BB0C 8004BF5C 000034D2 */   mflo       $a2
/* 04BB10 8004BF60 0404000C */  regimm(0x04) $zero, 0xc
/* 04BB14 8004BF64 000034DA */  div         $a2, $zero, $zero
/* 04BB18 8004BF68 0A080007 */  j           fakefunc_8820001C
/* 04BB1C 8004BF6C 00003502 */   srl        $a2, $zero, 20
/* 04BB20 8004BF70 0610000B */  bltzal      $s0, .L8004BFA0
/* 04BB24 8004BF74 00003532 */   tlt        $zero, $zero
.L8004BF78:
/* 04BB28 8004BF78 0610000B */  bltzal      $s0, .L8004BFA8
/* 04BB2C 8004BF7C 00003562 */   sub        $a2, $zero, $zero
/* 04BB30 8004BF80 0402000A */  bltzl       $zero, .L8004BFAC
.L8004BF84:
/* 04BB34 8004BF84 00003566 */   xor        $a2, $zero, $zero
/* 04BB38 8004BF88 0A0C0007 */  j           fakefunc_8830001C
/* 04BB3C 8004BF8C 000035A2 */   sub        $a2, $zero, $zero
/* 04BB40 8004BF90 0A0E000A */  j           func_88380028
/* 04BB44 8004BF94 000035E8 */   special(0x28) $a2, $zero, $zero
/* 04BB48 8004BF98 04040006 */  regimm(0x04) $zero, 0x6
/* 04BB4C 8004BF9C 000035F0 */  tge         $zero, $zero
.L8004BFA0:
/* 04BB50 8004BFA0 04050001 */  regimm(0x05) $zero, 0x1
/* 04BB54 8004BFA4 000035FA */  dsrl        $a2, $zero, 23
.L8004BFA8:
/* 04BB58 8004BFA8 0610000B */  bltzal      $s0, .L8004BFD8
.L8004BFAC:
/* 04BB5C 8004BFAC 0000362A */   slt        $a2, $zero, $zero
/* 04BB60 8004BFB0 0606000A */  regimm(0x06) $s0, 0xa
/* 04BB64 8004BFB4 0000363C */  dsll32      $a2, $zero, 24
/* 04BB68 8004BFB8 06060006 */  regimm(0x06) $s0, 0x6
/* 04BB6C 8004BFBC 0000364E */  special(0x0e) $a2, $zero, $zero
/* 04BB70 8004BFC0 0610000A */  bltzal      $s0, .L8004BFEC
/* 04BB74 8004BFC4 0000367E */   dsrl32     $a2, $zero, 25
/* 04BB78 8004BFC8 0610000A */  bltzal      $s0, .L8004BFF4
/* 04BB7C 8004BFCC 000036AE */   dsub       $a2, $zero, $zero
/* 04BB80 8004BFD0 0610000A */  bltzal      $s0, .L8004BFFC
/* 04BB84 8004BFD4 000036DE */   ddiv       $a2, $zero, $zero
.L8004BFD8:
/* 04BB88 8004BFD8 080B0007 */  j           fakefunc_802C001C
/* 04BB8C 8004BFDC 0000370A */   movz       $a2, $zero, $zero
/* 04BB90 8004BFE0 0A0E000D */  j           fakefunc_88380034
/* 04BB94 8004BFE4 00003750 */   mfhi       $a2
/* 04BB98 8004BFE8 0C0E000D */  jal         func_80380034
.L8004BFEC:
/* 04BB9C 8004BFEC 000037A4 */   and        $a2, $zero, $zero
/* 04BBA0 8004BFF0 0C0E000D */  jal         func_80380034
.L8004BFF4:
/* 04BBA4 8004BFF4 000037F8 */   dsll       $a2, $zero, 31
/* 04BBA8 8004BFF8 0C0E000D */  jal         func_80380034
.L8004BFFC:
/* 04BBAC 8004BFFC 0000384C */   syscall    0
/* 04BBB0 8004C000 0A0E000D */  j           fakefunc_88380034
/* 04BBB4 8004C004 00003892 */   mflo       $a3
/* 04BBB8 8004C008 0C0F000E */  jal         func_803C0038
/* 04BBBC 8004C00C 000038EC */   dadd       $a3, $zero, $zero
/* 04BBC0 8004C010 100B000A */  beq         $zero, $t3, .L8004C03C
/* 04BBC4 8004C014 00003944 */   sllv       $a3, $zero, $zero
/* 04BBC8 8004C018 0A0F000A */  j           fakefunc_883C0028
/* 04BBCC 8004C01C 00003990 */   mfhi       $a3
/* 04BBD0 8004C020 0A0E000D */  j           fakefunc_88380034
/* 04BBD4 8004C024 000039D6 */   dsrlv      $a3, $zero, $zero
/* 04BBD8 8004C028 0A0E000D */  j           fakefunc_88380034
/* 04BBDC 8004C02C 00003A1C */   dmult      $zero, $zero
/* 04BBE0 8004C030 0A0E000D */  j           fakefunc_88380034
/* 04BBE4 8004C034 00003A62 */   sub        $a3, $zero, $zero
/* 04BBE8 8004C038 0A0E000D */  j           fakefunc_88380034
.L8004C03C:
/* 04BBEC 8004C03C 00003AA8 */   special(0x28) $a3, $zero, $zero
/* 04BBF0 8004C040 040E000D */  tnei        $zero, 0xd
/* 04BBF4 8004C044 00003AC4 */  sllv        $a3, $zero, $zero
/* 04BBF8 8004C048 040E000D */  tnei        $zero, 0xd
/* 04BBFC 8004C04C 00003AE0 */  add         $a3, $zero, $zero
/* 04BC00 8004C050 060E000D */  tnei        $s0, 0xd
/* 04BC04 8004C054 00003B0A */  movz        $a3, $zero, $zero
/* 04BC08 8004C058 060E000D */  tnei        $s0, 0xd
/* 04BC0C 8004C05C 00003B34 */  teq         $zero, $zero
/* 04BC10 8004C060 0610000C */  bltzal      $s0, .L8004C094
/* 04BC14 8004C064 00003B64 */   and        $a3, $zero, $zero
/* 04BC18 8004C068 0A0E000D */  j           fakefunc_88380034
/* 04BC1C 8004C06C 00003BAA */   slt        $a3, $zero, $zero
/* 04BC20 8004C070 0C0F000D */  jal         func_803C0034
/* 04BC24 8004C074 00003C04 */   sllv       $a3, $zero, $zero
/* 04BC28 8004C078 0C0F000D */  jal         func_803C0034
/* 04BC2C 8004C07C 00003C5E */   ddiv       $a3, $zero, $zero
/* 04BC30 8004C080 0C0F000D */  jal         func_803C0034
/* 04BC34 8004C084 00003CB8 */   dsll       $a3, $zero, 18
/* 04BC38 8004C088 0C0F000D */  jal         func_803C0034
/* 04BC3C 8004C08C 00003D12 */   mflo       $a3
/* 04BC40 8004C090 0C0F000D */  jal         func_803C0034
.L8004C094:
/* 04BC44 8004C094 00003D6C */   dadd       $a3, $zero, $zero
/* 04BC48 8004C098 08080007 */  j           func_8020001C
/* 04BC4C 8004C09C 00003D8C */   syscall    0
/* 04BC50 8004C0A0 0C0C000A */  jal         func_80300028
/* 04BC54 8004C0A4 00003DD4 */   dsllv      $a3, $zero, $zero
/* 04BC58 8004C0A8 0A0F000D */  j           fakefunc_883C0034
/* 04BC5C 8004C0AC 00003E20 */   add        $a3, $zero, $zero
/* 04BC60 8004C0B0 0A0F000D */  j           fakefunc_883C0034
/* 04BC64 8004C0B4 00003E6C */   dadd       $a3, $zero, $zero
/* 04BC68 8004C0B8 0A0F000D */  j           fakefunc_883C0034
/* 04BC6C 8004C0BC 00003EB8 */   dsll       $a3, $zero, 26
/* 04BC70 8004C0C0 0A0F000D */  j           fakefunc_883C0034
/* 04BC74 8004C0C4 00003F04 */   sllv       $a3, $zero, $zero
/* 04BC78 8004C0C8 0610000C */  bltzal      $s0, .L8004C0FC
/* 04BC7C 8004C0CC 00003F34 */   teq        $zero, $zero
/* 04BC80 8004C0D0 0610000C */  bltzal      $s0, .L8004C104
/* 04BC84 8004C0D4 00003F64 */   and        $a3, $zero, $zero
/* 04BC88 8004C0D8 080C000A */  j           func_80300028
/* 04BC8C 8004C0DC 00003F94 */   dsllv      $a3, $zero, $zero
/* 04BC90 8004C0E0 080C000A */  j           func_80300028
/* 04BC94 8004C0E4 00003FC4 */   sllv       $a3, $zero, $zero
/* 04BC98 8004C0E8 0A0C000A */  j           func_88300028
/* 04BC9C 8004C0EC 00004000 */   sll        $t0, $zero, 0
/* 04BCA0 8004C0F0 080D000B */  j           fakefunc_8034002C
/* 04BCA4 8004C0F4 00004034 */   teq        $zero, $zero
/* 04BCA8 8004C0F8 080D000B */  j           fakefunc_8034002C
.L8004C0FC:
/* 04BCAC 8004C0FC 00004068 */   special(0x28) $t0, $zero, $zero
/* 04BCB0 8004C100 080C000A */  j           func_80300028
.L8004C104:
/* 04BCB4 8004C104 00004098 */   mult       $zero, $zero
/* 04BCB8 8004C108 0A0E000C */  j           fakefunc_88380030
/* 04BCBC 8004C10C 000040DE */   ddiv       $t0, $zero, $zero
/* 04BCC0 8004C110 0E0A0008 */  jal         func_88280020
/* 04BCC4 8004C114 00004124 */   and        $t0, $zero, $zero
/* 04BCC8 8004C118 080D0008 */  j           fakefunc_80340020
/* 04BCCC 8004C11C 00004158 */   mult       $zero, $zero
/* 04BCD0 8004C120 080C000A */  j           func_80300028
/* 04BCD4 8004C124 00004188 */   jr         $zero
/* 04BCD8 8004C128 0A0C000A */   j          func_88300028
/* 04BCDC 8004C12C 000041C4 */   sllv       $t0, $zero, $zero
/* 04BCE0 8004C130 0A0D000B */  j           func_8834002C
/* 04BCE4 8004C134 00004206 */   srlv       $t0, $zero, $zero
/* 04BCE8 8004C138 080C000A */  j           func_80300028
/* 04BCEC 8004C13C 00004236 */   tne        $zero, $zero
/* 04BCF0 8004C140 060B000A */  tltiu       $s0, 0xa
/* 04BCF4 8004C144 00004258 */  mult        $zero, $zero
/* 04BCF8 8004C148 060B000A */  tltiu       $s0, 0xa
/* 04BCFC 8004C14C 0000427A */  dsrl        $t0, $zero, 9
/* 04BD00 8004C150 060B000A */  tltiu       $s0, 0xa
/* 04BD04 8004C154 0000429C */  dmult       $zero, $zero
/* 04BD08 8004C158 060B000A */  tltiu       $s0, 0xa
/* 04BD0C 8004C15C 000042BE */  dsrl32      $t0, $zero, 10
/* 04BD10 8004C160 080C000A */  j           func_80300028
/* 04BD14 8004C164 000042EE */   dsub       $t0, $zero, $zero
/* 04BD18 8004C168 080C000B */  j           fakefunc_8030002C
/* 04BD1C 8004C16C 0000431E */   ddiv       $t0, $zero, $zero
/* 04BD20 8004C170 0A0C000A */  j           func_88300028
/* 04BD24 8004C174 0000435A */   div        $t0, $zero, $zero
/* 04BD28 8004C178 0A0C000A */  j           func_88300028
/* 04BD2C 8004C17C 00004396 */   dsrlv      $t0, $zero, $zero
/* 04BD30 8004C180 0A0D000B */  j           func_8834002C
/* 04BD34 8004C184 000043D8 */   mult       $zero, $zero
/* 04BD38 8004C188 0A0D000B */  j           func_8834002C
/* 04BD3C 8004C18C 0000441A */   div        $t0, $zero, $zero
/* 04BD40 8004C190 0A0C000A */  j           func_88300028
/* 04BD44 8004C194 00004456 */   dsrlv      $t0, $zero, $zero
/* 04BD48 8004C198 08080007 */  j           func_8020001C
/* 04BD4C 8004C19C 00004476 */   tne        $zero, $zero
/* 04BD50 8004C1A0 0A0A0008 */  j           func_88280020
/* 04BD54 8004C1A4 000044A8 */   special(0x28) $t0, $zero, $zero
/* 04BD58 8004C1A8 080C000A */  j           func_80300028
/* 04BD5C 8004C1AC 000044D8 */   mult       $zero, $zero
/* 04BD60 8004C1B0 080C000A */  j           func_80300028
/* 04BD64 8004C1B4 00004508 */   jr         $zero
/* 04BD68 8004C1B8 080D000B */   j          fakefunc_8034002C
/* 04BD6C 8004C1BC 0000453C */   dsll32     $t0, $zero, 20
/* 04BD70 8004C1C0 080D000B */  j           fakefunc_8034002C
/* 04BD74 8004C1C4 00004570 */   tge        $zero, $zero
/* 04BD78 8004C1C8 0610000C */  bltzal      $s0, .L8004C1FC
/* 04BD7C 8004C1CC 000045A0 */   add        $t0, $zero, $zero
/* 04BD80 8004C1D0 0610000C */  bltzal      $s0, .L8004C204
/* 04BD84 8004C1D4 000045D0 */   mfhi       $t0
/* 04BD88 8004C1D8 0810000B */  j           fakefunc_8040002C
/* 04BD8C 8004C1DC 00004610 */   mfhi       $t0
/* 04BD90 8004C1E0 0610000D */  bltzal      $s0, .L8004C218
/* 04BD94 8004C1E4 00004640 */   sll        $t0, $zero, 25
/* 04BD98 8004C1E8 020C000B */  movn        $zero, $s0, $t4
/* 04BD9C 8004C1EC 0000464C */  syscall     0
/* 04BDA0 8004C1F0 0604000B */  regimm(0x04) $s0, 0xb
/* 04BDA4 8004C1F4 00004658 */  mult        $zero, $zero
/* 04BDA8 8004C1F8 080C000B */  j           fakefunc_8030002C
.L8004C1FC:
/* 04BDAC 8004C1FC 00004688 */   jr         $zero
/* 04BDB0 8004C200 060E000C */   tnei       $s0, 0xc
.L8004C204:
/* 04BDB4 8004C204 000046B2 */  tlt         $zero, $zero
/* 04BDB8 8004C208 080C000B */  j           fakefunc_8030002C
/* 04BDBC 8004C20C 000046E2 */   sub        $t0, $zero, $zero
/* 04BDC0 8004C210 060C000B */  teqi        $s0, 0xb
/* 04BDC4 8004C214 00004706 */  srlv        $t0, $zero, $zero
.L8004C218:
/* 04BDC8 8004C218 0204000B */  movn        $zero, $s0, $a0
/* 04BDCC 8004C21C 0000470A */  movz        $t0, $zero, $zero
/* 04BDD0 8004C220 0210000C */  syscall     528
/* 04BDD4 8004C224 0000471A */  div         $t0, $zero, $zero
/* 04BDD8 8004C228 0210000C */  syscall     528
/* 04BDDC 8004C22C 0000472A */  slt         $t0, $zero, $zero
/* 04BDE0 8004C230 0404000B */  regimm(0x04) $zero, 0xb
/* 04BDE4 8004C234 00004732 */  tlt         $zero, $zero
/* 04BDE8 8004C238 06050006 */  regimm(0x05) $s0, 0x6
/* 04BDEC 8004C23C 00004742 */  srl         $t0, $zero, 29
/* 04BDF0 8004C240 02050002 */  srl         $zero, $a1, 0
/* 04BDF4 8004C244 00004748 */  jr          $zero
/* 04BDF8 8004C248 06010004 */   bgez       $s0, .L8004C25C
/* 04BDFC 8004C24C 0000474C */   syscall    0
/* 04BE00 8004C250 02030002 */  srl         $zero, $v1, 0
/* 04BE04 8004C254 00004750 */  mfhi        $t0
/* 04BE08 8004C258 040B000B */  tltiu       $zero, 0xb
.L8004C25C:
/* 04BE0C 8004C25C 00004766 */  xor         $t0, $zero, $zero
/* 04BE10 8004C260 040C000B */  teqi        $zero, 0xb
/* 04BE14 8004C264 0000477E */  dsrl32      $t0, $zero, 29
/* 04BE18 8004C268 020C000B */  movn        $zero, $s0, $t4
/* 04BE1C 8004C26C 0000478A */  movz        $t0, $zero, $zero
/* 04BE20 8004C270 040C000B */  teqi        $zero, 0xb
/* 04BE24 8004C274 000047A2 */  sub         $t0, $zero, $zero
/* 04BE28 8004C278 060C000B */  teqi        $s0, 0xb
/* 04BE2C 8004C27C 000047C6 */  srlv        $t0, $zero, $zero
/* 04BE30 8004C280 040C000B */  teqi        $zero, 0xb
/* 04BE34 8004C284 000047DE */  ddiv        $t0, $zero, $zero
/* 04BE38 8004C288 060C000B */  teqi        $s0, 0xb
/* 04BE3C 8004C28C 00004802 */  srl         $t1, $zero, 0
/* 04BE40 8004C290 040C000B */  teqi        $zero, 0xb
/* 04BE44 8004C294 0000481A */  div         $t1, $zero, $zero
/* 04BE48 8004C298 060C000B */  teqi        $s0, 0xb
/* 04BE4C 8004C29C 0000483E */  dsrl32      $t1, $zero, 0
/* 04BE50 8004C2A0 040C000B */  teqi        $zero, 0xb
/* 04BE54 8004C2A4 00004856 */  dsrlv       $t1, $zero, $zero
/* 04BE58 8004C2A8 060C000B */  teqi        $s0, 0xb
/* 04BE5C 8004C2AC 0000487A */  dsrl        $t1, $zero, 1
/* 04BE60 8004C2B0 02080008 */  jr          $s0
/* 04BE64 8004C2B4 00004882 */   srl        $t1, $zero, 2
/* 04BE68 8004C2B8 02090007 */  srav        $zero, $s0, $t1
/* 04BE6C 8004C2BC 0000488C */  syscall     0
/* 04BE70 8004C2C0 06090008 */  tgeiu       $s0, 0x8
/* 04BE74 8004C2C4 000048A8 */  special(0x28) $t1, $zero, $zero
/* 04BE78 8004C2C8 06040006 */  regimm(0x04) $s0, 0x6
/* 04BE7C 8004C2CC 000048B4 */  teq         $zero, $zero
/* 04BE80 8004C2D0 06090008 */  tgeiu       $s0, 0x8
/* 04BE84 8004C2D4 000048D0 */  mfhi        $t1
/* 04BE88 8004C2D8 040C000B */  teqi        $zero, 0xb
/* 04BE8C 8004C2DC 000048E8 */  special(0x28) $t1, $zero, $zero
/* 04BE90 8004C2E0 080D000C */  j           fakefunc_80340030
/* 04BE94 8004C2E4 0000491C */   dmult      $zero, $zero
/* 04BE98 8004C2E8 060C000B */  teqi        $s0, 0xb
/* 04BE9C 8004C2EC 00004940 */  sll         $t1, $zero, 5
/* 04BEA0 8004C2F0 040C000B */  teqi        $zero, 0xb
/* 04BEA4 8004C2F4 00004958 */  mult        $zero, $zero
/* 04BEA8 8004C2F8 060D000C */  regimm(0x0d) $s0, 0xc
/* 04BEAC 8004C2FC 00004980 */  sll         $t1, $zero, 6
/* 04BEB0 8004C300 060C000B */  teqi        $s0, 0xb
/* 04BEB4 8004C304 000049A4 */  and         $t1, $zero, $zero
/* 04BEB8 8004C308 060C000B */  teqi        $s0, 0xb
/* 04BEBC 8004C30C 000049C8 */  jr          $zero
/* 04BEC0 8004C310 060D000C */   regimm(0x0d) $s0, 0xc
/* 04BEC4 8004C314 000049F0 */  tge         $zero, $zero
/* 04BEC8 8004C318 060D000C */  regimm(0x0d) $s0, 0xc
/* 04BECC 8004C31C 00004A18 */  mult        $zero, $zero
/* 04BED0 8004C320 060C000B */  teqi        $s0, 0xb
/* 04BED4 8004C324 00004A3C */  dsll32      $t1, $zero, 8
/* 04BED8 8004C328 020B000B */  movn        $zero, $s0, $t3
/* 04BEDC 8004C32C 00004A48 */  jr          $zero
/* 04BEE0 8004C330 040C000B */   teqi       $zero, 0xb
/* 04BEE4 8004C334 00004A60 */  add         $t1, $zero, $zero
/* 04BEE8 8004C338 060C000B */  teqi        $s0, 0xb
/* 04BEEC 8004C33C 00004A84 */  sllv        $t1, $zero, $zero
/* 04BEF0 8004C340 060C000B */  teqi        $s0, 0xb
/* 04BEF4 8004C344 00004AA8 */  special(0x28) $t1, $zero, $zero
/* 04BEF8 8004C348 080C000B */  j           fakefunc_8030002C
/* 04BEFC 8004C34C 00004AD8 */   mult       $zero, $zero
/* 04BF00 8004C350 060C000B */  teqi        $s0, 0xb
/* 04BF04 8004C354 00004AFC */  dsll32      $t1, $zero, 11
/* 04BF08 8004C358 060D000C */  regimm(0x0d) $s0, 0xc
/* 04BF0C 8004C35C 00004B24 */  and         $t1, $zero, $zero
/* 04BF10 8004C360 060C000B */  teqi        $s0, 0xb
/* 04BF14 8004C364 00004B48 */  jr          $zero
/* 04BF18 8004C368 060E000C */   tnei       $s0, 0xc
/* 04BF1C 8004C36C 00004B72 */  tlt         $zero, $zero
/* 04BF20 8004C370 060D000C */  regimm(0x0d) $s0, 0xc
/* 04BF24 8004C374 00004B9A */  div         $t1, $zero, $zero
/* 04BF28 8004C378 060D000C */  regimm(0x0d) $s0, 0xc
/* 04BF2C 8004C37C 00004BC2 */  srl         $t1, $zero, 15
/* 04BF30 8004C380 060B000B */  tltiu       $s0, 0xb
/* 04BF34 8004C384 00004BE4 */  and         $t1, $zero, $zero
/* 04BF38 8004C388 060C000B */  teqi        $s0, 0xb
/* 04BF3C 8004C38C 00004C08 */  jr          $zero
/* 04BF40 8004C390 060C000B */   teqi       $s0, 0xb
/* 04BF44 8004C394 00004C2C */  dadd        $t1, $zero, $zero
/* 04BF48 8004C398 080D000C */  j           fakefunc_80340030
/* 04BF4C 8004C39C 00004C60 */   add        $t1, $zero, $zero
/* 04BF50 8004C3A0 060C000B */  teqi        $s0, 0xb
/* 04BF54 8004C3A4 00004C84 */  sllv        $t1, $zero, $zero
/* 04BF58 8004C3A8 060C000B */  teqi        $s0, 0xb
/* 04BF5C 8004C3AC 00004CA8 */  special(0x28) $t1, $zero, $zero
/* 04BF60 8004C3B0 060C000B */  teqi        $s0, 0xb
/* 04BF64 8004C3B4 00004CCC */  syscall     0
/* 04BF68 8004C3B8 020F000B */  movn        $zero, $s0, $t7
/* 04BF6C 8004C3BC 00004CDC */  dmult       $zero, $zero
/* 04BF70 8004C3C0 040B000B */  tltiu       $zero, 0xb
/* 04BF74 8004C3C4 00004CF2 */  tlt         $zero, $zero
/* 04BF78 8004C3C8 020F000B */  movn        $zero, $s0, $t7
/* 04BF7C 8004C3CC 00004D02 */  srl         $t1, $zero, 20
/* 04BF80 8004C3D0 0604000D */  regimm(0x04) $s0, 0xd
/* 04BF84 8004C3D4 00004D0E */  special(0x0e) $t1, $zero, $zero
/* 04BF88 8004C3D8 0801FFFE */  j           fakefunc_8007FFF8
/* 04BF8C 8004C3DC 00004D12 */   mflo       $t1
/* 04BF90 8004C3E0 0610000E */  bltzal      $s0, .L8004C41C
/* 04BF94 8004C3E4 00004D42 */   srl        $t1, $zero, 21
/* 04BF98 8004C3E8 04090008 */  tgeiu       $zero, 0x8
/* 04BF9C 8004C3EC 00004D54 */  dsllv       $t1, $zero, $zero
/* 04BFA0 8004C3F0 060C000B */  teqi        $s0, 0xb
/* 04BFA4 8004C3F4 00004D78 */  dsll        $t1, $zero, 21
/* 04BFA8 8004C3F8 060A0009 */  tlti        $s0, 0x9
/* 04BFAC 8004C3FC 00004D96 */  dsrlv       $t1, $zero, $zero
/* 04BFB0 8004C400 060C000B */  teqi        $s0, 0xb
/* 04BFB4 8004C404 00004DBA */  dsrl        $t1, $zero, 22
/* 04BFB8 8004C408 06090008 */  tgeiu       $s0, 0x8
/* 04BFBC 8004C40C 00004DD6 */  dsrlv       $t1, $zero, $zero
/* 04BFC0 8004C410 040D000C */  regimm(0x0d) $zero, 0xc
/* 04BFC4 8004C414 00004DF0 */  tge         $zero, $zero
/* 04BFC8 8004C418 040C0008 */  teqi        $zero, 0x8
.L8004C41C:
/* 04BFCC 8004C41C 00004E08 */  jr          $zero
/* 04BFD0 8004C420 040C000B */   teqi       $zero, 0xb
/* 04BFD4 8004C424 00004E20 */  add         $t1, $zero, $zero
/* 04BFD8 8004C428 020C000B */  movn        $zero, $s0, $t4
/* 04BFDC 8004C42C 00004E2C */  dadd        $t1, $zero, $zero
/* 04BFE0 8004C430 020F000B */  movn        $zero, $s0, $t7
/* 04BFE4 8004C434 00004E3C */  dsll32      $t1, $zero, 24
/* 04BFE8 8004C438 040C000B */  teqi        $zero, 0xb
/* 04BFEC 8004C43C 00004E54 */  dsllv       $t1, $zero, $zero
/* 04BFF0 8004C440 020C000B */  movn        $zero, $s0, $t4
/* 04BFF4 8004C444 00004E60 */  add         $t1, $zero, $zero
/* 04BFF8 8004C448 06090008 */  tgeiu       $s0, 0x8
/* 04BFFC 8004C44C 00004E7C */  dsll32      $t1, $zero, 25
/* 04C000 8004C450 04090008 */  tgeiu       $zero, 0x8
/* 04C004 8004C454 00004E8E */  special(0x0e) $t1, $zero, $zero
/* 04C008 8004C458 060A0009 */  tlti        $s0, 0x9
/* 04C00C 8004C45C 00004EAC */  dadd        $t1, $zero, $zero
/* 04C010 8004C460 040C0008 */  teqi        $zero, 0x8
/* 04C014 8004C464 00004EC4 */  sllv        $t1, $zero, $zero
/* 04C018 8004C468 060C0008 */  teqi        $s0, 0x8
/* 04C01C 8004C46C 00004EE8 */  special(0x28) $t1, $zero, $zero
/* 04C020 8004C470 04090008 */  tgeiu       $zero, 0x8
/* 04C024 8004C474 00004EFA */  dsrl        $t1, $zero, 27
/* 04C028 8004C478 060A0009 */  tlti        $s0, 0x9
/* 04C02C 8004C47C 00004F18 */  mult        $zero, $zero
/* 04C030 8004C480 040B000A */  tltiu       $zero, 0xa
/* 04C034 8004C484 00004F2E */  dsub        $t1, $zero, $zero
/* 04C038 8004C488 04090008 */  tgeiu       $zero, 0x8
/* 04C03C 8004C48C 00004F40 */  sll         $t1, $zero, 29
/* 04C040 8004C490 06090008 */  tgeiu       $s0, 0x8
/* 04C044 8004C494 00004F5C */  dmult       $zero, $zero
/* 04C048 8004C498 06090008 */  tgeiu       $s0, 0x8
/* 04C04C 8004C49C 00004F78 */  dsll        $t1, $zero, 29
/* 04C050 8004C4A0 04090008 */  tgeiu       $zero, 0x8
/* 04C054 8004C4A4 00004F8A */  movz        $t1, $zero, $zero
/* 04C058 8004C4A8 060C0008 */  teqi        $s0, 0x8
/* 04C05C 8004C4AC 00004FAE */  dsub        $t1, $zero, $zero
/* 04C060 8004C4B0 06090008 */  tgeiu       $s0, 0x8
/* 04C064 8004C4B4 00004FCA */  movz        $t1, $zero, $zero
/* 04C068 8004C4B8 040F000B */  regimm(0x0f) $zero, 0xb
/* 04C06C 8004C4BC 00004FE8 */  special(0x28) $t1, $zero, $zero
/* 04C070 8004C4C0 020F000B */  movn        $zero, $s0, $t7
/* 04C074 8004C4C4 00004FF8 */  dsll        $t1, $zero, 31
/* 04C078 8004C4C8 040F000B */  regimm(0x0f) $zero, 0xb
/* 04C07C 8004C4CC 00005016 */  dsrlv       $t2, $zero, $zero
/* 04C080 8004C4D0 0602000B */  bltzl       $s0, .L8004C500
/* 04C084 8004C4D4 0000501C */   dmult      $zero, $zero
/* 04C088 8004C4D8 060D000C */  regimm(0x0d) $s0, 0xc
/* 04C08C 8004C4DC 00005044 */  sllv        $t2, $zero, $zero
/* 04C090 8004C4E0 060F000B */  regimm(0x0f) $s0, 0xb
/* 04C094 8004C4E4 00005072 */  tlt         $zero, $zero
/* 04C098 8004C4E8 020C0008 */  jr          $s0
/* 04C09C 8004C4EC 0000507E */   dsrl32     $t2, $zero, 1
/* 04C0A0 8004C4F0 060D000A */  regimm(0x0d) $s0, 0xa
/* 04C0A4 8004C4F4 000050A6 */  xor         $t2, $zero, $zero
/* 04C0A8 8004C4F8 040C000B */  teqi        $zero, 0xb
/* 04C0AC 8004C4FC 000050BE */  dsrl32      $t2, $zero, 2
.L8004C500:
/* 04C0B0 8004C500 06080009 */  tgei        $s0, 0x9
/* 04C0B4 8004C504 000050D6 */  dsrlv       $t2, $zero, $zero
/* 04C0B8 8004C508 040B000B */  tltiu       $zero, 0xb
/* 04C0BC 8004C50C 000050EC */  dadd        $t2, $zero, $zero
/* 04C0C0 8004C510 020C000B */  movn        $zero, $s0, $t4
/* 04C0C4 8004C514 000050F8 */  dsll        $t2, $zero, 3
/* 04C0C8 8004C518 040F000B */  regimm(0x0f) $zero, 0xb
/* 04C0CC 8004C51C 00005116 */  dsrlv       $t2, $zero, $zero
/* 04C0D0 8004C520 0402000B */  bltzl       $zero, .L8004C550
/* 04C0D4 8004C524 0000511A */   div        $t2, $zero, $zero
/* 04C0D8 8004C528 080C000B */  j           fakefunc_8030002C
/* 04C0DC 8004C52C 0000514A */   movz       $t2, $zero, $zero
/* 04C0E0 8004C530 0407000C */  regimm(0x07) $zero, 0xc
/* 04C0E4 8004C534 00005158 */  mult        $zero, $zero
/* 04C0E8 8004C538 06060007 */  regimm(0x06) $s0, 0x7
/* 04C0EC 8004C53C 0000516A */  slt         $t2, $zero, $zero
/* 04C0F0 8004C540 04050006 */  regimm(0x05) $zero, 0x6
/* 04C0F4 8004C544 00005174 */  teq         $zero, $zero
/* 04C0F8 8004C548 060C000B */  teqi        $s0, 0xb
/* 04C0FC 8004C54C 00005198 */  mult        $zero, $zero
.L8004C550:
/* 04C100 8004C550 080C000B */  j           fakefunc_8030002C
/* 04C104 8004C554 000051C8 */   jr         $zero
/* 04C108 8004C558 0801000B */   j          fakefunc_8004002C
/* 04C10C 8004C55C 000051CC */   syscall    0
/* 04C110 8004C560 0203000C */  syscall     515
/* 04C114 8004C564 000051D0 */  mfhi        $t2
/* 04C118 8004C568 06080007 */  tgei        $s0, 0x7
/* 04C11C 8004C56C 000051E8 */  special(0x28) $t2, $zero, $zero
/* 04C120 8004C570 0610000D */  bltzal      $s0, .L8004C5A8
/* 04C124 8004C574 00005218 */   mult       $zero, $zero
/* 04C128 8004C578 0610000D */  bltzal      $s0, .L8004C5B0
/* 04C12C 8004C57C 00005248 */   jr         $zero
/* 04C130 8004C580 0202000B */   movn       $zero, $s0, $v0
/* 04C134 8004C584 0000524A */  movz        $t2, $zero, $zero
/* 04C138 8004C588 060C0008 */  teqi        $s0, 0x8
/* 04C13C 8004C58C 0000526E */  dsub        $t2, $zero, $zero
/* 04C140 8004C590 060F000B */  regimm(0x0f) $s0, 0xb
/* 04C144 8004C594 0000529C */  dmult       $zero, $zero
/* 04C148 8004C598 02040007 */  srav        $zero, $s0, $a0
/* 04C14C 8004C59C 000052A0 */  add         $t2, $zero, $zero
/* 04C150 8004C5A0 02040000 */  sll         $zero, $a0, 0
/* 04C154 8004C5A4 000052A4 */  and         $t2, $zero, $zero
.L8004C5A8:
/* 04C158 8004C5A8 060E000B */  tnei        $s0, 0xb
/* 04C15C 8004C5AC 000052CE */  special(0x0e) $t2, $zero, $zero
.L8004C5B0:
/* 04C160 8004C5B0 0407000C */  regimm(0x07) $zero, 0xc
/* 04C164 8004C5B4 000052DC */  dmult       $zero, $zero
/* 04C168 8004C5B8 06050006 */  regimm(0x05) $s0, 0x6
/* 04C16C 8004C5BC 000052EC */  dadd        $t2, $zero, $zero
/* 04C170 8004C5C0 0610000C */  bltzal      $s0, .L8004C5F4
/* 04C174 8004C5C4 0000531C */   dmult      $zero, $zero
/* 04C178 8004C5C8 0610000C */  bltzal      $s0, .L8004C5FC
/* 04C17C 8004C5CC 0000534C */   syscall    0
/* 04C180 8004C5D0 0610000C */  bltzal      $s0, .L8004C604
/* 04C184 8004C5D4 0000537C */   dsll32     $t2, $zero, 13
/* 04C188 8004C5D8 060C0008 */  teqi        $s0, 0x8
/* 04C18C 8004C5DC 000053A0 */  add         $t2, $zero, $zero
/* 04C190 8004C5E0 060F000E */  regimm(0x0f) $s0, 0xe
/* 04C194 8004C5E4 000053CE */  special(0x0e) $t2, $zero, $zero
/* 04C198 8004C5E8 060F000E */  regimm(0x0f) $s0, 0xe
/* 04C19C 8004C5EC 000053FC */  dsll32      $t2, $zero, 15
/* 04C1A0 8004C5F0 060F000E */  regimm(0x0f) $s0, 0xe
.L8004C5F4:
/* 04C1A4 8004C5F4 0000542A */  slt         $t2, $zero, $zero
/* 04C1A8 8004C5F8 060F000E */  regimm(0x0f) $s0, 0xe
.L8004C5FC:
/* 04C1AC 8004C5FC 00005458 */  mult        $zero, $zero
/* 04C1B0 8004C600 060E000D */  tnei        $s0, 0xd
.L8004C604:
/* 04C1B4 8004C604 00005482 */  srl         $t2, $zero, 18
/* 04C1B8 8004C608 0610000F */  bltzal      $s0, .L8004C648
/* 04C1BC 8004C60C 000054B2 */   tlt        $zero, $zero
/* 04C1C0 8004C610 080C000B */  j           fakefunc_8030002C
/* 04C1C4 8004C614 000054E2 */   sub        $t2, $zero, $zero
/* 04C1C8 8004C618 0610000C */  bltzal      $s0, .L8004C64C
/* 04C1CC 8004C61C 00005512 */   mflo       $t2
/* 04C1D0 8004C620 0610000F */  bltzal      $s0, .L8004C660
/* 04C1D4 8004C624 00005542 */   srl        $t2, $zero, 21
/* 04C1D8 8004C628 060F000E */  regimm(0x0f) $s0, 0xe
/* 04C1DC 8004C62C 00005570 */  tge         $zero, $zero
/* 04C1E0 8004C630 0610000F */  bltzal      $s0, .L8004C670
/* 04C1E4 8004C634 000055A0 */   add        $t2, $zero, $zero
/* 04C1E8 8004C638 060E000D */  tnei        $s0, 0xd
/* 04C1EC 8004C63C 000055CA */  movz        $t2, $zero, $zero
/* 04C1F0 8004C640 020F000E */  special(0x0e) $zero, $s0, $t7
/* 04C1F4 8004C644 000055DA */  div         $t2, $zero, $zero
.L8004C648:
/* 04C1F8 8004C648 020F000E */  special(0x0e) $zero, $s0, $t7
.L8004C64C:
/* 04C1FC 8004C64C 000055EA */  slt         $t2, $zero, $zero
/* 04C200 8004C650 0610000F */  bltzal      $s0, .L8004C690
/* 04C204 8004C654 0000561A */   div        $t2, $zero, $zero
/* 04C208 8004C658 040E000D */  tnei        $zero, 0xd
/* 04C20C 8004C65C 00005636 */  tne         $zero, $zero
.L8004C660:
/* 04C210 8004C660 0610000E */  bltzal      $s0, .L8004C69C
/* 04C214 8004C664 00005666 */   xor        $t2, $zero, $zero
/* 04C218 8004C668 060F000E */  regimm(0x0f) $s0, 0xe
/* 04C21C 8004C66C 00005694 */  dsllv       $t2, $zero, $zero
.L8004C670:
/* 04C220 8004C670 080F000E */  j           func_803C0038
/* 04C224 8004C674 000056D0 */   mfhi       $t2
/* 04C228 8004C678 080F000E */  j           func_803C0038
/* 04C22C 8004C67C 0000570C */   syscall    0
/* 04C230 8004C680 0810000F */  j           fakefunc_8040003C
/* 04C234 8004C684 0000574C */   syscall    0
/* 04C238 8004C688 080F000E */  j           func_803C0038
/* 04C23C 8004C68C 00005788 */   jr         $zero
.L8004C690:
/* 04C240 8004C690 080E000D */   j          func_80380034
/* 04C244 8004C694 000057C0 */   sll        $t2, $zero, 31
/* 04C248 8004C698 04090008 */  tgeiu       $zero, 0x8
.L8004C69C:
/* 04C24C 8004C69C 000057D2 */  mflo        $t2
/* 04C250 8004C6A0 060D000C */  regimm(0x0d) $s0, 0xc
/* 04C254 8004C6A4 000057FA */  dsrl        $t2, $zero, 31
/* 04C258 8004C6A8 060F000E */  regimm(0x0f) $s0, 0xe
/* 04C25C 8004C6AC 00005828 */  special(0x28) $t3, $zero, $zero
/* 04C260 8004C6B0 060F000E */  regimm(0x0f) $s0, 0xe
/* 04C264 8004C6B4 00005856 */  dsrlv       $t3, $zero, $zero
/* 04C268 8004C6B8 0610000F */  bltzal      $s0, .L8004C6F8
/* 04C26C 8004C6BC 00005886 */   srlv       $t3, $zero, $zero
/* 04C270 8004C6C0 060E000D */  tnei        $s0, 0xd
/* 04C274 8004C6C4 000058B0 */  tge         $zero, $zero
/* 04C278 8004C6C8 0610000E */  bltzal      $s0, .L8004C704
/* 04C27C 8004C6CC 000058E0 */   add        $t3, $zero, $zero
/* 04C280 8004C6D0 0610000E */  bltzal      $s0, .L8004C70C
/* 04C284 8004C6D4 00005910 */   mfhi       $t3
/* 04C288 8004C6D8 040C000B */  teqi        $zero, 0xb
/* 04C28C 8004C6DC 00005928 */  special(0x28) $t3, $zero, $zero
/* 04C290 8004C6E0 060C000B */  teqi        $s0, 0xb
/* 04C294 8004C6E4 0000594C */  syscall     0
/* 04C298 8004C6E8 060C000B */  teqi        $s0, 0xb
/* 04C29C 8004C6EC 00005970 */  tge         $zero, $zero
/* 04C2A0 8004C6F0 060D000C */  regimm(0x0d) $s0, 0xc
/* 04C2A4 8004C6F4 00005998 */  mult        $zero, $zero
.L8004C6F8:
/* 04C2A8 8004C6F8 060C000B */  teqi        $s0, 0xb
/* 04C2AC 8004C6FC 000059BC */  dsll32      $t3, $zero, 6
/* 04C2B0 8004C700 040B000A */  tltiu       $zero, 0xa
.L8004C704:
/* 04C2B4 8004C704 000059D2 */  mflo        $t3
/* 04C2B8 8004C708 060D000C */  regimm(0x0d) $s0, 0xc
.L8004C70C:
/* 04C2BC 8004C70C 000059FA */  dsrl        $t3, $zero, 7
/* 04C2C0 8004C710 08090008 */  j           func_80240020
/* 04C2C4 8004C714 00005A1E */   ddiv       $t3, $zero, $zero
/* 04C2C8 8004C718 040C0008 */  teqi        $zero, 0x8
/* 04C2CC 8004C71C 00005A36 */  tne         $zero, $zero
/* 04C2D0 8004C720 060C000B */  teqi        $s0, 0xb
/* 04C2D4 8004C724 00005A5A */  div         $t3, $zero, $zero
/* 04C2D8 8004C728 060C000B */  teqi        $s0, 0xb
/* 04C2DC 8004C72C 00005A7E */  dsrl32      $t3, $zero, 9
/* 04C2E0 8004C730 060D000C */  regimm(0x0d) $s0, 0xc
/* 04C2E4 8004C734 00005AA6 */  xor         $t3, $zero, $zero
/* 04C2E8 8004C738 040B000A */  tltiu       $zero, 0xa
/* 04C2EC 8004C73C 00005ABC */  dsll32      $t3, $zero, 10
/* 04C2F0 8004C740 020C000B */  movn        $zero, $s0, $t4
/* 04C2F4 8004C744 00005AC8 */  jr          $zero
/* 04C2F8 8004C748 020C000B */   movn       $zero, $s0, $t4
/* 04C2FC 8004C74C 00005AD4 */  dsllv       $t3, $zero, $zero
/* 04C300 8004C750 060C000B */  teqi        $s0, 0xb
/* 04C304 8004C754 00005AF8 */  dsll        $t3, $zero, 11
/* 04C308 8004C758 040B000A */  tltiu       $zero, 0xa
/* 04C30C 8004C75C 00005B0E */  special(0x0e) $t3, $zero, $zero
/* 04C310 8004C760 040C000B */  teqi        $zero, 0xb
/* 04C314 8004C764 00005B26 */  xor         $t3, $zero, $zero
/* 04C318 8004C768 060C000B */  teqi        $s0, 0xb
/* 04C31C 8004C76C 00005B4A */  movz        $t3, $zero, $zero
/* 04C320 8004C770 060C000B */  teqi        $s0, 0xb
/* 04C324 8004C774 00005B6E */  dsub        $t3, $zero, $zero
/* 04C328 8004C778 060C000B */  teqi        $s0, 0xb
/* 04C32C 8004C77C 00005B92 */  mflo        $t3
/* 04C330 8004C780 060D000C */  regimm(0x0d) $s0, 0xc
/* 04C334 8004C784 00005BBA */  dsrl        $t3, $zero, 14
/* 04C338 8004C788 060C000B */  teqi        $s0, 0xb
/* 04C33C 8004C78C 00005BDE */  ddiv        $t3, $zero, $zero
/* 04C340 8004C790 040B000A */  tltiu       $zero, 0xa
/* 04C344 8004C794 00005BF4 */  teq         $zero, $zero
/* 04C348 8004C798 06070007 */  regimm(0x07) $s0, 0x7
/* 04C34C 8004C79C 00005C0A */  movz        $t3, $zero, $zero
/* 04C350 8004C7A0 06090008 */  tgeiu       $s0, 0x8
/* 04C354 8004C7A4 00005C26 */  xor         $t3, $zero, $zero
/* 04C358 8004C7A8 060C000B */  teqi        $s0, 0xb
/* 04C35C 8004C7AC 00005C4A */  movz        $t3, $zero, $zero
/* 04C360 8004C7B0 040C000B */  teqi        $zero, 0xb
/* 04C364 8004C7B4 00005C62 */  sub         $t3, $zero, $zero
/* 04C368 8004C7B8 060D000C */  regimm(0x0d) $s0, 0xc
/* 04C36C 8004C7BC 00005C8A */  movz        $t3, $zero, $zero
/* 04C370 8004C7C0 040B000A */  tltiu       $zero, 0xa
/* 04C374 8004C7C4 00005CA0 */  add         $t3, $zero, $zero
/* 04C378 8004C7C8 0610000D */  bltzal      $s0, .L8004C800
/* 04C37C 8004C7CC 00005CD0 */   mfhi       $t3
/* 04C380 8004C7D0 0610000D */  bltzal      $s0, .L8004C808
/* 04C384 8004C7D4 00005D00 */   sll        $t3, $zero, 20
/* 04C388 8004C7D8 040E000A */  tnei        $zero, 0xa
/* 04C38C 8004C7DC 00005D1C */  dmult       $zero, $zero
/* 04C390 8004C7E0 1010000B */  beq         $zero, $s0, .L8004C810
/* 04C394 8004C7E4 00005D9C */   dmult      $zero, $zero
/* 04C398 8004C7E8 0A070007 */  j           fakefunc_881C001C
/* 04C39C 8004C7EC 00005DC0 */   sll        $t3, $zero, 23
/* 04C3A0 8004C7F0 08090008 */  j           func_80240020
/* 04C3A4 8004C7F4 00005DE4 */   and        $t3, $zero, $zero
/* 04C3A8 8004C7F8 0A070007 */  j           fakefunc_881C001C
/* 04C3AC 8004C7FC 00005E08 */   jr         $zero
.L8004C800:
/* 04C3B0 8004C800 08090008 */   j          func_80240020
/* 04C3B4 8004C804 00005E2C */   dadd       $t3, $zero, $zero
.L8004C808:
/* 04C3B8 8004C808 0A0F000A */  j           fakefunc_883C0028
/* 04C3BC 8004C80C 00005E78 */   dsll       $t3, $zero, 25
.L8004C810:
/* 04C3C0 8004C810 10090008 */  beq         $zero, $t1, .L8004C834
/* 04C3C4 8004C814 00005EC0 */   sll        $t3, $zero, 27
/* 04C3C8 8004C818 0A0F000B */  j           fakefunc_883C002C
/* 04C3CC 8004C81C 00005F0C */   syscall    0
/* 04C3D0 8004C820 10090008 */  beq         $zero, $t1, .L8004C844
/* 04C3D4 8004C824 00005F54 */   dsllv      $t3, $zero, $zero
/* 04C3D8 8004C828 0C0D000A */  jal         func_80340028
/* 04C3DC 8004C82C 00005FA2 */   sub        $t3, $zero, $zero
/* 04C3E0 8004C830 0E0D000B */  jal         func_8834002C
.L8004C834:
/* 04C3E4 8004C834 00005FFE */   dsrl32     $t3, $zero, 31
/* 04C3E8 8004C838 0E0D000A */  jal         func_88340028
/* 04C3EC 8004C83C 0000605A */   div        $t4, $zero, $zero
/* 04C3F0 8004C840 0E0D000A */  jal         func_88340028
.L8004C844:
/* 04C3F4 8004C844 000060B6 */   tne        $zero, $zero
/* 04C3F8 8004C848 0E10000B */  jal         func_8840002C
/* 04C3FC 8004C84C 00006126 */   xor        $t4, $zero, $zero
/* 04C400 8004C850 10080007 */  beq         $zero, $t0, .L8004C870
/* 04C404 8004C854 00006166 */   xor        $t4, $zero, $zero
/* 04C408 8004C858 10080007 */  beq         $zero, $t0, .L8004C878
/* 04C40C 8004C85C 000061A6 */   xor        $t4, $zero, $zero
/* 04C410 8004C860 0810000B */  j           fakefunc_8040002C
/* 04C414 8004C864 000061E6 */   xor        $t4, $zero, $zero
/* 04C418 8004C868 0E0E000A */  jal         func_88380028
/* 04C41C 8004C86C 00006248 */   jr         $zero
.L8004C870:
/* 04C420 8004C870 0E0E000A */   jal        func_88380028
/* 04C424 8004C874 000062AA */   slt        $t4, $zero, $zero
.L8004C878:
/* 04C428 8004C878 0E0E000A */  jal         func_88380028
/* 04C42C 8004C87C 0000630C */   syscall    0
/* 04C430 8004C880 0E10000B */  jal         func_8840002C
/* 04C434 8004C884 0000637C */   dsll32     $t4, $zero, 13
/* 04C438 8004C888 0C0C0009 */  jal         func_80300024
/* 04C43C 8004C88C 000063C4 */   sllv       $t4, $zero, $zero
/* 04C440 8004C890 0C0C0009 */  jal         func_80300024
/* 04C444 8004C894 0000640C */   syscall    0
/* 04C448 8004C898 0C0C0009 */  jal         func_80300024
/* 04C44C 8004C89C 00000000 */   nop
/* 04C450 8004C8A0 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 04C454 8004C8A4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 04C458 8004C8A8 AFB30020 */  sw          $s3, 0x20($sp)
/* 04C45C 8004C8AC AFB2001C */  sw          $s2, 0x1c($sp)
/* 04C460 8004C8B0 AFB10018 */  sw          $s1, 0x18($sp)
/* 04C464 8004C8B4 AFB00014 */  sw          $s0, 0x14($sp)
/* 04C468 8004C8B8 A3A00033 */  sb          $zero, 0x33($sp)
/* 04C46C 8004C8BC 00A03825 */  move        $a3, $a1
/* 04C470 8004C8C0 ACA60004 */  sw          $a2, 0x4($a1)
/* 04C474 8004C8C4 ACA40000 */  sw          $a0, 0x0($a1)
/* 04C478 8004C8C8 ACA00008 */  sw          $zero, 0x8($a1)
/* 04C47C 8004C8CC 00C09025 */  move        $s2, $a2
/* 04C480 8004C8D0 00C02825 */  move        $a1, $a2
/* 04C484 8004C8D4 00809825 */  move        $s3, $a0
/* 04C488 8004C8D8 27A60033 */  addiu       $a2, $sp, 0x33
/* 04C48C 8004C8DC 0C01558C */  jal         __osVoiceGetStatus
/* 04C490 8004C8E0 AFA7004C */   sw         $a3, 0x4c($sp)
/* 04C494 8004C8E4 10400003 */  beq         $v0, $zero, .L8004C8F4
/* 04C498 8004C8E8 02602025 */   move       $a0, $s3
/* 04C49C 8004C8EC 10000069 */  b           .L8004CA94
/* 04C4A0 8004C8F0 8FBF0024 */   lw         $ra, 0x24($sp)
.L8004C8F4:
/* 04C4A4 8004C8F4 0C015608 */  jal         func_80055820
/* 04C4A8 8004C8F8 02402825 */   move       $a1, $s2
/* 04C4AC 8004C8FC 10400003 */  beq         $v0, $zero, .L8004C90C
/* 04C4B0 8004C900 00000000 */   nop
/* 04C4B4 8004C904 10000062 */  b           .L8004CA90
/* 04C4B8 8004C908 24020004 */   addiu      $v0, $zero, 0x4
.L8004C90C:
/* 04C4BC 8004C90C 0C014CB8 */  jal         func_800532E0
/* 04C4C0 8004C910 00000000 */   nop
/* 04C4C4 8004C914 240E0000 */  addiu       $t6, $zero, 0x0
/* 04C4C8 8004C918 AFAE0040 */  sw          $t6, 0x40($sp)
/* 04C4CC 8004C91C 0C014CB8 */  jal         func_800532E0
/* 04C4D0 8004C920 AFA20044 */   sw         $v0, 0x44($sp)
/* 04C4D4 8004C924 8FA80040 */  lw          $t0, 0x40($sp)
/* 04C4D8 8004C928 8FA90044 */  lw          $t1, 0x44($sp)
/* 04C4DC 8004C92C 24180000 */  addiu       $t8, $zero, 0x0
/* 04C4E0 8004C930 03085023 */  subu        $t2, $t8, $t0
/* 04C4E4 8004C934 0049082B */  sltu        $at, $v0, $t1
/* 04C4E8 8004C938 15410015 */  bne         $t2, $at, .L8004C990
/* 04C4EC 8004C93C 00495823 */   subu       $t3, $v0, $t1
/* 04C4F0 8004C940 3C010023 */  lui         $at, 0x23
/* 04C4F4 8004C944 3421C346 */  ori         $at, $at, 0xc346
/* 04C4F8 8004C948 0161082B */  sltu        $at, $t3, $at
/* 04C4FC 8004C94C 50200011 */  beql        $at, $zero, .L8004C994
/* 04C500 8004C950 02602025 */   move       $a0, $s3
.L8004C954:
/* 04C504 8004C954 0C014CB8 */  jal         func_800532E0
/* 04C508 8004C958 00000000 */   nop
/* 04C50C 8004C95C 8FAE0040 */  lw          $t6, 0x40($sp)
/* 04C510 8004C960 8FAF0044 */  lw          $t7, 0x44($sp)
/* 04C514 8004C964 240C0000 */  addiu       $t4, $zero, 0x0
/* 04C518 8004C968 018EC023 */  subu        $t8, $t4, $t6
/* 04C51C 8004C96C 004F082B */  sltu        $at, $v0, $t7
/* 04C520 8004C970 0301C023 */  subu        $t8, $t8, $at
/* 04C524 8004C974 004FC823 */  subu        $t9, $v0, $t7
/* 04C528 8004C978 17000005 */  bne         $t8, $zero, .L8004C990
/* 04C52C 8004C97C 3C010023 */   lui        $at, 0x23
/* 04C530 8004C980 3421C346 */  ori         $at, $at, 0xc346
/* 04C534 8004C984 0321082B */  sltu        $at, $t9, $at
/* 04C538 8004C988 1420FFF2 */  bne         $at, $zero, .L8004C954
/* 04C53C 8004C98C 00000000 */   nop
.L8004C990:
/* 04C540 8004C990 02602025 */  move        $a0, $s3
.L8004C994:
/* 04C544 8004C994 02402825 */  move        $a1, $s2
/* 04C548 8004C998 0C01558C */  jal         __osVoiceGetStatus
/* 04C54C 8004C99C 27A60033 */   addiu      $a2, $sp, 0x33
/* 04C550 8004C9A0 50400004 */  beql        $v0, $zero, .L8004C9B4
/* 04C554 8004C9A4 8FA2004C */   lw         $v0, 0x4c($sp)
/* 04C558 8004C9A8 1000003A */  b           .L8004CA94
/* 04C55C 8004C9AC 8FBF0024 */   lw         $ra, 0x24($sp)
/* 04C560 8004C9B0 8FA2004C */  lw          $v0, 0x4c($sp)
.L8004C9B4:
/* 04C564 8004C9B4 00003025 */  move        $a2, $zero
/* 04C568 8004C9B8 27A70034 */  addiu       $a3, $sp, 0x34
/* 04C56C 8004C9BC 8C440000 */  lw          $a0, 0x0($v0)
/* 04C570 8004C9C0 0C015644 */  jal         func_80055910
/* 04C574 8004C9C4 8C450004 */   lw         $a1, 0x4($v0)
/* 04C578 8004C9C8 93A80035 */  lbu         $t0, 0x35($sp)
/* 04C57C 8004C9CC 93AA0034 */  lbu         $t2, 0x34($sp)
/* 04C580 8004C9D0 3C01800A */  lui         $at, %hi(D_8009D990)
/* 04C584 8004C9D4 00084A00 */  sll         $t1, $t0, 8
/* 04C588 8004C9D8 3C10800A */  lui         $s0, %hi(D_8009D994)
/* 04C58C 8004C9DC 3C11800A */  lui         $s1, %hi(D_8009D999)
/* 04C590 8004C9E0 012A5825 */  or          $t3, $t1, $t2
/* 04C594 8004C9E4 AC2BD990 */  sw          $t3, %lo(D_8009D990)($at)
/* 04C598 8004C9E8 2631D999 */  addiu       $s1, $s1, %lo(D_8009D999)
/* 04C59C 8004C9EC 2610D994 */  addiu       $s0, $s0, %lo(D_8009D994)
/* 04C5A0 8004C9F0 02602025 */  move        $a0, $s3
.L8004C9F4:
/* 04C5A4 8004C9F4 02402825 */  move        $a1, $s2
/* 04C5A8 8004C9F8 0C015470 */  jal         func_800551C0
/* 04C5AC 8004C9FC 92060000 */   lbu        $a2, 0x0($s0)
/* 04C5B0 8004CA00 10400003 */  beq         $v0, $zero, .L8004CA10
/* 04C5B4 8004CA04 26100001 */   addiu      $s0, $s0, 0x1
/* 04C5B8 8004CA08 10000022 */  b           .L8004CA94
/* 04C5BC 8004CA0C 8FBF0024 */   lw         $ra, 0x24($sp)
.L8004CA10:
/* 04C5C0 8004CA10 5611FFF8 */  bnel        $s0, $s1, .L8004C9F4
/* 04C5C4 8004CA14 02602025 */   move       $a0, $s3
/* 04C5C8 8004CA18 02602025 */  move        $a0, $s3
/* 04C5CC 8004CA1C 02402825 */  move        $a1, $s2
/* 04C5D0 8004CA20 0C01558C */  jal         __osVoiceGetStatus
/* 04C5D4 8004CA24 27A60033 */   addiu      $a2, $sp, 0x33
/* 04C5D8 8004CA28 10400003 */  beq         $v0, $zero, .L8004CA38
/* 04C5DC 8004CA2C 93AC0033 */   lbu        $t4, 0x33($sp)
/* 04C5E0 8004CA30 10000018 */  b           .L8004CA94
/* 04C5E4 8004CA34 8FBF0024 */   lw         $ra, 0x24($sp)
.L8004CA38:
/* 04C5E8 8004CA38 318D0002 */  andi        $t5, $t4, 0x2
/* 04C5EC 8004CA3C 11A00003 */  beq         $t5, $zero, .L8004CA4C
/* 04C5F0 8004CA40 240E0100 */   addiu      $t6, $zero, 0x100
/* 04C5F4 8004CA44 10000012 */  b           .L8004CA90
/* 04C5F8 8004CA48 2402000F */   addiu      $v0, $zero, 0xf
.L8004CA4C:
/* 04C5FC 8004CA4C AFAE002C */  sw          $t6, 0x2c($sp)
/* 04C600 8004CA50 02602025 */  move        $a0, $s3
/* 04C604 8004CA54 02402825 */  move        $a1, $s2
/* 04C608 8004CA58 00003025 */  move        $a2, $zero
/* 04C60C 8004CA5C 0C0156D0 */  jal         __osVoiceContWrite4
/* 04C610 8004CA60 27A7002C */   addiu      $a3, $sp, 0x2c
/* 04C614 8004CA64 10400003 */  beq         $v0, $zero, .L8004CA74
/* 04C618 8004CA68 8FA4004C */   lw         $a0, 0x4c($sp)
/* 04C61C 8004CA6C 10000009 */  b           .L8004CA94
/* 04C620 8004CA70 8FBF0024 */   lw         $ra, 0x24($sp)
.L8004CA74:
/* 04C624 8004CA74 0C01575C */  jal         func_80055D70
/* 04C628 8004CA78 27A50033 */   addiu      $a1, $sp, 0x33
/* 04C62C 8004CA7C 304FFF00 */  andi        $t7, $v0, 0xff00
/* 04C630 8004CA80 11E00002 */  beq         $t7, $zero, .L8004CA8C
/* 04C634 8004CA84 00401825 */   move       $v1, $v0
/* 04C638 8004CA88 24030005 */  addiu       $v1, $zero, 0x5
.L8004CA8C:
/* 04C63C 8004CA8C 00601025 */  move        $v0, $v1
.L8004CA90:
/* 04C640 8004CA90 8FBF0024 */  lw          $ra, 0x24($sp)
.L8004CA94:
/* 04C644 8004CA94 8FB00014 */  lw          $s0, 0x14($sp)
/* 04C648 8004CA98 8FB10018 */  lw          $s1, 0x18($sp)
/* 04C64C 8004CA9C 8FB2001C */  lw          $s2, 0x1c($sp)
/* 04C650 8004CAA0 8FB30020 */  lw          $s3, 0x20($sp)
/* 04C654 8004CAA4 03E00008 */  jr          $ra
/* 04C658 8004CAA8 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_8004CAAC # 3
/* 04C65C 8004CAAC 27BDFF70 */  addiu       $sp, $sp, -0x90
/* 04C660 8004CAB0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04C664 8004CAB4 AFB00018 */  sw          $s0, 0x18($sp)
/* 04C668 8004CAB8 00808025 */  move        $s0, $a0
/* 04C66C 8004CABC AFA50094 */  sw          $a1, 0x94($sp)
/* 04C670 8004CAC0 8E050004 */  lw          $a1, 0x4($s0)
/* 04C674 8004CAC4 8C840000 */  lw          $a0, 0x0($a0)
/* 04C678 8004CAC8 0C01558C */  jal         __osVoiceGetStatus
/* 04C67C 8004CACC 27A60083 */   addiu      $a2, $sp, 0x83
/* 04C680 8004CAD0 10400003 */  beq         $v0, $zero, .L8004CAE0
/* 04C684 8004CAD4 93AE0083 */   lbu        $t6, 0x83($sp)
/* 04C688 8004CAD8 1000005C */  b           .L8004CC4C
/* 04C68C 8004CADC 8FBF001C */   lw         $ra, 0x1c($sp)
.L8004CAE0:
/* 04C690 8004CAE0 31CF0002 */  andi        $t7, $t6, 0x2
/* 04C694 8004CAE4 11E00003 */  beq         $t7, $zero, .L8004CAF4
/* 04C698 8004CAE8 00003025 */   move       $a2, $zero
/* 04C69C 8004CAEC 10000056 */  b           .L8004CC48
/* 04C6A0 8004CAF0 2402000F */   addiu      $v0, $zero, 0xf
.L8004CAF4:
/* 04C6A4 8004CAF4 8FA20094 */  lw          $v0, 0x94($sp)
.L8004CAF8:
/* 04C6A8 8004CAF8 90590001 */  lbu         $t9, 0x1($v0)
/* 04C6AC 8004CAFC 90580000 */  lbu         $t8, 0x0($v0)
/* 04C6B0 8004CB00 24420002 */  addiu       $v0, $v0, 0x2
/* 04C6B4 8004CB04 00194A00 */  sll         $t1, $t9, 8
/* 04C6B8 8004CB08 03095025 */  or          $t2, $t8, $t1
/* 04C6BC 8004CB0C 314BFFFF */  andi        $t3, $t2, 0xffff
/* 04C6C0 8004CB10 51600004 */  beql        $t3, $zero, .L8004CB24
/* 04C6C4 8004CB14 27A40030 */   addiu      $a0, $sp, 0x30
/* 04C6C8 8004CB18 1000FFF7 */  b           .L8004CAF8
/* 04C6CC 8004CB1C 24C60002 */   addiu      $a2, $a2, 0x2
/* 04C6D0 8004CB20 27A40030 */  addiu       $a0, $sp, 0x30
.L8004CB24:
/* 04C6D4 8004CB24 24050050 */  addiu       $a1, $zero, 0x50
/* 04C6D8 8004CB28 0C014388 */  jal         bzero
/* 04C6DC 8004CB2C AFA60088 */   sw         $a2, 0x88($sp)
/* 04C6E0 8004CB30 8FA60088 */  lw          $a2, 0x88($sp)
/* 04C6E4 8004CB34 00004025 */  move        $t0, $zero
/* 04C6E8 8004CB38 24190003 */  addiu       $t9, $zero, 0x3
/* 04C6EC 8004CB3C 18C0000E */  blez        $a2, .L8004CB78
/* 04C6F0 8004CB40 27A70030 */   addiu      $a3, $sp, 0x30
/* 04C6F4 8004CB44 00066023 */  subu        $t4, $zero, $a2
/* 04C6F8 8004CB48 27AD007F */  addiu       $t5, $sp, 0x7f
/* 04C6FC 8004CB4C 018D1021 */  addu        $v0, $t4, $t5
/* 04C700 8004CB50 8FA30094 */  lw          $v1, 0x94($sp)
.L8004CB54:
/* 04C704 8004CB54 906E0000 */  lbu         $t6, 0x0($v1)
/* 04C708 8004CB58 25080002 */  addiu       $t0, $t0, 0x2
/* 04C70C 8004CB5C 0106082A */  slt         $at, $t0, $a2
/* 04C710 8004CB60 A04E0000 */  sb          $t6, 0x0($v0)
/* 04C714 8004CB64 906F0001 */  lbu         $t7, 0x1($v1)
/* 04C718 8004CB68 24420002 */  addiu       $v0, $v0, 0x2
/* 04C71C 8004CB6C 24630002 */  addiu       $v1, $v1, 0x2
/* 04C720 8004CB70 1420FFF8 */  bne         $at, $zero, .L8004CB54
/* 04C724 8004CB74 A04FFFFD */   sb         $t7, -0x3($v0)
.L8004CB78:
/* 04C728 8004CB78 0008C023 */  subu        $t8, $zero, $t0
/* 04C72C 8004CB7C 03B84821 */  addu        $t1, $sp, $t8
/* 04C730 8004CB80 A139007A */  sb          $t9, 0x7a($t1)
/* 04C734 8004CB84 8E050004 */  lw          $a1, 0x4($s0)
/* 04C738 8004CB88 8E040000 */  lw          $a0, 0x0($s0)
/* 04C73C 8004CB8C 0C015788 */  jal         func_80055E20
/* 04C740 8004CB90 00003025 */   move       $a2, $zero
/* 04C744 8004CB94 10400003 */  beq         $v0, $zero, .L8004CBA4
/* 04C748 8004CB98 00003025 */   move       $a2, $zero
/* 04C74C 8004CB9C 1000002B */  b           .L8004CC4C
/* 04C750 8004CBA0 8FBF001C */   lw         $ra, 0x1c($sp)
.L8004CBA4:
/* 04C754 8004CBA4 8E040000 */  lw          $a0, 0x0($s0)
/* 04C758 8004CBA8 8E050004 */  lw          $a1, 0x4($s0)
/* 04C75C 8004CBAC 0C015788 */  jal         func_80055E20
/* 04C760 8004CBB0 27A70044 */   addiu      $a3, $sp, 0x44
/* 04C764 8004CBB4 10400003 */  beq         $v0, $zero, .L8004CBC4
/* 04C768 8004CBB8 00003025 */   move       $a2, $zero
/* 04C76C 8004CBBC 10000023 */  b           .L8004CC4C
/* 04C770 8004CBC0 8FBF001C */   lw         $ra, 0x1c($sp)
.L8004CBC4:
/* 04C774 8004CBC4 8E040000 */  lw          $a0, 0x0($s0)
/* 04C778 8004CBC8 8E050004 */  lw          $a1, 0x4($s0)
/* 04C77C 8004CBCC 0C015788 */  jal         func_80055E20
/* 04C780 8004CBD0 27A70058 */   addiu      $a3, $sp, 0x58
/* 04C784 8004CBD4 10400003 */  beq         $v0, $zero, .L8004CBE4
/* 04C788 8004CBD8 00003025 */   move       $a2, $zero
/* 04C78C 8004CBDC 1000001B */  b           .L8004CC4C
/* 04C790 8004CBE0 8FBF001C */   lw         $ra, 0x1c($sp)
.L8004CBE4:
/* 04C794 8004CBE4 8E040000 */  lw          $a0, 0x0($s0)
/* 04C798 8004CBE8 8E050004 */  lw          $a1, 0x4($s0)
/* 04C79C 8004CBEC 0C015788 */  jal         func_80055E20
/* 04C7A0 8004CBF0 27A7006C */   addiu      $a3, $sp, 0x6c
/* 04C7A4 8004CBF4 10400003 */  beq         $v0, $zero, .L8004CC04
/* 04C7A8 8004CBF8 02002025 */   move       $a0, $s0
/* 04C7AC 8004CBFC 10000013 */  b           .L8004CC4C
/* 04C7B0 8004CC00 8FBF001C */   lw         $ra, 0x1c($sp)
.L8004CC04:
/* 04C7B4 8004CC04 0C01575C */  jal         func_80055D70
/* 04C7B8 8004CC08 27A50083 */   addiu      $a1, $sp, 0x83
/* 04C7BC 8004CC0C 1040000D */  beq         $v0, $zero, .L8004CC44
/* 04C7C0 8004CC10 00401825 */   move       $v1, $v0
/* 04C7C4 8004CC14 304A0100 */  andi        $t2, $v0, 0x100
/* 04C7C8 8004CC18 11400003 */  beq         $t2, $zero, .L8004CC28
/* 04C7CC 8004CC1C 304B0200 */   andi       $t3, $v0, 0x200
/* 04C7D0 8004CC20 10000008 */  b           .L8004CC44
/* 04C7D4 8004CC24 2403000D */   addiu      $v1, $zero, 0xd
.L8004CC28:
/* 04C7D8 8004CC28 11600003 */  beq         $t3, $zero, .L8004CC38
/* 04C7DC 8004CC2C 304CFF00 */   andi       $t4, $v0, 0xff00
/* 04C7E0 8004CC30 10000004 */  b           .L8004CC44
/* 04C7E4 8004CC34 2403000E */   addiu      $v1, $zero, 0xe
.L8004CC38:
/* 04C7E8 8004CC38 51800003 */  beql        $t4, $zero, .L8004CC48
/* 04C7EC 8004CC3C 00601025 */   move       $v0, $v1
/* 04C7F0 8004CC40 24030005 */  addiu       $v1, $zero, 0x5
.L8004CC44:
/* 04C7F4 8004CC44 00601025 */  move        $v0, $v1
.L8004CC48:
/* 04C7F8 8004CC48 8FBF001C */  lw          $ra, 0x1c($sp)
.L8004CC4C:
/* 04C7FC 8004CC4C 8FB00018 */  lw          $s0, 0x18($sp)
/* 04C800 8004CC50 27BD0090 */  addiu       $sp, $sp, 0x90
/* 04C804 8004CC54 03E00008 */  jr          $ra
/* 04C808 8004CC58 00000000 */   nop

glabel func_8004CC5C # 4
/* 04C80C 8004CC5C 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 04C810 8004CC60 AFB00018 */  sw          $s0, 0x18($sp)
/* 04C814 8004CC64 00808025 */  move        $s0, $a0
/* 04C818 8004CC68 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04C81C 8004CC6C AFA5006C */  sw          $a1, 0x6c($sp)
/* 04C820 8004CC70 00C03825 */  move        $a3, $a2
/* 04C824 8004CC74 8E050004 */  lw          $a1, 0x4($s0)
/* 04C828 8004CC78 8C840000 */  lw          $a0, 0x0($a0)
/* 04C82C 8004CC7C AFA70070 */  sw          $a3, 0x70($sp)
/* 04C830 8004CC80 0C01558C */  jal         __osVoiceGetStatus
/* 04C834 8004CC84 27A6005B */   addiu      $a2, $sp, 0x5b
/* 04C838 8004CC88 10400003 */  beq         $v0, $zero, .L8004CC98
/* 04C83C 8004CC8C 8FA70070 */   lw         $a3, 0x70($sp)
/* 04C840 8004CC90 10000040 */  b           .L8004CD94
/* 04C844 8004CC94 8FBF001C */   lw         $ra, 0x1c($sp)
.L8004CC98:
/* 04C848 8004CC98 93AE005B */  lbu         $t6, 0x5b($sp)
/* 04C84C 8004CC9C 30E80001 */  andi        $t0, $a3, 0x1
/* 04C850 8004CCA0 27A40030 */  addiu       $a0, $sp, 0x30
/* 04C854 8004CCA4 31CF0002 */  andi        $t7, $t6, 0x2
/* 04C858 8004CCA8 11E00003 */  beq         $t7, $zero, .L8004CCB8
/* 04C85C 8004CCAC 24050028 */   addiu      $a1, $zero, 0x28
/* 04C860 8004CCB0 10000037 */  b           .L8004CD90
/* 04C864 8004CCB4 2402000F */   addiu      $v0, $zero, 0xf
.L8004CCB8:
/* 04C868 8004CCB8 11000003 */  beq         $t0, $zero, .L8004CCC8
/* 04C86C 8004CCBC 00E03025 */   move       $a2, $a3
/* 04C870 8004CCC0 10000001 */  b           .L8004CCC8
/* 04C874 8004CCC4 24E60001 */   addiu      $a2, $a3, 0x1
.L8004CCC8:
/* 04C878 8004CCC8 AFA6005C */  sw          $a2, 0x5c($sp)
/* 04C87C 8004CCCC 0C014388 */  jal         bzero
/* 04C880 8004CCD0 AFA8002C */   sw         $t0, 0x2c($sp)
/* 04C884 8004CCD4 8FA6005C */  lw          $a2, 0x5c($sp)
/* 04C888 8004CCD8 8FA8002C */  lw          $t0, 0x2c($sp)
/* 04C88C 8004CCDC 24180004 */  addiu       $t8, $zero, 0x4
/* 04C890 8004CCE0 0006C823 */  subu        $t9, $zero, $a2
/* 04C894 8004CCE4 03B94821 */  addu        $t1, $sp, $t9
/* 04C898 8004CCE8 A1380056 */  sb          $t8, 0x56($t1)
/* 04C89C 8004CCEC 18C0000E */  blez        $a2, .L8004CD28
/* 04C8A0 8004CCF0 00002025 */   move       $a0, $zero
/* 04C8A4 8004CCF4 00065023 */  subu        $t2, $zero, $a2
/* 04C8A8 8004CCF8 27AB0030 */  addiu       $t3, $sp, 0x30
/* 04C8AC 8004CCFC 014B1021 */  addu        $v0, $t2, $t3
/* 04C8B0 8004CD00 8FA3006C */  lw          $v1, 0x6c($sp)
.L8004CD04:
/* 04C8B4 8004CD04 906C0000 */  lbu         $t4, 0x0($v1)
/* 04C8B8 8004CD08 24840002 */  addiu       $a0, $a0, 0x2
/* 04C8BC 8004CD0C 0086082A */  slt         $at, $a0, $a2
/* 04C8C0 8004CD10 A04C0028 */  sb          $t4, 0x28($v0)
/* 04C8C4 8004CD14 906D0001 */  lbu         $t5, 0x1($v1)
/* 04C8C8 8004CD18 24420002 */  addiu       $v0, $v0, 0x2
/* 04C8CC 8004CD1C 24630002 */  addiu       $v1, $v1, 0x2
/* 04C8D0 8004CD20 1420FFF8 */  bne         $at, $zero, .L8004CD04
/* 04C8D4 8004CD24 A04D0027 */   sb         $t5, 0x27($v0)
.L8004CD28:
/* 04C8D8 8004CD28 11000002 */  beq         $t0, $zero, .L8004CD34
/* 04C8DC 8004CD2C 00003025 */   move       $a2, $zero
/* 04C8E0 8004CD30 A3A00057 */  sb          $zero, 0x57($sp)
.L8004CD34:
/* 04C8E4 8004CD34 8E040000 */  lw          $a0, 0x0($s0)
/* 04C8E8 8004CD38 8E050004 */  lw          $a1, 0x4($s0)
/* 04C8EC 8004CD3C 0C015788 */  jal         func_80055E20
/* 04C8F0 8004CD40 27A70030 */   addiu      $a3, $sp, 0x30
/* 04C8F4 8004CD44 14400003 */  bne         $v0, $zero, .L8004CD54
/* 04C8F8 8004CD48 02002025 */   move       $a0, $s0
/* 04C8FC 8004CD4C 0C01575C */  jal         func_80055D70
/* 04C900 8004CD50 27A5005B */   addiu      $a1, $sp, 0x5b
.L8004CD54:
/* 04C904 8004CD54 8E040000 */  lw          $a0, 0x0($s0)
/* 04C908 8004CD58 8E050004 */  lw          $a1, 0x4($s0)
/* 04C90C 8004CD5C 00003025 */  move        $a2, $zero
/* 04C910 8004CD60 0C015788 */  jal         func_80055E20
/* 04C914 8004CD64 27A70044 */   addiu      $a3, $sp, 0x44
/* 04C918 8004CD68 14400008 */  bne         $v0, $zero, .L8004CD8C
/* 04C91C 8004CD6C 00401825 */   move       $v1, $v0
/* 04C920 8004CD70 02002025 */  move        $a0, $s0
/* 04C924 8004CD74 0C01575C */  jal         func_80055D70
/* 04C928 8004CD78 27A5005B */   addiu      $a1, $sp, 0x5b
/* 04C92C 8004CD7C 304EFF00 */  andi        $t6, $v0, 0xff00
/* 04C930 8004CD80 11C00002 */  beq         $t6, $zero, .L8004CD8C
/* 04C934 8004CD84 00401825 */   move       $v1, $v0
/* 04C938 8004CD88 24030005 */  addiu       $v1, $zero, 0x5
.L8004CD8C:
/* 04C93C 8004CD8C 00601025 */  move        $v0, $v1
.L8004CD90:
/* 04C940 8004CD90 8FBF001C */  lw          $ra, 0x1c($sp)
.L8004CD94:
/* 04C944 8004CD94 8FB00018 */  lw          $s0, 0x18($sp)
/* 04C948 8004CD98 27BD0068 */  addiu       $sp, $sp, 0x68
/* 04C94C 8004CD9C 03E00008 */  jr          $ra
/* 04C950 8004CDA0 00000000 */   nop

glabel func_8004CDA4 # 5
/* 04C954 8004CDA4 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 04C958 8004CDA8 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04C95C 8004CDAC AFB00018 */  sw          $s0, 0x18($sp)
/* 04C960 8004CDB0 00808025 */  move        $s0, $a0
/* 04C964 8004CDB4 AFA50034 */  sw          $a1, 0x34($sp)
/* 04C968 8004CDB8 8E050004 */  lw          $a1, 0x4($s0)
/* 04C96C 8004CDBC 8C840000 */  lw          $a0, 0x0($a0)
/* 04C970 8004CDC0 0C01558C */  jal         __osVoiceGetStatus
/* 04C974 8004CDC4 27A6002B */   addiu      $a2, $sp, 0x2b
/* 04C978 8004CDC8 10400003 */  beq         $v0, $zero, .L8004CDD8
/* 04C97C 8004CDCC 93AE002B */   lbu        $t6, 0x2b($sp)
/* 04C980 8004CDD0 1000001D */  b           .L8004CE48
/* 04C984 8004CDD4 8FBF001C */   lw         $ra, 0x1c($sp)
.L8004CDD8:
/* 04C988 8004CDD8 31CF0002 */  andi        $t7, $t6, 0x2
/* 04C98C 8004CDDC 11E00003 */  beq         $t7, $zero, .L8004CDEC
/* 04C990 8004CDE0 27A70024 */   addiu      $a3, $sp, 0x24
/* 04C994 8004CDE4 10000017 */  b           .L8004CE44
/* 04C998 8004CDE8 2402000F */   addiu      $v0, $zero, 0xf
.L8004CDEC:
/* 04C99C 8004CDEC 97A20036 */  lhu         $v0, 0x36($sp)
/* 04C9A0 8004CDF0 3C180200 */  lui         $t8, 0x200
/* 04C9A4 8004CDF4 AFB80024 */  sw          $t8, 0x24($sp)
/* 04C9A8 8004CDF8 3048FF00 */  andi        $t0, $v0, 0xff00
/* 04C9AC 8004CDFC 00084A03 */  sra         $t1, $t0, 8
/* 04C9B0 8004CE00 A0E90003 */  sb          $t1, 0x3($a3)
/* 04C9B4 8004CE04 A0E20002 */  sb          $v0, 0x2($a3)
/* 04C9B8 8004CE08 8E050004 */  lw          $a1, 0x4($s0)
/* 04C9BC 8004CE0C 8E040000 */  lw          $a0, 0x0($s0)
/* 04C9C0 8004CE10 0C0156D0 */  jal         __osVoiceContWrite4
/* 04C9C4 8004CE14 00003025 */   move       $a2, $zero
/* 04C9C8 8004CE18 10400003 */  beq         $v0, $zero, .L8004CE28
/* 04C9CC 8004CE1C 02002025 */   move       $a0, $s0
/* 04C9D0 8004CE20 10000009 */  b           .L8004CE48
/* 04C9D4 8004CE24 8FBF001C */   lw         $ra, 0x1c($sp)
.L8004CE28:
/* 04C9D8 8004CE28 0C01575C */  jal         func_80055D70
/* 04C9DC 8004CE2C 27A5002B */   addiu      $a1, $sp, 0x2b
/* 04C9E0 8004CE30 304AFF00 */  andi        $t2, $v0, 0xff00
/* 04C9E4 8004CE34 11400002 */  beq         $t2, $zero, .L8004CE40
/* 04C9E8 8004CE38 00401825 */   move       $v1, $v0
/* 04C9EC 8004CE3C 24030005 */  addiu       $v1, $zero, 0x5
.L8004CE40:
/* 04C9F0 8004CE40 00601025 */  move        $v0, $v1
.L8004CE44:
/* 04C9F4 8004CE44 8FBF001C */  lw          $ra, 0x1c($sp)
.L8004CE48:
/* 04C9F8 8004CE48 8FB00018 */  lw          $s0, 0x18($sp)
/* 04C9FC 8004CE4C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 04CA00 8004CE50 03E00008 */  jr          $ra
/* 04CA04 8004CE54 00000000 */   nop
/* 04CA08 8004CE58 00000000 */  nop
/* 04CA0C 8004CE5C 00000000 */  nop
