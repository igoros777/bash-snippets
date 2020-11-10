# Distribute files into subfolders
# Let's say you have a bunch of files in a folder that you want to more or less 
# evenly arrange into subfolders:
source_path="/home/igor/"
per_subfolder=10
# Count the number of matching original files; divide it by how many files you want
# in each subfolder; and add 1 for the possible remiander
(( i = $(find "${source_path}" -mindepth 1 -maxdepth 1 -type f -name "netapp_unix_clients*\.txt" | wc -l) / per_subfolder ))
# Create subfolders and move files
j=1; k=1; mkdir -p "${source_path}/temp_dir_${j}"
find "${source_path}" -mindepth 1 -maxdepth 1 -type f -name "netapp_unix_clients*\.txt" | \
while read f; do
if [ ${k} -le ${per_subfolder} ]; then
/bin/mv "${f}" "${source_path}/temp_dir_${j}"/; (( k = k + 1 )); else k=1; (( j = j + 1 )); mkdir -p "${source_path}/temp_dir_${j}"; fi
done
