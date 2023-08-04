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


```python
for seq in sequences:
    seq.annotations['molecule_type'] = 'DNA'
```

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


