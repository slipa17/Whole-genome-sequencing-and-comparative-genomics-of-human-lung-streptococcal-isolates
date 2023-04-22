
## Replace ambiguities or non-ATGCN characters with N in the sequence lines
```
awk '/^>/ {print $0;next} {gsub(/[^ACGTNacgtn]/,"N"); printf "%s\n",$0}' input.fasta > output.fasta
```
This command uses awk to process the input FASTA file. It does the following:

1. If a line starts with >, it is a header line, so it is printed to the output file (output.fasta).
2. If a line does not start with >, it is a sequence line. Any non-ATGCN characters are replaced with N using gsub, and the resulting line is printed to 3. the output file.
4. The printf function is used to print the sequence lines with a newline character, regardless of whether or not the original sequence had line breaks. This ensures that the output file has the same sequence format as the input file.

## To append strain name to the FASTA headers
          
           ```
           sed 's/>.*/&_file/' file.faa > output_file_name.faa
              ```
  ## To append a random string "XXXX" after each FASTA header
     
```
sed 's/>\(.*\)/&_HOMD/' Strep_16S_sequences.fasta > Streptest.fasta
   
```
           
## Concatenating the file
       
Set up the directory containing the respective (.faa files), then run the command

```  
cat *.faa > output_file_name
```
## Self concantenation of a single multi-FASTA file from multiple header under a single header
This command creates a new fasta filethat contains only t he sequences from the original file without the header lines, and with a new header line at the beginning.

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
    output="output/${file%%.*}_combined.fasta"
    grep -v "^>" "$file" | awk -v name="$file" 'BEGIN { ORS=""; print ">" name "\n" } { print }' > "$output"
done

```

1. The mkdir -p output command creates a new directory called output if it doesn't exist.
2. The output variable is set to the name of the output file, with the subfolder name output/ added to the beginning of the file name.
3. The grep and awk commands are the same as before.
4. The output of the command is redirected to a new file in the output subfolder with the name specified in the output variable.

## Grepping
     
          
          * Set up the directory first and then run:
          
    1. Sequence counting: 
    
       grep -c ">" file name
       
    
    
    2. Taking one list and subtracting it from another:
    
    grep -Fvw -f HEADERFILE.txt full_list.txt 
    
    
    (The options -F and -w ensure that the entire word is utilized as a literal string, -v prevents the matching patterns from being printed, and -f filename.txt indicates that the input patterns are in the file.)
     
                Note:  HEADERFILE.txt : It is a set of lists written in a text file that is to be substracted from the main file
                       full_list.txt : main file
                                            
    
    3. Finding the specific word/genes: 
    
    grep -i "the word/genes you want to search in the file" file_name 
    
    
   
    4. Exporting the grep file to your main folder: 
    
    grep -i "the word/genes you want to search in the file" file_name containing the word/genes you want to search >> new_grepped_file_name with an extension
                 
                      New grepped_file_name extension: .txt, .faa etc
                      Note:  >> is the symbol used for the extraction of the grepped output to a new file.
                      

 ##  Extracting the desired sequences from the file containing the total sequences

### Extraction of sequences from a single FASTA file with a identifier list
 
This code is using the bioawk utility to process a FASTA format file (INPUT.faa) and filter the sequences based on a list of sequence identifiers stored in a separate text file (IDs.txt).
            
 ```
 bioawk -cfastx 'BEGIN{while((getline k <"IDs.txt")>0)i[k]=1}{if(i[$name])print ">"$name"\n"$seq}' INPUT.faa > OUTPUT.faa
```
* This calls the bioawk utility and specifies the input format as FASTA (-cfastx).
* This is a BEGIN block, which is executed before processing the input file. It reads the identifiers from the IDs.txt file and stores them as keys in an associative array i
* For each sequence in the input file, this code checks if its identifier ($name) is present in the i array. If it is, the sequence is printed in FASTA format to STDOUT with the > symbol followed by the sequence identifier ($name), and the sequence itself ($seq) on the following line.
* Finally, the output is redirected to a new FASTA file named OUTPUT.faa. The > symbol indicates that the output will be written to a new file, rather than overwriting the input file.

So overall, this code extracts a subset of sequences from the INPUT.faa file based on their sequence identifiers, and writes the filtered sequences to a new FASTA file OUTPUT.faa.

### Extraction of sequences from multiple FASTA and identifiers files using ```protein_fasta_extraction.sh```

```
./protein_fasta_extraction.sh path/to/input_dir path/to/output_dir

```

