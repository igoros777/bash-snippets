# Send email when PIDs exit
while kill -0 ${PIDS} 2> /dev/null; do sleep 1; done; mailx -s "${PIDS} are done" user@domain.com &disown
