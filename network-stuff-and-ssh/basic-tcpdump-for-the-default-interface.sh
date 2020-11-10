# Basic tcpdump for the default interface
# -W 5		write no more than 5 pcap files, then start overwriting the oldest
# -G 600	rotate output pcap files every 10 minutes
# -C 1000	rotate output pcap files when they reach 1GiB
t=$(date +'%Y-%m-%d') && d="/var/tmp/tcpdump/${t}" && mkdir -p "${d}"
tcpdump -Z root -G 600 -W 5 -C 1000 -i $(route | grep -m1 ^default | awk '{print $NF}') -w ${d}/$(hostname -s)_$(date +'%Y-%m-%d_%H%M%S').pcap
# or on Solaris 11
t=$(date +'%Y-%m-%d') && d="/var/tmp/tcpdump/${t}" && mkdir -p "${d}"
nohup tcpdump -Z root -G 600 -W 5 -C 1000 -i $(/usr/sbin/ifconfig -a | ggrep -B1 $(ggrep -m1 "^[0-9].*$(hostname)" /etc/hosts | ggrep -oE "([0-9]{1,3}\.){3}([0-9]{1,3})") | head -1 | awk -F: '{print $1}') -w ${d}/$(hostname)_$(date +'%Y-%m-%d_%H%M%S').pcap &
