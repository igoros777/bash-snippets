# Basic tshark capture of connected IPs and ports for the default interface
t=$(date +'%Y-%m-%d') && d="/var/tmp/tcpdump/${t}" && mkdir -p "${d}"
tshark -i $(route | grep -m1 ^default | awk '{print $NF}') -a duration:600 -nn -T fields -E separator=',' -e frame.time -e ip.src -e tcp.srcport -e ip.dst -e tcp.dstport -R '(tcp.flags.syn == 1 and tcp.flags.ack == 0)' >${d}/$(hostname -s)_$(date +'%Y-%m-%d_%H%M%S').log
