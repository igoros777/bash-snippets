# Monitor filesystem space and file changes in real time
watch -d -n 5 "df -kP; echo; find \"${directory}\" -maxdepth 2 -mindepth 1 -type f -name \"${filename_mask}*\" -newermt \"-${max_file_age} seconds\" -exec ls -FlAt {} \; | sort -k9V | column -t | head -${max_count}"
