# Send notification if OpenSSL cert is expiring within a week
cert=/etc/ssl/private/vsftpd.pem; if [ $( echo "scale=0;$(date -d"$(openssl x509 -enddate -noout -in "${cert}" | awk -F'=' '{print $NF}')" +'%s') - $(date +'%s')"|bc -l) -le 604800 ]; then echo "${cert} is expiring soon. Time to renew." | mailx -s "$(hostname) says SSL cert is about to expire" your_email@domain.com; fi
