.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8001DAA0 # 0
/* 01D650 8001DAA0 27BDFF80 */  addiu       $sp, $sp, -0x80
/* 01D654 8001DAA4 3C0E8009 */  lui         $t6, %hi(D_8008E424)
/* 01D658 8001DAA8 8DCEE424 */  lw          $t6, %lo(D_8008E424)($t6)
/* 01D65C 8001DAAC AFB0002C */  sw          $s0, 0x2c($sp)
/* 01D660 8001DAB0 00E08025 */  move        $s0, $a3
/* 01D664 8001DAB4 AFBF0034 */  sw          $ra, 0x34($sp)
/* 01D668 8001DAB8 AFB10030 */  sw          $s1, 0x30($sp)
/* 01D66C 8001DABC AFA40080 */  sw          $a0, 0x80($sp)
/* 01D670 8001DAC0 AFA50084 */  sw          $a1, 0x84($sp)
/* 01D674 8001DAC4 11C00003 */  beqz        $t6, .L8001DAD4
/* 01D678 8001DAC8 AFA60088 */   sw         $a2, 0x88($sp)
/* 01D67C 8001DACC 100000C6 */  b           .L8001DDE8
/* 01D680 8001DAD0 00001025 */   move       $v0, $zero
.L8001DAD4:
/* 01D684 8001DAD4 27B10070 */  addiu       $s1, $sp, 0x70
/* 01D688 8001DAD8 3C05800C */  lui         $a1, %hi(D_800BB580)
/* 01D68C 8001DADC 3C060003 */  lui         $a2, 0x3
/* 01D690 8001DAE0 34C65B60 */  ori         $a2, $a2, 0x5b60
/* 01D694 8001DAE4 24A5B580 */  addiu       $a1, $a1, %lo(D_800BB580)
/* 01D698 8001DAE8 0C0145A0 */  jal         func_80051680
/* 01D69C 8001DAEC 02202025 */   move       $a0, $s1
/* 01D6A0 8001DAF0 02202025 */  move        $a0, $s1
/* 01D6A4 8001DAF4 24050040 */  addiu       $a1, $zero, 0x40
/* 01D6A8 8001DAF8 0C0116ED */  jal         func_80045BB4
/* 01D6AC 8001DAFC 2406000A */   addiu      $a2, $zero, 0xa
/* 01D6B0 8001DB00 3C078006 */  lui         $a3, %hi(D_800612E0)
/* 01D6B4 8001DB04 8CE712E0 */  lw          $a3, %lo(D_800612E0)($a3)
/* 01D6B8 8001DB08 24180004 */  addiu       $t8, $zero, 0x4
/* 01D6BC 8001DB0C AFB80010 */  sw          $t8, 0x10($sp)
/* 01D6C0 8001DB10 000778C0 */  sll         $t7, $a3, 3
/* 01D6C4 8001DB14 25E70002 */  addiu       $a3, $t7, 0x2
/* 01D6C8 8001DB18 00002025 */  move        $a0, $zero
/* 01D6CC 8001DB1C 00002825 */  move        $a1, $zero
/* 01D6D0 8001DB20 0C0145B0 */  jal         func_800516C0
/* 01D6D4 8001DB24 02203025 */   move       $a2, $s1
/* 01D6D8 8001DB28 3C198006 */  lui         $t9, %hi(D_800612E0)
/* 01D6DC 8001DB2C 8F3912E0 */  lw          $t9, %lo(D_800612E0)($t9)
/* 01D6E0 8001DB30 AFA2006C */  sw          $v0, 0x6c($sp)
/* 01D6E4 8001DB34 3C088006 */  lui         $t0, %hi(D_800612E4)
/* 01D6E8 8001DB38 AC590000 */  sw          $t9, 0x0($v0)
/* 01D6EC 8001DB3C 8D0812E4 */  lw          $t0, %lo(D_800612E4)($t0)
/* 01D6F0 8001DB40 240503E8 */  addiu       $a1, $zero, 0x3e8
/* 01D6F4 8001DB44 8FAC006C */  lw          $t4, 0x6c($sp)
/* 01D6F8 8001DB48 01100019 */  multu       $t0, $s0
/* 01D6FC 8001DB4C 2406FFF8 */  addiu       $a2, $zero, -0x8
/* 01D700 8001DB50 3C0D8006 */  lui         $t5, %hi(D_800612E0)
/* 01D704 8001DB54 3C038006 */  lui         $v1, %hi(D_800612E0)
/* 01D708 8001DB58 246312E0 */  addiu       $v1, $v1, %lo(D_800612E0)
/* 01D70C 8001DB5C 00001025 */  move        $v0, $zero
/* 01D710 8001DB60 00002025 */  move        $a0, $zero
/* 01D714 8001DB64 00004812 */  mflo        $t1
/* 01D718 8001DB68 00000000 */  nop
/* 01D71C 8001DB6C 00000000 */  nop
/* 01D720 8001DB70 0125001A */  div         $zero, $t1, $a1
/* 01D724 8001DB74 00005012 */  mflo        $t2
/* 01D728 8001DB78 01465824 */  and         $t3, $t2, $a2
/* 01D72C 8001DB7C AD8B0004 */  sw          $t3, 0x4($t4)
/* 01D730 8001DB80 8DAD12E0 */  lw          $t5, %lo(D_800612E0)($t5)
/* 01D734 8001DB84 14A00002 */  bnez        $a1, .L8001DB90
/* 01D738 8001DB88 00000000 */   nop
/* 01D73C 8001DB8C 0007000D */  break       7
.L8001DB90:
/* 01D740 8001DB90 2401FFFF */  addiu       $at, $zero, -0x1
/* 01D744 8001DB94 14A10004 */  bne         $a1, $at, .L8001DBA8
/* 01D748 8001DB98 3C018000 */   lui        $at, 0x8000
/* 01D74C 8001DB9C 15210002 */  bne         $t1, $at, .L8001DBA8
/* 01D750 8001DBA0 00000000 */   nop
/* 01D754 8001DBA4 0006000D */  break       6
.L8001DBA8:
/* 01D758 8001DBA8 19A00049 */  blez        $t5, .L8001DCD0
/* 01D75C 8001DBAC 00000000 */   nop
/* 01D760 8001DBB0 8C6E0008 */  lw          $t6, 0x8($v1)
.L8001DBB4:
/* 01D764 8001DBB4 8FA8006C */  lw          $t0, 0x6c($sp)
/* 01D768 8001DBB8 24840001 */  addiu       $a0, $a0, 0x1
/* 01D76C 8001DBBC 01D00019 */  multu       $t6, $s0
/* 01D770 8001DBC0 01024821 */  addu        $t1, $t0, $v0
/* 01D774 8001DBC4 24630020 */  addiu       $v1, $v1, 0x20
/* 01D778 8001DBC8 00007812 */  mflo        $t7
/* 01D77C 8001DBCC 00000000 */  nop
/* 01D780 8001DBD0 00000000 */  nop
/* 01D784 8001DBD4 01E5001A */  div         $zero, $t7, $a1
/* 01D788 8001DBD8 0000C012 */  mflo        $t8
/* 01D78C 8001DBDC 0306C824 */  and         $t9, $t8, $a2
/* 01D790 8001DBE0 AD390008 */  sw          $t9, 0x8($t1)
/* 01D794 8001DBE4 8C6AFFEC */  lw          $t2, -0x14($v1)
/* 01D798 8001DBE8 8FAE006C */  lw          $t6, 0x6c($sp)
/* 01D79C 8001DBEC 14A00002 */  bnez        $a1, .L8001DBF8
/* 01D7A0 8001DBF0 00000000 */   nop
/* 01D7A4 8001DBF4 0007000D */  break       7
.L8001DBF8:
/* 01D7A8 8001DBF8 2401FFFF */  addiu       $at, $zero, -0x1
/* 01D7AC 8001DBFC 14A10004 */  bne         $a1, $at, .L8001DC10
/* 01D7B0 8001DC00 3C018000 */   lui        $at, 0x8000
/* 01D7B4 8001DC04 15E10002 */  bne         $t7, $at, .L8001DC10
/* 01D7B8 8001DC08 00000000 */   nop
/* 01D7BC 8001DC0C 0006000D */  break       6
.L8001DC10:
/* 01D7C0 8001DC10 01500019 */  multu       $t2, $s0
/* 01D7C4 8001DC14 01C27821 */  addu        $t7, $t6, $v0
/* 01D7C8 8001DC18 00005812 */  mflo        $t3
/* 01D7CC 8001DC1C 00000000 */  nop
/* 01D7D0 8001DC20 00000000 */  nop
/* 01D7D4 8001DC24 0165001A */  div         $zero, $t3, $a1
/* 01D7D8 8001DC28 00006012 */  mflo        $t4
/* 01D7DC 8001DC2C 01866824 */  and         $t5, $t4, $a2
/* 01D7E0 8001DC30 ADED000C */  sw          $t5, 0xc($t7)
/* 01D7E4 8001DC34 8FA8006C */  lw          $t0, 0x6c($sp)
/* 01D7E8 8001DC38 8C78FFF0 */  lw          $t8, -0x10($v1)
/* 01D7EC 8001DC3C 14A00002 */  bnez        $a1, .L8001DC48
/* 01D7F0 8001DC40 00000000 */   nop
/* 01D7F4 8001DC44 0007000D */  break       7
.L8001DC48:
/* 01D7F8 8001DC48 2401FFFF */  addiu       $at, $zero, -0x1
/* 01D7FC 8001DC4C 14A10004 */  bne         $a1, $at, .L8001DC60
/* 01D800 8001DC50 3C018000 */   lui        $at, 0x8000
/* 01D804 8001DC54 15610002 */  bne         $t3, $at, .L8001DC60
/* 01D808 8001DC58 00000000 */   nop
/* 01D80C 8001DC5C 0006000D */  break       6
.L8001DC60:
/* 01D810 8001DC60 0102C821 */  addu        $t9, $t0, $v0
/* 01D814 8001DC64 AF380010 */  sw          $t8, 0x10($t9)
/* 01D818 8001DC68 8FAA006C */  lw          $t2, 0x6c($sp)
/* 01D81C 8001DC6C 8C69FFF4 */  lw          $t1, -0xc($v1)
/* 01D820 8001DC70 01425821 */  addu        $t3, $t2, $v0
/* 01D824 8001DC74 AD690014 */  sw          $t1, 0x14($t3)
/* 01D828 8001DC78 8FAE006C */  lw          $t6, 0x6c($sp)
/* 01D82C 8001DC7C 8C6CFFF8 */  lw          $t4, -0x8($v1)
/* 01D830 8001DC80 01C26821 */  addu        $t5, $t6, $v0
/* 01D834 8001DC84 ADAC0018 */  sw          $t4, 0x18($t5)
/* 01D838 8001DC88 8FA8006C */  lw          $t0, 0x6c($sp)
/* 01D83C 8001DC8C 8C6FFFFC */  lw          $t7, -0x4($v1)
/* 01D840 8001DC90 3C0D8006 */  lui         $t5, %hi(D_800612E0)
/* 01D844 8001DC94 0102C021 */  addu        $t8, $t0, $v0
/* 01D848 8001DC98 AF0F001C */  sw          $t7, 0x1c($t8)
/* 01D84C 8001DC9C 8FAA006C */  lw          $t2, 0x6c($sp)
/* 01D850 8001DCA0 8C790000 */  lw          $t9, 0x0($v1)
/* 01D854 8001DCA4 01424821 */  addu        $t1, $t2, $v0
/* 01D858 8001DCA8 AD390020 */  sw          $t9, 0x20($t1)
/* 01D85C 8001DCAC 8FAE006C */  lw          $t6, 0x6c($sp)
/* 01D860 8001DCB0 8C6B0004 */  lw          $t3, 0x4($v1)
/* 01D864 8001DCB4 01C26021 */  addu        $t4, $t6, $v0
/* 01D868 8001DCB8 AD8B0024 */  sw          $t3, 0x24($t4)
/* 01D86C 8001DCBC 8DAD12E0 */  lw          $t5, %lo(D_800612E0)($t5)
/* 01D870 8001DCC0 24420020 */  addiu       $v0, $v0, 0x20
/* 01D874 8001DCC4 008D082A */  slt         $at, $a0, $t5
/* 01D878 8001DCC8 5420FFBA */  bnel        $at, $zero, .L8001DBB4
/* 01D87C 8001DCCC 8C6E0008 */   lw         $t6, 0x8($v1)
.L8001DCD0:
/* 01D880 8001DCD0 3C0A8004 */  lui         $t2, %hi(func_80045AE0)
/* 01D884 8001DCD4 24080020 */  addiu       $t0, $zero, 0x20
/* 01D888 8001DCD8 240F0080 */  addiu       $t7, $zero, 0x80
/* 01D88C 8001DCDC 24180006 */  addiu       $t8, $zero, 0x6
/* 01D890 8001DCE0 254A5AE0 */  addiu       $t2, $t2, %lo(func_80045AE0)
/* 01D894 8001DCE4 AFA0004C */  sw          $zero, 0x4c($sp)
/* 01D898 8001DCE8 AFA80050 */  sw          $t0, 0x50($sp)
/* 01D89C 8001DCEC AFAF0054 */  sw          $t7, 0x54($sp)
/* 01D8A0 8001DCF0 A3B80068 */  sb          $t8, 0x68($sp)
/* 01D8A4 8001DCF4 AFB10060 */  sw          $s1, 0x60($sp)
/* 01D8A8 8001DCF8 AFAA005C */  sw          $t2, 0x5c($sp)
/* 01D8AC 8001DCFC 0C013910 */  jal         func_8004E440
/* 01D8B0 8001DD00 02002025 */   move       $a0, $s0
/* 01D8B4 8001DD04 3C10800F */  lui         $s0, %hi(D_800F10E8)
/* 01D8B8 8001DD08 261010E8 */  addiu       $s0, $s0, %lo(D_800F10E8)
/* 01D8BC 8001DD0C AFA20064 */  sw          $v0, 0x64($sp)
/* 01D8C0 8001DD10 02002025 */  move        $a0, $s0
/* 01D8C4 8001DD14 0C012700 */  jal         func_80049C00
/* 01D8C8 8001DD18 27A5004C */   addiu      $a1, $sp, 0x4c
/* 01D8CC 8001DD1C 3C05008C */  lui         $a1, 0x8c
/* 01D8D0 8001DD20 3C06008D */  lui         $a2, 0x8d
/* 01D8D4 8001DD24 3C07008D */  lui         $a3, 0x8d
/* 01D8D8 8001DD28 24E79FD0 */  addiu       $a3, $a3, -0x6030
/* 01D8DC 8001DD2C 24C69FD0 */  addiu       $a2, $a2, -0x6030
/* 01D8E0 8001DD30 24A58A20 */  addiu       $a1, $a1, -0x75e0
/* 01D8E4 8001DD34 0C0079D8 */  jal         func_8001E760
/* 01D8E8 8001DD38 02202025 */   move       $a0, $s1
/* 01D8EC 8001DD3C 3C038009 */  lui         $v1, %hi(D_8008E420)
/* 01D8F0 8001DD40 2463E420 */  addiu       $v1, $v1, %lo(D_8008E420)
/* 01D8F4 8001DD44 AC620000 */  sw          $v0, 0x0($v1)
/* 01D8F8 8001DD48 02202025 */  move        $a0, $s1
/* 01D8FC 8001DD4C 0C0077A6 */  jal         func_8001DE98
/* 01D900 8001DD50 00402825 */   move       $a1, $v0
/* 01D904 8001DD54 02002025 */  move        $a0, $s0
/* 01D908 8001DD58 02202825 */  move        $a1, $s1
/* 01D90C 8001DD5C 0C007DEB */  jal         func_8001F7AC
/* 01D910 8001DD60 24060020 */   addiu      $a2, $zero, 0x20
/* 01D914 8001DD64 3C198005 */  lui         $t9, %hi(func_80049DA8)
/* 01D918 8001DD68 3C098006 */  lui         $t1, %hi(func_8005DFF0)
/* 01D91C 8001DD6C 3C0E800B */  lui         $t6, %hi(D_800ACD70)
/* 01D920 8001DD70 3C01800F */  lui         $at, %hi(D_800F10E0)
/* 01D924 8001DD74 25CECD70 */  addiu       $t6, $t6, %lo(D_800ACD70)
/* 01D928 8001DD78 2529DFF0 */  addiu       $t1, $t1, %lo(func_8005DFF0)
/* 01D92C 8001DD7C 27399DA8 */  addiu       $t9, $t9, %lo(func_80049DA8)
/* 01D930 8001DD80 240B00B8 */  addiu       $t3, $zero, 0xb8
/* 01D934 8001DD84 240C0200 */  addiu       $t4, $zero, 0x200
/* 01D938 8001DD88 AC2210E0 */  sw          $v0, %lo(D_800F10E0)($at)
/* 01D93C 8001DD8C AFAC0020 */  sw          $t4, 0x20($sp)
/* 01D940 8001DD90 AFAB001C */  sw          $t3, 0x1c($sp)
/* 01D944 8001DD94 AFB90010 */  sw          $t9, 0x10($sp)
/* 01D948 8001DD98 AFA90014 */  sw          $t1, 0x14($sp)
/* 01D94C 8001DD9C AFAE0018 */  sw          $t6, 0x18($sp)
/* 01D950 8001DDA0 8FA40080 */  lw          $a0, 0x80($sp)
/* 01D954 8001DDA4 02202825 */  move        $a1, $s1
/* 01D958 8001DDA8 8FA60084 */  lw          $a2, 0x84($sp)
/* 01D95C 8001DDAC 0C01180E */  jal         func_80046038
/* 01D960 8001DDB0 8FA70088 */   lw         $a3, 0x88($sp)
/* 01D964 8001DDB4 8FA80074 */  lw          $t0, 0x74($sp)
/* 01D968 8001DDB8 8FAF0070 */  lw          $t7, 0x70($sp)
/* 01D96C 8001DDBC 240D0001 */  addiu       $t5, $zero, 0x1
/* 01D970 8001DDC0 3C018009 */  lui         $at, %hi(D_8008E424)
/* 01D974 8001DDC4 AC2DE424 */  sw          $t5, %lo(D_8008E424)($at)
/* 01D978 8001DDC8 3C010003 */  lui         $at, 0x3
/* 01D97C 8001DDCC 34215B61 */  ori         $at, $at, 0x5b61
/* 01D980 8001DDD0 010F1823 */  subu        $v1, $t0, $t7
/* 01D984 8001DDD4 0061082A */  slt         $at, $v1, $at
/* 01D988 8001DDD8 14200003 */  bnez        $at, .L8001DDE8
/* 01D98C 8001DDDC 00601025 */   move       $v0, $v1
.L8001DDE0:
/* 01D990 8001DDE0 1000FFFF */  b           .L8001DDE0
/* 01D994 8001DDE4 00000000 */   nop
.L8001DDE8:
/* 01D998 8001DDE8 8FBF0034 */  lw          $ra, 0x34($sp)
/* 01D99C 8001DDEC 8FB0002C */  lw          $s0, 0x2c($sp)
/* 01D9A0 8001DDF0 8FB10030 */  lw          $s1, 0x30($sp)
/* 01D9A4 8001DDF4 03E00008 */  jr          $ra
/* 01D9A8 8001DDF8 27BD0080 */   addiu      $sp, $sp, 0x80

