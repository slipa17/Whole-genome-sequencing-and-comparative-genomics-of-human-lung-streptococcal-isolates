#!/bin/bash

# Prompt the user for the path to the top-level folder containing .fna files
read -p "Enter the path to the top-level folder containing .fna files: " fasta_folder

# Ensure the specified folder exists
if [ ! -d "$fasta_folder" ]; then
    echo "Error: The specified folder does not exist."
    exit 1
fi

# Find all .fna files recursively under the fasta_folder and process them
find "$fasta_folder" -type f -name "*.fna" | while read -r fasta_file; do
    # Get the file name without extension to use as the Prokka output name
    output_name=$(basename "$fasta_file" .fna)

    # Create a subdirectory within the same folder as the .fna file for Prokka output
    output_folder="$(dirname "$fasta_file")/$output_name"

    # Create the output folder if it doesn't exist
    mkdir -p "$output_folder"

    # Run Prokka on the current FASTA file
    prokka --outdir "$output_folder" --prefix "$output_name" "$fasta_file"
done
