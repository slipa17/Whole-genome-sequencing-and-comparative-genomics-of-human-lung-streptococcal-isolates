#!/bin/bash

# Prompt the user for the path to the top-level folder containing .fna files
read -p "Enter the path to the top-level folder containing .fna files: " fasta_folder

# Ensure the specified folder exists
if [ ! -d "$fasta_folder" ]; then
    echo "Error: The specified folder does not exist."
    exit 1
fi

# Prompt the user for the path to the output folder
read -p "Enter the path to the output folder: " output_folder

# Create the output folder if it doesn't exist
mkdir -p "$output_folder"

# Find all .fna files recursively under the fasta_folder and process them
find "$fasta_folder" -type f -name "*.fna" | while read -r fasta_file; do
    # Get the file name without extension to use as the Prokka output name
    output_name=$(basename "$fasta_file" .fna)

    # Create a subdirectory within the output folder for Prokka output
    output_subfolder="$output_folder/$output_name"
    mkdir -p "$output_subfolder"

    # Run Prokka on the current FASTA file
    prokka --outdir "$output_subfolder" --prefix "$output_name" "$fasta_file"
done
