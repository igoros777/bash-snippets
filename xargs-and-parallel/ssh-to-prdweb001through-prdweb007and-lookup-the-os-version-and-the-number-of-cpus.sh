# SSH to prdweb001 through prdweb007 and lookup the OS version and the number of CPUs
# The number of parallel processes for xargs is set to the number of CPU cores. The `ts` command comes from the moreutils package.
seq 1 7 | xargs -P$(grep -c proc /proc/cpuinfo) -I% bash -c "ssh -qtT -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o ConnectTimeout=3 -o BatchMode=yes prdweb00% 'head -1 /etc/issue;grep -c proc /proc/cpuinfo' | ts prdweb00%:" | sort
prdweb001: 8
prdweb001: CentOS release 5.10 (Final)
prdweb002: 2
prdweb002: CentOS release 5.10 (Final)
...
