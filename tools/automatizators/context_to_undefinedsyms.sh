#!/bin/bash

# This oneliner is kinda bad
grep -E '^symbol,'  context/usa/boot_.txt | grep -E ',False$' | sed 's/\(.*\),\(.*\),\(.*\),\(.*\),\(.*\),\(.*\),\(.*\)/\4 = \3;/' | sort --field-separator== -k 2 > undefined_syms_usa_boot.txt
