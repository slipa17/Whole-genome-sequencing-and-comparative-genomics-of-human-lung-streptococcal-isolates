
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
* sed: The command-line utility for stream editing.
* s/>.*/&_file/: The sed substitution command. It searches for a pattern that matches >.* (a line starting with ">") and replaces it with  &_file (appending "_file" to the matched pattern). The & represents the matched pattern itself.
* file.faa: The input file on which the sed command is applied.
* ```> output_file_name.faa```: The output redirection symbol (>) followed by the output file name (output_file_name.faa). It redirects the modified output of the sed command to the specified file.

In summary, the command takes an input file named file.faa and modifies its contents by appending "_file" to each line that starts with ">", and then saves the modified output to a new file named output_file_name.faa.
     
  ## To append a random string "XXXX" after each FASTA header
     
```
sed 's/>\(.*\)/&_HOMD/' Strep_16S_sequences.fasta > Streptest.fasta
   
```
           
## Concatenating the file
       
Set up the directory containing the respective (.faa files), then run the command

```  
cat *.faa > output_file_name
```
* cat: The command used to concatenate and display the contents of files.
* *.faa: The wildcard *.faa matches all files in the current directory with the ".faa" extension. It represents multiple input files to be concatenated.
* ```> output_file_name```: The output redirection symbol (>) followed by the output file name (output_file_name). It redirects the concatenated output of the cat command to the specified file.

In summary, the command takes all the files in the current directory with the ".faa" extension and concatenates their contents into a single file named output_file_name. The resulting file will contain the combined contents of all the input files in the order they appear in the command.

## Self concantenation of a single multi-FASTA file from multiple header under a single header

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

1. Sequence counting: 

```
grep -c ">" file name
      
```
The command grep -c ">" file_name is used to count the number of lines in a file that contain a specific pattern. Here's the breakdown of the command:

* grep: The command-line utility for searching patterns in files.
* ```-c``` : The option for counting the number of lines that match the pattern.
* ```">"```: The pattern to search for. In this case, it is the ">" character, which is commonly used to denote header lines in some file formats.
* file_name: The name of the file on which the grep command is applied. Replace file_name with the actual name or path of the file you want to search.

In summary, the command searches for lines in the specified file that contain the ">" character (typically used as a header indicator) and returns the count of such lines. It provides a quick way to determine the number of headers or specific occurrences of the ">" character in a file.

2. Taking one list and subtracting it from another:
```
grep -Fvw -f HEADERFILE.txt full_list.txt 

```
* The options ```-F``` and ```-w``` ensure that the entire word is utilized as a literal string.
* ```-v``` prevents the matching patterns from being printed.
* ```-f``` filename.txt indicates that the input patterns are in the file.
Note:  HEADERFILE.txt : It is a set of lists written in a text file that is to be substracted from the main file 
                                            
3. Finding the specific word/genes: 

```
grep -i "the word/genes you want to search in the file" file_name 
    
```
The command grep -i "the word/genes you want to search in the file" file_name is used to perform a case-insensitive search for a specific word or pattern in a file. Here's the breakdown of the command:

* grep: The command-line utility for searching patterns in files.
* ```-i```: The option for performing a case-insensitive search, meaning it will match the search pattern regardless of uppercase or lowercase letters.
* "the word/genes you want to search in the file": The word or pattern you want to search for within the file. Replace this with the actual word or pattern you want to search.
* file_name: The name of the file on which the grep command is applied. Replace file_name with the actual name or path of the file you want to search.

In summary, the command searches for occurrences of the specified word or pattern in the file, ignoring case sensitivity. It will return all lines in the file that contain a match, regardless of whether the letters are uppercase or lowercase. This command is useful for finding specific words or patterns within a file, regardless of their letter case.


4. Exporting the grep file to your main folder: 
      
```
grep -i "the word/genes you want to search in the file" file_name containing the word/genes you want to search >> new_grepped_file_name with an extension
```           
                      New grepped_file_name extension: .txt, .faa etc
                      Note:  >> is the symbol used for the extraction of the grepped output to a new file.
  
  5. Grepping multiple files at the same time
   
```

for file in *.fasta; do
  echo "Counting headers in $file"
  grep -c ">" $file
done
```

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

