# Extract URLs using `awk`
awk 'BEGIN{
RS="</a>"
IGNORECASE=1
}
{
  for(k=1;k<=NF;k++){
    if ( $k ~ /href/){
      gsub(/.*href=\042/,"",$k)
      gsub(/\042.*/,"",$k)
      print $(k)
    }
  }
}'
