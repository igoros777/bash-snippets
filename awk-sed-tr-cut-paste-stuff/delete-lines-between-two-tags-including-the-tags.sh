# Delete lines between two tags including the tags
sed "/<tag open>/,/<\/tag close>/d"
