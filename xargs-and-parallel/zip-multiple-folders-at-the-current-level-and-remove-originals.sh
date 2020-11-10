# zip multiple folders at the current level and remove originals
find . -maxdepth 1 -mindepth 1 -type d -print0 | parallel --will-cite --gnu --null -j $(grep -c proc /proc/cpuinfo) 'zip -r -q {}{.zip,} && /bin/rm -r {}'
