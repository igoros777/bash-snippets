# ASCII ranges
# All Printable Characters in the ASCII Table
grep -E "[ -~]"
# All Printable Characters in the ASCII Table, Except the Space Character
grep -E "[!-~]"
# All English Consonants
grep -E "[b-df-hj-np-tv-z]"
# All Special Characters in the ASCII Table
grep -oP '(?![a-zA-Z0-9])[!-~]'
# All Special Characters in the ASCII Table Without Using Lookahead
grep -oP '[!-/:-@\[-`{-~]'
# Alphanumeric Characters
grep -E "[^\W_]"
