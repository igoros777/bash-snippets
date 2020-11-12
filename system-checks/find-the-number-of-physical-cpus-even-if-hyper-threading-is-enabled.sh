# Find the number of physical CPUs (even if hyper-threading is enabled)
lscpu -p | egrep -v '^#' | sort -u -t, -k 2,4 | wc -l
