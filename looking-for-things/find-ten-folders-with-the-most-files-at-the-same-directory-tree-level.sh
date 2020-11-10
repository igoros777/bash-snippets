# Find ten folders with the most files at the same directory tree level
find / /opt /var -maxdepth 4 -xdev -type d -print0 | xargs -r0 -n1 -P$(grep -c proc /proc/cpuinfo) -I % sh -c 'echo -e "%;$(find % -maxdepth 1 -mindepth 1 -type f 2>/dev/null | wc -l)"' | column -s';' -t | sort -k2rn | head -10
