.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_8012F600
/* 0212A0 8012F600  */  .asciz  "じぶんのへや"
                        .balign 4

glabel D_8012F610
/* 0212B0 8012F610  */  .asciz  "げんかん"
                        .balign 4

glabel D_8012F61C
/* 0212BC 8012F61C  */  .asciz  "うちのにわ"
                        .balign 4

glabel D_8012F628
/* 0212C8 8012F628  */  .asciz  "トキワのもり いりぐち"
                        .balign 4

glabel D_8012F640
/* 0212E0 8012F640  */  .asciz  "トキワのもり"
                        .balign 4

glabel D_8012F650
/* 0212F0 8012F650  */  .asciz  "トキワのもり おく"
                        .balign 4

glabel D_8012F664
/* 021304 8012F664  */  .asciz  "モエギそうげん いりぐち"
                        .balign 4

glabel D_8012F67C
/* 02131C 8012F67C  */  .asciz  "ナゾノクサのすみか"
                        .balign 4

glabel D_8012F690
/* 021330 8012F690  */  .asciz  "モエギそうげん おく"
                        .balign 4

glabel D_8012F6A4
/* 021344 8012F6A4  */  .asciz  "アサギのみずうみ きしべ"
                        .balign 4

glabel D_8012F6BC
/* 02135C 8012F6BC  */  .asciz  "アサギのみずうみ"
                        .balign 4

glabel D_8012F6D0
/* 021370 8012F6D0  */  .asciz  "アカネのもり いりぐち"
                        .balign 4

glabel D_8012F6E8
/* 021388 8012F6E8  */  .asciz  "アカネのもり おく"
                        .balign 4

glabel D_8012F6FC
/* 02139C 8012F6FC  */  .asciz  "スオウじま"
                        .balign 4

glabel D_8012F708
/* 0213A8 8012F708  */  .asciz  "スオウかいがん"
                        .balign 4

glabel D_8012F718
/* 0213B8 8012F718  */  .asciz  "ケーシィのおみせ"
                        .balign 4

glabel D_8012F72C
/* 0213CC 8012F72C  */  .asciz  "キャンプじょう"
                        .balign 4

glabel D_8012F73C
/* 0213DC 8012F73C  */  .asciz  "アカネのつりば"
                        .balign 4

glabel D_8012F74C
/* 0213EC 8012F74C  */  .asciz  "アサギのつりば"
                        .balign 4

glabel D_8012F75C
/* 0213FC 8012F75C  */  .asciz  "スオウのつりば"
                        .balign 4

glabel D_8012F76C
/* 02140C 8012F76C  */  .asciz  "トキワのはずれ"
                        .balign 4

glabel D_8012F77C
/* 02141C 8012F77C  */  .asciz  "うらのあきち"
                        .balign 4

glabel D_8012F78C
/* 02142C 8012F78C  */  .asciz  "スタッフロール"
                        .balign 4

glabel D_8012F79C
/* 02143C 8012F79C  */  .asciz  "トキワのもり"
                        .balign 4

glabel D_8012F7AC
/* 02144C 8012F7AC  */  .asciz  "トキワのもり"
                        .balign 4

glabel D_8012F7BC
/* 02145C 8012F7BC  */  .asciz  "トキワのもり"
                        .balign 4

glabel D_8012F7CC
/* 02146C 8012F7CC  */  .asciz  "モエギそうげん"
                        .balign 4

glabel D_8012F7DC
/* 02147C 8012F7DC  */  .asciz  "モエギそうげん"
                        .balign 4

glabel D_8012F7EC
/* 02148C 8012F7EC  */  .asciz  "モエギそうげん"
                        .balign 4

glabel D_8012F7FC
/* 02149C 8012F7FC  */  .asciz  "アサギのみずうみ"
                        .balign 4

glabel D_8012F810
/* 0214B0 8012F810  */  .asciz  "アサギのみずうみ"
                        .balign 4

glabel D_8012F824
/* 0214C4 8012F824  */  .asciz  "アカネのもり"
                        .balign 4

glabel D_8012F834
/* 0214D4 8012F834  */  .asciz  "アカネのもり"
                        .balign 4

glabel D_8012F844
/* 0214E4 8012F844  */  .asciz  "スオウじま"
                        .balign 4

glabel D_8012F850
/* 0214F0 8012F850  */  .asciz  "スオウじま"
                        .balign 4

glabel D_8012F85C
/* 0214FC 8012F85C  */  .asciz  "ケーシィのおみせ"
                        .balign 4

glabel D_8012F870
/* 021510 8012F870  */  .asciz  "キャンプじょう"
                        .balign 4

glabel D_8012F880
/* 021520 8012F880  */  .asciz  "アカネのつりば"
                        .balign 4

glabel D_8012F890
/* 021530 8012F890  */  .asciz  "アサギのつりば"
                        .balign 4

glabel D_8012F8A0
/* 021540 8012F8A0  */  .asciz  "スオウのつりば"
                        .balign 4

glabel D_8012F8B0
/* 021550 8012F8B0  */  .asciz  "トキワのはずれ"
                        .balign 4

glabel D_8012F8C0
/* 021560 8012F8C0  */  .asciz  "うらのあきち"
                        .balign 4

glabel D_8012F8D0
/* 021570 8012F8D0  */  .asciz  "エンディング"
                        .balign 4
/* 021580 8012F8E0  */  .asciz  "ixz:(%d,%d) ixz_1:(%d,%d)\n"
                        .balign 4
/* 02159C 8012F8FC  */  .asciz  "fall through getGroundAttr, researching floor...\n"
                        .balign 4
/* 0215D0 8012F930  */  .asciz  "research failed.\n"
                        .balign 4
/* 0215E4 8012F944  */  .asciz  "blockSize: %f,%f,%f  _clipZFactor:%f  clipFar:%f clipNear:%f clipFactor:%f\n"
                        .balign 4

glabel D_8012F990
/* 021630 8012F990 7072655F */  .word  0x7072655F
/* 021634 8012F994 6368616E */  .word  0x6368616E
/* 021638 8012F998 67654D61 */  .word  0x67654D61
/* 02163C 8012F99C 7A65426C */  .word  0x7A65426C
/* 021640 8012F9A0 6F636B00 */  .word  0x6F636B00
/* 021644 8012F9A4 626C6F63 */  .word  0x626C6F63
/* 021648 8012F9A8 6B206C65 */  .word  0x6B206C65
/* 02164C 8012F9AC 76656C20 */  .word  0x76656C20
/* 021650 8012F9B0 6D69736D */  .word  0x6D69736D
/* 021654 8012F9B4 61746368 */  .word  0x61746368
/* 021658 8012F9B8 20286C65 */  .word  0x20286C65
/* 02165C 8012F9BC 76656C20 */  .word  0x76656C20
/* 021660 8012F9C0 25642C20 */  .word  0x25642C20
/* 021664 8012F9C4 5B25332E */  .word  0x5B25332E
/* 021668 8012F9C8 32662C20 */  .word  0x32662C20
/* 02166C 8012F9CC 25332E32 */  .word  0x25332E32
/* 021670 8012F9D0 662C2025 */  .word  0x662C2025
/* 021674 8012F9D4 332E3266 */  .word  0x332E3266
/* 021678 8012F9D8 5D292C20 */  .word  0x5D292C20
/* 02167C 8012F9DC 666F7263 */  .word  0x666F7263
/* 021680 8012F9E0 6520746F */  .word  0x6520746F
/* 021684 8012F9E4 20646967 */  .word  0x20646967
/* 021688 8012F9E8 67696E67 */  .word  0x67696E67
/* 02168C 8012F9EC 2E2E2E0A */  .word  0x2E2E2E0A
/* 021690 8012F9F0 00000000 */  .word  0x00000000

glabel D_8012F9F4
/* 021694 8012F9F4 6166745F */  .word  0x6166745F
/* 021698 8012F9F8 6368616E */  .word  0x6368616E
/* 02169C 8012F9FC 67654D61 */  .word  0x67654D61
/* 0216A0 8012FA00 7A65426C */  .word  0x7A65426C
/* 0216A4 8012FA04 6F636B00 */  .word  0x6F636B00
/* 0216A8 8012FA08 746F7461 */  .word  0x746F7461
/* 0216AC 8012FA0C 6C426C6F */  .word  0x6C426C6F
/* 0216B0 8012FA10 636B4E75 */  .word  0x636B4E75
/* 0216B4 8012FA14 6D203D20 */  .word  0x6D203D20
/* 0216B8 8012FA18 25640A00 */  .word  0x25640A00
/* 0216BC 8012FA1C 73697A65 */  .word  0x73697A65
/* 0216C0 8012FA20 6F66286D */  .word  0x6F66286D
/* 0216C4 8012FA24 617A6542 */  .word  0x617A6542
/* 0216C8 8012FA28 6C6F636B */  .word  0x6C6F636B
/* 0216CC 8012FA2C 5429203D */  .word  0x5429203D
/* 0216D0 8012FA30 2025640A */  .word  0x2025640A
/* 0216D4 8012FA34 00000000 */  .word  0x00000000
/* 0216D8 8012FA38 696E6974 */  .word  0x696E6974
/* 0216DC 8012FA3C 41726561 */  .word  0x41726561
/* 0216E0 8012FA40 28257029 */  .word  0x28257029
/* 0216E4 8012FA44 20637572 */  .word  0x20637572
/* 0216E8 8012FA48 41726561 */  .word  0x41726561
/* 0216EC 8012FA4C 4E756D3A */  .word  0x4E756D3A
/* 0216F0 8012FA50 25640A00 */  .word  0x25640A00
/* 0216F4 8012FA54 4552524F */  .word  0x4552524F
/* 0216F8 8012FA58 52203A20 */  .word  0x52203A20
/* 0216FC 8012FA5C 6E6F7420 */  .word  0x6E6F7420
/* 021700 8012FA60 6B656570 */  .word  0x6B656570
/* 021704 8012FA64 696E6720 */  .word  0x696E6720
/* 021708 8012FA68 6974656D */  .word  0x6974656D
/* 02170C 8012FA6C 2C202573 */  .word  0x2C202573
/* 021710 8012FA70 0A000000 */  .word  0x0A000000

glabel D_8012FA74
/* 021714 8012FA74 3A83126F */  .float  0.0010000000474974513

glabel D_8012FA78
/* 021718 8012FA78 3A83126F */  .float  0.0010000000474974513

glabel D_8012FA7C
/* 02171C 8012FA7C 3A83126F */  .float  0.0010000000474974513

glabel D_8012FA80
/* 021720 8012FA80 3A83126F */  .float  0.0010000000474974513

glabel D_8012FA84
/* 021724 8012FA84 3A83126F */  .float  0.0010000000474974513

glabel jtbl_8012FA88
/* 021728 8012FA88 8010FC84 */  .word  L8010FC84
/* 02172C 8012FA8C 8010FA90 */  .word  L8010FA90
/* 021730 8012FA90 8010FAD0 */  .word  L8010FAD0
/* 021734 8012FA94 8010FE24 */  .word  L8010FE24
/* 021738 8012FA98 8010FFB0 */  .word  L8010FFB0
/* 02173C 8012FA9C 00000000 */  .word  0x00000000

glabel D_8012FAA0
/* 021740 8012FAA0 3FE99999A0000000 */  .double  0.800000011920929

glabel D_8012FAA8
/* 021748 8012FAA8 3FD99999A0000000 */  .double  0.4000000059604645

glabel D_8012FAB0
/* 021750 8012FAB0 3FE3333340000000 */  .double  0.6000000238418579

glabel D_8012FAB8
/* 021758 8012FAB8 3A83126F */  .float  0.0010000000474974513

glabel D_8012FABC
/* 02175C 8012FABC BA83126F */  .float  -0.0010000000474974513

glabel D_8012FAC0
/* 021760 8012FAC0 BA83126F */  .float  -0.0010000000474974513

glabel D_8012FAC4
/* 021764 8012FAC4 3A83126F */  .float  0.0010000000474974513

glabel D_8012FAC8
/* 021768 8012FAC8 3FD9999A */  .float  1.7000000476837158
/* 02176C 8012FACC 00000000 */  .float  0.0

glabel D_8012FAD0
/* 021770 8012FAD0  */  .asciz  "\n"
                        .balign 4

glabel D_8012FAD4
/* 021774 8012FAD4  */  .asciz  "\n［］ボタンで ひろうことが できる"
                        .balign 4

glabel D_8012FAF8
/* 021798 8012FAF8  */  .asciz  "？？？"
                        .balign 4

glabel D_8012FB00
/* 0217A0 8012FB00  */  .asciz  "？？？"
                        .balign 4

glabel D_8012FB08
/* 0217A8 8012FB08  */  .asciz  "？？？"
                        .balign 4

glabel D_8012FB10
/* 0217B0 8012FB10  */  .asciz  "\n［］ボタンで なげることが できる"
                        .balign 4

glabel D_8012FB34
/* 0217D4 8012FB34  */  .asciz  "\n（さわることは できない）"
                        .balign 4

glabel D_8012FB50
/* 0217F0 8012FB50  */  .asciz  "\n［］ボタンで とおることが できる"
                        .balign 4

glabel D_8012FB74
/* 021814 8012FB74  */  .asciz  "？？？"
                        .balign 4

glabel D_8012FB7C
/* 02181C 8012FB7C  */  .asciz  "？？？"
                        .balign 4
/* 021824 8012FB84  */  .asciz  "holdItem:%p\n"
                        .balign 4
/* 021834 8012FB94  */  .asciz  "item:%p\n"
                        .balign 4
/* 021840 8012FBA0  */  .asciz  "contMask:0x%04x  err:0x%04x\n"
                        .balign 4
/* 021860 8012FBC0  */  .asciz  "difficulty = %d\n"
                        .balign 4
/* 021874 8012FBD4  */  .asciz  "coop - model:%p(%s)\n"
                        .balign 4
/* 02188C 8012FBEC  */  .asciz  "coop - item:%p(%s)\n"
                        .balign 4
/* 0218A0 8012FC00  */  .asciz  "change player type %d\n"
                        .balign 4
/* 0218B8 8012FC18  */  .asciz  "ERROR: unknown markMode:%d\n"
                        .balign 4
/* 0218D4 8012FC34  */  .asciz  "ERROR: unknown markMode:%d\n"
                        .balign 4

glabel D_8012FC50
/* 0218F0 8012FC50 A1CAA4B7 */  .word  0xA1CAA4B7
/* 0218F4 8012FC54 A4E9A4D9 */  .word  0xA4E9A4D9
/* 0218F8 8012FC58 A4EB20A4 */  .word  0xA4EB20A4
/* 0218FC 8012FC5C E2A4CEA4 */  .word  0xE2A4CEA4
/* 021900 8012FC60 AC20A4CA */  .word  0xAC20A4CA
/* 021904 8012FC64 A4A4A1CB */  .word  0xA4A4A1CB
/* 021908 8012FC68 0AA4B7A4 */  .word  0x0AA4B7A4
/* 02190C 8012FC6C E9A4D9A4 */  .word  0xE9A4D9A4
/* 021910 8012FC70 BFA4A420 */  .word  0xBFA4A420
/* 021914 8012FC74 A4E2A4CE */  .word  0xA4E2A4CE
/* 021918 8012FC78 A4CB20A1 */  .word  0xA4CB20A1
/* 02191C 8012FC7C A7A1A8A5 */  .word  0xA7A1A8A5
/* 021920 8012FC80 DEA1BCA5 */  .word  0xDEA1BCA5
/* 021924 8012FC84 AFA4F20A */  .word  0xAFA4F20A
/* 021928 8012FC88 A4C4A4B1 */  .word  0xA4C4A4B1
/* 02192C 8012FC8C A4C620A1 */  .word  0xA4C620A1
/* 021930 8012FC90 D0A1D1A5 */  .word  0xD0A1D1A5
/* 021934 8012FC94 DCA5BFA5 */  .word  0xDCA5BFA5
/* 021938 8012FC98 F3A4F220 */  .word  0xF3A4F220
/* 02193C 8012FC9C A4AAA4B9 */  .word  0xA4AAA4B9
/* 021940 8012FCA0 A4C80AA4 */  .word  0xA4C80AA4
/* 021944 8012FCA4 BBA4C4A4 */  .word  0xBBA4C4A4
/* 021948 8012FCA8 E1A4A4A4 */  .word  0xE1A4A4A4
/* 02194C 8012FCAC F220A4E8 */  .word  0xF220A4E8
/* 021950 8012FCB0 A4E0A4B3 */  .word  0xA4E0A4B3
/* 021954 8012FCB4 A4C8A4AC */  .word  0xA4C8A4AC
/* 021958 8012FCB8 20A4C7A4 */  .word  0x20A4C7A4
/* 02195C 8012FCBC ADA4EB00 */  .word  0xADA4EB00

glabel D_8012FCC0
/* 021960 8012FCC0 A1A9A1A9 */  .word  0xA1A9A1A9
/* 021964 8012FCC4 A1A90000 */  .word  0xA1A90000

glabel D_8012FCC8
/* 021968 8012FCC8 5E34252D */  .word  0x5E34252D
/* 02196C 8012FCCC 3232735E */  .word  0x3232735E
/* 021970 8012FCD0 5E25730A */  .word  0x5E25730A
/* 021974 8012FCD4 25732573 */  .word  0x25732573
/* 021978 8012FCD8 00000000 */  .word  0x00000000

glabel D_8012FCDC
/* 02197C 8012FCDC 5E342573 */  .word  0x5E342573
/* 021980 8012FCE0 5E5EA1A9 */  .word  0x5E5EA1A9
/* 021984 8012FCE4 0A257325 */  .word  0x0A257325
/* 021988 8012FCE8 73000000 */  .word  0x73000000

glabel D_8012FCEC
/* 02198C 8012FCEC 0AA1CAA4 */  .word  0x0AA1CAA4
/* 021990 8012FCF0 B3A4B3A4 */  .word  0xB3A4B3A4
/* 021994 8012FCF4 ABA4E9A4 */  .word  0xABA4E9A4
/* 021998 8012FCF8 C0A4C820 */  .word  0xC0A4C820
/* 02199C 8012FCFC A4C6A4AC */  .word  0xA4C6A4AC
/* 0219A0 8012FD00 20A4C8A4 */  .word  0x20A4C8A4
/* 0219A4 8012FD04 C9A4ABA4 */  .word  0xC9A4ABA4
/* 0219A8 8012FD08 CAA4A4A1 */  .word  0xCAA4A4A1
/* 0219AC 8012FD0C CB000000 */  .word  0xCB000000

glabel D_8012FD10
/* 0219B0 8012FD10 5E342573 */  .word  0x5E342573
/* 0219B4 8012FD14 5E5E0A25 */  .word  0x5E5E0A25
/* 0219B8 8012FD18 73000000 */  .word  0x73000000

glabel D_8012FD1C
/* 0219BC 8012FD1C 5E342573 */  .word  0x5E342573
/* 0219C0 8012FD20 5E5EA1A9 */  .word  0x5E5EA1A9
/* 0219C4 8012FD24 0A257300 */  .word  0x0A257300

glabel D_8012FD28
/* 0219C8 8012FD28 0AA1CEA1 */  .word  0x0AA1CEA1
/* 0219CC 8012FD2C CFA5DCA5 */  .word  0xCFA5DCA5
/* 0219D0 8012FD30 BFA5F3A4 */  .word  0xBFA5F3A4
/* 0219D4 8012FD34 C720A4B9 */  .word  0xC720A4B9
/* 0219D8 8012FD38 A4B9A4E0 */  .word  0xA4B9A4E0
/* 0219DC 8012FD3C A4B3A4C8 */  .word  0xA4B3A4C8
/* 0219E0 8012FD40 A4AC20A4 */  .word  0xA4AC20A4
/* 0219E4 8012FD44 C7A4ADA4 */  .word  0xC7A4ADA4
/* 0219E8 8012FD48 EB000000 */  .word  0xEB000000

glabel D_8012FD4C
/* 0219EC 8012FD4C 25732573 */  .word  0x25732573
/* 0219F0 8012FD50 00000000 */  .word  0x00000000

glabel D_8012FD54
/* 0219F4 8012FD54 25732573 */  .word  0x25732573
/* 0219F8 8012FD58 00000000 */  .word  0x00000000

glabel D_8012FD5C
/* 0219FC 8012FD5C 0AA1CAA4 */  .word  0x0AA1CAA4
/* 021A00 8012FD60 B3A4B3A4 */  .word  0xB3A4B3A4
/* 021A04 8012FD64 ABA4E9A4 */  .word  0xABA4E9A4
/* 021A08 8012FD68 C0A4C820 */  .word  0xC0A4C820
/* 021A0C 8012FD6C A4C6A4AC */  .word  0xA4C6A4AC
/* 021A10 8012FD70 20A4C8A4 */  .word  0x20A4C8A4
/* 021A14 8012FD74 C9A4ABA4 */  .word  0xC9A4ABA4
/* 021A18 8012FD78 CAA4A4A1 */  .word  0xCAA4A4A1
/* 021A1C 8012FD7C CB000000 */  .word  0xCB000000

glabel D_8012FD80
/* 021A20 8012FD80  */  .asciz  "？？？"
                        .balign 4

glabel D_8012FD88
/* 021A28 8012FD88 25732573 */  .word  0x25732573
/* 021A2C 8012FD8C 00000000 */  .word  0x00000000

glabel D_8012FD90
/* 021A30 8012FD90 25732573 */  .word  0x25732573
/* 021A34 8012FD94 00000000 */  .word  0x00000000

glabel D_8012FD98
/* 021A38 8012FD98 0AA1CAA4 */  .word  0x0AA1CAA4
/* 021A3C 8012FD9C B3A4B3A4 */  .word  0xB3A4B3A4
/* 021A40 8012FDA0 ABA4E9A4 */  .word  0xABA4E9A4
/* 021A44 8012FDA4 C0A4C820 */  .word  0xC0A4C820
/* 021A48 8012FDA8 A4C6A4AC */  .word  0xA4C6A4AC
/* 021A4C 8012FDAC 20A4C8A4 */  .word  0x20A4C8A4
/* 021A50 8012FDB0 C9A4ABA4 */  .word  0xC9A4ABA4
/* 021A54 8012FDB4 CAA4A4A1 */  .word  0xCAA4A4A1
/* 021A58 8012FDB8 CB000000 */  .word  0xCB000000

glabel D_8012FDBC
/* 021A5C 8012FDBC 25730000 */  .word  0x25730000

glabel D_8012FDC0
/* 021A60 8012FDC0 25730000 */  .word  0x25730000

glabel D_8012FDC4
/* 021A64 8012FDC4 25730000 */  .word  0x25730000
/* 021A68 8012FDC8 496C6C65 */  .word  0x496C6C65
/* 021A6C 8012FDCC 67616C20 */  .word  0x67616C20
/* 021A70 8012FDD0 64696666 */  .word  0x64696666
/* 021A74 8012FDD4 6963756C */  .word  0x6963756C
/* 021A78 8012FDD8 74793A25 */  .word  0x74793A25
/* 021A7C 8012FDDC 640A0000 */  .word  0x640A0000

glabel D_8012FDE0
/* 021A80 8012FDE0 00000000 */  .word  0x00000000

glabel D_8012FDE4
/* 021A84 8012FDE4  */  .asciz  "^4ちゅうもく^^モード^1ＯＦＦ^^"
                        .balign 4

glabel D_8012FE04
/* 021AA4 8012FE04  */  .asciz  "^4ちゅうもく^^モード^4ＯＮ^^"
                        .balign 4

glabel D_8012FE24
/* 021AC4 8012FE24  */  .asciz  "^4ついび^^モード^4ＯＮ^^"
                        .balign 4

glabel D_8012FE40
/* 021AE0 8012FE40 A5BFA1BC */  .word  0xA5BFA1BC
/* 021AE4 8012FE44 A5B2A5C3 */  .word  0xA5B2A5C3
/* 021AE8 8012FE48 A5C820A4 */  .word  0xA5C820A4
/* 021AEC 8012FE4C D5A4E1A4 */  .word  0xD5A4E1A4
/* 021AF0 8012FE50 A4000000 */  .word  0xA4000000
/* 021AF4 8012FE54 68656C70 */  .word  0x68656C70
/* 021AF8 8012FE58 28257329 */  .word  0x28257329
/* 021AFC 8012FE5C 0A000000 */  .word  0x0A000000
/* 021B00 8012FE60 706C6179 */  .word  0x706C6179
/* 021B04 8012FE64 65725061 */  .word  0x65725061
/* 021B08 8012FE68 73734368 */  .word  0x73734368
/* 021B0C 8012FE6C 65636B50 */  .word  0x65636B50
/* 021B10 8012FE70 6F696E74 */  .word  0x6F696E74
/* 021B14 8012FE74 28256429 */  .word  0x28256429
/* 021B18 8012FE78 0A000000 */  .word  0x0A000000
/* 021B1C 8012FE7C 6C657665 */  .word  0x6C657665
/* 021B20 8012FE80 6C202564 */  .word  0x6C202564
/* 021B24 8012FE84 202D3E20 */  .word  0x202D3E20
/* 021B28 8012FE88 25640A00 */  .word  0x25640A00

glabel D_8012FE8C
/* 021B2C 8012FE8C  */  .asciz  "ピカチュウを\n　　　みつけた"
                        .balign 4

glabel D_8012FEA8
/* 021B48 8012FEA8  */  .asciz  "ピカチュウの\n　　　しりあい"
                        .balign 4

glabel D_8012FEC4
/* 021B64 8012FEC4  */  .asciz  "ピカチュウの\n　　　トモダチ"
                        .balign 4

glabel D_8012FEE0
/* 021B80 8012FEE0  */  .asciz  "ピカチュウと\n　　　なかよし"
                        .balign 4

glabel D_8012FEFC
/* 021B9C 8012FEFC  */  .asciz  "なみなカンジ\n　　　ＮＯＷ！"
                        .balign 4

glabel D_8012FF18
/* 021BB8 8012FF18  */  .asciz  "ピカチュウの\n　　どうきょにん"
                        .balign 4

glabel D_8012FF38
/* 021BD8 8012FF38  */  .asciz  "ピカチュウの\n　こころの とも"
                        .balign 4

glabel D_8012FF58
/* 021BF8 8012FF58  */  .asciz  "ピカチュウと\n　いつもいっしょ"
                        .balign 4

glabel D_8012FF78
/* 021C18 8012FF78  */  .asciz  "とても きのあう\n　　　　トモダチ"
                        .balign 4

glabel D_8012FF9C
/* 021C3C 8012FF9C  */  .asciz  "ピカチュウと\n　シビれる なか"
                        .balign 4

glabel D_8012FFBC
/* 021C5C 8012FFBC  */  .asciz  "ピカチュウと\n　　めいコンビ"
                        .balign 4

glabel D_8012FFD8
/* 021C78 8012FFD8  */  .asciz  "ピカチュウと\n　　　ツーカー"
                        .balign 4

glabel D_8012FFF4
/* 021C94 8012FFF4  */  .asciz  "いいカンジ\n　　　ＮＯＷ！"
                        .balign 4

glabel D_80130010
/* 021CB0 80130010  */  .asciz  "ピカチュウの\n　　　　なかま"
                        .balign 4

glabel D_8013002C
/* 021CCC 8013002C  */  .asciz  "ピカチュウの\n　　　きょうだい"
                        .balign 4

glabel D_8013004C
/* 021CEC 8013004C  */  .asciz  "ピカチュウと\n　いしんでんしん"
                        .balign 4

glabel D_8013006C
/* 021D0C 8013006C  */  .asciz  "ピカチュウの\n　　　しんゆう"
                        .balign 4

glabel D_80130088
/* 021D28 80130088  */  .asciz  "ほんとうの\n　　りかいしゃ"
                        .balign 4

glabel D_801300A4
/* 021D44 801300A4  */  .asciz  "フレンドリー\n　　　ＮＯＷ！"
                        .balign 4

glabel D_801300C0
/* 021D60 801300C0  */  .asciz  "ピッピカ\n　ピカピカチュウ"
                        .balign 4
/* 021D7C 801300DC  */  .asciz  "grab objID:%d\n"
                        .balign 4

glabel D_801300EC
/* 021D8C 801300EC A1A90000 */  .word  0xA1A90000
/* 021D90 801300F0 73657453 */  .word  0x73657453
/* 021D94 801300F4 6F6E6756 */  .word  0x6F6E6756
/* 021D98 801300F8 6F6C756D */  .word  0x6F6C756D
/* 021D9C 801300FC 65282566 */  .word  0x65282566
/* 021DA0 80130100 29207663 */  .word  0x29207663
/* 021DA4 80130104 75723A20 */  .word  0x75723A20
/* 021DA8 80130108 25642F25 */  .word  0x25642F25
/* 021DAC 8013010C 6420766F */  .word  0x6420766F
/* 021DB0 80130110 6C3A2564 */  .word  0x6C3A2564
/* 021DB4 80130114 0A000000 */  .word  0x0A000000
/* 021DB8 80130118 73657453 */  .word  0x73657453
/* 021DBC 8013011C 6678566F */  .word  0x6678566F
/* 021DC0 80130120 6C756D65 */  .word  0x6C756D65
/* 021DC4 80130124 28256629 */  .word  0x28256629
/* 021DC8 80130128 20766375 */  .word  0x20766375
/* 021DCC 8013012C 723A2025 */  .word  0x723A2025
/* 021DD0 80130130 642F2564 */  .word  0x642F2564
/* 021DD4 80130134 20766F6C */  .word  0x20766F6C
/* 021DD8 80130138 3A25640A */  .word  0x3A25640A
/* 021DDC 8013013C 00000000 */  .word  0x00000000

glabel D_80130140
/* 021DE0 80130140 3C40C0C1 */  .float  0.0117647061124444

glabel D_80130144
/* 021DE4 80130144 3C1374BC */  .float  0.008999999612569809

glabel D_80130148
/* 021DE8 80130148 3BE56042 */  .float  0.007000000216066837

glabel D_8013014C
/* 021DEC 8013014C 3A83126F */  .float  0.0010000000474974513

glabel D_80130150
/* 021DF0 80130150 BA83126F */  .float  -0.0010000000474974513

glabel D_80130154
/* 021DF4 80130154 3C40C0C1 */  .float  0.0117647061124444

glabel D_80130158
/* 021DF8 80130158 40511111 */  .float  3.2666666507720947

glabel D_8013015C
/* 021DFC 8013015C 3E4CCCCD */  .float  0.20000000298023224

