#!/bin/bash

# Prompt the user for the input directory path
read -p "Enter the input directory path: " input_directory

# Check if the specified input directory exists
if [ ! -d "$input_directory" ]; then
  echo "Error: The specified input directory does not exist."
  exit 1
fi

# Prompt the user for the output directory path
read -p "Enter the output directory path: " output_directory

# Create the output directory within the input directory if it doesn't exist
if [ -z "$output_directory" ]; then
  output_directory="$input_directory/output"
  mkdir -p "$output_directory"
else
  # Check if the specified output directory exists; if not, create it
  if [ ! -d "$output_directory" ]; then
    mkdir -p "$output_directory"
  fi
fi

# Initialize a counter for renaming duplicates
counter=1

# Create an associative array to store seen headers
declare -A header_seen

# Create a log file to record information about duplicates
log_file="$output_directory/duplicate_log.txt"

# Loop through each FASTA file in the input directory
for input_file in "$input_directory"/*.fasta; do
    # Get the filename without the directory path
    filename="$(basename "$input_file")"
    
    # Set the output file path
    output_file="$output_directory/$filename"

    while read -r line; do
        # Check if the line is a header line (starts with ">")
        if [[ $line == ">"* ]]; then
            header="${line#>}"  # Remove the ">" character
            if [[ -n "${header_seen[$header]}" ]]; then
                # Header is a duplicate; append a unique number
                new_header="${header}_${counter}"
                counter=$((counter+1))
                
                # Log duplicate header information to the log file
                echo "Duplicate header in '$filename': $header -> $new_header" >> "$log_file"
            else
                # Header is not a duplicate; use it as is
                new_header="$header"
            fi
            header_seen["$header"]=1  # Mark the header as seen
            echo ">$new_header" >> "$output_file"
        else
            # Not a header line; write the sequence data as is
            echo "$line" >> "$output_file"
        fi
    done < "$input_file"

    echo "Duplicate headers in '$filename' have been renamed in '$output_file'."
done

echo "Processing of all FASTA files in '$input_directory' is complete."

# Display the path to the log file
echo "Duplicate log file saved as: $log_file"
