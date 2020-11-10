# Print all fields but the first two
awk '{$1=$2=""; print $0}'
