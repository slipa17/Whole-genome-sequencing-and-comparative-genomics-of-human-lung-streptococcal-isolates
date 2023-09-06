#!/bin/bash

# Prompt the user for the input directory path containing the FASTA files
read -p "Enter the path to the directory containing the FASTA files: " fasta_dir

# Check if the input directory exists
if [ ! -d "$fasta_dir" ]; then
  echo "Error: The specified directory does not exist."
  exit 1
fi

# Prompt the user for the output directory path
read -p "Enter the path to the output directory: " output_dir

# Check if the output directory exists; if not, create it
if [ ! -d "$output_dir" ]; then
  mkdir -p "$output_dir"
fi

# Loop through each FASTA file in the input directory
for fasta_file in "${fasta_dir}"/*.fa; do
  # Create an output file name based on the input file name
  output_file="${output_dir}/$(basename "${fasta_file}" .fa).txt"

  # Extract protein IDs from the FASTA file
  grep -oE "^>(.+)" "${fasta_file}" | cut -d' ' -f1 | sed 's/^>//g' > "${output_file}"

  echo "Protein IDs extracted from ${fasta_file} and saved to ${output_file}."
done
