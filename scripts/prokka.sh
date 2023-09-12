#!/bin/bash

# Prompt the user for the path to the top-level folder containing .fna files
read -p "Enter the path to the top-level folder containing .fna files: " fasta_folder

# Ensure the specified folder exists
if [ ! -d "$fasta_folder" ]; then
    echo "Error: The specified folder does not exist."
    exit 1
fi

# Set the output folder where Prokka results will be saved
output_folder="$fasta_folder/prokka_output"

# Create the output folder if it doesn't exist
mkdir -p "$output_folder"

# Find all .fna files recursively under the fasta_folder and process them
find "$fasta_folder" -type f -name "*.fna" | while read -r fasta_file; do
    # Get the file name without extension to use as the Prokka output name
    output_name=$(basename "$fasta_file" .fna)

    # Create a subdirectory in the same folder as the .fna file for Prokka output
    mkdir -p "$(dirname "$fasta_file")/$output_name"

    # Run Prokka on the current FASTA file
    prokka --outdir "$(dirname "$fasta_file")/$output_name" --prefix "$output_name" "$fasta_file"
done
