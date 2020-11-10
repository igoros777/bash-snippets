# Extract shell script paths and names
grep -oP '(?<=\s)(/[^/ ]*)+/?\.((b|d)?a|(m|pd)?k|z)?sh(?=(\s|$))'
