# Grepping with awk on a specific column
ls -l | awk '$3 == root'
ls -l | awk '$NF ~ "gz"'
ls -l | awk '$5 > 84674560'
