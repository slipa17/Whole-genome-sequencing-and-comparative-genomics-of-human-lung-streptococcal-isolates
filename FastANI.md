### To install fastani packages

#### Conda Environment Setup

```
conda create -n foo -c conda-forge -c bioconda fastani
```
* ```conda```: The command-line package and environment management system.
* ```create```: The command used to create a new conda environment.
* ```-n foo```: The option -n specifies the name of the new environment, in this case, "foo". Replace "foo" with your desired name for the environment.
* ```-c conda-forge -c bioconda```: The options ```-c``` specify the channels from which to install packages. In this case, it specifies the Conda Forge and Bioconda channels, which provide a collection of community-curated packages.
* ```fastani```: The name of the package you want to install. Replace "fastani" with the actual package name you want to install.

In summary, the command creates a new conda environment named "foo" and installs the "fastani" package from the Conda Forge and Bioconda channels into that environment. Once created, you can activate the environment using conda activate foo and use the "fastani" package within that environment for your analysis or computations.

#### To activate foo environment

     $ conda activate foo
     
* ```conda```: The command-line package and environment management system.
* ```activate```: The command used to activate a conda environment.
* ```foo```: The name of the conda environment you want to activate. Replace "foo" with the name of your desired environment.

In summary, the command activates the conda environment named "foo", which means that the environment becomes the active environment in your current shell session. Once activated, any subsequent package installations or commands will be performed within the "foo" environment, isolating them from other environments on your system. 

#### To deactivate an active environment

     $ conda deactivate

### For one-one genome

#### Running FastANI

 ```
 fastANI -q genome1.fa -r genome2.fa --visualize -o file_name.out
 ``` 
* ```fastANI```: The command-line tool for calculating Average Nucleotide Identity (ANI) using a fast algorithm.
* ```-q genome1.fa```: Specifies the query genome file in FASTA format. Replace "genome1.fa" with the actual file name of your query genome.
* ```-r genome2.fa```: Specifies the reference genome file in FASTA format. Replace "genome2.fa" with the actual file name of your reference genome.
* ```--visualize```: Includes an option to generate a visualization of the ANI results.
* ```-o file_name.out```: Specifies the output file for the ANI results. Replace "file_name.out" with the desired name of the output file.

In summary, the command uses fastANI to compare the nucleotide sequences of two genomes (query and reference) provided in FASTA format. It calculates the Average Nucleotide Identity (ANI) between the genomes and produces an output file ("file_name.out") containing the ANI results. The ```--visualize``` option indicates that a visualization of the ANI results should also be generated.

 ### For one-one genome visualization grid 

 #### Running an R Script (Rscript.R)
 
 * Calling R in Linux
 
 ```
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
          
 ### For one-one genome visualization grid

 #### Running a Python Script (python3_scripts.py)
 
 * Calling Python in Linux
 
 ```
