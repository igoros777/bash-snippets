# Find files containing specified keywords
grep -m1 -lrnw "/path/name/" -E -e "keyword1|keyword2" 2>/dev/null | sed -r 's/(^Binary file | matches$)//g' | sort -u
# Example:
IFS=''; grep -m1 -lrnw "/etc/sysconfig/" -E -e "`hostname -s`" 2>/dev/null | sed -r 's/(^Binary file | matches$)//g' | sort -u | while read line ; do file "${line}" ; done | column -s: -t
/etc/sysconfig/network                             ASCII text
/etc/sysconfig/networking/profiles/default/hosts   ASCII English text
/etc/sysconfig/rhn/systemid                        XML  document text
/etc/sysconfig/rhn/systemid.old                    XML  document text
/etc/sysconfig/rhn/systemid.save                   XML  document text
