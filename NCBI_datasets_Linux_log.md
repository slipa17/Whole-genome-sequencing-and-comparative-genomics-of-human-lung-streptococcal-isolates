# To download biological sequence data from NCBI.(conda create -n ncbi_datasets)

(base) slipakanungo@Slipas-MacBook-Pro ncbi % conda create -n ncbi_datasets
Collecting package metadata (current_repodata.json): done
Solving environment: done


==> WARNING: A newer version of conda exists. <==
  current version: 4.12.0
  latest version: 4.13.0

Please update conda by running

    $ conda update -n base conda



## Package Plan ##

  environment location: /Users/slipakanungo/anaconda3/envs/ncbi_datasets



Proceed ([y]/n)? y

Preparing transaction: done
Verifying transaction: done
Executing transaction: done
#
# To activate this environment, use
#
#     $ conda activate ncbi_datasets
#
# To deactivate an active environment, use
#
#     $ conda deactivate

# To activate your new environment.(conda activate ncbi_datasets)

(base) slipakanungo@Slipas-MacBook-Pro ncbi % conda activate ncbi_datasets

# To install the datasets conda package.(conda install -c conda-forge ncbi-datasets-cli)

(ncbi_datasets) slipakanungo@Slipas-MacBook-Pro ncbi % conda install -c conda-forge ncbi-datasets-cli
Collecting package metadata (current_repodata.json): done
Solving environment: done


==> WARNING: A newer version of conda exists. <==
  current version: 4.12.0
  latest version: 4.13.0

Please update conda by running

    $ conda update -n base conda



## Package Plan ##

  environment location: /Users/slipakanungo/anaconda3/envs/ncbi_datasets

  added / updated specs:
    - ncbi-datasets-cli


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    ca-certificates-2022.6.15  |       h033912b_0         149 KB  conda-forge
    libcxx-14.0.6              |       hce7ea42_0         1.3 MB  conda-forge
    ncbi-datasets-cli-13.30.0  |       h1b54a9f_0        11.9 MB  conda-forge
    ------------------------------------------------------------
                                           Total:        13.4 MB

The following NEW packages will be INSTALLED:

  ca-certificates    conda-forge/osx-64::ca-certificates-2022.6.15-h033912b_0
  libcxx             conda-forge/osx-64::libcxx-14.0.6-hce7ea42_0
  ncbi-datasets-cli  conda-forge/osx-64::ncbi-datasets-cli-13.30.0-h1b54a9f_0


Proceed ([y]/n)? y


Downloading and Extracting Packages
ca-certificates-2022 | 149 KB    | ############################################################################################################################################################### | 100% 
libcxx-14.0.6        | 1.3 MB    | ############################################################################################################################################################### | 100% 
ncbi-datasets-cli-13 | 11.9 MB   | ############################################################################################################################################################### | 100% 
Preparing transaction: done
Verifying transaction: done
Executing transaction: done
(ncbi_datasets) slipakanungo@Slipas-MacBook-Pro datasets download genome accession --inputfile strep_ref_genome.txt --exclude-gff3 --exclude-protein --exclude-rna -filename strep_genome_db1.zip
Error: Accepts either argument or file, not both
Usage
  datasets download genome accession <accession ...> [flags]

Examples
  datasets download genome accession GCF_000001405.40 --chromosomes X,Y --exclude-gff3 --exclude-rna
  datasets download genome accession GCA_003774525.2 GCA_000001635 --chromosomes X,Y,Un.9
  datasets download genome accession PRJNA289059 --exclude-seq

Flags
  -h, --help               help for accession
      --inputfile string   read a list of NCBI Assembly accessions from a file to use as input


