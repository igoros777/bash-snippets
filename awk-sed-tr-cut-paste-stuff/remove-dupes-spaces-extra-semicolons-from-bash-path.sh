# Remove dupes, spaces, extra semicolons from BASh PATH
PATH=$(xargs -d: -n1 <<<${PATH} | sed 's/ //g' | sort -u | xargs | sed 's/\b*//g;s/ /:/g')
