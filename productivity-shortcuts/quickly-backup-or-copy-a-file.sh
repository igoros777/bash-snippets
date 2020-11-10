# Quickly backup or copy a file
cp -p file.txt{,_`date +'%Y-%m-%d_%H%M%S'`}
