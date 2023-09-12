#!/bin/bash

# Prompt the user for the source folder containing subfolders with .faa files
read -p "Enter the path to the source folder with subfolders: " source_folder

# Ensure the specified source folder exists
if [ ! -d "$source_folder" ]; then
    echo "Error: The specified source folder does not exist."
    exit 1
fi

# Prompt the user for the destination folder where .faa files will be extracted
read -p "Enter the path to the destination folder: " destination_folder

# Ensure the specified destination folder exists, or create it if not
mkdir -p "$destination_folder"

# Use the find command to locate .faa files within subfolders and process them
find "$source_folder" -type f -name "*.faa" | while read -r faa_file; do
    # Get the file name without path
    filename=$(basename "$faa_file")

    # Copy the .faa file to the destination folder
    cp "$faa_file" "$destination_folder/$filename"
    
    # Optionally, you can also move (cut/paste) the file instead of copying it
    # mv "$faa_file" "$destination_folder/$filename"
done

echo "Extraction of .faa files from subfolders to '$destination_folder' is complete."
