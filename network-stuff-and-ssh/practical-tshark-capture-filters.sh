# Practical tshark capture filters
t=$(date +'%Y-%m-%d') && d="/var/tmp/tcpdump/${t}" && mkdir -p "${d}"
infile="${d}/$(hostname -s)_$(date +'%Y-%m-%d_%H%M%S').log"
nic="$(route | grep -m1 ^default | awk '{print $NF}')"
duration=10
# Create list of IP pairs and ports
tshark -nn -r "${infile}" -T fields -E separator=',' -e ip.src -e tcp.srcport -e ip.dst -e tcp.dstport '(tcp.flags.syn == 1 and tcp.flags.ack == 0)'
tshark -i ${nic} -a duration:10 -nn -T fields -E separator=',' -e ip.src -e tcp.srcport -e ip.dst -e tcp.dstport -R '(tcp.flags.syn == 1 and tcp.flags.ack == 0)'
# Capture NFS calls to NFS host 10.96.191.111 
tshark -V -d tcp.port==2049,rpc host 10.96.191.111 -o 'nfs.file_name_snooping:TRUE' -o 'nfs.file_full_name_snooping:TRUE' -o 'nfs.default_fhandle_type:KNFSD_LE' -s 300
# Capture NFS calls to multiple NFS hosts 10.96.191.* 
tshark -V -d tcp.port==2049,rpc net 10.96.191.0/24 -o 'nfs.file_name_snooping:TRUE' -o 'nfs.file_full_name_snooping:TRUE' -o 'nfs.default_fhandle_type:KNFSD_LE' -s 300
# Top 10 URLs
tshark -r "${infile}" -R http.request -T fields -e http.host -e http.request.uri | sed -e 's/?.*$//' | sed -e 's#^\(.*\)\t\(.*\)$#http://\1\2#' | sort | uniq -c | sort -rn | head
tshark -i ${nic} -a duration:10 -R http.request -T fields -e http.host -e http.request.uri | sed -e 's/?.*$//' | sed -e 's#^\(.*\)\t\(.*\)$#http://\1\2#' | sort | uniq -c | sort -rn | head
# Source IP and MAC
tshark -nn -r "${infile}" -e ip.dst -e eth.dst -Tfields -E separator="," -R ip | sort -u
tshark -i ${nic} -a duration:10 -nn -e ip.dst -e eth.dst -Tfields -E separator="," -R ip | sort -u
# Source and Target IPs
tshark -nn -r "${infile}" -e ip.src -e ip.dst -Tfields -E separator="," -R ip | sort -u 
tshark -nn -i ${nic} -a duration:10 -e ip.src -e ip.dst -Tfields -E separator="," -R ip | sort -u
# Source IP and DNS query
tshark -nn -r "${infile}" -T fields -e ip.src -e dns.qry.name -R "dns.flags.response eq 0" -E separator="," | sort -u 
tshark -nn -i ${nic} -a duration:10 -T fields -e ip.src -e dns.qry.name -R "dns.flags.response eq 0" -E separator="," | sort -u
# Top 10 DNS Queries
tshark -nn -r "${infile}" -T fields -e dns.qry.name -R "dns.flags.response eq 0" | sort | uniq -c | sort -rn | head 
tshark -nn -i ${nic} -a duration:10 -T fields -e dns.qry.name -R "dns.flags.response eq 0" | sort | uniq -c | sort -rn | head
# Follow all streams (requires tshark v.1.7.1+)
for stream in $(tshark -nlr "${infile}" -R tcp.flags.syn==1 -T fields -e tcp.stream | sort -n | uniq) ; do echo "Processing stream $stream" ; tshark -nlr "${infile}" -q -z "follow,tcp,ascii,$stream" ; done 
for stream in $(tshark -nl -i ${nic} -a duration:5 -R tcp.flags.syn==1 -T fields -e tcp.stream | sort -n | uniq); do   echo "Processing stream $stream";   tshark -nl -i ${nic} -a duration:5 -q -z "follow,tcp,ascii,$stream"; done 
# Follow streams for specified IP (requires tshark v.1.7.1+)
ip=192.168.22.12 ; for stream in $(tshark -nlr "${infile}" -R tcp.flags.syn==1 -R ip.addr==${ip} -T fields -e tcp.stream | sort -n | uniq) ; do echo "Processing stream $stream" ; tshark -nlr "${infile}" -q -z "follow,tcp,ascii,$stream" ; done
ip=192.168.22.12 ; for stream in $(tshark -nl -i ${nic} -a duration:5 -R tcp.flags.syn==1 -R ip.addr==${ip} -T fields -e tcp.stream | sort -n | uniq); do echo "Processing stream $stream"; tshark -nl -i ${nic} -a duration:5 -q -z "follow,tcp,ascii,$stream"; done
# Capture HTTP streams containing images
tshark -i ${nic} -R "http.response and http.content_type contains image" -z "proto,colinfo,http.content_length,http.content_length" -z "proto,colinfo,http.content_type,http.content_type"
# Sniff HTTP Requests
tshark -i ${nic} 'tcp port 80 and (((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0)' -R 'http.request.method == "GET" || http.request.method == "HEAD"'
# Log All POP Users
tshark -i ${nic} -f 'port 110' -R 'pop.request.parameter contains 'user''
# Log HTTP request / receive headers
tshark -i ${nic} tcp port 80 or tcp port 443 -V -R "http.request || http.response"
# Log HTTP GET requests for a particular URL containing images
tshark -i ${nic} -n -R 'http && http.request.method == "GET" && http.host matches "google.com" && http.request.uri contains "images"'
# Detect new outgoing connections on port 80 to a particular subnet
tshark -i ${nic} -n -R '((tcp.flags.syn == 1 and tcp.flags.ack == 1 and ip.dst < 192.168.22.255) || (tcp.flags.syn == 1 and tcp.flags.ack == 1 and ip.dst > 192.168.22.255))' 
# Detect outgoing connections on specified ports to a particular subnet
tshark -i ${nic} -n 'dst port 135 or dst port 445 or dst port 1433 and tcp[tcpflags] & (tcp-syn) != 0 and tcp[tcpflags] & (tcp-ack) = 0 and src net 192.168.22.0/24'
