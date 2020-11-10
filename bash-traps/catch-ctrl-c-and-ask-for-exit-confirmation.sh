# Catch CTRL-C and ask for exit confirmation
ctrlc_counter=0
function ctrlc-catch()
{
	let ctrlc_counter++
	case $((${ctrlc_counter})) in
		([1]) echo -e "\nHit CTRL-C again if you meant to do it" ;;
		([2]) echo -e "\nHit CTRL-C just once more to exit" ;;
		([3-9]|[0-9]{2,}) echo -e "\nThe script is exiting on your CTRL-C" && exit 130 ;;
	esac
}
trap ctrlc-catch SIGINT
