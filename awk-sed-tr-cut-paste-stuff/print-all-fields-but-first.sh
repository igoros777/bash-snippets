# Print all fields but first
awk '{$1=""; print $0}'
