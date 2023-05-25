## To install fastani packages

```
conda create -n foo -c conda-forge -c bioconda fastani
```

## To activate foo environment

     $ conda activate foo

## To deactivate an active environment

     $ conda deactivate

     
## For one-one genome

 ```
 fastANI -q genome1.fa -r genome2.fa --visualize -o file_name.out
 ```    

 ## For one-one genome visualization grid   
 
 ```
 * Calling R in Linux 
 
   Rscript Rscript.R query_file_name.fasta reference_file_name.fasta file_name.out.visual
 
 
 Note: Rscript.R 
 
 #######
# Purpose: Visualize fastANI core-genome comparison
# Usage: Rscript <this_script>  <query sequence in fasta format> <subject sequence> <fastANI visualization output>
# Output: <fastANI visualization output filename>.pdf
# Uses genoPlotR package: http://genoplotr.r-forge.r-project.org

#Parse command line arguments
query_fasta=commandArgs(TRUE)[1]
subject_fasta=commandArgs(TRUE)[2]
fastANI_visual_file=commandArgs(TRUE)[3]

library(genoPlotR)

#Read fastANI output
comparison <- try(read_comparison_from_blast(fastANI_visual_file))

#Read sequences into genoPlotR objects
Query <- try(read_dna_seg_from_file(query_fasta))
Ref <- try(read_dna_seg_from_file(subject_fasta))

plotTitle = paste(query_fasta, subject_fasta, sep=" v/s ")

pdf( paste(fastANI_visual_file,".pdf",sep="") )

plot_gene_map(dna_segs=list(Query, Ref), comparisons=list(comparison), main=plotTitle, scale=FALSE, scale_cex=1, n_scale_ticks=4)

dev.off()
```
          
 ## For one-one genome visualization grid
 
 ```
   * Calling Python in Linux 
  
    python3 python3_scripts.py query_file_name.fasta reference_file_name.fasta file_name.out.visual file_name.png --cmap viridis --link_color red --curve 
      
      Note: python3 is my version of python; hence, it is to be named accordingly to your own python version. 

*  First install the pygenomeviz package:
 
    conda install -c conda-forge -c bioconda pygenomeviz 
    
 *  Set up the directory and then run the script.
 
    python3 FastANI.py genome1.fasta genome2.fna fastani.out.visual example01.png --cmap viridis --link_color red --curve 
     
     
     Note: python3_scripts.py
     
     
    
    #!/usr/bin/env python
# coding: utf-8

# In[ ]:


#!/usr/bin/env python3
import argparse
import csv
from pathlib import Path

from Bio import SeqIO
from pygenomeviz import GenomeViz
from pygenomeviz.utils import ColorCycler


def main():
    """Run visualize conserved regions workflow"""
    # Parse arguments
    args = get_args()
    genome_fasta_file1: Path = args.fasta_file1
    genome_fasta_file2: Path = args.fasta_file2
    fastani_visual_file: Path = args.visual_file
    visualize_result_file: Path = args.plot_outfile
    cmap: str = args.cmap
    link_color: str = args.link_color
    curve: bool = args.curve

    # Load genome fasta information
    genome_name1 = genome_fasta_file1.with_suffix("").name
    genome_name2 = genome_fasta_file2.with_suffix("").name
    records1 = SeqIO.parse(genome_fasta_file1, "fasta")
    seq_length1 = sum([len(r) for r in records1])
    records2 = SeqIO.parse(genome_fasta_file2, "fasta")
    seq_length2 = sum([len(r) for r in records2])

    # Load fastANI visual result
    fastani_results = []
    with open(fastani_visual_file) as f:
        reader = csv.reader(f, delimiter="\t")
        for row in reader:
            # Ignore blank lines
            if len(row) == 0:
                continue
            start1, end1 = int(row[6]), int(row[7])
            start2, end2 = int(row[8]), int(row[9])
            identity = float(row[2])
            link1, link2 = (genome_name1, start1, end1), (genome_name2, start2, end2)
            fastani_results.append((link1, link2, identity))

    # Visualize conserved regions detected by fastANI
    gv = GenomeViz(
        fig_width=15,
        fig_track_height=1.0,
        feature_track_ratio=0.1,
        tick_track_ratio=0.2,
        align_type="center",  # "left", "center", "right"
        tick_style="bar",  # "axis", "bar", None
        plot_size_thr=0,
    )
    track1 = gv.add_feature_track(genome_name1, seq_length1)
    track2 = gv.add_feature_track(genome_name2, seq_length2)

    ColorCycler.set_cmap(cmap)  # "hsv", "viridis", "jet", etc...
    colors = ColorCycler.get_color_list(len(fastani_results))

    min_identity = int(min([res[2] for res in fastani_results]))
    for res, color in zip(fastani_results, colors):
        link1, link2, identity = res
        track1.add_feature(link1[1], link1[2], plotstyle="bigbox", facecolor=color)
        track2.add_feature(link2[1], link2[2], plotstyle="bigbox", facecolor=color)
        gv.add_link(
            link1, link2, link_color, v=identity, vmin=min_identity, curve=curve
        )

    fig = gv.plotfig()
    gv.set_colorbar(
        fig, bar_colors=[link_color], vmin=min_identity, bar_height=0.3, bar_bottom=0.15
    )
    fig.savefig(visualize_result_file)


def get_args() -> argparse.Namespace:
    """Get arguments
    Returns:
        argparse.Namespace: Argument values
    """
    description = "Visualize conserved regions detected by fastANI"
    parser = argparse.ArgumentParser(description=description)

    parser.add_argument(
        "fasta_file1",
        type=Path,
        help="Input genome fasta 1",
    )
    parser.add_argument(
        "fasta_file2",
        type=Path,
        help="Input genome fasta 2",
    )
    parser.add_argument(
        "visual_file",
        type=Path,
        help="fastANI visual result file",
    )
    parser.add_argument(
        "plot_outfile",
        type=Path,
        help="Plot result outfile [*.jpg|*.png|*.svg|*.pdf]",
    )
    default_cmap = "hsv"
    parser.add_argument(
        "--cmap",
        type=str,
        help=f"Colormap for matplotlib (Default: '{default_cmap}')",
        default=default_cmap,
        metavar="",
    )
    default_link_color = "grey"
    parser.add_argument(
        "--link_color",
        type=str,
        help=f"Link color (Default: '{default_link_color}')",
        default=default_link_color,
        metavar="",
    )
    parser.add_argument(
        "--curve",
        help="Plot curved style link (Default: OFF)",
        action="store_true",
    )
    return parser.parse_args()


if __name__ == "__main__":
    main()


  ```  


 ## For one-many genome
  
  ```
  fastANI -q genome1.fa --rl genome_list.txt --visualize -o file_name.out 
     
Reference = [./users/P2E5.fasta, ./users/P3B4.fasta, ./users/P3D4.fasta, ./users/P3E5.fasta, ./users/T369_3.fasta]
Query = [P2D11.fasta]
``` 

