# Disable or re-enable CTRL-C
# Prevent CTRL-C
trap "" SIGINT
# Re-enable CTRL-C
trap - SIGINT
