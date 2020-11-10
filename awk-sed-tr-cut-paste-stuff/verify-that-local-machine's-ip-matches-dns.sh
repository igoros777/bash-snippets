# Verify that local machine's IP matches DNS
if [ "$(ifconfig | sed -rn 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p')" == "$(dig +short $(host -TtA $(hostname -s) | grep "has address" | awk '{print $1}'))" ]; then echo 0 ; else echo 1 ; fi
