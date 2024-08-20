### Replace ambiguities or non-ATGCN characters with N in the sequence lines
```
awk '/^>/ {print $0;next} {gsub(/[^ACGTNacgtn]/,"N"); printf "%s\n",$0}' input.fasta > output.fasta
```
This command uses awk to process the input FASTA file. It does the following:

1. If a line starts with >, it is a header line, so it is printed to the output file (output.fasta).
2. If a line does not start with >, it is a sequence line. Any non-ATGCN characters are replaced with N using gsub, and the resulting line is printed to 3. the output file.
4. The printf function is used to print the sequence lines with a newline character, regardless of whether or not the original sequence had line breaks. This ensures that the output file has the same sequence format as the input file.

### To append strain name to the FASTA headers
          
 ```
 sed 's/>.*/&_file/' file.faa > output_file_name.faa
    
 ```
* sed: The command-line utility for stream editing.
* s/>.*/&_file/: The sed substitution command. It searches for a pattern that matches >.* (a line starting with ">") and replaces it with  &_file (appending "_file" to the matched pattern). The & represents the matched pattern itself.
* file.faa: The input file on which the sed command is applied.
* ```> output_file_name.faa```: The output redirection symbol (>) followed by the output file name (output_file_name.faa). It redirects the modified output of the sed command to the specified file.

In summary, the command takes an input file named file.faa and modifies its contents by appending "_file" to each line that starts with ">", and then saves the modified output to a new file named output_file_name.faa.
     
  ### To append a random string "XXXX" after each FASTA header
     
```
sed 's/>\(.*\)/&_HOMD/' Strep_16S_sequences.fasta > Streptest.fasta
   
```
           
### Concatenating the file
       
Set up the directory containing the respective (.faa files), then run the command

```  
cat *.faa > output_file_name
```
* cat: The command used to concatenate and display the contents of files.
* *.faa: The wildcard *.faa matches all files in the current directory with the ".faa" extension. It represents multiple input files to be concatenated.
* ```> output_file_name```: The output redirection symbol (>) followed by the output file name (output_file_name). It redirects the concatenated output of the cat command to the specified file.

In summary, the command takes all the files in the current directory with the ".faa" extension and concatenates their contents into a single file named output_file_name. The resulting file will contain the combined contents of all the input files in the order they appear in the command.

### Self concantenation of a single multi-FASTA file from multiple header under a single header

This command creates a new fasta file that contains only the sequences from the original file without the header lines, and with a new header line at the beginning.

```
grep -v "^>" INPUT.fasta | awk 'BEGIN { ORS=""; print ">single_FASTA_header\n" } { print }' > OUTPUT.fasta
```
1. It takes a fasta file called "INPUT.fasta" and removes all lines that start with ">" (which are typically header lines in fasta format) using the grep -v "^>" command.
2. It then pipes the output to awk, which adds a header line "single_FASTA_header" to the beginning of the output using the BEGIN { ORS=""; print ">single_FASTA_header\n" } command. The ORS variable sets the output record separator to an empty string so that the lines are concatenated together without any spaces or line breaks. 
3. Finally, it prints the remaining lines using { print } and redirects the output to a new file called "new.fasta" using the > OUTPUT.fasta command.

To extract sequences from multiple input files, you can use a loop in a bash script that runs the command you provided for each file. Here's an example that modifies the command to add "_combined" to the output file name:
```
mkdir -p combined_output

for file in *.fasta
do
    output="combined_output/${file%%.*}_combined.fasta"
    grep -v "^>" "$file" | awk -v name="$file" 'BEGIN { ORS=""; print ">" name "\n" } { print }' > "$output"
done

```

1. The mkdir -p output command creates a new directory called output if it doesn't exist.
2. The output variable is set to the name of the output file, with the subfolder name output/ added to the beginning of the file name.
3. The grep and awk commands are the same as before.
4. The output of the command is redirected to a new file in the output subfolder with the name specified in the output variable.

## Grepping

#### Sequence counting 

```
grep -c ">" file name
      
```
The command grep -c ">" file_name is used to count the number of lines in a file that contain a specific pattern. Here's the breakdown of the command:

* grep: The command-line utility for searching patterns in files.
* ```-c``` : The option for counting the number of lines that match the pattern.
* ```">"```: The pattern to search for. In this case, it is the ">" character, which is commonly used to denote header lines in some file formats.
* file_name: The name of the file on which the grep command is applied. Replace file_name with the actual name or path of the file you want to search.

In summary, the command searches for lines in the specified file that contain the ">" character (typically used as a header indicator) and returns the count of such lines. It provides a quick way to determine the number of headers or specific occurrences of the ">" character in a file.

#### Taking one list and subtracting it from another

