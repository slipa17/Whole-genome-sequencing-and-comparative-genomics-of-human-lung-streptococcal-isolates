#To install fastani packages:(conda create -n foo -c conda-forge -c bioconda fastani)


(base) slipakanungo@Slipas-MBP ~ % conda create -n foo -c conda-forge -c bioconda fastani
Collecting package metadata (current_repodata.json): done
Solving environment: done

## Package Plan ##

  environment location: /Users/slipakanungo/anaconda3/envs/foo

  added / updated specs:
    - fastani


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    fastani-1.33               |       h0a26cfa_1         151 KB  bioconda
    gsl-2.7                    |       h93259b0_0         3.1 MB  conda-forge
    libblas-3.9.0              |15_osx64_openblas          12 KB  conda-forge
    libcblas-3.9.0             |15_osx64_openblas          12 KB  conda-forge
    libcxx-14.0.6              |       hccf4f1f_0         1.3 MB  conda-forge
    libgfortran-5.0.0          |10_4_0_h97931a8_25         146 KB  conda-forge
    libgfortran5-11.3.0        |      h082f757_25         1.9 MB  conda-forge
    libopenblas-0.3.20         |       h9a5756b_1         4.9 MB
    libzlib-1.2.12             |       hfd90126_3          65 KB  conda-forge
    llvm-openmp-8.0.1          |       h770b8ee_0         253 KB  conda-forge
    openmp-8.0.1               |                0           8 KB  conda-forge
    zlib-1.2.12                |       hfd90126_3          95 KB  conda-forge
    ------------------------------------------------------------
                                           Total:        11.9 MB

The following NEW packages will be INSTALLED:

  fastani            bioconda/osx-64::fastani-1.33-h0a26cfa_1
  gsl                conda-forge/osx-64::gsl-2.7-h93259b0_0
  libblas            conda-forge/osx-64::libblas-3.9.0-15_osx64_openblas
  libcblas           conda-forge/osx-64::libcblas-3.9.0-15_osx64_openblas
  libcxx             conda-forge/osx-64::libcxx-14.0.6-hccf4f1f_0
  libgfortran        conda-forge/osx-64::libgfortran-5.0.0-10_4_0_h97931a8_25
  libgfortran5       conda-forge/osx-64::libgfortran5-11.3.0-h082f757_25
  libopenblas        pkgs/main/osx-64::libopenblas-0.3.20-h9a5756b_1
  libzlib            conda-forge/osx-64::libzlib-1.2.12-hfd90126_3
  llvm-openmp        conda-forge/osx-64::llvm-openmp-8.0.1-h770b8ee_0
  openmp             conda-forge/osx-64::openmp-8.0.1-0
  zlib               conda-forge/osx-64::zlib-1.2.12-hfd90126_3


Proceed ([y]/n)? y


Downloading and Extracting Packages
libgfortran-5.0.0    | 146 KB    | ################################################################################################################################################################# | 100% 
llvm-openmp-8.0.1    | 253 KB    | ################################################################################################################################################################# | 100% 
libopenblas-0.3.20   | 4.9 MB    | ################################################################################################################################################################# | 100% 
gsl-2.7              | 3.1 MB    | ################################################################################################################################################################# | 100% 
openmp-8.0.1         | 8 KB      | ################################################################################################################################################################# | 100% 
libblas-3.9.0        | 12 KB     | ################################################################################################################################################################# | 100% 
fastani-1.33         | 151 KB    | ################################################################################################################################################################# | 100% 
zlib-1.2.12          | 95 KB     | ################################################################################################################################################################# | 100% 
libcblas-3.9.0       | 12 KB     | ################################################################################################################################################################# | 100% 
libcxx-14.0.6        | 1.3 MB    | ################################################################################################################################################################# | 100% 
libzlib-1.2.12       | 65 KB     | ################################################################################################################################################################# | 100% 
libgfortran5-11.3.0  | 1.9 MB    | ################################################################################################################################################################# | 100% 
Preparing transaction: done
Verifying transaction: done
Executing transaction: done
#
# To activate this environment, use
#
#     $ conda activate foo
#
# To deactivate an active environment, use
#
#     $ conda deactivate

Retrieving notices: ...working... done

#To activate foo environment:(conda activate foo)

(base) slipakanungo@Slipas-MBP ~ % conda activate foo
(foo) slipakanungo@Slipas-MBP ~ % fastani -h
-----------------
fastANI is a fast alignment-free implementation for computing whole-genome Average Nucleotide Identity (ANI) between genomes
-----------------
Example usage:
$ fastANI -q genome1.fa -r genome2.fa -o output.txt
$ fastANI -q genome1.fa --rl genome_list.txt -o output.txt

SYNOPSIS
--------
fastani [-h] [-r <value>] [--rl <value>] [-q <value>] [--ql <value>] [-k
        <value>] [-t <value>] [--fragLen <value>] [--minFraction <value>]
        [--visualize] [--matrix] [-o <value>] [-v]

OPTIONS
--------
-h, --help
     print this help page

-r, --ref <value>
     reference genome (fasta/fastq)[.gz]

--rl, --refList <value>
     a file containing list of reference genome files, one genome per line

-q, --query <value>
     query genome (fasta/fastq)[.gz]

--ql, --queryList <value>
     a file containing list of query genome files, one genome per line

-k, --kmer <value>
     kmer size <= 16 [default : 16]

-t, --threads <value>
     thread count for parallel execution [default : 1]

--fragLen <value>
     fragment length [default : 3,000]

--minFraction <value>
     minimum fraction of genome that must be shared for trusting ANI. If
     reference and query genome size differ, smaller one among the two is
     considered. [default : 0.2]

--visualize
     output mappings for visualization, can be enabled for single genome to
     single genome comparison only [disabled by default]

--matrix
     also output ANI values as lower triangular matrix (format inspired from
     phylip). If enabled, you should expect an output file with .matrix
     extension [disabled by default]

-o, --output <value>
     output file name

-v, --version
     show version
     
     #For one-one genome:(fastANI -q genome1.fa -r genome2.fa --visualize -o file_name.out)
     
     Set the directory first and then run the script.
     
(foo) slipakanungo@Slipas-MBP Linux % fastani -q P2D11.fasta -r 2-GCF_900637025.1_46338_H01_genomic.fna --visualize -o fastani.out 
>>>>>>>>>>>>>>>>>>
Reference = [2-GCF_900637025.1_46338_H01_genomic.fna]
Query = [P2D11.fasta]
Kmer size = 16
Fragment length = 3000
Threads = 1
ANI output file = fastani.out
>>>>>>>>>>>>>>>>>>
INFO [thread 0], skch::main, Count of threads executing parallel_for : 1
INFO [thread 0], skch::Sketch::build, window size for minimizer sampling  = 24
INFO [thread 0], skch::Sketch::build, minimizers picked from reference = 154824
INFO [thread 0], skch::Sketch::index, unique minimizers = 151742
INFO [thread 0], skch::Sketch::computeFreqHist, Frequency histogram of minimizers = (1, 150028) ... (11, 1)
INFO [thread 0], skch::Sketch::computeFreqHist, consider all minimizers during lookup.
INFO [thread 0], skch::main, Time spent sketching the reference : 0.167515 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #1 : 0.257349 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.00188829 sec
INFO [thread 0], skch::main, ready to exit the loop
INFO, skch::main, parallel_for execution finished    

 Calling R in Linux:-    #For one-one genome visualization grid:(Rscript Rscript.R query_file_name.fasta reference_file_name.fasta file_name.out.visual)
     
     Set the directory first and then run the script.
     
(foo) slipakanungo@Slipas-MBP Linux % Rscript FastANI.R P2D11.fasta 2-GCF_900637025.1_46338_H01_genomic.fna fastani.out.visual
Loading required package: ade4
Loading required package: grid
null device 
          1   
          
 Calling Python in Linux:-  #For one-one genome visualization grid:(python3 python3_scripts.py query_file_name.fasta reference_file_name.fasta file_name.out.visual file_name.png --cmap viridis --link_color red --curve) 
      Note: python3 is my version of python; hence, it is to be named accordingly to your own python version. 

* First install the pygenomeviz package:(conda install -c conda-forge -c bioconda pygenomeviz) 

(foo) slipakanungo@Slipas-MBP ~ % conda install -c conda-forge -c bioconda pygenomeviz
Collecting package metadata (current_repodata.json): done
Solving environment: done

## Package Plan ##

  environment location: /Users/slipakanungo/anaconda3/envs/foo

  added / updated specs:
    - pygenomeviz


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    biopython-1.79             |   py39h63b48b0_2         2.6 MB  conda-forge
    brotli-1.0.9               |       h5eb16cf_7          18 KB  conda-forge
    brotli-bin-1.0.9           |       h5eb16cf_7          17 KB  conda-forge
    ca-certificates-2022.9.14  |       h033912b_0         152 KB  conda-forge
    certifi-2022.9.14          |     pyhd8ed1ab_0         156 KB  conda-forge
    cycler-0.11.0              |     pyhd8ed1ab_0          10 KB  conda-forge
    fonttools-4.37.1           |   py39ha30fb19_0         1.8 MB  conda-forge
    freetype-2.12.1            |       h3f81eb7_0         915 KB  conda-forge
    jpeg-9e                    |       hac89ed1_2         260 KB  conda-forge
    kiwisolver-1.4.4           |   py39h7c694c3_0          65 KB  conda-forge
    lcms2-2.12                 |       h577c468_0         404 KB  conda-forge
    lerc-4.0.0                 |       hb486fe8_0         284 KB  conda-forge
    libbrotlicommon-1.0.9      |       h5eb16cf_7          63 KB  conda-forge
    libbrotlidec-1.0.9         |       h5eb16cf_7          33 KB  conda-forge
    libbrotlienc-1.0.9         |       h5eb16cf_7         320 KB  conda-forge
    libdeflate-1.14            |       hb7f2c08_0          85 KB  conda-forge
    liblapack-3.9.0            |15_osx64_openblas          12 KB  conda-forge
    libpng-1.6.37              |       h5481273_4         312 KB  conda-forge
    libsqlite-3.39.3           |       ha978bb4_0         871 KB  conda-forge
    libtiff-4.4.0              |       hdb44e8a_4         604 KB  conda-forge
    libwebp-base-1.2.4         |       h775f41a_0         385 KB  conda-forge
    libxcb-1.13                |    h0d85af4_1004         305 KB  conda-forge
    matplotlib-base-3.5.3      |   py39h35e3ac7_2         7.4 MB  conda-forge
    munkres-1.1.4              |     pyh9f0ad1d_0          12 KB  conda-forge
    numpy-1.23.3               |   py39h34843a6_0         6.7 MB  conda-forge
    openjpeg-2.5.0             |       h5d0d7b0_1         503 KB  conda-forge
    openssl-3.0.5              |       hfd90126_2         2.5 MB  conda-forge
    packaging-21.3             |     pyhd8ed1ab_0          36 KB  conda-forge
    pillow-9.2.0               |   py39h4d560c1_2        45.1 MB  conda-forge
    pip-22.2.2                 |     pyhd8ed1ab_0         1.5 MB  conda-forge
    pthread-stubs-0.4          |    hc929b4f_1001           6 KB  conda-forge
    pygenomeviz-0.2.2          |     pyhdfd78af_0         175 KB  bioconda
    pyparsing-3.0.9            |     pyhd8ed1ab_0          79 KB  conda-forge
    python-3.9.13              |hf8d34f4_0_cpython        12.8 MB  conda-forge
    python-dateutil-2.8.2      |     pyhd8ed1ab_0         240 KB  conda-forge
    setuptools-65.3.0          |     pyhd8ed1ab_1         782 KB  conda-forge
    sqlite-3.39.3              |       h9ae0607_0         875 KB  conda-forge
    typing-extensions-4.3.0    |       hd8ed1ab_0           8 KB  conda-forge
    typing_extensions-4.3.0    |     pyha770c72_0          28 KB  conda-forge
    tzdata-2022c               |       h191b570_0         119 KB  conda-forge
    unicodedata2-14.0.0        |   py39h63b48b0_1         485 KB  conda-forge
    xorg-libxau-1.0.9          |       h35c211d_0          11 KB  conda-forge
    xorg-libxdmcp-1.1.3        |       h35c211d_0          17 KB  conda-forge
    xz-5.2.6                   |       h775f41a_0         233 KB  conda-forge
    zstd-1.5.2                 |       hfa58983_4         470 KB  conda-forge
    ------------------------------------------------------------
                                           Total:        89.7 MB

