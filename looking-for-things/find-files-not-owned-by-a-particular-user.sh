# Find files not owned by a particular user
find "$(pwd)" -type f \! -user igor -print
