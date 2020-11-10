# Remove duplicate words in a line
awk '{ while(++i<=NF) printf (!a[$i]++) ? $i FS : ""; i=split("",a); print "" }'
