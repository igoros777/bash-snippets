# Check if variable is integer or decimal
re='^[0-9]+([.][0-9]+)?$'
if ! [[ ${var} =~ ${re} ]] ; then
   echo "error: Not an integer or decimal" >&2; exit 1
fi