glabel func_8001DDFC # 1
/* 01D9AC 8001DDFC 3C028009 */  lui         $v0, %hi(D_8008E424)
/* 01D9B0 8001DE00 2442E424 */  addiu       $v0, $v0, %lo(D_8008E424)
/* 01D9B4 8001DE04 8C4E0000 */  lw          $t6, 0x0($v0)
/* 01D9B8 8001DE08 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01D9BC 8001DE0C AFBF0014 */  sw          $ra, 0x14($sp)
/* 01D9C0 8001DE10 15C00003 */  bnez        $t6, .L8001DE20
/* 01D9C4 8001DE14 00000000 */   nop
/* 01D9C8 8001DE18 10000007 */  b           .L8001DE38
/* 01D9CC 8001DE1C 00001025 */   move       $v0, $zero
.L8001DE20:
/* 01D9D0 8001DE20 0C011800 */  jal         func_80046000
/* 01D9D4 8001DE24 AC400000 */   sw         $zero, 0x0($v0)
/* 01D9D8 8001DE28 3C04800F */  lui         $a0, %hi(D_800F10E8)
/* 01D9DC 8001DE2C 0C0126F0 */  jal         func_80049BC0
/* 01D9E0 8001DE30 248410E8 */   addiu      $a0, $a0, %lo(D_800F10E8)
/* 01D9E4 8001DE34 2402FFFF */  addiu       $v0, $zero, -0x1
.L8001DE38:
/* 01D9E8 8001DE38 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01D9EC 8001DE3C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01D9F0 8001DE40 03E00008 */  jr          $ra
/* 01D9F4 8001DE44 00000000 */   nop

