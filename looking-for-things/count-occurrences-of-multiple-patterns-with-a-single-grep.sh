# Count occurrences of multiple patterns with a single grep
grep -EIho "pattern1|pattern2|pattern3" | sort | uniq -c
