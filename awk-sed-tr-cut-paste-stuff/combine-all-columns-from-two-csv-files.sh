# Combine all columns from two CSV files
The `data01.csv` sample:
2018-04-01,23,85
2018-04-02,22,34
2018-04-03,33,87
2018-04-04,87,10
2018-04-05,27,72
The `data02.csv` sample:
2018-04-01,sda,12,sdb,23
2018-04-02,sda,15,sdb,43
2018-04-03,sda,83,sdb,54
2018-04-04,sda,22,sdb,63
2018-04-05,sda,46,sdb,34
paste -d',' data01.csv data02.csv
2018-04-01,23,85,2018-04-01,sda,12,sdb,23
2018-04-02,22,34,2018-04-02,sda,15,sdb,43
2018-04-03,33,87,2018-04-03,sda,83,sdb,54
2018-04-04,87,10,2018-04-04,sda,22,sdb,63
2018-04-05,27,72,2018-04-05,sda,46,sdb,34