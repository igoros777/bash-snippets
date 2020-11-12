# Find missing lines between two files
diff --new-line-format="" --unchanged-line-format="" <(sort -u file1) <(sort -u file2)
