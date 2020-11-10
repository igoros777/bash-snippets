# Delete temporary file when script exits
tmpfile=$(mktemp) && trap "/bin/rm -f ${tmpfile} 2>/dev/null" EXIT