glabel D_80130160
/* 021E00 80130160 40511111 */  .float  3.2666666507720947

glabel D_80130164
/* 021E04 80130164 3CF5C28F */  .float  0.029999999329447746

glabel D_80130168
/* 021E08 80130168 3F0CCCCD */  .float  0.550000011920929

glabel D_8013016C
/* 021E0C 8013016C 3CF5C28F */  .float  0.029999999329447746

glabel D_80130170
/* 021E10 80130170 3CF5C28F */  .float  0.029999999329447746

glabel D_80130174
/* 021E14 80130174 3CF5C28F */  .float  0.029999999329447746

glabel D_80130178
/* 021E18 80130178 3DCCCCCD */  .float  0.10000000149011612

glabel D_8013017C
/* 021E1C 8013017C 3DCCCCCD */  .float  0.10000000149011612

glabel D_80130180
/* 021E20 80130180 3CF5C28F */  .float  0.029999999329447746

glabel D_80130184
/* 021E24 80130184 3CF5C28F */  .float  0.029999999329447746

glabel D_80130188
/* 021E28 80130188 3FD3333340000000 */  .double  0.30000001192092896

glabel D_80130190
/* 021E30 80130190 3F333333 */  .float  0.699999988079071
/* 021E34 80130194 00000000 */  .float  0.0

glabel D_80130198
/* 021E38 80130198 3FE99999A0000000 */  .double  0.800000011920929
/* 021E40 801301A0 3F333333 */  .word  0x3F333333

glabel D_801301A4
/* 021E44 801301A4 3F333333 */  .float  0.699999988079071

glabel D_801301A8
/* 021E48 801301A8 3E4CCCCD */  .float  0.20000000298023224

glabel D_801301AC
/* 021E4C 801301AC BE4CCCCD */  .float  -0.20000000298023224

glabel D_801301B0
/* 021E50 801301B0 3F4CCCCD */  .float  0.800000011920929

glabel D_801301B4
/* 021E54 801301B4 3F19999A */  .float  0.6000000238418579

glabel D_801301B8
/* 021E58 801301B8 3F2AAAAB */  .float  0.6666666865348816

glabel D_801301BC
/* 021E5C 801301BC 3CF5C28F */  .float  0.029999999329447746

glabel D_801301C0
/* 021E60 801301C0  */  .asciz  "?"
                        .balign 4

glabel D_801301C4
/* 021E64 801301C4  */  .asciz  "?"
                        .balign 4

glabel D_801301C8
/* 021E68 801301C8  */  .asciz  "?"
                        .balign 4

glabel D_801301CC
/* 021E6C 801301CC  */  .asciz  "?"
                        .balign 4

glabel D_801301D0
/* 021E70 801301D0  */  .asciz  "リンゴ"
                        .balign 4

glabel D_801301D8
/* 021E78 801301D8  */  .asciz  "リンゴ"
                        .balign 4

glabel D_801301E0
/* 021E80 801301E0  */  .asciz  "あかくて あまずっぱい くだもの\n^d「^6ピカチュウ^d の こうぶつじゃ。\n^d　^4どんなあじ^d が するのかのう」^^"
                        .balign 4

glabel D_8013024C
/* 021EEC 8013024C  */  .asciz  "リンゴ"
                        .balign 4

glabel D_80130254
/* 021EF4 80130254  */  .asciz  "あおリンゴ"
                        .balign 4

glabel D_80130260
/* 021F00 80130260  */  .asciz  "まだ じゅくしていない ^4リンゴ^^\n^d「すっぱそうじゃ。^4でんきショック^dで\n^d　やいてもらうと よいじゃろう^d」^^"
                        .balign 4

glabel D_801302D0
/* 021F70 801302D0  */  .asciz  "リンゴ"
                        .balign 4

glabel D_801302D8
/* 021F78 801302D8  */  .asciz  "やきリンゴ"
                        .balign 4

glabel D_801302E4
/* 021F84 801302E4  */  .asciz  "やけた ^4リンゴ^^\n^d「^4どんなあじ^d が するんじゃろうな」^^"
                        .balign 4

glabel D_80130324
/* 021FC4 80130324  */  .asciz  "リンゴ"
                        .balign 4

glabel D_8013032C
/* 021FCC 8013032C  */  .asciz  "きんのリンゴ"
                        .balign 4

glabel D_8013033C
/* 021FDC 8013033C  */  .asciz  "きんいろに かがやく ^4リンゴ^^\n^d「めずらしい リンゴじゃな。\n^d　^4すてなさい^d と いってはいかんぞ」^^"
                        .balign 4

glabel D_801303A4
/* 022044 801303A4  */  .asciz  "スイミツトウ"
                        .balign 4

glabel D_801303B4
/* 022054 801303B4  */  .asciz  "スイミツトウ"
                        .balign 4

glabel D_801303C4
/* 022064 801303C4  */  .asciz  "しろくて あまい モモ\n^d「^6ピカチュウ^d の こうぶつじゃ。\n^d　^4たべていいよ^d と おしえるのじゃ」^^"
                        .balign 4

glabel D_8013042C
/* 0220CC 8013042C  */  .asciz  "イチゴ"
                        .balign 4

glabel D_80130434
/* 0220D4 80130434  */  .asciz  "イチゴ"
                        .balign 4

glabel D_8013043C
/* 0220DC 8013043C  */  .asciz  "あかくて あまずっぱい くだもの\n^d「^6ピカチュウ^d の こうぶつじゃ。\n^d　^4たべていいよ^d と おしえるのじゃ」^^"
                        .balign 4

glabel D_801304AC
/* 02214C 801304AC  */  .asciz  "イチゴ"
                        .balign 4

glabel D_801304B4
/* 022154 801304B4  */  .asciz  "ラズベリー"
                        .balign 4

glabel D_801304C0
/* 022160 801304C0  */  .asciz  "こい あかいろの くだもの\n^d「あまくて おいしそうじゃのう」^^"
                        .balign 4

glabel D_80130500
/* 0221A0 80130500  */  .asciz  "バナナ"
                        .balign 4

glabel D_80130508
/* 0221A8 80130508  */  .asciz  "バナナ"
                        .balign 4

glabel D_80130510
/* 0221B0 80130510  */  .asciz  "ねったいに はえる くだもの\n^d「たべたら、かわを ちゃんと\n^d　すてるのじゃぞ」^^"
                        .balign 4

glabel D_80130560
/* 022200 80130560  */  .asciz  "つくし"
                        .balign 4

glabel D_80130568
/* 022208 80130568  */  .asciz  "つくし"
                        .balign 4

glabel D_80130570
/* 022210 80130570  */  .asciz  "はるに めをだす しょくぶつ\n^d「むやみに ^4なげて^d、\n^d　はなに ぶつけては いかんぞ」^^"
                        .balign 4

glabel D_801305C8
/* 022268 801305C8  */  .asciz  "このは"
                        .balign 4

glabel D_801305D0
/* 022270 801305D0  */  .asciz  "ハーブのは"
                        .balign 4

glabel D_801305DC
/* 02227C 801305DC  */  .asciz  "いいにおいのする はっぱ\n^d「^4ニンジン^d や ^4タマネギ^d と にこむと\n^d　おいしいりょうりが できるのじゃ」^^"
                        .balign 4

glabel D_8013064C
/* 0222EC 8013064C  */  .asciz  "ナスビ"
                        .balign 4

glabel D_80130654
/* 0222F4 80130654  */  .asciz  "ナスビ"
                        .balign 4

glabel D_8013065C
/* 0222FC 8013065C  */  .asciz  "むらさきいろの ヤサイ\n^d「やいて ^4やきナス^d に すると\n^d　おいしいのじゃ」^^"
                        .balign 4

glabel D_801306AC
/* 02234C 801306AC  */  .asciz  "やきナス"
                        .balign 4

glabel D_801306B8
/* 022358 801306B8  */  .asciz  "やきナス"
                        .balign 4

glabel D_801306C4
/* 022364 801306C4  */  .asciz  "やけた^4ナスビ^^\n^d「いいにおいが するはずじゃ。\n^d　^6ピカチュウ^d も おいしくたべるぞ」^^"
                        .balign 4

glabel D_80130720
/* 0223C0 80130720  */  .asciz  "カボチャ"
                        .balign 4

glabel D_8013072C
/* 0223CC 8013072C  */  .asciz  "カボチャ"
                        .balign 4

glabel D_80130738
/* 0223D8 80130738  */  .asciz  "おもくて かたい ヤサイ\n^d「りょうりの ざいりょうじゃ。\n^d にものに いれると おいしいのじゃ」^^"
                        .balign 4

glabel D_80130798
/* 022438 80130798  */  .asciz  "カブ"
                        .balign 4

glabel D_801307A0
/* 022440 801307A0  */  .asciz  "カブ"
                        .balign 4

glabel D_801307A8
/* 022448 801307A8  */  .asciz  "ダイコンの なかま\n^d「りょうりの ざいりょうじゃ。\n^d にものに いれると おいしいのじゃ」^^"
                        .balign 4

glabel D_80130804
/* 0224A4 80130804  */  .asciz  "キャベツ"
                        .balign 4

glabel D_80130810
/* 0224B0 80130810  */  .asciz  "キャベツ"
                        .balign 4

glabel D_8013081C
/* 0224BC 8013081C  */  .asciz  "みどりいろの ヤサイ\n^d「^4ナスビ^d と いっしょに いためた、\n^d　ヤサイイタメは おいしいのじゃ」^^"
                        .balign 4

glabel D_80130880
/* 022520 80130880  */  .asciz  "ニンジン"
                        .balign 4

glabel D_8013088C
/* 02252C 8013088C  */  .asciz  "ニンジン"
                        .balign 4

glabel D_80130898
/* 022538 80130898  */  .asciz  "あかくて ほそながい ヤサイ\n^d「えいよう たっぷりの ヤサイじゃ。\n^d　^6ピカチュウ^d も だいすきじゃ」^^"
                        .balign 4

glabel D_80130900
/* 0225A0 80130900  */  .asciz  "タマネギ"
                        .balign 4

glabel D_8013090C
/* 0225AC 8013090C  */  .asciz  "タマネギ"
                        .balign 4

glabel D_80130918
/* 0225B8 80130918  */  .asciz  "まるく においのつよい ヤサイ\n^d「カレーの ざいりょうになる。\n^d　^4どんなにおい^d か きになるのう」^^"
                        .balign 4

glabel D_80130980
/* 022620 80130980  */  .asciz  "サツマイモ"
                        .balign 4

glabel D_8013098C
/* 02262C 8013098C  */  .asciz  "サツマイモ"
                        .balign 4

glabel D_80130998
/* 022638 80130998  */  .asciz  "むらさきいろの あまいイモ\n^d「^4１０まんボルト^d で やくと、\n^d　おいしい ^4やきイモ^d に なるのじゃ」^^"
                        .balign 4

glabel D_80130A04
/* 0226A4 80130A04  */  .asciz  "やきイモ"
                        .balign 4

glabel D_80130A10
/* 0226B0 80130A10  */  .asciz  "やきイモ"
                        .balign 4

glabel D_80130A1C
/* 0226BC 80130A1C  */  .asciz  "やいて あまみをました ^4サツマイモ^^\n^d「^6ピカチュウ^d に、^4たべていいよ^d と\n^d　いってあげるのじゃ」^^"
                        .balign 4

glabel D_80130A88
/* 022728 80130A88  */  .asciz  "このみ"
                        .balign 4

glabel D_80130A90
/* 022730 80130A90  */  .asciz  "ギンナンのみ"
                        .balign 4

glabel D_80130AA0
/* 022740 80130AA0  */  .asciz  "くさい においのする イチョウのみ\n^d「このにおいは ^6ピカチュウ^d も\n^d　^4だいきらい^d じゃ」^^"
                        .balign 4

glabel D_80130B00
/* 0227A0 80130B00  */  .asciz  "このみ"
                        .balign 4

glabel D_80130B08
/* 0227A8 80130B08  */  .asciz  "ギンナンたね"
                        .balign 4

glabel D_80130B18
/* 0227B8 80130B18  */  .asciz  "やいた ^4ギンナン^^ の み\n^d「すこし くさいにおいがするぞ。\n^d　やきかたが たりないようじゃ」^^"
                        .balign 4

glabel D_80130B78
/* 022818 80130B78  */  .asciz  "このみ"
                        .balign 4

glabel D_80130B80
/* 022820 80130B80  */  .asciz  "やきギンナン"
                        .balign 4

glabel D_80130B90
/* 022830 80130B90  */  .asciz  "やいた ^4ギンナンたね^^\n^d「においは わるいが、\n^d　^4たべて^dみると おいしいのじゃ」^^"
                        .balign 4

glabel D_80130BE8
/* 022888 80130BE8  */  .asciz  "このみ"
                        .balign 4

glabel D_80130BF0
/* 022890 80130BF0  */  .asciz  "クルミ"
                        .balign 4

glabel D_80130BF8
/* 022898 80130BF8  */  .asciz  "かたいからに おおわれた このみ\n^d「なげると、からを わることが\n^d　できるのじゃ」^^"
                        .balign 4

glabel D_80130C4C
/* 0228EC 80130C4C  */  .asciz  "このみ"
                        .balign 4

glabel D_80130C54
/* 0228F4 80130C54  */  .asciz  "むきクルミ"
                        .balign 4

glabel D_80130C60
/* 022900 80130C60  */  .asciz  "えいようのある このみ\n^d「こうばしくて おいしいのじゃ。\n^d　おかしの ざいりょうにも なるぞ」^^"
                        .balign 4

glabel D_80130CC0
/* 022960 80130CC0  */  .asciz  "このみ"
                        .balign 4

glabel D_80130CC8
/* 022968 80130CC8  */  .asciz  "イガグリ"
                        .balign 4

glabel D_80130CD4
/* 022974 80130CD4  */  .asciz  "トゲだらけの このみ\n^d「からを われば、たべることが\n^d  できるのじゃ」^^"
                        .balign 4

glabel D_80130D20
/* 0229C0 80130D20  */  .asciz  "このみ"
                        .balign 4

glabel D_80130D28
/* 0229C8 80130D28  */  .asciz  "ウニグリ"
                        .balign 4

glabel D_80130D34
/* 0229D4 80130D34  */  .asciz  "トゲだらけの このみ\n^d「なぜか、うみべに たくさん\n^d　おちておるのじゃ」^^"
                        .balign 4

glabel D_80130D80
/* 022A20 80130D80  */  .asciz  "このみ"
                        .balign 4

glabel D_80130D88
/* 022A28 80130D88  */  .asciz  "アマグリ"
                        .balign 4

glabel D_80130D94
/* 022A34 80130D94  */  .asciz  "あまい クリの み\n^d「^4ギンナン^d と いっしょに ごはんに\n^d　いれた、おこわは おいしいぞ」^^"
                        .balign 4

glabel D_80130DF4
/* 022A94 80130DF4  */  .asciz  "このみ"
                        .balign 4

glabel D_80130DFC
/* 022A9C 80130DFC  */  .asciz  "クリミソ"
                        .balign 4

glabel D_80130E08
/* 022AA8 80130E08  */  .asciz  "やわらかくて あまい このみ\n^d「なぜか うみの においがする、\n^d　ふしぎな このみじゃ」^^"
                        .balign 4

glabel D_80130E60
/* 022B00 80130E60  */  .asciz  "ヤシのみ"
                        .balign 4

glabel D_80130E6C
/* 022B0C 80130E6C  */  .asciz  "ヤシのみ"
                        .balign 4

glabel D_80130E78
/* 022B18 80130E78  */  .asciz  "ヤシのきになる おおきな み\n^d「みなみのしまと いえば\n^d　^4ヤシのみ^d じゃのう」^^"
                        .balign 4

glabel D_80130ECC
/* 022B6C 80130ECC  */  .asciz  "このみ"
                        .balign 4

glabel D_80130ED4
/* 022B74 80130ED4  */  .asciz  "ドングリ"
                        .balign 4

glabel D_80130EE0
/* 022B80 80130EE0  */  .asciz  "ブナの このみ\n^d「なんの へんてつもない、\n^d　ただの ^4ドングリ^d じゃ」^^"
                        .balign 4

glabel D_80130F2C
/* 022BCC 80130F2C  */  .asciz  "ドングリ"
                        .balign 4

glabel D_80130F38
/* 022BD8 80130F38  */  .asciz  "ドングリ"
                        .balign 4

glabel D_80130F44
/* 022BE4 80130F44  */  .asciz  "カシの このみ\n^d「^4１０まんボルト^d で やくと、\n^d　おいしくなるのじゃ」^^"
                        .balign 4

glabel D_80130F90
/* 022C30 80130F90  */  .asciz  "このみ"
                        .balign 4

glabel D_80130F98
/* 022C38 80130F98  */  .asciz  "ドングリ"
                        .balign 4

glabel D_80130FA4
/* 022C44 80130FA4  */  .asciz  "ブナの このみ\n^d「ねむりごなのついた ^4ドングリ^dじゃ。\n^d　^4すてなさい^d と おしえるとよいぞ」^^"
                        .balign 4

glabel D_80131008
/* 022CA8 80131008  */  .asciz  "このみ"
                        .balign 4

glabel D_80131010
/* 022CB0 80131010  */  .asciz  "ドングリ"
                        .balign 4

glabel D_8013101C
/* 022CBC 8013101C  */  .asciz  "クヌギの このみ\n^d「^4でんきショック^d で やけば、\n^d　おいしくなるのじゃ」^^"
                        .balign 4

glabel D_8013106C
/* 022D0C 8013106C  */  .asciz  "このみ"
                        .balign 4

glabel D_80131074
/* 022D14 80131074  */  .asciz  "やきドングリ"
                        .balign 4

glabel D_80131084
/* 022D24 80131084  */  .asciz  "やけた ドングリ\n^d「においは わるいが あじは よいぞ。\n^d　おかしの ざいりょうにも なるぞ」^^"
                        .balign 4

glabel D_801310E4
/* 022D84 801310E4  */  .asciz  "このみ"
                        .balign 4

glabel D_801310EC
/* 022D8C 801310EC  */  .asciz  "はねドングリ"
                        .balign 4

glabel D_801310FC
/* 022D9C 801310FC  */  .asciz  "はねの はえた ドングリ\n^d「よくとぶぞ。きのうえのものに\n^d　^4なげて^d ぶつけてみるのじゃ」^^"
                        .balign 4

glabel D_8013115C
/* 022DFC 8013115C  */  .asciz  "このみ"
                        .balign 4

glabel D_80131164
/* 022E04 80131164  */  .asciz  "コマドングリ"
                        .balign 4

glabel D_80131174
/* 022E14 80131174  */  .asciz  "まだらもようの ドングリ\n^d「コマのように よく まわる\n^d　^4ドングリ^d じゃ」^^"
                        .balign 4

glabel D_801311C4
/* 022E64 801311C4  */  .asciz  "キノコ"
                        .balign 4

glabel D_801311CC
/* 022E6C 801311CC  */  .asciz  "クリタケ"
                        .balign 4

glabel D_801311D8
/* 022E78 801311D8  */  .asciz  "ドングリに にた ^4キノコ^^\n^d「^4１０まんボルト^d で やくと\n^d　おいしくなるのじゃ」^^"
                        .balign 4

glabel D_80131230
/* 022ED0 80131230  */  .asciz  "キノコ"
                        .balign 4

glabel D_80131238
/* 022ED8 80131238  */  .asciz  "やきクリタケ"
                        .balign 4

glabel D_80131248
/* 022EE8 80131248  */  .asciz  "やけた ^4クリタケ^^\n^d「おいしく やけた ^4キノコ^d じゃ。\n^d　^6ピカチュウ^d も すきじゃろう」^^"
                        .balign 4

glabel D_801312AC
/* 022F4C 801312AC  */  .asciz  "キノコ"
                        .balign 4

glabel D_801312B4
/* 022F54 801312B4  */  .asciz  "ワタヒロタケ"
                        .balign 4

glabel D_801312C4
/* 022F64 801312C4  */  .asciz  "わたのように かるい ^4キノコ^^\n^d「ねむりガスが はいっておるが、\n^d　^4どんなにおい^d なのじゃろう」^^"
                        .balign 4

glabel D_8013132C
/* 022FCC 8013132C  */  .asciz  "キノコ"
                        .balign 4

glabel D_80131334
/* 022FD4 80131334  */  .asciz  "コマヒロタケ"
                        .balign 4

glabel D_80131344
/* 022FE4 80131344  */  .asciz  "ちいさくて かたい ^4キノコ^^\n^d「コマのように よく まわるのじゃ。\n^d　^4なげて^d あそぶと よいじゃろう」^^"
                        .balign 4

glabel D_801313B0
/* 023050 801313B0  */  .asciz  "キノコ"
                        .balign 4

glabel D_801313B8
/* 023058 801313B8  */  .asciz  "あおタマタケ"
                        .balign 4

glabel D_801313C8
/* 023068 801313C8  */  .asciz  "あおくて まるい かさを もつ ^4キノコ^^\n^d「あまり おいしくない ^4キノコ^d じゃ。\n^d　やけば おいしくなるじゃろう」^^"
                        .balign 4

glabel D_80131440
/* 0230E0 80131440  */  .asciz  "キノコ"
                        .balign 4

glabel D_80131448
/* 0230E8 80131448  */  .asciz  "やきタマタケ"
                        .balign 4

glabel D_80131458
/* 0230F8 80131458  */  .asciz  "やけた タマタケ\n^d「りょうりに いれると\n^d　おいしくなるのじゃ」^^"
                        .balign 4

glabel D_8013149C
/* 02313C 8013149C  */  .asciz  "キノコ"
                        .balign 4

glabel D_801314A4
/* 023144 801314A4  */  .asciz  "あかタマタケ"
                        .balign 4

glabel D_801314B4
/* 023154 801314B4  */  .asciz  "あかくて まるい かさを もつ ^4キノコ^^\n^d「たべようとすると ばくはつする、\n^d　ふしぎな ^4キノコ^d じゃ」^^"
                        .balign 4

glabel D_80131520
/* 0231C0 80131520  */  .asciz  "キノコ"
                        .balign 4

glabel D_80131528
/* 0231C8 80131528  */  .asciz  "きタマタケ"
                        .balign 4

glabel D_80131534
/* 0231D4 80131534  */  .asciz  "きいろい まるい かさを もつ ^4キノコ^^\n^d「^6ピカチュウ^d が なぜか\n^d　きにいっている ^4キノコ^d じゃ」^^"
                        .balign 4

glabel D_801315A0
/* 023240 801315A0  */  .asciz  "キノコ"
                        .balign 4

glabel D_801315A8
/* 023248 801315A8  */  .asciz  "キノコ"
                        .balign 4

glabel D_801315B0
/* 023250 801315B0  */  .asciz  "がいこくの ^4キノコ^^\n^d「なんの へんてつもない\n^d　ただの ^4キノコ^d じゃ」^^"
                        .balign 4

glabel D_80131600
/* 0232A0 80131600  */  .asciz  "キノコ"
                        .balign 4

glabel D_80131608
/* 0232A8 80131608  */  .asciz  "キノコ"
                        .balign 4

glabel D_80131610
/* 0232B0 80131610  */  .asciz  "がいこくの ^4キノコ^^\n^d「くさい においのする ^4キノコ^d じゃ」^^\n"
                        .balign 4

glabel D_80131654
/* 0232F4 80131654  */  .asciz  "キノコ"
                        .balign 4

glabel D_8013165C
/* 0232FC 8013165C  */  .asciz  "キノコ"
                        .balign 4

glabel D_80131664
/* 023304 80131664  */  .asciz  "がいこくの ^4キノコ^^\n^d「たまに ほうしを ふきだす\n^d　^4キノコ^d じゃ」^^"
                        .balign 4

glabel D_801316B0
/* 023350 801316B0  */  .asciz  "キノコ"
                        .balign 4

glabel D_801316B8
/* 023358 801316B8  */  .asciz  "やきキノコ"
                        .balign 4

glabel D_801316C4
/* 023364 801316C4  */  .asciz  "やけた がいこくの ^4キノコ^^\n^d「こうばしくて\n^d　とっても おいしい ^4キノコ^d じゃ」^^"
                        .balign 4

glabel D_8013171C
/* 0233BC 8013171C  */  .asciz  "でんきゅう"
                        .balign 4

glabel D_80131728
/* 0233C8 80131728  */  .asciz  "でんきゅう"
                        .balign 4

glabel D_80131734
/* 0233D4 80131734  */  .asciz  "でんきを すいとる とくしゅな^4キノコ^^\n^d「^6ピカチュウ^d が もつと、なぜか\n^d　ひかるのじゃ。たのしいのう」^^"
                        .balign 4

glabel D_801317A4
/* 023444 801317A4  */  .asciz  "おにぎり"
                        .balign 4

glabel D_801317B0
/* 023450 801317B0  */  .asciz  "おにぎり"
                        .balign 4

glabel D_801317BC
/* 02345C 801317BC  */  .asciz  "ママが つくった ^4おにぎり^^\n^d「キミの ママが つくってくれた\n^d おべんとうじゃ。おいしそうじゃの」^^"
                        .balign 4

glabel D_80131824
/* 0234C4 80131824  */  .asciz  "おはな"
                        .balign 4

glabel D_8013182C
/* 0234CC 8013182C  */  .asciz  "ひなぎく"
                        .balign 4

glabel D_80131838
/* 0234D8 80131838  */  .asciz  "しろくて ちいさい はな\n^d「あまり めだたないが、\n^d　かわいい ^4おはな^d じゃ」^^"
                        .balign 4

glabel D_8013188C
/* 02352C 8013188C  */  .asciz  "おはな"
                        .balign 4

glabel D_80131894
/* 023534 80131894  */  .asciz  "スイセン"
                        .balign 4

glabel D_801318A0
/* 023540 801318A0  */  .asciz  "しろい はな\n^d「じょうひんそうな\n^d　^4おはな^d じゃのう」^^"
                        .balign 4

glabel D_801318E0
/* 023580 801318E0  */  .asciz  "おはな"
                        .balign 4

glabel D_801318E8
/* 023588 801318E8  */  .asciz  "チューリップ"
                        .balign 4

glabel D_801318F8
/* 023598 801318F8  */  .asciz  "きゅうこんから そだつ はな\n^d「どのはな みても きれいじゃなあ」^^"
                        .balign 4

glabel D_8013193C
/* 0235DC 8013193C  */  .asciz  "おはな"
                        .balign 4

glabel D_80131944
/* 0235E4 80131944  */  .asciz  "タンポポ"
                        .balign 4

glabel D_80131950
/* 0235F0 80131950  */  .asciz  "はるに さく きいろい はな\n^d「きいろいので ^6ピカチュウ^d も\n^d　だいすきに ちがいない」^^"
                        .balign 4

glabel D_801319AC
/* 02364C 801319AC  */  .asciz  "おはな"
                        .balign 4

glabel D_801319B4
/* 023654 801319B4  */  .asciz  "アサガオ"
                        .balign 4

glabel D_801319C0
/* 023660 801319C0  */  .asciz  "あさに さく はな\n^d「かんさつにっきと いえば\n^d　この ^4おはな^d じゃな」^^"
                        .balign 4

glabel D_80131A0C
/* 0236AC 80131A0C  */  .asciz  "おはな"
                        .balign 4

glabel D_80131A14
/* 0236B4 80131A14  */  .asciz  "ドクダミ"
                        .balign 4

glabel D_80131A20
/* 0236C0 80131A20  */  .asciz  "はっぱが くさい しょくぶつ\n^d「くさくても たべることは\n^d　できるようじゃぞ」^^"
                        .balign 4

glabel D_80131A70
/* 023710 80131A70  */  .asciz  "おはな"
                        .balign 4

glabel D_80131A78
/* 023718 80131A78  */  .asciz  "ヒマワリ"
                        .balign 4

glabel D_80131A84
/* 023724 80131A84  */  .asciz  "なつにさく おおきい きいろの はな\n^d「^6ピカチュウ^d と おなじ、\n^d　きいろい ^4おはな^d じゃ」^^"
                        .balign 4

glabel D_80131AE8
/* 023788 80131AE8  */  .asciz  "おはな"
                        .balign 4

glabel D_80131AF0
/* 023790 80131AF0  */  .asciz  "てっぽうユリ"
                        .balign 4

glabel D_80131B00
/* 0237A0 80131B00  */  .asciz  "しろくて おおきい はな\n^d「よいにおいじゃった きがするが、\n^d　よくおぼえて いないのじゃ」^^"
                        .balign 4

glabel D_80131B60
/* 023800 80131B60  */  .asciz  "つぼみ"
                        .balign 4

glabel D_80131B68
/* 023808 80131B68  */  .asciz  "ベニつぼみ"
                        .balign 4

glabel D_80131B74
/* 023814 80131B74  */  .asciz  "^4ベニボタン^^ の つぼみ\n^d「ちょっとした しょうげきで、\n^d　はなが ひらきそうじゃ」^^"
                        .balign 4

glabel D_80131BCC
/* 02386C 80131BCC  */  .asciz  "おはな"
                        .balign 4

glabel D_80131BD4
/* 023874 80131BD4  */  .asciz  "ベニボタン"
                        .balign 4

glabel D_80131BE0
/* 023880 80131BE0  */  .asciz  "きに さく おおきな あかい はな\n^d「^4キャタピー^d に\n^d　たべさせると よいじゃろう」^^"
                        .balign 4

glabel D_80131C38
/* 0238D8 80131C38  */  .asciz  "フーセン"
                        .balign 4

glabel D_80131C44
/* 0238E4 80131C44  */  .asciz  "フーセン"
                        .balign 4

glabel D_80131C50
/* 0238F0 80131C50  */  .asciz  "あおいろの ^4フーセン^^\n^d「^6ピカチュウ^d が もつと、かってに\n^d　ふくらむ ふしぎな ^4フーセン^d じゃ」^^"
                        .balign 4

glabel D_80131CBC
/* 02395C 80131CBC  */  .asciz  "フーセン"
                        .balign 4

glabel D_80131CC8
/* 023968 80131CC8  */  .asciz  "フーセン"
                        .balign 4

glabel D_80131CD4
/* 023974 80131CD4  */  .asciz  "みどりいろの ^4フーセン^^\n^d「^6ピカチュウ^d が もつと、かってに\n^d　ふくらむ ふしぎな ^4フーセン^d じゃ」^^"
                        .balign 4

