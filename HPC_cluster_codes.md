## 1. Copying data to high performance computing (HPC) cluster

This example is from the current directory (in case from home indicate the path to source directory.
```
scp sequence.fasta sdas@binfservms01.unibe.ch:PATH/DIR/
```
In this command:

* ```sequence.fasta``` refers to the file you want to copy from your local machine to the remote cluster.
* ```PATH/DIR/``` specifies the location on the remote cluster where you want to copy the data. It should include the hostname or IP address of the remote server, followed by a colon (:) and the path to the destination directory.
