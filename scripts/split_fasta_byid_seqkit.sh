#!/bin/bash

# Prompt the user for the input directory
read -p "Enter the input directory containing FASTA files: " input_directory

# Check if the input directory exists
if [ ! -d "$input_directory" ]; then
    echo "Input directory '$input_directory' does not exist."
    exit 1
fi

# Function to split FASTA files using seqkit
split_fasta_files() {
    local input_file="$1"
    local output_dir="$2"

    seqkit split --by-id "$input_file" -O "$output_dir"

}

# Prompt the user for the output directory
read -p "Enter the output directory where split files will be saved: " output_directory

# Create the output directory if it doesn't exist
mkdir -p "$output_directory"

# Process each FASTA file in the input directory
for fasta_file in "$input_directory"/*.fasta; do
    split_fasta_files "$fasta_file" "$output_directory"
done

echo "FASTA file splitting completed."