The following NEW packages will be INSTALLED:

  biopython          conda-forge/osx-64::biopython-1.79-py39h63b48b0_2
  brotli             conda-forge/osx-64::brotli-1.0.9-h5eb16cf_7
  brotli-bin         conda-forge/osx-64::brotli-bin-1.0.9-h5eb16cf_7
  bzip2              conda-forge/osx-64::bzip2-1.0.8-h0d85af4_4
  ca-certificates    conda-forge/osx-64::ca-certificates-2022.9.14-h033912b_0
  certifi            conda-forge/noarch::certifi-2022.9.14-pyhd8ed1ab_0
  cycler             conda-forge/noarch::cycler-0.11.0-pyhd8ed1ab_0
  fonttools          conda-forge/osx-64::fonttools-4.37.1-py39ha30fb19_0
  freetype           conda-forge/osx-64::freetype-2.12.1-h3f81eb7_0
  jpeg               conda-forge/osx-64::jpeg-9e-hac89ed1_2
  kiwisolver         conda-forge/osx-64::kiwisolver-1.4.4-py39h7c694c3_0
  lcms2              conda-forge/osx-64::lcms2-2.12-h577c468_0
  lerc               conda-forge/osx-64::lerc-4.0.0-hb486fe8_0
  libbrotlicommon    conda-forge/osx-64::libbrotlicommon-1.0.9-h5eb16cf_7
  libbrotlidec       conda-forge/osx-64::libbrotlidec-1.0.9-h5eb16cf_7
  libbrotlienc       conda-forge/osx-64::libbrotlienc-1.0.9-h5eb16cf_7
  libdeflate         conda-forge/osx-64::libdeflate-1.14-hb7f2c08_0
  libffi             conda-forge/osx-64::libffi-3.4.2-h0d85af4_5
  liblapack          conda-forge/osx-64::liblapack-3.9.0-15_osx64_openblas
  libpng             conda-forge/osx-64::libpng-1.6.37-h5481273_4
  libsqlite          conda-forge/osx-64::libsqlite-3.39.3-ha978bb4_0
  libtiff            conda-forge/osx-64::libtiff-4.4.0-hdb44e8a_4
  libwebp-base       conda-forge/osx-64::libwebp-base-1.2.4-h775f41a_0
  libxcb             conda-forge/osx-64::libxcb-1.13-h0d85af4_1004
  matplotlib-base    conda-forge/osx-64::matplotlib-base-3.5.3-py39h35e3ac7_2
  munkres            conda-forge/noarch::munkres-1.1.4-pyh9f0ad1d_0
  ncurses            conda-forge/osx-64::ncurses-6.3-h96cf925_1
  numpy              conda-forge/osx-64::numpy-1.23.3-py39h34843a6_0
  openjpeg           conda-forge/osx-64::openjpeg-2.5.0-h5d0d7b0_1
  openssl            conda-forge/osx-64::openssl-3.0.5-hfd90126_2
  packaging          conda-forge/noarch::packaging-21.3-pyhd8ed1ab_0
  pillow             conda-forge/osx-64::pillow-9.2.0-py39h4d560c1_2
  pip                conda-forge/noarch::pip-22.2.2-pyhd8ed1ab_0
  pthread-stubs      conda-forge/osx-64::pthread-stubs-0.4-hc929b4f_1001
  pygenomeviz        bioconda/noarch::pygenomeviz-0.2.2-pyhdfd78af_0
  pyparsing          conda-forge/noarch::pyparsing-3.0.9-pyhd8ed1ab_0
  python             conda-forge/osx-64::python-3.9.13-hf8d34f4_0_cpython
  python-dateutil    conda-forge/noarch::python-dateutil-2.8.2-pyhd8ed1ab_0
  python_abi         conda-forge/osx-64::python_abi-3.9-2_cp39
  readline           conda-forge/osx-64::readline-8.1.2-h3899abd_0
  setuptools         conda-forge/noarch::setuptools-65.3.0-pyhd8ed1ab_1
  six                conda-forge/noarch::six-1.16.0-pyh6c4a22f_0
  sqlite             conda-forge/osx-64::sqlite-3.39.3-h9ae0607_0
  tk                 conda-forge/osx-64::tk-8.6.12-h5dbffcc_0
  typing-extensions  conda-forge/noarch::typing-extensions-4.3.0-hd8ed1ab_0
  typing_extensions  conda-forge/noarch::typing_extensions-4.3.0-pyha770c72_0
  tzdata             conda-forge/noarch::tzdata-2022c-h191b570_0
  unicodedata2       conda-forge/osx-64::unicodedata2-14.0.0-py39h63b48b0_1
  wheel              conda-forge/noarch::wheel-0.37.1-pyhd8ed1ab_0
  xorg-libxau        conda-forge/osx-64::xorg-libxau-1.0.9-h35c211d_0
  xorg-libxdmcp      conda-forge/osx-64::xorg-libxdmcp-1.1.3-h35c211d_0
  xz                 conda-forge/osx-64::xz-5.2.6-h775f41a_0
  zstd               conda-forge/osx-64::zstd-1.5.2-hfa58983_4


Proceed ([y]/n)? y


Downloading and Extracting Packages
jpeg-9e              | 260 KB    | ################################################################################################################################################################# | 100% 
sqlite-3.39.3        | 875 KB    | ################################################################################################################################################################# | 100% 
openjpeg-2.5.0       | 503 KB    | ################################################################################################################################################################# | 100% 
libpng-1.6.37        | 312 KB    | ################################################################################################################################################################# | 100% 
numpy-1.23.3         | 6.7 MB    | ################################################################################################################################################################# | 100% 
python-dateutil-2.8. | 240 KB    | ################################################################################################################################################################# | 100% 
libbrotlicommon-1.0. | 63 KB     | ################################################################################################################################################################# | 100% 
brotli-bin-1.0.9     | 17 KB     | ################################################################################################################################################################# | 100% 
fonttools-4.37.1     | 1.8 MB    | ################################################################################################################################################################# | 100% 
certifi-2022.9.14    | 156 KB    | ################################################################################################################################################################# | 100% 
brotli-1.0.9         | 18 KB     | ################################################################################################################################################################# | 100% 
kiwisolver-1.4.4     | 65 KB     | ################################################################################################################################################################# | 100% 
libsqlite-3.39.3     | 871 KB    | ################################################################################################################################################################# | 100% 
lerc-4.0.0           | 284 KB    | ################################################################################################################################################################# | 100% 
libwebp-base-1.2.4   | 385 KB    | ################################################################################################################################################################# | 100% 
libdeflate-1.14      | 85 KB     | ################################################################################################################################################################# | 100% 
xorg-libxau-1.0.9    | 11 KB     | ################################################################################################################################################################# | 100% 
libbrotlienc-1.0.9   | 320 KB    | ################################################################################################################################################################# | 100% 
libbrotlidec-1.0.9   | 33 KB     | ################################################################################################################################################################# | 100% 
typing_extensions-4. | 28 KB     | ################################################################################################################################################################# | 100% 
xorg-libxdmcp-1.1.3  | 17 KB     | ################################################################################################################################################################# | 100% 
liblapack-3.9.0      | 12 KB     | ################################################################################################################################################################# | 100% 
libtiff-4.4.0        | 604 KB    | ################################################################################################################################################################# | 100% 
lcms2-2.12           | 404 KB    | ################################################################################################################################################################# | 100% 
munkres-1.1.4        | 12 KB     | ################################################################################################################################################################# | 100% 
pthread-stubs-0.4    | 6 KB      | ################################################################################################################################################################# | 100% 
matplotlib-base-3.5. | 7.4 MB    | ################################################################################################################################################################# | 100% 
libxcb-1.13          | 305 KB    | ################################################################################################################################################################# | 100% 
typing-extensions-4. | 8 KB      | ################################################################################################################################################################# | 100% 
packaging-21.3       | 36 KB     | ################################################################################################################################################################# | 100% 
pip-22.2.2           | 1.5 MB    | ################################################################################################################################################################# | 100% 
setuptools-65.3.0    | 782 KB    | ################################################################################################################################################################# | 100% 
freetype-2.12.1      | 915 KB    | ################################################################################################################################################################# | 100% 
cycler-0.11.0        | 10 KB     | ################################################################################################################################################################# | 100% 
unicodedata2-14.0.0  | 485 KB    | ################################################################################################################################################################# | 100% 
openssl-3.0.5        | 2.5 MB    | ################################################################################################################################################################# | 100% 
biopython-1.79       | 2.6 MB    | ################################################################################################################################################################# | 100% 
python-3.9.13        | 12.8 MB   | ################################################################################################################################################################# | 100% 
zstd-1.5.2           | 470 KB    | ################################################################################################################################################################# | 100% 
tzdata-2022c         | 119 KB    | ################################################################################################################################################################# | 100% 
xz-5.2.6             | 233 KB    | ################################################################################################################################################################# | 100% 
ca-certificates-2022 | 152 KB    | ################################################################################################################################################################# | 100% 
pillow-9.2.0         | 45.1 MB   | ################################################################################################################################################################# | 100% 
pygenomeviz-0.2.2    | 175 KB    | ################################################################################################################################################################# | 100% 
pyparsing-3.0.9      | 79 KB     | ################################################################################################################################################################# | 100% 
Preparing transaction: done
Verifying transaction: done
Executing transaction: done
Retrieving notices: ...working... done

          Set the directory first and then run the script.