glabel func_8001DE48 # 2
/* 01D9F8 8001DE48 3C018009 */  lui         $at, %hi(D_8008E428)
/* 01D9FC 8001DE4C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01DA00 8001DE50 00802825 */  move        $a1, $a0
/* 01DA04 8001DE54 AC24E428 */  sw          $a0, %lo(D_8008E428)($at)
/* 01DA08 8001DE58 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01DA0C 8001DE5C 3C04800F */  lui         $a0, %hi(D_800F1148)
/* 01DA10 8001DE60 24841148 */  addiu       $a0, $a0, %lo(D_800F1148)
/* 01DA14 8001DE64 0C0017F8 */  jal         func_80005FE0
/* 01DA18 8001DE68 AFA50018 */   sw         $a1, 0x18($sp)
/* 01DA1C 8001DE6C 3C04800F */  lui         $a0, %hi(D_800F10E0)
/* 01DA20 8001DE70 8FA50018 */  lw          $a1, 0x18($sp)
/* 01DA24 8001DE74 0C007DB0 */  jal         func_8001F6C0
/* 01DA28 8001DE78 8C8410E0 */   lw         $a0, %lo(D_800F10E0)($a0)
/* 01DA2C 8001DE7C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01DA30 8001DE80 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01DA34 8001DE84 03E00008 */  jr          $ra
/* 01DA38 8001DE88 00000000 */   nop

glabel func_8001DE8C # 3
/* 01DA3C 8001DE8C 3C028009 */  lui         $v0, %hi(D_8008E428)
/* 01DA40 8001DE90 03E00008 */  jr          $ra
/* 01DA44 8001DE94 8C42E428 */   lw         $v0, %lo(D_8008E428)($v0)

