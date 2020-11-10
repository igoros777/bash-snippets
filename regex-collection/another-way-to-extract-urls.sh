# Another way to extract URLs
sed -n 's/.*href="\([^"]*\).*/\1/p'
