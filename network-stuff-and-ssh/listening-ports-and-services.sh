# Listening ports and services
for i in $(lsof -i -P -n | grep -oP "(?<=\*:)[0-9]{2,}(?= \(LISTEN)" | sort -nu); do lsof -i :${i} | grep -v COMMAND | awk -v i=$i '{print $1,$3,i}' | sort -u; done | column -t
