## The following codes have been run in the Jupyter Notebook using the Python scripts


### Import libraries

```python
from Bio import SeqIO
import OS
```

### Either assign a File Path to a Variable

```python
file_path= './path_to_file_name'
```

### Or else set directory of the input and output files (Opening Input and Output Files for Sequence Conversion)

```python
input_handle = open("./dnaA.fasta", "r")
output_handle = open("./dnaA.gb","w")          
```
* input_handle: This is a file object that represents the input file "./dnaA.fasta". It is created by calling the open() function with the file path "./dnaA.fasta" and the mode "r", indicating that the file will be opened in read mode.

* "./dnaA.fasta": This is the file path of the input file. It specifies the location and name of the file that you want to open for reading.

* "r": This is the mode parameter passed to the open() function, indicating that the file should be opened in read mode.

* output_handle: This is a file object that represents the output file "./dnaA.gb". It is created by calling the open() function with the file path "./dnaA.gb" and the mode "w", indicating that the file will be opened in write mode.

* "./dnaA.gb": This is the file path of the output file. It specifies the location and name of the file that you want to open for writing.

* "w": This is the mode parameter passed to the open() function, indicating that the file should be opened in write mode.

By executing these lines of code, the input file "./dnaA.fasta" is opened in read mode and assigned to the variable input_handle, allowing you to read data from the file. Similarly, the output file "./dnaA.gb" is opened in write mode and assigned to the variable output_handle, enabling you to write data to the file.

These file handles (input_handle and output_handle) can be used to read and write data from and to the respective files, allowing you to perform operations such as reading sequences, processing data, and saving results.

In summary, these lines of code are used to open the input and output files for reading and writing, respectively, and assign the file objects (input_handle and output_handle) to handle the file operations.

### Parsing Sequences from a FASTA File

```python
sequences = list(SeqIO.parse(input_handle, "fasta"))
```
* sequences: This is the variable that will store the parsed sequences from the FASTA file.

* SeqIO.parse(): This function is from the Biopython SeqIO module and is used to read and parse sequences from a file. It takes two arguments: the input_handle, which represents the input file, and "fasta", which specifies the format of the file (in this case, FASTA).

* input_handle: This is the file object representing the input file from which you want to read the sequences. It should have been opened in read mode using the open() function.

* "fasta": This is the format specifier indicating that the sequences in the input file are in the FASTA format.

By executing sequences = list(SeqIO.parse(input_handle, "fasta")), the code reads the sequences from the specified input file in the FASTA format and converts them into a list of SeqRecord objects or compatible sequence records. Each SeqRecord object typically contains the sequence itself, its identifier, description, and any additional annotations.

The list() function is used to convert the generator returned by SeqIO.parse() into a list, allowing you to access and manipulate the sequences as needed. The resulting list, sequences, can be iterated over, searched, filtered, or subjected to further analysis.

In summary, this line of code is responsible for reading and parsing the sequences from the input FASTA file and storing them in the sequences list for subsequent processing or analysis.


### Assign molecule type Annotation to DNA Sequences

```python
for seq in sequences:
    seq.annotations['molecule_type'] = 'DNA'
```

* for seq in sequences:: This is a loop that iterates over each sequence in the sequences collection. The variable seq represents an individual sequence in each iteration of the loop.

* seq.annotations['molecule_type'] = 'DNA': This line of code modifies the molecule_type annotation of the current sequence (seq) to be 'DNA'. Annotations are additional metadata or information associated with a sequence. In this case, the code is specifically targeting the molecule_type annotation, which typically specifies the type of molecule the sequence represents (e.g., DNA, RNA, protein).

By setting seq.annotations['molecule_type'] to 'DNA', the code is explicitly assigning the value 'DNA' to the molecule_type annotation of each sequence in the sequences collection. This indicates that the sequences are DNA molecules.

### Writing Sequences to a GenBank File

```python
count = SeqIO.write(sequences, output_handle, "genbank")
```
* count: This is a variable that will store the number of sequences written to the output file. It will be assigned the value returned by the SeqIO.write() function, which represents the number of sequences successfully written.

* SeqIO.write(): This is a function from Biopython's SeqIO module used for writing sequences to a file. It takes three arguments:

* sequences: This is the collection of sequences that you want to write to the file. It should be an iterable object containing SeqRecord objects, which represent individual sequences with associated metadata.

* output_handle: This is the file handle or object where you want to write the sequences. It can be a file object opened in write mode or any object that supports the required file-writing operations.

* "genbank": This is the format specifier indicating that the sequences should be written in the GenBank format. Biopython's SeqIO module supports various file formats, and "genbank" specifies the GenBank format in this case.

The overall expression SeqIO.write(sequences, output_handle, "genbank") performs the writing operation, writing the sequences to the specified output file in the GenBank format. After executing this line of code, the variable count will hold the number of sequences that were successfully written to the output file in GenBank format.

### Closing Files and Displaying Conversion Summary

```python
output_handle.close()
input_handle.close()
print("Converted {} records".format(count))
```
* output_handle.close(): This line of code is used to close the output file handle, output_handle, which was used for writing the sequences. Closing the file handle is important to ensure that all the data is written and to free up system resources associated with the file.

* input_handle.close(): This line of code is used to close the input file handle, input_handle, which might have been used to read the input sequences before the conversion. Closing the file handle is good practice to release system resources associated with the file once it is no longer needed.

* print("Converted {} records".format(count)): This line of code prints a message to the console indicating the number of records (sequences) that were successfully converted and written to the output file. It uses string formatting to insert the value of the count variable into the printed message. The {} acts as a placeholder for the value of count, which is substituted in the printed output.

In summary, the additional lines of code close the file handles to ensure proper handling of the files, and the print statement provides feedback on the number of records that were successfully converted and written to the output file.


