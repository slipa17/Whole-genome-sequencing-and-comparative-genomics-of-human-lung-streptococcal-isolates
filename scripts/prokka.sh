#!/bin/bash

# Set the path to the top-level folder containing your FASTA files and subfolders
fasta_folder="$PATH/to/top-level folder"

# Set the output folder where Prokka results will be saved
output_folder="$PATH/to/output folder"

# Find all .fna files recursively under the fasta_folder and process them
find "$fasta_folder" -type f -name "*.fna" | while read -r fasta_file; do
    # Get the file name without extension to use as the Prokka output name
    output_name=$(basename "$fasta_file" .fna)

    # Create a subdirectory in the output folder with the same name as the output_name
    mkdir -p "$output_folder/$output_name"

    # Run Prokka on the current FASTA file
    prokka --outdir "$output_folder/$output_name" --prefix "$output_name" "$fasta_file"
done
