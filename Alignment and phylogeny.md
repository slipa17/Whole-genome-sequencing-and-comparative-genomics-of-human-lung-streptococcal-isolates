#### Rename of duplicate sequences names
```
 seqkit rename -n INPUT.fasta -o Input_renamed.fasta
```


#### Removal of duplicate FASTA sequences / collapse identical sequences

```
seqkit rmdup -s INPUT.fasta -o INPUT_clean.fasta               

```
#### Concatenation of FASTA sequences

* Concatenate sequences with proper new lines after each sequence. The script is provided as separate file.

```
./concatenate.sh
```
#### Formatting FASTA before alignment
* This is a quality assurance step to make sure the file is in FASTA format.
```
fasta_formatter -i input.fasta -o output_formatted.fasta -w 0
```
#### Trimming FASTA to size before alignment

```
fastx_trimmer -l N -i INPUT.fasta -o INPUT_trimmed.fasta
```

#### Removing unwanted characters from the sequences

For example, ensure that there are no ">" characters in the sequence lines:

```
awk '/^>/ {print} !/^>/ {gsub(/>/, ""); print}' input.faa > cleaned_input.faa
```

#### Performing alignment using MAFFT
* ```--auto```allows MAFFT to automatically decide the parameters to use based on the input file.
* ```--nomemsave```for disabling memory save mode and make it faster.
```
mafft --auto INPUT.fasta > OUTPUT.fasta

```

for more details on arguments, please follow: https://mafft.cbrc.jp/alignment/software/tips0.html

* No masking was used after alignment 

#### Calculation of distance matrix post alignment
* Using EMBOSS ```distmat```function 
* Since, alignment with MAFFT is performed already with appropriate correction algorithm. No further correction was applied indicated by ```-nucmethod 0```

```
distmat -sequence aligned.fasta -nucmethod 0 -outfile aligned_dist

```

#### Phylogenetic tree after alignment using RAxML 
Using RAxML to perform a rapid bootstrap analysis to infer a maximum likelihood tree based on molecular sequence data in PHYLIP format. 

```
raxmlHPC -f a -p 12345 -x 12345 -m PROTGAMMAAUTO -# 100 -s INPUT_ALIGNMENT.phy -n OUTPUT.tre

```
RAxML will use low number of CPU threads by default based on the size of the sequences. However, to gain some speed increasing the ```raxmlHPC-PTHREADS``` version can be used to help with the speed.

```
raxmlHPC-PTHREADS -T 4 -f a -p 12345 -x 12345 -m PROTGAMMAAUTO -# 100 -s INPUT_ALIGNMENT.phy -n OUTPUT.tre
```

* ```-f a```: This specifies the type of analysis and the ```a``` option indicates that you want to perform a rapid bootstrap analysis and search for the best-scoring maximum likelihood (ML) tree.
* ```-p 12345```: This sets the random number seed for the ML tree search. 
* ```-x 12345```: This sets the random number seed for the bootstrap analysis. 
* ```-m PROTGAMMAAUTO```: This specifies the substitution model to be used. In this case, the PROTGAMMAAUTO model allows RAxML to automatically determine the best-fitting substitution model based on the input data.
* ```-# 100```: This sets the number of bootstrap replicates to perform.
* ```-s INPUT_ALIGNMENT.phy```: This specifies the name of the input file containing the molecular sequence data in PHYLIP format.
* ```-n OUTPUT.tre```: This specifies the name of the output file. 

* Note:for nucleotide sequences it is recommended to use the model ```-m GTRGAMMA``` model for robust phylogenetic relationship. However, it can be computationally intensive.

For further details please follow: https://cme.h-its.org/exelixis/web/software/raxml/hands_on.html 

#### Phylogenetic tree after alignment using FastTree (especially for non-complex large nucleotide alignments for e.g. 16S rRNA sequences phylogeny)

```
FastTree -nt -gtr -gamma -log homd_user_ref_align all_users_ref_homd_16s_clean_trimmed_aligned.fasta > all_users_ref_homd_16s_clean_trimmed_aligned_tree 
```