(foo) slipakanungo@Slipas-MBP Linux % python3 FastANI.py P2D11.fasta 2-GCF_900637025.1_46338_H01_genomic.fna fastani.out.visual example01.png --cmap viridis --link_color red --curve 

     #For one-many genome:(fastANI -q genome1.fa --rl genome_list.txt --visualize -o file_name.out) 
     
          Set the directory first and then run the script.
     
(foo) slipakanungo@Slipas-MBP Linux_users % fastANI -q P2D11.fasta --rl users/Ref.txt --visualize -o fastani_users3.out
>>>>>>>>>>>>>>>>>>
Reference = [./users/P2E5.fasta, ./users/P3B4.fasta, ./users/P3D4.fasta, ./users/P3E5.fasta, ./users/T369_3.fasta]
Query = [P2D11.fasta]
Kmer size = 16
Fragment length = 3000
Threads = 1
ANI output file = fastani_users3.out
>>>>>>>>>>>>>>>>>>
INFO [thread 0], skch::main, Count of threads executing parallel_for : 1
INFO [thread 0], skch::Sketch::build, window size for minimizer sampling  = 24
INFO [thread 0], skch::Sketch::build, minimizers picked from reference = 825632
INFO [thread 0], skch::Sketch::index, unique minimizers = 697528
INFO [thread 0], skch::Sketch::computeFreqHist, Frequency histogram of minimizers = (1, 594857) ... (182, 1)
INFO [thread 0], skch::Sketch::computeFreqHist, consider all minimizers during lookup.
INFO [thread 0], skch::main, Time spent sketching the reference : 0.669318 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #1 : 0.313913 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.00125812 sec
INFO [thread 0], skch::main, ready to exit the loop
INFO, skch::main, parallel_for execution finished  

Calling Python in Linux:-  #For one-many genome clustermap:(ANIclustermap -i ./folder containing the paths of both the query and reference list/ -o ./create a new output directory \--fig_width 15 --cmap_colors white,orange,red )
            -i: input file and -o: output file

*First install the aniclustermap package:(conda install -c bioconda -c conda-forge aniclustermap)

(foo) slipakanungo@Slipas-MBP ~ % conda install -c bioconda -c conda-forge aniclustermap
Collecting package metadata (current_repodata.json): done
Solving environment: done

## Package Plan ##

  environment location: /Users/slipakanungo/anaconda3/envs/foo

  added / updated specs:
    - aniclustermap


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    aniclustermap-1.1.0        |     pyhdfd78af_0         7.0 MB  bioconda
    pandas-1.4.4               |   py39hca71b8a_0        11.9 MB  conda-forge
    patsy-0.5.2                |     pyhd8ed1ab_0         188 KB  conda-forge
    pytz-2022.2.1              |     pyhd8ed1ab_0         224 KB  conda-forge
    scipy-1.9.1                |   py39h9488793_0        22.9 MB  conda-forge
    seaborn-0.11.2             |       hd8ed1ab_0           4 KB  conda-forge
    seaborn-base-0.11.2        |     pyhd8ed1ab_0         223 KB  conda-forge
    statsmodels-0.13.2         |   py39h15b18c7_0        10.6 MB  conda-forge
    ------------------------------------------------------------
                                           Total:        53.0 MB

The following NEW packages will be INSTALLED:

  aniclustermap      bioconda/noarch::aniclustermap-1.1.0-pyhdfd78af_0
  pandas             conda-forge/osx-64::pandas-1.4.4-py39hca71b8a_0
  patsy              conda-forge/noarch::patsy-0.5.2-pyhd8ed1ab_0
  pytz               conda-forge/noarch::pytz-2022.2.1-pyhd8ed1ab_0
  scipy              conda-forge/osx-64::scipy-1.9.1-py39h9488793_0
  seaborn            conda-forge/noarch::seaborn-0.11.2-hd8ed1ab_0
  seaborn-base       conda-forge/noarch::seaborn-base-0.11.2-pyhd8ed1ab_0
  statsmodels        conda-forge/osx-64::statsmodels-0.13.2-py39h15b18c7_0


Proceed ([y]/n)? y


Downloading and Extracting Packages
patsy-0.5.2          | 188 KB    | ################################################################################################################################################################# | 100% 
scipy-1.9.1          | 22.9 MB   | ################################################################################################################################################################# | 100% 
pytz-2022.2.1        | 224 KB    | ################################################################################################################################################################# | 100% 
pandas-1.4.4         | 11.9 MB   | ################################################################################################################################################################# | 100% 
seaborn-0.11.2       | 4 KB      | ################################################################################################################################################################# | 100% 
seaborn-base-0.11.2  | 223 KB    | ################################################################################################################################################################# | 100% 
aniclustermap-1.1.0  | 7.0 MB    | ################################################################################################################################################################# | 100% 
statsmodels-0.13.2   | 10.6 MB   | ################################################################################################################################################################# | 100% 
Preparing transaction: done
Verifying transaction: done
Executing transaction: done
Retrieving notices: ...working... done

        Set up the directory and then run the script.
        
(foo) slipakanungo@Slipas-MBP Linux_users % ANIclustermap -i ./users1/ -o ./ANIclustermap_result \--fig_width 15 --cmap_colors white,orange,red 
# Step1: Run fastANI between all-vs-all 6 genomes.
>>>>>>>>>>>>>>>>>>
Reference = [users1/P3D4.fasta, users1/T369_3.fasta, users1/P3B4.fasta, users1/P3E5.fasta, users1/P2E5.fasta, users1/P2D11.fasta]
Query = [users1/P3D4.fasta, users1/T369_3.fasta, users1/P3B4.fasta, users1/P3E5.fasta, users1/P2E5.fasta, users1/P2D11.fasta]
Kmer size = 16
Fragment length = 3000
Threads = 7
ANI output file = ANIclustermap_result/work/fastani_result
>>>>>>>>>>>>>>>>>>
INFO [thread 0], skch::main, Count of threads executing parallel_for : 7
INFO [thread 0], skch::Sketch::build, window size for minimizer sampling  = 24
INFO [thread 0], skch::Sketch::build, minimizers picked from reference = 171653
INFO [thread 0], skch::Sketch::index, unique minimizers = 169159
INFO [thread 0], skch::Sketch::computeFreqHist, Frequency histogram of minimizers = (1, 168046) ... (83, 1)
INFO [thread 0], skch::Sketch::computeFreqHist, consider all minimizers during lookup.
INFO [thread 0], skch::main, Time spent sketching the reference : 0.270163 sec
INFO [thread 6], skch::main, ready to exit the loop
INFO [thread 3], skch::main, ready to exit the loop
INFO [thread 5], skch::main, ready to exit the loop
INFO [thread 0], skch::main, Time spent mapping fragments in query #1 : 2.71866 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.00146242 sec
INFO [thread 4], skch::main, ready to exit the loop
INFO [thread 0], skch::main, Time spent mapping fragments in query #2 : 1.41079 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000521416 sec
INFO [thread 1], skch::main, ready to exit the loop
INFO [thread 0], skch::main, Time spent mapping fragments in query #3 : 1.5226 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000530417 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #4 : 0.230559 sec
INFO [thread 0], skch::main, Time spent post mapping : 2.025e-05 sec
INFO [thread 2], skch::main, ready to exit the loop
INFO [thread 0], skch::main, Time spent mapping fragments in query #5 : 0.250619 sec
INFO [thread 0], skch::main, Time spent post mapping : 2.9334e-05 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #6 : 0.27013 sec
INFO [thread 0], skch::main, Time spent post mapping : 3.7416e-05 sec
INFO [thread 0], skch::main, ready to exit the loop
INFO, skch::main, parallel_for execution finished
# Step2: Clustering fastANI matrix by scipy's UPGMA method.
# Step3: Using clustered matrix, draw ANI clustermap by seaborn. 

Calling Python in Linux:-  #For one-many genome visualization grid:(pgv-mmseqs --gbk_resources filename1.gbf filename2.gbf filename3.gbf filename4.gbf filename5.gbf -o mmseqs_new --tick_style axis --align_type left --feature_plotstyle arrow)

*First install the pygenomeviz mmseqs2 package:(conda install -c conda-forge -c bioconda pygenomeviz mmseqs2) 

(foo) slipakanungo@Slipas-MBP ~ % conda install -c conda-forge -c bioconda pygenomeviz mmseqs2

Collecting package metadata (current_repodata.json): done
Solving environment: failed with initial frozen solve. Retrying with flexible solve.
Solving environment: failed with repodata from current_repodata.json, will retry with next repodata source.
Collecting package metadata (repodata.json): done
Solving environment: done

## Package Plan ##

  environment location: /Users/slipakanungo/anaconda3/envs/foo

  added / updated specs:
    - mmseqs2
    - pygenomeviz


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    gawk-5.1.0                 |       h8a989fb_0         1.3 MB  conda-forge
    gettext-0.19.8.1           |       h1f1d5ed_1         3.4 MB  conda-forge
    libidn2-2.3.3              |       hac89ed1_0         169 KB  conda-forge
    libunistring-0.9.10        |       h0d85af4_0         1.3 MB  conda-forge
    mmseqs2-12.113e3           |       he641558_1         1.6 MB  bioconda
    wget-1.20.3                |       hd3787cc_1         812 KB  conda-forge
    ------------------------------------------------------------
                                           Total:         8.6 MB

The following NEW packages will be INSTALLED:

  gawk               conda-forge/osx-64::gawk-5.1.0-h8a989fb_0
  gettext            conda-forge/osx-64::gettext-0.19.8.1-h1f1d5ed_1
  libidn2            conda-forge/osx-64::libidn2-2.3.3-hac89ed1_0
  libunistring       conda-forge/osx-64::libunistring-0.9.10-h0d85af4_0
  mmseqs2            bioconda/osx-64::mmseqs2-12.113e3-he641558_1
  wget               conda-forge/osx-64::wget-1.20.3-hd3787cc_1


Proceed ([y]/n)? y


