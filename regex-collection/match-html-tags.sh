# Match HTML tags
grep -oE "<([a-z]+)([^<]+)*(?:>(.*)<\/\1>|\s+\/>)"
