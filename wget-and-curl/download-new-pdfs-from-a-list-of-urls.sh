# Download new PDFs from a list of URLs
wget -r --level=1 -H --timeout=2 -nd -N -np --accept=pdf -e robots=off -i urls.txt