Downloading and Extracting Packages
wget-1.20.3          | 812 KB    | ################################################################################################################################################################# | 100% 
libidn2-2.3.3        | 169 KB    | ################################################################################################################################################################# | 100% 
libunistring-0.9.10  | 1.3 MB    | ################################################################################################################################################################# | 100% 
mmseqs2-12.113e3     | 1.6 MB    | ################################################################################################################################################################# | 100% 
gawk-5.1.0           | 1.3 MB    | ################################################################################################################################################################# | 100% 
gettext-0.19.8.1     | 3.4 MB    | ################################################################################################################################################################# | 100% 
Preparing transaction: done
Verifying transaction: done
Executing transaction: done
Retrieving notices: ...working... done  

                 Set up the directory and then run the script.
      
(foo) slipakanungo@Slipas-MBP users_new % pgv-mmseqs --gbk_resources P2D11.gbf P2E5.gbf P3B4.gbf P3D4.gbf P3E5.gbf T369_3.gbf -o mmseqs_new --tick_style axis --align_type left --feature_plotstyle arrow

******************** Run Parameters ********************
gbk_resources:
  01. P2D11.gbf (0 - 2,298,078 bp)
  02. P2E5.gbf (0 - 2,120,935 bp)
  03. P3B4.gbf (0 - 2,113,996 bp)
  04. P3D4.gbf (0 - 2,151,237 bp)
  05. P3E5.gbf (0 - 1,908,447 bp)
  06. T369_3.gbf (0 - 2,002,660 bp)
outdir: mmseqs_new
format: png
reuse: False
evalue: 0.001
min_identity: 0
thread_num: None
fig_width: 15
fig_track_height: 1.0
feature_track_ratio: 1.0
link_track_ratio: 5.0
tick_track_ratio: 1.0
track_labelsize: 20
tick_labelsize: 15
normal_link_color: grey
inverted_link_color: red
align_type: left
tick_style: axis
feature_plotstyle: arrow
arrow_shaft_ratio: 0.5
feature_color: orange
feature_linewidth: 0.0
curve: False
dpi: 300
*********************************************************
Run MMseqs RBH search.

# 01: P2D11-P2E5 RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/P2D11.faa mmseqs_new/mmseqs_result/P2E5.faa mmseqs_new/mmseqs_result/01_P2D11-P2E5_rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpb4fisalx --threads 7 -e 0.001 -v 0

# 02: P2E5-P3B4 RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/P2E5.faa mmseqs_new/mmseqs_result/P3B4.faa mmseqs_new/mmseqs_result/02_P2E5-P3B4_rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmptfnx28x5 --threads 7 -e 0.001 -v 0

# 03: P3B4-P3D4 RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/P3B4.faa mmseqs_new/mmseqs_result/P3D4.faa mmseqs_new/mmseqs_result/03_P3B4-P3D4_rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmp8alj1n0u --threads 7 -e 0.001 -v 0

# 04: P3D4-P3E5 RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/P3D4.faa mmseqs_new/mmseqs_result/P3E5.faa mmseqs_new/mmseqs_result/04_P3D4-P3E5_rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmppbolijsj --threads 7 -e 0.001 -v 0

# 05: P3E5-T369_3 RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/P3E5.faa mmseqs_new/mmseqs_result/T369_3.faa mmseqs_new/mmseqs_result/05_P3E5-T369_3_rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpw4b_oi0v --threads 7 -e 0.001 -v 0

Save result figure (mmseqs_new/result.png).
        
        
         #For many-many genome:(fastANI --ql genome_list.txt --rl genome_list.txt --visualize -o file_name.out)
                
                  Set the directory first and then run the script.
                  
(foo) slipakanungo@Slipas-MBP Linux_users_ref % fastANI --ql users/users.txt --rl ref/ref.txt --visualize -o fastani_users_ref.out
>>>>>>>>>>>>>>>>>>
Reference = [./ref/1-GCF_000960005.1_ASM96000v1_genomic.fna, ./ref/2-GCF_900637025.1_46338_H01_genomic.fna, ./ref/3-GCF_001071155.1_ASM107115v1_genomic.fna, ./ref/4-GCF_900636505.1_42650_H02_genomic.fna, ./ref/5-GCF_019929665.1_ASM1992966v1_genomic.fna, ./ref/6-GCF_000187585.1_ASM18758v1_genomic.fna, ./ref/7-GCF_020590155.1_ASM2059015v1_genomic.fna, ./ref/8-GCF_000191105.1_ASM19110v1_genomic.fna, ./ref/9-GCF_900475445.1_42727_F01_genomic.fna, ./ref/10-GCF_900459125.1_49569_C01_genomic.fna, ./ref/11-GCF_000235445.1_John_igna_ATCC_51276_V1_genomic.fna, ./ref/12-GCA_000257785.1_ASM25778v1_genomic.fna, ./ref/13-GCA_000257825.1_ASM25782v1_genomic.fna, ./ref/14-GCA_000344275.1_Streptococcus_tigurinus_AZ_3a_genomic.fna, ./ref/15-GCF_001412635.1_ASM141263v1_genomic.fna, ./ref/16-GCF_000379985.1_ASM37998v1_genomic.fna, ./ref/17-GCF_000380045.1_ASM38004v1_genomic.fna, ./ref/18-GCF_900459365.1_45296_H02_genomic.fna, ./ref/19-GCA_000385925.1_ASM38592v1_genomic.fna, ./ref/20-GCA_000413475.1_Stre_inte_ATCC_27335_V1_genomic.fna, ./ref/21-GCA_000479335.1_ASM47933v1_genomic.fna, ./ref/22-GCA_000747195.1_ASM74719v1_genomic.fna, ./ref/23-GCA_000767835.1_ASM76783v1_genomic.fna, ./ref/24-GCA_000785515.1_ASM78551v1_genomic.fna, ./ref/25-GCA_001469295.1_ASM146929v1_genomic.fna, ./ref/26-GCA_001708305.1_ASM170830v1_genomic.fna, ./ref/27-GCA_003143695.1_ASM314369v1_genomic.fna, ./ref/28-GCA_003626515.1_ASM362651v1_genomic.fna, ./ref/29-GCA_003627155.1_ASM362715v1_genomic.fna, ./ref/30-GCA_004785935.1_ASM478593v1_genomic.fna, ./ref/31-GCA_006385165.1_ASM638516v1_genomic.fna, ./ref/32-GCA_006385805.1_ASM638580v1_genomic.fna, ./ref/33-GCA_014643475.1_ASM1464347v1_genomic.fna, ./ref/34-GCA_900095845.1_PRJEB15309_genomic.fna, ./ref/35-GCA_900143035.1_IMG-taxon_2687453658_annotated_assembly_genomic.fna, ./ref/36-GCF_001679535.1_ASM167953v1_genomic.fna, ./ref/37-GCF_003627135.1_ASM362713v1_genomic.fna, ./ref/38-GCF_004353325.1_ASM435332v1_genomic.fna, ./ref/39-GCF_016403165.1_ASM1640316v1_genomic.fna, ./ref/40-GCF_016481285.1_ASM1648128v1_genomic.fna, ./ref/41-GCF_016642265.1_ASM1664226v1_genomic.fna, ./ref/42-GCF_017315345.1_ASM1731534v1_genomic.fna, ./ref/43-GCF_900474985.1_41965_C01_genomic.fna, ./ref/44-GCF_900475675.1_45473_D02_genomic.fna, ./ref/45-GCA_000382825.1_ASM38282v1_genomic.fna]
Query = [./users/P2D11.fasta, ./users/P2E5.fasta, ./users/P3B4.fasta, ./users/P3D4.fasta, ./users/P3E5.fasta, ./users/T369_3.fasta]
Kmer size = 16
Fragment length = 3000
Threads = 1
ANI output file = fastani_users_ref.out
>>>>>>>>>>>>>>>>>>
INFO [thread 0], skch::main, Count of threads executing parallel_for : 1
INFO [thread 0], skch::Sketch::build, window size for minimizer sampling  = 24
INFO [thread 0], skch::Sketch::build, minimizers picked from reference = 7261924
INFO [thread 0], skch::Sketch::index, unique minimizers = 4449127
INFO [thread 0], skch::Sketch::computeFreqHist, Frequency histogram of minimizers = (1, 2958746) ... (605, 1)
INFO [thread 0], skch::Sketch::computeFreqHist, consider all minimizers during lookup.
INFO [thread 0], skch::main, Time spent sketching the reference : 11.7023 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #1 : 3.19609 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.0181935 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #2 : 6.32783 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.0232154 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #3 : 12.3255 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.0248224 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #4 : 15.4919 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.119891 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #5 : 2.89656 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.0149868 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #6 : 11.485 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.0928256 sec
INFO [thread 0], skch::main, ready to exit the loop
INFO, skch::main, parallel_for execution finished                    
           
 Calling Python in Linux:-  #For many-many genome clustermap:(ANIclustermap -i ./folder containing the paths of both the query and reference list/ -o ./create a new output directory \--fig_width 15 --cmap_colors white,orange,red ) 
                    -i: input file and -o: output file
                    
