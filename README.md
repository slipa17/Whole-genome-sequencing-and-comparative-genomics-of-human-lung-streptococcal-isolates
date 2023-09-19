# LuMiCol

### Description of codes 

1. **Antimicrobial_resistance_virulence_gene_search.md:** The code performs antibiotic resistance gene and virulence factor identification using ```abricate``` and saves both the detailed results and a summary of the analysis in separate CSV files.

2. **Converting fasta sequences to gbk format.md:** The provided Python code demonstrates how to convert FASTA sequences to GenBank (GBK) format using the BioPython library.

3. **Converting multiple fasta sequences to a gbk format.md:** The provided Python code is an example of how to convert multiple FASTA sequences to GenBank (GBK) format using the BioPython library. The code reads the input FASTA file, converts each sequence to a SeqRecord object in GenBank format, stores them in a list, and then writes all the SeqRecord objects to the output GenBank file.

4. **Extracting multiple fasta sequences from a single gbk file.md:** The provided Python code uses the Biopython library to extract gene sequences from a GenBank file (genome.gb) based on a list of gene names provided in a text file (gene_name_list.txt). It then creates a new FASTA file (gene_name.fasta) containing the extracted gene sequences.

5. **Extraction of rRNA fasta sequences from a .gbk file.md:**  This script reads a GenBank file, extracts rRNA features along with their locus tags and product descriptions, creates SeqRecord objects for each rRNA feature, and writes them to a new FASTA file. It's a useful tool for extracting specific features from GenBank files and converting them to FASTA format for downstream analysis.

6. **Extraction_of_headers_fasta_sequences_and_splitted_files.md:**

   
  - Extraction of the respective headers lists from the different multifasta files.md: This Bash script is designed to process a directory containing multiple FASTA files. It extracts protein IDs from each FASTA file and saves them in separate text files.

 - Extraction of multiple fasta sequences from a multiple headers text file.md: This Bash script is designed to extract multiple FASTA sequences from a multi-FASTA file based on a list of protein IDs provided in text files.

 - Splitting the files into individual protein id's from a multi-fasta sequences.md: This Bash script is designed to split a multi-FASTA file into individual files based on protein IDs (headers). It creates a separate file for each protein sequence and stores them in an organized directory structure.

7. **FastANI.md**: This script orchestrates the use of FastANI to calculate the Average Nucleotide Identity between genome sequences and then uses custom R and Python scripts to create visualizations of conserved regions based on FastANI results.

8. **Strep_COG_analysis.md**: This code reads data from a CSV file, calculates value counts, creates DataFrames, merges them, and then visualizes the data in the form of a heatmap. The script also provides flexibility in selecting specific columns for analysis and visualization.
                                              

### Description of scripts

1. **```FastANI.py```:** This script takes input genomes and a FastANI visualization output, generates a visual representation of conserved regions, and saves the plot in a user-specified format. It allows users to customize various aspects of the plot's appearance, such as colormap, link colors, and link style.  Let's break down the code step by step:

* Importing Required Modules:

  - The script starts by importing necessary Python modules. These modules include argparse for handling command-line arguments, csv for reading CSV files, pathlib.Path for working with file paths, Bio.SeqIO for parsing FASTA files, GenomeViz and related modules for creating the visualization, and ColorCycler for setting the color map.

* Main Function:

  - The main() function is the entry point of the script. It orchestrates the entire visualization workflow.

* Parsing Command-Line Arguments:

  - The argparse module is used to parse command-line arguments. These arguments specify input and output files, colormap settings, link colors, and whether to use curved-style links. The following arguments are expected:
  - fasta_file1: Path to the first input genome in FASTA format.
  - fasta_file2: Path to the second input genome in FASTA format.
  - visual_file: Path to the FastANI visual result file.
  - plot_outfile: Path to the output plot file (e.g., JPG, PNG, SVG, or PDF).
  - --cmap: Optional argument for specifying the colormap for the plot (default is "hsv").
  - --link_color: Optional argument for specifying the color of the links in the plot (default is "grey").
  - --curve: Optional flag to enable curved-style links.

