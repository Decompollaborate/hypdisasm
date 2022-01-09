.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .bss

.balign 16

glabel D_800AD840
/* 0AD3F0 800AD840 */  .space  0x400

glabel D_800ADC40
/* 0AD7F0 800ADC40 */  .space  0x688

glabel D_800AE2C8
/* 0ADE78 800AE2C8 */  .space  0x760

glabel D_800AEA28
/* 0AE5D8 800AEA28 */  .space  0x1F08

glabel D_800B0930
/* 0B04E0 800B0930 */  .space  0x04

glabel D_800B0934
/* 0B04E4 800B0934 */  .space  0x04

glabel D_800B0938
/* 0B04E8 800B0938 */  .space  0x04

glabel D_800B093C
/* 0B04EC 800B093C */  .space  0x02

glabel D_800B093E
/* 0B04EE 800B093E */  .space  0x04

glabel D_800B0942
/* 0B04F2 800B0942 */  .space  0x02

glabel D_800B0944
/* 0B04F4 800B0944 */  .space  0x0A

glabel D_800B094E
/* 0B04FE 800B094E */  .space  0x0A

glabel D_800B0958
/* 0B0508 800B0958 */  .space  0x08

glabel D_800B0960
/* 0B0510 800B0960 */  .space  0x04

glabel D_800B0964
/* 0B0514 800B0964 */  .space  0x04

glabel D_800B0968
/* 0B0518 800B0968 */  .space  0x10

glabel D_800B0978
/* 0B0528 800B0978 */  .space  0x1A0

glabel D_800B0B18
/* 0B06C8 800B0B18 */  .space  0x200

glabel D_800B0D18
/* 0B08C8 800B0D18 */  .space  0x06

glabel D_800B0D1E
/* 0B08CE 800B0D1E */  .space  0x06

glabel D_800B0D24
/* 0B08D4 800B0D24 */  .space  0x06

glabel D_800B0D2A
/* 0B08DA 800B0D2A */  .space  0x06

glabel D_800B0D30
/* 0B08E0 800B0D30 */  .space  0x08

glabel D_800B0D38
/* 0B08E8 800B0D38 */  .space  0x08

glabel D_800B0D40
/* 0B08F0 800B0D40 */  .space  0x10

glabel D_800B0D50
/* 0B0900 800B0D50 */  .space  0x9B0

glabel D_800B1700
/* 0B12B0 800B1700 */  .space  0x18

glabel D_800B1718
/* 0B12C8 800B1718 */  .space  0x20

glabel D_800B1738
/* 0B12E8 800B1738 */  .space  0x08

glabel D_800B1740
/* 0B12F0 800B1740 */  .space  0x18

glabel D_800B1758
/* 0B1308 800B1758 */  .space  0x04

glabel D_800B175C
/* 0B130C 800B175C */  .space  0x04

glabel D_800B1760
/* 0B1310 800B1760 */  .space  0x08

glabel D_800B1768
/* 0B1318 800B1768 */  .space  0x10

glabel D_800B1778
/* 0B1328 800B1778 */  .space  0x0C

glabel D_800B1784
/* 0B1334 800B1784 */  .space  0x20C

glabel D_800B1990
/* 0B1540 800B1990 */  .space  0x08

glabel D_800B1998
/* 0B1548 800B1998 */  .space  0x04

glabel D_800B199C
/* 0B154C 800B199C */  .space  0x08

glabel D_800B19A4
/* 0B1554 800B19A4 */  .space  0x10

glabel D_800B19B4
/* 0B1564 800B19B4 */  .space  0x68

glabel D_800B1A1C
/* 0B15CC 800B1A1C */  .space  0x04

glabel D_800B1A20
/* 0B15D0 800B1A20 */  .space  0x04

glabel D_800B1A24
/* 0B15D4 800B1A24 */  .space  0x04

glabel D_800B1A28
/* 0B15D8 800B1A28 */  .space  0x04

glabel D_800B1A2C
/* 0B15DC 800B1A2C */  .space  0x04

glabel D_800B1A30
/* 0B15E0 800B1A30 */  .space  0x28

glabel D_800B1A58
/* 0B1608 800B1A58 */  .space  0x08

glabel D_800B1A60
/* 0B1610 800B1A60 */  .space  0x04

glabel D_800B1A64
/* 0B1614 800B1A64 */  .space  0x08

glabel D_800B1A6C
/* 0B161C 800B1A6C */  .space  0x04

glabel D_800B1A70
/* 0B1620 800B1A70 */  .space  0x04

glabel D_800B1A74
/* 0B1624 800B1A74 */  .space  0x04

