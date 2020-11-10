# Preserve symlinks when using `sed -i`
cd /etc/httpd/conf.d && sed -i --follow-symlinks 's/192.168.1/192.168.2/g' *.conf
