# Remove all but the first line matching pattern
sed '2,${/pattern/d;}'
awk '/pattern/&&f++ {next} 1'
