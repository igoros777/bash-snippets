# Remove duplicate lines, except those matching a string
 awk '/^STRING$/ { delete x; }; !x[$0]++'
