#!/bin/bash

# This oneliner is kinda bad
grep -E '^symbol,'  context/usa/boot_.txt | grep -E ',False$' | sed 's/\(.*\),\(.*\),\(.*\),\(.*\),\(.*\),\(.*\),\(.*\)/\4 = \3;/' > undefined_syms_usa_boot.txt
grep -E '^function,' context/usa/boot_.txt | grep -E ',False$' | sed 's/\(.*\),\(.*\),\(.*\),\(.*\),\(.*\),\(.*\)/\4 = \3;/' >> undefined_syms_usa_boot.txt
grep -E '^fake_function,' context/usa/boot_.txt | sed 's/\(.*\),\(.*\),\(.*\),\(.*\),\(.*\)/\4 = \3;/' >> undefined_syms_usa_boot.txt

# Sort it!
sort --field-separator== -k 2 undefined_syms_usa_boot.txt -o undefined_syms_usa_boot.txt
