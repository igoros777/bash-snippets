# Remove duplicate  lines in a file without sorting, except blank lines
awk '/^ *$/ { delete x; }; !x[$0]++'
