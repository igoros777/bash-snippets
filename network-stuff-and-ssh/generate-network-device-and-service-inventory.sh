# Generate network device and service inventory
# Install nmaptocsv utility
cd ~ && git clone https://github.com/maaaaz/nmaptocsv
/bin/cp -p ./nmaptocsv/nmaptocsv.py /usr/bin/
chmod 755 /usr/bin/nmaptocsv.py
sed 's/env python$/env python2.7/g' -i /usr/bin/nmaptocsv.py
# Configure scan parameters
d=$(date +'%Y-%m-%d_%H%M%S')
f="/var/log/nmap_${netwk}_${netwk_mask}_${d}.txt"
netwk=192.168.122.0
netwk_mask=24
tout=900
(( p = `grep -c proc /proc/cpuinfo` * 10 ))
# Scan network
nmap -sn ${netwk}/${netwk_mask} -oG - 2>/dev/null | \
awk '$4=="Status:" && $5=="Up" {print $2}' | sort -uV | \
xargs -n1 -P${p} -I% sh -c \
"nmap --host-timeout ${tout} -p 1-65535 -O -sV -sS -T4 % -oG -" 2>/dev/null | \
nmaptocsv.py -d';' -f ip-fqdn-port-protocol-service-version-os | \
tee -a "${f}"
# Cleanup output file
sed '2,${/FQDN/d;}' -i "${f}"
sed '/^\s*$/d' -i "${f}"