glabel func_8001DE98 # 4
/* 01DA48 8001DE98 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 01DA4C 8001DE9C AFB5003C */  sw          $s5, 0x3c($sp)
/* 01DA50 8001DEA0 AFB40038 */  sw          $s4, 0x38($sp)
/* 01DA54 8001DEA4 00A0A025 */  move        $s4, $a1
/* 01DA58 8001DEA8 3C15800F */  lui         $s5, %hi(D_800F1148)
/* 01DA5C 8001DEAC 3C0E800F */  lui         $t6, %hi(D_800F3198)
/* 01DA60 8001DEB0 26B51148 */  addiu       $s5, $s5, %lo(D_800F1148)
/* 01DA64 8001DEB4 AFBF0044 */  sw          $ra, 0x44($sp)
/* 01DA68 8001DEB8 AFA40048 */  sw          $a0, 0x48($sp)
/* 01DA6C 8001DEBC 25CE3198 */  addiu       $t6, $t6, %lo(D_800F3198)
/* 01DA70 8001DEC0 3C05800A */  lui         $a1, %hi(D_800A2E60)
/* 01DA74 8001DEC4 AFB60040 */  sw          $s6, 0x40($sp)
/* 01DA78 8001DEC8 AFB30034 */  sw          $s3, 0x34($sp)
/* 01DA7C 8001DECC AFB20030 */  sw          $s2, 0x30($sp)
/* 01DA80 8001DED0 AFB1002C */  sw          $s1, 0x2c($sp)
/* 01DA84 8001DED4 AFB00028 */  sw          $s0, 0x28($sp)
/* 01DA88 8001DED8 8CA52E60 */  lw          $a1, %lo(D_800A2E60)($a1)
/* 01DA8C 8001DEDC AFAE0010 */  sw          $t6, 0x10($sp)
/* 01DA90 8001DEE0 02A02025 */  move        $a0, $s5
/* 01DA94 8001DEE4 24060002 */  addiu       $a2, $zero, 0x2
/* 01DA98 8001DEE8 0C001788 */  jal         func_80005E20
/* 01DA9C 8001DEEC 24070028 */   addiu      $a3, $zero, 0x28
/* 01DAA0 8001DEF0 3C10800F */  lui         $s0, %hi(D_800F1170)
/* 01DAA4 8001DEF4 3C11800F */  lui         $s1, %hi(D_800F1370)
/* 01DAA8 8001DEF8 3C12800F */  lui         $s2, %hi(D_800F194C)
/* 01DAAC 8001DEFC 3C138000 */  lui         $s3, %hi(func_800043E4)
/* 01DAB0 8001DF00 3C16800F */  lui         $s6, %hi(D_800F390C)
/* 01DAB4 8001DF04 26D6390C */  addiu       $s6, $s6, %lo(D_800F390C)
/* 01DAB8 8001DF08 267343E4 */  addiu       $s3, $s3, %lo(func_800043E4)
/* 01DABC 8001DF0C 2652194C */  addiu       $s2, $s2, %lo(D_800F194C)
/* 01DAC0 8001DF10 26311370 */  addiu       $s1, $s1, %lo(D_800F1370)
/* 01DAC4 8001DF14 26101170 */  addiu       $s0, $s0, %lo(D_800F1170)
.L8001DF18:
/* 01DAC8 8001DF18 0C001074 */  jal         func_800041D0
/* 01DACC 8001DF1C 02202025 */   move       $a0, $s1
/* 01DAD0 8001DF20 AE0007D8 */  sw          $zero, 0x7d8($s0)
/* 01DAD4 8001DF24 8E860004 */  lw          $a2, 0x4($s4)
/* 01DAD8 8001DF28 AFB30018 */  sw          $s3, 0x18($sp)
/* 01DADC 8001DF2C AFB10014 */  sw          $s1, 0x14($sp)
/* 01DAE0 8001DF30 AFB20010 */  sw          $s2, 0x10($sp)
/* 01DAE4 8001DF34 02002025 */  move        $a0, $s0
/* 01DAE8 8001DF38 02A02825 */  move        $a1, $s5
/* 01DAEC 8001DF3C 0C0012AA */  jal         func_80004AA8
/* 01DAF0 8001DF40 24070014 */   addiu      $a3, $zero, 0x14
/* 01DAF4 8001DF44 265207F0 */  addiu       $s2, $s2, 0x7f0
/* 01DAF8 8001DF48 261007F0 */  addiu       $s0, $s0, 0x7f0
/* 01DAFC 8001DF4C 1656FFF2 */  bne         $s2, $s6, .L8001DF18
/* 01DB00 8001DF50 263107F0 */   addiu      $s1, $s1, 0x7f0
/* 01DB04 8001DF54 8FBF0044 */  lw          $ra, 0x44($sp)
/* 01DB08 8001DF58 8FB00028 */  lw          $s0, 0x28($sp)
/* 01DB0C 8001DF5C 8FB1002C */  lw          $s1, 0x2c($sp)
/* 01DB10 8001DF60 8FB20030 */  lw          $s2, 0x30($sp)
/* 01DB14 8001DF64 8FB30034 */  lw          $s3, 0x34($sp)
/* 01DB18 8001DF68 8FB40038 */  lw          $s4, 0x38($sp)
/* 01DB1C 8001DF6C 8FB5003C */  lw          $s5, 0x3c($sp)
/* 01DB20 8001DF70 8FB60040 */  lw          $s6, 0x40($sp)
/* 01DB24 8001DF74 03E00008 */  jr          $ra
/* 01DB28 8001DF78 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_8001DF7C # 5
/* 01DB2C 8001DF7C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 01DB30 8001DF80 AFB20028 */  sw          $s2, 0x28($sp)
/* 01DB34 8001DF84 AFB10024 */  sw          $s1, 0x24($sp)
/* 01DB38 8001DF88 AFB00020 */  sw          $s0, 0x20($sp)
/* 01DB3C 8001DF8C 3C10800F */  lui         $s0, %hi(D_800F1370)
/* 01DB40 8001DF90 3C11800F */  lui         $s1, %hi(D_800F1170)
/* 01DB44 8001DF94 3C12800F */  lui         $s2, %hi(D_800F3330)
/* 01DB48 8001DF98 AFBF002C */  sw          $ra, 0x2c($sp)
/* 01DB4C 8001DF9C AFA40030 */  sw          $a0, 0x30($sp)
/* 01DB50 8001DFA0 26523330 */  addiu       $s2, $s2, %lo(D_800F3330)
/* 01DB54 8001DFA4 26311170 */  addiu       $s1, $s1, %lo(D_800F1170)
/* 01DB58 8001DFA8 26101370 */  addiu       $s0, $s0, %lo(D_800F1370)
.L8001DFAC:
/* 01DB5C 8001DFAC 0C00115C */  jal         func_80004570
/* 01DB60 8001DFB0 02002025 */   move       $a0, $s0
/* 01DB64 8001DFB4 50400015 */  beql        $v0, $zero, .L8001E00C
/* 01DB68 8001DFB8 261007F0 */   addiu      $s0, $s0, 0x7f0
/* 01DB6C 8001DFBC 3C128009 */  lui         $s2, %hi(D_8008E434)
/* 01DB70 8001DFC0 2652E434 */  addiu       $s2, $s2, %lo(D_8008E434)
/* 01DB74 8001DFC4 8E4E0000 */  lw          $t6, 0x0($s2)
/* 01DB78 8001DFC8 02002025 */  move        $a0, $s0
/* 01DB7C 8001DFCC 8FA50030 */  lw          $a1, 0x30($sp)
/* 01DB80 8001DFD0 0C001082 */  jal         func_80004208
/* 01DB84 8001DFD4 AE2E07D8 */   sw         $t6, 0x7d8($s1)
/* 01DB88 8001DFD8 3C013FF0 */  lui         $at, 0x3ff0
/* 01DB8C 8001DFDC 44812800 */  mtc1        $at, $f5
/* 01DB90 8001DFE0 44802000 */  mtc1        $zero, $f4
/* 01DB94 8001DFE4 02002025 */  move        $a0, $s0
/* 01DB98 8001DFE8 24060000 */  addiu       $a2, $zero, 0x0
/* 01DB9C 8001DFEC 24070000 */  addiu       $a3, $zero, 0x0
/* 01DBA0 8001DFF0 0C0010BD */  jal         func_800042F4
/* 01DBA4 8001DFF4 F7A40010 */   sdc1       $f4, 0x10($sp)
/* 01DBA8 8001DFF8 8E420000 */  lw          $v0, 0x0($s2)
/* 01DBAC 8001DFFC 244F0001 */  addiu       $t7, $v0, 0x1
/* 01DBB0 8001E000 10000005 */  b           .L8001E018
/* 01DBB4 8001E004 AE4F0000 */   sw         $t7, 0x0($s2)
/* 01DBB8 8001E008 261007F0 */  addiu       $s0, $s0, 0x7f0
.L8001E00C:
/* 01DBBC 8001E00C 1612FFE7 */  bne         $s0, $s2, .L8001DFAC
/* 01DBC0 8001E010 263107F0 */   addiu      $s1, $s1, 0x7f0
/* 01DBC4 8001E014 00001025 */  move        $v0, $zero
.L8001E018:
/* 01DBC8 8001E018 8FBF002C */  lw          $ra, 0x2c($sp)
/* 01DBCC 8001E01C 8FB00020 */  lw          $s0, 0x20($sp)
/* 01DBD0 8001E020 8FB10024 */  lw          $s1, 0x24($sp)
/* 01DBD4 8001E024 8FB20028 */  lw          $s2, 0x28($sp)
/* 01DBD8 8001E028 03E00008 */  jr          $ra
/* 01DBDC 8001E02C 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8001E030 # 6
/* 01DBE0 8001E030 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01DBE4 8001E034 F7B40010 */  sdc1        $f20, 0x10($sp)
/* 01DBE8 8001E038 4487A000 */  mtc1        $a3, $f20
/* 01DBEC 8001E03C 4486A800 */  mtc1        $a2, $f21
/* 01DBF0 8001E040 308F0002 */  andi        $t7, $a0, 0x2
/* 01DBF4 8001E044 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01DBF8 8001E048 AFB10020 */  sw          $s1, 0x20($sp)
/* 01DBFC 8001E04C AFB0001C */  sw          $s0, 0x1c($sp)
/* 01DC00 8001E050 11E0000F */  beqz        $t7, .L8001E090
/* 01DC04 8001E054 AFA40028 */   sw         $a0, 0x28($sp)
/* 01DC08 8001E058 3C10800F */  lui         $s0, %hi(D_800F1170)
/* 01DC0C 8001E05C 3C11800F */  lui         $s1, %hi(D_800F3130)
/* 01DC10 8001E060 26313130 */  addiu       $s1, $s1, %lo(D_800F3130)
/* 01DC14 8001E064 26101170 */  addiu       $s0, $s0, %lo(D_800F1170)
/* 01DC18 8001E068 8E0407D8 */  lw          $a0, 0x7d8($s0)
.L8001E06C:
/* 01DC1C 8001E06C 50800006 */  beql        $a0, $zero, .L8001E088
/* 01DC20 8001E070 261007F0 */   addiu      $s0, $s0, 0x7f0
/* 01DC24 8001E074 4406A800 */  mfc1        $a2, $f21
/* 01DC28 8001E078 4407A000 */  mfc1        $a3, $f20
/* 01DC2C 8001E07C 0C0079A4 */  jal         func_8001E690
/* 01DC30 8001E080 00000000 */   nop
/* 01DC34 8001E084 261007F0 */  addiu       $s0, $s0, 0x7f0
.L8001E088:
/* 01DC38 8001E088 5611FFF8 */  bnel        $s0, $s1, .L8001E06C
/* 01DC3C 8001E08C 8E0407D8 */   lw         $a0, 0x7d8($s0)
.L8001E090:
/* 01DC40 8001E090 8FB80028 */  lw          $t8, 0x28($sp)
/* 01DC44 8001E094 3C04800F */  lui         $a0, %hi(D_800F10E0)
/* 01DC48 8001E098 33190001 */  andi        $t9, $t8, 0x1
/* 01DC4C 8001E09C 53200004 */  beql        $t9, $zero, .L8001E0B0
/* 01DC50 8001E0A0 8FBF0024 */   lw         $ra, 0x24($sp)
/* 01DC54 8001E0A4 0C007BB0 */  jal         func_8001EEC0
/* 01DC58 8001E0A8 8C8410E0 */   lw         $a0, %lo(D_800F10E0)($a0)
/* 01DC5C 8001E0AC 8FBF0024 */  lw          $ra, 0x24($sp)
.L8001E0B0:
/* 01DC60 8001E0B0 D7B40010 */  ldc1        $f20, 0x10($sp)
/* 01DC64 8001E0B4 8FB0001C */  lw          $s0, 0x1c($sp)
/* 01DC68 8001E0B8 8FB10020 */  lw          $s1, 0x20($sp)
/* 01DC6C 8001E0BC 03E00008 */  jr          $ra
/* 01DC70 8001E0C0 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8001E0C4 # 7
/* 01DC74 8001E0C4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01DC78 8001E0C8 AFB1001C */  sw          $s1, 0x1c($sp)
/* 01DC7C 8001E0CC 308F0002 */  andi        $t7, $a0, 0x2
/* 01DC80 8001E0D0 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01DC84 8001E0D4 AFB20020 */  sw          $s2, 0x20($sp)
/* 01DC88 8001E0D8 AFB00018 */  sw          $s0, 0x18($sp)
/* 01DC8C 8001E0DC AFA40028 */  sw          $a0, 0x28($sp)
/* 01DC90 8001E0E0 11E0000B */  beqz        $t7, .L8001E110
/* 01DC94 8001E0E4 00008825 */   move       $s1, $zero
/* 01DC98 8001E0E8 3C10800F */  lui         $s0, %hi(D_800F1370)
/* 01DC9C 8001E0EC 3C12800F */  lui         $s2, %hi(D_800F3330)
/* 01DCA0 8001E0F0 26523330 */  addiu       $s2, $s2, %lo(D_800F3330)
/* 01DCA4 8001E0F4 26101370 */  addiu       $s0, $s0, %lo(D_800F1370)
.L8001E0F8:
/* 01DCA8 8001E0F8 0C00115C */  jal         func_80004570
/* 01DCAC 8001E0FC 02002025 */   move       $a0, $s0
/* 01DCB0 8001E100 261007F0 */  addiu       $s0, $s0, 0x7f0
/* 01DCB4 8001E104 2C580001 */  sltiu       $t8, $v0, 0x1
/* 01DCB8 8001E108 1612FFFB */  bne         $s0, $s2, .L8001E0F8
/* 01DCBC 8001E10C 02388821 */   addu       $s1, $s1, $t8
.L8001E110:
/* 01DCC0 8001E110 8FB90028 */  lw          $t9, 0x28($sp)
/* 01DCC4 8001E114 3C04800F */  lui         $a0, %hi(D_800F10E0)
/* 01DCC8 8001E118 33280001 */  andi        $t0, $t9, 0x1
/* 01DCCC 8001E11C 51000005 */  beql        $t0, $zero, .L8001E134
/* 01DCD0 8001E120 8FBF0024 */   lw         $ra, 0x24($sp)
/* 01DCD4 8001E124 0C007D37 */  jal         func_8001F4DC
/* 01DCD8 8001E128 8C8410E0 */   lw         $a0, %lo(D_800F10E0)($a0)
/* 01DCDC 8001E12C 02228821 */  addu        $s1, $s1, $v0
/* 01DCE0 8001E130 8FBF0024 */  lw          $ra, 0x24($sp)
.L8001E134:
/* 01DCE4 8001E134 02201025 */  move        $v0, $s1
/* 01DCE8 8001E138 8FB1001C */  lw          $s1, 0x1c($sp)
/* 01DCEC 8001E13C 8FB00018 */  lw          $s0, 0x18($sp)
/* 01DCF0 8001E140 8FB20020 */  lw          $s2, 0x20($sp)
/* 01DCF4 8001E144 03E00008 */  jr          $ra
/* 01DCF8 8001E148 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8001E14C # 8
/* 01DCFC 8001E14C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01DD00 8001E150 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01DD04 8001E154 14800003 */  bnez        $a0, .L8001E164
/* 01DD08 8001E158 00802825 */   move       $a1, $a0
/* 01DD0C 8001E15C 10000013 */  b           .L8001E1AC
/* 01DD10 8001E160 00001025 */   move       $v0, $zero
.L8001E164:
/* 01DD14 8001E164 3C02800F */  lui         $v0, %hi(D_800F1170)
/* 01DD18 8001E168 3C03800F */  lui         $v1, %hi(D_800F3130)
/* 01DD1C 8001E16C 24633130 */  addiu       $v1, $v1, %lo(D_800F3130)
/* 01DD20 8001E170 24421170 */  addiu       $v0, $v0, %lo(D_800F1170)
/* 01DD24 8001E174 8C4E07D8 */  lw          $t6, 0x7d8($v0)
.L8001E178:
/* 01DD28 8001E178 54AE0007 */  bnel        $a1, $t6, .L8001E198
/* 01DD2C 8001E17C 244207F0 */   addiu      $v0, $v0, 0x7f0
/* 01DD30 8001E180 0C00115C */  jal         func_80004570
/* 01DD34 8001E184 24440200 */   addiu      $a0, $v0, 0x200
/* 01DD38 8001E188 2C4F0001 */  sltiu       $t7, $v0, 0x1
/* 01DD3C 8001E18C 10000007 */  b           .L8001E1AC
/* 01DD40 8001E190 01E01025 */   move       $v0, $t7
/* 01DD44 8001E194 244207F0 */  addiu       $v0, $v0, 0x7f0
.L8001E198:
/* 01DD48 8001E198 5443FFF7 */  bnel        $v0, $v1, .L8001E178
/* 01DD4C 8001E19C 8C4E07D8 */   lw         $t6, 0x7d8($v0)
/* 01DD50 8001E1A0 3C04800F */  lui         $a0, %hi(D_800F10E0)
/* 01DD54 8001E1A4 0C007D4B */  jal         func_8001F52C
/* 01DD58 8001E1A8 8C8410E0 */   lw         $a0, %lo(D_800F10E0)($a0)
.L8001E1AC:
/* 01DD5C 8001E1AC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01DD60 8001E1B0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01DD64 8001E1B4 03E00008 */  jr          $ra
/* 01DD68 8001E1B8 00000000 */   nop

