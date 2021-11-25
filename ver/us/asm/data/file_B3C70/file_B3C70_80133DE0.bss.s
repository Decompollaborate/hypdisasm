.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .bss

.balign 16

glabel D_80133DE0
/* 0292F0 80133DE0 */  .space  0x04

glabel D_80133DE4
/* 0292F4 80133DE4 */  .space  0x04

glabel D_80133DE8
/* 0292F8 80133DE8 */  .space  0x0C

glabel D_80133DF4
/* 029304 80133DF4 */  .space  0x04

glabel D_80133DF8
/* 029308 80133DF8 */  .space  0x04

glabel D_80133DFC
/* 02930C 80133DFC */  .space  0x04

glabel D_80133E00
/* 029310 80133E00 */  .space  0x10

glabel D_80133E10
/* 029320 80133E10 */  .space  0x100

glabel D_80133F10
/* 029420 80133F10 */  .space  0x04

glabel D_80133F14
/* 029424 80133F14 */  .space  0x04

glabel D_80133F18
/* 029428 80133F18 */  .space  0x08

glabel D_80133F20
/* 029430 80133F20 */  .space  0x100

glabel D_80134020
/* 029530 80134020 */  .space  0x10

glabel D_80134030
/* 029540 80134030 */  .space  0x04

glabel D_80134034
/* 029544 80134034 */  .space  0x0C

glabel D_80134040
/* 029550 80134040 */  .space  0x08

glabel D_80134048
/* 029558 80134048 */  .space  0x08

glabel D_80134050
/* 029560 80134050 */  .space  0x10

glabel D_80134060
/* 029570 80134060 */  .space  0x50

glabel D_801340B0
/* 0295C0 801340B0 */  .space  0x20

glabel D_801340D0
/* 0295E0 801340D0 */  .space  0x08

glabel D_801340D8
/* 0295E8 801340D8 */  .space  0x08

glabel D_801340E0
/* 0295F0 801340E0 */  .space  0x08

glabel D_801340E8
/* 0295F8 801340E8 */  .space  0x14

glabel D_801340FC
/* 02960C 801340FC */  .space  0x04

glabel D_80134100
/* 029610 80134100 */  .space  0x04

glabel D_80134104
/* 029614 80134104 */  .space  0x04

glabel D_80134108
/* 029618 80134108 */  .space  0x04

glabel D_8013410C
/* 02961C 8013410C */  .space  0x04

glabel D_80134110
/* 029620 80134110 */  .space  0x04

glabel D_80134114
/* 029624 80134114 */  .space  0x04

glabel D_80134118
/* 029628 80134118 */  .space  0x30

glabel D_80134148
/* 029658 80134148 */  .space  0x04

glabel D_8013414C
/* 02965C 8013414C */  .space  0x04

glabel D_80134150
/* 029660 80134150 */  .space  0x08

glabel D_80134158
/* 029668 80134158 */  .space  0x28

glabel D_80134180
/* 029690 80134180 */  .space  0x30

glabel D_801341B0
/* 0296C0 801341B0 */  .space  0x04

glabel D_801341B4
/* 0296C4 801341B4 */  .space  0x04

glabel D_801341B8
/* 0296C8 801341B8 */  .space  0x60

glabel D_80134218
/* 029728 80134218 */  .space  0x08

glabel D_80134220
/* 029730 80134220 */  .space  0x50
