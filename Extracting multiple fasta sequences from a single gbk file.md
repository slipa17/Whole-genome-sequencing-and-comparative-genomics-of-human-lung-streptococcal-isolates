```python
genome_file='/Users/slipakanungo/Documents/Comparative_genomics/Final_draft/PyGenomeviz_new/P2D11_test/43-genomic.gb'
gene_list_file='/Users/slipakanungo/Documents/Comparative_genomics/Final_draft/PyGenomeviz_new/P2D11_test/gene_name_list.txt'
```


```python
from Bio import SeqIO
```


```python
with open(gene_list_file,'r') as input_file:
    gene_names=[line.strip('\n') for line in input_file]
```


```python
len(gene_names)
```




    6




```python
gene_names[0:6]
```




    ['dnaA', 'dnaN', 'ychF', 'pth', 'mfd', 'tilS']




```python
gb_object=SeqIO.read(genome_file,'gb')
```


```python
allgenes=[feature for feature in gb_object.features if feature.type =='gene']
```


```python
len(allgenes)
```




    2196




```python
gene_sequences=[]
```


```python
for gene in allgenes:
    if 'gene' in gene.qualifiers.keys():
        gene_name=gene.qualifiers['gene'][0]
        if gene_name in gene_names:
            extract=gene.extract(gb_object)
            extract.id=gene_name
            extract.description=''
            gene_sequences.append(extract)
            print('gene %s has been found'%gene_name)
```

    gene dnaA has been found
    gene dnaN has been found
    gene ychF has been found
    gene pth has been found
    gene mfd has been found
    gene tilS has been found



```python
len(gene_sequences)
```




    6




```python
output_file='/Users/slipakanungo/Documents/Comparative_genomics/Final_draft/PyGenomeviz_new/P2D11_test/gene_name.fasta'
```


```python
SeqIO.write(gene_sequences,output_file,'fasta')
```




    6


