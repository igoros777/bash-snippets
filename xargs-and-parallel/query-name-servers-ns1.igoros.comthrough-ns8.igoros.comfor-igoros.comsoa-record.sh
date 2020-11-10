# Query name servers ns1.igoros.com through ns8.igoros.com for igoros.com SOA record
# Grab the 10-digit serial and verify that all name servers have the same DNS zone serial number. This can be useful for identifying name servers that are not updating in a timely fashion.
seq 1 8 | xargs -P8 -I% dig +nsid -t SOA igoros.com @ns%.igoros.com | grep -oP "[0-9]{10}" | sort -u | wc -l
