# Sort lines by number of characters
awk '{ print length, $0 }' | sort -n -s | cut -d" " -f2-