glabel func_8001E1BC # 9
/* 01DD6C 8001E1BC 24070058 */  addiu       $a3, $zero, 0x58
/* 01DD70 8001E1C0 0087001A */  div         $zero, $a0, $a3
/* 01DD74 8001E1C4 3C0E8009 */  lui         $t6, %hi(D_8008E420)
/* 01DD78 8001E1C8 8DCEE420 */  lw          $t6, %lo(D_8008E420)($t6)
/* 01DD7C 8001E1CC 00001812 */  mflo        $v1
/* 01DD80 8001E1D0 2463007C */  addiu       $v1, $v1, 0x7c
/* 01DD84 8001E1D4 8DC20004 */  lw          $v0, 0x4($t6)
/* 01DD88 8001E1D8 14E00002 */  bnez        $a3, .L8001E1E4
/* 01DD8C 8001E1DC 00000000 */   nop
/* 01DD90 8001E1E0 0007000D */  break       7
.L8001E1E4:
/* 01DD94 8001E1E4 2401FFFF */  addiu       $at, $zero, -0x1
/* 01DD98 8001E1E8 14E10004 */  bne         $a3, $at, .L8001E1FC
/* 01DD9C 8001E1EC 3C018000 */   lui        $at, 0x8000
/* 01DDA0 8001E1F0 14810002 */  bne         $a0, $at, .L8001E1FC
/* 01DDA4 8001E1F4 00000000 */   nop
/* 01DDA8 8001E1F8 0006000D */  break       6
.L8001E1FC:
/* 01DDAC 8001E1FC 844F0000 */  lh          $t7, 0x0($v0)
/* 01DDB0 8001E200 0003C080 */  sll         $t8, $v1, 2
/* 01DDB4 8001E204 0058C821 */  addu        $t9, $v0, $t8
/* 01DDB8 8001E208 006F082A */  slt         $at, $v1, $t7
/* 01DDBC 8001E20C 10200014 */  beqz        $at, .L8001E260
/* 01DDC0 8001E210 00001025 */   move       $v0, $zero
/* 01DDC4 8001E214 0087001A */  div         $zero, $a0, $a3
/* 01DDC8 8001E218 8F26000C */  lw          $a2, 0xc($t9)
/* 01DDCC 8001E21C 14E00002 */  bnez        $a3, .L8001E228
/* 01DDD0 8001E220 00000000 */   nop
/* 01DDD4 8001E224 0007000D */  break       7
.L8001E228:
/* 01DDD8 8001E228 2401FFFF */  addiu       $at, $zero, -0x1
/* 01DDDC 8001E22C 14E10004 */  bne         $a3, $at, .L8001E240
/* 01DDE0 8001E230 3C018000 */   lui        $at, 0x8000
/* 01DDE4 8001E234 14810002 */  bne         $a0, $at, .L8001E240
/* 01DDE8 8001E238 00000000 */   nop
/* 01DDEC 8001E23C 0006000D */  break       6
.L8001E240:
/* 01DDF0 8001E240 84C8000E */  lh          $t0, 0xe($a2)
/* 01DDF4 8001E244 00002810 */  mfhi        $a1
/* 01DDF8 8001E248 00054880 */  sll         $t1, $a1, 2
/* 01DDFC 8001E24C 00A8082A */  slt         $at, $a1, $t0
/* 01DE00 8001E250 10200003 */  beqz        $at, .L8001E260
/* 01DE04 8001E254 00C95021 */   addu       $t2, $a2, $t1
/* 01DE08 8001E258 03E00008 */  jr          $ra
/* 01DE0C 8001E25C 8D420010 */   lw         $v0, 0x10($t2)
.L8001E260:
/* 01DE10 8001E260 03E00008 */  jr          $ra
/* 01DE14 8001E264 00000000 */   nop

