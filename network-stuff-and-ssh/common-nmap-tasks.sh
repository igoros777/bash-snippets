# Common nmap tasks
# Perform reverse DNS lookup for all IPs in the subnet
nmap -sL ${subnet}/${subnet_mask}
# Look for responses to ping from all IPs in the subnet
nmap -sP ${subnet}/${subnet_mask}
# Complete TCP port scan with service version detection
nmap -p 1-65535 -sV -sS -T4 ${subnet}/${subnet_mask}
# Stealth syn scan with OS and service version detection, traceroute and scripts, verbose output
nmap -v -sS -A -T4 ${subnet}/${subnet_mask}
# Stealth syn scan, OS and version detection, verbose output
nmap -v -sV -O -sS -T5 ${subnet}/${subnet_mask}
# Stealth syn scan, OS and version detection, complete port scan, verbose output
nmap -v -p 1-65535 -sV -O -sS -T4 ${subnet}/${subnet_mask}
