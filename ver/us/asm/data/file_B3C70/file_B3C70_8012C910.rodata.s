.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_8012C910
/* 021E20 8012C910  */  .asciz  "?"
                        .balign 4

glabel D_8012C914
/* 021E24 8012C914  */  .asciz  "?"
                        .balign 4

glabel D_8012C918
/* 021E28 8012C918  */  .asciz  "?"
                        .balign 4

glabel D_8012C91C
/* 021E2C 8012C91C  */  .asciz  "?"
                        .balign 4

glabel D_8012C920
/* 021E30 8012C920  */  .asciz  "apple"
                        .balign 4

glabel D_8012C928
/* 021E38 8012C928  */  .asciz  "apple"
                        .balign 4

glabel D_8012C930
/* 021E40 8012C930  */  .asciz  "A sweet, red fruit\n^d\"One of ^6PIKACHU^d's favorites.\n^dI wonder... ^4How's it taste^d?\"^^"
                        .balign 4

glabel D_8012C98C
/* 021E9C 8012C98C  */  .asciz  "apple"
                        .balign 4

glabel D_8012C994
/* 021EA4 8012C994  */  .asciz  "green apple"
                        .balign 4

glabel D_8012C9A0
/* 021EB0 8012C9A0  */  .asciz  "An ^4apple^^ that hasn't ripened\n^d\"I bet it's sour. Maybe a\n^4Thundershock^d will help.\"^^"
                        .balign 4

glabel D_8012C9FC
/* 021F0C 8012C9FC  */  .asciz  "apple"
                        .balign 4

glabel D_8012CA04
/* 021F14 8012CA04  */  .asciz  "baked apple"
                        .balign 4

glabel D_8012CA10
/* 021F20 8012CA10  */  .asciz  "An ^4apple^^ that's been baked\n^d\"I wonder... ^4How's it taste^d?\"^^\n"
                        .balign 4

glabel D_8012CA58
/* 021F68 8012CA58  */  .asciz  "apple"
                        .balign 4

glabel D_8012CA60
/* 021F70 8012CA60  */  .asciz  "golden apple"
                        .balign 4

glabel D_8012CA70
/* 021F80 8012CA70  */  .asciz  "A shiny, gold-colored ^4apple^^\n^d\"It's a rare ^4apple^d - don't\n^dlet ^6PIKACHU^d throw it away.\"^^"
                        .balign 4

glabel D_8012CAD8
/* 021FE8 8012CAD8  */  .asciz  "peach"
                        .balign 4

glabel D_8012CAE0
/* 021FF0 8012CAE0  */  .asciz  "peach"
                        .balign 4

glabel D_8012CAE8
/* 021FF8 8012CAE8  */  .asciz  "A sweet, juicy fruit\n^d\"^6PIKACHU^d loves this flavor,\n^dso tell it to ^4taste it^d.\"^^"
                        .balign 4

glabel D_8012CB40
/* 022050 8012CB40  */  .asciz  "strawberry"
                        .balign 4

glabel D_8012CB4C
/* 02205C 8012CB4C  */  .asciz  "strawberry"
                        .balign 4

glabel D_8012CB58
/* 022068 8012CB58  */  .asciz  "A tangy, sweet red fruit\n^d\"^6PIKACHU^d loves this fruit,\n^dso tell it to ^4taste it^d.\"^^"
                        .balign 4

glabel D_8012CBB4
/* 0220C4 8012CBB4  */  .asciz  "raspberry"
                        .balign 4

glabel D_8012CBC0
/* 0220D0 8012CBC0  */  .asciz  "raspberry"
                        .balign 4

glabel D_8012CBCC
/* 0220DC 8012CBCC  */  .asciz  "A deep red fruit\n^d\"It looks very sweet.\"^^\n"
                        .balign 4

glabel D_8012CBFC
/* 02210C 8012CBFC  */  .asciz  "banana"
                        .balign 4

glabel D_8012CC04
/* 022114 8012CC04  */  .asciz  "banana"
                        .balign 4

glabel D_8012CC0C
/* 02211C 8012CC0C  */  .asciz  "A tropical fruit\n^d\"Be sure to throw the\n^dpeel away.\"^^"
                        .balign 4

glabel D_8012CC48
/* 022158 8012CC48  */  .asciz  "cattail"
                        .balign 4

glabel D_8012CC50
/* 022160 8012CC50  */  .asciz  "cattail"
                        .balign 4

glabel D_8012CC58
/* 022168 8012CC58  */  .asciz  "A tall, grassy reed\n^d\"Watch where you ^4throw it^d -^^\n^dit can damage the ^4flower^ds.\"^^"
                        .balign 4

glabel D_8012CCB4
/* 0221C4 8012CCB4  */  .asciz  "wild herb"
                        .balign 4

glabel D_8012CCC0
/* 0221D0 8012CCC0  */  .asciz  "wild herb"
                        .balign 4

glabel D_8012CCCC
/* 0221DC 8012CCCC  */  .asciz  "A sweet smelling ^4leaf^^\n^d\"Boil ^4carrot^ds and ^4onion^ds with\n^dit for a tasty dish.\"^^"
                        .balign 4

glabel D_8012CD28
/* 022238 8012CD28  */  .asciz  "corn"
                        .balign 4

glabel D_8012CD30
/* 022240 8012CD30  */  .asciz  "corn"
                        .balign 4

glabel D_8012CD38
/* 022248 8012CD38  */  .asciz  "A bright, yellow grain\n^d\"You'll get a tasty surprise\n^dif you roast it.\"^^"
                        .balign 4

glabel D_8012CD84
/* 022294 8012CD84  */  .asciz  "popcorn"
                        .balign 4

glabel D_8012CD8C
/* 02229C 8012CD8C  */  .asciz  "popcorn"
                        .balign 4

glabel D_8012CD94
/* 0222A4 8012CD94  */  .asciz  "Popped corn\n^d\"It sure smells delicious.\n^6PIKACHU^d would love to ^4eat it^d!\"^^"
                        .balign 4

glabel D_8012CDE8
/* 0222F8 8012CDE8  */  .asciz  "pumpkin"
                        .balign 4

glabel D_8012CDF0
/* 022300 8012CDF0  */  .asciz  "pumpkin"
                        .balign 4

glabel D_8012CDF8
/* 022308 8012CDF8  */  .asciz  "A hard, heavy vegetable\n^d\"You have them on Halloween,\n^dbut some people eat them!\"^^"
                        .balign 4

glabel D_8012CE50
/* 022360 8012CE50  */  .asciz  "turnip"
                        .balign 4

glabel D_8012CE58
/* 022368 8012CE58  */  .asciz  "turnip"
                        .balign 4

glabel D_8012CE60
/* 022370 8012CE60  */  .asciz  "A member of the radish family\n^d\"This is a cooking ingredient.\n^dIt tastes great when boiled.\"^^"
                        .balign 4

glabel D_8012CEC4
/* 0223D4 8012CEC4  */  .asciz  "cabbage"
                        .balign 4

glabel D_8012CECC
/* 0223DC 8012CECC  */  .asciz  "cabbage"
                        .balign 4

glabel D_8012CED4
/* 0223E4 8012CED4  */  .asciz  "A green vegetable\n^d\"This is often cooked\n^dwith other vegetables.\"^^"
                        .balign 4

glabel D_8012CF1C
/* 02242C 8012CF1C  */  .asciz  "carrot"
                        .balign 4

glabel D_8012CF24
/* 022434 8012CF24  */  .asciz  "carrot"
                        .balign 4

glabel D_8012CF2C
/* 02243C 8012CF2C  */  .asciz  "A long, orange vegetable\n^d\"^4Carrot^ds are full of vitamins.\n^6PIKACHU^d loves to eat them.\"^^"
                        .balign 4

glabel D_8012CF8C
/* 02249C 8012CF8C  */  .asciz  "onion"
                        .balign 4

glabel D_8012CF94
/* 0224A4 8012CF94  */  .asciz  "onion"
                        .balign 4

glabel D_8012CF9C
/* 0224AC 8012CF9C  */  .asciz  "A strong-tasting vegetable\n^d\"It's often used in stews.\n^4How's it smell^d?\"^^"
                        .balign 4

glabel D_8012CFEC
/* 0224FC 8012CFEC  */  .asciz  "sweet potato"
                        .balign 4

glabel D_8012CFFC
/* 02250C 8012CFFC  */  .asciz  "sweet potato"
                        .balign 4

glabel D_8012D00C
/* 02251C 8012D00C  */  .asciz  "A sweet, purple potato\n^d\"It tastes best after being\n^dbaked with ^4Thunderbolt^d.\"^^"
                        .balign 4

glabel D_8012D064
/* 022574 8012D064  */  .asciz  "sweet potato"
                        .balign 4

glabel D_8012D074
/* 022584 8012D074  */  .asciz  "hot sweet potato"
                        .balign 4

glabel D_8012D088
/* 022598 8012D088  */  .asciz  "A cooked sweet potato\n^d\"Tell ^6PIKACHU^d to ^4taste it^d.\"^^\n"
                        .balign 4

glabel D_8012D0C8
/* 0225D8 8012D0C8  */  .asciz  "smelly fruit"
                        .balign 4

glabel D_8012D0D8
/* 0225E8 8012D0D8  */  .asciz  "smelly fruit"
                        .balign 4

glabel D_8012D0E8
/* 0225F8 8012D0E8  */  .asciz  "A strange, ^4smelly fruit^^\n^d\"I bet ^6PIKACHU^d would hate\n^dsomething this smelly.\"^^"
                        .balign 4

