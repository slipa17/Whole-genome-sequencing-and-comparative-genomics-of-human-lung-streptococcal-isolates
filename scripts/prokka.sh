#!/bin/bash

# Set the path to the folder containing your FASTA files
fasta_folder="$PATH/to/genome FASTA files"

# Set the output folder where Prokka results will be saved
output_folder="$PATH/to/output folder"

# Loop through each FASTA file in the folder and run Prokka
for fasta_file in $fasta_folder/*.fna; do
    # Get the file name without extension to use as the Prokka output name
    output_name=$(basename "$fasta_file")

    # Run Prokka on the current FASTA file
    prokka --outdir "$output_folder/$output_name" --prefix "$output_name" "$fasta_file"
done
