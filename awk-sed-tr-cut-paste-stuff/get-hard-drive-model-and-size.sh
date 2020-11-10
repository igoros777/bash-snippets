# Get hard drive model and size
for i in `fdisk -l 2>/dev/null | egrep -o "/dev/sd[a-z]" | sort -u` ; do hdparm -I ${i} 2>/dev/null; done | egrep "Model|size.*1000" | awk -F: '{print $NF}' | awk 'NR%2{printf $0" ";next;}1'
