# Show allocated disk space:
df -klP -t xfs -t ext2 -t ext3 -t ext4 -t reiserfs | grep -oE ' [0-9]{1,}( +[0-9]{1,})+' | awk '{sum_used += $1} END {printf "%.0f GB\n", sum_used/1024/1024}'
