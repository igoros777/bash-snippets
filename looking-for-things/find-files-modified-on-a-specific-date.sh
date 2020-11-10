# Find files modified on a specific date
find /etc/ -newermt 2016-03-04 ! -newermt 2016-03-05 -ls
