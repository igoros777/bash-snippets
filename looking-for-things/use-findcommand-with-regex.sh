# Use find command with regex
find "$(pwd)" -type f -regextype posix-extended -regex '^.*\.(mkv|avi|mp4|mov|qt|wmv|mng|webm|flv|vob|ogg|ogv|rm|mpg|mpeg|ts4)$'