glabel D_80131D44
/* 0239E4 80131D44  */  .asciz  "フーセン"
                        .balign 4

glabel D_80131D50
/* 0239F0 80131D50  */  .asciz  "フーセン"
                        .balign 4

glabel D_80131D5C
/* 0239FC 80131D5C  */  .asciz  "むらさきの ^4フーセン^^\n^d「^6ピカチュウ^d が もつと、かってに\n^d　ふくらむ ふしぎな ^4フーセン^d じゃ」^^"
                        .balign 4

glabel D_80131DC8
/* 023A68 80131DC8  */  .asciz  "フーセン"
                        .balign 4

glabel D_80131DD4
/* 023A74 80131DD4  */  .asciz  "フーセン"
                        .balign 4

glabel D_80131DE0
/* 023A80 80131DE0  */  .asciz  "あかい ^4フーセン^^\n^d「^6ピカチュウ^d が もつと、かってに\n^d　ふくらむ ふしぎな ^4フーセン^d じゃ」^^"
                        .balign 4

glabel D_80131E48
/* 023AE8 80131E48  */  .asciz  "フーセン"
                        .balign 4

glabel D_80131E54
/* 023AF4 80131E54  */  .asciz  "フーセン"
                        .balign 4

glabel D_80131E60
/* 023B00 80131E60  */  .asciz  "きいろい ^4フーセン^^\n^d「^6ピカチュウ^d が もつと、かってに\n^d　ふくらむ ふしぎな ^4フーセン^d じゃ」^^"
                        .balign 4

glabel D_80131ECC
/* 023B6C 80131ECC  */  .asciz  "フリスビー"
                        .balign 4

glabel D_80131ED8
/* 023B78 80131ED8  */  .asciz  "フリスビー"
                        .balign 4

glabel D_80131EE4
/* 023B84 80131EE4  */  .asciz  "^4なげて^^ あそぶ えんばん\n^d「クルクル まわって\n^d　よくとぶのじゃ」^^"
                        .balign 4

glabel D_80131F2C
/* 023BCC 80131F2C  */  .asciz  "ボール"
                        .balign 4

glabel D_80131F34
/* 023BD4 80131F34  */  .asciz  "ボール"
                        .balign 4

glabel D_80131F3C
/* 023BDC 80131F3C  */  .asciz  "よくはずむ ゴムの たま\n^d「^4なげて^d あそぶには いちばんじゃ。\n^d　キャッチボールして あそべるぞ」^^"
                        .balign 4

glabel D_80131FA4
/* 023C44 80131FA4  */  .asciz  "ジョウロ"
                        .balign 4

glabel D_80131FB0
/* 023C50 80131FB0  */  .asciz  "ジョウロ"
                        .balign 4

glabel D_80131FBC
/* 023C5C 80131FBC  */  .asciz  "くさばなに みずを かける どうぐ\n^d「^6ピカチュウ^d が ほしがったら、\n^d　いそいで てわたすのじゃ」^^"
                        .balign 4

glabel D_80132024
/* 023CC4 80132024  */  .asciz  "ジョウロ"
                        .balign 4

glabel D_80132030
/* 023CD0 80132030  */  .asciz  "でかジョウロ"
                        .balign 4

glabel D_80132040
/* 023CE0 80132040  */  .asciz  "みずが たくさん はいる ^4ジョウロ^^\n^d「これさえあれば、みずを くみに\n^d　いくことも なくなるじゃろう」^^"
                        .balign 4

glabel D_801320AC
/* 023D4C 801320AC  */  .asciz  "きいろだま"
                        .balign 4

glabel D_801320B8
/* 023D58 801320B8  */  .asciz  "きいろだま"
                        .balign 4

glabel D_801320C4
/* 023D64 801320C4  */  .asciz  "しょうたいふめいの きいろい たま\n^d「これはいったい なんじゃろう？」^^"
                        .balign 4

glabel D_8013210C
/* 023DAC 8013210C  */  .asciz  "けしずみ"
                        .balign 4

glabel D_80132118
/* 023DB8 80132118  */  .asciz  "けしずみ"
                        .balign 4

glabel D_80132124
/* 023DC4 80132124  */  .asciz  "もえかす\n^d「なにかが もえて できたものじゃ。\n^d　ただの ゴミじゃな」^^"
                        .balign 4

glabel D_8013216C
/* 023E0C 8013216C  */  .asciz  "このは"
                        .balign 4

glabel D_80132174
/* 023E14 80132174  */  .asciz  "おちば"
                        .balign 4

glabel D_8013217C
/* 023E1C 8013217C  */  .asciz  "かれて おちた はっぱ\n^d「ただの かれはじゃな」^^"
                        .balign 4

glabel D_801321B0
/* 023E50 801321B0  */  .asciz  "はっぱ"
                        .balign 4

glabel D_801321B8
/* 023E58 801321B8  */  .asciz  "クサブエ"
                        .balign 4

glabel D_801321C4
/* 023E64 801321C4  */  .asciz  "くさで つくった フエ\n^d「^4どんなおと^d が するのじゃろう」^^"
                        .balign 4

glabel D_80132204
/* 023EA4 80132204  */  .asciz  "ハーモニカ"
                        .balign 4

glabel D_80132210
/* 023EB0 80132210  */  .asciz  "ハーモニカ"
                        .balign 4

glabel D_8013221C
/* 023EBC 8013221C  */  .asciz  "くちに くわえて えんそうする がっき\n^d「^6ピカチュウ^d に ^4ならしてみて^d \n^d　もらうと よいじゃろう」^^"
                        .balign 4

glabel D_80132288
/* 023F28 80132288  */  .asciz  "ラッパ"
                        .balign 4

glabel D_80132290
/* 023F30 80132290  */  .asciz  "ラッパ"
                        .balign 4

glabel D_80132298
/* 023F38 80132298  */  .asciz  "よくひびく きんぞくせいの がっき\n^d「ブーブーと おおきい おとが\n^d　するのじゃ」^^"
                        .balign 4

glabel D_801322EC
/* 023F8C 801322EC  */  .asciz  "かみきれ"
                        .balign 4

glabel D_801322F8
/* 023F98 801322F8  */  .asciz  "ティッシュ"
                        .balign 4

glabel D_80132304
/* 023FA4 80132304  */  .asciz  "かるくて うすい かみ\n^d「ちらかしたときは ちゃんと \n^d　^4かたづけ^dるのじゃぞ」^^"
                        .balign 4

glabel D_80132358
/* 023FF8 80132358  */  .asciz  "バナナのかわ"
                        .balign 4

glabel D_80132368
/* 024008 80132368  */  .asciz  "バナナのかわ"
                        .balign 4

glabel D_80132378
/* 024018 80132378  */  .asciz  "^4バナナ^^ の たべかす\n^d「^6ピカチュウ^d が ふむと すべるので\n^d　ちゅういするのじゃ」^^"
                        .balign 4

glabel D_801323D4
/* 024074 801323D4  */  .asciz  "スイカ"
                        .balign 4

glabel D_801323DC
/* 02407C 801323DC  */  .asciz  "スイカ"
                        .balign 4

glabel D_801323E4
/* 024084 801323E4  */  .asciz  "まるくておおきい みどりの くだもの\n^d「なかは あかくて おいしいのじゃ」^^"
                        .balign 4

glabel D_80132430
/* 0240D0 80132430  */  .asciz  "スイカ"
                        .balign 4

glabel D_80132438
/* 0240D8 80132438  */  .asciz  "われスイカ"
                        .balign 4

glabel D_80132444
/* 0240E4 80132444  */  .asciz  "われた ^4スイカ^^\n^d「あかい ぶぶんを たべることが\n^d　できるのじゃ」^^"
                        .balign 4

glabel D_8013248C
/* 02412C 8013248C  */  .asciz  "ぼうし"
                        .balign 4

glabel D_80132494
/* 024134 80132494  */  .asciz  "ぼうし"
                        .balign 4

glabel D_8013249C
/* 02413C 8013249C  */  .asciz  "レプリカの トレーナーぼうし\n^d「トレーナーの トレードマークじゃ。\n^d　かっこいいのう」^^"
                        .balign 4

glabel D_801324F8
/* 024198 801324F8  */  .asciz  "メガホン"
                        .balign 4

glabel D_80132504
/* 0241A4 80132504  */  .asciz  "メガホン"
                        .balign 4

glabel D_80132510
/* 0241B0 80132510  */  .asciz  "ポケットヘルパーの しさく マシン\n^d「ポケットヘルパーを つくるまえに\n^d　つかっておった どうぐじゃ」^^"
                        .balign 4

glabel D_80132578
/* 024218 80132578  */  .asciz  "はり"
                        .balign 4

glabel D_80132580
/* 024220 80132580  */  .asciz  "つりばり"
                        .balign 4

glabel D_8013258C
/* 02422C 8013258C  */  .asciz  "ポケモンを つるための どうぐ\n^d「ポケモンを きずつけない \n^d　あんぜんそうちつき なのじゃ」^^"
                        .balign 4

glabel D_801325EC
/* 02428C 801325EC  */  .asciz  "はり"
                        .balign 4

glabel D_801325F4
/* 024294 801325F4  */  .asciz  "いいつりばり"
                        .balign 4

glabel D_80132604
/* 0242A4 80132604  */  .asciz  "せいのうの よくなった ^4つりばり^^\n^d「つれる ポケモンの しゅるいが\n^d　おおい ^4つりばり^d らしいのじゃ」^^"
                        .balign 4

glabel D_80132674
/* 024314 80132674  */  .asciz  "はた"
                        .balign 4

glabel D_8013267C
/* 02431C 8013267C  */  .asciz  "たいりょうき"
                        .balign 4

glabel D_8013268C
/* 02432C 8013268C  */  .asciz  "さかなを たくさん つった あかし\n^d「スオウのつりばの きねんひんじゃ」^^"
                        .balign 4

glabel D_801326D4
/* 024374 801326D4  */  .asciz  "はた"
                        .balign 4

glabel D_801326DC
/* 02437C 801326DC  */  .asciz  "たいりょうき"
                        .balign 4

glabel D_801326EC
/* 02438C 801326EC  */  .asciz  "さかなを たくさん つった あかし\n^d「アカネのつりばの きねんひんじゃ」^^"
                        .balign 4

glabel D_80132734
/* 0243D4 80132734  */  .asciz  "はた"
                        .balign 4

glabel D_8013273C
/* 0243DC 8013273C  */  .asciz  "たいりょうき"
                        .balign 4

glabel D_8013274C
/* 0243EC 8013274C  */  .asciz  "さかなを たくさん つった あかし\n^d「アサギのつりばの きねんひんじゃ」^^"
                        .balign 4

glabel D_80132794
/* 024434 80132794  */  .asciz  "はた"
                        .balign 4

glabel D_8013279C
/* 02443C 8013279C  */  .asciz  "かいぞくき"
                        .balign 4

glabel D_801327A8
/* 024448 801327A8  */  .asciz  "かいぞくせんの シンボル\n^d「スイカわりの きねんひんじゃ」^^"
                        .balign 4

glabel D_801327E4
/* 024484 801327E4  */  .asciz  "コイン"
                        .balign 4

glabel D_801327EC
/* 02448C 801327EC  */  .asciz  "きんのコイン"
                        .balign 4

glabel D_801327FC
/* 02449C 801327FC  */  .asciz  "きんで できた コイン\n^d「キラキラして きれいじゃな。\n^d　ワシも ほしいのう」^^"
                        .balign 4

glabel D_8013284C
/* 0244EC 8013284C  */  .asciz  "コイン"
                        .balign 4

glabel D_80132854
/* 0244F4 80132854  */  .asciz  "コインチョコ"
                        .balign 4

glabel D_80132864
/* 024504 80132864  */  .asciz  "コインの かたちをした チョコレート\n^d「^4きんのコイン^d と\n^d　まちがえんようにな！」^^"
                        .balign 4

glabel D_801328BC
/* 02455C 801328BC  */  .asciz  "コイン"
                        .balign 4

glabel D_801328C4
/* 024564 801328C4  */  .asciz  "ぎんのコイン"
                        .balign 4

glabel D_801328D4
/* 024574 801328D4  */  .asciz  "ぎんで できた コイン\n^d「￥＄１００の かちが あるのじゃ」^^"
                        .balign 4

glabel D_80132910
/* 0245B0 80132910  */  .asciz  "コイン"
                        .balign 4

glabel D_80132918
/* 0245B8 80132918  */  .asciz  "どうのコイン"
                        .balign 4

glabel D_80132928
/* 0245C8 80132928  */  .asciz  "どうで できた コイン\n^d「￥＄１０の かちが あるのじゃ」^^"
                        .balign 4

glabel D_80132964
/* 024604 80132964  */  .asciz  "ほうせき"
                        .balign 4

glabel D_80132970
/* 024610 80132970  */  .asciz  "ルビー"
                        .balign 4

glabel D_80132978
/* 024618 80132978  */  .asciz  "あかい いろをした かたい ほうせき\n^d「すきとおっていて きれいじゃのう」^^"
                        .balign 4

glabel D_801329C4
/* 024664 801329C4  */  .asciz  "ほうせき"
                        .balign 4

glabel D_801329D0
/* 024670 801329D0  */  .asciz  "サファイア"
                        .balign 4

glabel D_801329DC
/* 02467C 801329DC  */  .asciz  "あおくすきとおった かたい ほうせき\n^d「みごとな あおいろ じゃのう」^^"
                        .balign 4

glabel D_80132A24
/* 0246C4 80132A24  */  .asciz  "ほうせき"
                        .balign 4

glabel D_80132A30
/* 0246D0 80132A30  */  .asciz  "トパーズ"
                        .balign 4

glabel D_80132A3C
/* 0246DC 80132A3C  */  .asciz  "かたくて もろい きいろい ほうせき\n^d「とりわけ こうかな ほうせきじゃ。\n^d　めったに てに はいらないのじゃ」^^"
                        .balign 4

glabel D_80132AAC
/* 02474C 80132AAC  */  .asciz  "ほうせき"
                        .balign 4

glabel D_80132AB8
/* 024758 80132AB8  */  .asciz  "あかビーダマ"
                        .balign 4

glabel D_80132AC8
/* 024768 80132AC8  */  .asciz  "あかい ガラスだま\n^d「ワシが こどものころは\n^d　^4ビーダマ^dあそびを したものじゃ」^^"
                        .balign 4

glabel D_80132B20
/* 0247C0 80132B20  */  .asciz  "ほうせき"
                        .balign 4

glabel D_80132B2C
/* 0247CC 80132B2C  */  .asciz  "あおビーダマ"
                        .balign 4

glabel D_80132B3C
/* 0247DC 80132B3C  */  .asciz  "あおい ガラスだま\n^d「ワシが こどものころは\n^d　^4ビーダマ^dあそびを したものじゃ」^^"
                        .balign 4

glabel D_80132B94
/* 024834 80132B94  */  .asciz  "ほうせき"
                        .balign 4

glabel D_80132BA0
/* 024840 80132BA0  */  .asciz  "きビーダマ"
                        .balign 4

glabel D_80132BAC
/* 02484C 80132BAC  */  .asciz  "きいろい ガラスだま\n^d「ワシが こどものころは\n^d　^4ビーダマ^dあそびを したものじゃ」^^"
                        .balign 4

glabel D_80132C04
/* 0248A4 80132C04  */  .asciz  "ゆびわ"
                        .balign 4

glabel D_80132C0C
/* 0248AC 80132C0C  */  .asciz  "ゆびわ"
                        .balign 4

glabel D_80132C14
/* 0248B4 80132C14  */  .asciz  "ほうせきの ついた アクセサリー\n^d「ふたりの えいえんの\n^d　あいの しるしなのじゃ」^^"
                        .balign 4

glabel D_80132C6C
/* 02490C 80132C6C  */  .asciz  "ゆびわ"
                        .balign 4

glabel D_80132C74
/* 024914 80132C74  */  .asciz  "リングプル"
                        .balign 4

glabel D_80132C80
/* 024920 80132C80  */  .asciz  "かんジュースの ふた\n^d「ゴミを すてては いかんぞ」^^"
                        .balign 4

glabel D_80132CB8
/* 024958 80132CB8  */  .asciz  "つるぎ"
                        .balign 4

glabel D_80132CC0
/* 024960 80132CC0  */  .asciz  "カトラスけん"
                        .balign 4

glabel D_80132CD0
/* 024970 80132CD0  */  .asciz  "かいぞくが つかっていた けん\n^d「スオウじまで みつかる、\n^d　かいぞくの おたからじゃ」^^"
                        .balign 4

glabel D_80132D2C
/* 0249CC 80132D2C  */  .asciz  "つるぎ"
                        .balign 4

glabel D_80132D34
/* 0249D4 80132D34  */  .asciz  "しない"
                        .balign 4

glabel D_80132D3C
/* 0249DC 80132D3C  */  .asciz  "たけでできた けいこようの かたな\n^d「めん どう こて！　むかしは\n^d　ワシも ならしたもんじゃ」^^"
                        .balign 4

glabel D_80132D9C
/* 024A3C 80132D9C  */  .asciz  "はね"
                        .balign 4

glabel D_80132DA4
/* 024A44 80132DA4  */  .asciz  "とりのはね"
                        .balign 4

glabel D_80132DB0
/* 024A50 80132DB0  */  .asciz  "ポケモンから ぬけおちた はね\n^d「かるくて よくとぶのじゃ」^^"
                        .balign 4

glabel D_80132DF0
/* 024A90 80132DF0  */  .asciz  "ねじ"
                        .balign 4

glabel D_80132DF8
/* 024A98 80132DF8  */  .asciz  "ねじ"
                        .balign 4

glabel D_80132E00
/* 024AA0 80132E00  */  .asciz  "ものをとめる てつでできた どうぐ\n^d「がらくたじゃな」^^"
                        .balign 4

glabel D_80132E38
/* 024AD8 80132E38  */  .asciz  "じしゃく"
                        .balign 4

glabel D_80132E44
/* 024AE4 80132E44  */  .asciz  "じしゃく"
                        .balign 4

glabel D_80132E50
/* 024AF0 80132E50  */  .asciz  "じりょくをもった きんぞく\n^d「おもしろい かたちじゃが、\n^d　がらくたじゃ」^^"
                        .balign 4

glabel D_80132EA0
/* 024B40 80132EA0  */  .asciz  "ビーダマ"
                        .balign 4

glabel D_80132EAC
/* 024B4C 80132EAC  */  .asciz  "ビーダマ"
                        .balign 4

glabel D_80132EB8
/* 024B58 80132EB8  */  .asciz  "ガラスで できた たま\n^d「ワシが こどものころは\n^d　^4ビーダマ^dあそびを したものじゃ」^^"
                        .balign 4

glabel D_80132F14
/* 024BB4 80132F14  */  .asciz  "カレー"
                        .balign 4

glabel D_80132F1C
/* 024BBC 80132F1C  */  .asciz  "カレー"
                        .balign 4

glabel D_80132F24
/* 024BC4 80132F24  */  .asciz  "おいしいカレー"
                        .balign 4

glabel D_80132F34
/* 024BD4 80132F34  */  .asciz  "カレー"
                        .balign 4

glabel D_80132F3C
/* 024BDC 80132F3C  */  .asciz  "カレー"
                        .balign 4

glabel D_80132F44
/* 024BE4 80132F44  */  .asciz  "ふつうのカレー"
                        .balign 4

glabel D_80132F54
/* 024BF4 80132F54  */  .asciz  "カレー"
                        .balign 4

glabel D_80132F5C
/* 024BFC 80132F5C  */  .asciz  "まずカレー"
                        .balign 4

glabel D_80132F68
/* 024C08 80132F68  */  .asciz  "まずいカレー"
                        .balign 4

glabel D_80132F78
/* 024C18 80132F78  */  .asciz  "いためもの"
                        .balign 4

glabel D_80132F84
/* 024C24 80132F84  */  .asciz  "ヤサイいため"
                        .balign 4

glabel D_80132F94
/* 024C34 80132F94  */  .asciz  "おいしい ^4ヤサイいため^^"
                        .balign 4

glabel D_80132FB0
/* 024C50 80132FB0  */  .asciz  "いためもの"
                        .balign 4

glabel D_80132FBC
/* 024C5C 80132FBC  */  .asciz  "ヤサイいため"
                        .balign 4

glabel D_80132FCC
/* 024C6C 80132FCC  */  .asciz  "ふつうの ^4ヤサイいため^^"
                        .balign 4

glabel D_80132FE8
/* 024C88 80132FE8  */  .asciz  "いためもの"
                        .balign 4

glabel D_80132FF4
/* 024C94 80132FF4  */  .asciz  "ダメいため"
                        .balign 4

glabel D_80133000
/* 024CA0 80133000  */  .asciz  "まずい ^4ヤサイいため^^"
                        .balign 4

glabel D_80133018
/* 024CB8 80133018  */  .asciz  "スープ"
                        .balign 4

glabel D_80133020
/* 024CC0 80133020  */  .asciz  "スープ"
                        .balign 4

glabel D_80133028
/* 024CC8 80133028  */  .asciz  "おいしい ^4スープ^^"
                        .balign 4

glabel D_8013303C
/* 024CDC 8013303C  */  .asciz  "スープ"
                        .balign 4

glabel D_80133044
/* 024CE4 80133044  */  .asciz  "スープ"
                        .balign 4

glabel D_8013304C
/* 024CEC 8013304C  */  .asciz  "ふつうの ^4スープ^^"
                        .balign 4

glabel D_80133060
/* 024D00 80133060  */  .asciz  "スープ"
                        .balign 4

glabel D_80133068
/* 024D08 80133068  */  .asciz  "スープ"
                        .balign 4

glabel D_80133070
/* 024D10 80133070  */  .asciz  "まずい ^4スープ^^"
                        .balign 4

glabel D_80133084
/* 024D24 80133084  */  .asciz  "おこわ"
                        .balign 4

glabel D_8013308C
/* 024D2C 8013308C  */  .asciz  "おこわ"
                        .balign 4

glabel D_80133094
/* 024D34 80133094  */  .asciz  "おいしい ^4おこわ^^"
                        .balign 4

glabel D_801330A8
/* 024D48 801330A8  */  .asciz  "おこわ"
                        .balign 4

glabel D_801330B0
/* 024D50 801330B0  */  .asciz  "おこわ"
                        .balign 4

glabel D_801330B8
/* 024D58 801330B8  */  .asciz  "ふつうの ^4おこわ^^"
                        .balign 4

glabel D_801330CC
/* 024D6C 801330CC  */  .asciz  "おこわ"
                        .balign 4

glabel D_801330D4
/* 024D74 801330D4  */  .asciz  "ダメおこわ"
                        .balign 4

glabel D_801330E0
/* 024D80 801330E0  */  .asciz  "まずい ^4おこわ^^"
                        .balign 4

glabel D_801330F4
/* 024D94 801330F4  */  .asciz  "クッキー"
                        .balign 4

glabel D_80133100
/* 024DA0 80133100  */  .asciz  "クッキー"
                        .balign 4

glabel D_8013310C
/* 024DAC 8013310C  */  .asciz  "おいしい ^4クッキー^^"
                        .balign 4

glabel D_80133124
/* 024DC4 80133124  */  .asciz  "クッキー"
                        .balign 4

glabel D_80133130
/* 024DD0 80133130  */  .asciz  "クッキー"
                        .balign 4

glabel D_8013313C
/* 024DDC 8013313C  */  .asciz  "ふつうの ^4クッキー^^"
                        .balign 4

glabel D_80133154
/* 024DF4 80133154  */  .asciz  "クッキー"
                        .balign 4

glabel D_80133160
/* 024E00 80133160  */  .asciz  "ダメクッキー"
                        .balign 4

glabel D_80133170
/* 024E10 80133170  */  .asciz  "まずい ^4クッキー^^"
                        .balign 4

glabel D_80133184
/* 024E24 80133184  */  .asciz  "にもの"
                        .balign 4

glabel D_8013318C
/* 024E2C 8013318C  */  .asciz  "フシギスープ"
                        .balign 4

glabel D_8013319C
/* 024E3C 8013319C  */  .asciz  "フシギダネ とくせい^4スープ^^"
                        .balign 4

glabel D_801331BC
/* 024E5C 801331BC  */  .asciz  "ナゾノクサ"
                        .balign 4

glabel D_801331C8
/* 024E68 801331C8  */  .asciz  "みずを かけると\nおおきくなることが ある"
                        .balign 4

glabel D_801331F0
/* 024E90 801331F0  */  .asciz  "ナゾのかぶ"
                        .balign 4

glabel D_801331FC
/* 024E9C 801331FC  */  .asciz  "^4ナゾノクサ^^ に よくにた かぶ\n^d「^4ナゾノクサ^d に よくにておるが、\n^d　まったくべつの しょくぶつじゃ」^^"
                        .balign 4

glabel D_8013326C
/* 024F0C 8013326C  */  .asciz  "クサイハナ"
                        .balign 4

glabel D_80133278
/* 024F18 80133278  */  .asciz  "みずを かけると\nおおきくなることが ある"
                        .balign 4

glabel D_801332A0
/* 024F40 801332A0  */  .asciz  "クサイかぶ"
                        .balign 4

glabel D_801332AC
/* 024F4C 801332AC  */  .asciz  "^4クサイハナ^^ に よくにた かぶ\n^d「^4クサイハナ^d に よくにておるが、\n^d　まったくべつの しょくぶつじゃ」^^"
                        .balign 4

glabel D_8013331C
/* 024FBC 8013331C  */  .asciz  "はこ"
                        .balign 4

glabel D_80133324
/* 024FC4 80133324  */  .asciz  "きのはこ"
                        .balign 4

glabel D_80133330
/* 024FD0 80133330  */  .asciz  "きで できた はこ\n^d「ふたに Ａと ほられておるぞ。\n^d　なにが はいっておるのかのう」^^"
                        .balign 4

glabel D_80133388
/* 025028 80133388  */  .asciz  "はこ"
                        .balign 4

glabel D_80133390
/* 025030 80133390  */  .asciz  "きのはこ"
                        .balign 4

glabel D_8013339C
/* 02503C 8013339C  */  .asciz  "きで できた はこ\n^d「ふたに Ｂと ほられておるぞ。\n^d　なにが はいっておるのかのう」^^"
                        .balign 4

glabel D_801333F4
/* 025094 801333F4  */  .asciz  "はこ"
                        .balign 4

glabel D_801333FC
/* 02509C 801333FC  */  .asciz  "きのはこ"
                        .balign 4

glabel D_80133408
/* 0250A8 80133408  */  .asciz  "きで できた はこ\n^d「ふたに Ｃと ほられておるぞ。\n^d　なにが はいっておるのかのう」^^"
                        .balign 4

glabel D_80133460
/* 025100 80133460  */  .asciz  "はこ"
                        .balign 4

glabel D_80133468
/* 025108 80133468  */  .asciz  "きのはこ"
                        .balign 4

glabel D_80133474
/* 025114 80133474  */  .asciz  "きで できた はこ\n^d「ふたに Ｄと ほられておるぞ。\n^d　なにが はいっておるのかのう」^^"
                        .balign 4

glabel D_801334CC
/* 02516C 801334CC  */  .asciz  "はこ"
                        .balign 4

glabel D_801334D4
/* 025174 801334D4  */  .asciz  "きのはこ"
                        .balign 4

glabel D_801334E0
/* 025180 801334E0  */  .asciz  "きで できた はこ\n^d「ふたに Ｅと ほられておるぞ。\n^d　なにが はいっておるのかのう」^^"
                        .balign 4

glabel D_80133538
/* 0251D8 80133538  */  .asciz  "はこ"
                        .balign 4

glabel D_80133540
/* 0251E0 80133540  */  .asciz  "きのはこ"
                        .balign 4

glabel D_8013354C
/* 0251EC 8013354C  */  .asciz  "きで できた はこ\n^d「ふたに Ｆと ほられておるぞ。\n^d　なにが はいっておるのかのう」^^"
                        .balign 4

glabel D_801335A4
/* 025244 801335A4  */  .asciz  "はこ"
                        .balign 4

glabel D_801335AC
/* 02524C 801335AC  */  .asciz  "きのはこ"
                        .balign 4

glabel D_801335B8
/* 025258 801335B8  */  .asciz  "きで できた はこ\n^d「ふたに Ｇと ほられておるぞ。\n^d　なにが はいっておるのかのう」^^"
                        .balign 4

glabel D_80133610
/* 0252B0 80133610  */  .asciz  "はこ"
                        .balign 4

glabel D_80133618
/* 0252B8 80133618  */  .asciz  "きのはこ"
                        .balign 4

glabel D_80133624
/* 0252C4 80133624  */  .asciz  "きで できた はこ\n^d「ふたに Ｈと ほられておるぞ。\n^d　なにが はいっておるのかのう」^^"
                        .balign 4

glabel D_8013367C
/* 02531C 8013367C  */  .asciz  "はこ"
                        .balign 4

glabel D_80133684
/* 025324 80133684  */  .asciz  "きのはこ"
                        .balign 4

glabel D_80133690
/* 025330 80133690  */  .asciz  "きで できた はこ\n^d「ふたに Ｉと ほられておるぞ。\n^d　なにが はいっておるのかのう」^^"
                        .balign 4

glabel D_801336E8
/* 025388 801336E8  */  .asciz  "はこ"
                        .balign 4

glabel D_801336F0
/* 025390 801336F0  */  .asciz  "きのはこ"
                        .balign 4

glabel D_801336FC
/* 02539C 801336FC  */  .asciz  "きで できた はこ\n^d「ふたに Ｊと ほられておるぞ。\n^d　なにが はいっておるのかのう」^^"
                        .balign 4

glabel D_80133754
/* 0253F4 80133754  */  .asciz  "はこ"
                        .balign 4

glabel D_8013375C
/* 0253FC 8013375C  */  .asciz  "きのはこ"
                        .balign 4

glabel D_80133768
/* 025408 80133768  */  .asciz  "きで できた はこ\n^d「ふたに Ｋと ほられておるぞ。\n^d　なにが はいっておるのかのう」^^"
                        .balign 4

glabel D_801337C0
/* 025460 801337C0  */  .asciz  "はこ"
                        .balign 4

glabel D_801337C8
/* 025468 801337C8  */  .asciz  "きのはこ"
                        .balign 4

glabel D_801337D4
/* 025474 801337D4  */  .asciz  "きで できた はこ\n^d「ふたに Ｌと ほられておるぞ。\n^d　なにが はいっておるのかのう」^^"
                        .balign 4