Global Flags
  -a, --annotated                only include genomes with annotation
      --api-key string           NCBI Datasets API Key
      --assembly-level string    restrict assemblies to a comma-separated list of one or more of: chromosome, complete_genome, contig, scaffold
      --assembly-source string   restrict assemblies to refseq or genbank only
      --chromosomes strings      limit to a specified, comma-delimited list of chromosomes (default [all])
      --dehydrated               download a dehydrated zip archive including the data report and locations of data files (use the rehydrate command to retrieve data files).
      --exclude-genomic-cds      exclude cds_from_genomic.fna (genomic cds file)
      --exclude-gff3             exclude genomic.gff (gff3 annotation file)
      --exclude-protein          exclude protein.faa (protein sequence file)
      --exclude-rna              exclude rna.fna (transcript sequence file)
      --exclude-seq              exclude genomic.fna (genomic sequence file)
      --filename string          specify a custom file name for the downloaded dataset (default "ncbi_dataset.zip")
      --include-gbff             include genomic.gbff (GenBank flat file sequence and annotation), if available
      --include-gtf              include genomic.gtf (gtf annotation file), if available
      --no-progressbar           hide progress bar
      --reference                limit to reference and representative (GCF_ and GCA_) assemblies
      --released-before string   only include genomes that have been released before a specified date (MM/DD/YYYY)
      --released-since string    only include genomes that have been released after a specified date (MM/DD/YYYY)
      --search strings           only include genomes that have the specified text in the
                                 searchable fields: species and infraspecies, assembly name and submitter
                                 To provide multiple strings '--search' can be included multiple times
                                 


#To download genome accession:()
  
(ncbi_datasets) slipakanungo@Slipas-MBP ncbi % datasets download genome accession --inputfile strep_ref_genome.txt --annotated --include-gbff
Some of the assemblies provided ('GCA_000148585.1', 'GCA_000164675.1', 'GCA_000222765.1', 'GCA_000223295.1') are valid NCBI Assembly Accessions,
but are not in scope for NCBI Datasets.


Downloading: ncbi_dataset.zip    113MB done
New version of client (13.41.0) available at https://ftp.ncbi.nlm.nih.gov/pub/datasets/command-line/LATEST/mac/datasets

#To unzip the ncbi_dataset.zip:

* First install unzip

(base) slipakanungo@Slipas-MacBook-Pro ncbi % brew install unzip
Running `brew update --preinstall`...
==> Auto-updated Homebrew!
Updated 3 taps (homebrew/core, homebrew/cask and brewsci/bio).
==> New Formulae
adamstark-audiofile      docker-buildx            gold                     lgeneral                 markdown-toc             opencl-headers           qsv                      trzsz-go
astro                    doggo                    groestlcoin              libbpf                   mcap                     openvi                   railway                  ttdl
aws-nuke                 dooit                    hatch                    libnetfilter_conntrack   meek                     pacmc                    redis@6.2                tuc
aws2-wrap                dtrx                     helix                    libnftnl                 metalang99               pax                      req                      unisonlang
aztfy                    dump1090-mutability      hwatch                   libnl                    mkp224o                  pg_cron                  sgn                      uthash
bfgminer                 dumpling                 ijq                      libobjc2                 mle                      pg_partman               snowflake                vectorscan
brewsci/bio/btllib       dunamai                  install-peerdeps         libpython-tabulate       mprocs                   phrase-cli               spr                      verapdf
brewsci/bio/gffread      editorconfig-checker     interface99              licensor                 mypaint-brushes          pipe-rename              stencil                  vile
cargo-bundle             eget                     iptables                 livekit                  nali                     pixie                    swtpm                    vulkan-loader
cargo-nextest            evernote-backup          jackett                  livekit-cli              nb                       pixiewps                 synergy-core             webkitgtk
cargo-udeps              fastnetmon               jaq                      llvm@13                  neovide                  poac                     tea                      xdg-ninja
cfonts                   flock                    kics                     lunar-date               nftables                 pocl                     teller                   yorkie
circumflex               git-codereview           kt-connect               mabel                    nmrpflash                podman-compose           terramate                zx
czg                      glib-utils               leapp-cli                maclaunch                oak                      protobuf@3               toxcore
dart-sdk                 glider                   levant                   manifest-tool            ocl-icd                  python-build             treefmt
datatype99               gnustep-base             lexicon                  mariadb@10.7             ohdear-cli               qbe                      tremor-runtime
==> New Casks
amazon-luna                       calhash                           fly-key                           metadatics                        sol                               ukrainian-typographic-keyboard
app-fair                          cardinal                          gama                              miaoyan                           sonixd                            ved
archy                             cleaneronepro                     gama-jdk                          opencore-patcher                  squash                            weektodo
astrofox                          cloud189                          gamma-control                     orangedrangon-android-messages    swiftcord                         wirecast
audiostellar                      cro-mag-rally                     gyroflow                          orion                             tailscale                         wow
betterandbetter                   dixa                              headlamp                          phpwebstudy                       tdr-kotelnikov                    yousician
betterdisplay                     dmg-canvas                        jpc-qlcolorcode                   plex-htpc                         tdr-nova
bili-downloader                   drawpile                          juice                             psst                              tdr-vos-slickeq
bing-wallpaper                    ecamm-live                        lemonlime                         roam-research                     tmpdisk
black-light                       elephicon                         localxpose                        rockboxutility                    twitch-studio
black-light-pro                   fertigt-slate                     mbcord                            rustdesk                          ui

