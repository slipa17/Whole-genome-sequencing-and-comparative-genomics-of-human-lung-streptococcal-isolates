

## Working with biological sequence data from NCBI FTP server

### 1. Creating environment for ncbi datasets

```
conda create -n ncbi_datasets
```
* ```conda```: The command-line package and environment management system.
* ```create```: The command used to create a new conda environment.
* ```-n ncbi_datasets```: The option ```-n``` specifies the name of the new environment, in this case, "ncbi_datasets". Replace "ncbi_datasets" with your desired name for the environment.

In summary, the command creates a new conda environment with the name "ncbi_datasets". Conda environments allow you to isolate and manage different sets of packages and dependencies, making it easier to work with specific software configurations. Once created, you can activate the environment using conda activate ncbi_datasets and install packages and libraries specific to that environment.

Make sure conda environment is updated by running
```
conda update -n base conda
```

### 2. To activate ncbi_datasets environment
```
conda activate ncbi_datasets
```

* ```conda```: The command-line package and environment management system.
* ```activate```: The command used to activate a conda environment.
* ```ncbi_datasets```: The name of the conda environment you want to activate. Replace "ncbi_datasets" with the actual name of the environment you want to activate.

In summary, the command activates the conda environment named "ncbi_datasets". Once activated, any subsequent package installations or commands executed will be performed within this environment. Activating an environment allows you to work within a specific software configuration and ensures that the packages and dependencies installed are isolated to that environment, avoiding conflicts with other environments or the system's default configuration.


### 3. To deactivate an active environment

```
conda deactivate
```
### 4. To install the datasets conda package

```
   conda install -c conda-forge ncbi-datasets-cli
```
* ```conda```: The command-line package and environment management system.
* ```install```: The command used to install packages.
* ```-c conda-forge```: The option -c specifies the channel from which to install the package. In this case, it is the Conda Forge channel, which provides a community-curated collection of packages.
* ```ncbi-datasets-cli```: The name of the package you want to install. Replace "ncbi-datasets-cli" with the actual package name you want to install.

In summary, the command installs the "ncbi-datasets-cli" package into the currently active conda environment. The package provides a command-line interface (CLI) for accessing and downloading datasets from the National Center for Biotechnology Information (NCBI). Once installed, you can use the ncbi-datasets command to interact with the NCBI datasets using the provided CLI functionality.

### 5. NCBI genome downloads

* For genomes

```
datasets download genome accession --inputfile input_genome_files.txt --annotated --include-gbff
```
* ```datasets```: The command-line tool for accessing and downloading data from NCBI datasets.
* ```download genome```: Specifies that you want to download genome data.
* ```accession```: Refers to the type of identifier you are using to specify the genomes you want to download. Replace "accession" with the actual identifier (e.g., GenBank accession number) you want to use to download specific genomes.
* ```--inputfile input_genome_files.txt```: Specifies the name of the input file that contains a list of genome accessions or identifiers. Replace "input_genome_files.txt" with the actual name of your input file.
* ```--annotated```: Includes annotated genome data in the download. This option ensures that the downloaded genome files contain annotation information.
* ```--include-gbff```: Specifies that the download should include the GenBank Flat File (GBFF) format for the genome data. GBFF is a richly annotated file format that provides detailed information about the genome sequence, features, and annotations.

In summary, the command uses the "datasets" tool to download genome data from NCBI based on specified accessions or identifiers listed in the input file. It ensures that the downloaded files are annotated and includes the GenBank Flat File (GBFF) format in the download.


### 6. To unzip the ncbi_dataset.zip

* First install unzip

```
brew install unzip
```
* ```brew```: The command-line package manager for macOS.
* ```install```: The command used to install packages.
* ```unzip```: The name of the package you want to install. In this case, it is the "unzip" utility, which is used to extract files from ZIP archives.

In summary, the command installs the "unzip" utility on your macOS system using Homebrew. Once installed, you can use the "unzip" command to extract files from ZIP archives by running unzip <archive_name>.zip. The "unzip" utility is commonly used to decompress and extract files from compressed ZIP archives.

* Then unzip the file ncbi_dataset.zip from the provided directory

```
unzip ncbi_dataset.zip
```
* ```unzip```: The command-line utility used to extract files from ZIP archives.
* ```ncbi_dataset.zip```: The name of the ZIP archive file you want to extract.

In summary, the command instructs the "unzip" utility to extract the files and directories contained within the "ncbi_dataset.zip" archive. After running this command, the contents of the ZIP file will be extracted and placed in the current working directory.

## Make local BLAST database for genomes / nucleotides / proteins (FASTA format) and performing BLAST

### 1. Making custom BLAST database on local machine
```
makeblastdb -in all_sequences.fasta -input_type fasta -dbtype [TYPE] -out output_database_name
```
The provided code is a command-line instruction to create a BLAST database using the makeblastdb command.

* ```-in all_sequences.fasta```: This option specifies the input file for creating the database. In this case, it is set to "all_sequences.fasta", assuming that you have a file named "all_sequences.fasta" containing the sequences you want to include in the database.
* ```-input_type fasta```: This option specifies the format of the input file. Here, it is set to "fasta" to indicate that the input file is in FASTA format, which is a commonly used format for representing biological sequence data.
* ```-dbtype [TYPE]```: This option specifies the type of database to create. You need to replace [TYPE] with the desired database type. There are several options for [TYPE], such as "prot" for protein sequences, "nucl" for nucleotide sequences, or "rps" for reverse position-specific BLAST (RPS-BLAST) databases. Choose the appropriate type based on the nature of your sequences.
* ```-out output_database_name```: This option specifies the name of the output database to be created. You need to replace "output_database_name" with the desired name for your database. It is recommended to provide a meaningful and descriptive name.


```
blastp -query all_queries.fasta -db output_database_name -out output_database_name_blasted.tsv -outfmt 6
```
  
                             
