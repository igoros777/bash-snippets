# xargs examples
# Create folders
echo /tmp/{one,two,three} | xargs mkdir -p
# Print commands being executed
echo /tmp/{one,two,three} | xargs -t mkdir -p
# Ask for confirmation before executing commands
echo /tmp/{one,two,three} | xargs -p mkdir -p
# Use xargs with find
find /tmp -maxdepth 1 -mindepth 1 -type f -mtime +14 | xargs /bin/rm -f
# Run parallel commands with xargs
# Find folders up to 4 levels deep with the most files. The number of parallel threads is set to match the number of CPU cores.
find /var -maxdepth 4 -xdev -type d -print0 | xargs -r0 -n1 -P$(grep -c proc /proc/cpuinfo) -I % sh -c 'echo -e "%;$(find % -maxdepth 1 -mindepth 1 -type f 2>/dev/null | wc -l)"' | column -s';' -t | sort -k2rn | head -10
# Query multiple DNS servers, grab the 10-digit serial and verify that all name servers have the same DNS zone serial number. The number of parallel threads is set to match the number of shell array elements.
declare -a nsarray=('sojwiu01' 'kwjsiu01' 'sljhuw01' 'hwikdj01' 'lskwid01' 'ldhuwy01' 'sjducn01' 'vfjqod01')
printf '%s\n' ${nsarray[@]} | xargs -P$(printf '%s\n' ${#nsarray[@]}) -I% dig +nsid -t SOA krazyworks.com @%.krazyworks.com.local | grep -oP "[0-9]{10}" | sort -u | wc -l
# SSH to prdweb001 through prdweb007 and lookup the OS version and the number of CPUs. The number of parallel processes for xargs is set to four times the number of CPU cores. The `ts` command comes from the moreutils package.
seq -w 001 007 | xargs -P$(echo "$(grep -c proc /proc/cpuinfo)*4"|bc) -I% bash -c "ssh -qtT -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o ConnectTimeout=3 -o BatchMode=yes prdweb% 'head -1 /etc/issue;grep -c proc /proc/cpuinfo' | ts prdweb00%:" | sort
