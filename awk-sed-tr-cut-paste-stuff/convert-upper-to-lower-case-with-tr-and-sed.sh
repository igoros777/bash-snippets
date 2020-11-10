# Convert upper- to lower-case with `tr` and `sed`
tr '[:upper:]' '[:lower:]'
# or
sed -e 's/\(.*\)/\L\1/'