glabel D_800B1A78
/* 0B1628 800B1A78 */  .space  0x04

glabel D_800B1A7C
/* 0B162C 800B1A7C */  .space  0x04

glabel D_800B1A80
/* 0B1630 800B1A80 */  .space  0x08

glabel D_800B1A88
/* 0B1638 800B1A88 */  .space  0x08

glabel D_800B1A90
/* 0B1640 800B1A90 */  .space  0xC0

glabel D_800B1B50
/* 0B1700 800B1B50 */  .space  0x600

glabel D_800B2150
/* 0B1D00 800B2150 */  .space  0x04

glabel D_800B2154
/* 0B1D04 800B2154 */  .space  0x04

glabel D_800B2158
/* 0B1D08 800B2158 */  .space  0x08

glabel D_800B2160
/* 0B1D10 800B2160 */  .space  0x30

glabel D_800B2190
/* 0B1D40 800B2190 */  .space  0x10

glabel D_800B21A0
/* 0B1D50 800B21A0 */  .space  0x960

glabel D_800B2B00
/* 0B26B0 800B2B00 */  .space  0x08

glabel D_800B2B08
/* 0B26B8 800B2B08 */  .space  0x18

glabel D_800B2B20
/* 0B26D0 800B2B20 */  .space  0x08

glabel D_800B2B28
/* 0B26D8 800B2B28 */  .space  0x18

glabel D_800B2B40
/* 0B26F0 800B2B40 */  .space  0x04

glabel D_800B2B44
/* 0B26F4 800B2B44 */  .space  0x0C

glabel D_800B2B50
/* 0B2700 800B2B50 */  .space  0x04

glabel D_800B2B54
/* 0B2704 800B2B54 */  .space  0x04

glabel D_800B2B58
/* 0B2708 800B2B58 */  .space  0x08

glabel D_800B2B60
/* 0B2710 800B2B60 */  .space  0x0C

glabel D_800B2B6C
/* 0B271C 800B2B6C */  .space  0x04

glabel D_800B2B70
/* 0B2720 800B2B70 */  .space  0x40

glabel D_800B2BB0
/* 0B2760 800B2BB0 */  .space  0x10

glabel D_800B2BC0
/* 0B2770 800B2BC0 */  .space  0x80

glabel D_800B2C40
/* 0B27F0 800B2C40 */  .space  0x18

glabel D_800B2C58
/* 0B2808 800B2C58 */  .space  0x08

glabel D_800B2C60
/* 0B2810 800B2C60 */  .space  0x04

glabel D_800B2C64
/* 0B2814 800B2C64 */  .space  0x04

glabel D_800B2C68
/* 0B2818 800B2C68 */  .space  0x08

glabel D_800B2C70
/* 0B2820 800B2C70 */  .space  0x04

glabel D_800B2C74
/* 0B2824 800B2C74 */  .space  0x04

glabel D_800B2C78
/* 0B2828 800B2C78 */  .space  0x04

glabel D_800B2C7C
/* 0B282C 800B2C7C */  .space  0x04

glabel D_800B2C80_RomRamTableIndex
/* 0B2830 800B2C80 */  .space  0x04

glabel D_800B2C84
/* 0B2834 800B2C84 */  .space  0x04

glabel D_800B2C88
/* 0B2838 800B2C88 */  .space  0x04

glabel D_800B2C8C
/* 0B283C 800B2C8C */  .space  0x04

glabel D_800B2C90
/* 0B2840 800B2C90 */  .space  0x08

glabel D_800B2C98
/* 0B2848 800B2C98 */  .space  0x8020

glabel D_800BACB8
/* 0BA868 800BACB8 */  .space  0x1B0

glabel D_800BAE68
/* 0BAA18 800BAE68 */  .space  0x04

glabel D_800BAE6C
/* 0BAA1C 800BAE6C */  .space  0x04

glabel D_800BAE70
/* 0BAA20 800BAE70 */  .space  0x04

glabel D_800BAE74
/* 0BAA24 800BAE74 */  .space  0x04

glabel D_800BAE78
/* 0BAA28 800BAE78 */  .space  0x08

glabel D_800BAE80
/* 0BAA30 800BAE80 */  .space  0x50

glabel D_800BAED0
/* 0BAA80 800BAED0 */  .space  0x04

glabel D_800BAED4
/* 0BAA84 800BAED4 */  .space  0x04

glabel D_800BAED8
/* 0BAA88 800BAED8 */  .space  0x04

glabel D_800BAEDC
/* 0BAA8C 800BAEDC */  .space  0x04

glabel D_800BAEE0
/* 0BAA90 800BAEE0 */  .space  0x04