glabel D_8012D140
/* 022650 8012D140  */  .asciz  "sticky fruit"
                        .balign 4

glabel D_8012D150
/* 022660 8012D150  */  .asciz  "sticky fruit"
                        .balign 4

glabel D_8012D160
/* 022670 8012D160  */  .asciz  "Cooked ^4smelly fruit^^\n^d\"It still smells, and it's sticky\n^dtoo. It needs more cooking.\"^^"
                        .balign 4

glabel D_8012D1C0
/* 0226D0 8012D1C0  */  .asciz  "roasted fruit"
                        .balign 4

glabel D_8012D1D0
/* 0226E0 8012D1D0  */  .asciz  "roasted fruit"
                        .balign 4

glabel D_8012D1E0
/* 0226F0 8012D1E0  */  .asciz  "Cooked ^4sticky fruit^^\n^d\"It still smells bad, but it\n^dtastes great. How strange.\"^^"
                        .balign 4

glabel D_8012D238
/* 022748 8012D238  */  .asciz  "walnut"
                        .balign 4

glabel D_8012D240
/* 022750 8012D240  */  .asciz  "walnut"
                        .balign 4

glabel D_8012D248
/* 022758 8012D248  */  .asciz  "A hard-shelled nut\n^d\"^4Throw it^d to crack its shell.\"^^\n"
                        .balign 4

glabel D_8012D284
/* 022794 8012D284  */  .asciz  "walnut"
                        .balign 4

glabel D_8012D28C
/* 02279C 8012D28C  */  .asciz  "cracked walnut"
                        .balign 4

glabel D_8012D29C
/* 0227AC 8012D29C  */  .asciz  "A nutritious nut\n^d\"It's tasty, and it's\n^doften added to sweets.\"^^"
                        .balign 4

glabel D_8012D2E4
/* 0227F4 8012D2E4  */  .asciz  "spiky shell"
                        .balign 4

glabel D_8012D2F0
/* 022800 8012D2F0  */  .asciz  "spiky shell"
                        .balign 4

glabel D_8012D2FC
/* 02280C 8012D2FC  */  .asciz  "The ^4spiky shell^^ of a nut\n^d\"Some people eat these after\n^dremoving the shell.\"^^"
                        .balign 4

glabel D_8012D354
/* 022864 8012D354  */  .asciz  "spiny shell"
                        .balign 4

glabel D_8012D360
/* 022870 8012D360  */  .asciz  "spiny shell"
                        .balign 4

glabel D_8012D36C
/* 02287C 8012D36C  */  .asciz  "A strange, ^4spiny shell^^\n^d\"For some reason, these are\n^dscattered along the beach.\"^^"
                        .balign 4

glabel D_8012D3C8
/* 0228D8 8012D3C8  */  .asciz  "chestnut"
                        .balign 4

glabel D_8012D3D4
/* 0228E4 8012D3D4  */  .asciz  "chestnut"
                        .balign 4

glabel D_8012D3E0
/* 0228F0 8012D3E0  */  .asciz  "A tasty, sweet nut\n^d\"Mix this with ^4roasted fruit^^\n^dfor a really tasty treat.\"^^"
                        .balign 4

glabel D_8012D438
/* 022948 8012D438  */  .asciz  "chestnut"
                        .balign 4

glabel D_8012D444
/* 022954 8012D444  */  .asciz  "beach nut"
                        .balign 4

glabel D_8012D450
/* 022960 8012D450  */  .asciz  "A nut found on the beach\n^d\"A ^4beach nut^d?\n^dIs that right?\"^^"
                        .balign 4

glabel D_8012D494
/* 0229A4 8012D494  */  .asciz  "coconut"
                        .balign 4

glabel D_8012D49C
/* 0229AC 8012D49C  */  .asciz  "coconut"
                        .balign 4

glabel D_8012D4A4
/* 0229B4 8012D4A4  */  .asciz  "A large, hard-shelled fruit\n^d\"When I think of the tropics,\n^dI think ^4coconut^ds.\"^^"
                        .balign 4

glabel D_8012D4FC
/* 022A0C 8012D4FC  */  .asciz  "acorn"
                        .balign 4

glabel D_8012D504
/* 022A14 8012D504  */  .asciz  "acorn"
                        .balign 4

glabel D_8012D50C
/* 022A1C 8012D50C  */  .asciz  "The nut of an oak tree\n^d\"This looks like just a\n^dplain old ^4acorn^d.\"^^"
                        .balign 4

glabel D_8012D558
/* 022A68 8012D558  */  .asciz  "acorn"
                        .balign 4

glabel D_8012D560
/* 022A70 8012D560  */  .asciz  "acorn"
                        .balign 4

glabel D_8012D568
/* 022A78 8012D568  */  .asciz  "The nut of an oak tree\n^d\"It will taste good after\n^dbaking it with ^4Thunderbolt^d.\"^^"
                        .balign 4

glabel D_8012D5C0
/* 022AD0 8012D5C0  */  .asciz  "acorn"
                        .balign 4

glabel D_8012D5C8
/* 022AD8 8012D5C8  */  .asciz  "acorn"
                        .balign 4

glabel D_8012D5D0
/* 022AE0 8012D5D0  */  .asciz  "The nut of an oak tree\n^d\"It has sleeping powder on it.\n^dTell ^6PIKACHU^d to ^4drop it^d.\"^^"
                        .balign 4

glabel D_8012D630
/* 022B40 8012D630  */  .asciz  "acorn"
                        .balign 4

glabel D_8012D638
/* 022B48 8012D638  */  .asciz  "acorn"
                        .balign 4

glabel D_8012D640
/* 022B50 8012D640  */  .asciz  "The nut of an oak tree\n^d\"It will taste good after\n^dcooking it with ^4Thundershock^d.\"^^"
                        .balign 4

glabel D_8012D69C
/* 022BAC 8012D69C  */  .asciz  "acorn"
                        .balign 4

glabel D_8012D6A4
/* 022BB4 8012D6A4  */  .asciz  "toasted acorn"
                        .balign 4

glabel D_8012D6B4
/* 022BC4 8012D6B4  */  .asciz  "A cooked ^4acorn^^\n^d\"It smells bad but tastes\n^dgreat. Use it to make treats.\"^^"
                        .balign 4

glabel D_8012D708
/* 022C18 8012D708  */  .asciz  "flying acorn"
                        .balign 4

glabel D_8012D718
/* 022C28 8012D718  */  .asciz  "flying acorn"
                        .balign 4

glabel D_8012D728
/* 022C38 8012D728  */  .asciz  "An ^4acorn^^ with wings on it\n^d\"This flies very well. ^4Throw it\n^dat things hanging in trees.\"^^"
                        .balign 4

glabel D_8012D78C
/* 022C9C 8012D78C  */  .asciz  "acorn top"
                        .balign 4

glabel D_8012D798
/* 022CA8 8012D798  */  .asciz  "acorn top"
                        .balign 4

glabel D_8012D7A4
/* 022CB4 8012D7A4  */  .asciz  "A striped ^4acorn^^\n^d\"This ^4acorn^d spins just like\n^da top.\"^^"
                        .balign 4

glabel D_8012D7E8
/* 022CF8 8012D7E8  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012D7F4
/* 022D04 8012D7F4  */  .asciz  "jumbo'shroom"
                        .balign 4

glabel D_8012D804
/* 022D14 8012D804  */  .asciz  "An ^4acorn^^-like ^4mushroom^^\n^d\"It's delicious when cooked\n^dusing ^4Thunderbolt^d.\"^^"
                        .balign 4

glabel D_8012D860
/* 022D70 8012D860  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012D86C
/* 022D7C 8012D86C  */  .asciz  "roasted jumbo"
                        .balign 4

glabel D_8012D87C
/* 022D8C 8012D87C  */  .asciz  "A cooked ^4jumbo'shroom^^\n^d\"^6PIKACHU^d should like this\n^ddelicious cooked ^4mushroom^d.\"^^"
                        .balign 4

glabel D_8012D8DC
/* 022DEC 8012D8DC  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012D8E8
/* 022DF8 8012D8E8  */  .asciz  "dreamy'shroom"
                        .balign 4

glabel D_8012D8F8
/* 022E08 8012D8F8  */  .asciz  "A light, airy ^4mushroom^^\n^d\"It's filled with sleeping gas.\n^dI wonder... ^4How's it smell^d?\"^^"
                        .balign 4

glabel D_8012D95C
/* 022E6C 8012D95C  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012D968
/* 022E78 8012D968  */  .asciz  "truffle top"
                        .balign 4

glabel D_8012D974
/* 022E84 8012D974  */  .asciz  "A small, hard ^4mushroom^^\n^d\"This spins just like a top.\n^4Throw it^d to make it spin.\"^^"
                        .balign 4

glabel D_8012D9D0
/* 022EE0 8012D9D0  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012D9DC
/* 022EEC 8012D9DC  */  .asciz  "blue'shroom"
                        .balign 4

glabel D_8012D9E8
/* 022EF8 8012D9E8  */  .asciz  "A blue-capped ^4mushroom^^\n^d\"This doesn't taste very good.\n^dCook to improve its flavor.\"^^"
                        .balign 4

glabel D_8012DA48
/* 022F58 8012DA48  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012DA54
/* 022F64 8012DA54  */  .asciz  "hot'shroom"
                        .balign 4

