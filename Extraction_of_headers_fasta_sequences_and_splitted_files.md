
## Extraction of the respective headers lists from the different multifasta files:

Specify the path to the directory containing the FASTA files

```fasta_dir="$PATH/to/genome FASTA files"```

Loop through each FASTA file in the input directory and create an output file name based on the input file name

```
for fasta_file in "${fasta_dir}"*.fa; do
    output_file="${fasta_file}.txt"
```

Extract protein IDs from the FASTA file

``` 
grep -oE "^>(.+)" "${fasta_file}" | cut -d' ' -f1 | sed 's/^>//g' > "${output_file}"
echo "Protein IDs extracted from ${fasta_file} and saved to ${output_file}."
done
```

## Extraction of multiple fasta sequences from a multiple headers text file:


First make an output_directory:  
Input files
```
fasta_file="filename of the multi-FASTA file from which sequences will be extracted"
output_dir="output_directory_name"
```
Loop through .txt files
```for txt_file in *.txt; do```

Create output file name
```
output_file="${txt_file%.txt}_extracted.fasta"
output_path="$output_dir/$output_file"
```
Execute seqtk subseq command for each .txt file
```
seqtk subseq "$fasta_file" "$txt_file" >> "$output_path"
```
Print status message
```
echo "Sequences extracted from $txt_file and saved to $output_path"
done
```

* Inside the headers directory add all the individual headers.txt files and the concatenated multi-FASTA file (source file), so that the code can search for the headers in the source file and extract the fasta sequences.

## Splitting the files into individual protein id's from a multi-fasta sequences:

```
input_directory="input_files"
output_directory="output_sequences"

#Create the output directory if it doesn't exist
mkdir -p "$output_directory" 

split_fasta() {  #Function to split sequences and extract headers
    local input_file="$1"
    local output_dir="$2"

#Create a subdirectory for each input file in the output directory
       
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
            ### Extract the new header
            header=${line:1}
            sequence_content=""
        else
            ### Append sequence content to the current sequence
            sequence_content+="$line\n"
        fi
    done < "$input_file"
#Save the last sequence
    if [ -n "$header" ]; then
        echo -e ">$header\n$sequence_content" > "$subdirectory/$header.fasta"
    fi
} 


# Process each FASTA file in the input directory
for fasta_file in "$input_directory"/*.fasta; do
    split_fasta "$fasta_file" "$output_directory"
done
```


Make sure you have the following directory structure:

markdown
Copy code
- Your_Script_Directory/
  - script.sh
  - input_files/
    - file1.fasta
    - file2.fasta
    - ...
  - output_sequences/
    - file1/
      - header1.fasta
      - header2.fasta
      - ...
    - file2/
      - header1.fasta
      - header2.fasta
      - ...
    - ...
The script assumes that your multi-FASTA files are stored in the "input_files" directory and creates a separate subdirectory for each input file in the "output_sequences" directory. Each subdirectory contains the individual header files for the corresponding input file.

Save the script in a file, for example, "split_multi_multi_fasta.sh" in fasta_headers directory. Make sure the input files are in the "input_files" directory.

To execute the script, make it executable using the following command:
```
 chmod +x split_multi_multi_fasta.sh
```
Then, run the script:
```
./split_multi_multi_fasta.sh (If this particular script shows any error, then try the script below)
zsh split_multi_multi_fasta.sh
```


## Splitting the fasta headers of a single multi-fasta file

* Installing pyfaidx using conda

```
install -c bioconda pyfaidx

```
Then run the script:

```
faidx --split-files filename_of_the_fasta_files

```

* ```faidx``` : The command to invoke faidx, a tool for splitting FASTA/Q files.
* ```--split-files``` : This option specifies to be used for splitting the fasta files.
* ```filename_of_the_fasta_files``` : Replace this with the actual filename or path of the multi-FASTA file from which you want to split sequences.


