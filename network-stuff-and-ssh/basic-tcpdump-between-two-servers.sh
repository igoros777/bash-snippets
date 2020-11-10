# Basic tcpdump between two servers 
target_host=pixarreview.com; target_port=80; timeout=60
t=$(date +'%Y-%m-%d') && d="/var/tmp/tcpdump/${t}" && mkdir -p "${d}"
tcpdump -Z root -G 600 -W 5 -C 1000 -i $(route | grep -m1 ^default | \
awk '{print $NF}') host $(host $(hostname -s) | head -1 | grep -oE "([0-9]{1,3}\.){3}([0-9]{1,3})") \
and $(host ${target_host} | head -1 | grep -oE "([0-9]{1,3}\.){3}([0-9]{1,3})") \
and port ${target_port} -w ${d}/$(hostname -s)_${target_host}_${target_port}_$(date +'%Y-%m-%d_%H%M%S').pcap &disown
pid=$(echo $!)
timeout ${timeout} wget http://${target_host} -O -
kill -9 ${pid}