glabel D_800BAEE4
/* 0BAA94 800BAEE4 */  .space  0x04

glabel D_800BAEE8
/* 0BAA98 800BAEE8 */  .space  0x04

glabel D_800BAEEC
/* 0BAA9C 800BAEEC */  .space  0x04

glabel D_800BAEF0
/* 0BAAA0 800BAEF0 */  .space  0x08

glabel D_800BAEF8
/* 0BAAA8 800BAEF8 */  .space  0x14

glabel D_800BAF0C
/* 0BAABC 800BAF0C */  .space  0x0C

glabel D_800BAF18
/* 0BAAC8 800BAF18 */  .space  0x04

glabel D_800BAF1C
/* 0BAACC 800BAF1C */  .space  0x04

glabel D_800BAF20
/* 0BAAD0 800BAF20 */  .space  0x10

glabel D_800BAF30
/* 0BAAE0 800BAF30 */  .space  0x60

glabel D_800BAF90
/* 0BAB40 800BAF90 */  .space  0x20

glabel D_800BAFB0
/* 0BAB60 800BAFB0 */  .space  0x10

glabel D_800BAFC0
/* 0BAB70 800BAFC0 */  .space  0x04

glabel D_800BAFC4
/* 0BAB74 800BAFC4 */  .space  0x1C

glabel D_800BAFE0
/* 0BAB90 800BAFE0 */  .space  0x1C

glabel D_800BAFFC
/* 0BABAC 800BAFFC */  .space  0x04

glabel D_800BB000
/* 0BABB0 800BB000 */  .space  0x98

glabel D_800BB098
/* 0BAC48 800BB098 */  .space  0x18

glabel D_800BB0B0
/* 0BAC60 800BB0B0 */  .space  0x60

glabel D_800BB110
/* 0BACC0 800BB110 */  .space  0x04

glabel D_800BB114
/* 0BACC4 800BB114 */  .space  0x04

glabel D_800BB118
/* 0BACC8 800BB118 */  .space  0x20

glabel D_800BB138
/* 0BACE8 800BB138 */  .space  0x08

glabel D_800BB140
/* 0BACF0 800BB140 */  .space  0xC8

glabel D_800BB208
/* 0BADB8 800BB208 */  .space  0xC8

glabel D_800BB2D0
/* 0BAE80 800BB2D0 */  .space  0x08

glabel D_800BB2D8
/* 0BAE88 800BB2D8 */  .space  0x10

glabel D_800BB2E8
/* 0BAE98 800BB2E8 */  .space  0x28

glabel D_800BB310
/* 0BAEC0 800BB310 */  .space  0x28

glabel D_800BB338
/* 0BAEE8 800BB338 */  .space  0x90

glabel D_800BB3C8
/* 0BAF78 800BB3C8 */  .space  0x08

glabel D_800BB3D0
/* 0BAF80 800BB3D0 */  .space  0x04

glabel D_800BB3D4
/* 0BAF84 800BB3D4 */  .space  0x04

glabel D_800BB3D8
/* 0BAF88 800BB3D8 */  .space  0x04

glabel D_800BB3DC
/* 0BAF8C 800BB3DC */  .space  0x04

glabel D_800BB3E0
/* 0BAF90 800BB3E0 */  .space  0xD0

glabel D_800BB4B0
/* 0BB060 800BB4B0 */  .space  0xD0

glabel D_800BB580
/* 0BB130 800BB580 */  .space  0x64EC

glabel D_800C1A6C
/* 0C161C 800C1A6C */  .space  0x2F674

glabel D_800F10E0
/* 0F0C90 800F10E0 */  .space  0x08

glabel D_800F10E8
/* 0F0C98 800F10E8 */  .space  0x18

glabel D_800F1100
/* 0F0CB0 800F1100 */  .space  0x48

glabel D_800F1148
/* 0F0CF8 800F1148 */  .space  0x28

glabel D_800F1170
/* 0F0D20 800F1170 */  .space  0x200

glabel D_800F1370
/* 0F0F20 800F1370 */  .space  0x5DC

glabel D_800F194C
/* 0F14FC 800F194C */  .space  0x17E4

glabel D_800F3130
/* 0F2CE0 800F3130 */  .space  0x68

glabel D_800F3198
/* 0F2D48 800F3198 */  .space  0x198

glabel D_800F3330
/* 0F2EE0 800F3330 */  .space  0x5DC

glabel D_800F390C
/* 0F34BC 800F390C */  .space  0x514

glabel D_800F3E20
/* 0F39D0 800F3E20 */  .space  0x04

glabel D_800F3E24
/* 0F39D4 800F3E24 */  .space  0x04

