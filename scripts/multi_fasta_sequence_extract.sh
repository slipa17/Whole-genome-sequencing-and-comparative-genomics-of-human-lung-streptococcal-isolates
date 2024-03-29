
#!/bin/bash

#Input files
fasta_file="filename of the multi-FASTA file from which sequences will be extracted"
output_dir="output_directory_name"

 #Loop through .txt files
for txt_file in *.txt; do
  # Create output file name
  output_file="${txt_file%.txt}_extracted.fasta"
  output_path="$output_dir/$output_file"

   #Loop through protein IDs in each .txt file
  while IFS= read -r protein_id; do
    # Execute seqtk subseq command for each protein ID
    seqtk subseq "$fasta_file" <(echo "$protein_id") >> "$output_path"
  done < "$txt_file"

  #Print status message
  echo "Sequences extracted from $txt_file and saved to $output_path"
done
