# Save and use authentication cookie
wget -O ~/.domain_cookie_tmp "https://${domain}/login.cgi?login=${username}&amp;password=${password}"
grep "^cookie" ~/.domain_cookie_tmp | awk -F'=' '{print $2}' > ~/.domain_cookie
wget -c --no-cookies --header="Cookie: enc=`cat ~/.domain_cookie`" -i "${url_file}" -nc
