#!/bin/bash

# Ask the user for the input directory
read -p "Enter the input directory path: " input_dir

# Ask the user for the output filename
read -p "Enter the output filename: " output_file

# Initialize an empty array to store input filenames
input_files=()

# Collect all fasta files in the specified input directory and add them to the input_files array
for file in "$input_dir"/*.faa; do
    if [ -f "$file" ]; then
        input_files+=("$file")
    fi
done

# Check if there are any fasta files to concatenate
if [ ${#input_files[@]} -eq 0 ]; then
    echo "No fasta files found in the specified input directory."
    exit 1
fi

# Concatenate fasta files and ensure each sequence starts on a new line
for file_name in "${input_files[@]}"; do
    cat "$file_name" >> "$output_file"
    echo >> "$output_file"
done

echo "Fasta files from $input_dir successfully concatenated to $output_file."
