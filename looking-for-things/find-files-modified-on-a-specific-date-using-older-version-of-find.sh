# Find files modified on a specific date using older version of find
touch /tmp/mark.start -d "2017-01-26 23:59"
touch /tmp/mark.end -d "2017-01-27 23:59"
find /etc -newer /tmp/mark.start ! -newer /tmp/mark.end
