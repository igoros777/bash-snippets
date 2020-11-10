# Find all links in a file
egrep -IRo '(((http(s)?|ftp|telnet|news|gopher)://|mailto:)[^()<"'''[:space:]]+)'