glabel D_8012DA60
/* 022F70 8012DA60  */  .asciz  "A cooked ^4mushroom^^\n^d\"This tastes great when mixed\n^dwith other ingredients.\"^^"
                        .balign 4

glabel D_8012DAB4
/* 022FC4 8012DAB4  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012DAC0
/* 022FD0 8012DAC0  */  .asciz  "red'shroom"
                        .balign 4

glabel D_8012DACC
/* 022FDC 8012DACC  */  .asciz  "A red-capped ^4mushroom^^\n^d\"This strange ^4mushroom^d\n^dexplodes if you try to ^4eat it^d.\"^^"
                        .balign 4

glabel D_8012DB2C
/* 02303C 8012DB2C  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012DB38
/* 023048 8012DB38  */  .asciz  "sunny'shroom"
                        .balign 4

glabel D_8012DB48
/* 023058 8012DB48  */  .asciz  "A yellow-capped ^4mushroom^^\n^d\"It's yellow, like the sun.\n^6PIKACHU^d seems to like it.\"^^"
                        .balign 4

glabel D_8012DBA4
/* 0230B4 8012DBA4  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012DBB0
/* 0230C0 8012DBB0  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012DBBC
/* 0230CC 8012DBBC  */  .asciz  "A plain, white ^4mushroom^^\n^d\"This is just a plain old\n^4mushroom^d.\"^^"
                        .balign 4

glabel D_8012DC08
/* 023118 8012DC08  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012DC14
/* 023124 8012DC14  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012DC20
/* 023130 8012DC20  */  .asciz  "A plain, white ^4mushroom^^\n^d\"This ^4mushroom^d smells.\"^^\n"
                        .balign 4

glabel D_8012DC60
/* 023170 8012DC60  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012DC6C
/* 02317C 8012DC6C  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012DC78
/* 023188 8012DC78  */  .asciz  "A plain white ^4mushroom^^\n^d\"This ^4mushroom^d tends to\n^drelease spores.\"^^"
                        .balign 4

glabel D_8012DCC8
/* 0231D8 8012DCC8  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012DCD4
/* 0231E4 8012DCD4  */  .asciz  "hot mushroom"
                        .balign 4

glabel D_8012DCE4
/* 0231F4 8012DCE4  */  .asciz  "A cooked ^4mushroom^^\n^d\"This ^4mushroom^d has a\n^ddelicious rich scent.\"^^"
                        .balign 4

glabel D_8012DD30
/* 023240 8012DD30  */  .asciz  "light bulb"
                        .balign 4

glabel D_8012DD3C
/* 02324C 8012DD3C  */  .asciz  "light bulb"
                        .balign 4

glabel D_8012DD48
/* 023258 8012DD48  */  .asciz  "A strange, electric ^4mushroom^^\n^d\"It lights up when ^6PIKACHU^d\n^dholds it. Illuminating!\"^^"
                        .balign 4

glabel D_8012DDA8
/* 0232B8 8012DDA8  */  .asciz  "cupcake"
                        .balign 4

glabel D_8012DDB0
/* 0232C0 8012DDB0  */  .asciz  "cupcake"
                        .balign 4

glabel D_8012DDB8
/* 0232C8 8012DDB8  */  .asciz  "Mom's homemade treat\n^d\"Your mom made this snack\n^dfor you. It looks delicious.\"^^"
                        .balign 4

glabel D_8012DE0C
/* 02331C 8012DE0C  */  .asciz  "flower"
                        .balign 4

glabel D_8012DE14
/* 023324 8012DE14  */  .asciz  "daisy"
                        .balign 4

glabel D_8012DE1C
/* 02332C 8012DE1C  */  .asciz  "A small, white ^4flower^^\n^d\"It doesn't stand out much,\n^dbut it's a cute flower.\"^^"
                        .balign 4

glabel D_8012DE74
/* 023384 8012DE74  */  .asciz  "flower"
                        .balign 4

glabel D_8012DE7C
/* 02338C 8012DE7C  */  .asciz  "petunia"
                        .balign 4

glabel D_8012DE84
/* 023394 8012DE84  */  .asciz  "A white ^4flower^^\n^d\"What an elegant looking\n^4flower^d.\"^^"
                        .balign 4

glabel D_8012DEC4
/* 0233D4 8012DEC4  */  .asciz  "flower"
                        .balign 4

glabel D_8012DECC
/* 0233DC 8012DECC  */  .asciz  "tulip"
                        .balign 4

glabel D_8012DED4
/* 0233E4 8012DED4  */  .asciz  "A ^4flower^^ grown from a bulb\n^d\"This is a very lovely ^4flower^d.\"^^\n"
                        .balign 4

glabel D_8012DF1C
/* 02342C 8012DF1C  */  .asciz  "flower"
                        .balign 4

glabel D_8012DF24
/* 023434 8012DF24  */  .asciz  "dandelion"
                        .balign 4

glabel D_8012DF30
/* 023440 8012DF30  */  .asciz  "A yellow spring blossom\n^d\"^6PIKACHU^d loves this, since\n^dit's yellow.\"^^"
                        .balign 4

glabel D_8012DF7C
/* 02348C 8012DF7C  */  .asciz  "flower"
                        .balign 4

glabel D_8012DF84
/* 023494 8012DF84  */  .asciz  "bluebell"
                        .balign 4

glabel D_8012DF90
/* 0234A0 8012DF90  */  .asciz  "A bright blue ^4flower^^\n^d\"This is a popular ^4flower^d\n^dfor the garden.\"^^"
                        .balign 4

glabel D_8012DFE0
/* 0234F0 8012DFE0  */  .asciz  "flower"
                        .balign 4

glabel D_8012DFE8
/* 0234F8 8012DFE8  */  .asciz  "skunk blossom"
                        .balign 4

glabel D_8012DFF8
/* 023508 8012DFF8  */  .asciz  "A plant with smelly leaves\n^d\"It smells bad, but you can\n^dactually ^4eat it^d.\"^^"
                        .balign 4

glabel D_8012E04C
/* 02355C 8012E04C  */  .asciz  "flower"
                        .balign 4

glabel D_8012E054
/* 023564 8012E054  */  .asciz  "sunflower"
                        .balign 4

glabel D_8012E060
/* 023570 8012E060  */  .asciz  "A large, yellow summer ^4flower^^\n^d\"It's the same color of\n^dyellow as ^6PIKACHU^d.\"^^"
                        .balign 4

glabel D_8012E0B8
/* 0235C8 8012E0B8  */  .asciz  "flower"
                        .balign 4

glabel D_8012E0C0
/* 0235D0 8012E0C0  */  .asciz  "lily"
                        .balign 4

glabel D_8012E0C8
/* 0235D8 8012E0C8  */  .asciz  "A large, white ^4flower^^\n^d\"I think this one smells nice,\n^dbut I am not quite sure.\"^^"
                        .balign 4

glabel D_8012E124
/* 023634 8012E124  */  .asciz  "flower"
                        .balign 4

glabel D_8012E12C
/* 02363C 8012E12C  */  .asciz  "rosebud"
                        .balign 4

glabel D_8012E134
/* 023644 8012E134  */  .asciz  "A large red ^4flower^^ from a bush\n^d\"Feed it to a hungry\n^4CATERPIE^d.\"^^"
                        .balign 4

glabel D_8012E180
/* 023690 8012E180  */  .asciz  "flower"
                        .balign 4

glabel D_8012E188
/* 023698 8012E188  */  .asciz  "red rose"
                        .balign 4

glabel D_8012E194
/* 0236A4 8012E194  */  .asciz  "A large red ^4flower^^ from a bush\n^d\"Feed the ^4flower^ds to\n^4CATERPIE^d.\"^^"
                        .balign 4

glabel D_8012E1E4
/* 0236F4 8012E1E4  */  .asciz  "balloon"
                        .balign 4

glabel D_8012E1EC
/* 0236FC 8012E1EC  */  .asciz  "balloon"
                        .balign 4

glabel D_8012E1F4
/* 023704 8012E1F4  */  .asciz  "A blue ^4balloon^^\n^d\"This strange ^4balloon^d inflates\n^dwhenever ^6PIKACHU^d holds it.\"^^"
                        .balign 4

glabel D_8012E250
/* 023760 8012E250  */  .asciz  "balloon"
                        .balign 4

glabel D_8012E258
/* 023768 8012E258  */  .asciz  "balloon"
                        .balign 4

glabel D_8012E260
/* 023770 8012E260  */  .asciz  "A green ^4balloon^^\n^d\"This strange ^4balloon^d inflates\n^dwhenever ^6PIKACHU^d holds it.\"^^"
                        .balign 4

glabel D_8012E2C0
/* 0237D0 8012E2C0  */  .asciz  "balloon"
                        .balign 4

glabel D_8012E2C8
/* 0237D8 8012E2C8  */  .asciz  "balloon"
                        .balign 4

glabel D_8012E2D0
/* 0237E0 8012E2D0  */  .asciz  "A purple ^4balloon^^\n^d\"This strange ^4balloon^d inflates\n^dwhenever ^6PIKACHU^d holds it.\"^^"
                        .balign 4

glabel D_8012E330
/* 023840 8012E330  */  .asciz  "balloon"
                        .balign 4

glabel D_8012E338
/* 023848 8012E338  */  .asciz  "balloon"
                        .balign 4

glabel D_8012E340
/* 023850 8012E340  */  .asciz  "A red ^4balloon^^\n^d\"This strange ^4balloon^d inflates\n^dwhenever ^6PIKACHU^d holds it.\"^^"
                        .balign 4

