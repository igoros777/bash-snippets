# Append each string with a consecutive number
awk -vRS=string '{$0=n$0;ORS=RT}++n'
