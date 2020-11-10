# Extract lines between unique tags using sed. Sample input file
cat /tmp/testfile.txt
# Header 1
Line 11
Line 12
# Header 2
Line 21
Line 22
Line 23
# Header 3
Line 31
Line 32
Line 33
sed -n '/# Header 2/{:a;n;/# Header 3/b;p;ba}' /tmp/testfile.txt
Line 21
Line 22
Line 23
