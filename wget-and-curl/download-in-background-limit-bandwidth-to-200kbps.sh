# Download in background, limit bandwidth to 200KBps
# Do not ascend to parent URL, download only newer files, do not create new directories, download only `htm[l]`,`php`, and `pdf`, set 5-second timeout per link.
wget -b --limit-rate=200k -np -N -m -nd --accept=htm,html,php,pdf --wait=5 "${url}"
