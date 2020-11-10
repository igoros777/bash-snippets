# Another method for continuous grep
# And other commands, using unbuffer (yum -y install expect)
unbuffer netstat -T -tupac | grep "1699/java"