glabel func_8001E268 # 10
/* 01DE18 8001E268 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01DE1C 8001E26C AFBF0014 */  sw          $ra, 0x14($sp)
/* 01DE20 8001E270 0C00786F */  jal         func_8001E1BC
/* 01DE24 8001E274 00000000 */   nop
/* 01DE28 8001E278 3C04800F */  lui         $a0, %hi(D_800F10E0)
/* 01DE2C 8001E27C 8C8410E0 */  lw          $a0, %lo(D_800F10E0)($a0)
/* 01DE30 8001E280 0C007AB4 */  jal         func_8001EAD0
/* 01DE34 8001E284 00402825 */   move       $a1, $v0
/* 01DE38 8001E288 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01DE3C 8001E28C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01DE40 8001E290 03E00008 */  jr          $ra
/* 01DE44 8001E294 00000000 */   nop

glabel func_8001E298 # 11
/* 01DE48 8001E298 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01DE4C 8001E29C 00A03025 */  move        $a2, $a1
/* 01DE50 8001E2A0 00802825 */  move        $a1, $a0
/* 01DE54 8001E2A4 AFA40018 */  sw          $a0, 0x18($sp)
/* 01DE58 8001E2A8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01DE5C 8001E2AC 3C04800F */  lui         $a0, %hi(D_800F10E0)
/* 01DE60 8001E2B0 8C8410E0 */  lw          $a0, %lo(D_800F10E0)($a0)
/* 01DE64 8001E2B4 0C007C99 */  jal         func_8001F264
/* 01DE68 8001E2B8 2407FFFF */   addiu      $a3, $zero, -0x1
/* 01DE6C 8001E2BC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01DE70 8001E2C0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01DE74 8001E2C4 03E00008 */  jr          $ra
/* 01DE78 8001E2C8 00000000 */   nop

glabel func_8001E2CC # 12
/* 01DE7C 8001E2CC 00A03025 */  move        $a2, $a1
/* 01DE80 8001E2D0 000671C0 */  sll         $t6, $a2, 7
/* 01DE84 8001E2D4 01C67023 */  subu        $t6, $t6, $a2
/* 01DE88 8001E2D8 01C03025 */  move        $a2, $t6
/* 01DE8C 8001E2DC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01DE90 8001E2E0 AFA40018 */  sw          $a0, 0x18($sp)
/* 01DE94 8001E2E4 00802825 */  move        $a1, $a0
/* 01DE98 8001E2E8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01DE9C 8001E2EC 04C10003 */  bgez        $a2, .L8001E2FC
/* 01DEA0 8001E2F0 00067A03 */   sra        $t7, $a2, 8
/* 01DEA4 8001E2F4 24C100FF */  addiu       $at, $a2, 0xff
/* 01DEA8 8001E2F8 00017A03 */  sra         $t7, $at, 8
.L8001E2FC:
/* 01DEAC 8001E2FC 3C04800F */  lui         $a0, %hi(D_800F10E0)
/* 01DEB0 8001E300 01E03025 */  move        $a2, $t7
/* 01DEB4 8001E304 0C007C1A */  jal         func_8001F068
/* 01DEB8 8001E308 8C8410E0 */   lw         $a0, %lo(D_800F10E0)($a0)
/* 01DEBC 8001E30C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01DEC0 8001E310 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01DEC4 8001E314 03E00008 */  jr          $ra
/* 01DEC8 8001E318 00000000 */   nop

glabel func_8001E31C # 13
/* 01DECC 8001E31C 3C0142C8 */  lui         $at, 0x42c8
/* 01DED0 8001E320 44856000 */  mtc1        $a1, $f12
/* 01DED4 8001E324 44812000 */  mtc1        $at, $f4
/* 01DED8 8001E328 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01DEDC 8001E32C AFA40018 */  sw          $a0, 0x18($sp)
/* 01DEE0 8001E330 46046182 */  mul.s       $f6, $f12, $f4
/* 01DEE4 8001E334 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01DEE8 8001E338 4600320D */  trunc.w.s   $f8, $f6
/* 01DEEC 8001E33C 44044000 */  mfc1        $a0, $f8
/* 01DEF0 8001E340 0C0142B8 */  jal         func_80050AE0
/* 01DEF4 8001E344 00000000 */   nop
/* 01DEF8 8001E348 460002A1 */  cvt.d.s     $f10, $f0
/* 01DEFC 8001E34C 3C04800F */  lui         $a0, %hi(D_800F10E0)
/* 01DF00 8001E350 44075000 */  mfc1        $a3, $f10
/* 01DF04 8001E354 44065800 */  mfc1        $a2, $f11
/* 01DF08 8001E358 8C8410E0 */  lw          $a0, %lo(D_800F10E0)($a0)
/* 01DF0C 8001E35C 0C007C58 */  jal         func_8001F160
/* 01DF10 8001E360 8FA50018 */   lw         $a1, 0x18($sp)
/* 01DF14 8001E364 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01DF18 8001E368 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01DF1C 8001E36C 03E00008 */  jr          $ra
/* 01DF20 8001E370 00000000 */   nop

glabel func_8001E374 # 14
/* 01DF24 8001E374 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01DF28 8001E378 00A03025 */  move        $a2, $a1
/* 01DF2C 8001E37C 00802825 */  move        $a1, $a0
/* 01DF30 8001E380 AFA40018 */  sw          $a0, 0x18($sp)
/* 01DF34 8001E384 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01DF38 8001E388 3C04800F */  lui         $a0, %hi(D_800F10E0)
/* 01DF3C 8001E38C 0C007CFE */  jal         func_8001F3F8
/* 01DF40 8001E390 8C8410E0 */   lw         $a0, %lo(D_800F10E0)($a0)
/* 01DF44 8001E394 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01DF48 8001E398 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01DF4C 8001E39C 03E00008 */  jr          $ra
/* 01DF50 8001E3A0 00000000 */   nop

glabel func_8001E3A4 # 15
/* 01DF54 8001E3A4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01DF58 8001E3A8 44876000 */  mtc1        $a3, $f12
/* 01DF5C 8001E3AC 44866800 */  mtc1        $a2, $f13
/* 01DF60 8001E3B0 14800003 */  bnez        $a0, .L8001E3C0
/* 01DF64 8001E3B4 AFBF0014 */   sw         $ra, 0x14($sp)
/* 01DF68 8001E3B8 10000012 */  b           .L8001E404
/* 01DF6C 8001E3BC 00001025 */   move       $v0, $zero
.L8001E3C0:
/* 01DF70 8001E3C0 3C02800F */  lui         $v0, %hi(D_800F1170)
/* 01DF74 8001E3C4 3C03800F */  lui         $v1, %hi(D_800F3130)
/* 01DF78 8001E3C8 24633130 */  addiu       $v1, $v1, %lo(D_800F3130)
/* 01DF7C 8001E3CC 24421170 */  addiu       $v0, $v0, %lo(D_800F1170)
/* 01DF80 8001E3D0 8C4E07D8 */  lw          $t6, 0x7d8($v0)
.L8001E3D4:
/* 01DF84 8001E3D4 548E0008 */  bnel        $a0, $t6, .L8001E3F8
/* 01DF88 8001E3D8 244207F0 */   addiu      $v0, $v0, 0x7f0
/* 01DF8C 8001E3DC 44066800 */  mfc1        $a2, $f13
/* 01DF90 8001E3E0 44076000 */  mfc1        $a3, $f12
/* 01DF94 8001E3E4 0C001164 */  jal         func_80004590
/* 01DF98 8001E3E8 24440200 */   addiu      $a0, $v0, 0x200
/* 01DF9C 8001E3EC 10000005 */  b           .L8001E404
/* 01DFA0 8001E3F0 24020001 */   addiu      $v0, $zero, 0x1
/* 01DFA4 8001E3F4 244207F0 */  addiu       $v0, $v0, 0x7f0
.L8001E3F8:
/* 01DFA8 8001E3F8 5443FFF6 */  bnel        $v0, $v1, .L8001E3D4
/* 01DFAC 8001E3FC 8C4E07D8 */   lw         $t6, 0x7d8($v0)
/* 01DFB0 8001E400 00001025 */  move        $v0, $zero
.L8001E404:
/* 01DFB4 8001E404 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01DFB8 8001E408 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01DFBC 8001E40C 03E00008 */  jr          $ra
/* 01DFC0 8001E410 00000000 */   nop

