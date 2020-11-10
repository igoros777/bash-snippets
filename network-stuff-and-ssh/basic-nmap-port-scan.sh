# Basic nmap port scan
nmap -oG -T4 -F ${target_ip} | grep "\bopen\b"
