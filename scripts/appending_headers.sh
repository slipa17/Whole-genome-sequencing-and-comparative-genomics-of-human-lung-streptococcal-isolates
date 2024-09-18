#!/bin/bash

# Define the directory containing your FASTA files
input_directory="./fasta_folder"
output_directory="./appended_fasta_folder"

# Create output directory if it doesn't exist
mkdir -p $output_directory

# Loop through all multi-fasta files in the input directory
for fasta_file in $input_directory/*.faa; do
    # Extract the base filename (without the path and extension)
    filename=$(basename -- "$fasta_file")
    strain_name="${filename%.*}"  # Get strain name by removing file extension
    
    # Append strain name to each header line in the file
    sed "s/>.*/&_${strain_name}/" "$fasta_file" > "$output_directory/${filename}"
    
    echo "Processed: $fasta_file -> $output_directory/${filename}"
done

echo "All files processed."
