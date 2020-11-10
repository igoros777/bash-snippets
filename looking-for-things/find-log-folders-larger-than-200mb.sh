# Find log folders larger than 200MB
find / /opt /var -maxdepth 4 -xdev -type d -name log -o -name logs -exec du -skx {} \; | awk '$1>204800{system("du -shx "$2)}'
