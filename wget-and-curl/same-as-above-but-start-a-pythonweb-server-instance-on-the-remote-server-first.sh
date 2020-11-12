# Same as above, but start a python Web server instance on the remote server first
# On the remote_server:
d=/var/adm/bin && f=${d}/test.sh && echo -e "#\!/bin/bash\necho 'This is a test'" > ${f} && chmod 755 ${f}
cd ${d} && python -m SimpleHTTPServer 81
# On the local_server
bash <(curl -s0 http://remote_server.${domain}:81/test.sh)
This is a test
