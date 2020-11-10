# Listing `at`schedule with job content
atq | while read i; do j=$(awk '{print $1}' <<<${i}); echo ${i}; at -c ${j} | sed -n '/marcinDELIMITER/{:a;n;/marcinDELIMITER/b;p;ba}'; done
11 Wed Jun 6 10:45:00 2018 a root
echo ok | mailx -s 'at test #1' your_email@gmail.com
12 Thu Jun 7 16:00:00 2018 a root
echo ok | mailx -s 'at test #2' your_email@gmail.com
