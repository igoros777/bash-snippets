# User wget retry and timeout options
wget -q --load-cookies "${cookie_file}" --retry-connrefused \
  --waitretry=1 --read-timeout=10 --timeout=8 -t 0 --random-wait \
  --no-check-certificate -e use_proxy=off -O - "${url}"