glabel D_8013382C
/* 0254CC 8013382C  */  .asciz  "はこ"
                        .balign 4

glabel D_80133834
/* 0254D4 80133834  */  .asciz  "きのはこ"
                        .balign 4

glabel D_80133840
/* 0254E0 80133840  */  .asciz  "きで できた はこ\n^d「ふたに Ｍと ほられておるぞ。\n^d　なにが はいっておるのかのう」^^"
                        .balign 4

glabel D_80133898
/* 025538 80133898  */  .asciz  "はこ"
                        .balign 4

glabel D_801338A0
/* 025540 801338A0  */  .asciz  "きのはこ"
                        .balign 4

glabel D_801338AC
/* 02554C 801338AC  */  .asciz  "きで できた はこ\n^d「ふたに Ｚと ほられておるぞ。\n^d　なにが はいっておるのかのう」^^"
                        .balign 4

glabel D_80133904
/* 0255A4 80133904  */  .asciz  "はこ"
                        .balign 4

glabel D_8013390C
/* 0255AC 8013390C  */  .asciz  "みかんばこ"
                        .balign 4

glabel D_80133918
/* 0255B8 80133918  */  .asciz  "ダンボールの はこ\n^d「そのなかに はいっておると、\n^d　^6ピカチュウ^d は きづかないのじゃ」^^"
                        .balign 4

glabel D_80133978
/* 025618 80133978  */  .asciz  "じゆうちょう"
                        .balign 4

glabel D_80133988
/* 025628 80133988  */  .asciz  "じゆうちょう"
                        .balign 4

glabel D_80133998
/* 025638 80133998  */  .asciz  "えをかく しろい かみ\n^d「^6ピカチュウ^d が\n^d　これに えをかくのじゃ」^^"
                        .balign 4

glabel D_801339E4
/* 025684 801339E4  */  .asciz  "じゆうちょう"
                        .balign 4

glabel D_801339F4
/* 025694 801339F4  */  .asciz  "じゆうちょう"
                        .balign 4

glabel D_80133A04
/* 0256A4 80133A04  */  .asciz  "えをかく しろい かみ\n^d「^6ピカチュウ^d が\n^d　これに えをかくのじゃ」^^"
                        .balign 4

glabel D_80133A50
/* 0256F0 80133A50  */  .asciz  "パッド"
                        .balign 4

glabel D_80133A58
/* 0256F8 80133A58  */  .asciz  "６４パッド"
                        .balign 4

glabel D_80133A64
/* 025704 80133A64  */  .asciz  "６４の コントローラー\n^d「ＮＩＮＴＥＮＤＯ６４の\n^d　コントローラーパッドじゃ」^^"
                        .balign 4

glabel D_80133AB8
/* 025758 80133AB8  */  .asciz  "テレビ"
                        .balign 4

glabel D_80133AC0
/* 025760 80133AC0  */  .asciz  "テレビ"
                        .balign 4

glabel D_80133AC8
/* 025768 80133AC8  */  .asciz  "えいぞうを うつす きかい\n^d「^4クイズ^d で あそぶことも\n^d  できるのじゃ」^^"
                        .balign 4

glabel D_80133B18
/* 0257B8 80133B18  */  .asciz  "ぼうえんゐゑ"
                        .balign 4

glabel D_80133B28
/* 0257C8 80133B28  */  .asciz  "ぼうえんゐゑ"
                        .balign 4

glabel D_80133B38
/* 0257D8 80133B38  */  .asciz  "よぞらを ながめる どうぐ\n^d「^6ピカチュウ^d が かってきてくれた\n^d　^4ぼうえんゐゑ^d じゃ」^^"
                        .balign 4

glabel D_80133B98
/* 025838 80133B98  */  .asciz  "ボード"
                        .balign 4

glabel D_80133BA0
/* 025840 80133BA0  */  .asciz  "ボード"
                        .balign 4

glabel D_80133BA8
/* 025848 80133BA8  */  .asciz  "テクスチャを はりつけられる"
                        .balign 4

glabel D_80133BC4
/* 025864 80133BC4  */  .asciz  "たてふだ"
                        .balign 4

glabel D_80133BD0
/* 025870 80133BD0  */  .asciz  "たてふだ"
                        .balign 4

glabel D_80133BDC
/* 02587C 80133BDC  */  .asciz  "じゅもんの かいてある きのふだ\n^d「とくしゅな じゅもんに はんのう\n^d　するように できておるようじゃ」^^"
                        .balign 4

glabel D_80133C44
/* 0258E4 80133C44  */  .asciz  "おわりのほん"
                        .balign 4

glabel D_80133C54
/* 0258F4 80133C54  */  .asciz  "おわりのほん"
                        .balign 4

glabel D_80133C64
/* 025904 80133C64  */  .asciz  "エンディングのはいけい"
                        .balign 4

glabel D_80133C7C
/* 02591C 80133C7C  */  .asciz  "ボタンのき"
                        .balign 4

glabel D_80133C88
/* 025928 80133C88  */  .asciz  "ボタンのき"
                        .balign 4

glabel D_80133C94
/* 025934 80133C94  */  .asciz  "つぼみを たくさん つけている き\n^d「^4１０まんボルト^d を あてると\n^d　つぼみが おちてしまうのじゃ」^^"
                        .balign 4

glabel D_80133CFC
/* 02599C 80133CFC  */  .asciz  "ボタンのき"
                        .balign 4

glabel D_80133D08
/* 0259A8 80133D08  */  .asciz  "ボタンのき"
                        .balign 4

glabel D_80133D14
/* 0259B4 80133D14  */  .asciz  "つぼみを たくさん つけている き\n^d「^4１０まんボルト^d を あてると\n^d　つぼみが おちてしまうのじゃ」^^"
                        .balign 4

glabel D_80133D7C
/* 025A1C 80133D7C  */  .asciz  "ボタンのき"
                        .balign 4

glabel D_80133D88
/* 025A28 80133D88  */  .asciz  "ボタンのき"
                        .balign 4

glabel D_80133D94
/* 025A34 80133D94  */  .asciz  "つぼみを たくさん つけている き\n^d「^4１０まんボルト^d を あてると\n^d　つぼみが おちてしまうのじゃ」^^"
                        .balign 4

glabel D_80133DFC
/* 025A9C 80133DFC  */  .asciz  "ボタンのき"
                        .balign 4

glabel D_80133E08
/* 025AA8 80133E08  */  .asciz  "ボタンのき"
                        .balign 4

glabel D_80133E14
/* 025AB4 80133E14  */  .asciz  "つぼみを たくさん つけている き\n^d「^4１０まんボルト^d を あてると\n^d　つぼみが おちてしまうのじゃ」^^"
                        .balign 4

glabel D_80133E7C
/* 025B1C 80133E7C  */  .asciz  "リンゴのき"
                        .balign 4

glabel D_80133E88
/* 025B28 80133E88  */  .asciz  "リンゴのき"
                        .balign 4

glabel D_80133E94
/* 025B34 80133E94  */  .asciz  "^4リンゴ^^を たくさん つけている き\n^d「^4１０まんボルト^d を あてると\n^d　^4リンゴ^d が おちてしまうのじゃ」^^"
                        .balign 4

glabel D_80133F04
/* 025BA4 80133F04  */  .asciz  "モモのき"
                        .balign 4

glabel D_80133F10
/* 025BB0 80133F10  */  .asciz  "モモのき"
                        .balign 4

glabel D_80133F1C
/* 025BBC 80133F1C  */  .asciz  "^4スイミツトウ^^ を つけている き\n^d「^4１０まんボルト^d を あてると\n^d　^4スイミツトウ^d が おちるのじゃ」^^"
                        .balign 4

glabel D_80133F8C
/* 025C2C 80133F8C  */  .asciz  "クリのき"
                        .balign 4

glabel D_80133F98
/* 025C38 80133F98  */  .asciz  "クリのき"
                        .balign 4

glabel D_80133FA4
/* 025C44 80133FA4  */  .asciz  "^4イガグリ^^を たくさん つけている き\n^d「^4１０まんボルト^d を あてると\n^d　^4イガグリ^d が おちてしまうのじゃ」^^"
                        .balign 4

glabel D_80134018
/* 025CB8 80134018  */  .asciz  "イチョウのき"
                        .balign 4

glabel D_80134028
/* 025CC8 80134028  */  .asciz  "イチョウのき"
                        .balign 4

glabel D_80134038
/* 025CD8 80134038  */  .asciz  "ギンナンを たくさん つけている き\n^d「^4１０まんボルト^d を あてると\n^d　^4ギンナン^d が おちてしまうのじゃ」^^"
                        .balign 4

glabel D_801340A8
/* 025D48 801340A8  */  .asciz  "クルミのき"
                        .balign 4

glabel D_801340B4
/* 025D54 801340B4  */  .asciz  "クルミのき"
                        .balign 4

glabel D_801340C0
/* 025D60 801340C0  */  .asciz  "^4クルミ^^を たくさん つけている き\n^d「^4１０まんボルト^d を あてると\n^d　^4クルミ^d が おちてしまうのじゃ」^^"
                        .balign 4

glabel D_80134130
/* 025DD0 80134130  */  .asciz  "ヤシのき"
                        .balign 4

glabel D_8013413C
/* 025DDC 8013413C  */  .asciz  "ヤシのき"
                        .balign 4

glabel D_80134148
/* 025DE8 80134148  */  .asciz  "ヤシを たくさん つけている き\n^d「^4１０まんボルト^d を あてると\n^d　ヤシが おちてしまうのじゃ」^^"
                        .balign 4

glabel D_801341AC
/* 025E4C 801341AC  */  .asciz  "リンゴのき"
                        .balign 4

glabel D_801341B8
/* 025E58 801341B8  */  .asciz  "リンゴのき"
                        .balign 4

glabel D_801341C4
/* 025E64 801341C4  */  .asciz  "^4リンゴ^^を たくさん つけている き\n^d「^4１０まんボルト^d を あてると\n^d　^4リンゴ^d が おちてしまうのじゃ」^^"
                        .balign 4

glabel D_80134234
/* 025ED4 80134234  */  .asciz  "モモのき"
                        .balign 4

glabel D_80134240
/* 025EE0 80134240  */  .asciz  "モモのき"
                        .balign 4

glabel D_8013424C
/* 025EEC 8013424C  */  .asciz  "^4スイミツトウ^^ を つけている き\n^d「^4１０まんボルト^d を あてると\n^d　^4スイミツトウ^d が おちるのじゃ」^^"
                        .balign 4

glabel D_801342BC
/* 025F5C 801342BC  */  .asciz  "クリのき"
                        .balign 4

glabel D_801342C8
/* 025F68 801342C8  */  .asciz  "クリのき"
                        .balign 4

glabel D_801342D4
/* 025F74 801342D4  */  .asciz  "^4イガグリ^^を たくさん つけている き\n^d「^4１０まんボルト^d を あてると\n^d　^4イガグリ^d が おちてしまうのじゃ」^^"
                        .balign 4

glabel D_80134348
/* 025FE8 80134348  */  .asciz  "イチョウのき"
                        .balign 4

glabel D_80134358
/* 025FF8 80134358  */  .asciz  "イチョウのき"
                        .balign 4

glabel D_80134368
/* 026008 80134368  */  .asciz  "ギンナンを たくさん つけている き\n^d「^4１０まんボルト^d を あてると\n^d　^4ギンナン^d が おちてしまうのじゃ」^^"
                        .balign 4

glabel D_801343D8
/* 026078 801343D8  */  .asciz  "クルミのき"
                        .balign 4

glabel D_801343E4
/* 026084 801343E4  */  .asciz  "クルミのき"
                        .balign 4

glabel D_801343F0
/* 026090 801343F0  */  .asciz  "^4クルミ^^を たくさん つけている き\n^d「^4１０まんボルト^d を あてると\n^d　^4クルミ^d が おちてしまうのじゃ」^^"
                        .balign 4

glabel D_80134460
/* 026100 80134460  */  .asciz  "ヤシのき"
                        .balign 4

glabel D_8013446C
/* 02610C 8013446C  */  .asciz  "ヤシのき"
                        .balign 4

glabel D_80134478
/* 026118 80134478  */  .asciz  "ヤシを たくさん つけている き\n^d「^4１０まんボルト^d を あてると\n^d　ヤシが おちてしまうのじゃ」^^"
                        .balign 4

glabel D_801344DC
/* 02617C 801344DC  */  .asciz  "かばん"
                        .balign 4

glabel D_801344E4
/* 026184 801344E4  */  .asciz  "どうぐかばん"
                        .balign 4

glabel D_801344F4
/* 026194 801344F4  */  .asciz  "どうぐを いれておく かばん"
                        .balign 4

glabel D_80134510
/* 0261B0 80134510  */  .asciz  "Ｐヘルパー"
                        .balign 4

glabel D_8013451C
/* 0261BC 8013451C  */  .asciz  "Ｐヘルパー"
                        .balign 4

glabel D_80134528
/* 0261C8 80134528  */  .asciz  "マイクつきの コンピュータ\n^d「ワシの じしんさくじゃ」^^"
                        .balign 4

glabel D_80134560
/* 026200 80134560  */  .asciz  "?"
                        .balign 4

glabel D_80134564
/* 026204 80134564  */  .asciz  "?"
                        .balign 4

glabel D_80134568
/* 026208 80134568  */  .asciz  "?"
                        .balign 4

glabel D_8013456C
/* 02620C 8013456C 00000000 */  .word  0x00000000
/* 026210 80134570 4552524F */  .word  0x4552524F
/* 026214 80134574 523A2049 */  .word  0x523A2049
/* 026218 80134578 6E76616C */  .word  0x6E76616C
/* 02621C 8013457C 69642069 */  .word  0x69642069
/* 026220 80134580 74656D54 */  .word  0x74656D54
/* 026224 80134584 7970652E */  .word  0x7970652E
/* 026228 80134588 20747970 */  .word  0x20747970
/* 02622C 8013458C 654D696E */  .word  0x654D696E
/* 026230 80134590 203D2025 */  .word  0x203D2025
/* 026234 80134594 64202074 */  .word  0x64202074
/* 026238 80134598 7970654D */  .word  0x7970654D
/* 02623C 8013459C 6178203D */  .word  0x6178203D
/* 026240 801345A0 2025640A */  .word  0x2025640A
/* 026244 801345A4 00000000 */  .word  0x00000000
/* 026248 801345A8 72657175 */  .word  0x72657175
/* 02624C 801345AC 6573742D */  .word  0x6573742D
/* 026250 801345B0 636C696E */  .word  0x636C696E
/* 026254 801345B4 673A2570 */  .word  0x673A2570
/* 026258 801345B8 20747970 */  .word  0x20747970
/* 02625C 801345BC 653A2564 */  .word  0x653A2564
/* 026260 801345C0 0A000000 */  .word  0x0A000000
/* 026264 801345C4 496E7661 */  .word  0x496E7661
/* 026268 801345C8 6C696420 */  .word  0x6C696420
/* 02626C 801345CC 7363616C */  .word  0x7363616C
/* 026270 801345D0 653A2566 */  .word  0x653A2566
/* 026274 801345D4 0A000000 */  .word  0x0A000000
/* 026278 801345D8 706C6179 */  .word  0x706C6179
/* 02627C 801345DC 65722D3E */  .word  0x65722D3E
/* 026280 801345E0 686F6C64 */  .word  0x686F6C64
/* 026284 801345E4 4974656D */  .word  0x4974656D
/* 026288 801345E8 203D2025 */  .word  0x203D2025
/* 02628C 801345EC 640A0000 */  .word  0x640A0000
/* 026290 801345F0 486F6C64 */  .word  0x486F6C64
/* 026294 801345F4 20737562 */  .word  0x20737562
/* 026298 801345F8 6A656374 */  .word  0x6A656374
/* 02629C 801345FC 20686173 */  .word  0x20686173
/* 0262A0 80134600 20626565 */  .word  0x20626565
/* 0262A4 80134604 6E206465 */  .word  0x6E206465
/* 0262A8 80134608 6C657465 */  .word  0x6C657465
/* 0262AC 8013460C 642E0A00 */  .word  0x642E0A00
/* 0262B0 80134610 7375626A */  .word  0x7375626A
/* 0262B4 80134614 6563742D */  .word  0x6563742D
/* 0262B8 80134618 3E686F6C */  .word  0x3E686F6C
/* 0262BC 8013461C 64497465 */  .word  0x64497465
/* 0262C0 80134620 6D203D20 */  .word  0x6D203D20
/* 0262C4 80134624 25640A00 */  .word  0x25640A00
/* 0262C8 80134628 4552524F */  .word  0x4552524F
/* 0262CC 8013462C 523A2053 */  .word  0x523A2053
/* 0262D0 80134630 7472616E */  .word  0x7472616E
/* 0262D4 80134634 67652073 */  .word  0x67652073
/* 0262D8 80134638 74617465 */  .word  0x74617465
/* 0262DC 8013463C 2E0A0000 */  .word  0x2E0A0000
/* 0262E0 80134640 6D616B65 */  .word  0x6D616B65
/* 0262E4 80134644 4974656D */  .word  0x4974656D
/* 0262E8 80134648 28252E32 */  .word  0x28252E32
/* 0262EC 8013464C 662C2025 */  .word  0x662C2025
/* 0262F0 80134650 2E32662C */  .word  0x2E32662C
/* 0262F4 80134654 20252E32 */  .word  0x20252E32
/* 0262F8 80134658 662C2025 */  .word  0x662C2025
/* 0262FC 8013465C 64292000 */  .word  0x64292000
/* 026300 80134660 28257329 */  .word  0x28257329
/* 026304 80134664 0A000000 */  .word  0x0A000000
/* 026308 80134668 6974656D */  .word  0x6974656D
/* 02630C 8013466C 54797065 */  .word  0x54797065
/* 026310 80134670 20256420 */  .word  0x20256420
/* 026314 80134674 68617320 */  .word  0x68617320
/* 026318 80134678 61207369 */  .word  0x61207369
/* 02631C 8013467C 626C696E */  .word  0x626C696E
/* 026320 80134680 670A0000 */  .word  0x670A0000
/* 026324 80134684 64657374 */  .word  0x64657374
/* 026328 80134688 726F7920 */  .word  0x726F7920
/* 02632C 8013468C 6974656D */  .word  0x6974656D
/* 026330 80134690 2E206974 */  .word  0x2E206974
/* 026334 80134694 656D2072 */  .word  0x656D2072
/* 026338 80134698 65737420 */  .word  0x65737420
/* 02633C 8013469C 3D202564 */  .word  0x3D202564
/* 026340 801346A0 0A000000 */  .word  0x0A000000
/* 026344 801346A4 4552524F */  .word  0x4552524F
/* 026348 801346A8 523A2055 */  .word  0x523A2055
/* 02634C 801346AC 6E6B6E6F */  .word  0x6E6B6E6F
/* 026350 801346B0 776E2064 */  .word  0x776E2064
/* 026354 801346B4 7261774D */  .word  0x7261774D
/* 026358 801346B8 6F646528 */  .word  0x6F646528
/* 02635C 801346BC 2564290A */  .word  0x2564290A
/* 026360 801346C0 00000000 */  .word  0x00000000
/* 026364 801346C4 4572726F */  .word  0x4572726F
/* 026368 801346C8 723A2055 */  .word  0x723A2055
/* 02636C 801346CC 6E6B6E6F */  .word  0x6E6B6E6F
/* 026370 801346D0 776E2068 */  .word  0x776E2068
/* 026374 801346D4 6F6C645F */  .word  0x6F6C645F
/* 026378 801346D8 74797065 */  .word  0x74797065
/* 02637C 801346DC 28256429 */  .word  0x28256429
/* 026380 801346E0 20696E20 */  .word  0x20696E20
/* 026384 801346E4 6974656D */  .word  0x6974656D
/* 026388 801346E8 28257029 */  .word  0x28257029
/* 02638C 801346EC 0A000000 */  .word  0x0A000000
/* 026390 801346F0 6974656D */  .word  0x6974656D
/* 026394 801346F4 5468726F */  .word  0x5468726F
/* 026398 801346F8 77206974 */  .word  0x77206974
/* 02639C 801346FC 656D4944 */  .word  0x656D4944
/* 0263A0 80134700 3A25640A */  .word  0x3A25640A
/* 0263A4 80134704 6F726750 */  .word  0x6F726750
/* 0263A8 80134708 6F732020 */  .word  0x6F732020
/* 0263AC 8013470C 28252E32 */  .word  0x28252E32
/* 0263B0 80134710 662C2025 */  .word  0x662C2025
/* 0263B4 80134714 2E32662C */  .word  0x2E32662C
/* 0263B8 80134718 20252E32 */  .word  0x20252E32
/* 0263BC 8013471C 66290A74 */  .word  0x66290A74
/* 0263C0 80134720 68726F77 */  .word  0x68726F77
/* 0263C4 80134724 506F7328 */  .word  0x506F7328
/* 0263C8 80134728 252E3266 */  .word  0x252E3266
/* 0263CC 8013472C 2C20252E */  .word  0x2C20252E
/* 0263D0 80134730 32662C20 */  .word  0x32662C20
/* 0263D4 80134734 252E3266 */  .word  0x252E3266
/* 0263D8 80134738 290A7468 */  .word  0x290A7468
/* 0263DC 8013473C 726F7756 */  .word  0x726F7756
/* 0263E0 80134740 656C2825 */  .word  0x656C2825
/* 0263E4 80134744 2E32662C */  .word  0x2E32662C
/* 0263E8 80134748 20252E32 */  .word  0x20252E32
/* 0263EC 8013474C 662C2025 */  .word  0x662C2025
/* 0263F0 80134750 2E326629 */  .word  0x2E326629
/* 0263F4 80134754 0A000000 */  .word  0x0A000000
/* 0263F8 80134758 6974656D */  .word  0x6974656D
/* 0263FC 8013475C 4368616E */  .word  0x4368616E
/* 026400 80134760 6765416E */  .word  0x6765416E
/* 026404 80134764 696D6528 */  .word  0x696D6528
/* 026408 80134768 25702C20 */  .word  0x25702C20
/* 02640C 8013476C 2564290A */  .word  0x2564290A
/* 026410 80134770 00000000 */  .word  0x00000000
/* 026414 80134774 6974656D */  .word  0x6974656D
/* 026418 80134778 4368616E */  .word  0x4368616E
/* 02641C 8013477C 67654D61 */  .word  0x67654D61
/* 026420 80134780 74282570 */  .word  0x74282570
/* 026424 80134784 2C202564 */  .word  0x2C202564
/* 026428 80134788 290A0000 */  .word  0x290A0000
/* 02642C 8013478C 4552524F */  .word  0x4552524F
/* 026430 80134790 523A2075 */  .word  0x523A2075
/* 026434 80134794 6E6B6E6F */  .word  0x6E6B6E6F
/* 026438 80134798 776E2069 */  .word  0x776E2069
/* 02643C 8013479C 74656D52 */  .word  0x74656D52
/* 026440 801347A0 6573706F */  .word  0x6573706F
/* 026444 801347A4 6E736554 */  .word  0x6E736554
/* 026448 801347A8 79706528 */  .word  0x79706528
/* 02644C 801347AC 2564290A */  .word  0x2564290A
/* 026450 801347B0 00000000 */  .word  0x00000000
/* 026454 801347B4 6974656D */  .word  0x6974656D
/* 026458 801347B8 4368616E */  .word  0x4368616E
/* 02645C 801347BC 67652825 */  .word  0x67652825
/* 026460 801347C0 70282573 */  .word  0x70282573
/* 026464 801347C4 292C2025 */  .word  0x292C2025
/* 026468 801347C8 64290A00 */  .word  0x64290A00
/* 02646C 801347CC 6368616E */  .word  0x6368616E
/* 026470 801347D0 67655468 */  .word  0x67655468
/* 026474 801347D4 756E6465 */  .word  0x756E6465
/* 026478 801347D8 723A2564 */  .word  0x723A2564
/* 02647C 801347DC 20636861 */  .word  0x20636861
/* 026480 801347E0 6E676554 */  .word  0x6E676554
/* 026484 801347E4 6F3A2573 */  .word  0x6F3A2573
/* 026488 801347E8 0A000000 */  .word  0x0A000000
/* 02648C 801347EC 4552524F */  .word  0x4552524F
/* 026490 801347F0 523A2055 */  .word  0x523A2055
/* 026494 801347F4 6E6B6E6F */  .word  0x6E6B6E6F
/* 026498 801347F8 776E2063 */  .word  0x776E2063
/* 02649C 801347FC 61757365 */  .word  0x61757365
/* 0264A0 80134800 28256429 */  .word  0x28256429
/* 0264A4 80134804 0A000000 */  .word  0x0A000000
/* 0264A8 80134808 4552524F */  .word  0x4552524F
/* 0264AC 8013480C 523A2043 */  .word  0x523A2043
/* 0264B0 80134810 616E6E6F */  .word  0x616E6E6F
/* 0264B4 80134814 74206368 */  .word  0x74206368
/* 0264B8 80134818 616E6765 */  .word  0x616E6765
/* 0264BC 8013481C 20636865 */  .word  0x20636865
/* 0264C0 80134820 636B6564 */  .word  0x636B6564
/* 0264C4 80134824 2D696E20 */  .word  0x2D696E20
/* 0264C8 80134828 6974656D */  .word  0x6974656D
/* 0264CC 8013482C 2E0A0000 */  .word  0x2E0A0000
/* 0264D0 80134830 4552524F */  .word  0x4552524F
/* 0264D4 80134834 523A2053 */  .word  0x523A2053
/* 0264D8 80134838 7472616E */  .word  0x7472616E
/* 0264DC 8013483C 67652E0A */  .word  0x67652E0A
/* 0264E0 80134840 00000000 */  .word  0x00000000
/* 0264E4 80134844 4552524F */  .word  0x4552524F
/* 0264E8 80134848 523A2055 */  .word  0x523A2055
/* 0264EC 8013484C 6E6B6E6F */  .word  0x6E6B6E6F
/* 0264F0 80134850 776E2068 */  .word  0x776E2068
/* 0264F4 80134854 6F6C6446 */  .word  0x6F6C6446
/* 0264F8 80134858 6C616728 */  .word  0x6C616728
/* 0264FC 8013485C 2564290A */  .word  0x2564290A
/* 026500 80134860 00000000 */  .word  0x00000000
/* 026504 80134864 63686563 */  .word  0x63686563
/* 026508 80134868 6B696E20 */  .word  0x6B696E20
/* 02650C 8013486C 25702825 */  .word  0x25702825
/* 026510 80134870 73290A00 */  .word  0x73290A00
/* 026514 80134874 63686563 */  .word  0x63686563
/* 026518 80134878 6B6F7574 */  .word  0x6B6F7574
/* 02651C 8013487C 20257028 */  .word  0x20257028
/* 026520 80134880 2573290A */  .word  0x2573290A
/* 026524 80134884 00000000 */  .word  0x00000000
/* 026528 80134888 496E7661 */  .word  0x496E7661
/* 02652C 8013488C 6C696420 */  .word  0x6C696420
/* 026530 80134890 6974656D */  .word  0x6974656D
/* 026534 80134894 4E616D65 */  .word  0x4E616D65
/* 026538 80134898 54797065 */  .word  0x54797065
/* 02653C 8013489C 28256429 */  .word  0x28256429
/* 026540 801348A0 20697465 */  .word  0x20697465
/* 026544 801348A4 6D547970 */  .word  0x6D547970
/* 026548 801348A8 65203D20 */  .word  0x65203D20
/* 02654C 801348AC 25640A00 */  .word  0x25640A00

glabel D_801348B0
/* 026550 801348B0 00000000 */  .word  0x00000000

glabel D_801348B4
/* 026554 801348B4 A1CAA4C9 */  .word  0xA1CAA4C9
/* 026558 801348B8 A4A6A4B0 */  .word  0xA4A6A4B0
/* 02655C 801348BC A1CB0000 */  .word  0xA1CB0000
/* 026560 801348C0 4572726F */  .word  0x4572726F
/* 026564 801348C4 723A2049 */  .word  0x723A2049
/* 026568 801348C8 6E76616C */  .word  0x6E76616C
/* 02656C 801348CC 69642063 */  .word  0x69642063
/* 026570 801348D0 6F6E7465 */  .word  0x6F6E7465
/* 026574 801348D4 6E745479 */  .word  0x6E745479
/* 026578 801348D8 70653A25 */  .word  0x70653A25
/* 02657C 801348DC 640A0000 */  .word  0x640A0000
/* 026580 801348E0 496E7661 */  .word  0x496E7661
/* 026584 801348E4 6C696420 */  .word  0x6C696420
/* 026588 801348E8 6974656D */  .word  0x6974656D
/* 02658C 801348EC 48656C70 */  .word  0x48656C70
/* 026590 801348F0 54797065 */  .word  0x54797065
/* 026594 801348F4 28256429 */  .word  0x28256429
/* 026598 801348F8 20697465 */  .word  0x20697465
/* 02659C 801348FC 6D547970 */  .word  0x6D547970
/* 0265A0 80134900 65203D20 */  .word  0x65203D20
/* 0265A4 80134904 25640A00 */  .word  0x25640A00

glabel D_80134908
/* 0265A8 80134908 3E99999A */  .float  0.30000001192092896

glabel D_8013490C
/* 0265AC 8013490C C7C35000 */  .float  -100000.0

glabel jtbl_80134910
/* 0265B0 80134910 80117394 */  .word  L80117394
/* 0265B4 80134914 801173E0 */  .word  L801173E0
/* 0265B8 80134918 8011742C */  .word  L8011742C
/* 0265BC 8013491C 80117478 */  .word  L80117478
/* 0265C0 80134920 801174C4 */  .word  L801174C4
/* 0265C4 80134924 80117510 */  .word  L80117510
/* 0265C8 80134928 8011755C */  .word  L8011755C

glabel jtbl_8013492C
/* 0265CC 8013492C 80117730 */  .word  L80117730
/* 0265D0 80134930 801176B4 */  .word  L801176B4
/* 0265D4 80134934 801176DC */  .word  L801176DC
/* 0265D8 80134938 801176DC */  .word  L801176DC
/* 0265DC 8013493C 80117728 */  .word  L80117728
/* 0265E0 80134940 801176AC */  .word  L801176AC