glabel D_8012E39C
/* 0238AC 8012E39C  */  .asciz  "balloon"
                        .balign 4

glabel D_8012E3A4
/* 0238B4 8012E3A4  */  .asciz  "balloon"
                        .balign 4

glabel D_8012E3AC
/* 0238BC 8012E3AC  */  .asciz  "A yellow ^4balloon^^\n^d\"This strange ^4balloon^d inflates\n^dwhenever ^6PIKACHU^d holds it.\"^^"
                        .balign 4

glabel D_8012E40C
/* 02391C 8012E40C  */  .asciz  "Pok´disc"
                        .balign 4

glabel D_8012E418
/* 023928 8012E418  */  .asciz  "Pok´disc"
                        .balign 4

glabel D_8012E424
/* 023934 8012E424  */  .asciz  "A disc that's fun to throw\n^d\"It spins and spins as it\n^dflies through the air.\"^^"
                        .balign 4

glabel D_8012E478
/* 023988 8012E478  */  .asciz  "beach ball"
                        .balign 4

glabel D_8012E484
/* 023994 8012E484  */  .asciz  "beach ball"
                        .balign 4

glabel D_8012E490
/* 0239A0 8012E490  */  .asciz  "A colorful, bouncy ball\n^d\"It's fun to ^4throw it^d around.\n^dTry playing catch with it!\"^^"
                        .balign 4

glabel D_8012E4EC
/* 0239FC 8012E4EC  */  .asciz  "watering can"
                        .balign 4

glabel D_8012E4FC
/* 023A0C 8012E4FC  */  .asciz  "watering can"
                        .balign 4

glabel D_8012E50C
/* 023A1C 8012E50C  */  .asciz  "A can for watering plants\n^d\"Give this to ^6PIKACHU^d right\n^daway whenever it wants it.\"^^"
                        .balign 4

glabel D_8012E568
/* 023A78 8012E568  */  .asciz  "watering can"
                        .balign 4

glabel D_8012E578
/* 023A88 8012E578  */  .asciz  "watering jug"
                        .balign 4

glabel D_8012E588
/* 023A98 8012E588  */  .asciz  "A jug that holds a lot of water\n^d\"With this, your water should\n^dlast you longer.\"^^"
                        .balign 4

glabel D_8012E5E0
/* 023AF0 8012E5E0  */  .asciz  "yellow ball"
                        .balign 4

glabel D_8012E5EC
/* 023AFC 8012E5EC  */  .asciz  "yellow ball"
                        .balign 4

glabel D_8012E5F8
/* 023B08 8012E5F8  */  .asciz  "A yellow ball of unknown origin\n^d\"What on earth is this?\"^^\n"
                        .balign 4

glabel D_8012E638
/* 023B48 8012E638  */  .asciz  "charcoal"
                        .balign 4

glabel D_8012E644
/* 023B54 8012E644  */  .asciz  "charcoal"
                        .balign 4

glabel D_8012E650
/* 023B60 8012E650  */  .asciz  "Burnt ashes\n^d\"It's the burnt remains of\n^dsome item. It's just garbage.\"^^"
                        .balign 4

glabel D_8012E69C
/* 023BAC 8012E69C  */  .asciz  "leaf"
                        .balign 4

glabel D_8012E6A4
/* 023BB4 8012E6A4  */  .asciz  "leaf"
                        .balign 4

glabel D_8012E6AC
/* 023BBC 8012E6AC  */  .asciz  "A fallen, wilted leaf\n^d\"It's just a plain, wilted leaf.\"^^\n"
                        .balign 4

glabel D_8012E6EC
/* 023BFC 8012E6EC  */  .asciz  "leaf"
                        .balign 4

glabel D_8012E6F4
/* 023C04 8012E6F4  */  .asciz  "leaf whistle"
                        .balign 4

glabel D_8012E704
/* 023C14 8012E704  */  .asciz  "A whistle made from a ^4leaf^^\n^d\"I wonder how you ^4play it^d.\"^^\n"
                        .balign 4

glabel D_8012E748
/* 023C58 8012E748  */  .asciz  "harmonica"
                        .balign 4

glabel D_8012E754
/* 023C64 8012E754  */  .asciz  "harmonica"
                        .balign 4

glabel D_8012E760
/* 023C70 8012E760  */  .asciz  "A musical instrument\n^d\"I wonder if ^6PIKACHU^d can\n^4play it^d for you.\"^^"
                        .balign 4

glabel D_8012E7AC
/* 023CBC 8012E7AC  */  .asciz  "trumpet"
                        .balign 4

glabel D_8012E7B4
/* 023CC4 8012E7B4  */  .asciz  "trumpet"
                        .balign 4

glabel D_8012E7BC
/* 023CCC 8012E7BC  */  .asciz  "A loud, brass instrument\n^d\"This makes a pretty loud\n^dnoise.\"^^"
                        .balign 4

glabel D_8012E800
/* 023D10 8012E800  */  .asciz  "tissue"
                        .balign 4

glabel D_8012E808
/* 023D18 8012E808  */  .asciz  "tissue"
                        .balign 4

glabel D_8012E810
/* 023D20 8012E810  */  .asciz  "Thin, light paper\n^d\"Be sure to ^4clean it up^d after\n^dscattering it about.\"^^"
                        .balign 4

glabel D_8012E860
/* 023D70 8012E860  */  .asciz  "banana peel"
                        .balign 4

glabel D_8012E86C
/* 023D7C 8012E86C  */  .asciz  "banana peel"
                        .balign 4

glabel D_8012E878
/* 023D88 8012E878  */  .asciz  "The skin of a ^4banana^^\n^d\"^6PIKACHU^d can slip on this, so\n^dbe careful where you leave it.\"^^"
                        .balign 4

glabel D_8012E8DC
/* 023DEC 8012E8DC  */  .asciz  "pi￣ata"
                        .balign 4

glabel D_8012E8E4
/* 023DF4 8012E8E4  */  .asciz  "pi￣ata"
                        .balign 4

glabel D_8012E8EC
/* 023DFC 8012E8EC  */  .asciz  "A decorated container\n^d\"If you break it, ^6PIKACHU^d\n^dfinds ^4treasure^d inside.\"^^"
                        .balign 4

glabel D_8012E944
/* 023E54 8012E944  */  .asciz  "pi￣ata"
                        .balign 4

glabel D_8012E94C
/* 023E5C 8012E94C  */  .asciz  "cracked pi￣ata"
                        .balign 4

glabel D_8012E95C
/* 023E6C 8012E95C  */  .asciz  "A ^4pi￣ata^^ that's been broken\n^d\"It looks like a lot of stuff\n^dcame out. Did you get any?\"^^"
                        .balign 4

glabel D_8012E9C0
/* 023ED0 8012E9C0  */  .asciz  "cap"
                        .balign 4

glabel D_8012E9C4
/* 023ED4 8012E9C4  */  .asciz  "baseball cap"
                        .balign 4

glabel D_8012E9D4
/* 023EE4 8012E9D4  */  .asciz  "A replica of a trainer's cap\n^d\"This is the trademark of a\n^dtrainer. It's pretty stylish.\"^^"
                        .balign 4

glabel D_8012EA34
/* 023F44 8012EA34  */  .asciz  "megaphone"
                        .balign 4

glabel D_8012EA40
/* 023F50 8012EA40  */  .asciz  "megaphone"
                        .balign 4

glabel D_8012EA4C
/* 023F5C 8012EA4C  */  .asciz  "The very first Pok´Helper\n^d\"I used this to talk to Pok´mon\n^dbefore I had the Pok´Helper.\"^^"
                        .balign 4

glabel D_8012EAB0
/* 023FC0 8012EAB0  */  .asciz  "hook"
                        .balign 4

glabel D_8012EAB8
/* 023FC8 8012EAB8  */  .asciz  "fishing hook"
                        .balign 4

glabel D_8012EAC8
/* 023FD8 8012EAC8  */  .asciz  "An item for catching Pok´mon\n^d\"This is a safety hook that\n^dwon't hurt Pok´mon.\"^^"
                        .balign 4

glabel D_8012EB20
/* 024030 8012EB20  */  .asciz  "hook"
                        .balign 4

glabel D_8012EB28
/* 024038 8012EB28  */  .asciz  "lucky hook"
                        .balign 4

glabel D_8012EB34
/* 024044 8012EB34  */  .asciz  "A better fishing hook\n^d\"You can catch a wider variety\n^dof Pok´mon with this hook.\"^^"
                        .balign 4

glabel D_8012EB8C
/* 02409C 8012EB8C  */  .asciz  "flag"
                        .balign 4

glabel D_8012EB94
/* 0240A4 8012EB94  */  .asciz  "fishing flag"
                        .balign 4

glabel D_8012EBA4
/* 0240B4 8012EBA4  */  .asciz  "A prize for catching Pok´mon\n^d\"That's from\n^dCobalt Fishing Hole.\"^^"
                        .balign 4

glabel D_8012EBEC
/* 0240FC 8012EBEC  */  .asciz  "flag"
                        .balign 4

glabel D_8012EBF4
/* 024104 8012EBF4  */  .asciz  "fishing flag"
                        .balign 4

glabel D_8012EC04
/* 024114 8012EC04  */  .asciz  "A prize for catching Pok´mon\n^d\"That's from\n^dOchre Fishing Hole.\"^^"
                        .balign 4

glabel D_8012EC4C
/* 02415C 8012EC4C  */  .asciz  "flag"
                        .balign 4