glabel D_800F3E28
/* 0F39D8 800F3E28 */  .space  0x04

glabel D_800F3E2C
/* 0F39DC 800F3E2C */  .space  0x04

glabel D_800F3E30
/* 0F39E0 800F3E30 */  .space  0x04

glabel D_800F3E34
/* 0F39E4 800F3E34 */  .space  0x04

glabel D_800F3E38
/* 0F39E8 800F3E38 */  .space  0x04

glabel D_800F3E3C
/* 0F39EC 800F3E3C */  .space  0x34

glabel D_800F3E70
/* 0F3A20 800F3E70 */  .space  0x34

glabel D_800F3EA4
/* 0F3A54 800F3EA4 */  .space  0x04

glabel D_800F3EA8
/* 0F3A58 800F3EA8 */  .space  0x58

glabel D_800F3F00
/* 0F3AB0 800F3F00 */  .space  0x10

glabel D_800F3F10
/* 0F3AC0 800F3F10 */  .space  0x06

glabel D_800F3F16
/* 0F3AC6 800F3F16 */  .space  0x02

glabel D_800F3F18
/* 0F3AC8 800F3F18 */  .space  0x04

glabel D_800F3F1C
/* 0F3ACC 800F3F1C */  .space  0x04

glabel D_800F3F20
/* 0F3AD0 800F3F20 */  .space  0x9C8

glabel D_800F48E8
/* 0F4498 800F48E8 */  .space  0x68

glabel D_800F4950
/* 0F4500 800F4950 */  .space  0x08

glabel D_800F4958
/* 0F4508 800F4958 */  .space  0x04

glabel D_800F495C
/* 0F450C 800F495C */  .space  0x04

glabel D_800F4960
/* 0F4510 800F4960 */  .space  0x04

glabel D_800F4964
/* 0F4514 800F4964 */  .space  0x04

glabel D_800F4968
/* 0F4518 800F4968 */  .space  0x0C

glabel D_800F4974
/* 0F4524 800F4974 */  .space  0x0C

glabel D_800F4980
/* 0F4530 800F4980 */  .space  0x0C

glabel D_800F498C
/* 0F453C 800F498C */  .space  0x0C

glabel D_800F4998
/* 0F4548 800F4998 */  .space  0x0C

glabel D_800F49A4
/* 0F4554 800F49A4 */  .space  0x0C

glabel D_800F49B0
/* 0F4560 800F49B0 */  .space  0x10

glabel D_800F49C0
/* 0F4570 800F49C0 */  .space  0x0C

glabel D_800F49CC
/* 0F457C 800F49CC */  .space  0x04

glabel D_800F49D0
/* 0F4580 800F49D0 */  .space  0x0C

glabel D_800F49DC
/* 0F458C 800F49DC */  .space  0x04

glabel D_800F49E0
/* 0F4590 800F49E0 */  .space  0x04

glabel D_800F49E4
/* 0F4594 800F49E4 */  .space  0x04

glabel D_800F49E8
/* 0F4598 800F49E8 */  .space  0x04

glabel D_800F49EC
/* 0F459C 800F49EC */  .space  0x04

glabel D_800F49F0
/* 0F45A0 800F49F0 */  .space  0x430

glabel D_800F4E20
/* 0F49D0 800F4E20 */  .space  0x0C

glabel D_800F4E2C
/* 0F49DC 800F4E2C */  .space  0x04

glabel D_800F4E30
/* 0F49E0 800F4E30 */  .space  0x444

glabel D_800F5274
/* 0F4E24 800F5274 */  .space  0x04

glabel D_800F5278
/* 0F4E28 800F5278 */  .space  0x04

glabel D_800F527C
/* 0F4E2C 800F527C */  .space  0x14

glabel D_800F5290
/* 0F4E40 800F5290 */  .space  0x04

glabel D_800F5294
/* 0F4E44 800F5294 */  .space  0x04

glabel D_800F5298
/* 0F4E48 800F5298 */  .space  0x28

glabel D_800F52C0
/* 0F4E70 800F52C0 */  .space  0x04

glabel D_800F52C4
/* 0F4E74 800F52C4 */  .space  0x04

glabel D_800F52C8
/* 0F4E78 800F52C8 */  .space  0x30

glabel D_800F52F8
/* 0F4EA8 800F52F8 */  .space  0x04

glabel D_800F52FC
/* 0F4EAC 800F52FC */  .space  0x04

glabel D_800F5300
/* 0F4EB0 800F5300 */  .space  0x04

glabel D_800F5304
/* 0F4EB4 800F5304 */  .space  0x04

glabel D_800F5308
/* 0F4EB8 800F5308 */  .space  0x04

