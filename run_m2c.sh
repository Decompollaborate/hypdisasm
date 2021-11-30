while read line; do ../mips_to_c/mips_to_c.py "$line" >"$line".c  ; done < <(find ver/us/asm/text/boot/ -name "*.s")
while read line; do ../mips_to_c/mips_to_c.py "$line" >"$line".c  ; done < <(find ver/us/asm/text/file_B3C70/ -name "*.s")
