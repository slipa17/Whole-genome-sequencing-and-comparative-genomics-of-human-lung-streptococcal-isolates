#!/bin/bash

# Ask the user for the folder name
echo -n "Enter the folder path: "
read folder_path

# Check if the folder exists
if [ ! -d "$folder_path" ]; then
    echo "Folder not found."
    exit 1
fi

folder_name=$(basename "$folder_path")

for file in "$folder_path"/*; do
    if [ -f "$file" ]; then
        new_filename="${folder_name}_$(basename "$file")"
        mv "$file" "$folder_path/$new_filename"
        echo "Renamed $(basename "$file") to $new_filename"
    fi
done
