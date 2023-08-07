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

* ```merge1 = pd.merge(df1, df2, left_index=True, right_index=True, how='left')``` : This line uses the pd.merge() function from pandas to perform the merge operation. The function combines the two DataFrames df1 and df2 based on their index values (since left_index and right_index are set to True), and it performs a left merge (specified by how='left').
The result of this merge is stored in a new DataFrame called merge1.

* ```df1``` : This DataFrame was created from the previous frequency counts for the first category (let's call it "Category 1"), with the unique values as the index and the corresponding frequency counts in the "Frequency" column.

* ```df2``` : This DataFrame was created from the previous frequency counts for the second category (let's call it "Category 2"), with the unique values as the index and the corresponding frequency counts in the "Frequency" column.

The ```pd.merge()``` function performs the left merge by taking all the rows from the left DataFrame (df1) and merging the matching rows from the right DataFrame (df2) based on their index values. If there are no matching rows in the right DataFrame, the corresponding values will be filled with NaN (Not a Number).

The resulting merge1 DataFrame will have three columns: "name of the category inside the csv file" (from df1), "Frequency_x" (from df1), and "Frequency_y" (from df2). The "name of the category inside the csv file" column will contain the unique values (categories), and the "Frequency_x" and "Frequency_y" columns will contain the corresponding frequency counts for "Category 1" and "Category 2", respectively.

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
* ```merge1 = pd.merge(df1, df2, how='left', on=["Pathway"])``` : This line uses the pd.merge() function from pandas to perform the merge operation. The function combines the two DataFrames df1 and df2 based on the "Pathway" column, and it performs a left merge (specified by how='left').
The result of this merge is stored in a new DataFrame called merge1.

* ```df1``` : This DataFrame contains data with the "Pathway" column, and possibly other columns as well. The "Pathway" column contains unique values that represent different pathways or categories.

* ```df2``` : This DataFrame also contains data with the "Pathway" column and other columns. It may represent data related to the same pathways as in df1 but possibly with different attributes.

The pd.merge() function performs the left merge by taking all the rows from the left DataFrame (df1) and merging the matching rows from the right DataFrame (df2) based on the common "Pathway" column. If there are no matching rows in the right DataFrame, the corresponding values will be filled with NaN (Not a Number).

The resulting merge1 DataFrame will have all the columns from df1 and df2, with the rows merged based on the "Pathway" column.
Note:

* how= 'left' or how= 'right'; depends on which side of the "dataframe" you want to merge
* on=["Pathway"]; depends on which "category" of the dataframe you want to merge

### Substituting NaN in the merged dataframe with 0

```python
merge1.fillna(0)
```
* ```merge1``` : This is the DataFrame obtained from the previous left merge operation between DataFrames df1 and df2, based on the common "Pathway" column.

* ```.fillna(0)``` : This part of the code calls the fillna() method on the DataFrame merge1. The fillna() method is used to fill missing values (NaN) with specified values. In this case, the specified value is 0.

By executing merge1.fillna(0), any NaN values present in the DataFrame merge1 will be replaced with 0. This is useful for cases where there are missing values in the merged DataFrame, and you want to treat those missing values as zeros for further analysis or calculations.

### Delete a particular column of the dataframe

```python
del file_name['particular_column_name']
```

* The del statement in Python is used to delete an object or a specific item from a list or dictionary. When used with pandas DataFrames, del can be used to remove a specific column (referred to as a "particular_column_name") from the DataFrame. 

### Re-naming the index of the dataframe

```python
new_file_name = dataframe_name.rename(index={0:'rename',1:'rename',2:'rename',3:'rename',4:'rename',5:'rename'})
```
* ```dataframe_name``` : This is the original DataFrame whose row labels (index) you want to rename.

* ```rename``` : This is the new label that you want to assign to the rows with the index values 0, 1, 2, 3, 4, and 5. The row labels are changed to 'rename' for all these index positions.

* ```new_file_name``` : This is the new DataFrame that will contain the original data from dataframe_name, but with the updated row labels as specified in the rename dictionary.

The rename() method in pandas is used to change row and/or column labels of a DataFrame. In this case, it is being used to modify the row labels. The index parameter takes a dictionary where the keys are the current row index positions, and the values are the new row labels you want to assign to those positions.

### Exporting the particular csv file to the main folder

```python
merge1.to_csv('COG.csv')
```
* ```merge1``` : This is the DataFrame that you want to save to a CSV file. In this case, it is the DataFrame obtained after the left merge operation between DataFrames df1 and df2 based on the "Pathway" column.

* ```.to_csv('COG.csv')``` : The .to_csv() method is a pandas DataFrame method used to export the DataFrame to a CSV file. It takes the file path as its argument, and in this case, the file path is "COG.csv".

When you execute this line of code, the DataFrame merge1 will be saved as a CSV file named "COG.csv" in the current working directory (the same directory where the Python script is running).

The CSV file will have the content of the DataFrame merge1, including the columns, rows, and any index labels present in the DataFrame. The data in the CSV file will be comma-separated, with each row representing a row from the DataFrame and each column representing a column from the DataFrame.

### Importing libraries for the heatmap

```python
import seaborn as sns
import numpy as np
import matplotlib.pyplot as plt
```

* ```seaborn``` : Seaborn is a popular data visualization library built on top of matplotlib. It provides a high-level interface for creating attractive and informative statistical graphics. Seaborn simplifies the process of creating visualizations, and it works well with pandas DataFrames, making it a powerful tool for exploratory data analysis.

* ```numpy``` : NumPy is a fundamental package for scientific computing with Python. It provides support for large, multi-dimensional arrays and matrices, along with a large collection of high-level mathematical functions to operate on these arrays. NumPy is widely used in various scientific and data-related tasks.

* ```matplotlib.pyplot``` : matplotlib is a widely used plotting library in Python for creating static, interactive, and animated visualizations. The pyplot module from matplotlib provides a simple interface to create various types of plots, charts, and graphs.

By importing these libraries, you can utilize their functionalities to create visualizations and perform data manipulation and analysis efficiently. For example, you can use seaborn to create sophisticated statistical plots, numpy to work with arrays and perform numerical computations, and matplotlib.pyplot to generate a wide range of plots for your data.

### Plotting the heatmap

```python
plt.figure(figsize=(9,9))
plt.xlabel('users', size = 15)
plt.ylabel('COG', size = 15)
sns.heatmap(merge5, cmap = "rocket_r")
plt.show()
```

* ```plt.figure(figsize=(9,9))``` : This line creates a new figure with a specified size of 9x9 inches. The plt.figure() function is used to create a new empty figure, and the figsize parameter sets the dimensions of the figure.

* ```plt.xlabel('users', size=15)``` : This sets the label for the x-axis to 'users' with a font size of 15.

* ```plt.ylabel('COG', size=15)``` : This sets the label for the y-axis to 'COG' with a font size of 15.

* ```sns.heatmap(merge5, cmap="rocket_r")``` : This line creates the heatmap using the seaborn library. The sns.heatmap() function takes the DataFrame merge5 as input and generates a heatmap. The cmap="rocket_r" parameter sets the color map for the heatmap to 'rocket_r', which is a perceptually uniform colormap from matplotlib.

* ```plt.show()``` : This displays the generated heatmap using matplotlib.pyplot. The plt.show() function is used to show the plotted figure.

The resulting heatmap will be displayed with the specified labels on the axes and colored according to the data in the DataFrame merge5. The 'rocket_r' colormap will be used to map the values in merge5 to corresponding colors on the heatmap. The larger values will appear in darker colors, and smaller values will appear in lighter colors, allowing you to quickly identify patterns and trends in the data. The heatmap is a useful visualization tool for understanding relationships between variables in large datasets.
    

### Re-arranging the merged coloumns

```python
new_columns = ['column_2','column_5','column_1','column_6','column_3','column_4']
merge2 = merge1[new_columns]
```

* ```new_columns``` : This is a list that contains the names of the columns that you want to select from the original DataFrame merge1. The order of the columns in this list defines the order they will appear in the new DataFrame merge2.

* ```merge1[new_columns]``` : This syntax is used to select the specified columns from the DataFrame merge1 and create a new DataFrame called merge2 that includes only those columns in the order specified in the new_columns list.

After executing the code, the new DataFrame merge2 will contain only the columns that were specified in the new_columns list and in the order defined in that list. All other columns present in the original DataFrame merge1 will be excluded from merge2.