glabel D_8012EC54
/* 024164 8012EC54  */  .asciz  "fishing flag"
                        .balign 4

glabel D_8012EC64
/* 024174 8012EC64  */  .asciz  "A prize for catching Pok´mon\n^d\"That's from\n^dOlivine Fishing Hole.\"^^"
                        .balign 4

glabel D_8012ECAC
/* 0241BC 8012ECAC  */  .asciz  "flag"
                        .balign 4

glabel D_8012ECB4
/* 0241C4 8012ECB4  */  .asciz  "pirate flag"
                        .balign 4

glabel D_8012ECC0
/* 0241D0 8012ECC0  */  .asciz  "Symbol of a pirate ship\n^d\"That's a prize from the\n^4pi￣ata^d party.\"^^"
                        .balign 4

glabel D_8012ED0C
/* 02421C 8012ED0C  */  .asciz  "coin"
                        .balign 4

glabel D_8012ED14
/* 024224 8012ED14  */  .asciz  "gold coin"
                        .balign 4

glabel D_8012ED20
/* 024230 8012ED20  */  .asciz  "A coin made of gold\n^d\"Look at it glitter. It's\n^dbeautiful. I want one too!\"^^"
                        .balign 4

glabel D_8012ED70
/* 024280 8012ED70  */  .asciz  "coin"
                        .balign 4

glabel D_8012ED78
/* 024288 8012ED78  */  .asciz  "chocolate coin"
                        .balign 4

glabel D_8012ED88
/* 024298 8012ED88  */  .asciz  "A coin made of chocolate\n^d\"Don't mistake it for a\n^4gold coin^d!\"^^"
                        .balign 4

glabel D_8012EDD0
/* 0242E0 8012EDD0  */  .asciz  "coin"
                        .balign 4

glabel D_8012EDD8
/* 0242E8 8012EDD8  */  .asciz  "silver coin"
                        .balign 4

glabel D_8012EDE4
/* 0242F4 8012EDE4  */  .asciz  "A coin made of silver\n^d\"It's worth about @Y@Z100.\"^^\n"
                        .balign 4

glabel D_8012EE1C
/* 02432C 8012EE1C  */  .asciz  "coin"
                        .balign 4

glabel D_8012EE24
/* 024334 8012EE24  */  .asciz  "copper coin"
                        .balign 4

glabel D_8012EE30
/* 024340 8012EE30  */  .asciz  "A coin made of copper\n^d\"It's worth about @Y@Z10.\"^^\n"
                        .balign 4

glabel D_8012EE68
/* 024378 8012EE68  */  .asciz  "jewel"
                        .balign 4

glabel D_8012EE70
/* 024380 8012EE70  */  .asciz  "ruby"
                        .balign 4

glabel D_8012EE78
/* 024388 8012EE78  */  .asciz  "A hard red gem\n^d\"You can see through it.\n^dIsn't it beautiful?\"^^"
                        .balign 4

glabel D_8012EEBC
/* 0243CC 8012EEBC  */  .asciz  "jewel"
                        .balign 4

glabel D_8012EEC4
/* 0243D4 8012EEC4  */  .asciz  "sapphire"
                        .balign 4

glabel D_8012EED0
/* 0243E0 8012EED0  */  .asciz  "A hard, clear blue gem\n^d\"That's an amazing color\n^dof blue.\"^^"
                        .balign 4

glabel D_8012EF10
/* 024420 8012EF10  */  .asciz  "jewel"
                        .balign 4

glabel D_8012EF18
/* 024428 8012EF18  */  .asciz  "topaz"
                        .balign 4

glabel D_8012EF20
/* 024430 8012EF20  */  .asciz  "A delicate yellow gem\n^d\"It's a very valuable gem\n^dthat's really hard to come by.\"^^"
                        .balign 4

glabel D_8012EF78
/* 024488 8012EF78  */  .asciz  "jewel"
                        .balign 4

glabel D_8012EF80
/* 024490 8012EF80  */  .asciz  "red marble"
                        .balign 4

glabel D_8012EF8C
/* 02449C 8012EF8C  */  .asciz  "A red ball of glass\n^d\"I used to play with ^4marble^ds,\n^dtoo, when I was a kid.\"^^"
                        .balign 4

glabel D_8012EFE0
/* 0244F0 8012EFE0  */  .asciz  "jewel"
                        .balign 4

glabel D_8012EFE8
/* 0244F8 8012EFE8  */  .asciz  "blue marble"
                        .balign 4

glabel D_8012EFF4
/* 024504 8012EFF4  */  .asciz  "A blue ball of glass\n^d\"I used to play with ^4marble^ds,\n^dtoo, when I was a kid.\"^^"
                        .balign 4

glabel D_8012F04C
/* 02455C 8012F04C  */  .asciz  "jewel"
                        .balign 4

glabel D_8012F054
/* 024564 8012F054  */  .asciz  "yellow marble"
                        .balign 4

glabel D_8012F064
/* 024574 8012F064  */  .asciz  "A yellow ball of glass\n^d\"I used to play with ^4marble^ds,\n^dtoo, when I was a kid.\"^^"
                        .balign 4

glabel D_8012F0BC
/* 0245CC 8012F0BC  */  .asciz  "ring"
                        .balign 4

glabel D_8012F0C4
/* 0245D4 8012F0C4  */  .asciz  "ruby ring"
                        .balign 4

glabel D_8012F0D0
/* 0245E0 8012F0D0  */  .asciz  "A ring with a gem on it\n^d\"A symbol of a couple's\n^deverlasting love.\"^^"
                        .balign 4

glabel D_8012F11C
/* 02462C 8012F11C  */  .asciz  "ring"
                        .balign 4

glabel D_8012F124
/* 024634 8012F124  */  .asciz  "bottle cap ring"
                        .balign 4

glabel D_8012F134
/* 024644 8012F134  */  .asciz  "The seal from a plastic bottle\n^d\"Don't litter.\"^^\n"
                        .balign 4

glabel D_8012F168
/* 024678 8012F168  */  .asciz  "sword"
                        .balign 4

glabel D_8012F170
/* 024680 8012F170  */  .asciz  "pirate sword"
                        .balign 4

glabel D_8012F180
/* 024690 8012F180  */  .asciz  "A sword once used by pirates\n^d\"That's from the pirates'\n^dplunder on Cobalt Island.\"^^"
                        .balign 4

glabel D_8012F1D8
/* 0246E8 8012F1D8  */  .asciz  "sword"
                        .balign 4

glabel D_8012F1E0
/* 0246F0 8012F1E0  */  .asciz  "toy sword"
                        .balign 4

glabel D_8012F1EC
/* 0246FC 8012F1EC  */  .asciz  "A ^4toy sword^^ made of wood\n^d\"En garde! I used to play with\n^d^4toy sword^ds when I was little.\"^^"
                        .balign 4

glabel D_8012F254
/* 024764 8012F254  */  .asciz  "feather"
                        .balign 4

glabel D_8012F25C
/* 02476C 8012F25C  */  .asciz  "bird feather"
                        .balign 4

glabel D_8012F26C
/* 02477C 8012F26C  */  .asciz  "A feather from a Pok´mon\n^d\"This light feather should fly\n^dpretty well.\"^^"
                        .balign 4

glabel D_8012F2BC
/* 0247CC 8012F2BC  */  .asciz  "bolt"
                        .balign 4

glabel D_8012F2C4
/* 0247D4 8012F2C4  */  .asciz  "bolt"
                        .balign 4

glabel D_8012F2CC
/* 0247DC 8012F2CC  */  .asciz  "An item used to fasten things\n^d\"That's just junk.\"^^\n"
                        .balign 4

glabel D_8012F304
/* 024814 8012F304  */  .asciz  "magnet"
                        .balign 4

glabel D_8012F30C
/* 02481C 8012F30C  */  .asciz  "magnet"
                        .balign 4

glabel D_8012F314
/* 024824 8012F314  */  .asciz  "A magnetic piece of metal\n^d\"It's a pretty cool shape, but\n^dit's just junk.\"^^"
                        .balign 4

glabel D_8012F364
/* 024874 8012F364  */  .asciz  "marble"
                        .balign 4

glabel D_8012F36C
/* 02487C 8012F36C  */  .asciz  "marble"
                        .balign 4

glabel D_8012F374
/* 024884 8012F374  */  .asciz  "A ball made of glass\n^d\"I used to play with ^4marble^ds,\n^dtoo, when I was a kid.\"^^"
                        .balign 4

glabel D_8012F3CC
/* 0248DC 8012F3CC  */  .asciz  "stew"
                        .balign 4

glabel D_8012F3D4
/* 0248E4 8012F3D4  */  .asciz  "stew"
                        .balign 4

glabel D_8012F3DC
/* 0248EC 8012F3DC  */  .asciz  "Tasty stew\n"
                        .balign 4

glabel D_8012F3E8
/* 0248F8 8012F3E8  */  .asciz  "stew"
                        .balign 4

glabel D_8012F3F0
/* 024900 8012F3F0  */  .asciz  "stew"
                        .balign 4

glabel D_8012F3F8
/* 024908 8012F3F8  */  .asciz  "A typical plate of stew\n"
                        .balign 4

glabel D_8012F414
/* 024924 8012F414  */  .asciz  "stew"
                        .balign 4

glabel D_8012F41C
/* 02492C 8012F41C  */  .asciz  "weird stew"
                        .balign 4

glabel D_8012F428
/* 024938 8012F428  */  .asciz  "Weird tasting stew\n"
                        .balign 4

