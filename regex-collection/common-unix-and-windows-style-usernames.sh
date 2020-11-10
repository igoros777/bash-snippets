# Common Unix- and Windows-style usernames
grep -oP "(?<=\W)[a-z-]{5,16}([0-9]{1,2})?(?=\W)"
