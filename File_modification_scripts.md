## 1. Line modification in text files.
In .txt file with multiple lines that look like this: 

>EKHPBGBN_00180 Polyisoprenyl-teichoic acid--peptidoglycan teichoic acid transferase TagU_P2D11
>EKHPBGBN_01000 Polyisoprenyl-teichoic acid--peptidoglycan teichoic acid transferase TagU_P2D11
>EKHPBGBN_01467 Biofilm regulatory protein A_P2D11

Modify files to contain only:

EKHPBGBN_00180
EKHPBGBN_01000
EKHPBGBN_01467
EKHPBGBN_00999
EKHPBGBN_00998
EKHPBGBN_00997
EKHPBGBN_01779
EKHPBGBN_00996
EKHPBGBN_00991
EKHPBGBN_00992
EKHPBGBN_01096
EKHPBGBN_01099
EKHPBGBN_01726

Steps:
1. Use the awk command to extract the desired text from each line of the file.
2. Open the Terminal app on your Mac.
3. Navigate to the directory where the file is located using the "cd" command. 
4. Type the following command to extract the desired text from each line of the file and output the result to a new file

```
awk '{match($0, />[^ ]+/); print substr($0, RSTART+1, RLENGTH-1)}' input_file.txt > output_file.txt
```
5. Replace "input_file.txt" with the name of your input file and "output_file.txt" with the desired name of your output file.
6. Press Enter to execute the command. This will extract the desired text from each line of the file and output the result to a new file.

For thiis using a loop:
```
for file in /path/to/folder/*.txt; do
    awk '{match($0, />[^ ]+/); print substr($0, RSTART+1, RLENGTH-1)}' "$file" > "/path/to/output_folder/$(basename "$file" .txt)_output.txt"
done
```
## 2. Convert .FASTA files to .txt files

1. The script loops through all subfolders in the parent_dir using a for loop with a wildcard pattern.
2. For each subfolder, the script uses the find command to locate the .fasta file in the subfolder.
3. If a .fasta file is found in the subfolder, the script uses the sed command to convert the .fasta file to .txt and saves it in the same subfolder using parameter expansion to remove the .fasta extension and replace it with .txt.
4. If no .fasta file is found in the subfolder, the loop moves on to the next subfolder.

```
for dir in PATH_to_PARENT_FOLDER; do
    fasta_file=$(find "$dir" -maxdepth 1 -type f -name "*.fasta")
    if [ -n "$fasta_file" ]; then
        sed 's/>.*/&\n/' "$fasta_file" > "${fasta_file%.*}.txt"
    fi
done
