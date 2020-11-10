# Print fields set in a Shell variable
fields="1 3 4"
command | awk -v fields="${fields}" 'BEGIN{ n = split(fields,f) }
{ for (i=1; i<=n; ++i) printf "%s%s", $f[i], (i<n?OFS:ORS) }'