glabel func_8001E414 # 16
/* 01DFC4 8001E414 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01DFC8 8001E418 14800006 */  bnez        $a0, .L8001E434
/* 01DFCC 8001E41C AFBF0014 */   sw         $ra, 0x14($sp)
/* 01DFD0 8001E420 3C01BFF0 */  lui         $at, 0xbff0
/* 01DFD4 8001E424 44810800 */  mtc1        $at, $f1
/* 01DFD8 8001E428 44800000 */  mtc1        $zero, $f0
/* 01DFDC 8001E42C 10000014 */  b           .L8001E480
/* 01DFE0 8001E430 8FBF0014 */   lw         $ra, 0x14($sp)
.L8001E434:
/* 01DFE4 8001E434 3C02800F */  lui         $v0, %hi(D_800F1170)
/* 01DFE8 8001E438 3C03800F */  lui         $v1, %hi(D_800F3130)
/* 01DFEC 8001E43C 24633130 */  addiu       $v1, $v1, %lo(D_800F3130)
/* 01DFF0 8001E440 24421170 */  addiu       $v0, $v0, %lo(D_800F1170)
/* 01DFF4 8001E444 8C4E07D8 */  lw          $t6, 0x7d8($v0)
.L8001E448:
/* 01DFF8 8001E448 548E0006 */  bnel        $a0, $t6, .L8001E464
/* 01DFFC 8001E44C 244207F0 */   addiu      $v0, $v0, 0x7f0
/* 01E000 8001E450 0C001170 */  jal         func_800045C0
/* 01E004 8001E454 24440200 */   addiu      $a0, $v0, 0x200
/* 01E008 8001E458 10000009 */  b           .L8001E480
/* 01E00C 8001E45C 8FBF0014 */   lw         $ra, 0x14($sp)
/* 01E010 8001E460 244207F0 */  addiu       $v0, $v0, 0x7f0
.L8001E464:
/* 01E014 8001E464 5443FFF8 */  bnel        $v0, $v1, .L8001E448
/* 01E018 8001E468 8C4E07D8 */   lw         $t6, 0x7d8($v0)
/* 01E01C 8001E46C 3C01BFF0 */  lui         $at, 0xbff0
/* 01E020 8001E470 44810800 */  mtc1        $at, $f1
/* 01E024 8001E474 44800000 */  mtc1        $zero, $f0
/* 01E028 8001E478 00000000 */  nop
/* 01E02C 8001E47C 8FBF0014 */  lw          $ra, 0x14($sp)
.L8001E480:
/* 01E030 8001E480 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01E034 8001E484 03E00008 */  jr          $ra
/* 01E038 8001E488 00000000 */   nop

glabel func_8001E48C # 17
/* 01E03C 8001E48C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01E040 8001E490 308F0002 */  andi        $t7, $a0, 0x2
/* 01E044 8001E494 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01E048 8001E498 AFA40018 */  sw          $a0, 0x18($sp)
/* 01E04C 8001E49C 11E0000C */  beqz        $t7, .L8001E4D0
/* 01E050 8001E4A0 AFA5001C */   sw         $a1, 0x1c($sp)
/* 01E054 8001E4A4 44852000 */  mtc1        $a1, $f4
/* 01E058 8001E4A8 3C01800B */  lui         $at, %hi(D_800A98B0)
/* 01E05C 8001E4AC D42898B0 */  ldc1        $f8, %lo(D_800A98B0)($at)
/* 01E060 8001E4B0 468021A1 */  cvt.d.w     $f6, $f4
/* 01E064 8001E4B4 3C04800F */  lui         $a0, %hi(D_800F1148)
/* 01E068 8001E4B8 24841148 */  addiu       $a0, $a0, %lo(D_800F1148)
/* 01E06C 8001E4BC 46283283 */  div.d       $f10, $f6, $f8
/* 01E070 8001E4C0 44075000 */  mfc1        $a3, $f10
/* 01E074 8001E4C4 44065800 */  mfc1        $a2, $f11
/* 01E078 8001E4C8 0C0017CE */  jal         func_80005F38
/* 01E07C 8001E4CC 00000000 */   nop
.L8001E4D0:
/* 01E080 8001E4D0 8FB90018 */  lw          $t9, 0x18($sp)
/* 01E084 8001E4D4 3C04800F */  lui         $a0, %hi(D_800F10E0)
/* 01E088 8001E4D8 8FA5001C */  lw          $a1, 0x1c($sp)
/* 01E08C 8001E4DC 33280001 */  andi        $t0, $t9, 0x1
/* 01E090 8001E4E0 51000004 */  beql        $t0, $zero, .L8001E4F4
/* 01E094 8001E4E4 8FBF0014 */   lw         $ra, 0x14($sp)
/* 01E098 8001E4E8 0C007DE8 */  jal         func_8001F7A0
/* 01E09C 8001E4EC 8C8410E0 */   lw         $a0, %lo(D_800F10E0)($a0)
/* 01E0A0 8001E4F0 8FBF0014 */  lw          $ra, 0x14($sp)
.L8001E4F4:
/* 01E0A4 8001E4F4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01E0A8 8001E4F8 03E00008 */  jr          $ra
/* 01E0AC 8001E4FC 00000000 */   nop

glabel func_8001E500 # 18
/* 01E0B0 8001E500 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 01E0B4 8001E504 F7BA0030 */  sdc1        $f26, 0x30($sp)
/* 01E0B8 8001E508 4487D000 */  mtc1        $a3, $f26
/* 01E0BC 8001E50C 4486D800 */  mtc1        $a2, $f27
/* 01E0C0 8001E510 AFBF004C */  sw          $ra, 0x4c($sp)
/* 01E0C4 8001E514 AFB30048 */  sw          $s3, 0x48($sp)
/* 01E0C8 8001E518 AFB20044 */  sw          $s2, 0x44($sp)
/* 01E0CC 8001E51C AFB10040 */  sw          $s1, 0x40($sp)
/* 01E0D0 8001E520 AFB0003C */  sw          $s0, 0x3c($sp)
/* 01E0D4 8001E524 F7B80028 */  sdc1        $f24, 0x28($sp)
/* 01E0D8 8001E528 F7B60020 */  sdc1        $f22, 0x20($sp)
/* 01E0DC 8001E52C 0C0077DF */  jal         func_8001DF7C
/* 01E0E0 8001E530 F7B40018 */   sdc1       $f20, 0x18($sp)
/* 01E0E4 8001E534 3C013FF0 */  lui         $at, 0x3ff0
/* 01E0E8 8001E538 4481C800 */  mtc1        $at, $f25
/* 01E0EC 8001E53C 3C01800B */  lui         $at, %hi(D_800A98B8)
/* 01E0F0 8001E540 3C10800F */  lui         $s0, %hi(D_800F1170)
/* 01E0F4 8001E544 3C12800F */  lui         $s2, %hi(D_800F3130)
/* 01E0F8 8001E548 4480C000 */  mtc1        $zero, $f24
/* 01E0FC 8001E54C 4480A800 */  mtc1        $zero, $f21
/* 01E100 8001E550 4480A000 */  mtc1        $zero, $f20
/* 01E104 8001E554 00409825 */  move        $s3, $v0
/* 01E108 8001E558 26523130 */  addiu       $s2, $s2, %lo(D_800F3130)
/* 01E10C 8001E55C 26101170 */  addiu       $s0, $s0, %lo(D_800F1170)
/* 01E110 8001E560 D43698B8 */  ldc1        $f22, %lo(D_800A98B8)($at)
/* 01E114 8001E564 8E0E07D8 */  lw          $t6, 0x7d8($s0)
.L8001E568:
/* 01E118 8001E568 26110200 */  addiu       $s1, $s0, 0x200
/* 01E11C 8001E56C 02202025 */  move        $a0, $s1
/* 01E120 8001E570 566E000B */  bnel        $s3, $t6, .L8001E5A0
/* 01E124 8001E574 261007F0 */   addiu      $s0, $s0, 0x7f0
/* 01E128 8001E578 4406A800 */  mfc1        $a2, $f21
/* 01E12C 8001E57C 4407A000 */  mfc1        $a3, $f20
/* 01E130 8001E580 0C0010BD */  jal         func_800042F4
/* 01E134 8001E584 F7B60010 */   sdc1       $f22, 0x10($sp)
/* 01E138 8001E588 4406D800 */  mfc1        $a2, $f27
/* 01E13C 8001E58C 4407D000 */  mfc1        $a3, $f26
/* 01E140 8001E590 02202025 */  move        $a0, $s1
/* 01E144 8001E594 0C0010BD */  jal         func_800042F4
/* 01E148 8001E598 F7B80010 */   sdc1       $f24, 0x10($sp)
/* 01E14C 8001E59C 261007F0 */  addiu       $s0, $s0, 0x7f0
.L8001E5A0:
/* 01E150 8001E5A0 5612FFF1 */  bnel        $s0, $s2, .L8001E568
/* 01E154 8001E5A4 8E0E07D8 */   lw         $t6, 0x7d8($s0)
/* 01E158 8001E5A8 8FBF004C */  lw          $ra, 0x4c($sp)
/* 01E15C 8001E5AC 02601025 */  move        $v0, $s3
/* 01E160 8001E5B0 8FB30048 */  lw          $s3, 0x48($sp)
/* 01E164 8001E5B4 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 01E168 8001E5B8 D7B60020 */  ldc1        $f22, 0x20($sp)
/* 01E16C 8001E5BC D7B80028 */  ldc1        $f24, 0x28($sp)
/* 01E170 8001E5C0 D7BA0030 */  ldc1        $f26, 0x30($sp)
/* 01E174 8001E5C4 8FB0003C */  lw          $s0, 0x3c($sp)
/* 01E178 8001E5C8 8FB10040 */  lw          $s1, 0x40($sp)
/* 01E17C 8001E5CC 8FB20044 */  lw          $s2, 0x44($sp)
/* 01E180 8001E5D0 03E00008 */  jr          $ra
/* 01E184 8001E5D4 27BD0050 */   addiu      $sp, $sp, 0x50

