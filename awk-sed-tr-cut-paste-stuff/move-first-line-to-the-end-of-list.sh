# Move first line to the end of list
sed '1,1{H;1h;d;};$G'
