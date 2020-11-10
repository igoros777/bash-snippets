# Remove only the first line matching pattern
sed '0,/pattern/{/pattern/d;}'
awk '!/pattern/ || f++'
