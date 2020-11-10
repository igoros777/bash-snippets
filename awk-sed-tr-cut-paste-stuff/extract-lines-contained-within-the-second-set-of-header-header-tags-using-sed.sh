# Extract lines contained within the second set of `<header></header>` tags using sed.
Sample input file:
cat /tmp/testfile2.txt
<header>
Line 11
Line 12
</header>
<header>
Line 21
Line 22
Line 23
</header>
<header>
Line 31
Line 32
Line 33
</header>
sed -n '\|<header>|{:n;\|</header>|!{N;bn};y|\n| |;p}' /tmp/testfile2.txt | sed -n '2{p;q}'
<header> Line 21 Line 22 Line 23 </header>
