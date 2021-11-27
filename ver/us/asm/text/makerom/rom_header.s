.byte 0x80, 0x37, 0x12, 0x40  /* PI BSB Domain 1 register */
.word 0x0000000F              /* Clockrate setting */
.word entrypoint              /* Entrypoint address (0x80000400) */
.byte 0x00, 0x00, 0x14        /* Revision */
.ascii "K"                    /* Libultra version */
.word 0xD3F10E5D              /* Checksum 1 */
.word 0x052EA579              /* Checksum 2 */
.word 0x00000000              /* Unknown 1 */
.word 0x00000000              /* Unknown 2 */
.ascii "hey you, pikachu    " /* Internal name */
.word 0x00000000              /* Unknown 3 */
.byte 0x00, 0x00, 0x00
.ascii "N"                    /* Format (cartridge) */
.ascii "PG"                   /* Cartridge ID */
.ascii "E"                    /* Country code (North America) */
.byte 0x00                    /* Version */
