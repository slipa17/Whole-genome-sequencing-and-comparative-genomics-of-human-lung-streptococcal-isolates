#!/bin/bash

# Prompt the user for the input directory
read -p "Enter the input directory containing FASTA files: " input_directory

# Check if the input directory exists
if [ ! -d "$input_directory" ]; then
    echo "Input directory '$input_directory' does not exist."
    exit 1
fi

# Prompt the user for the output directory
read -p "Enter the output directory where processed files will be saved: " output_directory

# Create the output directory if it doesn't exist
mkdir -p "$output_directory"

# Function to rename FASTA headers
rename_fasta_headers() {
    local input_file="$1"
    local output_dir="$2"

    awk 'BEGIN{OFS=FS="_"}{if(/^>/){CUR=$1;{if(CUR==PRE){NUM++}else{NUM=1}};$1="";print CUR"."NUM $0;PRE=CUR}else{print $0}}' "$input_file" > "$output_dir/$(basename "$input_file")"
}

# Process each FASTA file in the input directory
for fasta_file in "$input_directory"/*.fasta; do
    rename_fasta_headers "$fasta_file" "$output_directory"
done

echo "FASTA header renaming completed."
