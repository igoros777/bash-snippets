# Find possible memory settings in application configuration files
ls -ltr $(ack "=[0-9]{1,}[mMgGkK]" | awk -F: '{print $1}')
