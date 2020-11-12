# Another way to use authentication cookie
cookie=$(mktemp)
wget --save-cookies ${cookie} --keep-session-cookies --post-data "username=${username}&password=${password}" --delete-after "${login_url}"
wget --load-cookies ${cookie} -O "${output_file}" "main_url"