glabel func_8001E5D8 # 19
/* 01E188 8001E5D8 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 01E18C 8001E5DC F7B40018 */  sdc1        $f20, 0x18($sp)
/* 01E190 8001E5E0 4487A000 */  mtc1        $a3, $f20
/* 01E194 8001E5E4 4486A800 */  mtc1        $a2, $f21
/* 01E198 8001E5E8 AFB30038 */  sw          $s3, 0x38($sp)
/* 01E19C 8001E5EC 00809825 */  move        $s3, $a0
/* 01E1A0 8001E5F0 AFBF003C */  sw          $ra, 0x3c($sp)
/* 01E1A4 8001E5F4 AFB20034 */  sw          $s2, 0x34($sp)
/* 01E1A8 8001E5F8 AFB10030 */  sw          $s1, 0x30($sp)
/* 01E1AC 8001E5FC AFB0002C */  sw          $s0, 0x2c($sp)
/* 01E1B0 8001E600 14800003 */  bnez        $a0, .L8001E610
/* 01E1B4 8001E604 F7B60020 */   sdc1       $f22, 0x20($sp)
/* 01E1B8 8001E608 10000018 */  b           .L8001E66C
/* 01E1BC 8001E60C 00001025 */   move       $v0, $zero
.L8001E610:
/* 01E1C0 8001E610 3C10800F */  lui         $s0, %hi(D_800F1170)
/* 01E1C4 8001E614 3C01800B */  lui         $at, %hi(D_800A98C0)
/* 01E1C8 8001E618 3C12800F */  lui         $s2, %hi(D_800F3130)
/* 01E1CC 8001E61C 26523130 */  addiu       $s2, $s2, %lo(D_800F3130)
/* 01E1D0 8001E620 D43698C0 */  ldc1        $f22, %lo(D_800A98C0)($at)
/* 01E1D4 8001E624 26101170 */  addiu       $s0, $s0, %lo(D_800F1170)
/* 01E1D8 8001E628 8E0E07D8 */  lw          $t6, 0x7d8($s0)
.L8001E62C:
/* 01E1DC 8001E62C 26110200 */  addiu       $s1, $s0, 0x200
/* 01E1E0 8001E630 02202025 */  move        $a0, $s1
/* 01E1E4 8001E634 566E000A */  bnel        $s3, $t6, .L8001E660
/* 01E1E8 8001E638 261007F0 */   addiu      $s0, $s0, 0x7f0
/* 01E1EC 8001E63C 4406A800 */  mfc1        $a2, $f21
/* 01E1F0 8001E640 4407A000 */  mfc1        $a3, $f20
/* 01E1F4 8001E644 0C0010BD */  jal         func_800042F4
/* 01E1F8 8001E648 F7B60010 */   sdc1       $f22, 0x10($sp)
/* 01E1FC 8001E64C 4406A800 */  mfc1        $a2, $f21
/* 01E200 8001E650 4407A000 */  mfc1        $a3, $f20
/* 01E204 8001E654 0C001099 */  jal         func_80004264
/* 01E208 8001E658 02202025 */   move       $a0, $s1
/* 01E20C 8001E65C 261007F0 */  addiu       $s0, $s0, 0x7f0
.L8001E660:
/* 01E210 8001E660 5612FFF2 */  bnel        $s0, $s2, .L8001E62C
/* 01E214 8001E664 8E0E07D8 */   lw         $t6, 0x7d8($s0)
/* 01E218 8001E668 00001025 */  move        $v0, $zero
.L8001E66C:
/* 01E21C 8001E66C 8FBF003C */  lw          $ra, 0x3c($sp)
/* 01E220 8001E670 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 01E224 8001E674 D7B60020 */  ldc1        $f22, 0x20($sp)
/* 01E228 8001E678 8FB0002C */  lw          $s0, 0x2c($sp)
/* 01E22C 8001E67C 8FB10030 */  lw          $s1, 0x30($sp)
/* 01E230 8001E680 8FB20034 */  lw          $s2, 0x34($sp)
/* 01E234 8001E684 8FB30038 */  lw          $s3, 0x38($sp)
/* 01E238 8001E688 03E00008 */  jr          $ra
/* 01E23C 8001E68C 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_8001E690 # 20
/* 01E240 8001E690 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01E244 8001E694 44876000 */  mtc1        $a3, $f12
/* 01E248 8001E698 44866800 */  mtc1        $a2, $f13
/* 01E24C 8001E69C AFBF0014 */  sw          $ra, 0x14($sp)
/* 01E250 8001E6A0 AFA40018 */  sw          $a0, 0x18($sp)
/* 01E254 8001E6A4 14800003 */  bnez        $a0, .L8001E6B4
/* 01E258 8001E6A8 00802825 */   move       $a1, $a0
/* 01E25C 8001E6AC 1000000D */  b           .L8001E6E4
/* 01E260 8001E6B0 00001025 */   move       $v0, $zero
.L8001E6B4:
/* 01E264 8001E6B4 3C04800F */  lui         $a0, %hi(D_800F10E0)
/* 01E268 8001E6B8 8C8410E0 */  lw          $a0, %lo(D_800F10E0)($a0)
/* 01E26C 8001E6BC AFA50018 */  sw          $a1, 0x18($sp)
/* 01E270 8001E6C0 0C007BE2 */  jal         func_8001EF88
/* 01E274 8001E6C4 F7AC0020 */   sdc1       $f12, 0x20($sp)
/* 01E278 8001E6C8 D7AC0020 */  ldc1        $f12, 0x20($sp)
/* 01E27C 8001E6CC 8FA40018 */  lw          $a0, 0x18($sp)
/* 01E280 8001E6D0 44076000 */  mfc1        $a3, $f12
/* 01E284 8001E6D4 44066800 */  mfc1        $a2, $f13
/* 01E288 8001E6D8 0C007976 */  jal         func_8001E5D8
/* 01E28C 8001E6DC 00000000 */   nop
/* 01E290 8001E6E0 00001025 */  move        $v0, $zero
.L8001E6E4:
/* 01E294 8001E6E4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01E298 8001E6E8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01E29C 8001E6EC 03E00008 */  jr          $ra
/* 01E2A0 8001E6F0 00000000 */   nop

glabel func_8001E6F4 # 21
/* 01E2A4 8001E6F4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01E2A8 8001E6F8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01E2AC 8001E6FC AFA00018 */  sw          $zero, 0x18($sp)
/* 01E2B0 8001E700 0C0145C8 */  jal         func_80051720
/* 01E2B4 8001E704 24040001 */   addiu      $a0, $zero, 0x1
/* 01E2B8 8001E708 3C0F800F */  lui         $t7, %hi(D_800F1100)
/* 01E2BC 8001E70C 8DEF1100 */  lw          $t7, %lo(D_800F1100)($t7)
/* 01E2C0 8001E710 3C0E800F */  lui         $t6, %hi(D_800F1100)
/* 01E2C4 8001E714 8FA50018 */  lw          $a1, 0x18($sp)
/* 01E2C8 8001E718 00402025 */  move        $a0, $v0
/* 01E2CC 8001E71C 11E00006 */  beqz        $t7, .L8001E738
/* 01E2D0 8001E720 25CE1100 */   addiu      $t6, $t6, %lo(D_800F1100)
/* 01E2D4 8001E724 8DC20000 */  lw          $v0, 0x0($t6)
/* 01E2D8 8001E728 8C420000 */  lw          $v0, 0x0($v0)
.L8001E72C:
/* 01E2DC 8001E72C 24A50001 */  addiu       $a1, $a1, 0x1
/* 01E2E0 8001E730 5440FFFE */  bnel        $v0, $zero, .L8001E72C
/* 01E2E4 8001E734 8C420000 */   lw         $v0, 0x0($v0)
.L8001E738:
/* 01E2E8 8001E738 0C0145C8 */  jal         func_80051720
/* 01E2EC 8001E73C AFA50018 */   sw         $a1, 0x18($sp)
/* 01E2F0 8001E740 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01E2F4 8001E744 8FA20018 */  lw          $v0, 0x18($sp)
/* 01E2F8 8001E748 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01E2FC 8001E74C 03E00008 */  jr          $ra
/* 01E300 8001E750 00000000 */   nop
/* 01E304 8001E754 00000000 */  nop
/* 01E308 8001E758 00000000 */  nop
/* 01E30C 8001E75C 00000000 */  nop
