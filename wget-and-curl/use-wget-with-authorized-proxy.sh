# Use wget with authorized proxy
export http_proxy=proxy_server:port
wget -Y --proxy-user=${username} --proxy-passwd=${password} \
