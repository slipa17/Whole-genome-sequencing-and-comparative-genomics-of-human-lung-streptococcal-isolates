# streptococcus COG category analysis
```
import pandas as pd
```

                     

```python
pwd
```




    '/Users/slipakanungo'




```python
import os
```


```python
os.getcwd()
```



# setting the directory

    '/Users/slipakanungo'




```python
os.chdir("/Users/slipakanungo/Documents/Comparative_genomics/Python/")
```
# reading the csv file

```python
strain = pd.read_csv("name of the file.csv")
strain
```
strain: name of the microbial isolates

# get a frequency table with value counts
```
frequency1 = strain["name of the category inside the csv file"].value_counts(ascending=True).sort_index()
frequency1
```
frequency1: name of the object

# converting a frequency table into a data frame
```
df1 = pd.DataFrame(frequency1)
df1
```
df1: name of the object


# reading the csv file

```python
strain = pd.read_csv("name of the file.csv")
strain
```
strain: name of the microbial isolates


# get a frequency table with value counts

```
frequency2 = strain["name of the category inside the csv file"].value_counts(ascending=True).sort_index()
frequency2
```
frequency2: name of the object

# converting a frequency table into a data frame

```
df2 = pd.DataFrame(frequency2)
df2
```
df2: name of the object


# Merging both the data frames

```python
merge1 = pd.merge(df1,df2,left_index=True,right_index=True,how='left')
merge1
```
Note:

left_index: df1(1st data frame), right_index: df2(2nd data frame) 

#In case the left_index dataframe has more elements, use:
how='left'; the right_index will be merged on the left_index

#In case the right_index dataframe has more elements, use:
how='right'; the left_index will be merged on the right_index

#In case the left_index dataframe and right_index dataframe has equal number of elements, use:
how='left' or how='right

# Alternate command for merging both the data frames

```python
merge1 = pd.merge(df1,df2,how='left', on=["Pathway"])
merge1
```
Note:

* how= 'left' or how= 'right'; depends on which side of the "dataframe" you want to merge
* on=["Pathway"]; depends on which "category" of the dataframe you want to merge

# Substituting NaN in the merged dataframe with 0

```python
merge5.fillna(0)
```

# Delete a particular column of the dataframe

```python
del file_name['particular_column_name']
```

# Re-naming the index of the dataframe

```python
new_file_name = dataframe_name.rename(index={0:'rename',1:'rename',2:'rename',3:'rename',4:'rename',5:'rename'})
```

# Exporting the particular csv file to the main folder

```python
merge5.to_csv('COG.csv')
```
# Importing libraries for the heatmap

```python
import seaborn as sns
import numpy as np
import matplotlib.pyplot as plt
```

# Plotting the heatmap

```python
plt.figure(figsize=(9,9))
plt.xlabel('users', size = 15)
plt.ylabel('COG', size = 15)
sns.heatmap(merge5, cmap = "rocket_r")
plt.show()
```
    

# Re-arranging the merged coloumns

```python
new_columns = ['P2E5','P3E5','P2D11','T369_3','P3B4','P3D4']
merge6 = merge5[new_columns]
```








