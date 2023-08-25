# LuMiCol

### Description of codes 

1. **AMR_VFD_codes.md:** The code performs antibiotic resistance gene and virulence factor identification using ```abricate``` and saves both the detailed results and a summary of the analysis in separate CSV files.

2. **Converting fasta sequences to gbk format.md:** The provided Python code demonstrates how to convert FASTA sequences to GenBank (GBK) format using the BioPython library.

3. **Converting multiple fasta sequences to a gbk format.md:** The provided Python code is an example of how to convert multiple FASTA sequences to GenBank (GBK) format using the BioPython library. The code reads the input FASTA file, converts each sequence to a SeqRecord object in GenBank format, stores them in a list, and then writes all the SeqRecord objects to the output GenBank file.                        
 4. **```split_headers_by_gap.sh```:** The provided bash script reads text files from a user-specified input folder, processes the files by removing everything after the first space in each line, and saves the processed files in a subfolder within the input directory named "processed." It then loops through each text file in the input directory and performs the processing operation.

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


