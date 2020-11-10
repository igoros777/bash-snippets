# Find config files in /etc and make compressed backup tarball in /etc/backup
t=/etc/backup ; d=`date +'%Y-%m-%d_%H%M%S'` ; mkdir -p ${t}/${d}
find /etc -not -path "${t}/${d}*" -type f \( -name "*\.conf*" -o -name "*\.cgf" -o -name "*\.cnf" \) -execdir /bin/cp -pf {} /etc/backup/${d}/{} \;
cd ${t} ; tar cfz ${d}.tgz ${d} ; /bin/rm -rf ${d}
