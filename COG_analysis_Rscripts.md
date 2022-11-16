# Setting the working directory

```
setwd("~/Documents/Comparative_genomics/R") 
```

# reading the csv file

```
P2D11 <-read.csv("P2D11_COG.csv")
```

P2D11 <-table(P2D11$P2D11_COG) 
View(P2D11) 
P2E5 <- read.csv("P2E5_COG.csv") 
P2E5 <- table(P2E5$P2E5_COG)
View(P2E5) 
x1.df = merge(P2D11, P2E5, by.x = "Var1", "Freq", by.y ="Var1", "Freq", all.x = TRUE, all.y =TRUE) 
View(x1.df) 
P3B4 <-read.csv("P3B4_COG.csv") 
P3B4 <-table(P3B4$P3B4_COG) 
View(P3B4) 
x2.df = merge(x1.df, P3B4, by.x = "Var1", "Freq", by.y = "Var1", "Freq", all.x = TRUE, all.y =TRUE) 
View(x2.df) 
P3D4 <- read.csv("P3D4_COG.csv") 
P3D4 <- table(P3D4$P3D4_COG)
View(P3D4) 
P3E5 <- read.csv("P3E5_COG.csv") 
P3E5 <-table(P3E5$P3E5_COG) 
View(P3E5) 
x5.df = merge(P3D4, P3E5, by.x = "Var1", "Freq", by.y = "Var1", "Freq", all.x = TRUE, all.y =TRUE)
View(x5.df)
T369_3 <- read.csv("T369_3_COG.csv") 
T369_3 <- table(T369_3$T369_3_COG)
View(T369_3)
x6.df = merge(x5.df, T369_3, by.x = "Var1", "Freq", by.y ="Var1", "Freq", all.x = TRUE, all.y =TRUE) 
View(x6.df) 
x7.df =merge(x2.df, x6.df, by.x = "Var1", "Freq", by.y = "Var1", "Freq", all.x= TRUE, all.y =TRUE) 
View(x7.df) 
x7.df[is.na(x7.df)] <- 0 
View(x7.df)
write.csv(x7.df,"COG.csv", row.names = TRUE) 
rownames(x7.df) <-x7.df[,1] 
View(rownames(x7.df)) 
x7.df <- x7.df[,-c(1)]
View(x7.df)
colnames(x7.df) = c("P2D11", "P2E5", "P3B4", "P3D4", "P3E5", "T369_3") 
View(colnames(x7.df))
x7.df <- as.matrix(x7.df) 
View(x7.df) 
heatmap(x7.df)
write.csv(x7.df,"COG_heatmap.csv", row.names = TRUE) 
head(x7.df)
str(x7.df) 
install.packages("ggplot2")
library("ggplot2")
install.packages("pheatmap") 
library("pheatmap") 
pheatmap(x7.df,treeheight_row = 0, treeheight_col = 0, 
                                  color =colorRampPalette(c("white","orange","red"))(50), fontsize_row = 5)
