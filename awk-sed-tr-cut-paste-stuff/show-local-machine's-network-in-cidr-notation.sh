# Show local machine's network in CIDR notation
eval $(ipcalc -np $(ifconfig $(route | grep -m1 ^default | awk '{print $NF}') | sed -n "s/inet addr:\([^ ]*\).*Mask:\([^ ]*\).*/\1 \2/p")) ; echo $NETWORK/$PREFIX
