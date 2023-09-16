#!/bin/bash

# Set the source directories and destination directory
source_folder_parent="test/"  # Replace with the path to the parent directory containing the 241 folders
destination_folder="test/destination_folder/"  # Replace with the path to the destination folder

# Create the destination folder if it doesn't exist
mkdir -p "$destination_folder"

# Counter for the number of files moved
count=0

# Loop through each source folder
for folder in "$source_folder_parent"*/; do
    # Loop through each file in the current source folder
    for file in "$folder"/*; do
        # Generate a unique name for the file in the destination folder
        unique_name="${folder##*/}_$(basename "$file")"
        
        # Move the file to the destination folder with the unique name
        mv "$file" "$destination_folder$unique_name"

        # Increment the counter
        ((count++))
        
        # Check if we have moved 16695 files, then break out of the loop
        if [ "$count" -eq 16695 ]; then
            break 2
        fi
    done
done

echo "20726 files moved successfully to $destination_folder."
