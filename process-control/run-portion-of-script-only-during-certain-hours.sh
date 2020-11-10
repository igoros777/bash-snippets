# Run portion of script only during certain hours
# In this example the script executes every half hour but will only email a report for the 9AM run
if [ $(date +'%k%M') -gt 859 ] && [ $(date +'%k%M') -lt 930 ]; then
cat "${f}" | mailx -E -r "${mailfrom}" -s "${mailsubject}" "${mailto}"
fi
