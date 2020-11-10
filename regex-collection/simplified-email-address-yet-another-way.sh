# Simplified email address (yet another way)
grep -oP "([\w.-]+)@([\w.-]+)\.([a-zA-Z.]{2,6})" /var/log/maillog
