### Setting the working directory

```
setwd(path) 
```

### reading the csv file

```
strain1 <- read.csv("strain1_COG.csv")
```
### To count the frequency of the individual items present inside the data frame

```
strain1 <- table(strain1$strain1_COG)
```
### To view the particular table

```
View(strain1)
```

### reading the csv file

```
strain2 <- read.csv("strain2_COG.csv")
```

### To count the frequency of the individual items present inside the data frame

```
strain2 <- table(strain2$strain2_COG)
```

### To merge both the dataframe files

```
dataframe_name = merge(strain1, strain2, by.x = "Var1", "Freq", by.y = "Var1", "Freq", all.x = TRUE, all.y =TRUE)
```

### Substituting 'NA' with '0'

```
dataframe_name[is.na(dataframe_name)] <- 0 
```

### Removing the serial numbers(1,2,3....)in the new merged file and display only the COG categories

```
rownames(dataframe_name) <-dataframe_name[,1]
```

### To remove the extra COG coloumn:(use minus symbol(-) with the required coloumn to be removed)

```
dataframe_name <- dataframe_name[,-c(1)]
```
### To rename the coloumns in the dataframe:

```
colnames(dataframe_name) = c("strain1", "strain2", "strain3", "strain4", "strain5", "strain6") 
```

### For heatmap, you have to convert the dataframe into the matrix form

```
dataframe_name <- as.matrix(dataframe_name) 
```

### To draw the heatmap 

```
heatmap(dataframe_name)
```
### To export the required dataframe to the main folder

```
write.csv(dataframe_name,"new_file_name.csv", row.names = TRUE) 
```

### To view the header of the dataframe

```
head(dataframe_name)
```

### To view the structure of the dataframe

```
str(dataframe_name)
```

### To create elegant data visualizations using the grammar of graphics

```
install.packages("ggplot2")
library("ggplot2")
```

### To draw the Pretty Heatmaps(pheatmap)

* First install the package and load the library 

```
install.packages("pheatmap") 
library("pheatmap")
```

* Then run using the script

```
pheatmap(dataframe_name,treeheight_row = 0, treeheight_col = 0, color =colorRampPalette(c("white","orange","red"))(50), fontsize_row = 5)
```