(foo) slipakanungo@Slipas-MBP Linux_users_ref % ANIclustermap -i ./users_ref -o ./ANIclustermap_result \--fig_width 15 --cmap_colors white,orange,red 
# Step1: Run fastANI between all-vs-all 51 genomes.
>>>>>>>>>>>>>>>>>>
Reference = [users_ref/5-GCF_019929665.1_ASM1992966v1_genomic.fna, users_ref/38-GCF_004353325.1_ASM435332v1_genomic.fna, users_ref/19-GCA_000385925.1_ASM38592v1_genomic.fna, users_ref/15-GCF_001412635.1_ASM141263v1_genomic.fna, users_ref/34-GCA_900095845.1_PRJEB15309_genomic.fna, users_ref/9-GCF_900475445.1_42727_F01_genomic.fna, users_ref/6-GCF_000187585.1_ASM18758v1_genomic.fna, users_ref/33-GCA_014643475.1_ASM1464347v1_genomic.fna, users_ref/37-GCF_003627135.1_ASM362713v1_genomic.fna, users_ref/10-GCF_900459125.1_49569_C01_genomic.fna, users_ref/42-GCF_017315345.1_ASM1731534v1_genomic.fna, users_ref/27-GCA_003143695.1_ASM314369v1_genomic.fna, users_ref/2-GCF_900637025.1_46338_H01_genomic.fna, users_ref/43-GCF_900474985.1_41965_C01_genomic.fna, users_ref/41-GCF_016642265.1_ASM1664226v1_genomic.fna, users_ref/21-GCA_000479335.1_ASM47933v1_genomic.fna, users_ref/39-GCF_016403165.1_ASM1640316v1_genomic.fna, users_ref/40-GCF_016481285.1_ASM1648128v1_genomic.fna, users_ref/13-GCA_000257825.1_ASM25782v1_genomic.fna, users_ref/31-GCA_006385165.1_ASM638516v1_genomic.fna, users_ref/24-GCA_000785515.1_ASM78551v1_genomic.fna, users_ref/22-GCA_000747195.1_ASM74719v1_genomic.fna, users_ref/16-GCF_000379985.1_ASM37998v1_genomic.fna, users_ref/14-GCA_000344275.1_Streptococcus_tigurinus_AZ_3a_genomic.fna, users_ref/7-GCF_020590155.1_ASM2059015v1_genomic.fna, users_ref/25-GCA_001469295.1_ASM146929v1_genomic.fna, users_ref/28-GCA_003626515.1_ASM362651v1_genomic.fna, users_ref/36-GCF_001679535.1_ASM167953v1_genomic.fna, users_ref/26-GCA_001708305.1_ASM170830v1_genomic.fna, users_ref/3-GCF_001071155.1_ASM107115v1_genomic.fna, users_ref/8-GCF_000191105.1_ASM19110v1_genomic.fna, users_ref/29-GCA_003627155.1_ASM362715v1_genomic.fna, users_ref/44-GCF_900475675.1_45473_D02_genomic.fna, users_ref/1-GCF_000960005.1_ASM96000v1_genomic.fna, users_ref/11-GCF_000235445.1_John_igna_ATCC_51276_V1_genomic.fna, users_ref/45-GCA_000382825.1_ASM38282v1_genomic.fna, users_ref/30-GCA_004785935.1_ASM478593v1_genomic.fna, users_ref/32-GCA_006385805.1_ASM638580v1_genomic.fna, users_ref/17-GCF_000380045.1_ASM38004v1_genomic.fna, users_ref/23-GCA_000767835.1_ASM76783v1_genomic.fna, users_ref/35-GCA_900143035.1_IMG-taxon_2687453658_annotated_assembly_genomic.fna, users_ref/20-GCA_000413475.1_Stre_inte_ATCC_27335_V1_genomic.fna, users_ref/18-GCF_900459365.1_45296_H02_genomic.fna, users_ref/4-GCF_900636505.1_42650_H02_genomic.fna, users_ref/12-GCA_000257785.1_ASM25778v1_genomic.fna, users_ref/P3D4.fasta, users_ref/T369_3.fasta, users_ref/P3B4.fasta, users_ref/P3E5.fasta, users_ref/P2E5.fasta, users_ref/P2D11.fasta]
Query = [users_ref/5-GCF_019929665.1_ASM1992966v1_genomic.fna, users_ref/38-GCF_004353325.1_ASM435332v1_genomic.fna, users_ref/19-GCA_000385925.1_ASM38592v1_genomic.fna, users_ref/15-GCF_001412635.1_ASM141263v1_genomic.fna, users_ref/34-GCA_900095845.1_PRJEB15309_genomic.fna, users_ref/9-GCF_900475445.1_42727_F01_genomic.fna, users_ref/6-GCF_000187585.1_ASM18758v1_genomic.fna, users_ref/33-GCA_014643475.1_ASM1464347v1_genomic.fna, users_ref/37-GCF_003627135.1_ASM362713v1_genomic.fna, users_ref/10-GCF_900459125.1_49569_C01_genomic.fna, users_ref/42-GCF_017315345.1_ASM1731534v1_genomic.fna, users_ref/27-GCA_003143695.1_ASM314369v1_genomic.fna, users_ref/2-GCF_900637025.1_46338_H01_genomic.fna, users_ref/43-GCF_900474985.1_41965_C01_genomic.fna, users_ref/41-GCF_016642265.1_ASM1664226v1_genomic.fna, users_ref/21-GCA_000479335.1_ASM47933v1_genomic.fna, users_ref/39-GCF_016403165.1_ASM1640316v1_genomic.fna, users_ref/40-GCF_016481285.1_ASM1648128v1_genomic.fna, users_ref/13-GCA_000257825.1_ASM25782v1_genomic.fna, users_ref/31-GCA_006385165.1_ASM638516v1_genomic.fna, users_ref/24-GCA_000785515.1_ASM78551v1_genomic.fna, users_ref/22-GCA_000747195.1_ASM74719v1_genomic.fna, users_ref/16-GCF_000379985.1_ASM37998v1_genomic.fna, users_ref/14-GCA_000344275.1_Streptococcus_tigurinus_AZ_3a_genomic.fna, users_ref/7-GCF_020590155.1_ASM2059015v1_genomic.fna, users_ref/25-GCA_001469295.1_ASM146929v1_genomic.fna, users_ref/28-GCA_003626515.1_ASM362651v1_genomic.fna, users_ref/36-GCF_001679535.1_ASM167953v1_genomic.fna, users_ref/26-GCA_001708305.1_ASM170830v1_genomic.fna, users_ref/3-GCF_001071155.1_ASM107115v1_genomic.fna, users_ref/8-GCF_000191105.1_ASM19110v1_genomic.fna, users_ref/29-GCA_003627155.1_ASM362715v1_genomic.fna, users_ref/44-GCF_900475675.1_45473_D02_genomic.fna, users_ref/1-GCF_000960005.1_ASM96000v1_genomic.fna, users_ref/11-GCF_000235445.1_John_igna_ATCC_51276_V1_genomic.fna, users_ref/45-GCA_000382825.1_ASM38282v1_genomic.fna, users_ref/30-GCA_004785935.1_ASM478593v1_genomic.fna, users_ref/32-GCA_006385805.1_ASM638580v1_genomic.fna, users_ref/17-GCF_000380045.1_ASM38004v1_genomic.fna, users_ref/23-GCA_000767835.1_ASM76783v1_genomic.fna, users_ref/35-GCA_900143035.1_IMG-taxon_2687453658_annotated_assembly_genomic.fna, users_ref/20-GCA_000413475.1_Stre_inte_ATCC_27335_V1_genomic.fna, users_ref/18-GCF_900459365.1_45296_H02_genomic.fna, users_ref/4-GCF_900636505.1_42650_H02_genomic.fna, users_ref/12-GCA_000257785.1_ASM25778v1_genomic.fna, users_ref/P3D4.fasta, users_ref/T369_3.fasta, users_ref/P3B4.fasta, users_ref/P3E5.fasta, users_ref/P2E5.fasta, users_ref/P2D11.fasta]
Kmer size = 16
Fragment length = 3000
Threads = 7
ANI output file = ANIclustermap_result/work/fastani_result
>>>>>>>>>>>>>>>>>>
INFO [thread 0], skch::main, Count of threads executing parallel_for : 7
INFO [thread 0], skch::Sketch::build, window size for minimizer sampling  = 24
INFO [thread 0], skch::Sketch::build, minimizers picked from reference = 1299128
INFO [thread 0], skch::Sketch::index, unique minimizers = 1024507
INFO [thread 0], skch::Sketch::computeFreqHist, Frequency histogram of minimizers = (1, 806852) ... (137, 1)
INFO [thread 0], skch::Sketch::computeFreqHist, consider all minimizers during lookup.
INFO [thread 0], skch::main, Time spent sketching the reference : 3.06038 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #1 : 1.8288 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000640917 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #2 : 1.65583 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000600833 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #3 : 3.22005 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.00126392 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #4 : 1.04711 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000346791 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #5 : 1.64402 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000589583 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #6 : 1.95659 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000776458 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #7 : 1.4676 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000523708 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #8 : 2.58445 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000797459 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #9 : 3.12833 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.00125563 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #10 : 1.28629 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000426042 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #11 : 1.03705 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.00029675 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #12 : 1.83347 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.00109337 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #13 : 1.74973 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000647541 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #14 : 1.2422 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000366625 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #15 : 2.51544 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000849459 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #16 : 3.15792 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.00126229 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #17 : 1.13042 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000349083 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #18 : 0.533456 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.00013325 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #19 : 1.60856 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000454084 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #20 : 2.37853 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.0008515 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #21 : 1.15421 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000366541 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #22 : 0.995779 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000200333 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #23 : 0.869273 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000247875 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #24 : 1.8577 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000807417 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #25 : 0.871413 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000274416 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #26 : 1.08889 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000339416 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #27 : 2.07455 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.00068325 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #28 : 2.01273 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.0006305 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #29 : 3.82887 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.00118254 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #30 : 2.81691 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000887166 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #31 : 1.08287 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000338541 sec
INFO [thread 6], skch::main, ready to exit the loop
INFO [thread 0], skch::main, Time spent mapping fragments in query #32 : 2.10125 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.00073175 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #33 : 1.03622 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000323416 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #34 : 2.19377 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000707375 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #35 : 0.470417 sec
INFO [thread 0], skch::main, Time spent post mapping : 3.0292e-05 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #36 : 1.64425 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.00064875 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #37 : 2.06652 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000672625 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #38 : 2.05755 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.00223146 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #39 : 0.630195 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000125875 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #40 : 1.06463 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000297208 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #41 : 0.916523 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.0002935 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #42 : 1.01445 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000265792 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #43 : 3.37469 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.00131613 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #44 : 2.5142 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.0010145 sec
INFO [thread 3], skch::main, ready to exit the loop
INFO [thread 0], skch::main, Time spent mapping fragments in query #45 : 0.985788 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000384958 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #46 : 2.4617 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000885875 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #47 : 1.93487 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000959791 sec
INFO [thread 4], skch::main, ready to exit the loop
INFO [thread 0], skch::main, Time spent mapping fragments in query #48 : 1.98508 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000822125 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #49 : 0.702047 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000226625 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #50 : 2.29898 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000741958 sec
INFO [thread 0], skch::main, Time spent mapping fragments in query #51 : 0.774026 sec
INFO [thread 0], skch::main, Time spent post mapping : 0.000250125 sec
INFO [thread 0], skch::main, ready to exit the loop
INFO [thread 5], skch::main, ready to exit the loop
INFO [thread 2], skch::main, ready to exit the loop
INFO [thread 1], skch::main, ready to exit the loop
INFO, skch::main, parallel_for execution finished
# Step2: Clustering fastANI matrix by scipy's UPGMA method.
# Step3: Using clustered matrix, draw ANI clustermap by seaborn.   

