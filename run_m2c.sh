while read line; do ../mips_to_c/mips_to_c.py "$line" >"$line".c  ; done < <(find asm/us/boot/ -name "*.s")
while read line; do ../mips_to_c/mips_to_c.py "$line" >"$line".c  ; done < <(find asm/us/file_B3C70/ -name "*.s")
