# A follow-up to the above
# get a Wikipedia definition for the top 10 most common words in "War and Peace"
# Using wped
d=/var/adm/bin
if [ ! -d ${d} ] ; then mkdir -p ${d} ; fi
wget -q -O ${d}/wped.php https://raw.githubusercontent.com/mevdschee/wped/master/wped.php
sed -i "s/'limit'=>3,/'limit'=>1,/g" ${d}/wped.php
chmod 755 ${d}/wped.php
ln -s ${d}/wped.php /usr/bin/wped
for w in `tr -c a-zA-Z '\n' < ${t}  | egrep -v "^(ll|ve)$" | sed '/^$/d' | sort | \
uniq -ic | sort -rn | grep -iv -f ${p}_${i} | awk '{print $NF}' | head -10` ; do \
echo -e "${w}\n----------------------\n\n"; wped -f ${w} ; done | grep -v "Search results"
# Or using wikit
npm i wikit -g
for w in `tr -c a-zA-Z '\n' < ${t}  | egrep -v "^(ll|ve)$" | sed '/^$/d' | sort | \
uniq -ic | sort -rn | grep -iv -f ${p}_${i} | awk '{print $NF}' | head -10` ; do \
echo -e "${w}\n ---------------------- \n\n"; wikit ${w} ; done
