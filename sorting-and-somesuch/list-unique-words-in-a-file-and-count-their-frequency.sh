# List unique words in a file and count their frequency
tr -c a-zA-Z '\n' < /file.txt  | sed '/^$/d' | sort | uniq -i -c | sort -rn