glabel D_8012F43C
/* 02494C 8012F43C  */  .asciz  "stir-fry"
                        .balign 4

glabel D_8012F448
/* 024958 8012F448  */  .asciz  "stir-fry"
                        .balign 4

glabel D_8012F454
/* 024964 8012F454  */  .asciz  "Tasty fried vegetables\n"
                        .balign 4

glabel D_8012F46C
/* 02497C 8012F46C  */  .asciz  "stir-fry"
                        .balign 4

glabel D_8012F478
/* 024988 8012F478  */  .asciz  "stir-fry"
                        .balign 4

glabel D_8012F484
/* 024994 8012F484  */  .asciz  "A typical plate of stir-fry\n"
                        .balign 4

glabel D_8012F4A4
/* 0249B4 8012F4A4  */  .asciz  "stir-fry"
                        .balign 4

glabel D_8012F4B0
/* 0249C0 8012F4B0  */  .asciz  "weird stir-fry"
                        .balign 4

glabel D_8012F4C0
/* 0249D0 8012F4C0  */  .asciz  "Weird tasting stir-fry\n"
                        .balign 4

glabel D_8012F4D8
/* 0249E8 8012F4D8  */  .asciz  "soup"
                        .balign 4

glabel D_8012F4E0
/* 0249F0 8012F4E0  */  .asciz  "soup"
                        .balign 4

glabel D_8012F4E8
/* 0249F8 8012F4E8  */  .asciz  "Tasty soup\n"
                        .balign 4

glabel D_8012F4F4
/* 024A04 8012F4F4  */  .asciz  "soup"
                        .balign 4

glabel D_8012F4FC
/* 024A0C 8012F4FC  */  .asciz  "soup"
                        .balign 4

glabel D_8012F504
/* 024A14 8012F504  */  .asciz  "A typical bowl of soup\n"
                        .balign 4

glabel D_8012F51C
/* 024A2C 8012F51C  */  .asciz  "soup"
                        .balign 4

glabel D_8012F524
/* 024A34 8012F524  */  .asciz  "weird soup"
                        .balign 4

glabel D_8012F530
/* 024A40 8012F530  */  .asciz  "Weird tasting soup\n"
                        .balign 4

glabel D_8012F544
/* 024A54 8012F544  */  .asciz  "goulash"
                        .balign 4

glabel D_8012F54C
/* 024A5C 8012F54C  */  .asciz  "goulash"
                        .balign 4

glabel D_8012F554
/* 024A64 8012F554  */  .asciz  "Tasty goulash\n"
                        .balign 4

glabel D_8012F564
/* 024A74 8012F564  */  .asciz  "goulash"
                        .balign 4

glabel D_8012F56C
/* 024A7C 8012F56C  */  .asciz  "goulash"
                        .balign 4

glabel D_8012F574
/* 024A84 8012F574  */  .asciz  "Average tasting goulash\n"
                        .balign 4

glabel D_8012F590
/* 024AA0 8012F590  */  .asciz  "goulash"
                        .balign 4

glabel D_8012F598
/* 024AA8 8012F598  */  .asciz  "weird goulash"
                        .balign 4

glabel D_8012F5A8
/* 024AB8 8012F5A8  */  .asciz  "Weird tasting goulash\n"
                        .balign 4

glabel D_8012F5C0
/* 024AD0 8012F5C0  */  .asciz  "cookie"
                        .balign 4

glabel D_8012F5C8
/* 024AD8 8012F5C8  */  .asciz  "cookie"
                        .balign 4

glabel D_8012F5D0
/* 024AE0 8012F5D0  */  .asciz  "A tasty cookie\n"
                        .balign 4

glabel D_8012F5E0
/* 024AF0 8012F5E0  */  .asciz  "cookie"
                        .balign 4

glabel D_8012F5E8
/* 024AF8 8012F5E8  */  .asciz  "cookie"
                        .balign 4

glabel D_8012F5F0
/* 024B00 8012F5F0  */  .asciz  "An average tasting cookie\n"
                        .balign 4

glabel D_8012F60C
/* 024B1C 8012F60C  */  .asciz  "cookie"
                        .balign 4

glabel D_8012F614
/* 024B24 8012F614  */  .asciz  "weird cookie"
                        .balign 4

glabel D_8012F624
/* 024B34 8012F624  */  .asciz  "A weird tasting cookie\n"
                        .balign 4

glabel D_8012F63C
/* 024B4C 8012F63C  */  .asciz  "mystery soup"
                        .balign 4

glabel D_8012F64C
/* 024B5C 8012F64C  */  .asciz  "mystery soup"
                        .balign 4

glabel D_8012F65C
/* 024B6C 8012F65C  */  .asciz  "^4BULBASAUR^^'s special recipe\n"
                        .balign 4

glabel D_8012F67C
/* 024B8C 8012F67C  */  .asciz  "ODDISH"
                        .balign 4

glabel D_8012F684
/* 024B94 8012F684  */  .asciz  "May grow when\nsprinkled with water."
                        .balign 4

glabel D_8012F6A8
/* 024BB8 8012F6A8  */  .asciz  "strange radish"
                        .balign 4

glabel D_8012F6B8
/* 024BC8 8012F6B8  */  .asciz  "An odd radish\n^d\"It looks like ^4ODDISH^d, but it's\n^dactually a plant.\"^^"
                        .balign 4

glabel D_8012F704
/* 024C14 8012F704  */  .asciz  "GLOOM"
                        .balign 4

glabel D_8012F70C
/* 024C1C 8012F70C  */  .asciz  "May grow when\nsprinkled with water."
                        .balign 4

glabel D_8012F730
/* 024C40 8012F730  */  .asciz  "smelly radish"
                        .balign 4

glabel D_8012F740
/* 024C50 8012F740  */  .asciz  "A radish that looks like ^4GLOOM^^\n^d\"It looks like ^4GLOOM^d, but it's\n^da completely different plant.\"^^"
                        .balign 4

glabel D_8012F7AC
/* 024CBC 8012F7AC  */  .asciz  "crate"
                        .balign 4

glabel D_8012F7B4
/* 024CC4 8012F7B4  */  .asciz  "crate"
                        .balign 4

glabel D_8012F7BC
/* 024CCC 8012F7BC  */  .asciz  "A wooden box\n^d\"An 'A' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012F810
/* 024D20 8012F810  */  .asciz  "crate"
                        .balign 4

glabel D_8012F818
/* 024D28 8012F818  */  .asciz  "crate"
                        .balign 4

glabel D_8012F820
/* 024D30 8012F820  */  .asciz  "A wooden box\n^d\"A 'B' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012F874
/* 024D84 8012F874  */  .asciz  "crate"
                        .balign 4

glabel D_8012F87C
/* 024D8C 8012F87C  */  .asciz  "crate"
                        .balign 4

glabel D_8012F884
/* 024D94 8012F884  */  .asciz  "A wooden box\n^d\"A 'C' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012F8D8
/* 024DE8 8012F8D8  */  .asciz  "crate"
                        .balign 4

glabel D_8012F8E0
/* 024DF0 8012F8E0  */  .asciz  "crate"
                        .balign 4

glabel D_8012F8E8
/* 024DF8 8012F8E8  */  .asciz  "A wooden box\n^d\"A 'D' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012F93C
/* 024E4C 8012F93C  */  .asciz  "crate"
                        .balign 4

glabel D_8012F944
/* 024E54 8012F944  */  .asciz  "crate"
                        .balign 4

glabel D_8012F94C
/* 024E5C 8012F94C  */  .asciz  "A wooden box\n^d\"An 'E' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012F9A0
/* 024EB0 8012F9A0  */  .asciz  "crate"
                        .balign 4

glabel D_8012F9A8
/* 024EB8 8012F9A8  */  .asciz  "crate"
                        .balign 4

glabel D_8012F9B0
/* 024EC0 8012F9B0  */  .asciz  "A wooden box\n^d\"An 'F' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012FA04
/* 024F14 8012FA04  */  .asciz  "crate"
                        .balign 4

glabel D_8012FA0C
/* 024F1C 8012FA0C  */  .asciz  "crate"
                        .balign 4

glabel D_8012FA14
/* 024F24 8012FA14  */  .asciz  "A wooden box\n^d\"A 'G' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012FA68
/* 024F78 8012FA68  */  .asciz  "crate"
                        .balign 4

glabel D_8012FA70
/* 024F80 8012FA70  */  .asciz  "crate"
                        .balign 4

glabel D_8012FA78
/* 024F88 8012FA78  */  .asciz  "A wooden box\n^d\"An 'H' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012FACC
/* 024FDC 8012FACC  */  .asciz  "crate"
                        .balign 4

glabel D_8012FAD4
/* 024FE4 8012FAD4  */  .asciz  "crate"
                        .balign 4

glabel D_8012FADC
/* 024FEC 8012FADC  */  .asciz  "A wooden box\n^d\"An 'I' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012FB30
/* 025040 8012FB30  */  .asciz  "crate"
                        .balign 4

glabel D_8012FB38
/* 025048 8012FB38  */  .asciz  "crate"
                        .balign 4

glabel D_8012FB40
/* 025050 8012FB40  */  .asciz  "A wooden box\n^d\"A 'J' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012FB94
/* 0250A4 8012FB94  */  .asciz  "crate"
                        .balign 4

glabel D_8012FB9C
/* 0250AC 8012FB9C  */  .asciz  "crate"
                        .balign 4

