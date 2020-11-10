# Generate random alphanumeric file of certain size
head -c 1M </dev/urandom | tr -dc A-Za-z0-9 > $(mktemp)
