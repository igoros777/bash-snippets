# Find ten largest files in a directory
du -sh /var/log/* | sort -hr | head -10