glabel D_800F530C
/* 0F4EBC 800F530C */  .space  0x04

glabel D_800F5310
/* 0F4EC0 800F5310 */  .space  0x08

glabel D_800F5318
/* 0F4EC8 800F5318 */  .space  0x08

glabel D_800F5320
/* 0F4ED0 800F5320 */  .space  0x08

glabel D_800F5328
/* 0F4ED8 800F5328 */  .space  0x08

glabel D_800F5330
/* 0F4EE0 800F5330 */  .space  0x60

glabel D_800F5390
/* 0F4F40 800F5390 */  .space  0x18

glabel D_800F53A8
/* 0F4F58 800F53A8 */  .space  0x3F0

glabel D_800F5798
/* 0F5348 800F5798 */  .space  0x04

glabel D_800F579C
/* 0F534C 800F579C */  .space  0x04

glabel D_800F57A0
/* 0F5350 800F57A0 */  .space  0x10

glabel D_800F57B0
/* 0F5360 800F57B0 */  .space  0x28

glabel D_800F57D8
/* 0F5388 800F57D8 */  .space  0x08

glabel D_800F57E0
/* 0F5390 800F57E0 */  .space  0x9C4

glabel D_800F61A4
/* 0F5D54 800F61A4 */  .space  0x04

glabel D_800F61A8
/* 0F5D58 800F61A8 */  .space  0x04

glabel D_800F61AC
/* 0F5D5C 800F61AC */  .space  0x04

glabel D_800F61B0
/* 0F5D60 800F61B0 */  .space  0x08

glabel D_800F61B8
/* 0F5D68 800F61B8 */  .space  0x2C

glabel D_800F61E4
/* 0F5D94 800F61E4 */  .space  0x04

glabel D_800F61E8
/* 0F5D98 800F61E8 */  .space  0x04

glabel D_800F61EC
/* 0F5D9C 800F61EC */  .space  0x04

glabel D_800F61F0
/* 0F5DA0 800F61F0 */  .space  0x04

glabel D_800F61F4
/* 0F5DA4 800F61F4 */  .space  0x04

glabel D_800F61F8
/* 0F5DA8 800F61F8 */  .space  0x0C

glabel D_800F6204
/* 0F5DB4 800F6204 */  .space  0x4C

glabel D_800F6250
/* 0F5E00 800F6250 */  .space  0x20

glabel D_800F6270
/* 0F5E20 800F6270 */  .space  0x04

glabel D_800F6274
/* 0F5E24 800F6274 */  .space  0x2C

glabel D_800F62A0
/* 0F5E50 800F62A0 */  .space  0x04

glabel D_800F62A4
/* 0F5E54 800F62A4 */  .space  0x04

glabel D_800F62A8
/* 0F5E58 800F62A8 */  .space  0x30

glabel D_800F62D8
/* 0F5E88 800F62D8 */  .space  0x08

glabel D_800F62E0
/* 0F5E90 800F62E0 */  .space  0x10

glabel D_800F62F0
/* 0F5EA0 800F62F0 */  .space  0x10

glabel D_800F6300
/* 0F5EB0 800F6300 */  .space  0x0C

glabel D_800F630C
/* 0F5EBC 800F630C */  .space  0x04

glabel D_800F6310
/* 0F5EC0 800F6310 */  .space  0x04

glabel D_800F6314
/* 0F5EC4 800F6314 */  .space  0x04

glabel D_800F6318
/* 0F5EC8 800F6318 */  .space  0x04

glabel D_800F631C
/* 0F5ECC 800F631C */  .space  0x04

glabel D_800F6320
/* 0F5ED0 800F6320 */  .space  0x04

glabel D_800F6324
/* 0F5ED4 800F6324 */  .space  0x04

glabel D_800F6328
/* 0F5ED8 800F6328 */  .space  0x04

glabel D_800F632C
/* 0F5EDC 800F632C */  .space  0x04

glabel D_800F6330
/* 0F5EE0 800F6330 */  .space  0x04

glabel D_800F6334
/* 0F5EE4 800F6334 */  .space  0x04

glabel D_800F6338
/* 0F5EE8 800F6338 */  .space  0x48

glabel D_800F6380
/* 0F5F30 800F6380 */  .space  0x30

glabel D_800F63B0
/* 0F5F60 800F63B0 */  .space  0x20

glabel D_800F63D0
/* 0F5F80 800F63D0 */  .space  0x28

glabel D_800F63F8
/* 0F5FA8 800F63F8 */  .space  0x04

glabel D_800F63FC
/* 0F5FAC 800F63FC */  .space  0x04