python3 python3_scripts.py query_file_name.fasta reference_file_name.fasta file_name.out.visual file_name.png --cmap viridis --link_color red --curve 
 
 ``` 
* ```python3```: The command used to run Python scripts in the Python 3 interpreter.
* ```python3_scripts.py```: The name of the Python script you want to run. Replace "python3_scripts.py" with the actual name of your Python script.
* ```query_file_name.fasta```: Specifies the query genome file in FASTA format. Replace "query_file_name.fasta" with the actual file name of your query genome.
* ```reference_file_name.fasta```: Specifies the reference genome file in FASTA format. Replace "reference_file_name.fasta" with the actual file name of your reference genome.
* ```file_name.out.visual```: Specifies the input file containing the visualization data. Replace "file_name.out.visual" with the actual name of your input file.
* ```file_name.png```: Specifies the output file name for the generated visualization. Replace "file_name.png" with the desired name of your output file.
* ```--cmap viridis```: Specifies the color map to be used in the visualization. In this case, "viridis" is chosen as the color map. You can replace "viridis" with other available color maps.
* ```--link_color red```: Specifies the color of the links in the visualization. In this case, "red" is chosen as the link color. You can replace "red" with other color names or hexadecimal color codes.
* ```--curve```: Specifies that curved links should be used in the visualization.

In summary, the command runs a Python script that generates a visualization using the input files and settings provided. The script takes in query and reference genome files, an input file with visualization data, and outputs a visualization in PNG format with specified color settings. The ```--cmap```, ```--link_color```, and ```--curve``` options allow customization of the color map, link color, and link style, respectively.



 Note: python3 denotes my version of python; hence, it is to be named accordingly to your own python version. 

 *  First install the pygenomeviz package:
 
 ``` 
    conda install -c conda-forge -c bioconda pygenomeviz 
    
  ``` 
  
* ```conda install```: The conda command used for package installation.
* ```-c conda-forge```: Specifies the conda channel "conda-forge" from which the package should be installed. Conda channels are repositories of pre-compiled packages.
* ```-c bioconda```: Specifies the conda channel "bioconda" from which the package should be installed. The bioconda channel specializes in bioinformatics-related packages.
* ```pygenomeviz```: The name of the package to be installed. In this case, it is "pygenomeviz".

In summary, the command installs the "pygenomeviz" package from the conda-forge and bioconda channels. The package is a bioinformatics tool used for visualizing and analyzing genomic data. By using this command, you can install the "pygenomeviz" package in your conda environment, making it available for use in your Python scripts or interactive sessions.
       
 *  Set up the directory and then run the script.
 
    ``` 
    python3 FastANI.py genome1.fasta genome2.fna fastani.out.visual example01.png --cmap viridis --link_color red --curve 
    
  ``` 
  
* python3: The command used to run Python scripts in the Python 3 interpreter.
* FastANI.py: The name of the Python script you want to run. Replace "FastANI.py" with the actual name of your Python script.
* genome1.fasta: Specifies the file name of the first genome in FASTA format. Replace "genome1.fasta" with the actual file name of your first genome.
* genome2.fna: Specifies the file name of the second genome in FASTA format. Replace "genome2.fna" with the actual file name of your second genome.
* fastani.out.visual: Specifies the input file containing the visualization data. Replace "fastani.out.visual" with the actual name of your input file.
* example01.png: Specifies the output file name for the generated visualization. Replace "example01.png" with the desired name of your output file.
* --cmap viridis: Specifies the color map to be used in the visualization. In this case, "viridis" is chosen as the color map. You can replace "viridis" with other available color maps.
* --link_color red: Specifies the color of the links in the visualization. In this case, "red" is chosen as the link color. You can replace "red" with other color names or hexadecimal color codes.
* --curve: Specifies that curved links should be used in the visualization.

In summary, the command runs a Python script named "FastANI.py" that generates a visualization using the input genomes and settings provided. The script calculates the Average Nucleotide Identity (ANI) between the genomes using the FastANI algorithm and produces a visualization file in PNG format. The ```--cmap```, ```--link_color```, and ```--curve options``` allow customization of the color map, link color, and link style, respectively.



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


 ### For one-many genome

 #### Additional FastANI and ANIclustermap Commands

  
  ```
  fastANI -q genome1.fa --rl genome_list.txt --visualize -o file_name.out 
     
