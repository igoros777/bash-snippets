# Grab date in "DD-MON-YYYY" format
grep -iPo "\b((31(?! (FEB|APR|JUN|SEP|NOV)))|((30|29)(?! FEB))|(29(?= FEB (((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00)))))|(0?[1-9])|1\d|2[0-8])[- /.](JAN|FEB|MAR|MAY|APR|JUL|JUN|AUG|OCT|SEP|NOV|DEC)[- /.]((1[6-9]|[2-9]\d)\d{2})\b"
