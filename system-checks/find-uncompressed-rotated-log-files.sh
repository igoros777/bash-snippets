# Find uncompressed rotated log files
find /var/log -maxdepth 4 -xdev -regextype posix-extended -regex '^.*log.*[0-9]$' -mtime +3 -mtime -30
