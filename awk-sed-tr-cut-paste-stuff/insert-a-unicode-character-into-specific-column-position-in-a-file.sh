# Insert a Unicode character into specific column position in a file
sed -r -e 's/^.{15}/&\xe2\x86\x92\x0/' file.txt
