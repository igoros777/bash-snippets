# Find the last-modified file
find "$(pwd)" -type f -printf '%T+ %p\n' | sort -r | head -1
