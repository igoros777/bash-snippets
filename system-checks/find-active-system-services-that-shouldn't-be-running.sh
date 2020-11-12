# Find active system services that shouldn't be running
# i.e. services that were started manually
for i in $(chkconfig --list | grep "`runlevel | awk '{print $NF}'`:off" | awk '{print $1}' | sort) ; do /sbin/service ${i} status 2>&1 | egrep "is running"; done
