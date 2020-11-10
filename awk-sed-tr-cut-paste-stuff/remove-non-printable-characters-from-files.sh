# Remove non-printable characters from files
tr -cd '\11\12\15\40-\176' < infile > outfile
