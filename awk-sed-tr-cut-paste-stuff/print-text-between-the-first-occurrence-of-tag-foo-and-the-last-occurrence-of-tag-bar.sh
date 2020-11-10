# Print text between the first occurrence of tag "foo" and the last occurrence of tag "bar"
sed -n '/foo/{:a;N;/^\n/s/^\n//;/bar/{p;s/.*//;};ba};'
