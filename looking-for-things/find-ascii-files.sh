# Find ASCII files
find . -type f -exec grep -Iq . {} \; -and -print