glabel jtbl_80134944
/* 0265E4 80134944 80117CF8 */  .word  L80117CF8
/* 0265E8 80134948 80117D1C */  .word  L80117D1C
/* 0265EC 8013494C 80117D40 */  .word  L80117D40
/* 0265F0 80134950 80117D64 */  .word  L80117D64
/* 0265F4 80134954 80117D88 */  .word  L80117D88

glabel jtbl_80134958
/* 0265F8 80134958 80117EBC */  .word  L80117EBC
/* 0265FC 8013495C 80117EE8 */  .word  L80117EE8
/* 026600 80134960 80117FB4 */  .word  L80117FB4
/* 026604 80134964 80117FF0 */  .word  L80117FF0
/* 026608 80134968 80117FF0 */  .word  L80117FF0
/* 02660C 8013496C 80117FAC */  .word  L80117FAC

glabel jtbl_80134970
/* 026610 80134970 8011807C */  .word  L8011807C
/* 026614 80134974 8011807C */  .word  L8011807C
/* 026618 80134978 80118058 */  .word  L80118058
/* 02661C 8013497C 80118058 */  .word  L80118058
/* 026620 80134980 8011807C */  .word  L8011807C
/* 026624 80134984 8011807C */  .word  L8011807C

glabel jtbl_80134988
/* 026628 80134988 801184F8 */  .word  L801184F8
/* 02662C 8013498C 801184E0 */  .word  L801184E0
/* 026630 80134990 801184EC */  .word  L801184EC
/* 026634 80134994 801184EC */  .word  L801184EC
/* 026638 80134998 801184E0 */  .word  L801184E0
/* 02663C 8013499C 801184EC */  .word  L801184EC
/* 026640 801349A0 801184E0 */  .word  L801184E0
/* 026644 801349A4 00000000 */  .word  0x00000000
/* 026648 801349A8 00000000 */  .word  0x00000000
/* 02664C 801349AC 00000000 */  .word  0x00000000
/* 026650 801349B0 5741524E */  .word  0x5741524E
/* 026654 801349B4 494E4720 */  .word  0x494E4720
/* 026658 801349B8 3A207374 */  .word  0x3A207374
/* 02665C 801349BC 61636B20 */  .word  0x61636B20
/* 026660 801349C0 73697A65 */  .word  0x73697A65
/* 026664 801349C4 206F7574 */  .word  0x206F7574
/* 026668 801349C8 206F6620 */  .word  0x206F6620
/* 02666C 801349CC 72616E67 */  .word  0x72616E67
/* 026670 801349D0 652C2025 */  .word  0x652C2025
/* 026674 801349D4 640A0000 */  .word  0x640A0000

glabel D_801349D8
/* 026678 801349D8 25640000 */  .word  0x25640000

glabel D_801349DC
/* 02667C 801349DC 25660000 */  .word  0x25660000

glabel D_801349E0
/* 026680 801349E0 4E6F2050 */  .word  0x4E6F2050
/* 026684 801349E4 50550000 */  .word  0x50550000
/* 026688 801349E8 636F6465 */  .word  0x636F6465
/* 02668C 801349EC 203D2025 */  .word  0x203D2025
/* 026690 801349F0 640A0000 */  .word  0x640A0000
/* 026694 801349F4 50505520 */  .word  0x50505520
/* 026698 801349F8 2D207072 */  .word  0x2D207072
/* 02669C 801349FC 6F636573 */  .word  0x6F636573
/* 0266A0 80134A00 7320656E */  .word  0x7320656E
/* 0266A4 80134A04 642E0A00 */  .word  0x642E0A00
/* 0266A8 80134A08 25640A00 */  .word  0x25640A00

glabel jtbl_80134A0C
/* 0266AC 80134A0C 80118F9C */  .word  L80118F9C
/* 0266B0 80134A10 80118FA8 */  .word  L80118FA8
/* 0266B4 80134A14 80118FB4 */  .word  L80118FB4
/* 0266B8 80134A18 80118FC0 */  .word  L80118FC0
/* 0266BC 80134A1C 80118FCC */  .word  L80118FCC

glabel jtbl_80134A20
/* 0266C0 80134A20 8011902C */  .word  L8011902C
/* 0266C4 80134A24 80119038 */  .word  L80119038
/* 0266C8 80134A28 80119044 */  .word  L80119044
/* 0266CC 80134A2C 80119058 */  .word  L80119058
/* 0266D0 80134A30 80119090 */  .word  L80119090

glabel jtbl_80134A34
/* 0266D4 80134A34 80119394 */  .word  L80119394
/* 0266D8 80134A38 801193C8 */  .word  L801193C8
/* 0266DC 80134A3C 801193FC */  .word  L801193FC
/* 0266E0 80134A40 80119414 */  .word  L80119414
/* 0266E4 80134A44 8011942C */  .word  L8011942C
/* 0266E8 80134A48 80119444 */  .word  L80119444
/* 0266EC 80134A4C 801195A4 */  .word  L801195A4
/* 0266F0 80134A50 8011945C */  .word  L8011945C
/* 0266F4 80134A54 80119490 */  .word  L80119490

glabel D_80134A58
/* 0266F8 80134A58 3A83126F */  .float  0.0010000000474974513

glabel D_80134A5C
/* 0266FC 80134A5C 3A83126F */  .float  0.0010000000474974513

glabel jtbl_80134A60
/* 026700 80134A60 80119508 */  .word  L80119508
/* 026704 80134A64 80119518 */  .word  L80119518
/* 026708 80134A68 80119528 */  .word  L80119528
/* 02670C 80134A6C 8011953C */  .word  L8011953C
/* 026710 80134A70 80119550 */  .word  L80119550
/* 026714 80134A74 80119564 */  .word  L80119564
/* 026718 80134A78 801195A4 */  .word  L801195A4
/* 02671C 80134A7C 80119578 */  .word  L80119578
/* 026720 80134A80 80119590 */  .word  L80119590

glabel jtbl_80134A84
/* 026724 80134A84 8011988C */  .word  L8011988C
/* 026728 80134A88 8011988C */  .word  L8011988C
/* 02672C 80134A8C 8011988C */  .word  L8011988C
/* 026730 80134A90 801198D4 */  .word  L801198D4
/* 026734 80134A94 801198D4 */  .word  L801198D4
/* 026738 80134A98 801198E4 */  .word  L801198E4
/* 02673C 80134A9C 801198E4 */  .word  L801198E4
/* 026740 80134AA0 801198E4 */  .word  L801198E4
/* 026744 80134AA4 801198E4 */  .word  L801198E4
/* 026748 80134AA8 801198E4 */  .word  L801198E4
/* 02674C 80134AAC 80119954 */  .word  L80119954
/* 026750 80134AB0 801198F4 */  .word  L801198F4
/* 026754 80134AB4 801198F4 */  .word  L801198F4
/* 026758 80134AB8 801198F4 */  .word  L801198F4
/* 02675C 80134ABC 801198F4 */  .word  L801198F4
/* 026760 80134AC0 801198F4 */  .word  L801198F4
/* 026764 80134AC4 801198F4 */  .word  L801198F4
/* 026768 80134AC8 801198D4 */  .word  L801198D4
/* 02676C 80134ACC 801198F4 */  .word  L801198F4
/* 026770 80134AD0 801198F4 */  .word  L801198F4
/* 026774 80134AD4 80119904 */  .word  L80119904
/* 026778 80134AD8 80119904 */  .word  L80119904
/* 02677C 80134ADC 80119904 */  .word  L80119904
/* 026780 80134AE0 80119904 */  .word  L80119904
/* 026784 80134AE4 80119914 */  .word  L80119914
/* 026788 80134AE8 80119938 */  .word  L80119938
/* 02678C 80134AEC 80119AB8 */  .word  L80119AB8
/* 026790 80134AF0 80119A84 */  .word  L80119A84
/* 026794 80134AF4 80119A24 */  .word  L80119A24
/* 026798 80134AF8 80119A3C */  .word  L80119A3C
/* 02679C 80134AFC 80119AE8 */  .word  L80119AE8
/* 0267A0 80134B00 801198C0 */  .word  L801198C0
/* 0267A4 80134B04 80119B3C */  .word  L80119B3C
/* 0267A8 80134B08 80119970 */  .word  L80119970
/* 0267AC 80134B0C 801199A4 */  .word  L801199A4
/* 0267B0 80134B10 80119A0C */  .word  L80119A0C
/* 0267B4 80134B14 00000000 */  .word  0x00000000
/* 0267B8 80134B18 00000000 */  .word  0x00000000
/* 0267BC 80134B1C 00000000 */  .word  0x00000000
/* 0267C0 80134B20 6E657276 */  .word  0x6E657276
/* 0267C4 80134B24 65546872 */  .word  0x65546872
/* 0267C8 80134B28 6F774974 */  .word  0x6F774974
/* 0267CC 80134B2C 656D202D */  .word  0x656D202D
/* 0267D0 80134B30 2025640A */  .word  0x2025640A
/* 0267D4 80134B34 00000000 */  .word  0x00000000
/* 0267D8 80134B38 6E657276 */  .word  0x6E657276
/* 0267DC 80134B3C 65477261 */  .word  0x65477261
/* 0267E0 80134B40 62497465 */  .word  0x62497465
/* 0267E4 80134B44 6D202D20 */  .word  0x6D202D20
/* 0267E8 80134B48 25640A00 */  .word  0x25640A00
/* 0267EC 80134B4C 6E657276 */  .word  0x6E657276
/* 0267F0 80134B50 65456174 */  .word  0x65456174
/* 0267F4 80134B54 4974656D */  .word  0x4974656D
/* 0267F8 80134B58 202D2025 */  .word  0x202D2025
/* 0267FC 80134B5C 640A0000 */  .word  0x640A0000
/* 026800 80134B60 6D657373 */  .word  0x6D657373
/* 026804 80134B64 61676553 */  .word  0x61676553
/* 026808 80134B68 65747570 */  .word  0x65747570
/* 02680C 80134B6C 2825642C */  .word  0x2825642C
/* 026810 80134B70 25642C25 */  .word  0x25642C25
/* 026814 80134B74 64290A00 */  .word  0x64290A00
/* 026818 80134B78 4552524F */  .word  0x4552524F
/* 02681C 80134B7C 523A2055 */  .word  0x523A2055
/* 026820 80134B80 6E6B6E6F */  .word  0x6E6B6E6F
/* 026824 80134B84 776E206E */  .word  0x776E206E
/* 026828 80134B88 65727665 */  .word  0x65727665
/* 02682C 80134B8C 20726F75 */  .word  0x20726F75
/* 026830 80134B90 74696E65 */  .word  0x74696E65
/* 026834 80134B94 2E204E65 */  .word  0x2E204E65
/* 026838 80134B98 72766520 */  .word  0x72766520
/* 02683C 80134B9C 6E756D62 */  .word  0x6E756D62
/* 026840 80134BA0 65722025 */  .word  0x65722025
/* 026844 80134BA4 640A0000 */  .word  0x640A0000

glabel D_80134BA8
/* 026848 80134BA8 3F19999A */  .float  0.6000000238418579

glabel D_80134BAC
/* 02684C 80134BAC 3F19999A */  .float  0.6000000238418579

glabel D_80134BB0
/* 026850 80134BB0 3FC99999A0000000 */  .double  0.20000000298023224

glabel D_80134BB8
/* 026858 80134BB8 3ECCCCCD */  .float  0.4000000059604645

glabel jtbl_80134BBC
/* 02685C 80134BBC 8011A680 */  .word  L8011A680
/* 026860 80134BC0 8011A6BC */  .word  L8011A6BC
/* 026864 80134BC4 8011A6CC */  .word  L8011A6CC
/* 026868 80134BC8 8011A6DC */  .word  L8011A6DC
/* 02686C 80134BCC 8011A6F4 */  .word  L8011A6F4
/* 026870 80134BD0 8011A704 */  .word  L8011A704
/* 026874 80134BD4 8011A714 */  .word  L8011A714
/* 026878 80134BD8 8011A724 */  .word  L8011A724
/* 02687C 80134BDC 8011A734 */  .word  L8011A734
/* 026880 80134BE0 8011A744 */  .word  L8011A744
/* 026884 80134BE4 8011A754 */  .word  L8011A754
/* 026888 80134BE8 8011A764 */  .word  L8011A764
/* 02688C 80134BEC 8011A774 */  .word  L8011A774
/* 026890 80134BF0 8011A784 */  .word  L8011A784
/* 026894 80134BF4 8011A794 */  .word  L8011A794
/* 026898 80134BF8 00000000 */  .word  0x00000000
/* 02689C 80134BFC 00000000 */  .word  0x00000000
/* 0268A0 80134C00 2573203D */  .word  0x2573203D
/* 0268A4 80134C04 20282533 */  .word  0x20282533
/* 0268A8 80134C08 2E32662C */  .word  0x2E32662C
/* 0268AC 80134C0C 2025332E */  .word  0x2025332E
/* 0268B0 80134C10 32662C20 */  .word  0x32662C20
/* 0268B4 80134C14 25332E32 */  .word  0x25332E32
/* 0268B8 80134C18 66290A00 */  .word  0x66290A00
/* 0268BC 80134C1C 61000000 */  .word  0x61000000
/* 0268C0 80134C20 2573203D */  .word  0x2573203D
/* 0268C4 80134C24 20282533 */  .word  0x20282533
/* 0268C8 80134C28 2E32662C */  .word  0x2E32662C
/* 0268CC 80134C2C 2025332E */  .word  0x2025332E
/* 0268D0 80134C30 32662C20 */  .word  0x32662C20
/* 0268D4 80134C34 25332E32 */  .word  0x25332E32
/* 0268D8 80134C38 66290A00 */  .word  0x66290A00
/* 0268DC 80134C3C 65000000 */  .word  0x65000000
/* 0268E0 80134C40 73657452 */  .word  0x73657452
/* 0268E4 80134C44 65616374 */  .word  0x65616374
/* 0268E8 80134C48 54797065 */  .word  0x54797065
/* 0268EC 80134C4C 3A25640A */  .word  0x3A25640A
/* 0268F0 80134C50 00000000 */  .word  0x00000000

glabel D_80134C54
/* 0268F4 80134C54  */  .asciz  " "
                        .balign 4

glabel D_80134C58
/* 0268F8 80134C58  */  .asciz  " "
                        .balign 4

glabel D_80134C5C
/* 0268FC 80134C5C  */  .asciz  " "
                        .balign 4

glabel D_80134C60
/* 026900 80134C60  */  .asciz  " "
                        .balign 4

glabel D_80134C64
/* 026904 80134C64  */  .asciz  " "
                        .balign 4

glabel D_80134C68
/* 026908 80134C68  */  .asciz  " "
                        .balign 4

glabel D_80134C6C
/* 02690C 80134C6C  */  .asciz  " "
                        .balign 4

glabel D_80134C70
/* 026910 80134C70  */  .asciz  " "
                        .balign 4

glabel D_80134C74
/* 026914 80134C74  */  .asciz  " "
                        .balign 4

glabel D_80134C78
/* 026918 80134C78  */  .asciz  "^6ピカチュウ^^ "
                        .balign 4

glabel D_80134C88
/* 026928 80134C88  */  .asciz  "  ^cげんき^1でちゅう ^^"
                        .balign 4

glabel D_80134CA0
/* 026940 80134CA0  */  .asciz  " "
                        .balign 4

glabel D_80134CA4
/* 026944 80134CA4  */  .asciz  "^8せいさく スタッフ ^^"
                        .balign 4

glabel D_80134CBC
/* 02695C 80134CBC  */  .asciz  " "
                        .balign 4

glabel D_80134CC0
/* 026960 80134CC0  */  .asciz  "^9アンブレラ ^^"
                        .balign 4

glabel D_80134CD0
/* 026970 80134CD0  */  .asciz  "^1 いわさき ひろき ^^"
                        .balign 4

glabel D_80134CE8
/* 026988 80134CE8  */  .asciz  "^1 おく よしゆき ^^"
                        .balign 4

glabel D_80134CFC
/* 02699C 80134CFC  */  .asciz  "^1 おざわ むねあき ^^"
                        .balign 4

glabel D_80134D14
/* 0269B4 80134D14  */  .asciz  "^1 おばた みき ^^"
                        .balign 4

glabel D_80134D28
/* 0269C8 80134D28  */  .asciz  "^1 かわしま わたる ^^"
                        .balign 4

glabel D_80134D40
/* 0269E0 80134D40  */  .asciz  "^1 ささき しんいち ^^"
                        .balign 4

glabel D_80134D58
/* 0269F8 80134D58  */  .asciz  "^1 すぎやま まさひろ ^^"
                        .balign 4

glabel D_80134D70
/* 026A10 80134D70  */  .asciz  "^1 やまなか ひろゆき ^^"
                        .balign 4

glabel D_80134D88
/* 026A28 80134D88  */  .asciz  "^1 よしみつ だいすけ ^^"
                        .balign 4

glabel D_80134DA0
/* 026A40 80134DA0  */  .asciz  "^1 わたなべ ひろたけ ^^"
                        .balign 4

glabel D_80134DB8
/* 026A58 80134DB8  */  .asciz  " "
                        .balign 4

glabel D_80134DBC
/* 026A5C 80134DBC  */  .asciz  "^1 くろだ ようすけ ^^"
                        .balign 4

glabel D_80134DD4
/* 026A74 80134DD4  */  .asciz  "^1 すま ようすけ ^^"
                        .balign 4

glabel D_80134DE8
/* 026A88 80134DE8  */  .asciz  "^5 たかやま ともえ ^^"
                        .balign 4

glabel D_80134E00
/* 026AA0 80134E00  */  .asciz  "^1 てらかわ あいん ^^"
                        .balign 4

glabel D_80134E18
/* 026AB8 80134E18  */  .asciz  "^1 まつむら のりお ^^"
                        .balign 4

glabel D_80134E30
/* 026AD0 80134E30  */  .asciz  "^1 まつもと ひさと ^^"
                        .balign 4

glabel D_80134E48
/* 026AE8 80134E48  */  .asciz  "^5 むらかみ ようこ ^^"
                        .balign 4

glabel D_80134E60
/* 026B00 80134E60  */  .asciz  "^1 やえがし たけし ^^"
                        .balign 4

glabel D_80134E78
/* 026B18 80134E78  */  .asciz  " "
                        .balign 4

glabel D_80134E7C
/* 026B1C 80134E7C  */  .asciz  "^1 いとう たかゆき ^^"
                        .balign 4

glabel D_80134E94
/* 026B34 80134E94  */  .asciz  " "
                        .balign 4

glabel D_80134E98
/* 026B38 80134E98  */  .asciz  " "
                        .balign 4

glabel D_80134E9C
/* 026B3C 80134E9C  */  .asciz  "^8こえの しゅつえん ^^"
                        .balign 4

glabel D_80134EB4
/* 026B54 80134EB4  */  .asciz  " "
                        .balign 4

glabel D_80134EB8
/* 026B58 80134EB8  */  .asciz  "^5 おおたに いくえ ^^"
                        .balign 4

glabel D_80134ED0
/* 026B70 80134ED0  */  .asciz  " "
                        .balign 4

glabel D_80134ED4
/* 026B74 80134ED4  */  .asciz  "^5 こおろぎ さとみ ^^"
                        .balign 4

glabel D_80134EEC
/* 026B8C 80134EEC  */  .asciz  "^5 はやしばら めぐみ ^^"
                        .balign 4

glabel D_80134F04
/* 026BA4 80134F04  */  .asciz  "^1 やまぐち かっぺい ^^"
                        .balign 4

glabel D_80134F1C
/* 026BBC 80134F1C  */  .asciz  "^9                ほか ^^"
                        .balign 4

glabel D_80134F38
/* 026BD8 80134F38  */  .asciz  " "
                        .balign 4

glabel D_80134F3C
/* 026BDC 80134F3C  */  .asciz  "^1 おばた ぴかちゅう ^^"
                        .balign 4

glabel D_80134F54
/* 026BF4 80134F54  */  .asciz  " "
                        .balign 4

glabel D_80134F58
/* 026BF8 80134F58  */  .asciz  " "
                        .balign 4

glabel D_80134F5C
/* 026BFC 80134F5C  */  .asciz  "^8マネジメント ^^"
                        .balign 4

glabel D_80134F70
/* 026C10 80134F70  */  .asciz  " "
                        .balign 4

glabel D_80134F74
/* 026C14 80134F74  */  .asciz  "^9マリーガルマネジメント ^^"
                        .balign 4

glabel D_80134F90
/* 026C30 80134F90  */  .asciz  "^5 いとう ようこ ^^"
                        .balign 4

glabel D_80134FA4
/* 026C44 80134FA4  */  .asciz  "^1 うちやま まさし ^^"
                        .balign 4

glabel D_80134FBC
/* 026C5C 80134FBC  */  .asciz  "^1 かやま てつ ^^"
                        .balign 4

glabel D_80134FD0
/* 026C70 80134FD0  */  .asciz  "^1 こがねざわ つとむ ^^"
                        .balign 4

glabel D_80134FE8
/* 026C88 80134FE8  */  .asciz  "^1 にしざわ けんじ ^^"
                        .balign 4

glabel D_80135000
/* 026CA0 80135000  */  .asciz  " "
                        .balign 4

glabel D_80135004
/* 026CA4 80135004  */  .asciz  "^1 あんどう おさむ ^^"
                        .balign 4

glabel D_8013501C
/* 026CBC 8013501C  */  .asciz  "^5 いけがめ ちか ^^"
                        .balign 4

glabel D_80135030
/* 026CD0 80135030  */  .asciz  " "
                        .balign 4

glabel D_80135034
/* 026CD4 80135034  */  .asciz  " "
                        .balign 4

glabel D_80135038
/* 026CD8 80135038  */  .asciz  "^8デバッグ ^^"
                        .balign 4

glabel D_80135048
/* 026CE8 80135048  */  .asciz  " "
                        .balign 4

glabel D_8013504C
/* 026CEC 8013504C  */  .asciz  "^9さるがくちょう ^^"
                        .balign 4

glabel D_80135060
/* 026D00 80135060  */  .asciz  "^1 はしもと とおる ^^"
                        .balign 4

glabel D_80135078
/* 026D18 80135078  */  .asciz  "^1 まつもと のぼる ^^"
                        .balign 4

glabel D_80135090
/* 026D30 80135090  */  .asciz  " "
                        .balign 4

glabel D_80135094
/* 026D34 80135094  */  .asciz  " "
                        .balign 4

glabel D_80135098
/* 026D38 80135098  */  .asciz  "^8なかまポケモン‥ ^^"
                        .balign 4

glabel D_801350B0
/* 026D50 801350B0  */  .asciz  "^8          モデリング ^^"
                        .balign 4

glabel D_801350CC
/* 026D6C 801350CC  */  .asciz  " "
                        .balign 4

glabel D_801350D0
/* 026D70 801350D0  */  .asciz  "^9ＣＲ．６４ＭＣ ^^"
                        .balign 4

glabel D_801350E4
/* 026D84 801350E4  */  .asciz  "^1 いとう べにまる ^^"
                        .balign 4

glabel D_801350FC
/* 026D9C 801350FC  */  .asciz  "^1 さわやま ゆういち ^^"
                        .balign 4

glabel D_80135114
/* 026DB4 80135114  */  .asciz  "^1 すずき じゅんご ^^"
                        .balign 4

glabel D_8013512C
/* 026DCC 8013512C  */  .asciz  "^1 たがわ よしゆき ^^"
                        .balign 4

glabel D_80135144
/* 026DE4 80135144  */  .asciz  "^1 やざわ かずお ^^"
                        .balign 4

glabel D_80135158
/* 026DF8 80135158  */  .asciz  " "
                        .balign 4

glabel D_8013515C
/* 026DFC 8013515C  */  .asciz  " "
                        .balign 4

glabel D_80135160
/* 026E00 80135160  */  .asciz  "^8スペシャルサンクス ^^"
                        .balign 4

glabel D_80135178
/* 026E18 80135178  */  .asciz  " "
                        .balign 4

glabel D_8013517C
/* 026E1C 8013517C  */  .asciz  "^9 にんてんどうスタッフ ^^"
                        .balign 4

glabel D_80135198
/* 026E38 80135198  */  .asciz  "^9 スーパーマリオクラブ ^^"
                        .balign 4

glabel D_801351B4
/* 026E54 801351B4  */  .asciz  " "
                        .balign 4

glabel D_801351B8
/* 026E58 801351B8  */  .asciz  "^1 あおき としなお ^^"
                        .balign 4

glabel D_801351D0
/* 026E70 801351D0  */  .asciz  "^1 いわた さとる ^^"
                        .balign 4

glabel D_801351E4
/* 026E84 801351E4  */  .asciz  "^1 かわぐち たかし ^^"
                        .balign 4

glabel D_801351FC
/* 026E9C 801351FC  */  .asciz  "^5 かわむら くにみ ^^"
                        .balign 4

glabel D_80135214
/* 026EB4 80135214  */  .asciz  "^1 じんない ひろゆき ^^"
                        .balign 4

glabel D_8013522C
/* 026ECC 8013522C  */  .asciz  "^1 ひらばやし ひさかず ^^"
                        .balign 4

glabel D_80135248
/* 026EE8 80135248  */  .asciz  "^1 ふじもと じゅん ^^"
                        .balign 4

glabel D_80135260
/* 026F00 80135260  */  .asciz  " "
                        .balign 4

glabel D_80135264
/* 026F04 80135264  */  .asciz  " "
                        .balign 4

glabel D_80135268
/* 026F08 80135268  */  .asciz  "^8プロデューサー ^^"
                        .balign 4

glabel D_8013527C
/* 026F1C 8013527C  */  .asciz  " "
                        .balign 4

glabel D_80135280
/* 026F20 80135280  */  .asciz  "^1 いしはら つねかず ^^"
                        .balign 4

glabel D_80135298
/* 026F38 80135298  */  .asciz  " "
                        .balign 4

glabel D_8013529C
/* 026F3C 8013529C  */  .asciz  " "
                        .balign 4

glabel D_801352A0
/* 026F40 801352A0  */  .asciz  "^8ポケットモンスター ^^"
                        .balign 4

glabel D_801352B8
/* 026F58 801352B8  */  .asciz  "^8             げんさく ^^"
                        .balign 4

glabel D_801352D4
/* 026F74 801352D4  */  .asciz  " "
                        .balign 4

glabel D_801352D8
/* 026F78 801352D8  */  .asciz  "^1 たじり さとし ^^"
                        .balign 4

glabel D_801352EC
/* 026F8C 801352EC  */  .asciz  " "
                        .balign 4

glabel D_801352F0
/* 026F90 801352F0  */  .asciz  " "
                        .balign 4

glabel D_801352F4
/* 026F94 801352F4  */  .asciz  " "
                        .balign 4

glabel D_801352F8
/* 026F98 801352F8  */  .asciz  "^8せいさく ^^"
                        .balign 4

glabel D_80135308
/* 026FA8 80135308  */  .asciz  " "
                        .balign 4

glabel D_8013530C
/* 026FAC 8013530C  */  .asciz  " "
                        .balign 4

glabel D_80135310
/* 026FB0 80135310  */  .asciz  " "
                        .balign 4

glabel D_80135314
/* 026FB4 80135314  */  .asciz  "^2    アンブレラ ^^"
                        .balign 4

glabel D_80135328
/* 026FC8 80135328  */  .asciz  " "
                        .balign 4

glabel D_8013532C
/* 026FCC 8013532C  */  .asciz  " "
                        .balign 4

glabel D_80135330
/* 026FD0 80135330  */  .asciz  " "
                        .balign 4

glabel D_80135334
/* 026FD4 80135334  */  .asciz  " "
                        .balign 4

glabel D_80135338
/* 026FD8 80135338  */  .asciz  " "
                        .balign 4

glabel D_8013533C
/* 026FDC 8013533C  */  .asciz  "^f◇◇◇◇◇◇◇◇◇◇◇^^ "
                        .balign 4
/* 026FF8 80135358  */  .asciz  ""
                        .balign 4
/* 026FFC 8013535C  */  .asciz  ""
                        .balign 4

glabel D_80135360
/* 027000 80135360  */  .asciz  "セーブＦＣＢ"
                        .balign 4

glabel D_80135370
/* 027010 80135370  */  .asciz  "ＥＥＰＲＯＭの\n　ＦＣＢに\n　セーブします\n"
                        .balign 4

glabel D_8013539C
/* 02703C 8013539C  */  .asciz  "ロードＦＣＢ"
                        .balign 4

glabel D_801353AC
/* 02704C 801353AC  */  .asciz  "ＥＥＰＲＯＭの\n　ＦＣＢから\n　ロードします\n"
                        .balign 4

glabel D_801353D8
/* 027078 801353D8  */  .asciz  "セーブ２"
                        .balign 4

glabel D_801353E4
/* 027084 801353E4  */  .asciz  "ＥＥＰＲＯＭの\n　ファイル２に\n　セーブします\n"
                        .balign 4

glabel D_80135414
/* 0270B4 80135414  */  .asciz  "セーブ１"
                        .balign 4

glabel D_80135420
/* 0270C0 80135420  */  .asciz  "ＥＥＰＲＯＭの\n　ファイル１に\n　セーブします\n"
                        .balign 4

glabel D_80135450
/* 0270F0 80135450  */  .asciz  "ロード２"
                        .balign 4

glabel D_8013545C
/* 0270FC 8013545C  */  .asciz  "ＥＥＰＲＯＭの\n　ファイル２から\n　ロードします\n"
                        .balign 4

glabel D_8013548C
/* 02712C 8013548C  */  .asciz  "ロード１"
                        .balign 4

glabel D_80135498
/* 027138 80135498  */  .asciz  "ＥＥＰＲＯＭの\n　ファイル１から\n　ロードします\n"
                        .balign 4

glabel D_801354C8
/* 027168 801354C8  */  .asciz  "セーブ"
                        .balign 4

glabel D_801354D0
/* 027170 801354D0  */  .asciz  "データセーブ"
                        .balign 4

glabel D_801354E0
/* 027180 801354E0  */  .asciz  "デバグ"
                        .balign 4

glabel D_801354E8
/* 027188 801354E8  */  .asciz  "こうかおん"
                        .balign 4

glabel D_801354F4
/* 027194 801354F4  */  .asciz  "きょく"
                        .balign 4

glabel D_801354FC
/* 02719C 801354FC  */  .asciz  "ボリューム"
                        .balign 4

