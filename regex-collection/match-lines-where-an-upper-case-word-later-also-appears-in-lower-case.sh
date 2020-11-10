# Match lines where an upper-case word later also appears in lower-case
grep -P '(\b[A-Z]{2,}+\b)(?=.*(?=\b[a-z]{2,}+\b)(?i)\1)'