Reference = [./users/P2E5.fasta, ./users/P3B4.fasta, ./users/P3D4.fasta, ./users/P3E5.fasta, ./users/T369_3.fasta]
Query = [P2D11.fasta]
``` 

* ```fastANI```: The name of the program or command you're executing. It is likely a tool for calculating Average Nucleotide Identity (ANI) between genomes.
* ```-q genome1.fa```: Specifies the query genome file, where "genome1.fa" is the file path to the query genome.
* ```--rl genome_list.txt```: Specifies the reference genome list file that contains the paths to the reference genomes. The file "genome_list.txt" likely contains a list of paths to the reference genome files.
* ```--visualize```: Indicates that you want to generate a visualization of the ANI results.
* ```-o file_name.out```: Specifies the output file name for the ANI results and visualization. In this case, the output is saved in the "file_name.out" file.

In summary, the command is using the "fastANI" program to calculate the Average Nucleotide Identity (ANI) between the query genome specified in "genome1.fa" and the reference genomes listed in the "genome_list.txt" file. It also generates a visualization of the ANI results, and the output is saved in the "file_name.out" file.


#### For one-many genome clustermap  

* Calling Python in Linux 

 ```
 First install the aniclustermap package: 

   conda install -c bioconda -c conda-forge aniclustermap
   
  ```

 *  Set up the directory and then run the script.
        
   ```
   ANIclustermap -i ./users1/ -o ./ANIclustermap_result \--fig_width 15 --cmap_colors white,orange,red 
   ```
          -i: input file and -o: output file
          users1 : folder containing the paths of both the query and reference list
   
* ```ANIclustermap```: The name of the program or command being executed. It is likely a tool used to create a clustermap based on Average Nucleotide Identity (ANI) values.
* ```-i ./users1/```: Specifies the input directory containing the ANI result files or data for multiple genomes. The directory path "./users1/" likely contains the ANI results or data for analysis.
* ```-o ./ANIclustermap_result```: Specifies the output directory or file prefix where the ANI clustermap results will be saved. The output will be saved in the "./ANIclustermap_result" directory or with the specified prefix.
* ```--fig_width 15```: Sets the width of the output clustermap figure to 15 units (or a specified value).
* ```--cmap_colors white,orange,red```: Specifies the color gradient for the clustermap. It likely sets the color scheme to transition from white to orange to red.

In summary, the command is using the "ANIclustermap" tool to generate a clustermap based on the ANI results or data found in the "./users1/" directory. The resulting clustermap will be saved in the "./ANIclustermap_result" directory, and it will have a width of 15 units. The colors in the clustermap will transition from white to orange to red according to the specified color gradient.





#### For one-many genome visualization grid  

* Calling Python in Linux

  ```
    First install the pygenomeviz mmseqs2 package: 
 
   conda install -c conda-forge -c bioconda pygenomeviz mmseqs2 
   ```

 * Set up the directory and then run the script.
   
   ```
   pgv-mmseqs --gbk_resources filename1.gbf filename2.gbf filename3.gbf filename4.gbf filename5.gbf -o mmseqs_new --tick_style axis --align_type left --   feature_plotstyle arrow
   ```
   
* ```pgv-mmseqs```: The name of the program or command you're executing. It is likely a tool for visualizing genomic features.
* ```--gbk_resources filename1.gbf filename2.gbf filename3.gbf filename4.gbf filename5.gbf```: Specifies multiple GenBank file resources (filename1.gbf, filename2.gbf, etc.) to be used for visualization.
* ```-o mmseqs_new```: Specifies the output directory or file name for the generated visualization. In this case, the output is saved in the "mmseqs_new" directory.
* ```--tick_style axis```: Specifies the style of tick marks on the axis of the visualization.
* ```--align_type left```: Specifies the alignment type for the genomic features, in this case, "left" alignment.
* ```--feature_plotstyle arrow```: Specifies the plot style for the genomic features, using arrows in this case.

In summary, the command is using the "pgv-mmseqs" program to generate a visualization of genomic features from multiple GenBank files. The output is saved in the "mmseqs_new" directory. Various options are provided to customize the visualization, such as tick style, alignment type, and feature plot style using arrows.
   
   
 ####  For many-many genome
   
   ```
   fastANI --ql users/users.txt --rl ref/ref.txt --visualize -o file_name.out
   ```
             users : folder containing the paths of the query
             ref :  folder containing the paths of the references
    
* ```fastANI```: The name of the program or command you're executing. It is likely a tool for calculating Average Nucleotide Identity (ANI) between genomes.
* ```--ql users/users.txt```: Specifies the query genome list file that contains the paths to the query genomes. The file "users/users.txt" likely contains a list of paths to the query genome files.
* ```--rl ref/ref.txt```: Specifies the reference genome list file that contains the paths to the reference genomes. The file "ref/ref.txt" likely contains a list of paths to the reference genome files.
* ```--visualize```: Indicates that you want to generate a visualization of the ANI results.
* ```-o file_name.out```: Specifies the output file name for the ANI results and visualization. In this case, the output is saved in the "file_name.out" file.

In summary, the command is using the "fastANI" program to calculate the Average Nucleotide Identity (ANI) between query genomes listed in the "users/users.txt" file and reference genomes listed in the "ref/ref.txt" file. Additionally, it generates a visualization of the ANI results, and the output is saved in the "file_name.out" file.

    
#### For many-many genome clustermap  

 * Calling Python in Linux
 
  ```
    ANIclustermap -i ./users_ref/ -o ./output_file_name \--fig_width 15 --cmap_colors white,orange,red
   ```
                    -i: input file and -o: output file
                    users_ref: folder containing the paths of both the query and reference list
    
* ```ANIclustermap```: The name of the program or command you're executing. It likely performs clustering and visualization of Average Nucleotide Identity (ANI) values.
* ```-i ./users_ref/```: Specifies the input directory or path containing the ANI data or reference genomes. In this case, it is "./users_ref/".
* ```-o ./output_file_name```: Specifies the output file or directory name for the resulting clustermap. In this case, it is "./output_file_name".
* ```--fig_width 15```: Specifies the width of the figure or visualization to be generated. The value "15" represents the desired width in some units (e.g., inches).
* ```--cmap_colors white,orange,red```: Specifies the colors to be used in the clustermap's colormap. In this case, it uses the colors white, orange, and red.

In summary, the command is using the "ANIclustermap" program to generate a clustermap visualization based on the ANI values or reference genomes stored in the "./users_ref/" directory. The resulting clustermap is saved in the "./output_file_name" file or directory. Additional options are provided to customize the figure width and colormap colors used in the visualization.
                  
                    
#### For many-many genome visualization grid 
  * Calling Python in Linux
  
   ```
