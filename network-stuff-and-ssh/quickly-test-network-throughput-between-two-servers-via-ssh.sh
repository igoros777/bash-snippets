# Quickly test network throughput between two servers via SSH
yes | pv | ssh ${destination_hostname} "cat > /dev/null"
