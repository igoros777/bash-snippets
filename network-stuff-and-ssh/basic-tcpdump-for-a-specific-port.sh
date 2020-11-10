# Basic tcpdump for a specific port
target_port=http; timeout=10
t=$(date +'%Y-%m-%d') && d="/var/tmp/tcpdump/${t}" && mkdir -p "${d}"
tcpdump -Z root -G 600 -W 5 -C 1000 -i $(route | grep -m1 ^default | \
awk '{print $NF}') host $(host $(hostname -s) | head -1 | grep -oE "([0-9]{1,3}\.){3}([0-9]{1,3})") \
port ${target_port} \
pid=$(echo $!)
timeout ${timeout} wget http://${target_host} -O -
kill -9 ${pid}
