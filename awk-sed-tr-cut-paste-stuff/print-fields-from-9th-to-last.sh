# Print fields from 9th to last
awk '{ s = ""; for (i = 9; i <= NF; i++) s = s $i " "; print s }'
