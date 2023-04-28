## ABRICATE for antibiotic resistance and virulence genes

```
* Install abricate

 conda install -c conda-forge -c bioconda -c defaults abricate
 abricate --check
 abricate --list
 ```

## Input 

```
abricate file_name_genomic.fna 
```

## Searching AMR genes using resfinder database and combining AMR results into a simple matrix of gene presence/absence

```
abricate -db resfinder *.fna > AMR_results.csv
abricate --summary AMR_results.csv > new_file_name_summary.csv
```

## For virulence factor genes

```
abricate --db vfdb --quiet file_name_genomic.fna 
```

## Combining Virulence factor genes into a simple matrix of gene presence/absence


```
abricate --db vfdb --quiet *.fna > new_file_name.csv
abricate --db vfdb --summary new_file_name.csv > new_file_name_summary.csv
```
