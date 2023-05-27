## The following codes have been run in the Jupyter Notebook using the Python scripts.

### Import libraries

```python
from Bio import SeqIO
from Bio.SeqRecord import SeqRecord
import sys
```

### Either assign a File Path to a Variable

```python
path = '/Users/slipakanungo/<Path>'
```

### Or else set directory of the input and output files (Opening Input and Output Files for Sequence Conversion)

```python
input_handle = open("./<Path_of_the_gb_file>", "r")
output_handle = open("./<Path_of_the_new_fasta_file>", "w")
```
* input_handle = open("./<Path_of_the_gb_file>", "r"): This line of code opens a file specified by <Path_of_the_gb_file> in read mode ("r"). The file path should be provided as a string. The input_handle variable is assigned the file object, which can be used to read the contents of the file.

* output_handle = open("./<Path_of_the_new_fasta_file>", "w"): This line of code opens a file specified by <Path_of_the_new_fasta_file> in write mode ("w"). The file path should be provided as a string. The output_handle variable is assigned the file object, which can be used to write or save data to the file.

The open() function is a built-in Python function that provides file handling capabilities. It takes two arguments: the file path and the mode. The mode determines whether the file will be opened for reading ("r"), writing ("w"), appending ("a"), or in binary mode ("b").

After executing these lines of code, you can use input_handle to read the contents of the input file, and output_handle to write or save data to the output file. Remember to close these file objects using the close() method when you have finished working with them to ensure proper handling and release of system resources.

### Parsing GenBank File and Storing Sequences

```python
sequences = list(SeqIO.parse(input_handle, "genbank"))
```
* input_handle: This is the file object representing the input file that you want to read. It should have been opened in read mode using the open() function, as mentioned in the previous explanation.

* SeqIO.parse(): This is a function from Biopython's SeqIO module used to parse a file containing biological sequences. It takes two arguments:

1- input_handle: The first argument specifies the file object from which you want to read the sequences.
"genbank": The second argument is the format specifier indicating that the file is in GenBank format. Biopython's SeqIO module supports various file formats, and "genbank" specifies the GenBank format in this case.
sequences: This is the variable name assigned to the list that will contain the parsed sequences from the input file.

2- list(): The list() function is used to convert the sequence iterator returned by SeqIO.parse() into a list. This allows you to access the sequences as individual elements within the list.

By executing sequences = list(SeqIO.parse(input_handle, "genbank")), you read the sequences from the input file in GenBank format and store them as a list called sequences. Each element of the list represents a sequence record, allowing you to access and manipulate the sequences for further analysis or processing.

Remember to close the input_handle file object using the close() method when you have finished working with it to ensure proper handling and release of system resources.

### Initializing an Empty List for Products

```python
product= []
```
* product: This is the variable name assigned to the empty list.

* []: The empty brackets represent an empty list literal. By assigning it to the variable product, you create an empty list that can be used to store values or elements.

After executing this code, you have a list named product that does not contain any elements. 

### Initializing an Empty List for Locus Tags

```python
locus_tag= []
```
* locus_tag: This is the variable name assigned to the empty list.

* []: The empty brackets represent an empty list literal. By assigning it to the variable locus_tag, you create an empty list that can be used to store values or elements.

After executing this code, you have a list named locus_tag that does not contain any elements. 

### Initializing an Empty List for rRNA

```python
rRNA = []
```
* rRNA: This is the variable name assigned to the empty list.

* []: The empty brackets represent an empty list literal. By assigning it to the variable rRNA, you create an empty list that can be used to store values or elements.

After executing this code, you have a list named rRNA that does not contain any elements. 

### Extracting rRNA Features and Creating SeqRecord Objects

```python
for genome in sequences :
    for feature in genome.features :
        if(feature.type == "rRNA") :
            ID = feature.qualifiers['locus_tag'][0]
            desc = feature.qualifiers['product'][0]
            seq = feature.extract(genome.seq)
            record = SeqRecord(seq, id=ID, description=desc)
            rRNA.append(record)
```
* for genome in sequences:: This is the outer loop that iterates over each sequence (genome) in the sequences list.

