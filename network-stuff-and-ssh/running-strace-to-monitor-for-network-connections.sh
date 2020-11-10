# Running `strace` to monitor for network connections
timeout ${timeout_seconds} strace -p ${pid} -f -e trace=network -s 10000 -o ${outfile}
