# Continuous grep on I/O redirection
netstat -T -tupac | grep --line-buffered "1699/java"
