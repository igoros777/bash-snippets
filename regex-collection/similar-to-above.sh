# Similar to above
# Print 'word1 word3'
i="tag1 word1 tag2 word2 tag3 word3 tag4"
echo $i | grep -oP '(?<=tag[13] )\w+(?= tag[24])' | paste -s -d" "