glabel D_800F6400
/* 0F5FB0 800F6400 */  .space  0x04

glabel D_800F6404
/* 0F5FB4 800F6404 */  .space  0x04

glabel D_800F6408
/* 0F5FB8 800F6408 */  .space  0x08

glabel D_800F6410
/* 0F5FC0 800F6410 */  .space  0x30

glabel D_800F6440
/* 0F5FF0 800F6440 */  .space  0x04

glabel D_800F6444
/* 0F5FF4 800F6444 */  .space  0x04

glabel D_800F6448
/* 0F5FF8 800F6448 */  .space  0x08

glabel D_800F6450
/* 0F6000 800F6450 */  .space  0x10

glabel D_800F6460
/* 0F6010 800F6460 */  .space  0x7A0

glabel D_800F6C00
/* 0F67B0 800F6C00 */  .space  0x74

glabel D_800F6C74
/* 0F6824 800F6C74 */  .space  0x0C

glabel D_800F6C80
/* 0F6830 800F6C80 */  .space  0x10

glabel D_800F6C90
/* 0F6840 800F6C90 */  .space  0x04

glabel D_800F6C94
/* 0F6844 800F6C94 */  .space  0x04

glabel D_800F6C98
/* 0F6848 800F6C98 */  .space  0x04

glabel D_800F6C9C
/* 0F684C 800F6C9C */  .space  0x04

glabel D_800F6CA0
/* 0F6850 800F6CA0 */  .space  0x20

glabel D_800F6CC0
/* 0F6870 800F6CC0 */  .space  0x10

glabel D_800F6CD0
/* 0F6880 800F6CD0 */  .space  0x04

glabel D_800F6CD4
/* 0F6884 800F6CD4 */  .space  0x04

glabel D_800F6CD8
/* 0F6888 800F6CD8 */  .space  0x04

glabel D_800F6CDC
/* 0F688C 800F6CDC */  .space  0x02

glabel D_800F6CDE
/* 0F688E 800F6CDE */  .space  0x02

glabel D_800F6CE0
/* 0F6890 800F6CE0 */  .space  0x08

glabel D_800F6CE8
/* 0F6898 800F6CE8 */  .space  0x14

glabel D_800F6CFC
/* 0F68AC 800F6CFC */  .space  0x0C

glabel D_800F6D08
/* 0F68B8 800F6D08 */  .space  0x08

glabel D_800F6D10
/* 0F68C0 800F6D10 */  .space  0x04

glabel D_800F6D14
/* 0F68C4 800F6D14 */  .space  0x04

glabel D_800F6D18
/* 0F68C8 800F6D18 */  .space  0x04

glabel D_800F6D1C
/* 0F68CC 800F6D1C */  .space  0x04

glabel D_800F6D20
/* 0F68D0 800F6D20 */  .space  0x04

glabel D_800F6D24
/* 0F68D4 800F6D24 */  .space  0x04

glabel D_800F6D28
/* 0F68D8 800F6D28 */  .space  0x04

glabel D_800F6D2C
/* 0F68DC 800F6D2C */  .space  0x04

glabel D_800F6D30
/* 0F68E0 800F6D30 */  .space  0x04

glabel D_800F6D34
/* 0F68E4 800F6D34 */  .space  0x04

glabel D_800F6D38
/* 0F68E8 800F6D38 */  .space  0x08

glabel D_800F6D40
/* 0F68F0 800F6D40 */  .space  0x18

glabel D_800F6D58
/* 0F6908 800F6D58 */  .space  0x2328

glabel D_800F9080
/* 0F8C30 800F9080 */  .space  0x2000

glabel D_800FB080
/* 0FAC30 800FB080 */  .space  0x2000

glabel D_800FD080
/* 0FCC30 800FD080 */  .space  0x04

glabel D_800FD084
/* 0FCC34 800FD084 */  .space  0x04

glabel D_800FD088
/* 0FCC38 800FD088 */  .space  0x04

glabel D_800FD08C
/* 0FCC3C 800FD08C */  .space  0x04

glabel D_800FD090
/* 0FCC40 800FD090 */  .space  0x04

glabel D_800FD094
/* 0FCC44 800FD094 */  .space  0x04

glabel D_800FD098
/* 0FCC48 800FD098 */  .space  0x0A

glabel D_800FD0A2
/* 0FCC52 800FD0A2 */  .space  0x16

glabel D_800FD0B8
/* 0FCC68 800FD0B8 */  .space  0x0C

glabel D_800FD0C4
/* 0FCC74 800FD0C4 */  .space  0x04

glabel D_800FD0C8
/* 0FCC78 800FD0C8 */  .space  0x04

