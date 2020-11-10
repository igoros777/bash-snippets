# Show OS release
grep -m1 -h [0-9] /etc/{*elease,issue} 2>/dev/null | head -1
