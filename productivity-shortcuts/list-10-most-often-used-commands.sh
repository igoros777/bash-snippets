# List 10 most often used commands
history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head