* for feature in genome.features:: This is the inner loop that iterates over each feature in the features associated with the current genome sequence. It allows you to examine each feature individually.

* if(feature.type == "rRNA"):: This condition checks if the type of the current feature is "rRNA". It verifies if the feature represents a ribosomal RNA (rRNA) feature.

* ID = feature.qualifiers['locus_tag'][0]: This line of code extracts the value associated with the 'locus_tag' key from the qualifiers of the current rRNA feature and assigns it to the variable ID. It assumes that the value is a list, and [0] is used to access the first element of the list, which represents the locus tag of the rRNA.

* desc = feature.qualifiers['product'][0]: This line of code extracts the value associated with the 'product' key from the qualifiers of the current rRNA feature and assigns it to the variable desc. It assumes that the value is a list, and [0] is used to access the first element of the list, which represents the product description of the rRNA.

* seq = feature.extract(genome.seq): This line of code extracts the sequence associated with the current rRNA feature from the genomic sequence (genome.seq) and assigns it to the variable seq. It uses Biopython's extract() method to obtain the sequence as a Seq object.

* record = SeqRecord(seq, id=ID, description=desc): This line of code creates a SeqRecord object (record) by combining the extracted sequence (seq) with the specified ID (ID) and description (desc). The SeqRecord object represents a biological sequence with associated metadata.

* rRNA.append(record): This appends the SeqRecord object (record) representing the rRNA feature to the rRNA list. It adds the rRNA sequence record to the list for further processing or analysis.

The loop iterates over the sequences, examines each feature, extracts rRNA features, retrieves their locus tag and product description, extracts the associated sequence, creates SeqRecord objects, and appends them to the rRNA list. As a result, the rRNA list will contain the rRNA sequences with their corresponding IDs and descriptions extracted from the GenBank file.

### Writing rRNA Sequences to a FASTA File

```python
count = SeqIO.write(rRNA, output_handle, "fasta")
```
* rRNA: This is the collection of rRNA sequences that you want to write to the output file. It is assumed to be a list of SeqRecord objects or compatible sequence records.

* output_handle: This is the file object representing the output file where you want to save the rRNA sequences in the FASTA format. It should have been opened in write mode using the open() function, as mentioned in a previous explanation.

* "fasta": This is the format specifier indicating that you want to write the sequences in the FASTA format. Biopython's SeqIO module supports various file formats, and "fasta" specifies the FASTA format in this case.

By executing count = SeqIO.write(rRNA, output_handle, "fasta"), you are using the SeqIO.write() function to write the rRNA sequences to the specified output file in the FASTA format. The function automatically handles the formatting and structure required for the FASTA format, including sequence headers and sequence data.

The variable count represents the number of sequences that were successfully written to the output file. It indicates the total count of rRNA sequences that were present in the rRNA list and were successfully written to the file.

After running this code, the rRNA sequences will be saved in the specified output file, following the FASTA format. The count variable will contain the count of written sequences, which can be useful for verification or reporting purposes.

Remember to close the output_handle file object using the close() method when you have finished writing to it to ensure proper handling and release of system resources.

### Closing Files and Displaying Conversion Summary

```python
output_handle.close()
input_handle.close()
print("Converted {} records".format(count))
```
* output_handle.close(): This line of code closes the file represented by the output_handle file object. It ensures that all the data has been written to the file and releases any system resources associated with it. Closing the file is important to avoid data loss or corruption.

* input_handle.close(): This line of code closes the file represented by the input_handle file object. It is responsible for releasing the system resources associated with the input file after reading the sequences. Closing the file is considered good practice to ensure proper handling of system resources.

* print("Converted {} records".format(count)): This line of code prints a formatted message to the console, indicating the number of records that were converted or written to the output file. The placeholder {} is used within the string, and the format() method is called to substitute the value of count into the placeholder. This allows the message to dynamically display the actual count of converted records.

By executing these lines of code, you ensure that the input and output files are properly closed, and you get a message printed to the console indicating the number of records that were successfully converted or written to the output file.

   

