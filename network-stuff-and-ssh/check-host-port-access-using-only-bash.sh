# Check host port access using only Bash
s="$(cat 2>/dev/null < /dev/null > /dev/tcp/${target_ip}/${target_port} & WPID=$!; sleep 3 && kill $! >/dev/null 2>&1 & KPID=$!; wait $WPID && echo 1)" ; s="${s:-0}"; echo "${s}" | sed 's/0/2/;s/1/0/;s/2/1/'
