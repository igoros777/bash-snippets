# Remove SSH banner from script output
Sample output from which you want to strip out the banner text:
cat /tmp/testfile2.txt
hostname1
This is the SSH banner that you would like to remove
And this is the second line of the banner
and the third line
2.6.32-696.18.7.el6.x86_64
hostname2
This is the SSH banner that you would like to remove
And this is the second line of the banner
and the third line
2.6.32-696.18.7.el6.x86_64
awk '/^This.*SSH.*/{p=1;sub(/[\t]*.*/,"")}!p;/^and.*line$/{p=0}'
