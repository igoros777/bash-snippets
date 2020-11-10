# Generate a list of IPs from subnet notation
nmap -sL 10.10.122.0/29 | awk '$1$2 == "Nmapscan" {print $NF}'
