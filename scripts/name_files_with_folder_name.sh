#!/bin/bash

# Ask the user for the parent folder path
echo -n "Enter the parent folder path: "
read parent_folder

# Check if the parent folder exists
if [ ! -d "$parent_folder" ]; then
    echo "Parent folder not found."
    exit 1
fi

# Function to perform renaming operation
rename_files() {
    local folder_path="$1"
    local folder_name=$(basename "$folder_path")
    
    for file in "$folder_path"/*; do
        if [ -f "$file" ]; then
            new_filename="${folder_name}_$(basename "$file")"
            mv "$file" "$folder_path/$new_filename"
            echo "Renamed $(basename "$file") to $new_filename"
        elif [ -d "$file" ]; then
            rename_files "$file"  # Recurse into subfolder
        fi
    done
}

# Start renaming from the parent folder
rename_files "$parent_folder"
