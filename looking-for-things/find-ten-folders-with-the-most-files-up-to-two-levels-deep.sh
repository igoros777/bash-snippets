# Find ten folders with the most files up to two levels deep
find / /opt /var -mindepth 2 -maxdepth 4 -xdev -type d -print0 | xargs -r0 -n1 -P$(grep -c proc /proc/cpuinfo) -I % sh -c 'echo -e "%;$(find % -maxdepth 2 -mindepth 1 -type f 2>/dev/null | wc -l)"' | column -s';' -t | sort -k2rn | head -10
