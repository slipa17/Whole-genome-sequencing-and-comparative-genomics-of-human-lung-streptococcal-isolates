### Reading the csv file, Merging the dataframe and Plotting the heatmap

### Importing pandas library

```
import pandas as pd
```

                     
### Importing pandas module (to run the python script)

```python
import os
```


### setting the current working directory

```python
os.getcwd()
```

### changing the current working directory to specified path

```python
os.chdir(path)
```

### reading the csv file

```python
strain = pd.read_csv("name of the file.csv")
strain
```

* import pandas as ```pd``` : This line imports the pandas library and assigns it the alias "pd." The alias "pd" is commonly used as a shorthand for pandas, making it easier to reference pandas functions and classes.

* ```strain = pd.read_csv("name of the file.csv")``` : This line reads the data from the CSV file named "name of the file.csv" and stores it in a pandas DataFrame called "strain." The pd.read_csv() function is a pandas method used to read data from a CSV file and convert it into a DataFrame.

* ```strain``` : This line prints the contents of the DataFrame "strain" to the console. It displays the data in a tabular format with rows and columns.

Assuming that the CSV file "name of the file.csv" contains data organized in rows and columns, the pandas read_csv() function will read the file, interpret its contents, and create a DataFrame based on the data. Each row of the DataFrame represents a record, and each column represents a specific attribute or variable.

strain: name of the microbial isolates

### get a frequency table with value counts
```
frequency1 = strain["name of the category inside the csv file"].value_counts(ascending=True).sort_index()
frequency1
```

* import pandas as ```pd``` : This line imports the pandas library and assigns it the alias "pd." The alias "pd" is commonly used as a shorthand for pandas, making it easier to reference pandas functions and classes.

* ```dataframe1``` = pd.read_csv("name of the file.csv"): This line reads the data from the CSV file named "name of the file.csv" and stores it in a pandas DataFrame called "dataframe1." The pd.read_csv() function is a pandas method used to read data from a CSV file and convert it into a DataFrame.

* ```dataframe1``` : This line prints the contents of the DataFrame "dataframe1" to the console. It displays the data in a tabular format with rows and columns.

Assuming that the CSV file "name of the file.csv" contains data organized in rows and columns, the pandas read_csv() function will read the file, interpret its contents, and create a DataFrame based on the data. Each row of the DataFrame represents a record, and each column represents a specific attribute or variable.

frequency1: name of the object

### converting a frequency table into a data frame
```
df1 = pd.DataFrame(frequency1)
df1
```
* ```df1``` = pd.DataFrame(frequency1): This line creates a new DataFrame df1 using the pandas DataFrame constructor pd.DataFrame(). The constructor is used to convert various data structures, including pandas Series, lists, dictionaries, and arrays, into a tabular data structure known as a DataFrame.

* ```frequency1``` : This is the pandas Series obtained from the previous code that contains the frequency counts of unique values from the column "name of the category inside the csv file" in the original DataFrame "strain".

The resulting DataFrame df1 will have two columns: one for the index (representing the unique values from the original Series) and another for the frequency counts.

df1: name of the object


### reading the csv file

```python
strain = pd.read_csv("name of the file.csv")
strain
```

* import pandas as ```pd``` : This line imports the pandas library and assigns it the alias "pd." The alias "pd" is commonly used as a shorthand for pandas, making it easier to reference pandas functions and classes.

* ```strain = pd.read_csv("name of the file.csv")``` : This line reads the data from the CSV file named "name of the file.csv" and converts it into a pandas DataFrame called "strain." The pd.read_csv() function is a pandas method used to read data from a CSV file and create a DataFrame from it.

* ```strain``` : This line simply displays the content of the DataFrame "strain" in the console. When you execute this line, you will see the data from the CSV file printed in a tabular format with rows and columns.

Assuming that the CSV file "name of the file.csv" contains data organized in rows and columns, the pandas read_csv() function will read the file, interpret its contents, and create a DataFrame based on the data. Each row of the DataFrame represents a record, and each column represents a specific attribute or variable.

strain: name of the microbial isolates


### get a frequency table with value counts

```
frequency2 = strain["name of the category inside the csv file"].value_counts(ascending=True).sort_index()
frequency2
```

* ```frequency2 = strain["name of the category inside the csv file"]``` : This line selects the column named "name of the category inside the csv file" from the DataFrame "strain" and stores it as a pandas Series in the variable "frequency2". A pandas Series is a one-dimensional labeled array, similar to a column in a DataFrame.

* ```.value_counts(ascending=True)``` : This part of the code uses the value_counts() method on the pandas Series "frequency2" to count the occurrences of each unique value in the column. The method returns a new Series with unique values as the index and their corresponding frequencies as the values. The parameter ascending=True is used to sort the output in ascending order based on the index.

* ```.sort_index()``` : The sort_index() method is used to sort the resulting Series by its index (i.e., the unique values) in ascending order. The resulting Series will have its index sorted in alphabetical or numerical order, depending on the data type.

* ```frequency2``` : This line prints the sorted frequency counts to the console. The output will show the unique values in the "name of the category inside the csv file" column and their respective frequencies in ascending order.

frequency2: name of the object

### converting a frequency table into a data frame

```
df2 = pd.DataFrame(frequency2)
df2
```

* ```df2 = pd.DataFrame(frequency2)``` : This line creates a new DataFrame called df2 using the pandas DataFrame constructor pd.DataFrame(). The constructor is used to convert various data structures, including pandas Series, lists, dictionaries, and arrays, into a tabular data structure known as a DataFrame.

* ```frequency2``` : This is the pandas Series obtained from the previous code that contains the frequency counts of unique values from the column "name of the category inside the csv file" in the original DataFrame "strain."

The resulting DataFrame df2 will have two columns: one for the index (representing the unique values from the original Series) and another for the frequency counts.

df2: name of the object


### Merging both the data frames

```python
merge1 = pd.merge(df1,df2,left_index=True,right_index=True,how='left')
merge1
```
Note:

* left_index: df1(1st data frame), right_index: df2(2nd data frame) 

* In case the left_index dataframe has more elements, use:
how='left'; the right_index will be merged on the left_index

* In case the right_index dataframe has more elements, use:
how='right'; the left_index will be merged on the right_index

* In case the left_index dataframe and right_index dataframe has equal number of elements, use:
how='left' or how='right

### Alternate command for merging both the data frames

```python
merge1 = pd.merge(df1,df2,how='left', on=["Pathway"])
merge1
```
Note:

* how= 'left' or how= 'right'; depends on which side of the "dataframe" you want to merge
* on=["Pathway"]; depends on which "category" of the dataframe you want to merge

### Substituting NaN in the merged dataframe with 0

```python
merge1.fillna(0)
```

### Delete a particular column of the dataframe

```python
del file_name['particular_column_name']
```

### Re-naming the index of the dataframe

```python
new_file_name = dataframe_name.rename(index={0:'rename',1:'rename',2:'rename',3:'rename',4:'rename',5:'rename'})
```

### Exporting the particular csv file to the main folder

```python
merge1.to_csv('COG.csv')
```
### Importing libraries for the heatmap

```python
import seaborn as sns
import numpy as np
import matplotlib.pyplot as plt
```

### Plotting the heatmap

```python
plt.figure(figsize=(9,9))
plt.xlabel('users', size = 15)
plt.ylabel('COG', size = 15)
sns.heatmap(merge5, cmap = "rocket_r")
plt.show()
```
    

### Re-arranging the merged coloumns

```python
new_columns = ['column_2','column_5','column_1','column_6','column_3','column_4']
merge2 = merge1[new_columns]
```








