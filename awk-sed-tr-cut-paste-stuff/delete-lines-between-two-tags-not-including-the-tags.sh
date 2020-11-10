# Delete lines between two tags not including the tags
sed "/<tag open>/,/<\/tag close>/{//!d}"
