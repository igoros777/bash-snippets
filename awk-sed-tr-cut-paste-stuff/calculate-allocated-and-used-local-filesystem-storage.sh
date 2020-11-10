# Calculate allocated and used local filesystem storage
df -klP -t ext2 -t ext3 -t ext4 -t reiserfs -t xfs | grep -oE ' [0-9]{1,}( +[0-9]{1,})+' | awk '{sum_alloc +=$1; sum_used += $2} END {printf "%.2f / %.2f (GB)\n", sum_alloc/1024/1024, sum_used/1024/1024}'
