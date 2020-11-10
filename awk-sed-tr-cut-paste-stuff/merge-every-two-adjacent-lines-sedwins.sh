# Merge every two adjacent lines (sed wins)
awk 'NR%2{printf $0" ";next;}1'
# or
sed 'N;s/\n/ /'
