#!/bin/bash

# Filter for lines with two words,
# both beginning and ending with [a-z].
tail -n +2 enwiki-latest-all-titles-in-ns0 |
# Debug: \
#head -n 1000000 enwiki-latest-all-titles-in-ns0 |
	egrep '^([A-Z][^_]*[a-z]_){1}[A-Z][^_]*[a-z]$' > \
	../lists/all.2.txt

# Prepend those lines with their four first and last letters
# and uniq by them.
cat ../lists/all.2.txt |
# Debug: \
#head ../lists/all.2.txt |
sed -E 's/^(((.)[^_]*(.))_((.)[^_]*(.)))$/\3\4\6\7 \2 \5/g' | \
	sort -k1,1 -u > \
	../lists/unq.2.txt