Calling Python in Linux:-  #For many-many genome visualization grid:(pgv-mmseqs --gbk_resources filename1.gbf filename2.gbf filename3.gbf filename4.gbf filename5.gbf -o mmseqs_new --tick_style axis --align_type left --feature_plotstyle arrow)     
        
                 Set the directory first and then run the script.
                 
 (foo) slipakanungo@Slipas-MBP users_ref_new % pgv-mmseqs --gbk_resources 1-GCF_000960005.1_ASM96000v1_genomic.gbff 2-GCA_000164095.1.gbff 3-GCF_001071155.1_ASM107115v1_genomic.gbff 4-GCF_900636505.1_42650_H02_.gbff 5-GCF_019929665.1_ASM1992966v1_.gbff 6-GCF_000187585.1_ASM18758v1_.gbff 7-GCF_020590155.1_ASM2059015v1_.gbff 8-GCF_000191105.1_ASM19110v1_.gbff 9-GCF_900475445.1_42727_F01_genomic.gbff 10-GCF_900459125.1_49569_C01_genomic.gbff 11-GCF_000235445.1_John_igna_ATCC_51276_V1_.gbff 12-GCA_000257785.1_ASM25778v1_.gbff 13-GCA_000257825.1_ASM25782v1_.gbff 14-GCA_000344275.1_Streptococcus_tigurinus_AZ_3a_.gbff 15-GCF_001412635.1_ASM141263v1_genomic.gbff 16-GCF_000379985.1_ASM37998v1_genomic.gbff 17-GCF_000380045.1_ASM38004v1_genomic.gbff 18-GCF_900459365.1_45296_H02_genomic.gbff 19-GCA_000385925.1_ASM38592v1_.gbff 20-GCA_000413475.1_Stre_inte_ATCC_27335_V1.gbff 21-GCA_000479335.1_ASM47933v1_.gbff 22-GCA_000747195.1_ASM74719v1_.gbff 23-GCA_000767835.1_ASM76783v1_.gbff 24-GCA_000785515.1_ASM78551v1_.gbff 25-GCA_001469295.1_ASM146929v1_.gbff 26-GCF_001708305.1_ASM170830v1_genomic.gbff 27-GCA_003143695.1_ASM314369v1_.gbff 28-GCA_003626515.1_ASM362651v1_.gbff 29-GCA_003627155.1_ASM362715v1_.gbff 30-GCA_004785935.1_ASM478593v1_.gbff 31-GCA_006385165.1_ASM638516v1_.gbff 32-GCA_006385805.1_ASM638580v1_.gbff 33-GCA_014643475.1_ASM1464347v1_.gbff 34-GCF_900095845.1_PRJEB15309_genomic.gbff 35-GCA_900143035.1_IMG-taxon_2687453658_annotated_assembly_.gbff 36-GCF_001679535.1_ASM167953v1_.gbff 37-GCF_003627135.1_ASM362713v1_.gbff 38-GCF_004353325.1_ASM435332v1_.gbff 39-GCF_016403165.1_ASM1640316v1_.gbff 40-GCF_016481285.1_ASM1648128v1_.gbff 41-GCF_016642265.1_ASM1664226v1_.gbff 42-GCF_017315345.1_ASM1731534v1_.gbff 43-GCF_900474985.1_41965_C01_.gbff 44-GCF_900475675.1_45473_D02_.gbff P2D11.gbf P2E5.gbf P3B4.gbf P3D4.gbf P3E5.gbf T369_3.gbf -o mmseqs_new --tick_style axis --align_type left --feature_plotstyle arrow 

******************** Run Parameters ********************
gbk_resources:
  01. 1-GCF_000960005.1_ASM96000v1_genomic.gbff (0 - 1,915,198 bp)
  02. 2-GCA_000164095.1.gbff (0 - 1,913,838 bp)
  03. 3-GCF_001071155.1_ASM107115v1_genomic.gbff (0 - 2,196,734 bp)
  04. 4-GCF_900636505.1_42650_H02_.gbff (0 - 2,129,953 bp)
  05. 5-GCF_019929665.1_ASM1992966v1_.gbff (0 - 1,905,984 bp)
  06. 6-GCF_000187585.1_ASM18758v1_.gbff (0 - 1,639,920 bp)
  07. 7-GCF_020590155.1_ASM2059015v1_.gbff (0 - 1,872,773 bp)
  08. 8-GCF_000191105.1_ASM19110v1_.gbff (0 - 2,280,483 bp)
  09. 9-GCF_900475445.1_42727_F01_genomic.gbff (0 - 2,000,351 bp)
  10. 10-GCF_900459125.1_49569_C01_genomic.gbff (0 - 1,906,855 bp)
  11. 11-GCF_000235445.1_John_igna_ATCC_51276_V1_.gbff (0 - 2,687,075 bp)
  12. 12-GCA_000257785.1_ASM25778v1_.gbff (0 - 1,840,061 bp)
  13. 13-GCA_000257825.1_ASM25782v1_.gbff (0 - 2,085,749 bp)
  14. 14-GCA_000344275.1_Streptococcus_tigurinus_AZ_3a_.gbff (0 - 2,184,662 bp)
  15. 15-GCF_001412635.1_ASM141263v1_genomic.gbff (0 - 1,924,513 bp)
  16. 16-GCF_000379985.1_ASM37998v1_genomic.gbff (0 - 2,122,044 bp)
  17. 17-GCF_000380045.1_ASM38004v1_genomic.gbff (0 - 1,505,444 bp)
  18. 18-GCF_900459365.1_45296_H02_genomic.gbff (0 - 2,033,868 bp)
  19. 19-GCA_000385925.1_ASM38592v1_.gbff (0 - 2,142,100 bp)
  20. 20-GCA_000413475.1_Stre_inte_ATCC_27335_V1.gbff (0 - 1,951,449 bp)
  21. 21-GCA_000479335.1_ASM47933v1_.gbff (0 - 1,992,567 bp)
  22. 22-GCA_000747195.1_ASM74719v1_.gbff (0 - 1,841,890 bp)
  23. 23-GCA_000767835.1_ASM76783v1_.gbff (0 - 2,061,843 bp)
  24. 24-GCA_000785515.1_ASM78551v1_.gbff (0 - 2,188,923 bp)
  25. 25-GCA_001469295.1_ASM146929v1_.gbff (0 - 2,164,016 bp)
  26. 26-GCF_001708305.1_ASM170830v1_genomic.gbff (0 - 2,275,471 bp)
  27. 27-GCA_003143695.1_ASM314369v1_.gbff (0 - 2,327,045 bp)
  28. 28-GCA_003626515.1_ASM362651v1_.gbff (0 - 1,902,053 bp)
  29. 29-GCA_003627155.1_ASM362715v1_.gbff (0 - 1,972,481 bp)
  30. 30-GCA_004785935.1_ASM478593v1_.gbff (0 - 2,160,087 bp)
  31. 31-GCA_006385165.1_ASM638516v1_.gbff (0 - 2,189,419 bp)
  32. 32-GCA_006385805.1_ASM638580v1_.gbff (0 - 1,950,659 bp)
  33. 33-GCA_014643475.1_ASM1464347v1_.gbff (0 - 2,151,584 bp)
  34. 34-GCF_900095845.1_PRJEB15309_genomic.gbff (0 - 1,925,331 bp)
  35. 35-GCA_900143035.1_IMG-taxon_2687453658_annotated_assembly_.gbff (0 - 2,162,983 bp)
  36. 36-GCF_001679535.1_ASM167953v1_.gbff (0 - 2,043,199 bp)
  37. 37-GCF_003627135.1_ASM362713v1_.gbff (0 - 2,009,598 bp)
  38. 38-GCF_004353325.1_ASM435332v1_.gbff (0 - 1,922,750 bp)
  39. 39-GCF_016403165.1_ASM1640316v1_.gbff (0 - 1,971,124 bp)
  40. 40-GCF_016481285.1_ASM1648128v1_.gbff (0 - 1,581,094 bp)
  41. 41-GCF_016642265.1_ASM1664226v1_.gbff (0 - 2,117,087 bp)
  42. 42-GCF_017315345.1_ASM1731534v1_.gbff (0 - 2,091,763 bp)
  43. 43-GCF_900474985.1_41965_C01_.gbff (0 - 2,102,271 bp)
  44. 44-GCF_900475675.1_45473_D02_.gbff (0 - 1,793,521 bp)
  45. P2D11.gbf (0 - 2,298,078 bp)
  46. P2E5.gbf (0 - 2,120,935 bp)
  47. P3B4.gbf (0 - 2,113,996 bp)
  48. P3D4.gbf (0 - 2,151,237 bp)
  49. P3E5.gbf (0 - 1,908,447 bp)
  50. T369_3.gbf (0 - 2,002,660 bp)
outdir: mmseqs_new
format: png
reuse: False
evalue: 0.001
min_identity: 0
thread_num: None
fig_width: 15
fig_track_height: 1.0
feature_track_ratio: 1.0
link_track_ratio: 5.0
tick_track_ratio: 1.0
track_labelsize: 20
tick_labelsize: 15
normal_link_color: grey
inverted_link_color: red
align_type: left
tick_style: axis
feature_plotstyle: arrow
arrow_shaft_ratio: 0.5
feature_color: orange
feature_linewidth: 0.0
curve: False
dpi: 300
*********************************************************
Run MMseqs RBH search.

# 01: 1-GCF_000960005.1_ASM96000v1_genomic-2-GCA_000164095.1 RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/1-GCF_000960005.1_ASM96000v1_genomic.faa mmseqs_new/mmseqs_result/2-GCA_000164095.1.faa mmseqs_new/mmseqs_result/01_1-GCF_000960005.1_ASM96000v1_genomic-2-GCA_000164095.1_rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpiwmdx9_w --threads 7 -e 0.001 -v 0

# 02: 2-GCA_000164095.1-3-GCF_001071155.1_ASM107115v1_genomic RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/2-GCA_000164095.1.faa mmseqs_new/mmseqs_result/3-GCF_001071155.1_ASM107115v1_genomic.faa mmseqs_new/mmseqs_result/02_2-GCA_000164095.1-3-GCF_001071155.1_ASM107115v1_genomic_rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpn7fg8nm6 --threads 7 -e 0.001 -v 0

# 03: 3-GCF_001071155.1_ASM107115v1_genomic-4-GCF_900636505.1_42650_H02_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/3-GCF_001071155.1_ASM107115v1_genomic.faa mmseqs_new/mmseqs_result/4-GCF_900636505.1_42650_H02_.faa mmseqs_new/mmseqs_result/03_3-GCF_001071155.1_ASM107115v1_genomic-4-GCF_900636505.1_42650_H02__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpzwv0892f --threads 7 -e 0.001 -v 0

# 04: 4-GCF_900636505.1_42650_H02_-5-GCF_019929665.1_ASM1992966v1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/4-GCF_900636505.1_42650_H02_.faa mmseqs_new/mmseqs_result/5-GCF_019929665.1_ASM1992966v1_.faa mmseqs_new/mmseqs_result/04_4-GCF_900636505.1_42650_H02_-5-GCF_019929665.1_ASM1992966v1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmp4zvysbnp --threads 7 -e 0.001 -v 0

