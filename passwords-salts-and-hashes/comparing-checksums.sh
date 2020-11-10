# Comparing Checksums
# Compare known MD5 checksum to the actual checksum of a file
echo "${checksum}  ${filename}" | md5sum -c -
# Similar to previous example but the checksum is stored in a file of its own
cmp ${filename}.md5 <(md5sum ${filename} | awk '{print $1}') && echo $?
# Compare checksums of two files
cmp <(md5sum ${filename}) <(md5sum ${filename2})
# OR
diff <(md5sum ${filename}) <(md5sum ${filename2})
# Compare checksums on local and remote servers
diff <(md5sum ${filename}) <(ssh -qtT root@ncc1701 "md5sum ${filename}")
# Save a list of checksums for all /etc/*.conf files
tmpfile=/var/tmp/checksums_etc_$(date +'%F').txt
find /etc -mount ! -fstype nfs -type f -name "*\.conf" -exec md5sum {} \; | tee -a ${tmpfile}
# Read from that list and verify checksums
md5sum -c ${tmpfile} | grep FAILED$
