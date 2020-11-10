# Print all fields but last
awk '{$NF=""; print $0}'