# 05: 5-GCF_019929665.1_ASM1992966v1_-6-GCF_000187585.1_ASM18758v1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/5-GCF_019929665.1_ASM1992966v1_.faa mmseqs_new/mmseqs_result/6-GCF_000187585.1_ASM18758v1_.faa mmseqs_new/mmseqs_result/05_5-GCF_019929665.1_ASM1992966v1_-6-GCF_000187585.1_ASM18758v1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmp3yfmrrgi --threads 7 -e 0.001 -v 0

# 06: 6-GCF_000187585.1_ASM18758v1_-7-GCF_020590155.1_ASM2059015v1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/6-GCF_000187585.1_ASM18758v1_.faa mmseqs_new/mmseqs_result/7-GCF_020590155.1_ASM2059015v1_.faa mmseqs_new/mmseqs_result/06_6-GCF_000187585.1_ASM18758v1_-7-GCF_020590155.1_ASM2059015v1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmp4u231zdy --threads 7 -e 0.001 -v 0

# 07: 7-GCF_020590155.1_ASM2059015v1_-8-GCF_000191105.1_ASM19110v1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/7-GCF_020590155.1_ASM2059015v1_.faa mmseqs_new/mmseqs_result/8-GCF_000191105.1_ASM19110v1_.faa mmseqs_new/mmseqs_result/07_7-GCF_020590155.1_ASM2059015v1_-8-GCF_000191105.1_ASM19110v1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpze0nhyhj --threads 7 -e 0.001 -v 0

# 08: 8-GCF_000191105.1_ASM19110v1_-9-GCF_900475445.1_42727_F01_genomic RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/8-GCF_000191105.1_ASM19110v1_.faa mmseqs_new/mmseqs_result/9-GCF_900475445.1_42727_F01_genomic.faa mmseqs_new/mmseqs_result/08_8-GCF_000191105.1_ASM19110v1_-9-GCF_900475445.1_42727_F01_genomic_rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpzr92tjxb --threads 7 -e 0.001 -v 0

# 09: 9-GCF_900475445.1_42727_F01_genomic-10-GCF_900459125.1_49569_C01_genomic RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/9-GCF_900475445.1_42727_F01_genomic.faa mmseqs_new/mmseqs_result/10-GCF_900459125.1_49569_C01_genomic.faa mmseqs_new/mmseqs_result/09_9-GCF_900475445.1_42727_F01_genomic-10-GCF_900459125.1_49569_C01_genomic_rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmp8ep_i541 --threads 7 -e 0.001 -v 0

# 10: 10-GCF_900459125.1_49569_C01_genomic-11-GCF_000235445.1_John_igna_ATCC_51276_V1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/10-GCF_900459125.1_49569_C01_genomic.faa mmseqs_new/mmseqs_result/11-GCF_000235445.1_John_igna_ATCC_51276_V1_.faa mmseqs_new/mmseqs_result/10_10-GCF_900459125.1_49569_C01_genomic-11-GCF_000235445.1_John_igna_ATCC_51276_V1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmp9rpt68mh --threads 7 -e 0.001 -v 0

# 11: 11-GCF_000235445.1_John_igna_ATCC_51276_V1_-12-GCA_000257785.1_ASM25778v1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/11-GCF_000235445.1_John_igna_ATCC_51276_V1_.faa mmseqs_new/mmseqs_result/12-GCA_000257785.1_ASM25778v1_.faa mmseqs_new/mmseqs_result/11_11-GCF_000235445.1_John_igna_ATCC_51276_V1_-12-GCA_000257785.1_ASM25778v1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpaxidb3zg --threads 7 -e 0.001 -v 0

# 12: 12-GCA_000257785.1_ASM25778v1_-13-GCA_000257825.1_ASM25782v1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/12-GCA_000257785.1_ASM25778v1_.faa mmseqs_new/mmseqs_result/13-GCA_000257825.1_ASM25782v1_.faa mmseqs_new/mmseqs_result/12_12-GCA_000257785.1_ASM25778v1_-13-GCA_000257825.1_ASM25782v1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpe0w7ynlh --threads 7 -e 0.001 -v 0

# 13: 13-GCA_000257825.1_ASM25782v1_-14-GCA_000344275.1_Streptococcus_tigurinus_AZ_3a_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/13-GCA_000257825.1_ASM25782v1_.faa mmseqs_new/mmseqs_result/14-GCA_000344275.1_Streptococcus_tigurinus_AZ_3a_.faa mmseqs_new/mmseqs_result/13_13-GCA_000257825.1_ASM25782v1_-14-GCA_000344275.1_Streptococcus_tigurinus_AZ_3a__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpv6gtlswi --threads 7 -e 0.001 -v 0

# 14: 14-GCA_000344275.1_Streptococcus_tigurinus_AZ_3a_-15-GCF_001412635.1_ASM141263v1_genomic RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/14-GCA_000344275.1_Streptococcus_tigurinus_AZ_3a_.faa mmseqs_new/mmseqs_result/15-GCF_001412635.1_ASM141263v1_genomic.faa mmseqs_new/mmseqs_result/14_14-GCA_000344275.1_Streptococcus_tigurinus_AZ_3a_-15-GCF_001412635.1_ASM141263v1_genomic_rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpl2c90q7e --threads 7 -e 0.001 -v 0

# 15: 15-GCF_001412635.1_ASM141263v1_genomic-16-GCF_000379985.1_ASM37998v1_genomic RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/15-GCF_001412635.1_ASM141263v1_genomic.faa mmseqs_new/mmseqs_result/16-GCF_000379985.1_ASM37998v1_genomic.faa mmseqs_new/mmseqs_result/15_15-GCF_001412635.1_ASM141263v1_genomic-16-GCF_000379985.1_ASM37998v1_genomic_rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmps8ap8l8w --threads 7 -e 0.001 -v 0

# 16: 16-GCF_000379985.1_ASM37998v1_genomic-17-GCF_000380045.1_ASM38004v1_genomic RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/16-GCF_000379985.1_ASM37998v1_genomic.faa mmseqs_new/mmseqs_result/17-GCF_000380045.1_ASM38004v1_genomic.faa mmseqs_new/mmseqs_result/16_16-GCF_000379985.1_ASM37998v1_genomic-17-GCF_000380045.1_ASM38004v1_genomic_rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmp6bvcqe4y --threads 7 -e 0.001 -v 0

# 17: 17-GCF_000380045.1_ASM38004v1_genomic-18-GCF_900459365.1_45296_H02_genomic RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/17-GCF_000380045.1_ASM38004v1_genomic.faa mmseqs_new/mmseqs_result/18-GCF_900459365.1_45296_H02_genomic.faa mmseqs_new/mmseqs_result/17_17-GCF_000380045.1_ASM38004v1_genomic-18-GCF_900459365.1_45296_H02_genomic_rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmp5ptdcp4h --threads 7 -e 0.001 -v 0

# 18: 18-GCF_900459365.1_45296_H02_genomic-19-GCA_000385925.1_ASM38592v1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/18-GCF_900459365.1_45296_H02_genomic.faa mmseqs_new/mmseqs_result/19-GCA_000385925.1_ASM38592v1_.faa mmseqs_new/mmseqs_result/18_18-GCF_900459365.1_45296_H02_genomic-19-GCA_000385925.1_ASM38592v1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpaxngjmx1 --threads 7 -e 0.001 -v 0

# 19: 19-GCA_000385925.1_ASM38592v1_-20-GCA_000413475.1_Stre_inte_ATCC_27335_V1 RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/19-GCA_000385925.1_ASM38592v1_.faa mmseqs_new/mmseqs_result/20-GCA_000413475.1_Stre_inte_ATCC_27335_V1.faa mmseqs_new/mmseqs_result/19_19-GCA_000385925.1_ASM38592v1_-20-GCA_000413475.1_Stre_inte_ATCC_27335_V1_rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpwhu_5q7y --threads 7 -e 0.001 -v 0

# 20: 20-GCA_000413475.1_Stre_inte_ATCC_27335_V1-21-GCA_000479335.1_ASM47933v1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/20-GCA_000413475.1_Stre_inte_ATCC_27335_V1.faa mmseqs_new/mmseqs_result/21-GCA_000479335.1_ASM47933v1_.faa mmseqs_new/mmseqs_result/20_20-GCA_000413475.1_Stre_inte_ATCC_27335_V1-21-GCA_000479335.1_ASM47933v1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpgrlfi620 --threads 7 -e 0.001 -v 0

# 21: 21-GCA_000479335.1_ASM47933v1_-22-GCA_000747195.1_ASM74719v1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/21-GCA_000479335.1_ASM47933v1_.faa mmseqs_new/mmseqs_result/22-GCA_000747195.1_ASM74719v1_.faa mmseqs_new/mmseqs_result/21_21-GCA_000479335.1_ASM47933v1_-22-GCA_000747195.1_ASM74719v1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmp4kjhlnev --threads 7 -e 0.001 -v 0

# 22: 22-GCA_000747195.1_ASM74719v1_-23-GCA_000767835.1_ASM76783v1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/22-GCA_000747195.1_ASM74719v1_.faa mmseqs_new/mmseqs_result/23-GCA_000767835.1_ASM76783v1_.faa mmseqs_new/mmseqs_result/22_22-GCA_000747195.1_ASM74719v1_-23-GCA_000767835.1_ASM76783v1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmplfytjvdu --threads 7 -e 0.001 -v 0

# 23: 23-GCA_000767835.1_ASM76783v1_-24-GCA_000785515.1_ASM78551v1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/23-GCA_000767835.1_ASM76783v1_.faa mmseqs_new/mmseqs_result/24-GCA_000785515.1_ASM78551v1_.faa mmseqs_new/mmseqs_result/23_23-GCA_000767835.1_ASM76783v1_-24-GCA_000785515.1_ASM78551v1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmp89s4w8ab --threads 7 -e 0.001 -v 0

# 24: 24-GCA_000785515.1_ASM78551v1_-25-GCA_001469295.1_ASM146929v1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/24-GCA_000785515.1_ASM78551v1_.faa mmseqs_new/mmseqs_result/25-GCA_001469295.1_ASM146929v1_.faa mmseqs_new/mmseqs_result/24_24-GCA_000785515.1_ASM78551v1_-25-GCA_001469295.1_ASM146929v1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmphp_c5jrp --threads 7 -e 0.001 -v 0

# 25: 25-GCA_001469295.1_ASM146929v1_-26-GCF_001708305.1_ASM170830v1_genomic RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/25-GCA_001469295.1_ASM146929v1_.faa mmseqs_new/mmseqs_result/26-GCF_001708305.1_ASM170830v1_genomic.faa mmseqs_new/mmseqs_result/25_25-GCA_001469295.1_ASM146929v1_-26-GCF_001708305.1_ASM170830v1_genomic_rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmp7w1orysa --threads 7 -e 0.001 -v 0