```
grep -Fvw -f HEADERFILE.txt full_list.txt 

```
* The options ```-F``` and ```-w``` ensure that the entire word is utilized as a literal string.
* ```-v``` prevents the matching patterns from being printed.
* ```-f``` filename.txt indicates that the input patterns are in the file.
Note:  HEADERFILE.txt : It is a set of lists written in a text file that is to be substracted from the main file 
                                            
#### Finding the specific word/genes 

```
grep -i "the word/genes you want to search in the file" file_name 
    
```
The command grep -i "the word/genes you want to search in the file" file_name is used to perform a case-insensitive search for a specific word or pattern in a file. Here's the breakdown of the command:

* grep: The command-line utility for searching patterns in files.
* ```-i```: The option for performing a case-insensitive search, meaning it will match the search pattern regardless of uppercase or lowercase letters.
* "the word/genes you want to search in the file": The word or pattern you want to search for within the file. Replace this with the actual word or pattern you want to search.
* file_name: The name of the file on which the grep command is applied. Replace file_name with the actual name or path of the file you want to search.

In summary, the command searches for occurrences of the specified word or pattern in the file, ignoring case sensitivity. It will return all lines in the file that contain a match, regardless of whether the letters are uppercase or lowercase. This command is useful for finding specific words or patterns within a file, regardless of their letter case.


#### Exporting the grep file to your main folder 
      
```
grep -i "the word/genes you want to search in the file" file_name containing the word/genes you want to search >> new_grepped_file_name with an extension
```           
                      New grepped_file_name extension: .txt, .faa etc
                      Note:  >> is the symbol used for the extraction of the grepped output to a new file.
  
#### Grepping multiple files at the same time
   
```

for file in *.fasta; do
  echo "Counting headers in $file"
  grep -c ">" $file
done
```

#### Finding (Counting) sub-directories in a directory

```
find directory_name -type d | wc -l
```
* ```find /path/to/directory``` : Searches within the specified directory.
* ```-type d``` : Limits the search to directories only.
* ```wc -l``` : Counts the number of lines, which corresponds to the number of directories found.

This command will return the total count of folders in the specified directory, including any subdirectories if they exist.

#### Finding (Counting) number of files in a directory

```
find directory_name -maxdepth 1 -type f | wc -l
```
* ```find``` : searches for files.
* ```-maxdepth 1``` : ensures it only searches the top level of the directory.
* ```-type f``` : specifies to look for files only.
* ```wc -l``` : counts the lines.


#### Creating a duplicate/backup of the directory

```
cp -r main_folder duplicate_folder
```
* ```cp```: The copy command.
* ```-r```: This option stands for "recursive" and is necessary when copying directories. It tells cp to copy the entire directory tree, including all subdirectories and files.
* ```main_folder```: The directory you want to copy.
* ```duplicate_folder```: The name of the new directory where the contents of main_folder will be copied.


 ##  Extracting the desired sequences from the file containing the total sequences

### Extraction of sequences from a single FASTA file with a identifier list
 
This code is using the seqtk utility to process a FASTA format file (INPUT.faa) and filter the sequences based on a list of sequence identifiers stored in a separate text file (IDs.txt).

* Installing seqtk using Conda
           
```
conda install -c bioconda seqtk

```
Then run the script:

```
seqtk subseq filename_of_the_multi-FASTA_file_from_which_sequences_will_be_extracted Protein_headers_file_list.txt > output_file_name.fasta 

```

* ```seqtk``` : The command to invoke seqtk, a tool for processing FASTA/Q files.
* ```subseq``` : The subcommand of seqtk used for subsetting sequences based on headers.
* ```filename_of_the_multi-FASTA_file_from_which_sequences_will_be_extracted``` : Replace this with the actual filename or path of the multi-FASTA file from which you want to extract sequences.
* ```Protein_headers_file_list.txt``` : Replace this with the actual filename or path of the text file that contains a list of protein headers (one header per line).
* ```>``` : The output redirection symbol to save the extracted sequences to a file.
* ```output_file_name.fasta``` : Replace this with the desired filename or path for the output file where the extracted sequences will be saved in FASTA format.

Make sure to have seqtk installed on your system, which can be done using conda with the command ```conda install -c bioconda seqtk```, as mentioned earlier.

After running the command, seqtk will read the protein headers from the Protein_headers_file_list.txt file and extract the corresponding sequences from the multi-FASTA file. The extracted sequences will be saved in the specified output file in FASTA format.







### Splitting the fasta headers of a single multi-fasta file

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

### Extraction of sequences from multiple FASTA and identifiers files using ```protein_fasta_extraction.sh```

```
./protein_fasta_extraction.sh path/to/input_dir path/to/output_dir

```

