# Ping remote host to detect frame drops
ping ${remote_ip} | grep -oP --line-buffered "(?<=icmp_seq=)[0-9]{1,}(?= )" | awk '$1!=p+1{print p+1"-"$1-1}{p=$1}'
