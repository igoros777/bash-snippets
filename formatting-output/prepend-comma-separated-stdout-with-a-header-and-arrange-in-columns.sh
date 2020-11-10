# Prepend comma-separated stdout with a header and arrange in columns
| (echo "COLUMN1_HEADER,COLUMN2_HEADER,COLUMN3_HEADER" && cat) | column -s',' -t
