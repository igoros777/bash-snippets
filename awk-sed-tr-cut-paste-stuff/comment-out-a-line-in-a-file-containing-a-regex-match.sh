# Comment-out a line in a file containing a regex match:
sed -re '/REGEX/ s/^#*/#/' -i /tmp/file
