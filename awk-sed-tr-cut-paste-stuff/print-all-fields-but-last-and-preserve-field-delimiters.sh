# Print all fields but last and preserve field delimiters
awk -F'/' -v OFS='/' '{$NF=""; print $0}'
