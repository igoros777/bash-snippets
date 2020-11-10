# Identify server's primary IP address
/sbin/ifconfig | sed -rn 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'
