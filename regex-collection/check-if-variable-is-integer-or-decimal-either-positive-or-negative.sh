# Check if variable is integer or decimal, either positive or negative
re='^[+-]?[0-9]+([.][0-9]+)?$'
if ! [[ ${var} =~ ${re} ]] ; then
   echo "error: Not an integer or decimal, either positive or negative" >&2; exit 1
fi