* Loading Genome Fasta Information:

  - Information about the two input genomes is loaded. This includes their names and total sequence lengths. The SeqIO.parse function is used to iterate through the sequences in the input FASTA files to calculate the total sequence lengths.

* Loading FastANI Visual Result:

  - The FastANI visual result file is loaded and parsed. The script reads the file line by line, extracting information about the conserved regions. Each line of the file contains tab-separated values that describe the conserved regions' positions and identities between the two genomes.

* Creating the GenomeViz Object:

  - The GenomeViz object (gv) is created to prepare for generating the visualization. Various parameters are set to configure the plot's appearance, including figure width, track heights, tick styles, and more.

* Setting Colormap and Colors:

  - The script sets the colormap (color palette) to be used for the visualization using ColorCycler.set_cmap(). This can be customized by the user.
Colors for conserved regions are generated based on the number of regions detected.

* Generating Features and Links:

  - The script iterates through the detected conserved regions and generates features and links for the visualization. Features represent regions on the genomes, and links connect these regions.
Features for both genomes are added to their respective tracks (track1 and track2) on the plot.
Links are added to connect corresponding regions on the two genomes. The links' color, style, and curvature are determined by the FastANI results.

* Creating and Saving the Plot:

  - The final plot is generated using gv.plotfig(), which creates the visualization of conserved regions.
A colorbar is added to the plot to provide a color scale for the links.
The generated plot is saved to the specified output file.

* Command Line Execution:

  - The get_args() function retrieves the command-line arguments, and if the script is run as the main program (not imported as a module), the main() function is executed.
 
In summary, this script takes input genomes and a FastANI visualization output, generates a visual representation of conserved regions, and saves the plot in a user-specified format. It allows users to customize various aspects of the plot's appearance, such as colormap, link colors, and link style.

2. **```FastANI.R```:** This R script reads FastANI output, loads the query and subject sequences, and generates a visualization of the core-genome comparison between the two sequences. The resulting visualization is saved as a PDF file with a name based on the original FastANI visualization filename. Let's break down the code step by step:

* Script Purpose and Usage Comment:

  - The script begins with comments that describe its purpose, usage, and expected output.
  - It specifies that the script is intended for visualizing the core-genome comparison produced by FastANI.

* Parsing Command Line Arguments:

  - The script extracts command line arguments using the commandArgs(TRUE) function. It expects three arguments: <query sequence in fasta format>, <subject sequence>, and <fastANI visualization output>. These arguments represent file paths.
  - The extracted arguments are assigned to variables: query_fasta, subject_fasta, and fastANI_visual_file.

* Loading Required Libraries:

  - The script loads the genoPlotR library, which is used for generating genome comparison plots.
 
* Reading FastANI Output:

  - The read_comparison_from_blast() function is used to read the FastANI visualization output file (fastANI_visual_file) and assign it to the variable comparison. The try() function is used to handle any potential errors that may occur during reading.
 
* Reading Sequences:

  - The read_dna_seg_from_file() function is used to read the query and subject sequences from their respective FASTA files (query_fasta and subject_fasta).
  - The query sequence is assigned to the variable Query, and the subject sequence is assigned to Ref. The try() function is again used to handle any potential errors.
 
* Plotting Core-Genome Comparison:

  - The variable plotTitle is created by concatenating the names of the query and subject sequences with " v/s " in between.
  - A PDF device is opened using pdf() with a filename that includes the original visualization filename (fastANI_visual_file) and ".pdf" as the extension.
  - The plot_gene_map() function is called to generate the core-genome comparison plot. It takes parameters such as DNA segments (Query and Ref), comparisons (comparison), plot title (plotTitle), and other plot settings.
  - The dev.off() function is called to close the PDF device.
 
