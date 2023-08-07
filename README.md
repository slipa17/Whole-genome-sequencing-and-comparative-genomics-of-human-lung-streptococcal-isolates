# LuMiCol

### Description of codes and scripts

1. **AMR_VFD_codes.md:** The code performs antibiotic resistance gene and virulence factor identification using ```abricate``` and saves both the detailed results and a summary of the analysis in separate CSV files.
2. **Converting fasta sequences to gbk format.md:** The provided Python code demonstrates how to convert FASTA sequences to GenBank (GBK) format using the BioPython library.
3. **Converting multiple fasta sequences to a gbk format.md:** The provided Python code is an example of how to convert multiple FASTA sequences to GenBank (GBK) format using the BioPython library. The code reads the input FASTA file, converts each sequence to a SeqRecord object in GenBank format, stores them in a list, and then writes all the SeqRecord objects to the output GenBank file.                        4. **```split_headers_by_gap.sh```:** The provided bash script reads text files from a user-specified input folder, processes the files by removing everything after the first space in each line, and saves the processed files in a subfolder within the input directory named "processed." It then loops through each text file in the input directory and performs the processing operation.
6. **```concatenate.sh```:** The provided bash script is a concatenation script that takes all the fasta files (*.fasta) present in the current directory and concatenates them into a single output file specified by the user. It ensures that each sequence starts on a new line in the output file.
