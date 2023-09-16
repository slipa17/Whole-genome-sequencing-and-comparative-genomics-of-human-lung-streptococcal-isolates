#!/bin/bash

input_directory="extracted_sequences"
output_directory="output_sequences"

# Create the output directory if it doesn't exist
mkdir -p "$output_directory"

# Function to split sequences and extract headers
split_fasta() {
    local input_file="$1"
    local output_dir="$2"

    # Create a subdirectory for each input file in the output directory
    local file_basename=$(basename "$input_file")
    local subdirectory="$output_dir/${file_basename%.*}"
    mkdir -p "$subdirectory"

    local header=""
    local sequence_content=""

    while IFS= read -r line; do
        if [[ $line =~ ^\> ]]; then
            # Save the previous sequence, if any
            if [ -n "$header" ]; then
                echo -e ">$header\n$sequence_content" > "$subdirectory/$header.fasta"
            fi
            # Extract the new header
            header=${line:1}
            sequence_content=""
        else
            # Append sequence content to the current sequence
            sequence_content+="$line\n"
        fi
    done < "$input_file"

    # Save the last sequence
    if [ -n "$header" ]; then
        echo -e ">$header\n$sequence_content" > "$subdirectory/$header.fasta"
    fi
}

# Process each FASTA file in the input directory
for fasta_file in "$input_directory"/*.fasta; do
    split_fasta "$fasta_file" "$output_directory"
done

