# unzip multiple zip files in the current folder and remove originals
ls *zip | parallel --will-cite --gnu -j $(grep -c proc /proc/cpuinfo) 'unzip -q {} && /bin/rm {}'
