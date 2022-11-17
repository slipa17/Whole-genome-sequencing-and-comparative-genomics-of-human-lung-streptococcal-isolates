# To download biological sequence data from NCBI.

```conda create -n ncbi_datasets
```

Please update conda by running

    $ conda update -n base conda


# To activate this environment, use

    $ conda activate ncbi_datasets

# To deactivate an active environment, use

     $ conda deactivate

# To install the datasets conda package.

```
conda install -c conda-forge ncbi-datasets-cli
```

# NCBI genome downloads:

```
For genomes:

 datasets download genome accession --inputfile strep_ref_genome.txt --annotated --include-gbff
```

# To unzip the ncbi_dataset.zip:

```
* First install unzip

brew install unzip
```

# Then unzip the file ncbi_dataset.zip from the provided directory:

```unzip ncbi_dataset.zip
```
 
  
                             
