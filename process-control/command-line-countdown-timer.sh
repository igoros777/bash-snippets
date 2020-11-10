# Command-line countdown timer
sec=10; d1=$(($(date +%s) + ${sec})); 
while [ "${d1}" -ge $(date +%s) ]; do 
  echo -ne "$(date -u --date @$((${d1} - `date +%s` )) +%H:%M:%S)\r"; 
done