You have 7 outdated formulae and 1 outdated cask installed.
You can upgrade them with brew upgrade
or list them with brew outdated.

==> Downloading https://ghcr.io/v2/homebrew/core/unzip/manifests/6.0_7
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/unzip/blobs/sha256:3241133018f7d7ba45369917d9ca45878e02ae238298fcad5b8e73f30445ba62
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:3241133018f7d7ba45369917d9ca45878e02ae238298fcad5b8e73f30445ba62?se=2022-07-21T15%3A00%3A00Z&sig=8uDhO3cnhxqdTXYyrHo9
######################################################################## 100.0%
==> Pouring unzip--6.0_7.arm64_monterey.bottle.tar.gz
==> Caveats
unzip is keg-only, which means it was not symlinked into /opt/homebrew,
because macOS already provides this software and installing another version in
parallel can cause all kinds of trouble.

If you need to have unzip first in your PATH, run:
  echo 'export PATH="/opt/homebrew/opt/unzip/bin:$PATH"' >> ~/.zshrc

==> Summary
🍺  /opt/homebrew/Cellar/unzip/6.0_7: 16 files, 612.9KB
==> `brew cleanup` has not been run in the last 30 days, running now...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
Removing: /Users/slipakanungo/Library/Caches/Homebrew/ca-certificates--2022-04-26... (121.8KB)
Removing: /Users/slipakanungo/Library/Caches/Homebrew/libidn2--2.3.2... (256.4KB)
Removing: /Users/slipakanungo/Library/Caches/Homebrew/openjdk--18.0.1... (180.3MB)
Removing: /Users/slipakanungo/Library/Caches/Homebrew/openssl@1.1--1.1.1n... (5MB)
Removing: /Users/slipakanungo/Library/Caches/Homebrew/openssl@1.1--1.1.1o... (5MB)
Removing: /Users/slipakanungo/Library/Caches/Homebrew/sqlite--3.38.5... (2MB)
Removing: /Users/slipakanungo/Library/Caches/Homebrew/Cask/multipass--1.8.1.pkg... (104.6MB)
Removing: /Users/slipakanungo/Library/Caches/Homebrew/Cask/multipass--1.9.1.pkg... (106.3MB)
Removing: /Users/slipakanungo/Library/Logs/Homebrew/wget... (64B)
Removing: /Users/slipakanungo/Library/Logs/Homebrew/libidn2... (64B)
Removing: /Users/slipakanungo/Library/Logs/Homebrew/gdbm... (64B)
Removing: /Users/slipakanungo/Library/Logs/Homebrew/mpdecimal... (64B)
Removing: /Users/slipakanungo/Library/Logs/Homebrew/libunistring... (64B)
Removing: /Users/slipakanungo/Library/Logs/Homebrew/readline... (64B)
Removing: /Users/slipakanungo/Library/Logs/Homebrew/sqlite... (64B)
Removing: /Users/slipakanungo/Library/Logs/Homebrew/xz... (64B)
Removing: /Users/slipakanungo/Library/Logs/Homebrew/openjdk... (64B)
Removing: /Users/slipakanungo/Library/Logs/Homebrew/hmmer... (4 files, 68.4KB)
Removing: /Users/slipakanungo/Library/Logs/Homebrew/ca-certificates... (64B)
Removing: /Users/slipakanungo/Library/Logs/Homebrew/gettext... (64B)
Removing: /Users/slipakanungo/Library/Logs/Homebrew/openssl@1.1... (64B)
Removing: /Users/slipakanungo/Library/Logs/Homebrew/python@3.9... (2 files, 2.5KB)
Pruned 0 symbolic links and 2 directories from /opt/homebrew

* Then unzip the file ncbi_dataset.zip from the provided directory:

