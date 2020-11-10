# Find available IPs
nmap -v -sn -n ${subnet}/${subnet_mask} -oG - | awk '/Status: Down/{print $2}'
