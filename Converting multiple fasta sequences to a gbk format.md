### Import libraries

```python
from Bio import SeqIO
```

### Either assign a File Path to a Variable

```python
file_path='/Users/slipakanungo/Documents/<Path>'
```

### Or else set directory of the input and output files (Opening Input and Output Files for Sequence Conversion)

```python
input_handle = open("./<Path_of_the_fasta_file>", "r")
output_handle = open("./<Path_of_the_new_gb_file>", "w")
```

* ```input_handle``` = ```open("./<Path_of_the_fasta_file>", "r")``` : This line opens an input file specified by ```<Path_of_the_fasta_file>``` for reading. Replace ```<Path_of_the_fasta_file>``` with the actual path to your input FASTA file. The ``` "r" ``` argument indicates that the file is opened in read mode. The input_handle is a file handle that can be used to read data from the input file.

* ```output_handle``` = ```open("./<Path_of_the_new_gb_file>", "w")``` : This line opens an output file specified by ``` <Path_of_the_new_gb_file>``` for writing. Replace ```<Path_of_the_new_gb_file>``` with the desired path for your output GenBank file. The ``` "w" ``` argument indicates that the file is opened in write mode. The ```output_handle``` is a file handle that can be used to write data to the output file.

The code sets up the file handles input_handle and output_handle, allowing you to read data from the input FASTA file and write data to the output GenBank file. After processing the data or performing any operations, make sure to close the file handles using the ``` .close()``` method to release system resources and ensure that all data is written and read correctly.

### Parsing GenBank File and Storing Sequences

```python
sequences = list(SeqIO.parse(input_handle, "fasta"))
```

* ```SeqIO``` : SeqIO is a module within the Biopython library that provides functionality for reading and writing sequence files.

* ```parse(input_handle, "fasta")``` : The parse() function reads the sequences from the input handle (file-like object) using the ``` "fasta" ``` format. The ``` "fasta" ``` format is one of the supported formats for sequence files, and it is commonly used for storing biological sequences.

* ```list(...)``` : The ```list()``` function is used to convert the generator returned by ```SeqIO.parse()``` into a list. Without using list(), SeqIO.parse() would return a generator, which is a memory-efficient way to iterate over sequences in large files. However, by using list(), all sequences are read and stored in memory as a list of SeqRecord objects.

* ```sequences``` : This is the name of the list where the SeqRecord objects are stored.

After executing this code, the ```sequences``` list will contain SeqRecord objects, with each object representing one sequence read from the input FASTA file. Each SeqRecord object contains information about the sequence, including the sequence data, its identifier (header), and any annotations associated with it.


### Assigning 'molecule_type' Annotation to DNA in FASTA Sequences

```python
for seq in sequences:
    seq.annotations['molecule_type'] = 'DNA'
```

* ```for seq in sequences:``` : This line initiates a loop that iterates through each SeqRecord object in the sequences list. In each iteration, the current SeqRecord object is assigned to the variable seq.

* ```seq.annotations['molecule_type']``` = 'DNA': Within the loop, this line sets the 'molecule_type' annotation of the current SeqRecord (seq) to 'DNA'. It uses dictionary-like syntax to access the 'annotations' attribute of the SeqRecord object and assigns the value 'DNA' to the key 'molecule_type'.

After running this loop, each SeqRecord object in the sequences list will have the ``` 'molecule_type' ``` annotation set to ``` 'DNA' ```, indicating that all the sequences in the list represent DNA molecules.

### Writing Sequences to a genbank File

```python
count = SeqIO.write(sequences, output_handle, "genbank")
```

* ```SeqIO.write(sequences, output_handle, "genbank")``` : This line writes the SeqRecord objects in the sequences list to the output GenBank file specified by output_handle. The third argument "genbank" indicates the desired output file format, which is GenBank in this case.

* ```count``` = ```SeqIO.write(...)``` The SeqIO.write() function returns the number of written sequences as an integer value. The code assigns this count to the variable count, which represents the number of sequences that were successfully written to the output GenBank file.

After executing this code, the sequences list is written to the output GenBank file, and the variable count contains the number of sequences that were written. The count value can be useful for verification or logging purposes to ensure that the expected number of sequences were successfully written to the file.


### Closing Files and Displaying Conversion Summary

```python
output_handle.close()
input_handle.close()
print("Converted {} records".format(count))
```

* ```output_handle.close()```: This line of code closes the file represented by the output_handle file object. It ensures that all the data has been written to the file and releases any system resources associated with it. Closing the file is important to avoid data loss or corruption.

* ```input_handle.close()```: This line of code closes the file represented by the input_handle file object. It is responsible for releasing the system resources associated with the input file after reading the sequences. Closing the file is considered good practice to ensure proper handling of system resources.

* ```print("Converted {} records".format(count))```: This line of code prints a formatted message to the console, indicating the number of records that were converted or written to the output file. The placeholder {} is used within the string, and the format() method is called to substitute the value of count into the placeholder. This allows the message to dynamically display the actual count of converted records.

By executing these lines of code, you ensure that the input and output files are properly closed, and you get a message printed to the console indicating the number of records that were successfully converted or written to the output file.


