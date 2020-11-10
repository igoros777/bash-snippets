# Checking if file is older than so many seconds
if [ `expr $(date +%s) - $(stat -c %Y ${testfile})` -gt ${threshold_seconds} ]
