# Download recursively
# Span multiple hosts, convert links to local, limit recursion level to 4, fake "mozilla" user agent, ignore "robots" directives.
wget -r -H --convert-links --level=4 --user-agent=Mozilla "${url}" -e robots=off
