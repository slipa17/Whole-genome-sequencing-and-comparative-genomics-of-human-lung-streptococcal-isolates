#!/bin/bash

# Prompt the user for the source folder containing subfolders with .fna files
read -p "Enter the path to the source folder with subfolders: " source_folder

# Ensure the specified source folder exists
if [ ! -d "$source_folder" ]; then
    echo "Error: The specified source folder does not exist."
    exit 1
fi

# Prompt the user for the destination folder where .fna files will be extracted
read -p "Enter the path to the destination folder: " destination_folder

# Ensure the specified destination folder exists, or create it if not
mkdir -p "$destination_folder"

# Use the find command to locate .fna files within subfolders and process them
find "$source_folder" -type f -name "*.fna" | while read -r fna_file; do
    # Get the file name without path
    filename=$(basename "$fna_file")

    # Copy the .fna file to the destination folder
    cp "$fna_file" "$destination_folder/$filename"
    
    # Optionally, you can also move (cut/paste) the file instead of copying it
    # mv "$fna_file" "$destination_folder/$filename"
done

echo "Extraction of .fna files from subfolders to '$destination_folder' is complete."
