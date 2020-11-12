# Similar to above but only looks at words with 5 or more letters
tr -c a-zA-Z '\n' < /file.txt  | sed '/^$/d' | grep '.\{5\}' | sort | uniq -i -c | sort -rn
