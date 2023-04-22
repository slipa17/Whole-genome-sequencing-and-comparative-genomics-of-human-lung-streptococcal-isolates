#!/bin/bash

# Parse command line arguments for input and output directories
if [ $# -ne 2 ]; then
  echo "Usage: $0 input_dir output_dir"
  exit 1
fi
input_dir="$1"
output_dir="$2"

# Loop over input FASTA files
for input_file in "$input_dir"/*.faa; do
  # Construct corresponding identifier file name
  identifier_file="$input_dir/$(basename "$input_file" .faa)_IDs.txt"
  # Check if identifier file exists
  if [ -e "$identifier_file" ]; then
    # Construct output file name with "_extracted" suffix
    output_file="$output_dir/$(basename "$input_file" .faa)_extracted.faa"
    # Run bioawk command with input and output files
    bioawk -cfastx 'BEGIN{while((getline k <"'$identifier_file'")>0)i[k]=1}{if(i[$name])print ">"$name"\n"$seq}' "$input_file" > "$output_file"
    # Print status message
    echo "Processed $input_file with $identifier_file -> $output_file"
  else
    # Print error message if identifier file is missing
    echo "Error: Identifier file $identifier_file not found!"
  fi
done
