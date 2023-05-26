* Import libraries

```python
from Bio import SeqIO
import OS
```

* Either set directory of the fasta sequence files

```python
file_path='/Users/slipakanungo/Documents/Comparative_genomics/Final_draft/PyGenomeviz_new/P2D11_test/'
```

* Or else set directory of the input and output files

```python
input_handle = open("Documents/Comparative_genomics/Final_draft/PyGenomeviz_new/P2D11_test/dnaA.fasta", "r")
output_handle = open("Documents/Comparative_genomics/Final_draft/PyGenomeviz_new/P2D11_test/dnaA.gb","w")

           input_handle: set and read the path of the input files. Here, input file is my fasta file
           output_handle: set and write the path of the output files. Here, output file is the genbank file
```


```python
sequences = list(SeqIO.parse(input_handle, "fasta"))
```

* Assign molecule type

```python
for seq in sequences:
    seq.annotations['molecule_type'] = 'DNA'
```


```python
count = SeqIO.write(sequences, output_handle, "genbank")
```
* count: This is a variable that will store the number of sequences written to the output file. It will be assigned the value returned by the SeqIO.write() function, which represents the number of sequences successfully written.

* SeqIO.write(): This is a function from Biopython's SeqIO module used for writing sequences to a file. It takes three arguments:

* sequences: This is the collection of sequences that you want to write to the file. It should be an iterable object containing SeqRecord objects, which represent individual sequences with associated metadata.

* output_handle: This is the file handle or object where you want to write the sequences. It can be a file object opened in write mode or any object that supports the required file-writing operations.

* "genbank": This is the format specifier indicating that the sequences should be written in the GenBank format. Biopython's SeqIO module supports various file formats, and "genbank" specifies the GenBank format in this case.

* The overall expression SeqIO.write(sequences, output_handle, "genbank") performs the writing operation, writing the sequences to the specified output file in the GenBank format. After executing this line of code, the variable count will hold the number of sequences that were successfully written to the output file in GenBank format.

```python
output_handle.close()
input_handle.close()
print("Converted {} records".format(count))
```
* output_handle.close(): This line of code is used to close the output file handle, output_handle, which was used for writing the sequences. Closing the file handle is important to ensure that all the data is written and to free up system resources associated with the file.

* input_handle.close(): This line of code is used to close the input file handle, input_handle, which might have been used to read the input sequences before the conversion. Closing the file handle is good practice to release system resources associated with the file once it is no longer needed.

* print("Converted {} records".format(count)): This line of code prints a message to the console indicating the number of records (sequences) that were successfully converted and written to the output file. It uses string formatting to insert the value of the count variable into the printed message. The {} acts as a placeholder for the value of count, which is substituted in the printed output.

In summary, the additional lines of code close the file handles to ensure proper handling of the files, and the print statement provides feedback on the number of records that were successfully converted and written to the output file.


