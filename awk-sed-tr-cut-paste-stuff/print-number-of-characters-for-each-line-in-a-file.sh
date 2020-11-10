# Print number of characters for each line in a file
awk '{ print length($0)"\t"$0; }' file.txt
