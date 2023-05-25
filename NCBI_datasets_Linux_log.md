## To download biological sequence data from NCBI.

```conda create -n ncbi_datasets
```

Please update conda by running

    $ conda update -n base conda


## To activate ncbi_datasets environment

    $ conda activate ncbi_datasets

## To deactivate an active environment

     $ conda deactivate

## To install the datasets conda package.

```
   conda install -c conda-forge ncbi-datasets-cli
```

## NCBI genome downloads:

* For genomes

```
datasets download genome accession --inputfile input_genome_files.txt --annotated --include-gbff
```

## To unzip the ncbi_dataset.zip:

* First install unzip

```
brew install unzip
```

* Then unzip the file ncbi_dataset.zip from the provided directory

```
unzip ncbi_dataset.zip
```
## make local BLAST database for Streptococcus genomes / nucleotides / proteins (FASTA format) and performing BLAST:

```
cat * (all files).fasta > all_sequences.fasta
makeblastdb -in all_sequences.fasta -input_type fasta -dbtype [TYPE] -out output_database_name
blastp -query all_queries.fasta -db output_database_name -out output_database_name_blasted.tsv -outfmt 6
```
  
                             