(base) slipakanungo@Slipas-MacBook-Pro ncbi % unzip ncbi_dataset.zip 
Archive:  ncbi_dataset.zip
  inflating: README.md               
  inflating: ncbi_dataset/data/assembly_data_report.jsonl  
  inflating: ncbi_dataset/data/GCA_000164095.1/unplaced.scaf.fna  
  inflating: ncbi_dataset/data/GCA_000164095.1/genomic.gff  
  inflating: ncbi_dataset/data/GCA_000164095.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCA_000164095.1/protein.faa  
  inflating: ncbi_dataset/data/GCA_000164095.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCA_000186465.1/unplaced.scaf.fna  
  inflating: ncbi_dataset/data/GCA_000186465.1/genomic.gff  
  inflating: ncbi_dataset/data/GCA_000186465.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCA_000186465.1/protein.faa  
  inflating: ncbi_dataset/data/GCA_000186465.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCA_000187465.1/unplaced.scaf.fna  
  inflating: ncbi_dataset/data/GCA_000187465.1/genomic.gff  
  inflating: ncbi_dataset/data/GCA_000187465.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCA_000187465.1/protein.faa  
  inflating: ncbi_dataset/data/GCA_000187465.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCA_000187585.1/unplaced.scaf.fna  
  inflating: ncbi_dataset/data/GCA_000187585.1/genomic.gff  
  inflating: ncbi_dataset/data/GCA_000187585.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCA_000187585.1/protein.faa  
  inflating: ncbi_dataset/data/GCA_000187585.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCA_000188295.1/unplaced.scaf.fna  
  inflating: ncbi_dataset/data/GCA_000188295.1/genomic.gff  
  inflating: ncbi_dataset/data/GCA_000188295.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCA_000188295.1/protein.faa  
  inflating: ncbi_dataset/data/GCA_000188295.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCA_000194945.1/unplaced.scaf.fna  
  inflating: ncbi_dataset/data/GCA_000194945.1/genomic.gff  
  inflating: ncbi_dataset/data/GCA_000194945.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCA_000194945.1/protein.faa  
  inflating: ncbi_dataset/data/GCA_000194945.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCA_000235445.1/unplaced.scaf.fna  
  inflating: ncbi_dataset/data/GCA_000235445.1/genomic.gff  
  inflating: ncbi_dataset/data/GCA_000235445.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCA_000235445.1/protein.faa  
  inflating: ncbi_dataset/data/GCA_000235445.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCA_000257785.1/GCA_000257785.1_ASM25778v1_genomic.fna  
  inflating: ncbi_dataset/data/GCA_000257785.1/genomic.gff  
  inflating: ncbi_dataset/data/GCA_000257785.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCA_000257785.1/protein.faa  
  inflating: ncbi_dataset/data/GCA_000257785.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCA_000257825.1/GCA_000257825.1_ASM25782v1_genomic.fna  
  inflating: ncbi_dataset/data/GCA_000257825.1/genomic.gff  
  inflating: ncbi_dataset/data/GCA_000257825.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCA_000257825.1/protein.faa  
  inflating: ncbi_dataset/data/GCA_000257825.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCA_000344275.1/GCA_000344275.1_Streptococcus_tigurinus_AZ_3a_genomic.fna  
  inflating: ncbi_dataset/data/GCA_000344275.1/genomic.gff  
  inflating: ncbi_dataset/data/GCA_000344275.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCA_000344275.1/protein.faa  
  inflating: ncbi_dataset/data/GCA_000344275.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCA_000373605.1/unplaced.scaf.fna  
  inflating: ncbi_dataset/data/GCA_000379985.1/unplaced.scaf.fna  
  inflating: ncbi_dataset/data/GCA_000380045.1/unplaced.scaf.fna  
  inflating: ncbi_dataset/data/GCA_000380065.1/unplaced.scaf.fna  
  inflating: ncbi_dataset/data/GCA_000382825.1/GCA_000382825.1_ASM38282v1_genomic.fna  
  inflating: ncbi_dataset/data/GCA_000385925.1/GCA_000385925.1_ASM38592v1_genomic.fna  
  inflating: ncbi_dataset/data/GCA_000385925.1/genomic.gff  
  inflating: ncbi_dataset/data/GCA_000385925.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCA_000385925.1/protein.faa  
  inflating: ncbi_dataset/data/GCA_000385925.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCA_000413475.1/GCA_000413475.1_Stre_inte_ATCC_27335_V1_genomic.fna  
  inflating: ncbi_dataset/data/GCA_000413475.1/genomic.gff  
  inflating: ncbi_dataset/data/GCA_000413475.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCA_000413475.1/protein.faa  
  inflating: ncbi_dataset/data/GCA_000413475.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCA_000479335.1/GCA_000479335.1_ASM47933v1_genomic.fna  
  inflating: ncbi_dataset/data/GCA_000479335.1/genomic.gff  
  inflating: ncbi_dataset/data/GCA_000479335.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCA_000479335.1/protein.faa  
  inflating: ncbi_dataset/data/GCA_000479335.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCA_000747195.1/GCA_000747195.1_ASM74719v1_genomic.fna  
  inflating: ncbi_dataset/data/GCA_000747195.1/genomic.gff  
  inflating: ncbi_dataset/data/GCA_000747195.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCA_000747195.1/protein.faa  
  inflating: ncbi_dataset/data/GCA_000747195.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCA_000767835.1/GCA_000767835.1_ASM76783v1_genomic.fna  
  inflating: ncbi_dataset/data/GCA_000767835.1/genomic.gff  
  inflating: ncbi_dataset/data/GCA_000767835.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCA_000767835.1/protein.faa  
  inflating: ncbi_dataset/data/GCA_000767835.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCA_000785515.1/GCA_000785515.1_ASM78551v1_genomic.fna  
  inflating: ncbi_dataset/data/GCA_000785515.1/genomic.gff  
  inflating: ncbi_dataset/data/GCA_000785515.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCA_000785515.1/protein.faa  
  inflating: ncbi_dataset/data/GCA_000785515.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCA_001469295.1/unplaced.scaf.fna  
  inflating: ncbi_dataset/data/GCA_001469295.1/genomic.gff  
  inflating: ncbi_dataset/data/GCA_001469295.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCA_001469295.1/protein.faa  
  error:  invalid compressed data to inflate
  inflating: ncbi_dataset/data/GCA_001469295.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCA_001708305.1/GCA_001708305.1_ASM170830v1_genomic.fna  
  error:  invalid compressed data to inflate
  inflating: ncbi_dataset/data/GCA_003143695.1/GCA_003143695.1_ASM314369v1_genomic.fna  
  inflating: ncbi_dataset/data/GCA_003143695.1/genomic.gff  
  inflating: ncbi_dataset/data/GCA_003143695.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCA_003143695.1/protein.faa  
  inflating: ncbi_dataset/data/GCA_003143695.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCA_003626515.1/GCA_003626515.1_ASM362651v1_genomic.fna  
  inflating: ncbi_dataset/data/GCA_003626515.1/genomic.gff  
  inflating: ncbi_dataset/data/GCA_003626515.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCA_003626515.1/protein.faa  
  inflating: ncbi_dataset/data/GCA_003626515.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCA_003627155.1/GCA_003627155.1_ASM362715v1_genomic.fna  
  inflating: ncbi_dataset/data/GCA_003627155.1/genomic.gff  
  inflating: ncbi_dataset/data/GCA_003627155.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCA_003627155.1/protein.faa  
  inflating: ncbi_dataset/data/GCA_003627155.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCA_004785935.1/GCA_004785935.1_ASM478593v1_genomic.fna  
  inflating: ncbi_dataset/data/GCA_004785935.1/genomic.gff  
  inflating: ncbi_dataset/data/GCA_004785935.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCA_004785935.1/protein.faa  
  inflating: ncbi_dataset/data/GCA_004785935.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCA_006385165.1/GCA_006385165.1_ASM638516v1_genomic.fna  
  inflating: ncbi_dataset/data/GCA_006385165.1/genomic.gff  
  inflating: ncbi_dataset/data/GCA_006385165.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCA_006385165.1/protein.faa  
  inflating: ncbi_dataset/data/GCA_006385165.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCA_006385805.1/GCA_006385805.1_ASM638580v1_genomic.fna  
  inflating: ncbi_dataset/data/GCA_006385805.1/genomic.gff  
  inflating: ncbi_dataset/data/GCA_006385805.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCA_006385805.1/protein.faa  
  inflating: ncbi_dataset/data/GCA_006385805.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCA_014643475.1/GCA_014643475.1_ASM1464347v1_genomic.fna  
  inflating: ncbi_dataset/data/GCA_014643475.1/genomic.gff  
  inflating: ncbi_dataset/data/GCA_014643475.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCA_014643475.1/protein.faa  
  inflating: ncbi_dataset/data/GCA_014643475.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCA_900095845.1/GCA_900095845.1_PRJEB15309_genomic.fna  
  inflating: ncbi_dataset/data/GCA_900143035.1/GCA_900143035.1_IMG-taxon_2687453658_annotated_assembly_genomic.fna  
  inflating: ncbi_dataset/data/GCA_900143035.1/genomic.gff  
  inflating: ncbi_dataset/data/GCA_900143035.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCA_900143035.1/protein.faa  
  inflating: ncbi_dataset/data/GCA_900143035.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCF_001679535.1/GCF_001679535.1_ASM167953v1_genomic.fna  
  inflating: ncbi_dataset/data/GCF_001679535.1/genomic.gff  
  inflating: ncbi_dataset/data/GCF_001679535.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCF_001679535.1/protein.faa  
  inflating: ncbi_dataset/data/GCF_001679535.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCF_003627135.1/GCF_003627135.1_ASM362713v1_genomic.fna  
  inflating: ncbi_dataset/data/GCF_003627135.1/genomic.gff  
  inflating: ncbi_dataset/data/GCF_003627135.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCF_003627135.1/protein.faa  
  inflating: ncbi_dataset/data/GCF_003627135.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCF_004353325.1/GCF_004353325.1_ASM435332v1_genomic.fna  
  inflating: ncbi_dataset/data/GCF_004353325.1/genomic.gff  
  inflating: ncbi_dataset/data/GCF_004353325.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCF_004353325.1/protein.faa  
  inflating: ncbi_dataset/data/GCF_004353325.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCF_016403165.1/GCF_016403165.1_ASM1640316v1_genomic.fna  
  inflating: ncbi_dataset/data/GCF_016403165.1/genomic.gff  
  inflating: ncbi_dataset/data/GCF_016403165.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCF_016403165.1/protein.faa  
  inflating: ncbi_dataset/data/GCF_016403165.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCF_016481285.1/GCF_016481285.1_ASM1648128v1_genomic.fna  
  inflating: ncbi_dataset/data/GCF_016481285.1/genomic.gff  
  inflating: ncbi_dataset/data/GCF_016481285.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCF_016481285.1/protein.faa  
  inflating: ncbi_dataset/data/GCF_016481285.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCF_016642265.1/GCF_016642265.1_ASM1664226v1_genomic.fna  
  inflating: ncbi_dataset/data/GCF_016642265.1/genomic.gff  
  inflating: ncbi_dataset/data/GCF_016642265.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCF_016642265.1/protein.faa  
  inflating: ncbi_dataset/data/GCF_016642265.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCF_017315345.1/GCF_017315345.1_ASM1731534v1_genomic.fna  
  inflating: ncbi_dataset/data/GCF_017315345.1/genomic.gff  
  inflating: ncbi_dataset/data/GCF_017315345.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCF_017315345.1/protein.faa  
  inflating: ncbi_dataset/data/GCF_017315345.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCF_900474985.1/GCF_900474985.1_41965_C01_genomic.fna  
  inflating: ncbi_dataset/data/GCF_900474985.1/genomic.gff  
  inflating: ncbi_dataset/data/GCF_900474985.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCF_900474985.1/protein.faa  
  inflating: ncbi_dataset/data/GCF_900474985.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCF_900475675.1/GCF_900475675.1_45473_D02_genomic.fna  
  inflating: ncbi_dataset/data/GCF_900475675.1/genomic.gff  
  inflating: ncbi_dataset/data/GCF_900475675.1/genomic.gbff  
  inflating: ncbi_dataset/data/GCF_900475675.1/protein.faa  
  inflating: ncbi_dataset/data/GCF_900475675.1/cds_from_genomic.fna  
  inflating: ncbi_dataset/data/GCA_000164095.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_000186465.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_000187465.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_000187585.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_000188295.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_000194945.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_000235445.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_000257785.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_000257825.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_000344275.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_000373605.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_000379985.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_000380045.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_000380065.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_000382825.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_000385925.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_000413475.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_000479335.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_000747195.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_000767835.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_000785515.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_001469295.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_001708305.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_003143695.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_003626515.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_003627155.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_004785935.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_006385165.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_006385805.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_014643475.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_900095845.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCA_900143035.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCF_001679535.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCF_003627135.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCF_004353325.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCF_016403165.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCF_016481285.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCF_016642265.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCF_017315345.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCF_900474985.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/GCF_900475675.1/sequence_report.jsonl  
  inflating: ncbi_dataset/data/dataset_catalog.json  
  
                             