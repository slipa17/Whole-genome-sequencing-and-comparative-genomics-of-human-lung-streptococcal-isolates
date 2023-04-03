
```
awk '/^>/ {print $0;next} {gsub(/[^ACGTNacgtn]/,"N"); printf "%s\n",$0}' input.fasta > output.fasta

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
grep -v "^>" INPUT.fasta | awk 'BEGIN { ORS=""; print ">single_FASTA_header.fasta\n" } { print }' > OUTPUT.fasta
```
1. It takes a fasta file called "INPUT.fasta" and removes all lines that start with ">" (which are typically header lines in fasta format) using the grep -v "^>" command.
2. It then pipes the output to awk, which adds a header line "single_FASTA_header" to the beginning of the output using the BEGIN { ORS=""; print ">Core_genome.fasta\n" } command. The ORS variable sets the output record separator to an empty string so that the lines are concatenated together without any spaces or line breaks. 
3. Finally, it prints the remaining lines using { print } and redirects the output to a new file called "new.fasta" using the > OUTPUT.fasta command.

To extract sequences from multiple input files, you can use a loop in a bash script that runs the command you provided for each file. Here's an example that modifies the command to add "_combined" to the output file name:
```
mkdir -p output

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
                      

 #  Extracting the desired sequences from the file containing the total sequences
    
            
  ```
  * First install the package seqtk :
        
    conda install -c bioconda seqtk 
                
  * Set up the directory and then run:
         
    seqtk subseq original_fasta_file Protein_list.txt > output_file_name
```

Note:  protein_id list: write the name of the list that is to be extracted separately in a text file one after another and save it. Then pass that .txt file to the above code. The above code is for extracting a single or an individual file.

Performing this using a loop:
1. Loop through all .faa files in the current directory.
2. Extract the file name without the extension
3. Read the list of protein names from the corresponding .txt file
4. Extract the desired protein records from the current .faa file

```

#!/bin/bash

for faa_file in *.faa; do

  name="${faa_file%.*}"
  
  names="$(tr '\n' '|' < "$name.txt")"
  
  bioawk -c fastx -v names="$names" '$name ~ names {print ">"$name"\n"$seq}' "$faa_file" > "$name.faa"
done
```
