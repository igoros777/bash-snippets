# A clean way to list IPTables rules
iptables -L INPUT -v -n | sort -k3 -k8V | column -t | less
