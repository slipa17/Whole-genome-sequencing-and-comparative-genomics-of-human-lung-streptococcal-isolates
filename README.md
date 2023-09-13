# LuMiCol

### Description of codes 

1. **Antimicrobial_resistance_virulence_gene_search.md:** The code performs antibiotic resistance gene and virulence factor identification using ```abricate``` and saves both the detailed results and a summary of the analysis in separate CSV files.

2. **Converting fasta sequences to gbk format.md:** The provided Python code demonstrates how to convert FASTA sequences to GenBank (GBK) format using the BioPython library.

3. **Converting multiple fasta sequences to a gbk format.md:** The provided Python code is an example of how to convert multiple FASTA sequences to GenBank (GBK) format using the BioPython library. The code reads the input FASTA file, converts each sequence to a SeqRecord object in GenBank format, stores them in a list, and then writes all the SeqRecord objects to the output GenBank file.                        
 

### Description of scripts

1. **```concatenate.sh```:** The provided bash script is a concatenation script that takes all the fasta files (*.fasta) present in the current directory and concatenates them into a single output file specified by the user. It ensures that each sequence starts on a new line in the output file.

2. **```name_files_with_folder_name.sh```:** This script will rename files within subfolders of a given parent folder, you can use the following script. This script will recursively search for files in subfolders of the specified parent folder and perform the renaming operation. Here's how this script works:

* It asks the user for the parent folder path where subfolders and files are located.
* It checks if the parent folder exists.
* It defines a function rename_files() that performs the renaming operation. This function will be called recursively for each subfolder encountered.
* Inside the function, it iterates through files and subfolders within the given folder. If it encounters a file, it renames the file as before. If it encounters a subfolder, it recurses into that subfolder.
* After defining the function, the script starts the renaming process by calling rename_files with the parent folder path.
* This script will traverse through all subfolders within the provided parent folder and rename the files within each subfolder according to your original renaming operation.
* 
3. **```append_end_of_filename.sh```:** To add the "_HOMD" string to the end of the filename, just before the file extension, you can use the following approach in a Bash script. This script uses parameter expansion to separate the filename from its extension. Then, it constructs the new filename by appending "_HOMD" before the extension. Substitute the "_HOMD" with the required string.
4. **```split_headers_by_gap.sh```:** The provided bash script reads text files from a user-specified input folder, processes the files by removing everything after the first space in each line, and saves the processed files in a subfolder within the input directory named "processed." It then loops through each text file in the input directory and performs the processing operation.

5. **```extract_faa_from_subfolders.sh```:**
In this script:
* The user is prompted to provide the source folder containing subfolders with .faa files.
* The script checks if the source folder exists.
* The user is prompted to specify the destination folder where the .faa files will be extracted. If the destination folder doesn't exist, it's created.
* The find command searches for .faa files within subfolders of the source folder, and the while loop iterates through them.
* Each .faa file found is copied to the destination folder using the cp command. You can use mv instead of cp to move (cut/paste) the files if you prefer.

6. **```multi_fasta_sequence_extract.sh```**
This Bash script is designed to extract multiple FASTA sequences from a multi-FASTA file based on a list of protein IDs provided in multiple text files. It creates a new output directory to store the extracted sequences and processes each text file containing the protein IDs.

Here's a step-by-step breakdown of the script:

* Setting Input Files and Output Directory**:
   - You need to specify the name of the multi-FASTA file (`fasta_file`) from which sequences will be extracted.
   - You also need to specify the name of the output directory (`output_dir`) where the extracted sequences will be saved.
* Loop Through Text Files**:
   - The script uses a `for` loop to iterate through all `.txt` files in the current directory (`*.txt`).
* Creating Output File Name**:
   - For each text file, it creates an output file name by removing the `.txt` extension and appending `_extracted.fasta`.

* Loop Through Protein IDs in Text File**:
   - It then enters a `while` loop to read each line (protein ID) from the current text file.
   - Inside the loop, it uses the `seqtk subseq` command to extract the sequence corresponding to the current protein ID from the `fasta_file`.
   - The `<()` syntax is used to pass the protein ID as input to the `seqtk subseq` command, and the extracted sequence is appended to the output file specified earlier.

* Status Message**:
   - After processing all protein IDs in a text file, it prints a status message indicating that sequences have been extracted from the current text file and saved to the output file.

Overall, this script automates the process of extracting sequences from a multi-FASTA file based on protein IDs provided in multiple text files. It performs this operation for each text file found in the directory and saves the extracted sequences in the specified output directory with appropriate file names.
