# Find ten largest files owned by oracle user
# Modified in the past five days, don't cross mountpoints, don't search NFS.
for i in \
$(find /opt -mount ! -fstype nfs -type f -user oracle -mtime -5 -printf '%s %p\n' 2>/dev/null | sort -nr | head -10 | \
awk '{ s = ""; for (i = 2; i <= NF; i++) s = s $i " "; print s }')
do ls -alh "${i}"
done
