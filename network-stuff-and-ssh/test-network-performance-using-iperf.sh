# Test network performance using iPerf
# On the destination server start the listener process
iperf -s -l <cache_size>k -p <port> -P <max_simultaneous_connections>
# On the source server start the sender process
iperf -c <destination_server> -P <simultaneous_threads> -i <report_interval> -t <duration> -p <port>
