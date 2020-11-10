# Show duplicate entries in a column
awk -F, 'a[$5]++{print $5}'
