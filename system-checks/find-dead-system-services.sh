# Find dead system services
for i in $(chkconfig --list | grep "`runlevel | awk '{print $NF}'`:on" | awk '{print $1}' | sort) ; do /sbin/service ${i} status 2>&1 | egrep "not [a-z]{1,}ing|[kpsd][ea]d\b"; done
