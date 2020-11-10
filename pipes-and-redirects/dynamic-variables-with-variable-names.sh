# Dynamic variables with variable names
i=1 ; eval "$(echo var${i})"=value ; eval echo $(echo $`eval echo "var${i}"`)
