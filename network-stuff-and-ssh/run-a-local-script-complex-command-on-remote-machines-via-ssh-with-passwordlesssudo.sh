# Run a local script/complex command on remote machines via SSH with passwordless sudo
for i in 1 2 3; do ssh -qTt host0$i "echo $(base64 -w0 /tmp/script01.sh) | base64 -d 2>/dev/null | sudo bash"; done