In summary, this R script reads FastANI output, loads the query and subject sequences, and generates a visualization of the core-genome comparison between the two sequences. The resulting visualization is saved as a PDF file with a name based on the original FastANI visualization filename.

3. **```concatenate.sh```:** The provided bash script is a concatenation script that takes all the fasta files (*.fasta) present in the current directory and concatenates them into a single output file specified by the user. It ensures that each sequence starts on a new line in the output file.

4. **```name_files_with_folder_name.sh```:** This script will rename files within subfolders of a given parent folder, you can use the following script. This script will recursively search for files in subfolders of the specified parent folder and perform the renaming operation. Here's how this script works:

* It asks the user for the parent folder path where subfolders and files are located.
* It checks if the parent folder exists.
* It defines a function rename_files() that performs the renaming operation. This function will be called recursively for each subfolder encountered.
* Inside the function, it iterates through files and subfolders within the given folder. If it encounters a file, it renames the file as before. If it encounters a subfolder, it recurses into that subfolder.
* After defining the function, the script starts the renaming process by calling rename_files with the parent folder path.
* This script will traverse through all subfolders within the provided parent folder and rename the files within each subfolder according to your original renaming operation.
  
5. **```append_end_of_filename.sh```:** To add the "_HOMD" string to the end of the filename, just before the file extension, you can use the following approach in a Bash script. This script uses parameter expansion to separate the filename from its extension. Then, it constructs the new filename by appending "_HOMD" before the extension. Substitute the "_HOMD" with the required string.
   
6. **```split_headers_by_gap.sh```:** The provided bash script reads text files from a user-specified input folder, processes the files by removing everything after the first space in each line, and saves the processed files in a subfolder within the input directory named "processed." It then loops through each text file in the input directory and performs the processing operation.

7. **```extract_faa_from_subfolders.sh```:**
In this script:
* The user is prompted to provide the source folder containing subfolders with .faa files.
* The script checks if the source folder exists.
* The user is prompted to specify the destination folder where the .faa files will be extracted. If the destination folder doesn't exist, it's created.
* The find command searches for .faa files within subfolders of the source folder, and the while loop iterates through them.
* Each .faa file found is copied to the destination folder using the cp command. You can use mv instead of cp to move (cut/paste) the files if you prefer.

8. **```multi_fasta_sequence_extract.sh```**
This Bash script is designed to extract multiple FASTA sequences from a multi-FASTA file based on a list of protein IDs provided in multiple text files. It creates a new output directory to store the extracted sequences and processes each text file containing the protein IDs.

Here's a step-by-step breakdown of the script:

* Setting Input Files and Output Directory:
   - You need to specify the name of the multi-FASTA file (`fasta_file`) from which sequences will be extracted.
   - You also need to specify the name of the output directory (`output_dir`) where the extracted sequences will be saved.
* Loop Through Text Files:
   - The script uses a `for` loop to iterate through all `.txt` files in the current directory (`*.txt`).
* Creating Output File Name:
   - For each text file, it creates an output file name by removing the `.txt` extension and appending `_extracted.fasta`.

* Loop Through Protein IDs in Text File:
   - It then enters a `while` loop to read each line (protein ID) from the current text file.
   - Inside the loop, it uses the `seqtk subseq` command to extract the sequence corresponding to the current protein ID from the `fasta_file`.
   - The `<()` syntax is used to pass the protein ID as input to the `seqtk subseq` command, and the extracted sequence is appended to the output file specified earlier.

* Status Message:
   - After processing all protein IDs in a text file, it prints a status message indicating that sequences have been extracted from the current text file and saved to the output file.

Overall, this script automates the process of extracting sequences from a multi-FASTA file based on protein IDs provided in multiple text files. It performs this operation for each text file found in the directory and saves the extracted sequences in the specified output directory with appropriate file names.

9. **```split_multi_multi_fasta.sh```**
   This Bash script is designed to split multi-FASTA files into individual FASTA files based on their sequence headers. Here's a breakdown of how it works:

