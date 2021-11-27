.byte 0x80, 0x37, 0x12, 0x40  /* PI BSB Domain 1 register */
.word 0x0000000F              /* Clockrate setting */
.word entrypoint              /* Entrypoint address (0x80000400) */
.byte 0x00, 0x00, 0x14        /* Revision */
.ascii "I"                    /* Libultra version */
.word 0x3F245305              /* Checksum 1 */
.word 0xFC0B74AA              /* Checksum 2 */
.word 0x00000000              /* Unknown 1 */
.word 0x00000000              /* Unknown 2 */
.ascii "PIKACHU GENKIDECHU  " /* Internal name */
.word 0x00000000              /* Unknown 3 */
.byte 0x00, 0x00, 0x00
.ascii "N"                    /* Format (cartridge) */
.ascii "PG"                   /* Cartridge ID */
.ascii "J"                    /* Country code (Japanese) */
.byte 0x00                    /* Version */
