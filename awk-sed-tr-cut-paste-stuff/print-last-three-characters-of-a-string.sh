# Print last three characters of a string
sed 's/.*\(...\)/\1/'
# or
grep -o '...$'
grep -o '.\{3\}$'
python -c "print raw_input()[-3:]"
grep -oP '.{0,3}$'
tail -c 3 # Works if each character is one byte (non-Unicode)
printf '%s\n' "${STRING:(-3)}"
awk '{ print substr( $0, length($0) - 2, length($0) ) }'
