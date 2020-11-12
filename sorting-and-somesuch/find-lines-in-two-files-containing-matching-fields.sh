# Find lines in two files containing matching fields
awk 'FNR==NR{a[$1];next}($1 in a){print}' file2 file1
