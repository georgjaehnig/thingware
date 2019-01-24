#!/bin/bash

###########################################
# Experiments with more words.

cat enwiki-latest-all-titles-in-ns0 | \
#head -n 1000000 enwiki-latest-all-titles-in-ns0 | \
	egrep '^([A-Z][^_]*[a-z]_){2}[A-Z][^_]*[a-z]$' > all.3.txt

cat enwiki-latest-all-titles-in-ns0 | \
#head -n 1000000 enwiki-latest-all-titles-in-ns0 | \
	egrep '^([A-Z][^_]*[a-z]_){3}[A-Z][^_]*[a-z]$' > all.4.txt
cat all.4.txt |
#head all.3.txt |
	sed -E 's/^(([A-Z])[^_]*([a-z])_([A-Z])[^_]*([a-z])_([A-Z])[^_]*([a-z])_([A-Z])[^_]*([a-z]))$/\2\3\4\5\6\7\8\9 \1/g' | \
	sort -k1,1 -u > unq.4.txt


cat all.3.txt |
#head all.3.txt |
	sed -E 's/^(([A-Z])[^_]*([a-z])_([A-Z])[^_]*([a-z])_([A-Z])[^_]*([a-z]))$/\2\3\4\5\6\7 \1/g' | \
	sort -k1,1 -u > unq.3.txt


