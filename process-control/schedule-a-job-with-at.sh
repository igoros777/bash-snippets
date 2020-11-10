# Schedule a job with `at`
at "now +30min" <<<"echo ok | mailx -s 'at test #1' your_email@gmail.com"
at "teatime tomorrow" <<<"echo ok | mailx -s 'at test #2' your_email@gmail.com"
