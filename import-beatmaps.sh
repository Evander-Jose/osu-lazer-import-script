#!/bin/bash

echo "Importing beatmaps..."
beatmap_count=$( ls | grep -c .*.osz$ )
echo "Found ${beatmap_count}"

beatmaps=( $( ls | grep .*.osz$ ) )

# Bless your soul, ChatGPT...

# Loop through each .zip file in the current directory
for zip_file in *.zip; do
    unzip "$zip_file" -d "$(dirname "$zip_file")"
    rm "$zip_file"
done

# Store the output into an array
IFS=$'\n' read -r -d '' -a files < <(ls | grep -o '.*.osz' && printf '\0')

final_argument=""

# Iterate through the array
for file in "${files[@]}"; do

    echo "Importing: $file"
    # Perform any other operations with $file here
    final_argument+="\"$file\"  "
    final_argument=$(echo "$final_argument" | sed 's/ $//')

done

eval ./osu.AppImage $final_argument