glabel D_800FD0CC
/* 0FCC7C 800FD0CC */  .space  0x04

glabel D_800FD0D0
/* 0FCC80 800FD0D0 */  .space  0x10

glabel D_800FD0E0
/* 0FCC90 800FD0E0 */  .space  0x10

glabel D_800FD0F0
/* 0FCCA0 800FD0F0 */  .space  0x10

glabel D_800FD100
/* 0FCCB0 800FD100 */  .space  0x04

glabel D_800FD104
/* 0FCCB4 800FD104 */  .space  0x04

glabel D_800FD108
/* 0FCCB8 800FD108 */  .space  0x04

glabel D_800FD10C
/* 0FCCBC 800FD10C */  .space  0x04

glabel D_800FD110
/* 0FCCC0 800FD110 */  .space  0x08

glabel D_800FD118
/* 0FCCC8 800FD118 */  .space  0x08

glabel D_800FD120
/* 0FCCD0 800FD120 */  .space  0x04

glabel D_800FD124
/* 0FCCD4 800FD124 */  .space  0x04

glabel D_800FD128
/* 0FCCD8 800FD128 */  .space  0x04

glabel D_800FD12C
/* 0FCCDC 800FD12C */  .space  0x04

glabel D_800FD130
/* 0FCCE0 800FD130 */  .space  0x08

glabel D_800FD138
/* 0FCCE8 800FD138 */  .space  0x18

glabel D_800FD150
/* 0FCD00 800FD150 */  .space  0x30

glabel D_800FD180
/* 0FCD30 800FD180 */  .space  0x04

glabel D_800FD184
/* 0FCD34 800FD184 */  .space  0x04

glabel D_800FD188
/* 0FCD38 800FD188 */  .space  0x04

glabel D_800FD18C
/* 0FCD3C 800FD18C */  .space  0x04

glabel D_800FD190
/* 0FCD40 800FD190 */  .space  0x04

glabel D_800FD194
/* 0FCD44 800FD194 */  .space  0x04

glabel D_800FD198
/* 0FCD48 800FD198 */  .space  0x08

glabel D_800FD1A0
/* 0FCD50 800FD1A0 */  .space  0x04

glabel D_800FD1A4
/* 0FCD54 800FD1A4 */  .space  0x04

glabel D_800FD1A8
/* 0FCD58 800FD1A8 */  .space  0x04

glabel D_800FD1AC
/* 0FCD5C 800FD1AC */  .space  0x04

glabel D_800FD1B0
/* 0FCD60 800FD1B0 */  .space  0x04

glabel D_800FD1B4
/* 0FCD64 800FD1B4 */  .space  0x04

glabel D_800FD1B8
/* 0FCD68 800FD1B8 */  .space  0x04

glabel D_800FD1BC
/* 0FCD6C 800FD1BC */  .space  0x04

glabel D_800FD1C0
/* 0FCD70 800FD1C0 */  .space  0x04

glabel D_800FD1C4
/* 0FCD74 800FD1C4 */  .space  0x04

glabel D_800FD1C8
/* 0FCD78 800FD1C8 */  .space  0x04

glabel D_800FD1CC
/* 0FCD7C 800FD1CC */  .space  0x04

glabel D_800FD1D0
/* 0FCD80 800FD1D0 */  .space  0x04

glabel D_800FD1D4
/* 0FCD84 800FD1D4 */  .space  0x04

glabel D_800FD1D8
/* 0FCD88 800FD1D8 */  .space  0x08

glabel D_800FD1E0
/* 0FCD90 800FD1E0 */  .space  0x60

glabel D_800FD240
/* 0FCDF0 800FD240 */  .space  0x3B0

glabel D_800FD5F0
/* 0FD1A0 800FD5F0 */  .space  0x18

glabel D_800FD608
/* 0FD1B8 800FD608 */  .space  0x08

glabel D_800FD610
/* 0FD1C0 800FD610 */  .space  0x04

glabel D_800FD614
/* 0FD1C4 800FD614 */  .space  0x04

glabel D_800FD618
/* 0FD1C8 800FD618 */  .space  0x04

glabel D_800FD61C
/* 0FD1CC 800FD61C */  .space  0x04

glabel D_800FD620
/* 0FD1D0 800FD620 */  .space  0x08

glabel D_800FD628
/* 0FD1D8 800FD628 */  .space  0x18

glabel D_800FD640
/* 0FD1F0 800FD640 */  .space  0x04

glabel D_800FD644
/* 0FD1F4 800FD644 */  .space  0x04

glabel D_800FD648
/* 0FD1F8 800FD648 */  .space  0x08

