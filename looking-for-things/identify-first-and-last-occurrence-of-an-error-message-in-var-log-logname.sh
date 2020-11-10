# Identify first and last occurrence of an error message in /var/log/logname
zgrep -h "error message" `find /var/log/ -type f -name "logname*" | sort -V | sed '1,1{H;1h;d;};$G'` | sed -n '1p;$p'
