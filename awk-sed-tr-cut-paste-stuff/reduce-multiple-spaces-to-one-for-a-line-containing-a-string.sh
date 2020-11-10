# Reduce multiple spaces to one for a line containing a string
iostat | sed -n '/^sd/s/ \+/ /gp'
