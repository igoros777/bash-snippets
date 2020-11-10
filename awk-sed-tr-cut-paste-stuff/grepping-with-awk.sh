# Grepping with awk
echo "514/tcp   open  shell" | awk '{match($1,"^[0-9]+/[a-z]+") && match($2,"open")}END{print $1,$2,$3}'
