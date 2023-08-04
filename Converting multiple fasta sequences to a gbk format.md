### Import libraries

```python
from Bio import SeqIO
```

### Either assign a File Path to a Variable

```python
file_path='/Users/slipakanungo/Documents/Comparative_genomics/Final_draft/PyGenomeviz_new/P2D11_test/'
```

### Or else set directory of the input and output files (Opening Input and Output Files for Sequence Conversion)

```python
input_handle = open("Documents/Comparative_genomics/Final_draft/PyGenomeviz_new/P2D11_test/gene_name.fasta", "r")
output_handle = open("Documents/Comparative_genomics/Final_draft/PyGenomeviz_new/P2D11_test/gene_name.gb","w")
```

### Parsing GenBank File and Storing Sequences

```python
sequences = list(SeqIO.parse(input_handle, "fasta"))
```

* ```SeqIO``` : SeqIO is a module within the Biopython library that provides functionality for reading and writing sequence files.

* ```parse(input_handle, "fasta")``` : The parse() function reads the sequences from the input handle (file-like object) using the "fasta" format. The "fasta" format is one of the supported formats for sequence files, and it is commonly used for storing biological sequences.

* ```list(...)``` : The list() function is used to convert the generator returned by SeqIO.parse() into a list. Without using list(), SeqIO.parse() would return a generator, which is a memory-efficient way to iterate over sequences in large files. However, by using list(), all sequences are read and stored in memory as a list of SeqRecord objects.

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

### Closing Files and Displaying Conversion Summary

```python
output_handle.close()
input_handle.close()
print("Converted {} records".format(count))
```


