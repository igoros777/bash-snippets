# Combine all columns from `data01.csv` and all but first columns from `data02.csv`
awk -F',' -v OFS=',' '{$1=""; print $0}' data02.csv  | paste -d',' data01.csv - | sed 's/,,/,/'
2018-04-01,23,85,sda,12,sdb,23
2018-04-02,22,34,sda,15,sdb,43
2018-04-03,33,87,sda,83,sdb,54
2018-04-04,87,10,sda,22,sdb,63
2018-04-05,27,72,sda,46,sdb,34
