# To append strain name to the FASTA headers
          
         
          * Set up the directory containing the respective (.faa files), then run the command
           
           sed 's/>.*/&_file/' file.faa > output_file_name.faa
           


 # Concatenating the file
       
            
            * Set up the directory containing the respective (.faa files), then run the command
                
             cat *.faa > output_file_name
             

     
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
  * First install the package bioawk:
        
    conda install -c bioconda bioawk
                
  * Set up the directory and then run:
         
bioawk -c fastx -v names="$(tr '\n' '|' < protein_name_list.txt)" '$name ~ names {print ">"$name"\n"$seq}' proteins.faa > extracted_proteins.faa
```

Note:  protein_id list: write the name of the list that is to be extracted separately in a text file one after another and save it. Then pass that .txt file to the above code.

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

An alternative in python
```
import os
import re

# Set the input and output directories
input_dir = "path/to/input/directory"
output_dir = "path/to/output/directory"

# Read all .faa and .txt files in the input directory
faa_files = [f for f in os.listdir(input_dir) if f.endswith(".faa")]
txt_files = [f for f in os.listdir(input_dir) if f.endswith(".txt")]

# Loop through all .faa files
for faa_file in faa_files:
    # Extract the file name without the extension
    name = re.sub(r"\.faa$", "", faa_file)

    # Read the corresponding .txt file
    txt_file = os.path.join(input_dir, name + ".txt")
    with open(txt_file, "r") as f:
        names = [line.strip() for line in f]

    # Read the .faa file
    records = []
    with open(os.path.join(input_dir, faa_file), "r") as f:
        for line in f:
            if line.startswith(">"):
                records.append([line.strip()])
            else:
                records[-1].append(line.strip())

    # Extract the desired protein records
    extracted_records = [r for r in records if r[0][1:] in names]

    # Write the extracted records to a file
    with open(os.path.join(output_dir, name + ".faa"), "w") as f:
        for record in extracted_records:
            f.write(record[0] + "\n")
            f.write(record[1] + "\n")
```
