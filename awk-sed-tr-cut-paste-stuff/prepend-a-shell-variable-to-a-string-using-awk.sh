# Prepend a shell variable to a string using awk
| awk -v var="${shell_var}" '{print var$0}'
