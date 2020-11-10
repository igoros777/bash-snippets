# Extract executables with paths from output of `ps aux` 
grep -oP '(?<=:[0-9]{2} )(/[^/ ]*)+/?(?= )'