* Input and Output Directories:

  - input_directory: Specifies the directory where the input multi-FASTA files are located.
  - output_directory: Specifies the directory where the output individual FASTA files will be saved.

* Create Output Directory:

  - The script checks if the output_directory exists. If it doesn't, it creates the directory using the mkdir -p command.

* split_fasta Function:

  - This function takes two arguments: input_file (a multi-FASTA file) and output_dir (the directory where individual sequences will be saved).

* Splitting and Extracting Headers:

  - Inside the split_fasta function, it creates a subdirectory within the output_dir for each input multi-FASTA file. The subdirectory is named after the base name of the input file without the extension.
  - It initializes variables header and sequence_content to store the current sequence's header and content.
  - It then reads the input file line by line, and for each line:
  - If the line starts with >, it indicates a new sequence header. It saves the previous sequence (if any) to an individual FASTA file and extracts the new header.
  - If the line doesn't start with >, it appends the line to the sequence_content.
  - After processing the entire input file, it saves the last sequence (if any) to an individual FASTA file.

* Processing Multi-FASTA Files:

  - The script iterates through each multi-FASTA file in the input_directory using a for loop.
  - For each multi-FASTA file, it calls the split_fasta function, passing the input file and the output_directory as arguments.

* Saving Individual FASTA Files:

  - The split_fasta function saves each sequence as an individual FASTA file in the subdirectory corresponding to the input file.
  - The individual FASTA files are named using the sequence headers.

Overall, this script is useful for splitting multi-FASTA files into separate FASTA files, making it easier to work with individual sequences. Each sequence is saved as its own file within a subdirectory named after the original multi-FASTA file. This script is especially handy when you need to process or analyze sequences individually.

10. **```move_files.sh```**
   
This Bash script is designed to move a specified number of files from multiple source folders into a single destination folder while generating unique filenames for each file. Here's an explanation of how the script works:

* Source and Destination Directories:

  - source_folder_parent: Specifies the parent directory containing the 241 source folders. Replace this with the actual path to your source folders.
destination_folder: Specifies the path to the destination folder where the selected files will be moved. If this folder doesn't exist, the script creates it using mkdir -p.

* Counter Initialization:

  - count: This variable is used to keep track of the number of files moved. It starts at 0 and will be incremented as files are moved.

* Main Loop:

  - The script uses a nested for loop to iterate through each source folder within source_folder_parent.

* Nested Loop for Files:

 - Within each source folder, another loop iterates through each file.

* Generating Unique Names:

  - For each file in the source folder, the script generates a unique name for the file in the destination folder.
unique_name is constructed by combining the source folder's name (obtained using ${folder##*/}) with the base name of the file ($(basename "$file")).

* Moving Files:

  - The script then uses the mv command to move the file from the source folder to the destination folder with the generated unique name.

* Incrementing the Counter:

  - After moving a file, the count variable is incremented.

* Break Condition:

  - There's a condition inside the nested loop that checks if count has reached a specific value (in this case, 16695). If this condition is met, it breaks out of both loops using break 2, effectively ending the process of moving files.

* Completion Message:

  - After all the files have been moved or the loop is broken, the script prints a message indicating the number of files successfully moved to the destination folder.

In summary, this script is useful for batch moving a specified number of files from multiple source folders into a single destination folder while ensuring that the filenames remain unique. It's handy when you want to consolidate a specific number of files from various sources into a centralized location.

11. **```rename_fasta_headers_when_duplicates.sh```**
If duplication occurs in FASTA headers. This script allows you to rename FASTA headers in a batch for all FASTA files in a specified input directory and save the modified files in an output directory. The renaming is based on a pattern that adds a numerical suffix to headers with the same prefix.

12. **```split_fasta_byid_seqkit```** This script allows the user to split multiple input FASTA files into smaller FASTA files based on their sequence IDs using the seqkit tool. The split files are saved in the specified output directory.
