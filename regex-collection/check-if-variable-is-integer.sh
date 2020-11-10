# Check if variable is integer
re='^[0-9]+$'
if ! [[ ${var} =~ ${re} ]] ; then
   echo "error: Not an integer" >&2; exit 1
fi
