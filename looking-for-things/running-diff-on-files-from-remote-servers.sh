# Running diff on files from remote servers
diff <(ssh -qtT server01 "sudo su - root -c 'fdisk -l 2>/dev/null | grep ^Disk'") <(ssh -qtT server02 "sudo su - root -c 'fdisk -l 2>/dev/null | grep ^Disk'")
