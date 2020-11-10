# Find gaps is numerical sequences
awk '$1!=p+1{print p+1"-"$1-1}{p=$1}'
# Only print numbers missing from the sequence
awk 'NR-1{if($1!=(p+1))print p+1}{p=$1}'
