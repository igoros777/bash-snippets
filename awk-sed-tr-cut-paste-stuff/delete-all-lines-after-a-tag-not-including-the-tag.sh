# Delete all lines after a tag not including the tag
sed '/<\tag close>/,$d'
