1- Append:

          #To append strain name to the FASTA headers:(sed 's/>.*/&_file/' file.faa > output_file_name.faa)
          
            Set up the directory containing the respective (.faa files) first:
               
            (/Users/slipakanungo/Documents/Data_analysis/Genomics/ncbi_datasets/Strep_user)
               
(base) slipakanungo@Slipas-MBP Strep_user % sed 's/>.*/&_P2D11/' P2D11.faa > P2D11_out.faa
(base) slipakanungo@Slipas-MBP Strep_user % sed 's/>.*/&_P2E5/' P2E5.faa > P2E5_out.faa
(base) slipakanungo@Slipas-MBP Strep_user % sed 's/>.*/&_P3B4/' P3B4.faa > P3B4_out.faa
(base) slipakanungo@Slipas-MBP Strep_user % sed 's/>.*/&_P3D4/' P3D4.faa > P3D4_out.faa
(base) slipakanungo@Slipas-MBP Strep_user % sed 's/>.*/&_P3E5/' P3E5.faa > P3E5_out.faa
(base) slipakanungo@Slipas-MBP Strep_user % sed 's/>.*/&_T369_3/' T369_3.faa > T369_3_out.faa

2- Concatenate:

       #To concatenate the file: (cat *.faa (all the files that need to be concatenated and ending with .faa) > output file name)
       
            Set up the directory containing the respective (.faa files) first:
                
            (/Users/slipakanungo/Documents/Data_analysis/Genomics/ncbi_datasets/Strep_ref)
       
(base) slipakanungo@Slipas-MBP Strep_ref % cat *.faa > Strep_ref


3- Grep:
            #To grep the following:
     
          Set up the directory first and then run:
          
    1. Sequence counting: (grep -c ">" file name)
    
(base) slipakanungo@Slipas-MBP Strep_user % grep -c ">" P2D11_out.faa
    
    2. Taking one list and subtracting it from another:
    
    grep -Fvw -f sub_list.txt full_list.txt (The options -F and -w ensure that the entire word is utilized as a literal string, -v prevents the matching patterns from being printed, and -f filename.txt indicates that the input patterns are in the file.)
    
(base) slipakanungo@Slipas-MBP strep_users_core % grep -Fvw -f HEADERFILE.txt P3E5_out.faa 
     
                        HEADERFILE.txt : It is a set of lists written in a text file that is to be substracted from the main file)
                        P3E5_out.faa : main file
                                            
    3. Finding the specific word/genes: (grep -i "the word/genes you want to search in the file" file_name containing the word/genes you want to search)
    
(base) slipakanungo@Slipas-MBP Strep_user % grep -i "hypothetical protein" P2D11_out.faa
    
    4. Exporting the grep file to your main folder: (grep -i "the word/genes you want to search in the file" file_name containing the word/genes you want to search >> new_grepped_file_name with an extension)
                        New grepped_file_name extension: .txt, .faa etc
                        
(base) slipakanungo@Slipas-MBP Strep_user % grep -i "hypothetical protein" P2D11_out.faa >> P2D11_grepped.txt
                      Note:  >> is the symbol used for the extraction of the grepped output to a new file.
                      

4- Extract:
   
         #To extract the desired sequences from the file containing the total sequences:(bioawk -cfastx 'BEGIN{while((getline k <"list_protein_id_that is to be extracted.txt")>0)i[k]=1}{if(i[$name])print ">"$name"\n"$seq}' original_file_name.faa > the_new_file_name.faa)
                Note: protein_id list: write the name of the list that is to be extracted separately in a text file one after another and save it. Then pass that .txt file to the above code.
        
        *First install the package bioawk:
        
(base) slipakanungo@Slipas-MBP ~ % conda install -c bioconda bioawk
Collecting package metadata (current_repodata.json): done
Solving environment: done

## Package Plan ##

  environment location: /Users/slipakanungo/anaconda3

  added / updated specs:
    - bioawk


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    bioawk-1.0                 |       h188c3c3_6          79 KB  bioconda
    ------------------------------------------------------------
                                           Total:          79 KB

The following NEW packages will be INSTALLED:

  bioawk             bioconda/osx-64::bioawk-1.0-h188c3c3_6


Proceed ([y]/n)? y


Downloading and Extracting Packages
bioawk-1.0           | 79 KB     | ################################################################################################################################################################# | 100% 
Preparing transaction: done
Verifying transaction: done
Executing transaction: done
Retrieving notices: ...working... done

       *Set up the directory and then run:
       
(base) slipakanungo@Slipas-MBP strep_users_core % bioawk -cfastx 'BEGIN{while((getline k <"P2D11_protein_id.txt")>0)i[k]=1}{if(i[$name])print ">"$name"\n"$seq}' P2D11_out.faa > Strep_core_977.faa  