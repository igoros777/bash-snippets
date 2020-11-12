# Generate a list of broken links
wget --spider -o broken_links.log --wait 2 -r -p "${url}" -e robots=off
