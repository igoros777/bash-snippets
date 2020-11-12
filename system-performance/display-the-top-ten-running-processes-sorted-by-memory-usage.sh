# Display the top ten running processes sorted by memory usage
ps aux | sort -nk +4 | tail
# or
ps aux | awk '{if ($5 != 0 ) print $2,$5,$6,$11}' | sort -k2rn | head -10 | column -t
