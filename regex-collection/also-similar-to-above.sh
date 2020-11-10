# Also similar to above
# Print 'word1 word3'
i="tag1 word1 tag2 word2 tag3 word3 tag4"
echo $i | tee >(grep -oP '(?<=tag1 )\w+(?= tag2)') >(grep -oP '(?<=tag3 )\w+(?= tag4)') | sed '1d;1!G;h;$!d' | paste -s -d" "