glabel D_80135508
/* 0271A8 80135508  */  .asciz  "モノラル"
                        .balign 4

glabel D_80135514
/* 0271B4 80135514  */  .asciz  "おとを\nモノラルにします"
                        .balign 4

glabel D_8013552C
/* 0271CC 8013552C  */  .asciz  "ステレオ"
                        .balign 4

glabel D_80135538
/* 0271D8 80135538  */  .asciz  "おとを\nステレオにします"
                        .balign 4

glabel D_80135550
/* 0271F0 80135550  */  .asciz  "サウンド"
                        .balign 4

glabel D_8013555C
/* 0271FC 8013555C  */  .asciz  "ノーマル"
                        .balign 4

glabel D_80135568
/* 027208 80135568  */  .asciz  "みまわしモードで\n３Ｄスティックを\nまえに たおすと\nうえを むきます"
                        .balign 4

glabel D_801355AC
/* 02724C 801355AC  */  .asciz  "リバース"
                        .balign 4

glabel D_801355B8
/* 027258 801355B8  */  .asciz  "みまわしモードで\n３Ｄスティックを\nまえに たおすと\nしたを むきます"
                        .balign 4

glabel D_801355FC
/* 02729C 801355FC  */  .asciz  "スティック"
                        .balign 4

glabel D_80135608
/* 0272A8 80135608  */  .asciz  "スティック‥"
                        .balign 4

glabel D_80135618
/* 0272B8 80135618  */  .asciz  "みまわしモードの\nときの かおの\nかたむけかたを\nえらびます\n\n 　《》で ひらく"
                        .balign 4

glabel D_80135664
/* 027304 80135664  */  .asciz  "ボリューム‥"
                        .balign 4

glabel D_80135674
/* 027314 80135674  */  .asciz  "おとのおおきさを\nかえます\n\n\n\n 　《》で ひらく"
                        .balign 4

glabel D_801356A4
/* 027344 801356A4  */  .asciz  "サウンド‥"
                        .balign 4

glabel D_801356B0
/* 027350 801356B0  */  .asciz  "ステレオと\nモノラルを\nえらびます\n\n\n 　《》で ひらく"
                        .balign 4

glabel D_801356E4
/* 027384 801356E4  */  .asciz  "せってい"
                        .balign 4

glabel D_801356F0
/* 027390 801356F0  */  .asciz  "やっぱりやめる"
                        .balign 4

glabel D_80135700
/* 0273A0 80135700  */  .asciz  "かえる"
                        .balign 4

glabel D_80135708
/* 0273A8 80135708  */  .asciz  "かえりますか？"
                        .balign 4

glabel D_80135718
/* 0273B8 80135718  */  .asciz  "うちへかえる‥"
                        .balign 4

glabel D_80135728
/* 0273C8 80135728  */  .asciz  "うちへかえるか\nえらびます\n\n\n\n 　《》で ひらく"
                        .balign 4

glabel D_80135758
/* 0273F8 80135758  */  .asciz  "ぜんたいマップ"
                        .balign 4

glabel D_80135768
/* 027408 80135768  */  .asciz  "デバグ"
                        .balign 4

glabel D_80135770
/* 027410 80135770  */  .asciz  "せってい‥"
                        .balign 4

glabel D_8013577C
/* 02741C 8013577C  */  .asciz  "せっていを\nかえます\n\n\n\n 　《》で ひらく"
                        .balign 4

glabel D_801357A4
/* 027444 801357A4  */  .asciz  "にっすう"
                        .balign 4

glabel D_801357B0
/* 027450 801357B0  */  .asciz  "じょうたい"
                        .balign 4

glabel D_801357BC
/* 02745C 801357BC  */  .asciz  "メニュー"
                        .balign 4
/* 027468 801357C8  */  .asciz  "right menu buffer overflow.\n"
                        .balign 4

glabel D_801357E8
/* 027488 801357E8 2D2D2D2D */  .word  0x2D2D2D2D
/* 02748C 801357EC 2D2D0000 */  .word  0x2D2D0000

glabel D_801357F0
/* 027490 801357F0 00000000 */  .word  0x00000000
/* 027494 801357F4 63757272 */  .word  0x63757272
/* 027498 801357F8 656E7420 */  .word  0x656E7420
/* 02749C 801357FC 6D656E75 */  .word  0x6D656E75
/* 0274A0 80135800 20697465 */  .word  0x20697465
/* 0274A4 80135804 6D203D20 */  .word  0x6D203D20
/* 0274A8 80135808 25730A00 */  .word  0x25730A00
/* 0274AC 8013580C 73656C20 */  .word  0x73656C20
/* 0274B0 80135810 3D202564 */  .word  0x3D202564
/* 0274B4 80135814 2C206D61 */  .word  0x2C206D61
/* 0274B8 80135818 78203D20 */  .word  0x78203D20
/* 0274BC 8013581C 25642C20 */  .word  0x25642C20
/* 0274C0 80135820 66726F6D */  .word  0x66726F6D
/* 0274C4 80135824 203D2025 */  .word  0x203D2025
/* 0274C8 80135828 640A0000 */  .word  0x640A0000
/* 0274CC 8013582C 456E7465 */  .word  0x456E7465
/* 0274D0 80135830 72207379 */  .word  0x72207379
/* 0274D4 80135834 7374656D */  .word  0x7374656D
/* 0274D8 80135838 206D656E */  .word  0x206D656E
/* 0274DC 8013583C 75206D6F */  .word  0x75206D6F
/* 0274E0 80135840 64652E0A */  .word  0x64652E0A
/* 0274E4 80135844 00000000 */  .word  0x00000000
/* 0274E8 80135848 45786974 */  .word  0x45786974
/* 0274EC 8013584C 20737973 */  .word  0x20737973
/* 0274F0 80135850 74656D20 */  .word  0x74656D20
/* 0274F4 80135854 6D656E75 */  .word  0x6D656E75
/* 0274F8 80135858 206D6F64 */  .word  0x206D6F64
/* 0274FC 8013585C 652E0A00 */  .word  0x652E0A00

glabel D_80135860
/* 027500 80135860 0AA3D4A3 */  .word  0x0AA3D4A3
/* 027504 80135864 CFA3D4A3 */  .word  0xCFA3D4A3
/* 027508 80135868 C1A3CC0A */  .word  0xC1A3CC0A
/* 02750C 8013586C 25640AA3 */  .word  0x25640AA3
/* 027510 80135870 CDA3C1A3 */  .word  0xCDA3C1A3
/* 027514 80135874 D80A2564 */  .word  0xD80A2564
/* 027518 80135878 0A000000 */  .word  0x0A000000

glabel D_8013587C
/* 02751C 8013587C 0A257325 */  .word  0x0A257325
/* 027520 80135880 73257325 */  .word  0x73257325
/* 027524 80135884 730A2573 */  .word  0x730A2573
/* 027528 80135888 25732573 */  .word  0x25732573
/* 02752C 8013588C 25730A25 */  .word  0x25730A25
/* 027530 80135890 73257325 */  .word  0x73257325
/* 027534 80135894 730AA4A4 */  .word  0x730AA4A4
/* 027538 80135898 A4A82025 */  .word  0xA4A82025
/* 02753C 8013589C 6420A5E0 */  .word  0x6420A5E0
/* 027540 801358A0 A5AB2025 */  .word  0xA5AB2025
/* 027544 801358A4 640AA4AA */  .word  0x640AA4AA
/* 027548 801358A8 A4C42025 */  .word  0xA4C42025
/* 02754C 801358AC 640A0000 */  .word  0x640A0000

glabel D_801358B0
/* 027550 801358B0 A5CB0000 */  .word  0xA5CB0000

glabel D_801358B4
/* 027554 801358B4 A3F80000 */  .word  0xA3F80000

glabel D_801358B8
/* 027558 801358B8 A4EA0000 */  .word  0xA4EA0000

glabel D_801358BC
/* 02755C 801358BC A3F80000 */  .word  0xA3F80000

glabel D_801358C0
/* 027560 801358C0 A4BF0000 */  .word  0xA4BF0000

glabel D_801358C4
/* 027564 801358C4 A3F80000 */  .word  0xA3F80000

glabel D_801358C8
/* 027568 801358C8 A4B90000 */  .word  0xA4B90000

glabel D_801358CC
/* 02756C 801358CC A3F80000 */  .word  0xA3F80000

glabel D_801358D0
/* 027570 801358D0 A4AB0000 */  .word  0xA4AB0000

glabel D_801358D4
/* 027574 801358D4 A3F80000 */  .word  0xA3F80000

glabel D_801358D8
/* 027578 801358D8 A5C70000 */  .word  0xA5C70000

glabel D_801358DC
/* 02757C 801358DC A3F80000 */  .word  0xA3F80000

glabel D_801358E0
/* 027580 801358E0 A5C80000 */  .word  0xA5C80000

glabel D_801358E4
/* 027584 801358E4 A3F80000 */  .word  0xA3F80000

glabel D_801358E8
/* 027588 801358E8 A5A20000 */  .word  0xA5A20000

glabel D_801358EC
/* 02758C 801358EC A3F80000 */  .word  0xA3F80000

glabel D_801358F0
/* 027590 801358F0 A5B20000 */  .word  0xA5B20000

glabel D_801358F4
/* 027594 801358F4 A3F80000 */  .word  0xA3F80000

glabel D_801358F8
/* 027598 801358F8 A4AA0000 */  .word  0xA4AA0000

glabel D_801358FC
/* 02759C 801358FC A3F80000 */  .word  0xA3F80000

glabel D_80135900
/* 0275A0 80135900 A4DF0000 */  .word  0xA4DF0000

glabel D_80135904
/* 0275A4 80135904 A3F80000 */  .word  0xA3F80000

glabel D_80135908
/* 0275A8 80135908 A5D4A5AB */  .word  0xA5D4A5AB
/* 0275AC 8013590C A5C1A5E5 */  .word  0xA5C1A5E5
/* 0275B0 80135910 A5A6A4C8 */  .word  0xA5A6A4C8
/* 0275B4 80135914 0AA4A2A4 */  .word  0x0AA4A2A4
/* 0275B8 80135918 BDA4F3A4 */  .word  0xBDA4F3A4
/* 0275BC 8013591C C0A1F3A4 */  .word  0xC0A1F3A4
/* 0275C0 80135920 CBA4C10A */  .word  0xCBA4C10A
/* 0275C4 80135924 0A202025 */  .word  0x0A202025
/* 0275C8 80135928 73257325 */  .word  0x73257325
/* 0275CC 8013592C 73257325 */  .word  0x73257325
/* 0275D0 80135930 6420A1F3 */  .word  0x6420A1F3
/* 0275D4 80135934 00000000 */  .word  0x00000000

glabel D_80135938
/* 0275D8 80135938 A1A10000 */  .word  0xA1A10000

glabel D_8013593C
/* 0275DC 8013593C 00000000 */  .word  0x00000000

glabel D_80135940
/* 0275E0 80135940 A1A10000 */  .word  0xA1A10000

glabel D_80135944
/* 0275E4 80135944 00000000 */  .word  0x00000000

glabel D_80135948
/* 0275E8 80135948 A1A10000 */  .word  0xA1A10000

glabel D_8013594C
/* 0275EC 8013594C 00000000 */  .word  0x00000000

glabel D_80135950
/* 0275F0 80135950 A1A10000 */  .word  0xA1A10000

glabel D_80135954
/* 0275F4 80135954 00000000 */  .word  0x00000000

glabel D_80135958
/* 0275F8 80135958 25730A00 */  .word  0x25730A00

glabel D_8013595C
/* 0275FC 8013595C A1EFA1F0 */  .word  0xA1EFA1F0
/* 027600 80135960 0A000000 */  .word  0x0A000000

glabel D_80135964
/* 027604 80135964 20202564 */  .word  0x20202564
/* 027608 80135968 0A000000 */  .word  0x0A000000

glabel D_8013596C
/* 02760C 8013596C A4B3A4A8 */  .word  0xA4B3A4A8
/* 027610 80135970 0A000000 */  .word  0x0A000000

glabel D_80135974
/* 027614 80135974 20202564 */  .word  0x20202564
/* 027618 80135978 A4ABA4A4 */  .word  0xA4ABA4A4
/* 02761C 8013597C 0A000000 */  .word  0x0A000000
/* 027620 80135980 73656C65 */  .word  0x73656C65
/* 027624 80135984 63744247 */  .word  0x63744247
/* 027628 80135988 4D203A20 */  .word  0x4D203A20
/* 02762C 8013598C 25642025 */  .word  0x25642025
/* 027630 80135990 730A0000 */  .word  0x730A0000
/* 027634 80135994 73656C65 */  .word  0x73656C65
/* 027638 80135998 6374536F */  .word  0x6374536F
/* 02763C 8013599C 756E6420 */  .word  0x756E6420
/* 027640 801359A0 3A202564 */  .word  0x3A202564
/* 027644 801359A4 2025730A */  .word  0x2025730A
/* 027648 801359A8 00000000 */  .word  0x00000000
/* 02764C 801359AC 73656C43 */  .word  0x73656C43
/* 027650 801359B0 68616E6E */  .word  0x68616E6E
/* 027654 801359B4 656C2025 */  .word  0x656C2025
/* 027658 801359B8 640A0000 */  .word  0x640A0000
/* 02765C 801359BC 73656C43 */  .word  0x73656C43
/* 027660 801359C0 68617365 */  .word  0x68617365
/* 027664 801359C4 2025640A */  .word  0x2025640A
/* 027668 801359C8 00000000 */  .word  0x00000000
/* 02766C 801359CC 73656C44 */  .word  0x73656C44
/* 027670 801359D0 69666669 */  .word  0x69666669
/* 027674 801359D4 63756C74 */  .word  0x63756C74
/* 027678 801359D8 79202564 */  .word  0x79202564
/* 02767C 801359DC 0A000000 */  .word  0x0A000000
/* 027680 801359E0 73656C49 */  .word  0x73656C49
/* 027684 801359E4 65646546 */  .word  0x65646546
/* 027688 801359E8 6C616720 */  .word  0x6C616720
/* 02768C 801359EC 25640A00 */  .word  0x25640A00
/* 027690 801359F0 73656C45 */  .word  0x73656C45
/* 027694 801359F4 61737943 */  .word  0x61737943
/* 027698 801359F8 6F756E74 */  .word  0x6F756E74
/* 02769C 801359FC 466C6167 */  .word  0x466C6167
/* 0276A0 80135A00 2025640A */  .word  0x2025640A
/* 0276A4 80135A04 00000000 */  .word  0x00000000
/* 0276A8 80135A08 73656C47 */  .word  0x73656C47
/* 0276AC 80135A0C 616D6543 */  .word  0x616D6543
/* 0276B0 80135A10 6C656172 */  .word  0x6C656172
/* 0276B4 80135A14 466C6167 */  .word  0x466C6167
/* 0276B8 80135A18 2025640A */  .word  0x2025640A
/* 0276BC 80135A1C 00000000 */  .word  0x00000000
/* 0276C0 80135A20 73656C53 */  .word  0x73656C53
/* 0276C4 80135A24 7469636B */  .word  0x7469636B
/* 0276C8 80135A28 52657665 */  .word  0x52657665
/* 0276CC 80135A2C 72736520 */  .word  0x72736520
/* 0276D0 80135A30 25640A00 */  .word  0x25640A00

glabel D_80135A34
/* 0276D4 80135A34  */  .asciz  "つうじょう"
                        .balign 4

glabel D_80135A40
/* 0276E0 80135A40  */  .asciz  "よみこみちゅう"
                        .balign 4

glabel D_80135A50
/* 0276F0 80135A50  */  .asciz  "かきこみちゅう"
                        .balign 4

glabel D_80135A60
/* 027700 80135A60  */  .asciz  "よみこみエラー"
                        .balign 4

glabel D_80135A70
/* 027710 80135A70  */  .asciz  "ＣＲＣエラー"
                        .balign 4

glabel D_80135A80
/* 027720 80135A80  */  .asciz  "かきこみエラー"
                        .balign 4
/* 027730 80135A90  */  .asciz  "pdFCB:%x\n"
                        .balign 4

glabel D_80135A9C
/* 02773C 80135A9C A5D5A5A1 */  .word  0xA5D5A5A1
/* 027740 80135AA0 A5A4A5EB */  .word  0xA5A4A5EB
/* 027744 80135AA4 25730AA1 */  .word  0x25730AA1
/* 027748 80135AA8 A125730A */  .word  0xA125730A
/* 02774C 80135AAC A3C6A3C3 */  .word  0xA3C6A3C3
/* 027750 80135AB0 A3C22025 */  .word  0xA3C22025
/* 027754 80135AB4 7325730A */  .word  0x7325730A
/* 027758 80135AB8 00000000 */  .word  0x00000000

glabel D_80135ABC
/* 02775C 80135ABC A3B10000 */  .word  0xA3B10000

glabel D_80135AC0
/* 027760 80135AC0 A3B20000 */  .word  0xA3B20000

glabel D_80135AC4
/* 027764 80135AC4 A3B10000 */  .word  0xA3B10000

glabel D_80135AC8
/* 027768 80135AC8 A3F80000 */  .word  0xA3F80000

glabel D_80135ACC
/* 02776C 80135ACC A3B20000 */  .word  0xA3B20000

glabel D_80135AD0
/* 027770 80135AD0 A3F80000 */  .word  0xA3F80000
/* 027774 80135AD4 73656C45 */  .word  0x73656C45
/* 027778 80135AD8 4550524F */  .word  0x4550524F
/* 02777C 80135ADC 4D202564 */  .word  0x4D202564
/* 027780 80135AE0 0A000000 */  .word  0x0A000000

glabel D_80135AE4
/* 027784 80135AE4  */  .asciz  "じぶんのへや"
                        .balign 4

glabel D_80135AF4
/* 027794 80135AF4  */  .asciz  "げんかん"
                        .balign 4

glabel D_80135B00
/* 0277A0 80135B00  */  .asciz  "にわ"
                        .balign 4

glabel D_80135B08
/* 0277A8 80135B08  */  .asciz  "トキワＡ"
                        .balign 4

glabel D_80135B14
/* 0277B4 80135B14  */  .asciz  "トキワＢ"
                        .balign 4

glabel D_80135B20
/* 0277C0 80135B20  */  .asciz  "トキワＣ"
                        .balign 4

glabel D_80135B2C
/* 0277CC 80135B2C  */  .asciz  "モエギＡ"
                        .balign 4

glabel D_80135B38
/* 0277D8 80135B38  */  .asciz  "モエギＢ"
                        .balign 4

glabel D_80135B44
/* 0277E4 80135B44  */  .asciz  "モエギＣ"
                        .balign 4

glabel D_80135B50
/* 0277F0 80135B50  */  .asciz  "アサギＡ"
                        .balign 4

glabel D_80135B5C
/* 0277FC 80135B5C  */  .asciz  "アサギＢ"
                        .balign 4

glabel D_80135B68
/* 027808 80135B68  */  .asciz  "アカネＡ"
                        .balign 4

glabel D_80135B74
/* 027814 80135B74  */  .asciz  "アカネＢ"
                        .balign 4

glabel D_80135B80
/* 027820 80135B80  */  .asciz  "スオウＡ"
                        .balign 4

glabel D_80135B8C
/* 02782C 80135B8C  */  .asciz  "スオウＢ"
                        .balign 4

glabel D_80135B98
/* 027838 80135B98  */  .asciz  "おみせ"
                        .balign 4

glabel D_80135BA0
/* 027840 80135BA0  */  .asciz  "キャンプ"
                        .balign 4

glabel D_80135BAC
/* 02784C 80135BAC  */  .asciz  "アカネのつりば"
                        .balign 4

glabel D_80135BBC
/* 02785C 80135BBC  */  .asciz  "アサギのつりば"
                        .balign 4

glabel D_80135BCC
/* 02786C 80135BCC  */  .asciz  "スオウのつりば"
                        .balign 4

glabel D_80135BDC
/* 02787C 80135BDC  */  .asciz  "トキワのはずれ"
                        .balign 4

glabel D_80135BEC
/* 02788C 80135BEC  */  .asciz  "うらのあきち"
                        .balign 4

glabel D_80135BFC
/* 02789C 80135BFC  */  .asciz  "エンディング"
                        .balign 4

glabel D_80135C0C
/* 0278AC 80135C0C  */  .asciz  "エリアセレクト"
                        .balign 4

glabel D_80135C1C
/* 0278BC 80135C1C  */  .asciz  "エリアセレクト"
                        .balign 4

glabel D_80135C2C
/* 0278CC 80135C2C  */  .asciz  "デバグ"
                        .balign 4

glabel D_80135C34
/* 0278D4 80135C34  */  .asciz  "てあらいなさい"
                        .balign 4

glabel D_80135C44
/* 0278E4 80135C44  */  .asciz  "りょうり"
                        .balign 4

glabel D_80135C50
/* 0278F0 80135C50  */  .asciz  "ゆめ"
                        .balign 4

glabel D_80135C58
/* 0278F8 80135C58  */  .asciz  "れいぞうこ"
                        .balign 4

glabel D_80135C64
/* 027904 80135C64  */  .asciz  "ヤキイモしっぱい"
                        .balign 4

glabel D_80135C78
/* 027918 80135C78  */  .asciz  "ヤキイモせいこう"
                        .balign 4

glabel D_80135C8C
/* 02792C 80135C8C  */  .asciz  "アイキャッチ"
                        .balign 4

glabel D_80135C9C
/* 02793C 80135C9C  */  .asciz  "アイキャッチ"
                        .balign 4

glabel D_80135CAC
/* 02794C 80135CAC  */  .asciz  "デバグ"
                        .balign 4

glabel D_80135CB4
/* 027954 80135CB4  */  .asciz  "アドバタイズ"
                        .balign 4

glabel D_80135CC4
/* 027964 80135CC4  */  .asciz  "オープニング"
                        .balign 4

glabel D_80135CD4
/* 027974 80135CD4  */  .asciz  "こんにちは"
                        .balign 4

glabel D_80135CE0
/* 027980 80135CE0  */  .asciz  "レベル１"
                        .balign 4

glabel D_80135CEC
/* 02798C 80135CEC  */  .asciz  "うちにおいでよ"
                        .balign 4

glabel D_80135CFC
/* 02799C 80135CFC  */  .asciz  "レベル２"
                        .balign 4

glabel D_80135D08
/* 0279A8 80135D08  */  .asciz  "とっくん"
                        .balign 4

glabel D_80135D14
/* 0279B4 80135D14  */  .asciz  "レベル３"
                        .balign 4

glabel D_80135D20
/* 0279C0 80135D20  */  .asciz  "おつかい"
                        .balign 4

glabel D_80135D2C
/* 0279CC 80135D2C  */  .asciz  "エンディング"
                        .balign 4

glabel D_80135D3C
/* 0279DC 80135D3C  */  .asciz  "チャプター"
                        .balign 4

glabel D_80135D48
/* 0279E8 80135D48  */  .asciz  "チャプター"
                        .balign 4

glabel D_80135D54
/* 0279F4 80135D54  */  .asciz  "デバグ"
                        .balign 4

glabel D_80135D5C
/* 0279FC 80135D5C  */  .asciz  "なんどちょうせい"
                        .balign 4

glabel D_80135D70
/* 027A10 80135D70  */  .asciz  "むずかしさ"
                        .balign 4

glabel D_80135D7C
/* 027A1C 80135D7C  */  .asciz  "デバグ"
                        .balign 4
/* 027A24 80135D84  */  .asciz  "やさしい"
                        .balign 4
/* 027A30 80135D90  */  .asciz  "ふつう"
                        .balign 4
/* 027A38 80135D98  */  .asciz  "きっつい"
                        .balign 4

glabel D_80135DA4
/* 027A44 80135DA4  */  .asciz  "いえでフラグ"
                        .balign 4

glabel D_80135DB4
/* 027A54 80135DB4  */  .asciz  "いえでフラグ"
                        .balign 4

glabel D_80135DC4
/* 027A64 80135DC4  */  .asciz  "デバグ"
                        .balign 4
/* 027A6C 80135DCC  */  .asciz  "ノーマルべや"
                        .balign 4
/* 027A7C 80135DDC  */  .asciz  "いえで"
                        .balign 4

glabel D_80135DE4
/* 027A84 80135DE4  */  .asciz  "レベル１カウント"
                        .balign 4

glabel D_80135DF8
/* 027A98 80135DF8  */  .asciz  "レベル１カウント"
                        .balign 4

glabel D_80135E0C
/* 027AAC 80135E0C  */  .asciz  "デバグ"
                        .balign 4

glabel D_80135E14
/* 027AB4 80135E14  */  .asciz  "０かい"
                        .balign 4

glabel D_80135E1C
/* 027ABC 80135E1C  */  .asciz  "１かい"
                        .balign 4

glabel D_80135E24
/* 027AC4 80135E24  */  .asciz  "２かい"
                        .balign 4

glabel D_80135E2C
/* 027ACC 80135E2C  */  .asciz  "３かい"
                        .balign 4

glabel D_80135E34
/* 027AD4 80135E34  */  .asciz  "クリアフラグ"
                        .balign 4

glabel D_80135E44
/* 027AE4 80135E44  */  .asciz  "クリアフラグ"
                        .balign 4

glabel D_80135E54
/* 027AF4 80135E54  */  .asciz  "デバグ\nゲームクリアフラグ"
                        .balign 4
/* 027B10 80135E70  */  .asciz  "おろす"
                        .balign 4
/* 027B18 80135E78  */  .asciz  "たてる"
                        .balign 4

glabel D_80135E80
/* 027B20 80135E80  */  .asciz  "きょくをきく"
                        .balign 4

glabel D_80135E90
/* 027B30 80135E90  */  .asciz  "きょくをきく‥"
                        .balign 4

glabel D_80135EA0
/* 027B40 80135EA0  */  .asciz  "ゲームちゅうの\nきょくをききます\n\n\n\n 　《》で ひらく"
                        .balign 4

glabel D_80135ED4
/* 027B74 80135ED4  */  .asciz  "バタフリー1"
                        .balign 4

glabel D_80135EE0
/* 027B80 80135EE0  */  .asciz  "キャタピー1"
                        .balign 4

glabel D_80135EEC
/* 027B8C 80135EEC  */  .asciz  "キャタピー2"
                        .balign 4

glabel D_80135EF8
/* 027B98 80135EF8  */  .asciz  "キャタピー3"
                        .balign 4

glabel D_80135F04
/* 027BA4 80135F04  */  .asciz  "コイル1"
                        .balign 4

glabel D_80135F0C
/* 027BAC 80135F0C  */  .asciz  "ディグダ1"
                        .balign 4

glabel D_80135F18
/* 027BB8 80135F18  */  .asciz  "ディグダ2"
                        .balign 4

glabel D_80135F24
/* 027BC4 80135F24  */  .asciz  "ドードリオ1"
                        .balign 4

glabel D_80135F30
/* 027BD0 80135F30  */  .asciz  "フシギバナ1"
                        .balign 4

glabel D_80135F3C
/* 027BDC 80135F3C  */  .asciz  "フシギダネ1"
                        .balign 4

glabel D_80135F48
/* 027BE8 80135F48  */  .asciz  "フシギダネ2"
                        .balign 4

glabel D_80135F54
/* 027BF4 80135F54  */  .asciz  "フシギダネ3"
                        .balign 4

glabel D_80135F60
/* 027C00 80135F60  */  .asciz  "フシギダネ4"
                        .balign 4

glabel D_80135F6C
/* 027C0C 80135F6C  */  .asciz  "フシギダネ5"
                        .balign 4

glabel D_80135F78
/* 027C18 80135F78  */  .asciz  "フシギダネ6"
                        .balign 4

glabel D_80135F84
/* 027C24 80135F84  */  .asciz  "フシギダネ7"
                        .balign 4

glabel D_80135F90
/* 027C30 80135F90  */  .asciz  "フシギダネ8"
                        .balign 4

glabel D_80135F9C
/* 027C3C 80135F9C  */  .asciz  "ゴースト1"
                        .balign 4

glabel D_80135FA8
/* 027C48 80135FA8  */  .asciz  "ゴースト2"
                        .balign 4

glabel D_80135FB4
/* 027C54 80135FB4  */  .asciz  "ヒトカゲ1"
                        .balign 4

glabel D_80135FC0
/* 027C60 80135FC0  */  .asciz  "ケーシー1"
                        .balign 4

glabel D_80135FCC
/* 027C6C 80135FCC  */  .asciz  "クサイハナ1"
                        .balign 4

glabel D_80135FD8
/* 027C78 80135FD8  */  .asciz  "クサイハナ2"
                        .balign 4

glabel D_80135FE4
/* 027C84 80135FE4  */  .asciz  "ニョロモ1"
                        .balign 4

glabel D_80135FF0
/* 027C90 80135FF0  */  .asciz  "ニョロモ2"
                        .balign 4

glabel D_80135FFC
/* 027C9C 80135FFC  */  .asciz  "ニョロモ3"
                        .balign 4

glabel D_80136008
/* 027CA8 80136008  */  .asciz  "ナゾノクサ1"
                        .balign 4

glabel D_80136014
/* 027CB4 80136014  */  .asciz  "ナゾノクサ2"
                        .balign 4

glabel D_80136020
/* 027CC0 80136020  */  .asciz  "ナゾノクサ3"
                        .balign 4

glabel D_8013602C
/* 027CCC 8013602C  */  .asciz  "オニドリル1"
                        .balign 4

glabel D_80136038
/* 027CD8 80136038  */  .asciz  "ピカチュウ1"
                        .balign 4

glabel D_80136044
/* 027CE4 80136044  */  .asciz  "ピカチュウ2"
                        .balign 4

glabel D_80136050
/* 027CF0 80136050  */  .asciz  "ピカチュウ3"
                        .balign 4

glabel D_8013605C
/* 027CFC 8013605C  */  .asciz  "ピカチュウ4"
                        .balign 4

glabel D_80136068
/* 027D08 80136068  */  .asciz  "ピカチュウ5"
                        .balign 4

glabel D_80136074
/* 027D14 80136074  */  .asciz  "ピカチュウ6"
                        .balign 4

glabel D_80136080
/* 027D20 80136080  */  .asciz  "ピカチュウ7"
                        .balign 4

glabel D_8013608C
/* 027D2C 8013608C  */  .asciz  "ピカチュウ8"
                        .balign 4

glabel D_80136098
/* 027D38 80136098  */  .asciz  "ピカチュウ9"
                        .balign 4