glabel D_800FD650
/* 0FD200 800FD650 */  .space  0x08

glabel D_800FD658
/* 0FD208 800FD658 */  .space  0x1FF8

glabel D_800FF650
/* 0FF200 800FF650 */  .space  0x1B0

glabel D_800FF800
/* 0FF3B0 800FF800 */  .space  0x18

glabel D_800FF818
/* 0FF3C8 800FF818 */  .space  0x04

glabel D_800FF81C
/* 0FF3CC 800FF81C */  .space  0x18

glabel D_800FF834
/* 0FF3E4 800FF834 */  .space  0x04

glabel D_800FF838
/* 0FF3E8 800FF838 */  .space  0x18

glabel D_800FF850
/* 0FF400 800FF850 */  .space  0x04

glabel D_800FF854
/* 0FF404 800FF854 */  .space  0x3C

glabel D_800FF890
/* 0FF440 800FF890 */  .space  0x400

glabel D_800FFC90
/* 0FF840 800FFC90 */  .space  0x200

glabel D_800FFE90
/* 0FFA40 800FFE90 */  .space  0x200

glabel D_80100090
/* 0FFC40 80100090 */  .space  0x181

glabel D_80100211
/* 0FFDC1 80100211 */  .space  0x207F

glabel D_80102290
/* 101E40 80102290 */  .space  0x10

glabel D_801022A0
/* 101E50 801022A0 */  .space  0x10

glabel D_801022B0
/* 101E60 801022B0 */  .space  0x10

glabel __osEventStateTab
/* 101E70 801022C0 */  .space  0x80

glabel D_80102340
/* 101EF0 80102340 */  .space  0x3C

glabel D_8010237C
/* 101F2C 8010237C */  .space  0x04

glabel D_80102380
/* 101F30 80102380 */  .space  0x28

glabel D_801023A8
/* 101F58 801023A8 */  .space  0x18

glabel D_801023C0
/* 101F70 801023C0 */  .space  0x10

glabel D_801023D0
/* 101F80 801023D0 */  .space  0x100

glabel D_801024D0
/* 102080 801024D0 */  .space  0x04

glabel D_801024D4
/* 102084 801024D4 */  .space  0x3C

glabel D_80102510
/* 1020C0 80102510 */  .space  0x10

glabel D_80102520
/* 1020D0 80102520 */  .space  0x78

glabel D_80102598
/* 102148 80102598 */  .space  0x78

glabel D_80102610
/* 1021C0 80102610 */  .space  0x11B0

glabel D_801037C0
/* 103370 801037C0 */  .space  0x18

glabel D_801037D8
/* 103388 801037D8 */  .space  0x08

glabel D_801037E0
/* 103390 801037E0 */  .space  0x11B0

glabel D_80104990
/* 104540 80104990 */  .space  0x18

glabel D_801049A8
/* 104558 801049A8 */  .space  0x18

glabel D_801049C0
/* 104570 801049C0 */  .space  0x18

glabel D_801049D8
/* 104588 801049D8 */  .space  0x18

glabel D_801049F0
/* 1045A0 801049F0 */  .space  0x10

glabel tmpTask
/* 1045B0 80104A00 */  .space  0x40

glabel D_80104A40
/* 1045F0 80104A40 */  .space  0x08

glabel D_80104A48
/* 1045F8 80104A48 */  .space  0x18

glabel D_80104A60
/* 104610 80104A60 */  .space  0x3C

glabel D_80104A9C
/* 10464C 80104A9C */  .space  0x04

glabel D_80104AA0
/* 104650 80104AA0 */  .space  0x100

glabel D_80104BA0
/* 104750 80104BA0 */  .space  0x20

glabel D_80104BC0
/* 104770 80104BC0 */  .space  0x04

glabel D_80104BC4
/* 104774 80104BC4 */  .space  0x04

glabel D_80104BC8
/* 104778 80104BC8 */  .space  0x04

glabel D_80104BCC
/* 10477C 80104BCC */  .space  0x04

glabel D_80104BD0
/* 104780 80104BD0 */  .space  0x10

glabel D_80104BE0
/* 104790 80104BE0 */  .space  0x08

glabel D_80104BE8
/* 104798 80104BE8 */  .space  0x18

glabel __osThreadSave
/* 1047B0 80104C00 */  .space  0x1B0

glabel D_80104DB0
/* 104960 80104DB0 */  .space  0x1000

glabel D_80105DB0
/* 105960 80105DB0 */  .space  0x14

glabel D_80105DC4
/* 105974 80105DC4 */  .space  0x60

glabel D_80105E24
/* 1059D4 80105E24 */  .space  0x0C
