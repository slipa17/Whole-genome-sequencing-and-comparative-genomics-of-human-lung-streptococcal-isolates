#!/bin/bash

read -p "Enter the output filename: " output_file

# Initialize an empty array to store input filenames
input_files=()

# Collect all fasta files in the current directory and add them to the input_files array
for file in *.fasta; do
    if [ -f "$file" ]; then
        input_files+=("$file")
    fi
done

# Check if there are any fasta files to concatenate
if [ ${#input_files[@]} -eq 0 ]; then
    echo "No fasta files found in the current directory."
    exit 1
fi

# Concatenate fasta files and ensure each sequence starts on a new line
for file_name in "${input_files[@]}"; do
    cat "$file_name" >> "$output_file"
    echo >> "$output_file"
done
