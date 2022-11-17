
 # To append strain name to the FASTA headers
          
         
          * Set up the directory containing the respective (.faa files), then run the command
           
           sed 's/>.*/&_file/' file.faa > output_file_name.faa
           


 # To concatenate the file
       
            
            * Set up the directory containing the respective (.faa files), then run the command
                
             cat *.faa > output_file_name
             

     
 # To grep the following
     
          
          * Set up the directory first and then run:
          
    1. Sequence counting: 
    
       grep -c ">" file name
       
    
    
    2. Taking one list and subtracting it from another:
    
    grep -Fvw -f HEADERFILE.txt full_list.txt 
    
    
    (The options -F and -w ensure that the entire word is utilized as a literal string, -v prevents the matching patterns from being printed, and -f filename.txt indicates that the input patterns are in the file.)
     
                Note:  HEADERFILE.txt : It is a set of lists written in a text file that is to be substracted from the main file
                       full_list.txt : main file
                                            
    
    3. Finding the specific word/genes: 
    
    grep -i "the word/genes you want to search in the file" file_name 
    
    
   
    4. Exporting the grep file to your main folder: 
    
    grep -i "the word/genes you want to search in the file" file_name containing the word/genes you want to search >> new_grepped_file_name with an extension
                 
                      New grepped_file_name extension: .txt, .faa etc
                      Note:  >> is the symbol used for the extraction of the grepped output to a new file.
                      


   
   # To extract the desired sequences from the file containing the total sequences:
    
            
            *First install the package bioawk:
        
            conda install -c bioconda bioawk
                
                
         * Set up the directory and then run:
         
       
bioawk -cfastx 'BEGIN{while((getline k <"list_protein_id_that is to be extracted.txt")>0)i[k]=1}{if(i[$name])print ">"$name"\n"$seq}'original_file_name.faa > the_new_file_name.faa
            

Note: protein_id list: write the name of the list that is to be extracted separately in a text file one after another and save it. Then pass that .txt file to the above code.