pgv-mmseqs --gbk_resources filename1.gbf filename2.gbf filename3.gbf filename4.gbf filename5.gbf -o mmseqs_new --tick_style axis
--align_type left --feature_plotstyle arrow --fig_width 15 --track_labelsize 20 --fig_track_height 1.0 --arrow_shaft_ratio 0.5

   ```  
   
* ```pgv-mmseqs```: The name of the program or command you're executing. It is likely a tool for visualizing genomic features.
* ```--gbk_resources filename1.gbf filename2.gbf filename3.gbf filename4.gbf filename5.gbf```: Specifies multiple GenBank file resources (filename1.gbf, filename2.gbf, etc.) to be used for visualization.
* ```-o mmseqs_new```: Specifies the output directory or file name for the generated visualization. In this case, the output is saved in the "mmseqs_new" directory.
* ```--tick_style axis```: Specifies the style of tick marks on the axis of the visualization.
* ```--align_type left```: Specifies the alignment type for the genomic features, in this case, "left" alignment.
* ```--feature_plotstyle arrow```: Specifies the plot style for the genomic features, using arrows in this case.
* ```--fig_width```: Specifies the width of the figure or visualization.
* ```--track_labelsize```: Specifies the font size of the track labels.
* ```--fig_track_height```: Specifies the height of the track in the figure or visualization.
* ```--arrow_shaft_ratio```: Specifies the ratio of the arrow shaft thickness to the arrow length.

In summary, the command is using the "pgv-mmseqs" program to generate a visualization of genomic features from multiple GenBank files. The output is saved in the "mmseqs_new" directory. Various options are provided to customize the visualization, such as tick style, alignment type, feature plot style, figure width, track label size, track height, and arrow shaft ratio.

        
       Note: For every visualization grid, visualize.py is designed to do comparative plots of prokaryotic genomes having the size less than 10Mb. 
        
                
