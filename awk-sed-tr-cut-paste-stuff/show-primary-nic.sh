# Show primary NIC
route | grep -m1 ^default | awk '{print $NF}'
