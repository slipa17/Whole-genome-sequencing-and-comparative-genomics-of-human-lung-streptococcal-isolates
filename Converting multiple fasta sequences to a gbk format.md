```python
from Bio import SeqIO
```


```python
file_path='/Users/slipakanungo/Documents/Comparative_genomics/Final_draft/PyGenomeviz_new/P2D11_test/'
```


```python
input_handle = open("Documents/Comparative_genomics/Final_draft/PyGenomeviz_new/P2D11_test/gene_name.fasta", "r")
output_handle = open("Documents/Comparative_genomics/Final_draft/PyGenomeviz_new/P2D11_test/gene_name.gb","w")
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

    Converted 6 records

