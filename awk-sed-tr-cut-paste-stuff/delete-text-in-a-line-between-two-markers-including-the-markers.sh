# Delete text in a line between two markers `{}` including the markers
sed -e 's/://' -e 's/\({\).*\(}\)//'