glabel D_801360A4
/* 027D44 801360A4  */  .asciz  "ピカチュウ10"
                        .balign 4

glabel D_801360B4
/* 027D54 801360B4  */  .asciz  "ピカチュウ11"
                        .balign 4

glabel D_801360C4
/* 027D64 801360C4  */  .asciz  "ピカチュウ12"
                        .balign 4

glabel D_801360D4
/* 027D74 801360D4  */  .asciz  "ピカチュウ13"
                        .balign 4

glabel D_801360E4
/* 027D84 801360E4  */  .asciz  "ピカチュウ14"
                        .balign 4

glabel D_801360F4
/* 027D94 801360F4  */  .asciz  "ピカチュウ15"
                        .balign 4

glabel D_80136104
/* 027DA4 80136104  */  .asciz  "ピカチュウ16"
                        .balign 4

glabel D_80136114
/* 027DB4 80136114  */  .asciz  "ピカチュウ17"
                        .balign 4

glabel D_80136124
/* 027DC4 80136124  */  .asciz  "ピカチュウ18"
                        .balign 4

glabel D_80136134
/* 027DD4 80136134  */  .asciz  "ピカチュウ19"
                        .balign 4

glabel D_80136144
/* 027DE4 80136144  */  .asciz  "ピカチュウ20"
                        .balign 4

glabel D_80136154
/* 027DF4 80136154  */  .asciz  "ピカチュウ21"
                        .balign 4

glabel D_80136164
/* 027E04 80136164  */  .asciz  "ピカチュウ22"
                        .balign 4

glabel D_80136174
/* 027E14 80136174  */  .asciz  "ピカチュウ23"
                        .balign 4

glabel D_80136184
/* 027E24 80136184  */  .asciz  "ピカチュウ24"
                        .balign 4

glabel D_80136194
/* 027E34 80136194  */  .asciz  "ピカチュウ25"
                        .balign 4

glabel D_801361A4
/* 027E44 801361A4  */  .asciz  "ピカチュウ26"
                        .balign 4

glabel D_801361B4
/* 027E54 801361B4  */  .asciz  "ピカチュウ27"
                        .balign 4

glabel D_801361C4
/* 027E64 801361C4  */  .asciz  "ピカチュウ28"
                        .balign 4

glabel D_801361D4
/* 027E74 801361D4  */  .asciz  "ピカチュウ29"
                        .balign 4

glabel D_801361E4
/* 027E84 801361E4  */  .asciz  "ピカチュウ30"
                        .balign 4

glabel D_801361F4
/* 027E94 801361F4  */  .asciz  "ピカチュウ31"
                        .balign 4

glabel D_80136204
/* 027EA4 80136204  */  .asciz  "ピカチュウ32"
                        .balign 4

glabel D_80136214
/* 027EB4 80136214  */  .asciz  "ピカチュウ33"
                        .balign 4

glabel D_80136224
/* 027EC4 80136224  */  .asciz  "ピカチュウ34"
                        .balign 4

glabel D_80136234
/* 027ED4 80136234  */  .asciz  "ピカチュウ35"
                        .balign 4

glabel D_80136244
/* 027EE4 80136244  */  .asciz  "ピカチュウ36"
                        .balign 4

glabel D_80136254
/* 027EF4 80136254  */  .asciz  "ピカチュウ37"
                        .balign 4

glabel D_80136264
/* 027F04 80136264  */  .asciz  "ピカチュウ38"
                        .balign 4

glabel D_80136274
/* 027F14 80136274  */  .asciz  "ピカチュウ39"
                        .balign 4

glabel D_80136284
/* 027F24 80136284  */  .asciz  "ピカチュウ40"
                        .balign 4

glabel D_80136294
/* 027F34 80136294  */  .asciz  "ピカチュウ41"
                        .balign 4

glabel D_801362A4
/* 027F44 801362A4  */  .asciz  "ピカチュウ42"
                        .balign 4

glabel D_801362B4
/* 027F54 801362B4  */  .asciz  "ピカチュウ43"
                        .balign 4

glabel D_801362C4
/* 027F64 801362C4  */  .asciz  "ピカチュウ44"
                        .balign 4

glabel D_801362D4
/* 027F74 801362D4  */  .asciz  "ピカチュウ45"
                        .balign 4

glabel D_801362E4
/* 027F84 801362E4  */  .asciz  "ピカチュウ46"
                        .balign 4

glabel D_801362F4
/* 027F94 801362F4  */  .asciz  "ピカチュウ47"
                        .balign 4

glabel D_80136304
/* 027FA4 80136304  */  .asciz  "ピカチュウ48"
                        .balign 4

glabel D_80136314
/* 027FB4 80136314  */  .asciz  "ピカチュウ49"
                        .balign 4

glabel D_80136324
/* 027FC4 80136324  */  .asciz  "ピカチュウ50"
                        .balign 4

glabel D_80136334
/* 027FD4 80136334  */  .asciz  "ピカチュウ51"
                        .balign 4

glabel D_80136344
/* 027FE4 80136344  */  .asciz  "ピカチュウ52"
                        .balign 4

glabel D_80136354
/* 027FF4 80136354  */  .asciz  "ピカチュウ53"
                        .balign 4

glabel D_80136364
/* 028004 80136364  */  .asciz  "ピカチュウ54"
                        .balign 4

glabel D_80136374
/* 028014 80136374  */  .asciz  "ピカチュウ55"
                        .balign 4

glabel D_80136384
/* 028024 80136384  */  .asciz  "ピカチュウ56"
                        .balign 4

glabel D_80136394
/* 028034 80136394  */  .asciz  "ピカチュウ57"
                        .balign 4

glabel D_801363A4
/* 028044 801363A4  */  .asciz  "ピカチュウ58"
                        .balign 4

glabel D_801363B4
/* 028054 801363B4  */  .asciz  "ピカチュウ59"
                        .balign 4

glabel D_801363C4
/* 028064 801363C4  */  .asciz  "ピカチュウ60"
                        .balign 4

glabel D_801363D4
/* 028074 801363D4  */  .asciz  "ピカチュウ61"
                        .balign 4

glabel D_801363E4
/* 028084 801363E4  */  .asciz  "ピカチュウ62"
                        .balign 4

glabel D_801363F4
/* 028094 801363F4  */  .asciz  "ピカチュウ63"
                        .balign 4

glabel D_80136404
/* 0280A4 80136404  */  .asciz  "ピカチュウ64"
                        .balign 4

glabel D_80136414
/* 0280B4 80136414  */  .asciz  "ピカチュウ65"
                        .balign 4

glabel D_80136424
/* 0280C4 80136424  */  .asciz  "ピカチュウ66"
                        .balign 4

glabel D_80136434
/* 0280D4 80136434  */  .asciz  "ピカチュウ67"
                        .balign 4

glabel D_80136444
/* 0280E4 80136444  */  .asciz  "ピカチュウ68"
                        .balign 4

glabel D_80136454
/* 0280F4 80136454  */  .asciz  "ピカチュウ69"
                        .balign 4

glabel D_80136464
/* 028104 80136464  */  .asciz  "ピカチュウ70"
                        .balign 4

glabel D_80136474
/* 028114 80136474  */  .asciz  "ピカチュウ71"
                        .balign 4

glabel D_80136484
/* 028124 80136484  */  .asciz  "ピカチュウ72"
                        .balign 4

glabel D_80136494
/* 028134 80136494  */  .asciz  "ピカチュウ73"
                        .balign 4

glabel D_801364A4
/* 028144 801364A4  */  .asciz  "ピカチュウ74"
                        .balign 4

glabel D_801364B4
/* 028154 801364B4  */  .asciz  "ピカチュウ75"
                        .balign 4

glabel D_801364C4
/* 028164 801364C4  */  .asciz  "ピカチュウ76"
                        .balign 4

glabel D_801364D4
/* 028174 801364D4  */  .asciz  "ピカチュウ77"
                        .balign 4

glabel D_801364E4
/* 028184 801364E4  */  .asciz  "ピカチュウ78"
                        .balign 4

glabel D_801364F4
/* 028194 801364F4  */  .asciz  "ピカチュウ79"
                        .balign 4

glabel D_80136504
/* 0281A4 80136504  */  .asciz  "ピカチュウ80"
                        .balign 4

glabel D_80136514
/* 0281B4 80136514  */  .asciz  "ピカチュウ81"
                        .balign 4

glabel D_80136524
/* 0281C4 80136524  */  .asciz  "ピカチュウ82"
                        .balign 4

glabel D_80136534
/* 0281D4 80136534  */  .asciz  "ピカチュウ83"
                        .balign 4

glabel D_80136544
/* 0281E4 80136544  */  .asciz  "ピカチュウ84"
                        .balign 4

glabel D_80136554
/* 0281F4 80136554  */  .asciz  "ピカチュウ85"
                        .balign 4

glabel D_80136564
/* 028204 80136564  */  .asciz  "ピカチュウ86"
                        .balign 4

glabel D_80136574
/* 028214 80136574  */  .asciz  "ピカチュウ87"
                        .balign 4

glabel D_80136584
/* 028224 80136584  */  .asciz  "ピカチュウ88"
                        .balign 4

glabel D_80136594
/* 028234 80136594  */  .asciz  "ピカチュウ89"
                        .balign 4

glabel D_801365A4
/* 028244 801365A4  */  .asciz  "ピカチュウ90"
                        .balign 4

glabel D_801365B4
/* 028254 801365B4  */  .asciz  "ピカチュウ91"
                        .balign 4

glabel D_801365C4
/* 028264 801365C4  */  .asciz  "ピカチュウ92"
                        .balign 4

glabel D_801365D4
/* 028274 801365D4  */  .asciz  "ピカチュウ93"
                        .balign 4

glabel D_801365E4
/* 028284 801365E4  */  .asciz  "ピカチュウ94"
                        .balign 4

glabel D_801365F4
/* 028294 801365F4  */  .asciz  "ピカチュウ95"
                        .balign 4

glabel D_80136604
/* 0282A4 80136604  */  .asciz  "ラフレシア1"
                        .balign 4

glabel D_80136610
/* 0282B0 80136610  */  .asciz  "トゲピー1"
                        .balign 4

glabel D_8013661C
/* 0282BC 8013661C  */  .asciz  "トゲピー2"
                        .balign 4

glabel D_80136628
/* 0282C8 80136628  */  .asciz  "ヤドン1"
                        .balign 4

glabel D_80136630
/* 0282D0 80136630  */  .asciz  "ゼニガメ1"
                        .balign 4

glabel D_8013663C
/* 0282DC 8013663C  */  .asciz  "ゼニガメ2"
                        .balign 4

glabel D_80136648
/* 0282E8 80136648  */  .asciz  "ゼニガメ3"
                        .balign 4

glabel D_80136654
/* 0282F4 80136654  */  .asciz  "ゼニガメ4"
                        .balign 4

glabel D_80136660
/* 028300 80136660  */  .asciz  "かんきょう1"
                        .balign 4

glabel D_8013666C
/* 02830C 8013666C  */  .asciz  "かんきょう2"
                        .balign 4

glabel D_80136678
/* 028318 80136678  */  .asciz  "かんきょう3"
                        .balign 4

glabel D_80136684
/* 028324 80136684  */  .asciz  "かんきょう4"
                        .balign 4

glabel D_80136690
/* 028330 80136690  */  .asciz  "そのほか1"
                        .balign 4

glabel D_8013669C
/* 02833C 8013669C  */  .asciz  "ピカのおと1"
                        .balign 4

glabel D_801366A8
/* 028348 801366A8  */  .asciz  "ピカのおと2"
                        .balign 4

glabel D_801366B4
/* 028354 801366B4  */  .asciz  "ピカのおと3"
                        .balign 4

glabel D_801366C0
/* 028360 801366C0  */  .asciz  "ピカのおと4"
                        .balign 4

glabel D_801366CC
/* 02836C 801366CC  */  .asciz  "ピカのおと5"
                        .balign 4

glabel D_801366D8
/* 028378 801366D8  */  .asciz  "ピカのおと6"
                        .balign 4

glabel D_801366E4
/* 028384 801366E4  */  .asciz  "ピカのおと7"
                        .balign 4

glabel D_801366F0
/* 028390 801366F0  */  .asciz  "ピカのおと8"
                        .balign 4

glabel D_801366FC
/* 02839C 801366FC  */  .asciz  "ピカのおと9"
                        .balign 4

glabel D_80136708
/* 0283A8 80136708  */  .asciz  "ピカのおと10"
                        .balign 4

glabel D_80136718
/* 0283B8 80136718  */  .asciz  "ピカのおと11"
                        .balign 4

glabel D_80136728
/* 0283C8 80136728  */  .asciz  "ピカのおと12"
                        .balign 4

glabel D_80136738
/* 0283D8 80136738  */  .asciz  "ピカのおと13"
                        .balign 4

glabel D_80136748
/* 0283E8 80136748  */  .asciz  "プレイヤー1"
                        .balign 4

glabel D_80136754
/* 0283F4 80136754  */  .asciz  "プレイヤー2"
                        .balign 4

glabel D_80136760
/* 028400 80136760  */  .asciz  "プレイヤー3"
                        .balign 4

glabel D_8013676C
/* 02840C 8013676C  */  .asciz  "ステージ1"
                        .balign 4

glabel D_80136778
/* 028418 80136778  */  .asciz  "ステージ2"
                        .balign 4

glabel D_80136784
/* 028424 80136784  */  .asciz  "ステージ3"
                        .balign 4

glabel D_80136790
/* 028430 80136790  */  .asciz  "ステージ4"
                        .balign 4

glabel D_8013679C
/* 02843C 8013679C  */  .asciz  "ステージ5"
                        .balign 4

glabel D_801367A8
/* 028448 801367A8  */  .asciz  "ステージ6"
                        .balign 4

glabel D_801367B4
/* 028454 801367B4  */  .asciz  "ステージ7"
                        .balign 4

glabel D_801367C0
/* 028460 801367C0  */  .asciz  "ステージ8"
                        .balign 4

glabel D_801367CC
/* 02846C 801367CC  */  .asciz  "ステージ9"
                        .balign 4

glabel D_801367D8
/* 028478 801367D8  */  .asciz  "ステージ10"
                        .balign 4

glabel D_801367E4
/* 028484 801367E4  */  .asciz  "ステージ11"
                        .balign 4

glabel D_801367F0
/* 028490 801367F0  */  .asciz  "ステージ12"
                        .balign 4

glabel D_801367FC
/* 02849C 801367FC  */  .asciz  "ステージ13"
                        .balign 4

glabel D_80136808
/* 0284A8 80136808  */  .asciz  "ステージ14"
                        .balign 4

glabel D_80136814
/* 0284B4 80136814  */  .asciz  "ステージ15"
                        .balign 4

glabel D_80136820
/* 0284C0 80136820  */  .asciz  "ステージ16"
                        .balign 4

glabel D_8013682C
/* 0284CC 8013682C  */  .asciz  "ステージ17"
                        .balign 4

glabel D_80136838
/* 0284D8 80136838  */  .asciz  "システム1"
                        .balign 4

glabel D_80136844
/* 0284E4 80136844  */  .asciz  "システム2"
                        .balign 4

glabel D_80136850
/* 0284F0 80136850  */  .asciz  "システム3"
                        .balign 4

glabel D_8013685C
/* 0284FC 8013685C  */  .asciz  "システム4"
                        .balign 4

glabel D_80136868
/* 028508 80136868  */  .asciz  "システム5"
                        .balign 4

glabel D_80136874
/* 028514 80136874  */  .asciz  "システム6"
                        .balign 4

glabel D_80136880
/* 028520 80136880  */  .asciz  "システム7"
                        .balign 4

glabel D_8013688C
/* 02852C 8013688C  */  .asciz  "システム8"
                        .balign 4

glabel D_80136898
/* 028538 80136898  */  .asciz  "システム9"
                        .balign 4

glabel D_801368A4
/* 028544 801368A4  */  .asciz  "システム10"
                        .balign 4

glabel D_801368B0
/* 028550 801368B0  */  .asciz  "システム11"
                        .balign 4

glabel D_801368BC
/* 02855C 801368BC  */  .asciz  "システム12"
                        .balign 4

glabel D_801368C8
/* 028568 801368C8  */  .asciz  "システム13"
                        .balign 4

glabel D_801368D4
/* 028574 801368D4  */  .asciz  "システム14"
                        .balign 4

glabel D_801368E0
/* 028580 801368E0  */  .asciz  "システム15"
                        .balign 4

glabel D_801368EC
/* 02858C 801368EC  */  .asciz  "システム16"
                        .balign 4

glabel D_801368F8
/* 028598 801368F8  */  .asciz  "システム17"
                        .balign 4

glabel D_80136904
/* 0285A4 80136904  */  .asciz  "システム18"
                        .balign 4

glabel D_80136910
/* 0285B0 80136910  */  .asciz  "システム19"
                        .balign 4

glabel D_8013691C
/* 0285BC 8013691C  */  .asciz  "システム20"
                        .balign 4

glabel D_80136928
/* 0285C8 80136928  */  .asciz  "システム21"
                        .balign 4

glabel D_80136934
/* 0285D4 80136934  */  .asciz  "システム22"
                        .balign 4

glabel D_80136940
/* 0285E0 80136940  */  .asciz  "システム23"
                        .balign 4

glabel D_8013694C
/* 0285EC 8013694C  */  .asciz  "システム24"
                        .balign 4

glabel D_80136958
/* 0285F8 80136958  */  .asciz  "システム25"
                        .balign 4

glabel D_80136964
/* 028604 80136964  */  .asciz  "システム26"
                        .balign 4

glabel D_80136970
/* 028610 80136970  */  .asciz  "システム27"
                        .balign 4

glabel D_8013697C
/* 02861C 8013697C  */  .asciz  "システム28"
                        .balign 4

glabel D_80136988
/* 028628 80136988  */  .asciz  "システム29"
                        .balign 4

glabel D_80136994
/* 028634 80136994  */  .asciz  "おとをきく"
                        .balign 4

glabel D_801369A0
/* 028640 801369A0  */  .asciz  "おとをきく‥"
                        .balign 4

glabel D_801369B0
/* 028650 801369B0  */  .asciz  "ゲームちゅうの\nこうかおんを\nききます\n\n\n 　《》で ひらく"
                        .balign 4

glabel D_801369E8
/* 028688 801369E8  */  .asciz  "おまけ"
                        .balign 4

glabel D_801369F0
/* 028690 801369F0  */  .asciz  "おまけ‥"
                        .balign 4

glabel D_801369FC
/* 02869C 801369FC  */  .asciz  "おまけ\n\n\n\n\n 　《》で ひらく"
                        .balign 4

glabel D_80136A18
/* 0286B8 80136A18  */  .asciz  "おいかける"
                        .balign 4

glabel D_80136A24
/* 0286C4 80136A24  */  .asciz  "ちゅうもくモード\n　の とき\nピカチュウを\n　おいかけます"
                        .balign 4

glabel D_80136A5C
/* 0286FC 80136A5C  */  .asciz  "おいかけない"
                        .balign 4

glabel D_80136A6C
/* 02870C 80136A6C  */  .asciz  "ちゅうもくモード\n　の とき\nピカチュウを\n　　　みます"
                        .balign 4

glabel D_80136AA4
/* 028744 80136AA4  */  .asciz  "ちゅうもくモード"
                        .balign 4

glabel D_80136AB8
/* 028758 80136AB8  */  .asciz  "ちゅうもく"
                        .balign 4

glabel D_80136AC4
/* 028764 80136AC4  */  .asciz  "デバグ\nちゅうもくモード\n　の とき\nピカチュウを\nおいかけるか\nえらびます"
                        .balign 4

glabel D_80136B0C
/* 0287AC 80136B0C A1F90000 */  .word  0xA1F90000

glabel D_80136B10
/* 0287B0 80136B10 A1EE0000 */  .word  0xA1EE0000
/* 0287B4 80136B14 00000000 */  .word  0x00000000

glabel D_80136B18
/* 0287B8 80136B18 3F50624DE0000000 */  .double  0.0010000000474974513

glabel D_80136B20
/* 0287C0 80136B20 4056800000000000 */  .double  90.0

glabel D_80136B28
/* 0287C8 80136B28 C0D9999A */  .float  -6.800000190734863

glabel D_80136B2C
/* 0287CC 80136B2C C049999A */  .float  -3.1500000953674316

glabel D_80136B30
/* 0287D0 80136B30 3FB999999999999A */  .double  0.1

glabel jtbl_80136B38
/* 0287D8 80136B38 8011EAE0 */  .word  L8011EAE0
/* 0287DC 80136B3C 8011EAFC */  .word  L8011EAFC
/* 0287E0 80136B40 8011EB18 */  .word  L8011EB18
/* 0287E4 80136B44 8011EB34 */  .word  L8011EB34
/* 0287E8 80136B48 8011EB50 */  .word  L8011EB50
/* 0287EC 80136B4C 8011EB60 */  .word  L8011EB60
/* 0287F0 80136B50 25730000 */  .word  0x25730000
/* 0287F4 80136B54 25730A00 */  .word  0x25730A00
/* 0287F8 80136B58 61637469 */  .word  0x61637469
/* 0287FC 80136B5C 6F6E4E75 */  .word  0x6F6E4E75
/* 028800 80136B60 6D3A2564 */  .word  0x6D3A2564
/* 028804 80136B64 2074696D */  .word  0x2074696D
/* 028808 80136B68 653A2566 */  .word  0x653A2566
/* 02880C 80136B6C 0A000000 */  .word  0x0A000000

glabel D_80136B70
/* 028810 80136B70  */  .asciz  "SNG_B_ADVERTISE"
                        .balign 4

glabel D_80136B80
/* 028820 80136B80  */  .asciz  "SNG_B_CAMP"
                        .balign 4

glabel D_80136B8C
/* 02882C 80136B8C  */  .asciz  "SNG_B_COMICALJ"
                        .balign 4

glabel D_80136B9C
/* 02883C 80136B9C  */  .asciz  "SNG_B_EMOTION"
                        .balign 4

glabel D_80136BAC
/* 02884C 80136BAC  */  .asciz  "SNG_B_EYECATCH"
                        .balign 4

glabel D_80136BBC
/* 02885C 80136BBC  */  .asciz  "SNG_B_FARM"
                        .balign 4

glabel D_80136BC8
/* 028868 80136BC8  */  .asciz  "SNG_B_FOREST"
                        .balign 4

glabel D_80136BD8
/* 028878 80136BD8  */  .asciz  "SNG_B_HELLO"
                        .balign 4

glabel D_80136BE4
/* 028884 80136BE4  */  .asciz  "SNG_B_MAP"
                        .balign 4

glabel D_80136BF0
/* 028890 80136BF0  */  .asciz  "SNG_B_MAP2"
                        .balign 4

glabel D_80136BFC
/* 02889C 80136BFC  */  .asciz  "SNG_B_MAP3"
                        .balign 4

glabel D_80136C08
/* 0288A8 80136C08  */  .asciz  "SNG_B_MIST"
                        .balign 4

glabel D_80136C14
/* 0288B4 80136C14  */  .asciz  "SNG_B_MYROOM"
                        .balign 4

glabel D_80136C24
/* 0288C4 80136C24  */  .asciz  "SNG_B_NAMEENTRY"
                        .balign 4

glabel D_80136C34
/* 0288D4 80136C34  */  .asciz  "SNG_B_OTUKAI"
                        .balign 4

glabel D_80136C44
/* 0288E4 80136C44  */  .asciz  "SNG_B_QUIZ1"
                        .balign 4

glabel D_80136C50
/* 0288F0 80136C50  */  .asciz  "SNG_B_QUIZ2"
                        .balign 4

glabel D_80136C5C
/* 0288FC 80136C5C  */  .asciz  "SNG_B_RUNAWAY"
                        .balign 4

glabel D_80136C6C
/* 02890C 80136C6C  */  .asciz  "SNG_B_SAWAYAKA"
                        .balign 4

glabel D_80136C7C
/* 02891C 80136C7C  */  .asciz  "SNG_B_STAGECLEAR"
                        .balign 4

glabel D_80136C90
/* 028930 80136C90  */  .asciz  "SNG_B_STORYTITLE"
                        .balign 4

glabel D_80136CA4
/* 028944 80136CA4  */  .asciz  "SNG_B_STORYTITLE2"
                        .balign 4

glabel D_80136CB8
/* 028958 80136CB8  */  .asciz  "SNG_B_SUCCESS1"
                        .balign 4

glabel D_80136CC8
/* 028968 80136CC8  */  .asciz  "SNG_B_SUNSET"
                        .balign 4

glabel D_80136CD8
/* 028978 80136CD8  */  .asciz  "SNG_B_SYOKUJI"
                        .balign 4

glabel D_80136CE8
/* 028988 80136CE8  */  .asciz  "SNG_B_THINKING"
                        .balign 4

glabel D_80136CF8
/* 028998 80136CF8  */  .asciz  "SNG_J_BOO"
                        .balign 4

glabel D_80136D04
/* 0289A4 80136D04  */  .asciz  "SNG_J_CALL"
                        .balign 4

glabel D_80136D10
/* 0289B0 80136D10  */  .asciz  "SNG_J_EVEND"
                        .balign 4

glabel D_80136D1C
/* 0289BC 80136D1C  */  .asciz  "SNG_J_EVGOOD"
                        .balign 4

glabel D_80136D2C
/* 0289CC 80136D2C  */  .asciz  "SNG_J_EVOLVED"
                        .balign 4

glabel D_80136D3C
/* 0289DC 80136D3C  */  .asciz  "SNG_J_EVOLVING"
                        .balign 4

glabel D_80136D4C
/* 0289EC 80136D4C  */  .asciz  "SNG_J_EYEICON"
                        .balign 4

glabel D_80136D5C
/* 0289FC 80136D5C  */  .asciz  "SNG_J_EYEMODE"
                        .balign 4

glabel D_80136D6C
/* 028A0C 80136D6C  */  .asciz  "SNG_J_FAIL"
                        .balign 4

glabel D_80136D78
/* 028A18 80136D78  */  .asciz  "SNG_J_HARMO1"
                        .balign 4

glabel D_80136D88
/* 028A28 80136D88  */  .asciz  "SNG_J_HARMO2"
                        .balign 4

glabel D_80136D98
/* 028A38 80136D98  */  .asciz  "SNG_J_LEVELDOWN"
                        .balign 4

glabel D_80136DA8
/* 028A48 80136DA8  */  .asciz  "SNG_J_LEVELUP"
                        .balign 4

glabel D_80136DB8
/* 028A58 80136DB8  */  .asciz  "SNG_J_PIKASPIN"
                        .balign 4

glabel D_80136DC8
/* 028A68 80136DC8  */  .asciz  "SNG_J_PINPON"
                        .balign 4

glabel D_80136DD8
/* 028A78 80136DD8  */  .asciz  "SNG_J_RAPPA1"
                        .balign 4

glabel D_80136DE8
/* 028A88 80136DE8  */  .asciz  "SNG_J_RAPPA2"
                        .balign 4

glabel D_80136DF8
/* 028A98 80136DF8  */  .asciz  "SNG_J_SEASHORES"
                        .balign 4

glabel D_80136E08
/* 028AA8 80136E08  */  .asciz  "SNG_J_SUCCESS"
                        .balign 4
/* 028AB8 80136E18  */  .asciz  ""
                        .balign 4
/* 028ABC 80136E1C  */  .asciz  ""
                        .balign 4
/* 028AC0 80136E20  */  .asciz  "warning: item %p(%s) is out of maze\n"
                        .balign 4
/* 028AE8 80136E48  */  .asciz  "%s = (%3.2f, %3.2f, %3.2f)\n"
                        .balign 4
/* 028B04 80136E64  */  .asciz  "obj->xyz"
                        .balign 4
/* 028B10 80136E70  */  .asciz  "mov_x:%f mov_z:%f fallSpeed:%f\n"
                        .balign 4
/* 028B30 80136E90  */  .asciz  "Error: item(%p) is no more held by object(%p).\n"
                        .balign 4

glabel D_80136EC0
/* 028B60 80136EC0 3E4CCCCD */  .float  0.20000000298023224

glabel D_80136EC4
/* 028B64 80136EC4 3F4CCCCD */  .float  0.800000011920929

glabel D_80136EC8
/* 028B68 80136EC8 3C23D70A */  .float  0.009999999776482582

glabel D_80136ECC
/* 028B6C 80136ECC BC23D70A */  .float  -0.009999999776482582

glabel D_80136ED0
/* 028B70 80136ED0 3F4CCCCD */  .float  0.800000011920929

glabel D_80136ED4
/* 028B74 80136ED4 3E99999A */  .float  0.30000001192092896

glabel D_80136ED8
/* 028B78 80136ED8 42652EE0 */  .float  57.2957763671875

glabel D_80136EDC
/* 028B7C 80136EDC 3F666666 */  .float  0.8999999761581421

glabel D_80136EE0
/* 028B80 80136EE0 3E4CCCCD */  .float  0.20000000298023224

glabel D_80136EE4
/* 028B84 80136EE4 3F333333 */  .float  0.699999988079071

glabel D_80136EE8
/* 028B88 80136EE8 40511111 */  .float  3.2666666507720947

glabel D_80136EEC
/* 028B8C 80136EEC BF333333 */  .float  -0.699999988079071

glabel D_80136EF0
/* 028B90 80136EF0 BF333333 */  .float  -0.699999988079071

glabel D_80136EF4
/* 028B94 80136EF4 BF666666 */  .float  -0.8999999761581421

glabel D_80136EF8
/* 028B98 80136EF8 3C23D70A */  .float  0.009999999776482582
/* 028B9C 80136EFC 00000000 */  .float  0.0

glabel D_80136F00
/* 028BA0 80136F00  */  .asciz  "SND_BF_FR"
                        .balign 4

glabel D_80136F0C
/* 028BAC 80136F0C  */  .asciz  "SND_CA_HHH"
                        .balign 4

glabel D_80136F18
/* 028BB8 80136F18  */  .asciz  "SND_CA_IAH"
                        .balign 4

glabel D_80136F24
/* 028BC4 80136F24  */  .asciz  "SND_CA_WEA"
                        .balign 4

glabel D_80136F30
/* 028BD0 80136F30  */  .asciz  "SND_CO_C"
                        .balign 4

glabel D_80136F3C
/* 028BDC 80136F3C  */  .asciz  "SND_DG_DG"
                        .balign 4

