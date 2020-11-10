# Count word frequency in the English translation of Tolstoy's "War and Peace"
# Excluding 5000 most common English words
i=5000
t=/tmp/tolstoy_war_peace.txt
p=/tmp/count_1w.txt
wget -q -O ${t}.gz http://www.gutenberg.org/cache/epub/2600/pg2600.txt
gzip -df ${t}.gz
wget -q -O ${p} http://norvig.com/ngrams/count_1w.txt
head -${i} ${p} | awk '{print " "$1"$"}' > ${p}_${i}
tr -c a-zA-Z '\n' < ${t}  | egrep -v "^(ll|ve)$" | sed '/^$/d' | \
sort | uniq -ic | sort -rn | grep -iv -f ${p}_${i} | more
