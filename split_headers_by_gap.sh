#!/bin/bash

# Ask the user to enter the input folder
read -p "Enter the path to the input folder: " input_dir

# Check if the input folder exists and is a directory
if [ ! -d "$input_dir" ]; then
    echo "Error: Input folder does not exist or is not a directory."
    exit 1
fi

# Create a subfolder within the input directory for processed files
output_dir="$input_dir/processed"
mkdir -p "$output_dir"

# Loop through each text file in the input directory
for file in "$input_dir"/*.txt; do
    # Check if the file exists and is a regular file
    if [ -f "$file" ]; then
        # Extract the filename without the extension
        filename=$(basename "${file%.*}")

        # Remove everything after the first space in the file
        cut -d' ' -f1 "$file" > "${output_dir}/${filename}_processed.txt"

        echo "Processed: ${filename}_processed.txt"
    fi
done
