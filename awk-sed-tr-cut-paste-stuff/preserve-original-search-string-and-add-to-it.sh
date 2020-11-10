# Preserve original search string and add to it
(Example: replace every [0-9]. with [0-9]..)
ls | sed -e 's/\([0-9]\.\)/\1\./g'
(Example 2: enclose every four-digit number followed by a dot in parentheses, i.e. 2014. becomes (2014).)
| sed -e 's/\([0-9]\{4\}\)\./\(\1\)\./g')"