## For one-many genome clustermap  

 ```
  * Calling Python in Linux 

* First install the aniclustermap package: 

   conda install -c bioconda -c conda-forge aniclustermap

 *  Set up the directory and then run the script.
        
   ANIclustermap -i ./users1/ -o ./ANIclustermap_result \--fig_width 15 --cmap_colors white,orange,red 
   ```
          -i: input file and -o: output file
          users1 : folder containing the paths of both the query and reference list
   

## For one-many genome visualization grid  

  ```
  * Calling Python in Linux 
  
* First install the pygenomeviz mmseqs2 package: 
 
   conda install -c conda-forge -c bioconda pygenomeviz mmseqs2 

 * Set up the directory and then run the script.
      
   pgv-mmseqs --gbk_resources filename1.gbf filename2.gbf filename3.gbf filename4.gbf filename5.gbf -o mmseqs_new --tick_style axis --align_type left --   feature_plotstyle arrow
   ```
   
   
 ##  For many-many genome
   
   ```
   fastANI --ql users/users.txt --rl ref/ref.txt --visualize -o file_name.out
   ```
             users : folder containing the paths of the query
             ref :  folder containing the paths of the references
             
    
## For many-many genome clustermap  

  ```
   * Calling Python in Linux
    
    ANIclustermap -i ./users_ref/ -o ./output_file_name \--fig_width 15 --cmap_colors white,orange,red
   ```
                    -i: input file and -o: output file
                    users_ref: folder containing the paths of both the query and reference list
                 
                    
                    
## For many-many genome visualization grid 

   ```
     * Calling Python in Linux
     
     pgv-mmseqs --gbk_resources filename1.gbf filename2.gbf filename3.gbf filename4.gbf filename5.gbf -o mmseqs_new --tick_style axis --align_type left --feature_plotstyle arrow --fig_width --track_labelsize --fig_track_height --arrow_shaft_ratio     
    
                   -o : output_file_name
              
       Note: For every visualization grid, visualize.py is designed to do comparative plots of prokaryotic genomes having the size less than 10Mb. 
        
                
