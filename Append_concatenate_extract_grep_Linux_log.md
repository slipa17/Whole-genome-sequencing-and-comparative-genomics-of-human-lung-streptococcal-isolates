## To append strain name to the FASTA headers
          
           ```
           sed 's/>.*/&_file/' file.faa > output_file_name.faa
              ```
  ## To append a random string "XXXX" after each FASTA header
     
```
sed 's/>\(.*\)/&_HOMD/' Strep_16S_sequences.fasta > Streptest.fasta
   
```
           
## Concatenating the file
       
            
* Set up the directory containing the respective (.faa files), then run the command
              ```  
             cat *.faa > output_file_name
             ```
### Self concantenation of a single multi-FASTA file from multiple header under a single header
This command creates a new fasta filethat contains only t he sequences from the original file without the header lines, and with a new header line at the beginning.

```
grep -v "^>" INPUT.fasta | awk 'BEGIN { ORS=""; print "single_FASTA_header.fasta\n" } { print }' > OUTPUT.fasta
     
 # Grepping
     
          
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
