# Show broadcast address
ip addr show "$(route | grep -m1 ^default | awk '{print $NF}')" | grep -w inet |grep -v 127.0.0.1|awk '{ print $4}'
