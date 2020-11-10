# Roundup number to the nearest multiple of 10
awk '{print sprintf("%.0f",$0/10)*10}'
