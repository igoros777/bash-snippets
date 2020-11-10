# Get individual exit code of each piped command in a chain
ls /var/www/icons | grep gif | ls -als >/dev/null ; echo ${PIPESTATUS[*]}
0 0 0
