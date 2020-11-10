# Flush awk buffers when piping from STDIN for continuous output
| awk '{print $1; fflush();}'
# or for older POSIX-compliant versions of awk
| awk '{print $1; system("");}'
