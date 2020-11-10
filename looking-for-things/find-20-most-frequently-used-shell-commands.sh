# Find 20 most frequently-used shell commands
tr "\|\;" "\n" < ~/.bash_history | sed -e "s/^ //g" | cut -d " " -f 1 | sort | uniq -c | sort -rn | head -20