glabel D_80136F48
/* 028BE8 80136F48  */  .asciz  "SND_DG_DGD"
                        .balign 4

glabel D_80136F54
/* 028BF4 80136F54  */  .asciz  "SND_DO_AEAA"
                        .balign 4

glabel D_80136F60
/* 028C00 80136F60  */  .asciz  "SND_FB_BNBN"
                        .balign 4

glabel D_80136F6C
/* 028C0C 80136F6C  */  .asciz  "SND_FD_DN"
                        .balign 4

glabel D_80136F78
/* 028C18 80136F78  */  .asciz  "SND_FD_DND"
                        .balign 4

glabel D_80136F84
/* 028C24 80136F84  */  .asciz  "SND_FD_DNDN"
                        .balign 4

glabel D_80136F90
/* 028C30 80136F90  */  .asciz  "SND_FD_DNDND"
                        .balign 4

glabel D_80136FA0
/* 028C40 80136FA0  */  .asciz  "SND_FD_DNDNDN"
                        .balign 4

glabel D_80136FB0
/* 028C50 80136FB0  */  .asciz  "SND_FD_DNE"
                        .balign 4

glabel D_80136FBC
/* 028C5C 80136FBC  */  .asciz  "SND_FD_DNEDNE"
                        .balign 4

glabel D_80136FCC
/* 028C6C 80136FCC  */  .asciz  "SND_FD_FSDNDN"
                        .balign 4

glabel D_80136FDC
/* 028C7C 80136FDC  */  .asciz  "SND_GH_BHHH"
                        .balign 4

glabel D_80136FE8
/* 028C88 80136FE8  */  .asciz  "SND_GH_GS"
                        .balign 4

glabel D_80136FF4
/* 028C94 80136FF4  */  .asciz  "SND_HI_KGE"
                        .balign 4

glabel D_80137000
/* 028CA0 80137000  */  .asciz  "SND_KC_KC"
                        .balign 4

glabel D_8013700C
/* 028CAC 8013700C  */  .asciz  "SND_KH_HN"
                        .balign 4

glabel D_80137018
/* 028CB8 80137018  */  .asciz  "SND_KH_KS"
                        .balign 4

glabel D_80137024
/* 028CC4 80137024  */  .asciz  "SND_NM_NR"
                        .balign 4

glabel D_80137030
/* 028CD0 80137030  */  .asciz  "SND_NM_NRNR"
                        .balign 4

glabel D_8013703C
/* 028CDC 8013703C  */  .asciz  "SND_NM_NY"
                        .balign 4

glabel D_80137048
/* 028CE8 80137048  */  .asciz  "SND_NZ_NAA"
                        .balign 4

glabel D_80137054
/* 028CF4 80137054  */  .asciz  "SND_NZ_NZNZ"
                        .balign 4

glabel D_80137060
/* 028D00 80137060  */  .asciz  "SND_NZ_ZO"
                        .balign 4

glabel D_8013706C
/* 028D0C 8013706C  */  .asciz  "SND_ON_OGA"
                        .balign 4

glabel D_80137078
/* 028D18 80137078  */  .asciz  "SND_PI_F_A_BGJ"
                        .balign 4

glabel D_80137088
/* 028D28 80137088  */  .asciz  "SND_PI_F_A_BKJ"
                        .balign 4

glabel D_80137098
/* 028D38 80137098  */  .asciz  "SND_PI_F_A_C"
                        .balign 4

glabel D_801370A8
/* 028D48 801370A8  */  .asciz  "SND_PI_F_A_CA"
                        .balign 4

glabel D_801370B8
/* 028D58 801370B8  */  .asciz  "SND_PI_F_A_CU"
                        .balign 4

glabel D_801370C8
/* 028D68 801370C8  */  .asciz  "SND_PI_F_A_P"
                        .balign 4

glabel D_801370D8
/* 028D78 801370D8  */  .asciz  "SND_PI_F_A_PIKAC"
                        .balign 4

glabel D_801370EC
/* 028D8C 801370EC  */  .asciz  "SND_PI_F_A_PIKC"
                        .balign 4

glabel D_801370FC
/* 028D9C 801370FC  */  .asciz  "SND_PI_F_A_PK"
                        .balign 4

glabel D_8013710C
/* 028DAC 8013710C  */  .asciz  "SND_PI_F_A_PKAC"
                        .balign 4

glabel D_8013711C
/* 028DBC 8013711C  */  .asciz  "SND_PI_F_A_PKC"
                        .balign 4

glabel D_8013712C
/* 028DCC 8013712C  */  .asciz  "SND_PI_F_A_PKPK"
                        .balign 4

glabel D_8013713C
/* 028DDC 8013713C  */  .asciz  "SND_PI_F_H_C"
                        .balign 4

glabel D_8013714C
/* 028DEC 8013714C  */  .asciz  "SND_PI_F_H_PK"
                        .balign 4

glabel D_8013715C
/* 028DFC 8013715C  */  .asciz  "SND_PI_F_H_PKA"
                        .balign 4

glabel D_8013716C
/* 028E0C 8013716C  */  .asciz  "SND_PI_F_I_B"
                        .balign 4

glabel D_8013717C
/* 028E1C 8013717C  */  .asciz  "SND_PI_F_I_BBKC"
                        .balign 4

glabel D_8013718C
/* 028E2C 8013718C  */  .asciz  "SND_PI_F_I_BIIK"
                        .balign 4

glabel D_8013719C
/* 028E3C 8013719C  */  .asciz  "SND_PI_F_I_BIK"
                        .balign 4

glabel D_801371AC
/* 028E4C 801371AC  */  .asciz  "SND_PI_F_I_BIKA"
                        .balign 4

glabel D_801371BC
/* 028E5C 801371BC  */  .asciz  "SND_PI_F_I_BIKC"
                        .balign 4

glabel D_801371CC
/* 028E6C 801371CC  */  .asciz  "SND_PI_F_I_BK"
                        .balign 4

glabel D_801371DC
/* 028E7C 801371DC  */  .asciz  "SND_PI_F_I_BKBKC"
                        .balign 4

glabel D_801371F0
/* 028E90 801371F0  */  .asciz  "SND_PI_F_I_BKC"
                        .balign 4

glabel D_80137200
/* 028EA0 80137200  */  .asciz  "SND_PI_F_I_C"
                        .balign 4

glabel D_80137210
/* 028EB0 80137210  */  .asciz  "SND_PI_F_I_CU"
                        .balign 4

glabel D_80137220
/* 028EC0 80137220  */  .asciz  "SND_PI_F_I_PIIKC"
                        .balign 4

glabel D_80137234
/* 028ED4 80137234  */  .asciz  "SND_PI_F_I_PIKAC"
                        .balign 4

glabel D_80137248
/* 028EE8 80137248  */  .asciz  "SND_PI_F_I_PIKACHU"
                        .balign 4

glabel D_8013725C
/* 028EFC 8013725C  */  .asciz  "SND_PI_F_I_PIKACU"
                        .balign 4

glabel D_80137270
/* 028F10 80137270  */  .asciz  "SND_PI_F_I_PIKC"
                        .balign 4

glabel D_80137280
/* 028F20 80137280  */  .asciz  "SND_PI_F_I_PIKCU"
                        .balign 4

glabel D_80137294
/* 028F34 80137294  */  .asciz  "SND_PI_F_I_PK"
                        .balign 4

glabel D_801372A4
/* 028F44 801372A4  */  .asciz  "SND_PI_F_I_PKC"
                        .balign 4

glabel D_801372B4
/* 028F54 801372B4  */  .asciz  "SND_PI_F_K_C"
                        .balign 4

glabel D_801372C4
/* 028F64 801372C4  */  .asciz  "SND_PI_F_K_PK"
                        .balign 4

glabel D_801372D4
/* 028F74 801372D4  */  .asciz  "SND_PI_F_K_PKC"
                        .balign 4

glabel D_801372E4
/* 028F84 801372E4  */  .asciz  "SND_PI_F_K_PKPK"
                        .balign 4

glabel D_801372F4
/* 028F94 801372F4  */  .asciz  "SND_PI_F_N_BK"
                        .balign 4

glabel D_80137304
/* 028FA4 80137304  */  .asciz  "SND_PI_F_N_CPKPK"
                        .balign 4

glabel D_80137318
/* 028FB8 80137318  */  .asciz  "SND_PI_F_N_GGNC"
                        .balign 4

glabel D_80137328
/* 028FC8 80137328  */  .asciz  "SND_PI_F_N_KC"
                        .balign 4

glabel D_80137338
/* 028FD8 80137338  */  .asciz  "SND_PI_F_N_PIIIK"
                        .balign 4

glabel D_8013734C
/* 028FEC 8013734C  */  .asciz  "SND_PI_F_N_PIIIKA"
                        .balign 4

glabel D_80137360
/* 029000 80137360  */  .asciz  "SND_PI_F_N_PIIK"
                        .balign 4

glabel D_80137370
/* 029010 80137370  */  .asciz  "SND_PI_F_N_PIIKA"
                        .balign 4

glabel D_80137384
/* 029024 80137384  */  .asciz  "SND_PI_F_N_PIK"
                        .balign 4

glabel D_80137394
/* 029034 80137394  */  .asciz  "SND_PI_F_N_PIKA"
                        .balign 4

glabel D_801373A4
/* 029044 801373A4  */  .asciz  "SND_PI_F_N_PIKAA"
                        .balign 4

glabel D_801373B8
/* 029058 801373B8  */  .asciz  "SND_PI_F_N_PKA"
                        .balign 4

glabel D_801373C8
/* 029068 801373C8  */  .asciz  "SND_PI_F_N_PKAA"
                        .balign 4

glabel D_801373D8
/* 029078 801373D8  */  .asciz  "SND_PI_F_N_PKC"
                        .balign 4

glabel D_801373E8
/* 029088 801373E8  */  .asciz  "SND_PI_F_N_PKCUU"
                        .balign 4

glabel D_801373FC
/* 02909C 801373FC  */  .asciz  "SND_PI_F_N_PKHPKH"
                        .balign 4

glabel D_80137410
/* 0290B0 80137410  */  .asciz  "SND_PI_F_N_PKPK"
                        .balign 4

glabel D_80137420
/* 0290C0 80137420  */  .asciz  "SND_PI_F_O_C"
                        .balign 4

glabel D_80137430
/* 0290D0 80137430  */  .asciz  "SND_PI_F_O_NPKH"
                        .balign 4

glabel D_80137440
/* 0290E0 80137440  */  .asciz  "SND_PI_F_O_PPPKCU"
                        .balign 4

glabel D_80137454
/* 0290F4 80137454  */  .asciz  "SND_PI_F_Y_C"
                        .balign 4

glabel D_80137464
/* 029104 80137464  */  .asciz  "SND_PI_F_Y_CNCC"
                        .balign 4

glabel D_80137474
/* 029114 80137474  */  .asciz  "SND_PI_F_Y_CPKPK"
                        .balign 4

glabel D_80137488
/* 029128 80137488  */  .asciz  "SND_PI_F_Y_HKC"
                        .balign 4

glabel D_80137498
/* 029138 80137498  */  .asciz  "SND_PI_F_Y_PHHHPHH"
                        .balign 4

glabel D_801374AC
/* 02914C 801374AC  */  .asciz  "SND_PI_F_Y_PHHKPKPH"
                        .balign 4

glabel D_801374C0
/* 029160 801374C0  */  .asciz  "SND_PI_F_Y_PIIK"
                        .balign 4

glabel D_801374D0
/* 029170 801374D0  */  .asciz  "SND_PI_F_Y_PIIKAC"
                        .balign 4

glabel D_801374E4
/* 029184 801374E4  */  .asciz  "SND_PI_F_Y_PIIKC"
                        .balign 4

glabel D_801374F8
/* 029198 801374F8  */  .asciz  "SND_PI_F_Y_PIIKPKC"
                        .balign 4

glabel D_8013750C
/* 0291AC 8013750C  */  .asciz  "SND_PI_F_Y_PIK"
                        .balign 4

glabel D_8013751C
/* 0291BC 8013751C  */  .asciz  "SND_PI_F_Y_PIKAC"
                        .balign 4

glabel D_80137530
/* 0291D0 80137530  */  .asciz  "SND_PI_F_Y_PIKACHU"
                        .balign 4

glabel D_80137544
/* 0291E4 80137544  */  .asciz  "SND_PI_F_Y_PIKC"
                        .balign 4

glabel D_80137554
/* 0291F4 80137554  */  .asciz  "SND_PI_F_Y_PIKCU"
                        .balign 4

glabel D_80137568
/* 029208 80137568  */  .asciz  "SND_PI_F_Y_PIKKA"
                        .balign 4

glabel D_8013757C
/* 02921C 8013757C  */  .asciz  "SND_PI_F_Y_PIKPKC"
                        .balign 4

glabel D_80137590
/* 029230 80137590  */  .asciz  "SND_PI_F_Y_PK"
                        .balign 4

glabel D_801375A0
/* 029240 801375A0  */  .asciz  "SND_PI_F_Y_PKA"
                        .balign 4

glabel D_801375B0
/* 029250 801375B0  */  .asciz  "SND_PI_F_Y_PKC"
                        .balign 4

glabel D_801375C0
/* 029260 801375C0  */  .asciz  "SND_PI_F_Y_PKCU"
                        .balign 4

glabel D_801375D0
/* 029270 801375D0  */  .asciz  "SND_PI_F_Y_PKKKK"
                        .balign 4

glabel D_801375E4
/* 029284 801375E4  */  .asciz  "SND_PI_F_Y_PKPKC"
                        .balign 4

glabel D_801375F8
/* 029298 801375F8  */  .asciz  "SND_PI_F_Y_PKPKPKC"
                        .balign 4

glabel D_8013760C
/* 0292AC 8013760C  */  .asciz  "SND_PI_F_Y_PKPKPKJ"
                        .balign 4

glabel D_80137620
/* 0292C0 80137620  */  .asciz  "SND_PI_F_Y_PPKC"
                        .balign 4

glabel D_80137630
/* 0292D0 80137630  */  .asciz  "SND_PI_U_A_P"
                        .balign 4

glabel D_80137640
/* 0292E0 80137640  */  .asciz  "SND_PI_U_N_PIKC"
                        .balign 4

glabel D_80137650
/* 0292F0 80137650  */  .asciz  "SND_PI_U_N_PK"
                        .balign 4

glabel D_80137660
/* 029300 80137660  */  .asciz  "SND_PI_U_N_PKBBBPKJ"
                        .balign 4

glabel D_80137674
/* 029314 80137674  */  .asciz  "SND_PI_U_N_PKC"
                        .balign 4

glabel D_80137684
/* 029324 80137684  */  .asciz  "SND_PI_U_N_PKPKA"
                        .balign 4

glabel D_80137698
/* 029338 80137698  */  .asciz  "SND_PI_U_N_PKPKPK"
                        .balign 4

glabel D_801376AC
/* 02934C 801376AC  */  .asciz  "SND_PI_U_O_P"
                        .balign 4

glabel D_801376BC
/* 02935C 801376BC  */  .asciz  "SND_PI_U_O_PK"
                        .balign 4

glabel D_801376CC
/* 02936C 801376CC  */  .asciz  "SND_PI_U_Y_PIK"
                        .balign 4

glabel D_801376DC
/* 02937C 801376DC  */  .asciz  "SND_PI_U_Y_PK"
                        .balign 4

glabel D_801376EC
/* 02938C 801376EC  */  .asciz  "SND_RF_RFRFR"
                        .balign 4

glabel D_801376FC
/* 02939C 801376FC  */  .asciz  "SND_TP_TKPRRY"
                        .balign 4

glabel D_8013770C
/* 0293AC 8013770C  */  .asciz  "SND_TP_TKPRY"
                        .balign 4

glabel D_8013771C
/* 0293BC 8013771C  */  .asciz  "SND_YD_YD"
                        .balign 4

glabel D_80137728
/* 0293C8 80137728  */  .asciz  "SND_ZE_JNJN"
                        .balign 4

glabel D_80137734
/* 0293D4 80137734  */  .asciz  "SND_ZE_ZGZNG"
                        .balign 4

glabel D_80137744
/* 0293E4 80137744  */  .asciz  "SND_ZE_ZNGMGMG"
                        .balign 4

glabel D_80137754
/* 0293F4 80137754  */  .asciz  "SND_ZE_ZNZN"
                        .balign 4

glabel D_80137760
/* 029400 80137760  */  .asciz  "SND__EN_BIRDS"
                        .balign 4

glabel D_80137770
/* 029410 80137770  */  .asciz  "SND__EN_INSECTS"
                        .balign 4

glabel D_80137780
/* 029420 80137780  */  .asciz  "SND__EN_KARASU"
                        .balign 4

glabel D_80137790
/* 029430 80137790  */  .asciz  "SND__EN_RIVER_LOOP"
                        .balign 4

glabel D_801377A4
/* 029444 801377A4  */  .asciz  "SND__ET_AMBLOGO2"
                        .balign 4

glabel D_801377B8
/* 029458 801377B8  */  .asciz  "SND__PI_ASIFURI"
                        .balign 4

glabel D_801377C8
/* 029468 801377C8  */  .asciz  "SND__PI_BIRIBIRI"
                        .balign 4

glabel D_801377DC
/* 02947C 801377DC  */  .asciz  "SND__PI_CONCENTRATION"
                        .balign 4

glabel D_801377F4
/* 029494 801377F4  */  .asciz  "SND__PI_FOOTSTEP1"
                        .balign 4

glabel D_80137808
/* 0294A8 80137808  */  .asciz  "SND__PI_FOOTSTEP2"
                        .balign 4

glabel D_8013781C
/* 0294BC 8013781C  */  .asciz  "SND__PI_GETSTAR"
                        .balign 4

glabel D_8013782C
/* 0294CC 8013782C  */  .asciz  "SND__PI_JUMP"
                        .balign 4

glabel D_8013783C
/* 0294DC 8013783C  */  .asciz  "SND__PI_KOKE"
                        .balign 4

glabel D_8013784C
/* 0294EC 8013784C  */  .asciz  "SND__PI_KUBIFURI"
                        .balign 4

glabel D_80137860
/* 029500 80137860  */  .asciz  "SND__PI_PIYORI"
                        .balign 4

glabel D_80137870
/* 029510 80137870  */  .asciz  "SND__PI_RAIMEI"
                        .balign 4

glabel D_80137880
/* 029520 80137880  */  .asciz  "SND__PI_RAPPAMISS"
                        .balign 4

glabel D_80137894
/* 029534 80137894  */  .asciz  "SND__PI_SPEED"
                        .balign 4

glabel D_801378A4
/* 029544 801378A4  */  .asciz  "SND__PL_NORMALHIT1"
                        .balign 4

glabel D_801378B8
/* 029558 801378B8  */  .asciz  "SND__PL_NORMALHIT2"
                        .balign 4

glabel D_801378CC
/* 02956C 801378CC  */  .asciz  "SND__PL_THROW"
                        .balign 4

glabel D_801378DC
/* 02957C 801378DC  */  .asciz  "SND__SH_CANNON"
                        .balign 4

glabel D_801378EC
/* 02958C 801378EC  */  .asciz  "SND__SH_COIN"
                        .balign 4

glabel D_801378FC
/* 02959C 801378FC  */  .asciz  "SND__SH_FISHING"
                        .balign 4

glabel D_8013790C
/* 0295AC 8013790C  */  .asciz  "SND__SH_GEHO"
                        .balign 4

glabel D_8013791C
/* 0295BC 8013791C  */  .asciz  "SND__SH_HARMONICA"
                        .balign 4

glabel D_80137930
/* 0295D0 80137930  */  .asciz  "SND__SH_JOROKOKE"
                        .balign 4

glabel D_80137944
/* 0295E4 80137944  */  .asciz  "SND__SH_JOROKUMI"
                        .balign 4

glabel D_80137958
/* 0295F8 80137958  */  .asciz  "SND__SH_JOROYARI"
                        .balign 4

glabel D_8013796C
/* 02960C 8013796C  */  .asciz  "SND__SH_NAZODIG"
                        .balign 4

glabel D_8013797C
/* 02961C 8013797C  */  .asciz  "SND__SH_RAPPA"
                        .balign 4

glabel D_8013798C
/* 02962C 8013798C  */  .asciz  "SND__SH_SANDHIT"
                        .balign 4

glabel D_8013799C
/* 02963C 8013799C  */  .asciz  "SND__SH_SMOKE"
                        .balign 4

glabel D_801379AC
/* 02964C 801379AC  */  .asciz  "SND__SH_SUIKAHIT"
                        .balign 4

glabel D_801379C0
/* 029660 801379C0  */  .asciz  "SND__SH_SWING"
                        .balign 4

glabel D_801379D0
/* 029670 801379D0  */  .asciz  "SND__SH_TREASUREBOXDIGOUT"
                        .balign 4

glabel D_801379EC
/* 02968C 801379EC  */  .asciz  "SND__SH_TREASUREBOXOPEN"
                        .balign 4

glabel D_80137A04
/* 0296A4 80137A04  */  .asciz  "SND__SH_TREASUREBOXPULL"
                        .balign 4

glabel D_80137A1C
/* 0296BC 80137A1C  */  .asciz  "SND__SY_CALL"
                        .balign 4

glabel D_80137A2C
/* 0296CC 80137A2C  */  .asciz  "SND__SY_CURSORMOVE"
                        .balign 4

glabel D_80137A40
/* 0296E0 80137A40  */  .asciz  "SND__SY_EVMONEY"
                        .balign 4

glabel D_80137A50
/* 0296F0 80137A50  */  .asciz  "SND__SY_EYEICON1"
                        .balign 4

glabel D_80137A64
/* 029704 80137A64  */  .asciz  "SND__SY_EYEICON2"
                        .balign 4

glabel D_80137A78
/* 029718 80137A78  */  .asciz  "SND__SY_EYEICONKIE"
                        .balign 4

glabel D_80137A8C
/* 02972C 80137A8C  */  .asciz  "SND__SY_FORESTWALK"
                        .balign 4

glabel D_80137AA0
/* 029740 80137AA0  */  .asciz  "SND__SY_GRASSHIT"
                        .balign 4

glabel D_80137AB4
/* 029754 80137AB4  */  .asciz  "SND__SY_GRASSWALK"
                        .balign 4

glabel D_80137AC8
/* 029768 80137AC8  */  .asciz  "SND__SY_ITEMBOXOPEN"
                        .balign 4

glabel D_80137ADC
/* 02977C 80137ADC  */  .asciz  "SND__SY_ITEMBOXSLIDE"
                        .balign 4

glabel D_80137AF4
/* 029794 80137AF4  */  .asciz  "SND__SY_ITEMLOST"
                        .balign 4

glabel D_80137B08
/* 0297A8 80137B08  */  .asciz  "SND__SY_ITEMRINGCLOSE"
                        .balign 4

glabel D_80137B20
/* 0297C0 80137B20  */  .asciz  "SND__SY_ITEMRINGOPEN"
                        .balign 4

glabel D_80137B38
/* 0297D8 80137B38  */  .asciz  "SND__SY_MESAPPEAR"
                        .balign 4

glabel D_80137B4C
/* 0297EC 80137B4C  */  .asciz  "SND__SY_MESGET"
                        .balign 4

glabel D_80137B5C
/* 0297FC 80137B5C  */  .asciz  "SND__SY_MESHAJIKI"
                        .balign 4

glabel D_80137B70
/* 029810 80137B70  */  .asciz  "SND__SY_MESWARERU"
                        .balign 4

glabel D_80137B84
/* 029824 80137B84  */  .asciz  "SND__SY_METALITEM"
                        .balign 4

glabel D_80137B98
/* 029838 80137B98  */  .asciz  "SND__SY_MICON"
                        .balign 4

glabel D_80137BA8
/* 029848 80137BA8  */  .asciz  "SND__SY_PHCURSOR"
                        .balign 4

glabel D_80137BBC
/* 02985C 80137BBC  */  .asciz  "SND__SY_PHSELECT"
                        .balign 4

glabel D_80137BD0
/* 029870 80137BD0  */  .asciz  "SND__SY_PHSWITCH"
                        .balign 4

glabel D_80137BE4
/* 029884 80137BE4  */  .asciz  "SND__SY_PLAITEM"
                        .balign 4

glabel D_80137BF4
/* 029894 80137BF4  */  .asciz  "SND__SY_SANDWALK"
                        .balign 4

glabel D_80137C08
/* 0298A8 80137C08  */  .asciz  "SND__SY_SELECT"
                        .balign 4

glabel D_80137C18
/* 0298B8 80137C18  */  .asciz  "SND__SY_SMALLSPLASH"
                        .balign 4

glabel D_80137C2C
/* 0298CC 80137C2C  */  .asciz  "SND__SY_WATERWALK"
                        .balign 4

glabel D_80137C40
/* 0298E0 80137C40  */  .asciz  "SND__SY_WOODWALK2"
                        .balign 4
/* 0298F4 80137C54  */  .asciz  ""
                        .balign 4
/* 0298F8 80137C58  */  .asciz  ""
                        .balign 4
/* 0298FC 80137C5C  */  .asciz  ""
                        .balign 4

glabel D_80137C60
/* 029900 80137C60  */  .asciz  "いつもいっしょ"
                        .balign 4

glabel D_80137C70
/* 029910 80137C70  */  .asciz  "よるのキャンプ"
                        .balign 4

glabel D_80137C80
/* 029920 80137C80  */  .asciz  "たいへんだ！"
                        .balign 4

glabel D_80137C90
/* 029930 80137C90  */  .asciz  "うれしいね"
                        .balign 4

glabel D_80137C9C
/* 02993C 80137C9C  */  .asciz  "ただいま"
                        .balign 4

glabel D_80137CA8
/* 029948 80137CA8  */  .asciz  "そうげんのかぜ"
                        .balign 4

glabel D_80137CB8
/* 029958 80137CB8  */  .asciz  "もりのささやき"
                        .balign 4

glabel D_80137CC8
/* 029968 80137CC8  */  .asciz  "こんにちは！"
                        .balign 4

glabel D_80137CD8
/* 029978 80137CD8  */  .asciz  "チャレンジ！"
                        .balign 4

glabel D_80137CE8
/* 029988 80137CE8  */  .asciz  "みてみて！"
                        .balign 4

glabel D_80137CF4
/* 029994 80137CF4  */  .asciz  "あそぼう！"
                        .balign 4

glabel D_80137D00
/* 0299A0 80137D00  */  .asciz  "きりのみずうみ"
                        .balign 4

glabel D_80137D10
/* 0299B0 80137D10  */  .asciz  "ぼくのへや"
                        .balign 4

glabel D_80137D1C
/* 0299BC 80137D1C  */  .asciz  "ピッピカチュウ"
                        .balign 4

glabel D_80137D2C
/* 0299CC 80137D2C  */  .asciz  "おつかいのたび"
                        .balign 4

glabel D_80137D3C
/* 0299DC 80137D3C  */  .asciz  "クイズはじまり"
                        .balign 4

glabel D_80137D4C
/* 0299EC 80137D4C  */  .asciz  "だーれだ？"
                        .balign 4

glabel D_80137D58
/* 0299F8 80137D58  */  .asciz  "さみしいな"
                        .balign 4

glabel D_80137D64
/* 029A04 80137D64  */  .asciz  "うみのむこう"
                        .balign 4

glabel D_80137D74
/* 029A14 80137D74  */  .asciz  "つりをしよう"
                        .balign 4

glabel D_80137D84
/* 029A24 80137D84  */  .asciz  "はじまり１"
                        .balign 4

glabel D_80137D90
/* 029A30 80137D90  */  .asciz  "はじまり２"
                        .balign 4

glabel D_80137D9C
/* 029A3C 80137D9C  */  .asciz  "だいせいこう"
                        .balign 4

glabel D_80137DAC
/* 029A4C 80137DAC  */  .asciz  "またあした"
                        .balign 4

glabel D_80137DB8
/* 029A58 80137DB8  */  .asciz  "おしょくじかい"
                        .balign 4

glabel D_80137DC8
/* 029A68 80137DC8  */  .asciz  "きょうもげんき"
                        .balign 4

glabel D_80137DD8
/* 029A78 80137DD8  */  .asciz  "ぶー"
                        .balign 4

glabel D_80137DE0
/* 029A80 80137DE0  */  .asciz  "よびだし"
                        .balign 4

glabel D_80137DEC
/* 029A8C 80137DEC  */  .asciz  "しゅうけい"
                        .balign 4

glabel D_80137DF8
/* 029A98 80137DF8  */  .asciz  "いいもの"
                        .balign 4

glabel D_80137E04
/* 029AA4 80137E04  */  .asciz  "しんかしたよ"
                        .balign 4

glabel D_80137E14
/* 029AB4 80137E14  */  .asciz  "しんかするよ"
                        .balign 4

glabel D_80137E24
/* 029AC4 80137E24  */  .asciz  "しせんアイコン"
                        .balign 4

glabel D_80137E34
/* 029AD4 80137E34  */  .asciz  "しせんモード"
                        .balign 4

glabel D_80137E44
/* 029AE4 80137E44  */  .asciz  "しっぱい"
                        .balign 4

glabel D_80137E50
/* 029AF0 80137E50  */  .asciz  "ハーモニカ１"
                        .balign 4

glabel D_80137E60
/* 029B00 80137E60  */  .asciz  "ハーモニカ２"
                        .balign 4

glabel D_80137E70
/* 029B10 80137E70  */  .asciz  "なかよしダウン"
                        .balign 4

glabel D_80137E80
/* 029B20 80137E80  */  .asciz  "なかよしアップ"
                        .balign 4

glabel D_80137E90
/* 029B30 80137E90  */  .asciz  "くるくる"
                        .balign 4

glabel D_80137E9C
/* 029B3C 80137E9C  */  .asciz  "ピンポン"
                        .balign 4

glabel D_80137EA8
/* 029B48 80137EA8  */  .asciz  "ラッパ１"
                        .balign 4

glabel D_80137EB4
/* 029B54 80137EB4  */  .asciz  "ラッパ２"
                        .balign 4

glabel D_80137EC0
/* 029B60 80137EC0  */  .asciz  "うみのおと"
                        .balign 4

glabel D_80137ECC
/* 029B6C 80137ECC  */  .asciz  "せいこう"
                        .balign 4
/* 029B78 80137ED8  */  .asciz  ""
                        .balign 4
/* 029B7C 80137EDC  */  .asciz  ""
                        .balign 4
