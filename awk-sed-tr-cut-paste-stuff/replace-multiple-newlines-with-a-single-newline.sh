# Replace multiple newlines with a single newline
sed '/^$/N;/^\n$/D' file.txt
