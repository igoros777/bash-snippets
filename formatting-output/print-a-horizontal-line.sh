# Print a horizontal line
rule () {
	printf -v _hr "%*s" $(tput cols) && echo ${_hr// /${1--}}
}
rule -
