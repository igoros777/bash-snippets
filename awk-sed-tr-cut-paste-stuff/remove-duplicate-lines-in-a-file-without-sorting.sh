# Remove duplicate lines in a file without sorting
awk '!a[$0]++'
