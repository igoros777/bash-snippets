# Insert line before the first match
sed -i "1,/^${match_me}/ {/^${match_me}/i\
      ${insert_me}
      }" /tmp/file
# or in one line
sed "0,/^${match_me}/s/^${match_me}/${insert_me}\n&/"
