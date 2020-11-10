# Re-run the last command from interactive shell history
fc -e -
# OR
eval $(sed -e 's/^[[:space:]]*//' <(fc -nl -1))
