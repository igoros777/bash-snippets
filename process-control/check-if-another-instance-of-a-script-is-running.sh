# Check if another instance of a script is running
this_script=$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")
if [ $(pidof -x "${this_script}" | wc -w) -gt 2 ]; then exit 1; fi