glabel D_8012FBA4
/* 0250B4 8012FBA4  */  .asciz  "A wooden box\n^d\"A 'K' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012FBF8
/* 025108 8012FBF8  */  .asciz  "crate"
                        .balign 4

glabel D_8012FC00
/* 025110 8012FC00  */  .asciz  "crate"
                        .balign 4

glabel D_8012FC08
/* 025118 8012FC08  */  .asciz  "A wooden box\n^d\"An 'L' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012FC5C
/* 02516C 8012FC5C  */  .asciz  "crate"
                        .balign 4

glabel D_8012FC64
/* 025174 8012FC64  */  .asciz  "crate"
                        .balign 4

glabel D_8012FC6C
/* 02517C 8012FC6C  */  .asciz  "A wooden box\n^d\"An 'M' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012FCC0
/* 0251D0 8012FCC0  */  .asciz  "crate"
                        .balign 4

glabel D_8012FCC8
/* 0251D8 8012FCC8  */  .asciz  "crate"
                        .balign 4

glabel D_8012FCD0
/* 0251E0 8012FCD0  */  .asciz  "A wooden box\n^d\"A 'Z' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012FD24
/* 025234 8012FD24  */  .asciz  "box"
                        .balign 4

glabel D_8012FD28
/* 025238 8012FD28  */  .asciz  "cardboard box"
                        .balign 4

glabel D_8012FD38
/* 025248 8012FD38  */  .asciz  "A box made of cardboard\n^d\"^6PIKACHU^d won't notice you if\n^dyou hide inside this box.\"^^"
                        .balign 4

glabel D_8012FD94
/* 0252A4 8012FD94  */  .asciz  "notebook"
                        .balign 4

glabel D_8012FDA0
/* 0252B0 8012FDA0  */  .asciz  "notebook"
                        .balign 4

glabel D_8012FDAC
/* 0252BC 8012FDAC  */  .asciz  "A pad for drawing pictures\n^d\"^6PIKACHU^d draws pictures\n^din this.\"^^"
                        .balign 4

glabel D_8012FDF4
/* 025304 8012FDF4  */  .asciz  "notebook"
                        .balign 4

glabel D_8012FE00
/* 025310 8012FE00  */  .asciz  "notebook"
                        .balign 4

glabel D_8012FE0C
/* 02531C 8012FE0C  */  .asciz  "A pad for drawing pictures\n^d\"^6PIKACHU^d draws pictures\n^din this.\"^^"
                        .balign 4

glabel D_8012FE54
/* 025364 8012FE54  */  .asciz  "controller"
                        .balign 4

glabel D_8012FE60
/* 025370 8012FE60  */  .asciz  "N64 controller"
                        .balign 4

glabel D_8012FE70
/* 025380 8012FE70  */  .asciz  "The Controller for your N64\n^d\"That's what you use to play\n^dgames on your Nintendo 64.\"^^"
                        .balign 4

glabel D_8012FECC
/* 0253DC 8012FECC  */  .asciz  "TV"
                        .balign 4

glabel D_8012FED0
/* 0253E0 8012FED0  */  .asciz  "TV"
                        .balign 4

glabel D_8012FED4
/* 0253E4 8012FED4  */  .asciz  "A device that displays images\n^d\"^6PIKACHU^d turns it on for\n^4Quiz Time^d.\"^^"
                        .balign 4

glabel D_8012FF24
/* 025434 8012FF24  */  .asciz  "telescope"
                        .balign 4

glabel D_8012FF30
/* 025440 8012FF30  */  .asciz  "telescope"
                        .balign 4

glabel D_8012FF3C
/* 02544C 8012FF3C  */  .asciz  "A lens for viewing the stars\n^d\"That's the ^4telescope^d ^6PIKACHU^d\n^dbought for you.\"^^"
                        .balign 4

glabel D_8012FF98
/* 0254A8 8012FF98  */  .asciz  "board"
                        .balign 4

glabel D_8012FFA0
/* 0254B0 8012FFA0  */  .asciz  "board"
                        .balign 4

glabel D_8012FFA8
/* 0254B8 8012FFA8  */  .asciz  "A board for pasting textures\n"
                        .balign 4

glabel D_8012FFC8
/* 0254D8 8012FFC8  */  .asciz  "signpost"
                        .balign 4

glabel D_8012FFD4
/* 0254E4 8012FFD4  */  .asciz  "signpost"
                        .balign 4

glabel D_8012FFE0
/* 0254F0 8012FFE0  */  .asciz  "A board with words on it\n^d\"It seems to be designed to\n^dreact to special actions.\"^^"
                        .balign 4

glabel D_80130038
/* 025548 80130038  */  .asciz  "book"
                        .balign 4

glabel D_80130040
/* 025550 80130040  */  .asciz  "The Ending Book"
                        .balign 4

glabel D_80130050
/* 025560 80130050  */  .asciz  "The ending"
                        .balign 4

glabel D_8013005C
/* 02556C 8013005C  */  .asciz  "rosebush"
                        .balign 4

glabel D_80130068
/* 025578 80130068  */  .asciz  "rosebush"
                        .balign 4

glabel D_80130074
/* 025584 80130074  */  .asciz  "A bush with many roses\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4flower^d. It's a big bush!\"^^"
                        .balign 4

glabel D_801300D8
/* 0255E8 801300D8  */  .asciz  "rosebush"
                        .balign 4

glabel D_801300E4
/* 0255F4 801300E4  */  .asciz  "rosebush"
                        .balign 4

glabel D_801300F0
/* 025600 801300F0  */  .asciz  "A bush with many roses\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4flower^d. It's a big bush!\"^^"
                        .balign 4

glabel D_80130154
/* 025664 80130154  */  .asciz  "rosebush"
                        .balign 4

glabel D_80130160
/* 025670 80130160  */  .asciz  "rosebush"
                        .balign 4

glabel D_8013016C
/* 02567C 8013016C  */  .asciz  "A bush with many roses\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4flower^d. It's a big bush!\"^^"
                        .balign 4

glabel D_801301D0
/* 0256E0 801301D0  */  .asciz  "rosebush"
                        .balign 4

glabel D_801301DC
/* 0256EC 801301DC  */  .asciz  "rosebush"
                        .balign 4

glabel D_801301E8
/* 0256F8 801301E8  */  .asciz  "A bush with many roses\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4flower^d. It's a big bush!\"^^"
                        .balign 4

glabel D_8013024C
/* 02575C 8013024C  */  .asciz  "apple tree"
                        .balign 4

glabel D_80130258
/* 025768 80130258  */  .asciz  "apple tree"
                        .balign 4

glabel D_80130264
/* 025774 80130264  */  .asciz  "A tree with many ^4apple^^s on it\n^d\"A ^4Thunderbolt^d should knock\n^ddown an ^4apple^d.\"^^"
                        .balign 4

glabel D_801302C0
/* 0257D0 801302C0  */  .asciz  "peach tree"
                        .balign 4

glabel D_801302CC
/* 0257DC 801302CC  */  .asciz  "peach tree"
                        .balign 4

glabel D_801302D8
/* 0257E8 801302D8  */  .asciz  "A tree with many ^4peach^^es on it\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4peach^d.\"^^"
                        .balign 4

glabel D_80130334
/* 025844 80130334  */  .asciz  "chestnut tree"
                        .balign 4

glabel D_80130344
/* 025854 80130344  */  .asciz  "chestnut tree"
                        .balign 4

glabel D_80130354
/* 025864 80130354  */  .asciz  "A tree with many ^4spiky shell^^s\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4spiky shell^d.\"^^"
                        .balign 4

glabel D_801303B8
/* 0258C8 801303B8  */  .asciz  "smelly fruit tree"
                        .balign 4

glabel D_801303CC
/* 0258DC 801303CC  */  .asciz  "smelly fruit tree"
                        .balign 4

glabel D_801303E0
/* 0258F0 801303E0  */  .asciz  "A tree with lots of ^4smelly fruit^^\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4smelly fruit^d.\"^^"
                        .balign 4

glabel D_80130448
/* 025958 80130448  */  .asciz  "walnut tree"
                        .balign 4

glabel D_80130454
/* 025964 80130454  */  .asciz  "walnut tree"
                        .balign 4

glabel D_80130460
/* 025970 80130460  */  .asciz  "A tree with many ^4walnut^^s on it\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4walnut^d.\"^^"
                        .balign 4

glabel D_801304C0
/* 0259D0 801304C0  */  .asciz  "palm tree"
                        .balign 4

glabel D_801304CC
/* 0259DC 801304CC  */  .asciz  "palm tree"
                        .balign 4

glabel D_801304D8
/* 0259E8 801304D8  */  .asciz  "A tree with lots of ^4coconut^^s\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4coconut^d.\"^^"
                        .balign 4

glabel D_80130534
/* 025A44 80130534  */  .asciz  "apple tree"
                        .balign 4

glabel D_80130540
/* 025A50 80130540  */  .asciz  "apple tree"
                        .balign 4

glabel D_8013054C
/* 025A5C 8013054C  */  .asciz  "A tree with many ^4apple^^s on it\n^d\"A ^4Thunderbolt^d should knock\n^ddown an ^4apple^d.\"^^"
                        .balign 4

glabel D_801305A8
/* 025AB8 801305A8  */  .asciz  "peach tree"
                        .balign 4

glabel D_801305B4
/* 025AC4 801305B4  */  .asciz  "peach tree"
                        .balign 4

glabel D_801305C0
/* 025AD0 801305C0  */  .asciz  "A tree with many ^4peach^^es on it\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4peach^d.\"^^"
                        .balign 4

