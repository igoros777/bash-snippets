# Sort while ignoring the header line
# one-line header; data file
(head -n 1; sort) < file.txt
# one-line header; read from pipe
command | (read -r; printf "%s\n" "$REPLY"; sort)
# three-line header; read from pipe
command | (for i in $(seq 3); do read -r; printf "%s\n" "$REPLY"; done; sort)
