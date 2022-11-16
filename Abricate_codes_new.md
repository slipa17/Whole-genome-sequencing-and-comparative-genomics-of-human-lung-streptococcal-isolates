# For virulence gene and antibiotic resistance genes:


(base) slipakanungo@Slipas-MBP Strep_user % cd ..
(base) slipakanungo@Slipas-MBP ncbi_datasets % cd ..
(base) slipakanungo@Slipas-MBP Genomics % cd ..
(base) slipakanungo@Slipas-MBP Data_analysis % cd ..
(base) slipakanungo@Slipas-MBP Documents % cd ..

# Installing abricate

```
(base) slipakanungo@Slipas-MBP ~ % conda install -c conda-forge -c bioconda -c defaults abricate
```

Collecting package metadata (current_repodata.json): done
Solving environment: failed with initial frozen solve. Retrying with flexible solve.
Solving environment: failed with repodata from current_repodata.json, will retry with next repodata source.
Collecting package metadata (repodata.json): done
Solving environment: done


==> WARNING: A newer version of conda exists. <==
  current version: 4.14.0
  latest version: 22.9.0

Please update conda by running

    $ conda update -n base -c defaults conda



## Package Plan ##

  environment location: /Users/slipakanungo/anaconda3

  added / updated specs:
    - abricate


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    abricate-0.5               |       ha92aebf_2         3.9 MB  bioconda
    cctools-973.0.1            |       hd9211c8_2          17 KB  conda-forge
    cctools_osx-64-973.0.1     |       h3e07e27_2         2.0 MB  conda-forge
    conda-22.9.0               |   py39h6e9494a_2         962 KB  conda-forge
    conda-build-3.22.0         |   py39h6e9494a_3         571 KB  conda-forge
    emboss-6.6.0               |       h6debe1e_0        93.9 MB  bioconda
    ld64-609                   |       hd2e7500_2          15 KB  conda-forge
    ld64_osx-64-609            |       h2487922_2         1.5 MB  conda-forge
    ldid-2.1.2                 |       h6a69015_3          55 KB  conda-forge
    libllvm12-12.0.1           |       hd011deb_2        24.1 MB  conda-forge
    patch-2.7.6                |    hbcf498f_1002         133 KB  conda-forge
    perl-file-slurp-9999.27    |          pl526_0          17 KB  bioconda
    perl-file-spec-3.48_01     |          pl526_1           3 KB  bioconda
    perl-findbin-1.51          |          pl526_2           5 KB  bioconda
    tapi-1100.0.11             |       h9ce4665_0         196 KB  conda-forge
    unzip-6.0                  |       h0d85af4_3         166 KB  conda-forge
    ------------------------------------------------------------
                                           Total:       127.5 MB

The following NEW packages will be INSTALLED:

  abricate           bioconda/osx-64::abricate-0.5-ha92aebf_2
  cctools            conda-forge/osx-64::cctools-973.0.1-hd9211c8_2
  cctools_osx-64     conda-forge/osx-64::cctools_osx-64-973.0.1-h3e07e27_2
  emboss             bioconda/osx-64::emboss-6.6.0-h6debe1e_0
  ld64               conda-forge/osx-64::ld64-609-hd2e7500_2
  ld64_osx-64        conda-forge/osx-64::ld64_osx-64-609-h2487922_2
  ldid               conda-forge/osx-64::ldid-2.1.2-h6a69015_3
  libllvm12          conda-forge/osx-64::libllvm12-12.0.1-hd011deb_2
  patch              conda-forge/osx-64::patch-2.7.6-hbcf498f_1002
  perl-file-slurp    bioconda/osx-64::perl-file-slurp-9999.27-pl526_0
  perl-file-spec     bioconda/osx-64::perl-file-spec-3.48_01-pl526_1
  perl-findbin       bioconda/noarch::perl-findbin-1.51-pl526_2
  tapi               conda-forge/osx-64::tapi-1100.0.11-h9ce4665_0
  unzip              conda-forge/osx-64::unzip-6.0-h0d85af4_3