glabel D_8013061C
/* 025B2C 8013061C  */  .asciz  "chestnut tree"
                        .balign 4

glabel D_8013062C
/* 025B3C 8013062C  */  .asciz  "chestnut tree"
                        .balign 4

glabel D_8013063C
/* 025B4C 8013063C  */  .asciz  "A tree with many ^4spiky shell^^s\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4spiky shell^d.\"^^"
                        .balign 4

glabel D_801306A0
/* 025BB0 801306A0  */  .asciz  "smelly fruit tree"
                        .balign 4

glabel D_801306B4
/* 025BC4 801306B4  */  .asciz  "smelly fruit tree"
                        .balign 4

glabel D_801306C8
/* 025BD8 801306C8  */  .asciz  "A tree with lots of ^4smelly fruit^^\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4smelly fruit^d.\"^^"
                        .balign 4

glabel D_80130730
/* 025C40 80130730  */  .asciz  "walnut tree"
                        .balign 4

glabel D_8013073C
/* 025C4C 8013073C  */  .asciz  "walnut tree"
                        .balign 4

glabel D_80130748
/* 025C58 80130748  */  .asciz  "A tree with many ^4walnut^^s on it\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4walnut^d.\"^^"
                        .balign 4

glabel D_801307A8
/* 025CB8 801307A8  */  .asciz  "palm tree"
                        .balign 4

glabel D_801307B4
/* 025CC4 801307B4  */  .asciz  "palm tree"
                        .balign 4

glabel D_801307C0
/* 025CD0 801307C0  */  .asciz  "A tree with lots of ^4coconut^^s\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4coconut^d.\"^^"
                        .balign 4

glabel D_8013081C
/* 025D2C 8013081C  */  .asciz  "tool box"
                        .balign 4

glabel D_80130828
/* 025D38 80130828  */  .asciz  "tool box"
                        .balign 4

glabel D_80130834
/* 025D44 80130834  */  .asciz  "The pack you keep your items in\n"
                        .balign 4

glabel D_80130858
/* 025D68 80130858  */  .asciz  "Pok´Helper"
                        .balign 4

glabel D_80130864
/* 025D74 80130864  */  .asciz  "Pok´Helper"
                        .balign 4

glabel D_80130870
/* 025D80 80130870  */  .asciz  "A computer with a microphone\n^d\"It's my pride and joy.\"^^\n"
                        .balign 4

glabel D_801308AC
/* 025DBC 801308AC  */  .asciz  "?"
                        .balign 4

glabel D_801308B0
/* 025DC0 801308B0  */  .asciz  "?"
                        .balign 4

glabel D_801308B4
/* 025DC4 801308B4  */  .asciz  "?"
                        .balign 4

glabel D_801308B8
/* 025DC8 801308B8 00000000 */  .word  0x00000000

glabel _string_801308BC
/* 025DCC 801308BC  */  .asciz  "ERROR: Invalid itemType. typeMin = %d  typeMax = %d\n"
                        .balign 4
/* 025E04 801308F4  */  .asciz  "request-cling:%p type:%d\n"
                        .balign 4
/* 025E20 80130910  */  .asciz  "Invalid scale:%f\n"
                        .balign 4
/* 025E34 80130924  */  .asciz  "player->holdItem = %d\n"
                        .balign 4
/* 025E4C 8013093C  */  .asciz  "Hold subject has been deleted.\n"
                        .balign 4
/* 025E6C 8013095C  */  .asciz  "subject->holdItem = %d\n"
                        .balign 4
/* 025E84 80130974  */  .asciz  "ERROR: Strange state.\n"
                        .balign 4
/* 025E9C 8013098C  */  .asciz  "makeItem(%.2f, %.2f, %.2f, %d) "
                        .balign 4
/* 025EBC 801309AC  */  .asciz  "(%s)\n"
                        .balign 4
/* 025EC4 801309B4  */  .asciz  "itemType %d has a sibling\n"
                        .balign 4
/* 025EE0 801309D0  */  .asciz  "destroy item. item rest = %d\n"
                        .balign 4
/* 025F00 801309F0  */  .asciz  "ERROR: Unknown drawMode(%d)\n"
                        .balign 4
/* 025F20 80130A10  */  .asciz  "Error: Unknown hold_type(%d) in item(%p)\n"
                        .balign 4
/* 025F4C 80130A3C  */  .asciz  "itemThrow itemID:%d\norgPos  (%.2f, %.2f, %.2f)\nthrowPos(%.2f, %.2f, %.2f)\nthrowVel(%.2f, %.2f, %.2f)\n"
                        .balign 4
/* 025FB4 80130AA4  */  .asciz  "itemChangeAnime(%p, %d)\n"
                        .balign 4
/* 025FD0 80130AC0  */  .asciz  "itemChangeMat(%p, %d)\n"
                        .balign 4
/* 025FE8 80130AD8  */  .asciz  "ERROR: unknown itemResponseType(%d)\n"
                        .balign 4
/* 026010 80130B00  */  .asciz  "itemChange(%p(%s), %d)\n"
                        .balign 4
/* 026028 80130B18  */  .asciz  "changeThunder:%d changeTo:%s\n"
                        .balign 4
/* 026048 80130B38  */  .asciz  "ERROR: Unknown cause(%d)\n"
                        .balign 4
/* 026064 80130B54  */  .asciz  "ERROR: Cannot change checked-in item.\n"
                        .balign 4
/* 02608C 80130B7C  */  .asciz  "ERROR: Strange.\n"
                        .balign 4
/* 0260A0 80130B90  */  .asciz  "ERROR: Unknown holdFlag(%d)\n"
                        .balign 4
/* 0260C0 80130BB0  */  .asciz  "checkin %p(%s)\n"
                        .balign 4
/* 0260D0 80130BC0  */  .asciz  "checkout %p(%s)\n"
                        .balign 4
/* 0260E4 80130BD4  */  .asciz  "Invalid itemNameType(%d) itemType = %d\n"
                        .balign 4

glabel D_80130BFC
/* 02610C 80130BFC 00000000 */  .word  0x00000000

glabel D_80130C00
/* 026110 80130C00  */  .asciz  "(Item)"
                        .balign 4
/* 026118 80130C08  */  .asciz  "Error: Invalid contentType:%d\n"
                        .balign 4
/* 026138 80130C28  */  .asciz  "Invalid itemHelpType(%d) itemType = %d\n"
                        .balign 4

glabel D_80130C50
/* 026160 80130C50 3E99999A */  .float  0.30000001192092896

glabel D_80130C54
/* 026164 80130C54 C7C35000 */  .float  -100000.0

glabel jtbl_80130C58
/* 026168 80130C58 80113D64 */  .word  L80113D64
/* 02616C 80130C5C 80113DB0 */  .word  L80113DB0
/* 026170 80130C60 80113DFC */  .word  L80113DFC
/* 026174 80130C64 80113E48 */  .word  L80113E48
/* 026178 80130C68 80113E94 */  .word  L80113E94
/* 02617C 80130C6C 80113EE0 */  .word  L80113EE0
/* 026180 80130C70 80113F2C */  .word  L80113F2C

glabel jtbl_80130C74
/* 026184 80130C74 80114100 */  .word  L80114100
/* 026188 80130C78 80114084 */  .word  L80114084
/* 02618C 80130C7C 801140AC */  .word  L801140AC
/* 026190 80130C80 801140AC */  .word  L801140AC
/* 026194 80130C84 801140F8 */  .word  L801140F8
/* 026198 80130C88 8011407C */  .word  L8011407C

glabel jtbl_80130C8C
/* 02619C 80130C8C 801146CC */  .word  L801146CC
/* 0261A0 80130C90 801146F0 */  .word  L801146F0
/* 0261A4 80130C94 80114714 */  .word  L80114714
/* 0261A8 80130C98 80114738 */  .word  L80114738
/* 0261AC 80130C9C 8011475C */  .word  L8011475C

glabel jtbl_80130CA0
/* 0261B0 80130CA0 8011488C */  .word  L8011488C
/* 0261B4 80130CA4 801148B8 */  .word  L801148B8
/* 0261B8 80130CA8 8011498C */  .word  L8011498C
/* 0261BC 80130CAC 801149C8 */  .word  L801149C8
/* 0261C0 80130CB0 801149C8 */  .word  L801149C8
/* 0261C4 80130CB4 80114984 */  .word  L80114984

glabel jtbl_80130CB8
/* 0261C8 80130CB8 80114A58 */  .word  L80114A58
/* 0261CC 80130CBC 80114A58 */  .word  L80114A58
/* 0261D0 80130CC0 80114A34 */  .word  L80114A34
/* 0261D4 80130CC4 80114A34 */  .word  L80114A34
/* 0261D8 80130CC8 80114A58 */  .word  L80114A58
/* 0261DC 80130CCC 80114A58 */  .word  L80114A58

glabel jtbl_80130CD0
/* 0261E0 80130CD0 80114F40 */  .word  L80114F40
/* 0261E4 80130CD4 80114F28 */  .word  L80114F28
/* 0261E8 80130CD8 80114F34 */  .word  L80114F34
/* 0261EC 80130CDC 80114F34 */  .word  L80114F34
/* 0261F0 80130CE0 80114F28 */  .word  L80114F28
/* 0261F4 80130CE4 80114F34 */  .word  L80114F34
/* 0261F8 80130CE8 80114F28 */  .word  L80114F28
/* 0261FC 80130CEC 00000000 */  .word  0x00000000
