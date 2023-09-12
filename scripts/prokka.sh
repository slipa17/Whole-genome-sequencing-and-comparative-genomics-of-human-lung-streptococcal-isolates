#!/bin/bash

# Ask the user for the path to the folder containing .fna files
read -p "Enter the path to the folder containing .fna files: " input_folder

# Check if the specified input folder exists
if [ ! -d "$input_folder" ]; then
    echo "Error: The specified input folder does not exist."
    exit 1
fi

# Ask the user for the path to the output folder
read -p "Enter the path to the output folder: " output_folder

# Create the output folder if it doesn't exist
mkdir -p "$output_folder"

# Loop through each .fna file in the input folder and run Prokka
for fna_file in "$input_folder"/*.fna; do
    # Get the base name of the file (without the path or extension)
    base_name=$(basename "$fna_file" .fna)

    # Run Prokka on the current .fna file
    prokka --outdir "$output_folder/$base_name" --prefix "$base_name" "$fna_file"
done

echo "Prokka annotation of .fna files in '$input_folder' is complete. Results saved in '$output_folder'."
