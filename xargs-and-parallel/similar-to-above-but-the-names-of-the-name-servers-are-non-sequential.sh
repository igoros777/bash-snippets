# Similar to above, but the names of the name servers are non-sequential
# The number of xargs threads is set to the number of array element.
declare -a nsarray=('sojwiu01' 'kwjsiu01' 'sljhuw01' 'hwikdj01' 'lskwid01' 'ldhuwy01' 'sjducn01' 'vfjqod01')
printf '%s\n' ${nsarray[@]} | xargs -P$(printf '%s\n' ${#nsarray[@]}) -I% dig +nsid -t SOA igoros.com @%.igoros.com.local | grep -oP "[0-9]{10}" | sort -u | wc -l
