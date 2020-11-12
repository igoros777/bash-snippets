# Print text from the last occurrence of a tag line to the end of file
tac ${yourfile} | grep "${yourtag}" -m 1 -B 9999 | tac
