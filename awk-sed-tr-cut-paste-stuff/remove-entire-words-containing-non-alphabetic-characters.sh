# Remove entire words containing non-alphabetic characters
awk '{ofs=""; for (i=1; i<=NF; i++) if ($i ~ /^[[:alpha:]]+$/) {printf "%s%s", ofs, $i; ofs=OFS} print "" }'
