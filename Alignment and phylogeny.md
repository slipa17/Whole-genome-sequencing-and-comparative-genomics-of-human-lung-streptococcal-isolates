
## Removal of duplicate FASTA sequences 

```
seqkit rmdup -s INPUT.fasta > OUTPUT.fasta 

```
## Concatenation of FASTA sequences

* Concatenate sequences with proper new lines after each sequence

```
for file in *.fasta; do echo "" >> output.fasta; cat "$file" >> output.fasta; done
```

## Performing alignment using MAFFT

```
mafft --auto INPUT.fasta > OUTPUT.fasta

```

for more details on arguments, please follow: https://mafft.cbrc.jp/alignment/software/tips0.html

## Masking alignment before phylogeny

```
clipkit ALIGNMENT.fasta
```
For further details follow: https://jlsteenwyk.com/ClipKIT/advanced/index.html

## Phylogenetic tree after alignment
Using RAxML to perform a rapid bootstrap analysis to infer a maximum likelihood tree based on molecular sequence data in PHYLIP format. 

```
raxmlHPC -f a -p 12345 -x 12345 -m PROTGAMMAAUTO -# 100 -s bacteria_capsule_output_phylip.phy -n T20

```

* ```-f a```: This specifies the type of analysis and the ```a``` option indicates that you want to perform a rapid bootstrap analysis and search for the best-scoring maximum likelihood (ML) tree.
* ```-p 12345```: This sets the random number seed for the ML tree search. 
* ```-x 12345```: This sets the random number seed for the bootstrap analysis. 
* ```-m PROTGAMMAAUTO```: This specifies the substitution model to be used. In this case, the PROTGAMMAAUTO model allows RAxML to automatically determine the best-fitting substitution model based on the input data.
* ```-# 100```: This sets the number of bootstrap replicates to perform.
* ```-s INPUT_ALIGNMENT.phy```: This specifies the name of the input file containing the molecular sequence data in PHYLIP format.
* ```-n T20```: This specifies the name of the output file. 


For further details please follow: https://cme.h-its.org/exelixis/web/software/raxml/hands_on.html 
