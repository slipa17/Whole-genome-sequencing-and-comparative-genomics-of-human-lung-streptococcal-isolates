* Import libraries

```python
from Bio import SeqIO
import OS
```

* Set directory of the fasta sequence files

```python
file_path='/Users/slipakanungo/Documents/Comparative_genomics/Final_draft/PyGenomeviz_new/P2D11_test/'
```

* Or set directory of the input and output files

```python
input_handle = open("Documents/Comparative_genomics/Final_draft/PyGenomeviz_new/P2D11_test/dnaA.fasta", "r")
output_handle = open("Documents/Comparative_genomics/Final_draft/PyGenomeviz_new/P2D11_test/dnaA.gb","w")

 input_handle: set and read the path of the input files. Here, input file is my fasta file
 output_handle: set and write the path of the output files. Here, output file is the genbank file
```


```python
sequences = list(SeqIO.parse(input_handle, "fasta"))
```


```python
for seq in sequences:
    seq.annotations['molecule_type'] = 'DNA'
```


```python
count = SeqIO.write(sequences, output_handle, "genbank")
```


```python
output_handle.close()
input_handle.close()
print("Converted {} records".format(count))
```

    Converted 1 records

