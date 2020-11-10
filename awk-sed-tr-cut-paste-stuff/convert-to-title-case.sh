# Convert to "Title Case"
sed 's/.*/\L&/; s/[a-z]*/\u&/g'
