# Non-capturing groups
# Extract a four-digit number in parentheses from string 2013 Monkeys in 1999 (2014).txt
echo "2013 Monkeys in 1999 (2014).txt" | grep -oP "(?<=\()[0-9]{4}(?=\))"