The following packages will be UPDATED:

  conda              pkgs/main::conda-4.14.0-py39hecd8cb5_0 --> conda-forge::conda-22.9.0-py39h6e9494a_2
  conda-build        pkgs/main::conda-build-3.21.5-py39hec~ --> conda-forge::conda-build-3.22.0-py39h6e9494a_3


Proceed ([y]/n)? y


Downloading and Extracting Packages
perl-file-spec-3.48_ | 3 KB      | ################################################################################################################################################################# | 100% 
cctools_osx-64-973.0 | 2.0 MB    | ################################################################################################################################################################# | 100% 
patch-2.7.6          | 133 KB    | ################################################################################################################################################################# | 100% 
ld64-609             | 15 KB     | ################################################################################################################################################################# | 100% 
perl-file-slurp-9999 | 17 KB     | ################################################################################################################################################################# | 100% 
cctools-973.0.1      | 17 KB     | ################################################################################################################################################################# | 100% 
ld64_osx-64-609      | 1.5 MB    | ################################################################################################################################################################# | 100% 
conda-22.9.0         | 962 KB    | ################################################################################################################################################################# | 100% 
abricate-0.5         | 3.9 MB    | ################################################################################################################################################################# | 100% 
libllvm12-12.0.1     | 24.1 MB   | ################################################################################################################################################################# | 100% 
ldid-2.1.2           | 55 KB     | ################################################################################################################################################################# | 100% 
unzip-6.0            | 166 KB    | ################################################################################################################################################################# | 100% 
tapi-1100.0.11       | 196 KB    | ################################################################################################################################################################# | 100% 
conda-build-3.22.0   | 571 KB    | ################################################################################################################################################################# | 100% 
emboss-6.6.0         | 93.9 MB   | ################################################################################################################################################################# | 100% 
perl-findbin-1.51    | 5 KB      | ################################################################################################################################################################# | 100% 
Preparing transaction: done
Verifying transaction: done
Executing transaction: done
Retrieving notices: ...working... done
(base) slipakanungo@Slipas-MBP ~ % abricate --check
Checking dependencies are installed:
Found 'blastn' => /Users/slipakanungo/anaconda3/bin/blastn
Found 'makeblastdb' => /Users/slipakanungo/anaconda3/bin/makeblastdb
Found 'seqret' => /Users/slipakanungo/anaconda3/bin/seqret
Found 'gzip' => /usr/bin/gzip
Found 'unzip' => /Users/slipakanungo/anaconda3/bin/unzip
OK.
(base) slipakanungo@Slipas-MBP ~ % abricate --list
abricate: corrupt database? - /Users/slipakanungo/anaconda3/bin/../db/abricate
argannot:  1749 sequences -  Jul 8, 2017
card:  2124 sequences -  Jul 8, 2017
ncbibetalactamase:  1557 sequences -  Mar 17, 2017
plasmidfinder:  263 sequences -  Mar 19, 2017
resfinder:  2228 sequences -  Jul 8, 2017
vfdb:  2597 sequences -  Mar 17, 2017
(base) slipakanungo@Slipas-MBP ~ % cd Documents 
(base) slipakanungo@Slipas-MBP Documents % cd Comparative_genomics 
(base) slipakanungo@Slipas-MBP Comparative_genomics % cd OrthoVenn
(base) slipakanungo@Slipas-MBP OrthoVenn % cd Protein_user 
(base) slipakanungo@Slipas-MBP Protein_user % abricate /*.faa
zsh: no matches found: /*.faa
(base) slipakanungo@Slipas-MBP Protein_user % abricate P2D11.faa
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: P2D11.faa
WARNING: can not find sequence data in 'P2D11.faa'
(base) slipakanungo@Slipas-MBP Protein_user % abricate P2E5.faa
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: P2E5.faa
WARNING: can not find sequence data in 'P2E5.faa'
(base) slipakanungo@Slipas-MBP Protein_user % cd ..
(base) slipakanungo@Slipas-MBP OrthoVenn % cd ..
(base) slipakanungo@Slipas-MBP Comparative_genomics % cd Linux_users_ref
(base) slipakanungo@Slipas-MBP Linux_users_ref % cd ref
(base) slipakanungo@Slipas-MBP ref % abricate 1-GCF_000960005.1_ASM96000v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 1-GCF_000960005.1_ASM96000v1_genomic.fna
Found 0 genes in 1-GCF_000960005.1_ASM96000v1_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 2-GCF_900637025.1_46338_H01_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 2-GCF_900637025.1_46338_H01_genomic.fna
Found 0 genes in 2-GCF_900637025.1_46338_H01_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 3-GCF_001071155.1_ASM107115v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 3-GCF_001071155.1_ASM107115v1_genomic.fna
Found 2 genes in 3-GCF_001071155.1_ASM107115v1_genomic.fna
3-GCF_001071155.1_ASM107115v1_genomic.fna	NZ_JVGP01000037.1	93631	95094	msr(D)_2	1-1464/1464	===============	0/0	100.00	100.00	resfinder	AF274302
3-GCF_001071155.1_ASM107115v1_genomic.fna	NZ_JVGP01000037.1	95214	96431	mef(A)_10	1-1218/1218	===============	0/0	100.00	100.00	resfinder	AF376746
(base) slipakanungo@Slipas-MBP ref % abricate 4-GCF_900636505.1_42650_H02_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 4-GCF_900636505.1_42650_H02_genomic.fna
Found 0 genes in 4-GCF_900636505.1_42650_H02_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 5-GCF_019929665.1_ASM1992966v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 5-GCF_019929665.1_ASM1992966v1_genomic.fna
Found 2 genes in 5-GCF_019929665.1_ASM1992966v1_genomic.fna
5-GCF_019929665.1_ASM1992966v1_genomic.fna	NZ_JAHZPZ010000001.1	552022	553485	msr(D)_2	1-1464/1464	===============	0/0	100.00	100.00	resfinder	AF274302
5-GCF_019929665.1_ASM1992966v1_genomic.fna	NZ_JAHZPZ010000001.1	553605	554822	mef(A)_10	1-1218/1218	===============	0/0	100.00	100.00	resfinder	AF376746
(base) slipakanungo@Slipas-MBP ref % abricate 6-GCF_000187585.1_ASM18758v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 6-GCF_000187585.1_ASM18758v1_genomic.fna
Found 2 genes in 6-GCF_000187585.1_ASM18758v1_genomic.fna
6-GCF_000187585.1_ASM18758v1_genomic.fna	NZ_GL732463.1	1611595	1613514	tet(M)_2	1-1920/1920	===============	0/0	100.00	99.43	resfinder	X90939
6-GCF_000187585.1_ASM18758v1_genomic.fna	NZ_GL732463.1	1614414	1615176	erm(B)_18	1-762/762	========/======	1/1	100.00	99.61	resfinder	X66468
(base) slipakanungo@Slipas-MBP ref % abricate 7-GCF_020590155.1_ASM2059015v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 7-GCF_020590155.1_ASM2059015v1_genomic.fna
Found 0 genes in 7-GCF_020590155.1_ASM2059015v1_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 8-GCF_000191105.1_ASM19110v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 8-GCF_000191105.1_ASM19110v1_genomic.fna
Found 0 genes in 8-GCF_000191105.1_ASM19110v1_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 9-GCF_900475445.1_42727_F01_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 9-GCF_900475445.1_42727_F01_genomic.fna
Found 1 genes in 9-GCF_900475445.1_42727_F01_genomic.fna
9-GCF_900475445.1_42727_F01_genomic.fna	NZ_LS483383.1	1141151	1143070	tet(M)_5	1-1920/1920	===============	0/0	100.00	98.39	resfinder	U58985
(base) slipakanungo@Slipas-MBP ref % abricate 10-GCF_900459125.1_49569_C01_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 10-GCF_900459125.1_49569_C01_genomic.fna
Found 1 genes in 10-GCF_900459125.1_49569_C01_genomic.fna
10-GCF_900459125.1_49569_C01_genomic.fna	NZ_UHFC01000002.1	1183551	1185470	tet(M)_13	1-1920/1920	===============	0/0	100.00	99.95	resfinder	AM990992
(base) slipakanungo@Slipas-MBP ref % abricate 11-GCF_000235445.1_John_igna_ATCC_51276_V1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 11-GCF_000235445.1_John_igna_ATCC_51276_V1_genomic.fna
Found 2 genes in 11-GCF_000235445.1_John_igna_ATCC_51276_V1_genomic.fna
11-GCF_000235445.1_John_igna_ATCC_51276_V1_genomic.fna	NZ_JH378834.1	27068	28987	tet(W)_4	1-1920/1920	===============	0/0	100.00	100.00	resfinder	AJ427422
11-GCF_000235445.1_John_igna_ATCC_51276_V1_genomic.fna	NZ_JH378841.1	48663	50141	lsa(C)_1	1-1479/1479	===============	0/0	100.00	91.75	resfinder	HM990671
(base) slipakanungo@Slipas-MBP ref % abricate 12-GCA_000257785.1_ASM25778v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 12-GCA_000257785.1_ASM25778v1_genomic.fna
Found 1 genes in 12-GCA_000257785.1_ASM25778v1_genomic.fna
12-GCA_000257785.1_ASM25778v1_genomic.fna	AICQ01000008.1	13244	15163	tet(M)_13	1-1920/1920	===============	0/0	100.00	99.95	resfinder	AM990992
(base) slipakanungo@Slipas-MBP ref % abricate 13-GCA_000257825.1_ASM25782v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 13-GCA_000257825.1_ASM25782v1_genomic.fna
Found 3 genes in 13-GCA_000257825.1_ASM25782v1_genomic.fna
13-GCA_000257825.1_ASM25782v1_genomic.fna	AICS01000023.1	13821	15740	tet(M)_12	1-1920/1920	===============	0/0	100.00	99.53	resfinder	FR671418
13-GCA_000257825.1_ASM25782v1_genomic.fna	AICS01000033.1	9610	11073	msr(D)_2	1-1464/1464	===============	0/0	100.00	100.00	resfinder	AF274302
13-GCA_000257825.1_ASM25782v1_genomic.fna	AICS01000033.1	11094	12311	mef(A)_10	1-1218/1218	===============	0/0	100.00	100.00	resfinder	AF376746
(base) slipakanungo@Slipas-MBP ref % abricate 14-GCA_000344275.1_Streptococcus_tigurinus_AZ_3a_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 14-GCA_000344275.1_Streptococcus_tigurinus_AZ_3a_genomic.fna
Found 0 genes in 14-GCA_000344275.1_Streptococcus_tigurinus_AZ_3a_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 15-GCF_001412635.1_ASM141263v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 15-GCF_001412635.1_ASM141263v1_genomic.fna
Found 1 genes in 15-GCF_001412635.1_ASM141263v1_genomic.fna
15-GCF_001412635.1_ASM141263v1_genomic.fna	NZ_CP012805.1	244068	245987	tet(M)_1	1-1920/1920	===============	0/0	100.00	99.84	resfinder	X92947
(base) slipakanungo@Slipas-MBP ref % abricate 16-GCF_000379985.1_ASM37998v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 16-GCF_000379985.1_ASM37998v1_genomic.fna
Found 0 genes in 16-GCF_000379985.1_ASM37998v1_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 17-GCF_000380045.1_ASM38004v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 17-GCF_000380045.1_ASM38004v1_genomic.fna
Found 0 genes in 17-GCF_000380045.1_ASM38004v1_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 18-GCF_900459365.1_45296_H02_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 18-GCF_900459365.1_45296_H02_genomic.fna
Found 0 genes in 18-GCF_900459365.1_45296_H02_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 19-GCA_000385925.1_ASM38592v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 19-GCA_000385925.1_ASM38592v1_genomic.fna
Found 2 genes in 19-GCA_000385925.1_ASM38592v1_genomic.fna
19-GCA_000385925.1_ASM38592v1_genomic.fna	CP004409.1	1593869	1594631	erm(B)_18	1-762/762	========/======	1/1	100.00	98.95	resfinder	X66468
19-GCA_000385925.1_ASM38592v1_genomic.fna	CP004409.1	1604548	1606467	tet(M)_8	1-1920/1920	===============	0/0	100.00	99.84	resfinder	X04388
(base) slipakanungo@Slipas-MBP ref % abricate 20-GCA_000413475.1_Stre_inte_ATCC_27335_V1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 20-GCA_000413475.1_Stre_inte_ATCC_27335_V1_genomic.fna
Found 0 genes in 20-GCA_000413475.1_Stre_inte_ATCC_27335_V1_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 21-GCA_000479335.1_ASM47933v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 21-GCA_000479335.1_ASM47933v1_genomic.fna
Found 0 genes in 21-GCA_000479335.1_ASM47933v1_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 22-GCA_000747195.1_ASM74719v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 22-GCA_000747195.1_ASM74719v1_genomic.fna
Found 0 genes in 22-GCA_000747195.1_ASM74719v1_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 23-GCA_000767835.1_ASM76783v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 23-GCA_000767835.1_ASM76783v1_genomic.fna
Found 0 genes in 23-GCA_000767835.1_ASM76783v1_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 24-GCA_000785515.1_ASM78551v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 24-GCA_000785515.1_ASM78551v1_genomic.fna
Found 0 genes in 24-GCA_000785515.1_ASM78551v1_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 25-GCA_001469295.1_ASM146929v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 25-GCA_001469295.1_ASM146929v1_genomic.fna
Found 0 genes in 25-GCA_001469295.1_ASM146929v1_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 26-GCA_001708305.1_ASM170830v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 26-GCA_001708305.1_ASM170830v1_genomic.fna
Found 0 genes in 26-GCA_001708305.1_ASM170830v1_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 27-GCA_003143695.1_ASM314369v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 27-GCA_003143695.1_ASM314369v1_genomic.fna
Found 3 genes in 27-GCA_003143695.1_ASM314369v1_genomic.fna
27-GCA_003143695.1_ASM314369v1_genomic.fna	QEMY01000602.1	1	242	erm(C)_10	201-442/735	....======.....	0/0	32.93	100.00	resfinder	Y09002
27-GCA_003143695.1_ASM314369v1_genomic.fna	QEMY01000916.1	19	246	blaCMY-40_1	133-360/1146	.====..........	0/0	19.90	78.95	resfinder	EU515251
27-GCA_003143695.1_ASM314369v1_genomic.fna	QEMY01001335.1	44	250	strB_1	1-207/837	====...........	0/0	24.73	99.03	resfinder	M96392
(base) slipakanungo@Slipas-MBP ref % abricate 28-GCA_003626515.1_ASM362651v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 28-GCA_003626515.1_ASM362651v1_genomic.fna
Found 0 genes in 28-GCA_003626515.1_ASM362651v1_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 29-GCA_003627155.1_ASM362715v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 29-GCA_003627155.1_ASM362715v1_genomic.fna
Found 2 genes in 29-GCA_003627155.1_ASM362715v1_genomic.fna
29-GCA_003627155.1_ASM362715v1_genomic.fna	CP032621.1	884564	886483	tet(M)_2	1-1920/1920	===============	0/0	100.00	99.32	resfinder	X90939
29-GCA_003627155.1_ASM362715v1_genomic.fna	CP032621.1	887566	888328	erm(B)_18	1-762/762	========/======	1/1	100.00	99.61	resfinder	X66468
(base) slipakanungo@Slipas-MBP ref % abricate 30-GCA_004785935.1_ASM478593v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 30-GCA_004785935.1_ASM478593v1_genomic.fna
Found 0 genes in 30-GCA_004785935.1_ASM478593v1_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 31-GCA_006385165.1_ASM638516v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 31-GCA_006385165.1_ASM638516v1_genomic.fna
Found 7 genes in 31-GCA_006385165.1_ASM638516v1_genomic.fna
31-GCA_006385165.1_ASM638516v1_genomic.fna	VFJA01000002.1	17945	19864	tet(M)_2	1-1920/1920	===============	0/0	100.00	98.49	resfinder	X90939
31-GCA_006385165.1_ASM638516v1_genomic.fna	VFJA01000002.1	21590	23053	msr(D)_2	1-1464/1464	===============	0/0	100.00	100.00	resfinder	AF274302
31-GCA_006385165.1_ASM638516v1_genomic.fna	VFJA01000002.1	23074	24291	mef(A)_10	1-1218/1218	===============	0/0	100.00	100.00	resfinder	AF376746
31-GCA_006385165.1_ASM638516v1_genomic.fna	VFJA01000003.1	63161	65080	tet(M)_2	1-1920/1920	===============	0/0	100.00	98.49	resfinder	X90939
31-GCA_006385165.1_ASM638516v1_genomic.fna	VFJA01000003.1	66806	68269	msr(D)_2	1-1464/1464	===============	0/0	100.00	100.00	resfinder	AF274302
31-GCA_006385165.1_ASM638516v1_genomic.fna	VFJA01000003.1	68290	69507	mef(A)_10	1-1218/1218	===============	0/0	100.00	100.00	resfinder	AF376746
31-GCA_006385165.1_ASM638516v1_genomic.fna	VFJA01000004.1	174195	174689	lnu(C)_1	1-495/495	===============	0/0	100.00	99.19	resfinder	AY928180
(base) slipakanungo@Slipas-MBP ref % abricate 32-GCA_006385805.1_ASM638580v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 32-GCA_006385805.1_ASM638580v1_genomic.fna
Found 2 genes in 32-GCA_006385805.1_ASM638580v1_genomic.fna
32-GCA_006385805.1_ASM638580v1_genomic.fna	VFSG01000001.1	616043	617506	msr(D)_2	1-1464/1464	===============	0/0	100.00	100.00	resfinder	AF274302
32-GCA_006385805.1_ASM638580v1_genomic.fna	VFSG01000001.1	617626	618843	mef(A)_10	1-1218/1218	===============	0/0	100.00	100.00	resfinder	AF376746
(base) slipakanungo@Slipas-MBP ref % abricate 33-GCA_014643475.1_ASM1464347v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 33-GCA_014643475.1_ASM1464347v1_genomic.fna
Found 0 genes in 33-GCA_014643475.1_ASM1464347v1_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 33-GCA_014643475.1_ASM1464347v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 33-GCA_014643475.1_ASM1464347v1_genomic.fna
Found 0 genes in 33-GCA_014643475.1_ASM1464347v1_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 34-GCA_900095845.1_PRJEB15309_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 34-GCA_900095845.1_PRJEB15309_genomic.fna
Found 0 genes in 34-GCA_900095845.1_PRJEB15309_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 35-GCA_900143035.1_IMG-taxon_2687453658_annotated_assembly_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 35-GCA_900143035.1_IMG-taxon_2687453658_annotated_assembly_genomic.fna
abFound 0 genes in 35-GCA_900143035.1_IMG-taxon_2687453658_annotated_assembly_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 36-GCF_001679535.1_ASM167953v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 36-GCF_001679535.1_ASM167953v1_genomic.fna
abrFound 0 genes in 36-GCF_001679535.1_ASM167953v1_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 37-GCF_003627135.1_ASM362713v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 37-GCF_003627135.1_ASM362713v1_genomic.fna
Found 2 genes in 37-GCF_003627135.1_ASM362713v1_genomic.fna
37-GCF_003627135.1_ASM362713v1_genomic.fna	NZ_CP032620.1	1439327	1440544	mef(A)_10	1-1218/1218	===============	0/0	100.00	100.00	resfinder	AF376746
37-GCF_003627135.1_ASM362713v1_genomic.fna	NZ_CP032620.1	1440664	1442127	msr(D)_2	1-1464/1464	===============	0/0	100.00	100.00	resfinder	AF274302
(base) slipakanungo@Slipas-MBP ref % abricate 38-GCF_004353325.1_ASM435332v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 38-GCF_004353325.1_ASM435332v1_genomic.fna
Found 1 genes in 38-GCF_004353325.1_ASM435332v1_genomic.fna
38-GCF_004353325.1_ASM435332v1_genomic.fna	NZ_MZNX01000006.1	198370	200289	tet(M)_1	1-1920/1920	===============	0/0	100.00	99.84	resfinder	X92947
(base) slipakanungo@Slipas-MBP ref % abricate 39-GCF_016403165.1_ASM1640316v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 39-GCF_016403165.1_ASM1640316v1_genomic.fna
Found 0 genes in 39-GCF_016403165.1_ASM1640316v1_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 40-GCF_016481285.1_ASM1648128v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 40-GCF_016481285.1_ASM1648128v1_genomic.fna
Found 0 genes in 40-GCF_016481285.1_ASM1648128v1_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 41-GCF_016642265.1_ASM1664226v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 41-GCF_016642265.1_ASM1664226v1_genomic.fna
Found 1 genes in 41-GCF_016642265.1_ASM1664226v1_genomic.fna
41-GCF_016642265.1_ASM1664226v1_genomic.fna	NZ_MRXX01000003.1	131305	133224	tet(M)_4	1-1920/1920	===============	0/0	100.00	98.75	resfinder	X75073
(base) slipakanungo@Slipas-MBP ref % abricate 42-GCF_017315345.1_ASM1731534v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 42-GCF_017315345.1_ASM1731534v1_genomic.fna
Found 0 genes in 42-GCF_017315345.1_ASM1731534v1_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 43-GCF_900474985.1_41965_C01_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 43-GCF_900474985.1_41965_C01_genomic.fna
Found 0 genes in 43-GCF_900474985.1_41965_C01_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 44-GCF_900475675.1_45473_D02_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 44-GCF_900475675.1_45473_D02_genomic.fna
Found 0 genes in 44-GCF_900475675.1_45473_D02_genomic.fna
(base) slipakanungo@Slipas-MBP ref % abricate 45-GCA_000382825.1_ASM38282v1_genomic.fna 
Using database resfinder:  2228 sequences -  Jul 8, 2017
#FILE	SEQUENCE	START	END	GENE	COVERAGE	COVERAGE_MAP	GAPS	%COVERAGE	%IDENTITY	DATABASE	ACCESSION
Processing: 45-GCA_000382825.1_ASM38282v1_genomic.fna
Found 2 genes in 45-GCA_000382825.1_ASM38282v1_genomic.fna
45-GCA_000382825.1_ASM38282v1_genomic.fna	CAUK01000004.1	399802	401019	mef(A)_10	1-1218/1218	===============	0/0	100.00	100.00	resfinder	AF376746
45-GCA_000382825.1_ASM38282v1_genomic.fna	CAUK01000004.1	401139	402602	msr(D)_2	1-1464/1464	===============	0/0	100.00	100.00	resfinder	AF274302
(base) slipakanungo@Slipas-MBP ref % 
