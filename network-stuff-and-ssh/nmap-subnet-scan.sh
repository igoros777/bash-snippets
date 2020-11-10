# Nmap subnet scan
nmap -sn ${subnet}/${subnet_mask} -oG - | awk '$4=="Status:" && $5=="Up" {print $2}'
