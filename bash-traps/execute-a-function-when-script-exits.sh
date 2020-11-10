# Execute a function when script exits
function cleanup-on-exit()
{
	/bin/rm -f ${tmpfile} 2>/dev/null
	echo "All done!"
}
trap cleanup-on-exit EXIT
