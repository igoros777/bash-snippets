# Delete text in a line between two markers `{}`
sed -e 's/\({\).*\(}\)/\1\2/'
