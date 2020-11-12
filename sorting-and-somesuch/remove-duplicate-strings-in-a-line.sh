# Remove duplicate strings in a line
echo "${line}" | xargs -n1 | sort -u | xargs
