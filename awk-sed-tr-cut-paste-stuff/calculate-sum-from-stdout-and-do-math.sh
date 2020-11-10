# Calculate sum from stdout and do math
cat $file | awk '{ SUM += $1} END { print ( SUM/1024 )"MB" }'
