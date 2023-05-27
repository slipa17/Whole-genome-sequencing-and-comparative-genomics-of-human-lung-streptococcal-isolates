### Import libraries

```python
from Bio import SeqIO
from Bio.SeqRecord import SeqRecord
import sys
```

### Either set the path/directory

```python
path = '/Users/slipakanungo/Documents/Comparative_genomics/Final_draft/Bacteria_capsule_extracted/T369_3/T369_3.gb'
```

### Or else 

```python
input_handle = open("Documents/Comparative_genomics/Final_draft/Bacteria_capsule_extracted/T369_3/T369_3.gb", "r")
output_handle = open("Documents/Comparative_genomics/Final_draft/Bacteria_capsule_extracted/T369_3/rRNAs.fasta", "w")
```


```python
sequences = list(SeqIO.parse(input_handle, "genbank"))
```


```python
product= []
```


```python
locus_tag= []
```


```python
rRNA = []
```


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


```python
count = SeqIO.write(rRNA, output_handle, "fasta")
```


```python
output_handle.close()
input_handle.close()
print("Converted {} records".format(count))
```

    Converted 5 records

