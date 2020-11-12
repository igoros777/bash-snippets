# Make a static copy of a dynamic Web site two levels deep:
wget -P /var/www/html/ -mpck -l2 --user-agent="Mozilla" -e robots=off -E "${url}"