# 26: 26-GCF_001708305.1_ASM170830v1_genomic-27-GCA_003143695.1_ASM314369v1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/26-GCF_001708305.1_ASM170830v1_genomic.faa mmseqs_new/mmseqs_result/27-GCA_003143695.1_ASM314369v1_.faa mmseqs_new/mmseqs_result/26_26-GCF_001708305.1_ASM170830v1_genomic-27-GCA_003143695.1_ASM314369v1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpzyegthch --threads 7 -e 0.001 -v 0

# 27: 27-GCA_003143695.1_ASM314369v1_-28-GCA_003626515.1_ASM362651v1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/27-GCA_003143695.1_ASM314369v1_.faa mmseqs_new/mmseqs_result/28-GCA_003626515.1_ASM362651v1_.faa mmseqs_new/mmseqs_result/27_27-GCA_003143695.1_ASM314369v1_-28-GCA_003626515.1_ASM362651v1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpfrhnu6ou --threads 7 -e 0.001 -v 0

# 28: 28-GCA_003626515.1_ASM362651v1_-29-GCA_003627155.1_ASM362715v1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/28-GCA_003626515.1_ASM362651v1_.faa mmseqs_new/mmseqs_result/29-GCA_003627155.1_ASM362715v1_.faa mmseqs_new/mmseqs_result/28_28-GCA_003626515.1_ASM362651v1_-29-GCA_003627155.1_ASM362715v1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpx01059zl --threads 7 -e 0.001 -v 0

# 29: 29-GCA_003627155.1_ASM362715v1_-30-GCA_004785935.1_ASM478593v1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/29-GCA_003627155.1_ASM362715v1_.faa mmseqs_new/mmseqs_result/30-GCA_004785935.1_ASM478593v1_.faa mmseqs_new/mmseqs_result/29_29-GCA_003627155.1_ASM362715v1_-30-GCA_004785935.1_ASM478593v1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpe3lylx05 --threads 7 -e 0.001 -v 0

# 30: 30-GCA_004785935.1_ASM478593v1_-31-GCA_006385165.1_ASM638516v1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/30-GCA_004785935.1_ASM478593v1_.faa mmseqs_new/mmseqs_result/31-GCA_006385165.1_ASM638516v1_.faa mmseqs_new/mmseqs_result/30_30-GCA_004785935.1_ASM478593v1_-31-GCA_006385165.1_ASM638516v1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmp7f1qpmvm --threads 7 -e 0.001 -v 0

# 31: 31-GCA_006385165.1_ASM638516v1_-32-GCA_006385805.1_ASM638580v1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/31-GCA_006385165.1_ASM638516v1_.faa mmseqs_new/mmseqs_result/32-GCA_006385805.1_ASM638580v1_.faa mmseqs_new/mmseqs_result/31_31-GCA_006385165.1_ASM638516v1_-32-GCA_006385805.1_ASM638580v1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpslx7sw4t --threads 7 -e 0.001 -v 0

# 32: 32-GCA_006385805.1_ASM638580v1_-33-GCA_014643475.1_ASM1464347v1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/32-GCA_006385805.1_ASM638580v1_.faa mmseqs_new/mmseqs_result/33-GCA_014643475.1_ASM1464347v1_.faa mmseqs_new/mmseqs_result/32_32-GCA_006385805.1_ASM638580v1_-33-GCA_014643475.1_ASM1464347v1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpl7opny07 --threads 7 -e 0.001 -v 0

# 33: 33-GCA_014643475.1_ASM1464347v1_-34-GCF_900095845.1_PRJEB15309_genomic RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/33-GCA_014643475.1_ASM1464347v1_.faa mmseqs_new/mmseqs_result/34-GCF_900095845.1_PRJEB15309_genomic.faa mmseqs_new/mmseqs_result/33_33-GCA_014643475.1_ASM1464347v1_-34-GCF_900095845.1_PRJEB15309_genomic_rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmp7pdiytvk --threads 7 -e 0.001 -v 0

# 34: 34-GCF_900095845.1_PRJEB15309_genomic-35-GCA_900143035.1_IMG-taxon_2687453658_annotated_assembly_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/34-GCF_900095845.1_PRJEB15309_genomic.faa mmseqs_new/mmseqs_result/35-GCA_900143035.1_IMG-taxon_2687453658_annotated_assembly_.faa mmseqs_new/mmseqs_result/34_34-GCF_900095845.1_PRJEB15309_genomic-35-GCA_900143035.1_IMG-taxon_2687453658_annotated_assembly__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmppaqaq2xp --threads 7 -e 0.001 -v 0

# 35: 35-GCA_900143035.1_IMG-taxon_2687453658_annotated_assembly_-36-GCF_001679535.1_ASM167953v1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/35-GCA_900143035.1_IMG-taxon_2687453658_annotated_assembly_.faa mmseqs_new/mmseqs_result/36-GCF_001679535.1_ASM167953v1_.faa mmseqs_new/mmseqs_result/35_35-GCA_900143035.1_IMG-taxon_2687453658_annotated_assembly_-36-GCF_001679535.1_ASM167953v1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpfj9f73sm --threads 7 -e 0.001 -v 0

# 36: 36-GCF_001679535.1_ASM167953v1_-37-GCF_003627135.1_ASM362713v1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/36-GCF_001679535.1_ASM167953v1_.faa mmseqs_new/mmseqs_result/37-GCF_003627135.1_ASM362713v1_.faa mmseqs_new/mmseqs_result/36_36-GCF_001679535.1_ASM167953v1_-37-GCF_003627135.1_ASM362713v1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpxwi4r2oz --threads 7 -e 0.001 -v 0

# 37: 37-GCF_003627135.1_ASM362713v1_-38-GCF_004353325.1_ASM435332v1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/37-GCF_003627135.1_ASM362713v1_.faa mmseqs_new/mmseqs_result/38-GCF_004353325.1_ASM435332v1_.faa mmseqs_new/mmseqs_result/37_37-GCF_003627135.1_ASM362713v1_-38-GCF_004353325.1_ASM435332v1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmp96bode1b --threads 7 -e 0.001 -v 0

# 38: 38-GCF_004353325.1_ASM435332v1_-39-GCF_016403165.1_ASM1640316v1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/38-GCF_004353325.1_ASM435332v1_.faa mmseqs_new/mmseqs_result/39-GCF_016403165.1_ASM1640316v1_.faa mmseqs_new/mmseqs_result/38_38-GCF_004353325.1_ASM435332v1_-39-GCF_016403165.1_ASM1640316v1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpd1pk51pz --threads 7 -e 0.001 -v 0

# 39: 39-GCF_016403165.1_ASM1640316v1_-40-GCF_016481285.1_ASM1648128v1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/39-GCF_016403165.1_ASM1640316v1_.faa mmseqs_new/mmseqs_result/40-GCF_016481285.1_ASM1648128v1_.faa mmseqs_new/mmseqs_result/39_39-GCF_016403165.1_ASM1640316v1_-40-GCF_016481285.1_ASM1648128v1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpq7pve54b --threads 7 -e 0.001 -v 0

# 40: 40-GCF_016481285.1_ASM1648128v1_-41-GCF_016642265.1_ASM1664226v1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/40-GCF_016481285.1_ASM1648128v1_.faa mmseqs_new/mmseqs_result/41-GCF_016642265.1_ASM1664226v1_.faa mmseqs_new/mmseqs_result/40_40-GCF_016481285.1_ASM1648128v1_-41-GCF_016642265.1_ASM1664226v1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpjqop9adh --threads 7 -e 0.001 -v 0

# 41: 41-GCF_016642265.1_ASM1664226v1_-42-GCF_017315345.1_ASM1731534v1_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/41-GCF_016642265.1_ASM1664226v1_.faa mmseqs_new/mmseqs_result/42-GCF_017315345.1_ASM1731534v1_.faa mmseqs_new/mmseqs_result/41_41-GCF_016642265.1_ASM1664226v1_-42-GCF_017315345.1_ASM1731534v1__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmp3cld3vam --threads 7 -e 0.001 -v 0

# 42: 42-GCF_017315345.1_ASM1731534v1_-43-GCF_900474985.1_41965_C01_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/42-GCF_017315345.1_ASM1731534v1_.faa mmseqs_new/mmseqs_result/43-GCF_900474985.1_41965_C01_.faa mmseqs_new/mmseqs_result/42_42-GCF_017315345.1_ASM1731534v1_-43-GCF_900474985.1_41965_C01__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpwhxoncjh --threads 7 -e 0.001 -v 0

# 43: 43-GCF_900474985.1_41965_C01_-44-GCF_900475675.1_45473_D02_ RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/43-GCF_900474985.1_41965_C01_.faa mmseqs_new/mmseqs_result/44-GCF_900475675.1_45473_D02_.faa mmseqs_new/mmseqs_result/43_43-GCF_900474985.1_41965_C01_-44-GCF_900475675.1_45473_D02__rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpx4h3gnwn --threads 7 -e 0.001 -v 0

# 44: 44-GCF_900475675.1_45473_D02_-P2D11 RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/44-GCF_900475675.1_45473_D02_.faa mmseqs_new/mmseqs_result/P2D11.faa mmseqs_new/mmseqs_result/44_44-GCF_900475675.1_45473_D02_-P2D11_rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmp4676pyna --threads 7 -e 0.001 -v 0

# 45: P2D11-P2E5 RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/P2D11.faa mmseqs_new/mmseqs_result/P2E5.faa mmseqs_new/mmseqs_result/45_P2D11-P2E5_rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmp0jqzx19j --threads 7 -e 0.001 -v 0

# 46: P2E5-P3B4 RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/P2E5.faa mmseqs_new/mmseqs_result/P3B4.faa mmseqs_new/mmseqs_result/46_P2E5-P3B4_rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpr58ohovr --threads 7 -e 0.001 -v 0

# 47: P3B4-P3D4 RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/P3B4.faa mmseqs_new/mmseqs_result/P3D4.faa mmseqs_new/mmseqs_result/47_P3B4-P3D4_rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpgslaqolb --threads 7 -e 0.001 -v 0

# 48: P3D4-P3E5 RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/P3D4.faa mmseqs_new/mmseqs_result/P3E5.faa mmseqs_new/mmseqs_result/48_P3D4-P3E5_rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpo7x749mn --threads 7 -e 0.001 -v 0

# 49: P3E5-T369_3 RBH search
$ mmseqs easy-rbh mmseqs_new/mmseqs_result/P3E5.faa mmseqs_new/mmseqs_result/T369_3.faa mmseqs_new/mmseqs_result/49_P3E5-T369_3_rbh.tsv /var/folders/03/9chc_23d7t91d2bs1r1h9gcc0000gn/T/tmpb_y2bbfu --threads 7 -e 0.001 -v 0

Save result figure (mmseqs_new/result.png).                  
