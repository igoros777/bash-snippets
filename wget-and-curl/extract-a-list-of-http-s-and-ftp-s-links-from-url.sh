# Extract a list of HTTP(S) and FTP(S) links from URL 
wget -qO- "${url}" | grep -oE "(https?|ftps?)://[^\<\>\"\' ]+" | sort -u
