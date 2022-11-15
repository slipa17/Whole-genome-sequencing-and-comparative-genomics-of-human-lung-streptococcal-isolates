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



<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>P2D11</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>-</th>
      <td>73</td>
    </tr>
    <tr>
      <th>A</th>
      <td>1</td>
    </tr>
    <tr>
      <th>C</th>
      <td>55</td>
    </tr>
    <tr>
      <th>D</th>
      <td>39</td>
    </tr>
    <tr>
      <th>E</th>
      <td>158</td>
    </tr>
    <tr>
      <th>F</th>
      <td>85</td>
    </tr>
    <tr>
      <th>G</th>
      <td>102</td>
    </tr>
    <tr>
      <th>H</th>
      <td>56</td>
    </tr>
    <tr>
      <th>I</th>
      <td>35</td>
    </tr>
    <tr>
      <th>J</th>
      <td>164</td>
    </tr>
    <tr>
      <th>K</th>
      <td>144</td>
    </tr>
    <tr>
      <th>L</th>
      <td>135</td>
    </tr>
    <tr>
      <th>M</th>
      <td>127</td>
    </tr>
    <tr>
      <th>N</th>
      <td>12</td>
    </tr>
    <tr>
      <th>O</th>
      <td>55</td>
    </tr>
    <tr>
      <th>P</th>
      <td>113</td>
    </tr>
    <tr>
      <th>Q</th>
      <td>18</td>
    </tr>
    <tr>
      <th>S</th>
      <td>358</td>
    </tr>
    <tr>
      <th>T</th>
      <td>70</td>
    </tr>
    <tr>
      <th>U</th>
      <td>39</td>
    </tr>
    <tr>
      <th>V</th>
      <td>78</td>
    </tr>
  </tbody>
</table>
</div>






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




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>P2E5</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>-</th>
      <td>137</td>
    </tr>
    <tr>
      <th>C</th>
      <td>65</td>
    </tr>
    <tr>
      <th>D</th>
      <td>44</td>
    </tr>
    <tr>
      <th>E</th>
      <td>129</td>
    </tr>
    <tr>
      <th>F</th>
      <td>88</td>
    </tr>
    <tr>
      <th>G</th>
      <td>115</td>
    </tr>
    <tr>
      <th>H</th>
      <td>93</td>
    </tr>
    <tr>
      <th>I</th>
      <td>30</td>
    </tr>
    <tr>
      <th>J</th>
      <td>152</td>
    </tr>
    <tr>
      <th>K</th>
      <td>152</td>
    </tr>
    <tr>
      <th>L</th>
      <td>132</td>
    </tr>
    <tr>
      <th>M</th>
      <td>112</td>
    </tr>
    <tr>
      <th>N</th>
      <td>7</td>
    </tr>
    <tr>
      <th>O</th>
      <td>43</td>
    </tr>
    <tr>
      <th>P</th>
      <td>130</td>
    </tr>
    <tr>
      <th>Q</th>
      <td>14</td>
    </tr>
    <tr>
      <th>S</th>
      <td>384</td>
    </tr>
    <tr>
      <th>T</th>
      <td>50</td>
    </tr>
    <tr>
      <th>U</th>
      <td>23</td>
    </tr>
    <tr>
      <th>V</th>
      <td>51</td>
    </tr>
  </tbody>
</table>
</div>


# Merging both the data frames

```python
merge1 = pd.merge(df1,df2,left_index=True,right_index=True,how='left')
merge1
```
left_index: df1(1st data frame), right_index: df2(2nd data frame) 

#In case the left_index dataframe has more elements, use:
how='left'; the right_index will be merged on the left_index

#In case the right_index dataframe has more elements, use:
how='right'; the left_index will be merged on the right_index

#In case the left_index dataframe and right_index dataframe has equal number of elements, use:
how='left' or how='right




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>P2D11</th>
      <th>P2E5</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>-</th>
      <td>73</td>
      <td>137.0</td>
    </tr>
    <tr>
      <th>A</th>
      <td>1</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>C</th>
      <td>55</td>
      <td>65.0</td>
    </tr>
    <tr>
      <th>D</th>
      <td>39</td>
      <td>44.0</td>
    </tr>
    <tr>
      <th>E</th>
      <td>158</td>
      <td>129.0</td>
    </tr>
    <tr>
      <th>F</th>
      <td>85</td>
      <td>88.0</td>
    </tr>
    <tr>
      <th>G</th>
      <td>102</td>
      <td>115.0</td>
    </tr>
    <tr>
      <th>H</th>
      <td>56</td>
      <td>93.0</td>
    </tr>
    <tr>
      <th>I</th>
      <td>35</td>
      <td>30.0</td>
    </tr>
    <tr>
      <th>J</th>
      <td>164</td>
      <td>152.0</td>
    </tr>
    <tr>
      <th>K</th>
      <td>144</td>
      <td>152.0</td>
    </tr>
    <tr>
      <th>L</th>
      <td>135</td>
      <td>132.0</td>
    </tr>
    <tr>
      <th>M</th>
      <td>127</td>
      <td>112.0</td>
    </tr>
    <tr>
      <th>N</th>
      <td>12</td>
      <td>7.0</td>
    </tr>
    <tr>
      <th>O</th>
      <td>55</td>
      <td>43.0</td>
    </tr>
    <tr>
      <th>P</th>
      <td>113</td>
      <td>130.0</td>
    </tr>
    <tr>
      <th>Q</th>
      <td>18</td>
      <td>14.0</td>
    </tr>
    <tr>
      <th>S</th>
      <td>358</td>
      <td>384.0</td>
    </tr>
    <tr>
      <th>T</th>
      <td>70</td>
      <td>50.0</td>
    </tr>
    <tr>
      <th>U</th>
      <td>39</td>
      <td>23.0</td>
    </tr>
    <tr>
      <th>V</th>
      <td>78</td>
      <td>51.0</td>
    </tr>
  </tbody>
</table>
</div>





# Substituting NaN in the merged dataframe with 0

```python
merge5.fillna(0)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>P2D11</th>
      <th>P2E5</th>
      <th>P3B4</th>
      <th>P3D4</th>
      <th>P3E5</th>
      <th>T369_3</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>-</th>
      <td>73.0</td>
      <td>137.0</td>
      <td>143</td>
      <td>135</td>
      <td>117.0</td>
      <td>131</td>
    </tr>
    <tr>
      <th>A</th>
      <td>1.0</td>
      <td>0.0</td>
      <td>1</td>
      <td>1</td>
      <td>0.0</td>
      <td>1</td>
    </tr>
    <tr>
      <th>C</th>
      <td>55.0</td>
      <td>65.0</td>
      <td>59</td>
      <td>67</td>
      <td>60.0</td>
      <td>61</td>
    </tr>
    <tr>
      <th>D</th>
      <td>39.0</td>
      <td>44.0</td>
      <td>35</td>
      <td>36</td>
      <td>36.0</td>
      <td>34</td>
    </tr>
    <tr>
      <th>E</th>
      <td>158.0</td>
      <td>129.0</td>
      <td>144</td>
      <td>160</td>
      <td>92.0</td>
      <td>145</td>
    </tr>
    <tr>
      <th>F</th>
      <td>85.0</td>
      <td>88.0</td>
      <td>84</td>
      <td>87</td>
      <td>78.0</td>
      <td>83</td>
    </tr>
    <tr>
      <th>G</th>
      <td>102.0</td>
      <td>115.0</td>
      <td>142</td>
      <td>135</td>
      <td>145.0</td>
      <td>125</td>
    </tr>
    <tr>
      <th>H</th>
      <td>56.0</td>
      <td>93.0</td>
      <td>47</td>
      <td>73</td>
      <td>59.0</td>
      <td>55</td>
    </tr>
    <tr>
      <th>I</th>
      <td>35.0</td>
      <td>30.0</td>
      <td>39</td>
      <td>37</td>
      <td>37.0</td>
      <td>37</td>
    </tr>
    <tr>
      <th>J</th>
      <td>164.0</td>
      <td>152.0</td>
      <td>166</td>
      <td>167</td>
      <td>144.0</td>
      <td>164</td>
    </tr>
    <tr>
      <th>K</th>
      <td>144.0</td>
      <td>152.0</td>
      <td>155</td>
      <td>157</td>
      <td>163.0</td>
      <td>146</td>
    </tr>
    <tr>
      <th>L</th>
      <td>135.0</td>
      <td>132.0</td>
      <td>115</td>
      <td>110</td>
      <td>129.0</td>
      <td>102</td>
    </tr>
    <tr>
      <th>M</th>
      <td>127.0</td>
      <td>112.0</td>
      <td>116</td>
      <td>112</td>
      <td>103.0</td>
      <td>108</td>
    </tr>
    <tr>
      <th>N</th>
      <td>12.0</td>
      <td>7.0</td>
      <td>10</td>
      <td>9</td>
      <td>8.0</td>
      <td>8</td>
    </tr>
    <tr>
      <th>O</th>
      <td>55.0</td>
      <td>43.0</td>
      <td>50</td>
      <td>48</td>
      <td>40.0</td>
      <td>49</td>
    </tr>
    <tr>
      <th>P</th>
      <td>113.0</td>
      <td>130.0</td>
      <td>105</td>
      <td>116</td>
      <td>95.0</td>
      <td>99</td>
    </tr>
    <tr>
      <th>Q</th>
      <td>18.0</td>
      <td>14.0</td>
      <td>21</td>
      <td>25</td>
      <td>14.0</td>
      <td>22</td>
    </tr>
    <tr>
      <th>S</th>
      <td>358.0</td>
      <td>384.0</td>
      <td>376</td>
      <td>359</td>
      <td>373.0</td>
      <td>352</td>
    </tr>
    <tr>
      <th>T</th>
      <td>70.0</td>
      <td>50.0</td>
      <td>53</td>
      <td>52</td>
      <td>32.0</td>
      <td>50</td>
    </tr>
    <tr>
      <th>U</th>
      <td>39.0</td>
      <td>23.0</td>
      <td>40</td>
      <td>36</td>
      <td>37.0</td>
      <td>36</td>
    </tr>
    <tr>
      <th>V</th>
      <td>78.0</td>
      <td>51.0</td>
      <td>69</td>
      <td>64</td>
      <td>55.0</td>
      <td>51</td>
    </tr>
    <tr>
      <th>W</th>
      <td>0.0</td>
      <td>0.0</td>
      <td>4</td>
      <td>2</td>
      <td>1.0</td>
      <td>1</td>
    </tr>
  </tbody>
</table>
</div>


```python
merge5.to_csv('COG.csv')
```


```python
import seaborn as sns
import numpy as np
import matplotlib.pyplot as plt
```




    <module 'matplotlib.pyplot' from '/Users/slipakanungo/opt/anaconda3/lib/python3.9/site-packages/matplotlib/pyplot.py'>




```python
plt.figure(figsize=(9,9))
plt.xlabel('users', size = 15)
plt.ylabel('COG', size = 15)
sns.heatmap(merge5, cmap = "rocket_r")
plt.show()
```


    
![png](output_17_0.png)
    



```python
new_columns = ['P2E5','P3E5','P2D11','T369_3','P3B4','P3D4']
merge6 = merge5[new_columns]
merge6
merge6.fillna(0)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>P2E5</th>
      <th>P3E5</th>
      <th>P2D11</th>
      <th>T369_3</th>
      <th>P3B4</th>
      <th>P3D4</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>-</th>
      <td>137.0</td>
      <td>117.0</td>
      <td>73.0</td>
      <td>131</td>
      <td>143</td>
      <td>135</td>
    </tr>
    <tr>
      <th>A</th>
      <td>0.0</td>
      <td>0.0</td>
      <td>1.0</td>
      <td>1</td>
      <td>1</td>
      <td>1</td>
    </tr>
    <tr>
      <th>C</th>
      <td>65.0</td>
      <td>60.0</td>
      <td>55.0</td>
      <td>61</td>
      <td>59</td>
      <td>67</td>
    </tr>
    <tr>
      <th>D</th>
      <td>44.0</td>
      <td>36.0</td>
      <td>39.0</td>
      <td>34</td>
      <td>35</td>
      <td>36</td>
    </tr>
    <tr>
      <th>E</th>
      <td>129.0</td>
      <td>92.0</td>
      <td>158.0</td>
      <td>145</td>
      <td>144</td>
      <td>160</td>
    </tr>
    <tr>
      <th>F</th>
      <td>88.0</td>
      <td>78.0</td>
      <td>85.0</td>
      <td>83</td>
      <td>84</td>
      <td>87</td>
    </tr>
    <tr>
      <th>G</th>
      <td>115.0</td>
      <td>145.0</td>
      <td>102.0</td>
      <td>125</td>
      <td>142</td>
      <td>135</td>
    </tr>
    <tr>
      <th>H</th>
      <td>93.0</td>
      <td>59.0</td>
      <td>56.0</td>
      <td>55</td>
      <td>47</td>
      <td>73</td>
    </tr>
    <tr>
      <th>I</th>
      <td>30.0</td>
      <td>37.0</td>
      <td>35.0</td>
      <td>37</td>
      <td>39</td>
      <td>37</td>
    </tr>
    <tr>
      <th>J</th>
      <td>152.0</td>
      <td>144.0</td>
      <td>164.0</td>
      <td>164</td>
      <td>166</td>
      <td>167</td>
    </tr>
    <tr>
      <th>K</th>
      <td>152.0</td>
      <td>163.0</td>
      <td>144.0</td>
      <td>146</td>
      <td>155</td>
      <td>157</td>
    </tr>
    <tr>
      <th>L</th>
      <td>132.0</td>
      <td>129.0</td>
      <td>135.0</td>
      <td>102</td>
      <td>115</td>
      <td>110</td>
    </tr>
    <tr>
      <th>M</th>
      <td>112.0</td>
      <td>103.0</td>
      <td>127.0</td>
      <td>108</td>
      <td>116</td>
      <td>112</td>
    </tr>
    <tr>
      <th>N</th>
      <td>7.0</td>
      <td>8.0</td>
      <td>12.0</td>
      <td>8</td>
      <td>10</td>
      <td>9</td>
    </tr>
    <tr>
      <th>O</th>
      <td>43.0</td>
      <td>40.0</td>
      <td>55.0</td>
      <td>49</td>
      <td>50</td>
      <td>48</td>
    </tr>
    <tr>
      <th>P</th>
      <td>130.0</td>
      <td>95.0</td>
      <td>113.0</td>
      <td>99</td>
      <td>105</td>
      <td>116</td>
    </tr>
    <tr>
      <th>Q</th>
      <td>14.0</td>
      <td>14.0</td>
      <td>18.0</td>
      <td>22</td>
      <td>21</td>
      <td>25</td>
    </tr>
    <tr>
      <th>S</th>
      <td>384.0</td>
      <td>373.0</td>
      <td>358.0</td>
      <td>352</td>
      <td>376</td>
      <td>359</td>
    </tr>
    <tr>
      <th>T</th>
      <td>50.0</td>
      <td>32.0</td>
      <td>70.0</td>
      <td>50</td>
      <td>53</td>
      <td>52</td>
    </tr>
    <tr>
      <th>U</th>
      <td>23.0</td>
      <td>37.0</td>
      <td>39.0</td>
      <td>36</td>
      <td>40</td>
      <td>36</td>
    </tr>
    <tr>
      <th>V</th>
      <td>51.0</td>
      <td>55.0</td>
      <td>78.0</td>
      <td>51</td>
      <td>69</td>
      <td>64</td>
    </tr>
    <tr>
      <th>W</th>
      <td>0.0</td>
      <td>1.0</td>
      <td>0.0</td>
      <td>1</td>
      <td>4</td>
      <td>2</td>
    </tr>
  </tbody>
</table>
</div>




```python
os.chdir("/Users/slipakanungo/Documents/Comparative_genomics/Python_users/")
```


```python
P2D11_users = pd.read_csv('P2D11_COG.csv')
P2D11_users
users_frequency1 = P2D11_users['P2D11_COG'].value_counts(ascending=True).sort_index()
users_frequency1
users_df1 = pd.DataFrame(users_frequency1)
users_df1
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>P2D11_COG</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>-</th>
      <td>74</td>
    </tr>
    <tr>
      <th>A</th>
      <td>1</td>
    </tr>
    <tr>
      <th>C</th>
      <td>55</td>
    </tr>
    <tr>
      <th>D</th>
      <td>39</td>
    </tr>
    <tr>
      <th>E</th>
      <td>158</td>
    </tr>
    <tr>
      <th>F</th>
      <td>85</td>
    </tr>
    <tr>
      <th>G</th>
      <td>102</td>
    </tr>
    <tr>
      <th>H</th>
      <td>56</td>
    </tr>
    <tr>
      <th>I</th>
      <td>35</td>
    </tr>
    <tr>
      <th>J</th>
      <td>164</td>
    </tr>
    <tr>
      <th>K</th>
      <td>144</td>
    </tr>
    <tr>
      <th>L</th>
      <td>135</td>
    </tr>
    <tr>
      <th>M</th>
      <td>127</td>
    </tr>
    <tr>
      <th>N</th>
      <td>12</td>
    </tr>
    <tr>
      <th>O</th>
      <td>55</td>
    </tr>
    <tr>
      <th>P</th>
      <td>113</td>
    </tr>
    <tr>
      <th>Q</th>
      <td>18</td>
    </tr>
    <tr>
      <th>S</th>
      <td>358</td>
    </tr>
    <tr>
      <th>T</th>
      <td>70</td>
    </tr>
    <tr>
      <th>U</th>
      <td>39</td>
    </tr>
    <tr>
      <th>V</th>
      <td>78</td>
    </tr>
  </tbody>
</table>
</div>




```python
P2E5_users = pd.read_csv("P2E5_COG.csv")
P2E5_users
users_frequency2 = P2E5_users["P2E5_COG"].value_counts(ascending=True).sort_index()
users_frequency2
users_df2 = pd.DataFrame(users_frequency2)
users_df2
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>P2E5_COG</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>-</th>
      <td>137</td>
    </tr>
    <tr>
      <th>C</th>
      <td>65</td>
    </tr>
    <tr>
      <th>D</th>
      <td>44</td>
    </tr>
    <tr>
      <th>E</th>
      <td>129</td>
    </tr>
    <tr>
      <th>F</th>
      <td>88</td>
    </tr>
    <tr>
      <th>G</th>
      <td>114</td>
    </tr>
    <tr>
      <th>H</th>
      <td>93</td>
    </tr>
    <tr>
      <th>I</th>
      <td>29</td>
    </tr>
    <tr>
      <th>J</th>
      <td>152</td>
    </tr>
    <tr>
      <th>K</th>
      <td>152</td>
    </tr>
    <tr>
      <th>L</th>
      <td>132</td>
    </tr>
    <tr>
      <th>M</th>
      <td>112</td>
    </tr>
    <tr>
      <th>N</th>
      <td>7</td>
    </tr>
    <tr>
      <th>O</th>
      <td>43</td>
    </tr>
    <tr>
      <th>P</th>
      <td>129</td>
    </tr>
    <tr>
      <th>Q</th>
      <td>14</td>
    </tr>
    <tr>
      <th>S</th>
      <td>384</td>
    </tr>
    <tr>
      <th>T</th>
      <td>50</td>
    </tr>
    <tr>
      <th>U</th>
      <td>23</td>
    </tr>
    <tr>
      <th>V</th>
      <td>51</td>
    </tr>
  </tbody>
</table>
</div>




```python
users_merge1 = pd.merge(users_df1,users_df2,left_index=True,right_index=True,how='left')
users_merge1
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>P2D11_COG</th>
      <th>P2E5_COG</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>-</th>
      <td>74</td>
      <td>137.0</td>
    </tr>
    <tr>
      <th>A</th>
      <td>1</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>C</th>
      <td>55</td>
      <td>65.0</td>
    </tr>
    <tr>
      <th>D</th>
      <td>39</td>
      <td>44.0</td>
    </tr>
    <tr>
      <th>E</th>
      <td>158</td>
      <td>129.0</td>
    </tr>
    <tr>
      <th>F</th>
      <td>85</td>
      <td>88.0</td>
    </tr>
    <tr>
      <th>G</th>
      <td>102</td>
      <td>114.0</td>
    </tr>
    <tr>
      <th>H</th>
      <td>56</td>
      <td>93.0</td>
    </tr>
    <tr>
      <th>I</th>
      <td>35</td>
      <td>29.0</td>
    </tr>
    <tr>
      <th>J</th>
      <td>164</td>
      <td>152.0</td>
    </tr>
    <tr>
      <th>K</th>
      <td>144</td>
      <td>152.0</td>
    </tr>
    <tr>
      <th>L</th>
      <td>135</td>
      <td>132.0</td>
    </tr>
    <tr>
      <th>M</th>
      <td>127</td>
      <td>112.0</td>
    </tr>
    <tr>
      <th>N</th>
      <td>12</td>
      <td>7.0</td>
    </tr>
    <tr>
      <th>O</th>
      <td>55</td>
      <td>43.0</td>
    </tr>
    <tr>
      <th>P</th>
      <td>113</td>
      <td>129.0</td>
    </tr>
    <tr>
      <th>Q</th>
      <td>18</td>
      <td>14.0</td>
    </tr>
    <tr>
      <th>S</th>
      <td>358</td>
      <td>384.0</td>
    </tr>
    <tr>
      <th>T</th>
      <td>70</td>
      <td>50.0</td>
    </tr>
    <tr>
      <th>U</th>
      <td>39</td>
      <td>23.0</td>
    </tr>
    <tr>
      <th>V</th>
      <td>78</td>
      <td>51.0</td>
    </tr>
  </tbody>
</table>
</div>




```python
P3B4_users = pd.read_csv("P3B4_COG.csv")
P3B4_users
users_frequency3 = P3B4_users["P3B4_COG"].value_counts(ascending=True).sort_index()
users_frequency3
users_df3 = pd.DataFrame(users_frequency3)
users_df3
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>P3B4_COG</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>-</th>
      <td>145</td>
    </tr>
    <tr>
      <th>A</th>
      <td>1</td>
    </tr>
    <tr>
      <th>C</th>
      <td>59</td>
    </tr>
    <tr>
      <th>D</th>
      <td>35</td>
    </tr>
    <tr>
      <th>E</th>
      <td>144</td>
    </tr>
    <tr>
      <th>F</th>
      <td>84</td>
    </tr>
    <tr>
      <th>G</th>
      <td>142</td>
    </tr>
    <tr>
      <th>H</th>
      <td>47</td>
    </tr>
    <tr>
      <th>I</th>
      <td>39</td>
    </tr>
    <tr>
      <th>J</th>
      <td>166</td>
    </tr>
    <tr>
      <th>K</th>
      <td>154</td>
    </tr>
    <tr>
      <th>L</th>
      <td>115</td>
    </tr>
    <tr>
      <th>M</th>
      <td>116</td>
    </tr>
    <tr>
      <th>N</th>
      <td>10</td>
    </tr>
    <tr>
      <th>O</th>
      <td>50</td>
    </tr>
    <tr>
      <th>P</th>
      <td>105</td>
    </tr>
    <tr>
      <th>Q</th>
      <td>21</td>
    </tr>
    <tr>
      <th>S</th>
      <td>376</td>
    </tr>
    <tr>
      <th>T</th>
      <td>53</td>
    </tr>
    <tr>
      <th>U</th>
      <td>40</td>
    </tr>
    <tr>
      <th>V</th>
      <td>69</td>
    </tr>
    <tr>
      <th>W</th>
      <td>4</td>
    </tr>
  </tbody>
</table>
</div>




```python
users_merge2 = pd.merge(users_merge1,users_df3,left_index=True,right_index=True,how='right')
users_merge2
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>P2D11_COG</th>
      <th>P2E5_COG</th>
      <th>P3B4_COG</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>-</th>
      <td>74.0</td>
      <td>137.0</td>
      <td>145</td>
    </tr>
    <tr>
      <th>A</th>
      <td>1.0</td>
      <td>NaN</td>
      <td>1</td>
    </tr>
    <tr>
      <th>C</th>
      <td>55.0</td>
      <td>65.0</td>
      <td>59</td>
    </tr>
    <tr>
      <th>D</th>
      <td>39.0</td>
      <td>44.0</td>
      <td>35</td>
    </tr>
    <tr>
      <th>E</th>
      <td>158.0</td>
      <td>129.0</td>
      <td>144</td>
    </tr>
    <tr>
      <th>F</th>
      <td>85.0</td>
      <td>88.0</td>
      <td>84</td>
    </tr>
    <tr>
      <th>G</th>
      <td>102.0</td>
      <td>114.0</td>
      <td>142</td>
    </tr>
    <tr>
      <th>H</th>
      <td>56.0</td>
      <td>93.0</td>
      <td>47</td>
    </tr>
    <tr>
      <th>I</th>
      <td>35.0</td>
      <td>29.0</td>
      <td>39</td>
    </tr>
    <tr>
      <th>J</th>
      <td>164.0</td>
      <td>152.0</td>
      <td>166</td>
    </tr>
    <tr>
      <th>K</th>
      <td>144.0</td>
      <td>152.0</td>
      <td>154</td>
    </tr>
    <tr>
      <th>L</th>
      <td>135.0</td>
      <td>132.0</td>
      <td>115</td>
    </tr>
    <tr>
      <th>M</th>
      <td>127.0</td>
      <td>112.0</td>
      <td>116</td>
    </tr>
    <tr>
      <th>N</th>
      <td>12.0</td>
      <td>7.0</td>
      <td>10</td>
    </tr>
    <tr>
      <th>O</th>
      <td>55.0</td>
      <td>43.0</td>
      <td>50</td>
    </tr>
    <tr>
      <th>P</th>
      <td>113.0</td>
      <td>129.0</td>
      <td>105</td>
    </tr>
    <tr>
      <th>Q</th>
      <td>18.0</td>
      <td>14.0</td>
      <td>21</td>
    </tr>
    <tr>
      <th>S</th>
      <td>358.0</td>
      <td>384.0</td>
      <td>376</td>
    </tr>
    <tr>
      <th>T</th>
      <td>70.0</td>
      <td>50.0</td>
      <td>53</td>
    </tr>
    <tr>
      <th>U</th>
      <td>39.0</td>
      <td>23.0</td>
      <td>40</td>
    </tr>
    <tr>
      <th>V</th>
      <td>78.0</td>
      <td>51.0</td>
      <td>69</td>
    </tr>
    <tr>
      <th>W</th>
      <td>NaN</td>
      <td>NaN</td>
      <td>4</td>
    </tr>
  </tbody>
</table>
</div>




```python
P3D4_users = pd.read_csv("P3D4_COG.csv")
P3D4_users
users_frequency4 = P3D4_users["P3D4_COG"].value_counts(ascending=True).sort_index()
users_frequency4
users_df4 = pd.DataFrame(users_frequency4)
users_df4
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>P3D4_COG</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>-</th>
      <td>135</td>
    </tr>
    <tr>
      <th>A</th>
      <td>1</td>
    </tr>
    <tr>
      <th>C</th>
      <td>67</td>
    </tr>
    <tr>
      <th>D</th>
      <td>36</td>
    </tr>
    <tr>
      <th>E</th>
      <td>160</td>
    </tr>
    <tr>
      <th>F</th>
      <td>87</td>
    </tr>
    <tr>
      <th>G</th>
      <td>135</td>
    </tr>
    <tr>
      <th>H</th>
      <td>73</td>
    </tr>
    <tr>
      <th>I</th>
      <td>37</td>
    </tr>
    <tr>
      <th>J</th>
      <td>168</td>
    </tr>
    <tr>
      <th>K</th>
      <td>157</td>
    </tr>
    <tr>
      <th>L</th>
      <td>110</td>
    </tr>
    <tr>
      <th>M</th>
      <td>112</td>
    </tr>
    <tr>
      <th>N</th>
      <td>9</td>
    </tr>
    <tr>
      <th>O</th>
      <td>48</td>
    </tr>
    <tr>
      <th>P</th>
      <td>116</td>
    </tr>
    <tr>
      <th>Q</th>
      <td>25</td>
    </tr>
    <tr>
      <th>S</th>
      <td>359</td>
    </tr>
    <tr>
      <th>T</th>
      <td>52</td>
    </tr>
    <tr>
      <th>U</th>
      <td>36</td>
    </tr>
    <tr>
      <th>V</th>
      <td>64</td>
    </tr>
    <tr>
      <th>W</th>
      <td>2</td>
    </tr>
  </tbody>
</table>
</div>




```python
users_merge3 = pd.merge(users_merge2,users_df4,left_index=True,right_index=True,how='left')
users_merge3
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>P2D11_COG</th>
      <th>P2E5_COG</th>
      <th>P3B4_COG</th>
      <th>P3D4_COG</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>-</th>
      <td>74.0</td>
      <td>137.0</td>
      <td>145</td>
      <td>135</td>
    </tr>
    <tr>
      <th>A</th>
      <td>1.0</td>
      <td>NaN</td>
      <td>1</td>
      <td>1</td>
    </tr>
    <tr>
      <th>C</th>
      <td>55.0</td>
      <td>65.0</td>
      <td>59</td>
      <td>67</td>
    </tr>
    <tr>
      <th>D</th>
      <td>39.0</td>
      <td>44.0</td>
      <td>35</td>
      <td>36</td>
    </tr>
    <tr>
      <th>E</th>
      <td>158.0</td>
      <td>129.0</td>
      <td>144</td>
      <td>160</td>
    </tr>
    <tr>
      <th>F</th>
      <td>85.0</td>
      <td>88.0</td>
      <td>84</td>
      <td>87</td>
    </tr>
    <tr>
      <th>G</th>
      <td>102.0</td>
      <td>114.0</td>
      <td>142</td>
      <td>135</td>
    </tr>
    <tr>
      <th>H</th>
      <td>56.0</td>
      <td>93.0</td>
      <td>47</td>
      <td>73</td>
    </tr>
    <tr>
      <th>I</th>
      <td>35.0</td>
      <td>29.0</td>
      <td>39</td>
      <td>37</td>
    </tr>
    <tr>
      <th>J</th>
      <td>164.0</td>
      <td>152.0</td>
      <td>166</td>
      <td>168</td>
    </tr>
    <tr>
      <th>K</th>
      <td>144.0</td>
      <td>152.0</td>
      <td>154</td>
      <td>157</td>
    </tr>
    <tr>
      <th>L</th>
      <td>135.0</td>
      <td>132.0</td>
      <td>115</td>
      <td>110</td>
    </tr>
    <tr>
      <th>M</th>
      <td>127.0</td>
      <td>112.0</td>
      <td>116</td>
      <td>112</td>
    </tr>
    <tr>
      <th>N</th>
      <td>12.0</td>
      <td>7.0</td>
      <td>10</td>
      <td>9</td>
    </tr>
    <tr>
      <th>O</th>
      <td>55.0</td>
      <td>43.0</td>
      <td>50</td>
      <td>48</td>
    </tr>
    <tr>
      <th>P</th>
      <td>113.0</td>
      <td>129.0</td>
      <td>105</td>
      <td>116</td>
    </tr>
    <tr>
      <th>Q</th>
      <td>18.0</td>
      <td>14.0</td>
      <td>21</td>
      <td>25</td>
    </tr>
    <tr>
      <th>S</th>
      <td>358.0</td>
      <td>384.0</td>
      <td>376</td>
      <td>359</td>
    </tr>
    <tr>
      <th>T</th>
      <td>70.0</td>
      <td>50.0</td>
      <td>53</td>
      <td>52</td>
    </tr>
    <tr>
      <th>U</th>
      <td>39.0</td>
      <td>23.0</td>
      <td>40</td>
      <td>36</td>
    </tr>
    <tr>
      <th>V</th>
      <td>78.0</td>
      <td>51.0</td>
      <td>69</td>
      <td>64</td>
    </tr>
    <tr>
      <th>W</th>
      <td>NaN</td>
      <td>NaN</td>
      <td>4</td>
      <td>2</td>
    </tr>
  </tbody>
</table>
</div>




```python
P3E5_users = pd.read_csv("P3E5_COG.csv")
P3E5_users
users_frequency5 = P3E5_users["P3E5_COG"].value_counts(ascending=True).sort_index()
users_frequency5
users_df5 = pd.DataFrame(users_frequency5)
users_df5
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>P3E5_COG</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>-</th>
      <td>117</td>
    </tr>
    <tr>
      <th>C</th>
      <td>60</td>
    </tr>
    <tr>
      <th>D</th>
      <td>36</td>
    </tr>
    <tr>
      <th>E</th>
      <td>92</td>
    </tr>
    <tr>
      <th>F</th>
      <td>78</td>
    </tr>
    <tr>
      <th>G</th>
      <td>145</td>
    </tr>
    <tr>
      <th>H</th>
      <td>59</td>
    </tr>
    <tr>
      <th>I</th>
      <td>37</td>
    </tr>
    <tr>
      <th>J</th>
      <td>144</td>
    </tr>
    <tr>
      <th>K</th>
      <td>163</td>
    </tr>
    <tr>
      <th>L</th>
      <td>129</td>
    </tr>
    <tr>
      <th>M</th>
      <td>103</td>
    </tr>
    <tr>
      <th>N</th>
      <td>8</td>
    </tr>
    <tr>
      <th>O</th>
      <td>40</td>
    </tr>
    <tr>
      <th>P</th>
      <td>95</td>
    </tr>
    <tr>
      <th>Q</th>
      <td>14</td>
    </tr>
    <tr>
      <th>S</th>
      <td>373</td>
    </tr>
    <tr>
      <th>T</th>
      <td>32</td>
    </tr>
    <tr>
      <th>U</th>
      <td>37</td>
    </tr>
    <tr>
      <th>V</th>
      <td>55</td>
    </tr>
    <tr>
      <th>W</th>
      <td>1</td>
    </tr>
  </tbody>
</table>
</div>




```python
users_merge4 = pd.merge(users_merge3,users_df5,left_index=True,right_index=True,how='left')
users_merge4
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>P2D11_COG</th>
      <th>P2E5_COG</th>
      <th>P3B4_COG</th>
      <th>P3D4_COG</th>
      <th>P3E5_COG</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>-</th>
      <td>74.0</td>
      <td>137.0</td>
      <td>145</td>
      <td>135</td>
      <td>117.0</td>
    </tr>
    <tr>
      <th>A</th>
      <td>1.0</td>
      <td>NaN</td>
      <td>1</td>
      <td>1</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>C</th>
      <td>55.0</td>
      <td>65.0</td>
      <td>59</td>
      <td>67</td>
      <td>60.0</td>
    </tr>
    <tr>
      <th>D</th>
      <td>39.0</td>
      <td>44.0</td>
      <td>35</td>
      <td>36</td>
      <td>36.0</td>
    </tr>
    <tr>
      <th>E</th>
      <td>158.0</td>
      <td>129.0</td>
      <td>144</td>
      <td>160</td>
      <td>92.0</td>
    </tr>
    <tr>
      <th>F</th>
      <td>85.0</td>
      <td>88.0</td>
      <td>84</td>
      <td>87</td>
      <td>78.0</td>
    </tr>
    <tr>
      <th>G</th>
      <td>102.0</td>
      <td>114.0</td>
      <td>142</td>
      <td>135</td>
      <td>145.0</td>
    </tr>
    <tr>
      <th>H</th>
      <td>56.0</td>
      <td>93.0</td>
      <td>47</td>
      <td>73</td>
      <td>59.0</td>
    </tr>
    <tr>
      <th>I</th>
      <td>35.0</td>
      <td>29.0</td>
      <td>39</td>
      <td>37</td>
      <td>37.0</td>
    </tr>
    <tr>
      <th>J</th>
      <td>164.0</td>
      <td>152.0</td>
      <td>166</td>
      <td>168</td>
      <td>144.0</td>
    </tr>
    <tr>
      <th>K</th>
      <td>144.0</td>
      <td>152.0</td>
      <td>154</td>
      <td>157</td>
      <td>163.0</td>
    </tr>
    <tr>
      <th>L</th>
      <td>135.0</td>
      <td>132.0</td>
      <td>115</td>
      <td>110</td>
      <td>129.0</td>
    </tr>
    <tr>
      <th>M</th>
      <td>127.0</td>
      <td>112.0</td>
      <td>116</td>
      <td>112</td>
      <td>103.0</td>
    </tr>
    <tr>
      <th>N</th>
      <td>12.0</td>
      <td>7.0</td>
      <td>10</td>
      <td>9</td>
      <td>8.0</td>
    </tr>
    <tr>
      <th>O</th>
      <td>55.0</td>
      <td>43.0</td>
      <td>50</td>
      <td>48</td>
      <td>40.0</td>
    </tr>
    <tr>
      <th>P</th>
      <td>113.0</td>
      <td>129.0</td>
      <td>105</td>
      <td>116</td>
      <td>95.0</td>
    </tr>
    <tr>
      <th>Q</th>
      <td>18.0</td>
      <td>14.0</td>
      <td>21</td>
      <td>25</td>
      <td>14.0</td>
    </tr>
    <tr>
      <th>S</th>
      <td>358.0</td>
      <td>384.0</td>
      <td>376</td>
      <td>359</td>
      <td>373.0</td>
    </tr>
    <tr>
      <th>T</th>
      <td>70.0</td>
      <td>50.0</td>
      <td>53</td>
      <td>52</td>
      <td>32.0</td>
    </tr>
    <tr>
      <th>U</th>
      <td>39.0</td>
      <td>23.0</td>
      <td>40</td>
      <td>36</td>
      <td>37.0</td>
    </tr>
    <tr>
      <th>V</th>
      <td>78.0</td>
      <td>51.0</td>
      <td>69</td>
      <td>64</td>
      <td>55.0</td>
    </tr>
    <tr>
      <th>W</th>
      <td>NaN</td>
      <td>NaN</td>
      <td>4</td>
      <td>2</td>
      <td>1.0</td>
    </tr>
  </tbody>
</table>
</div>




```python
T369_3_users = pd.read_csv("T369_3_COG.csv")
T369_3_users
users_frequency6 = T369_3_users["T369_3_COG"].value_counts(ascending=True).sort_index()
users_frequency6
users_df6 = pd.DataFrame(users_frequency6)
users_df6
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>T369_3_COG</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>-</th>
      <td>131</td>
    </tr>
    <tr>
      <th>A</th>
      <td>1</td>
    </tr>
    <tr>
      <th>C</th>
      <td>61</td>
    </tr>
    <tr>
      <th>D</th>
      <td>34</td>
    </tr>
    <tr>
      <th>E</th>
      <td>145</td>
    </tr>
    <tr>
      <th>F</th>
      <td>83</td>
    </tr>
    <tr>
      <th>G</th>
      <td>125</td>
    </tr>
    <tr>
      <th>H</th>
      <td>55</td>
    </tr>
    <tr>
      <th>I</th>
      <td>37</td>
    </tr>
    <tr>
      <th>J</th>
      <td>164</td>
    </tr>
    <tr>
      <th>K</th>
      <td>146</td>
    </tr>
    <tr>
      <th>L</th>
      <td>103</td>
    </tr>
    <tr>
      <th>M</th>
      <td>109</td>
    </tr>
    <tr>
      <th>N</th>
      <td>8</td>
    </tr>
    <tr>
      <th>O</th>
      <td>49</td>
    </tr>
    <tr>
      <th>P</th>
      <td>99</td>
    </tr>
    <tr>
      <th>Q</th>
      <td>22</td>
    </tr>
    <tr>
      <th>S</th>
      <td>352</td>
    </tr>
    <tr>
      <th>T</th>
      <td>51</td>
    </tr>
    <tr>
      <th>U</th>
      <td>36</td>
    </tr>
    <tr>
      <th>V</th>
      <td>51</td>
    </tr>
    <tr>
      <th>W</th>
      <td>1</td>
    </tr>
  </tbody>
</table>
</div>




```python
users_merge5 = pd.merge(users_merge4,users_df6,left_index=True,right_index=True,how='left')
users_merge5
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>P2D11_COG</th>
      <th>P2E5_COG</th>
      <th>P3B4_COG</th>
      <th>P3D4_COG</th>
      <th>P3E5_COG</th>
      <th>T369_3_COG</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>-</th>
      <td>74.0</td>
      <td>137.0</td>
      <td>145</td>
      <td>135</td>
      <td>117.0</td>
      <td>131</td>
    </tr>
    <tr>
      <th>A</th>
      <td>1.0</td>
      <td>NaN</td>
      <td>1</td>
      <td>1</td>
      <td>NaN</td>
      <td>1</td>
    </tr>
    <tr>
      <th>C</th>
      <td>55.0</td>
      <td>65.0</td>
      <td>59</td>
      <td>67</td>
      <td>60.0</td>
      <td>61</td>
    </tr>
    <tr>
      <th>D</th>
      <td>39.0</td>
      <td>44.0</td>
      <td>35</td>
      <td>36</td>
      <td>36.0</td>
      <td>34</td>
    </tr>
    <tr>
      <th>E</th>
      <td>158.0</td>
      <td>129.0</td>
      <td>144</td>
      <td>160</td>
      <td>92.0</td>
      <td>145</td>
    </tr>
    <tr>
      <th>F</th>
      <td>85.0</td>
      <td>88.0</td>
      <td>84</td>
      <td>87</td>
      <td>78.0</td>
      <td>83</td>
    </tr>
    <tr>
      <th>G</th>
      <td>102.0</td>
      <td>114.0</td>
      <td>142</td>
      <td>135</td>
      <td>145.0</td>
      <td>125</td>
    </tr>
    <tr>
      <th>H</th>
      <td>56.0</td>
      <td>93.0</td>
      <td>47</td>
      <td>73</td>
      <td>59.0</td>
      <td>55</td>
    </tr>
    <tr>
      <th>I</th>
      <td>35.0</td>
      <td>29.0</td>
      <td>39</td>
      <td>37</td>
      <td>37.0</td>
      <td>37</td>
    </tr>
    <tr>
      <th>J</th>
      <td>164.0</td>
      <td>152.0</td>
      <td>166</td>
      <td>168</td>
      <td>144.0</td>
      <td>164</td>
    </tr>
    <tr>
      <th>K</th>
      <td>144.0</td>
      <td>152.0</td>
      <td>154</td>
      <td>157</td>
      <td>163.0</td>
      <td>146</td>
    </tr>
    <tr>
      <th>L</th>
      <td>135.0</td>
      <td>132.0</td>
      <td>115</td>
      <td>110</td>
      <td>129.0</td>
      <td>103</td>
    </tr>
    <tr>
      <th>M</th>
      <td>127.0</td>
      <td>112.0</td>
      <td>116</td>
      <td>112</td>
      <td>103.0</td>
      <td>109</td>
    </tr>
    <tr>
      <th>N</th>
      <td>12.0</td>
      <td>7.0</td>
      <td>10</td>
      <td>9</td>
      <td>8.0</td>
      <td>8</td>
    </tr>
    <tr>
      <th>O</th>
      <td>55.0</td>
      <td>43.0</td>
      <td>50</td>
      <td>48</td>
      <td>40.0</td>
      <td>49</td>
    </tr>
    <tr>
      <th>P</th>
      <td>113.0</td>
      <td>129.0</td>
      <td>105</td>
      <td>116</td>
      <td>95.0</td>
      <td>99</td>
    </tr>
    <tr>
      <th>Q</th>
      <td>18.0</td>
      <td>14.0</td>
      <td>21</td>
      <td>25</td>
      <td>14.0</td>
      <td>22</td>
    </tr>
    <tr>
      <th>S</th>
      <td>358.0</td>
      <td>384.0</td>
      <td>376</td>
      <td>359</td>
      <td>373.0</td>
      <td>352</td>
    </tr>
    <tr>
      <th>T</th>
      <td>70.0</td>
      <td>50.0</td>
      <td>53</td>
      <td>52</td>
      <td>32.0</td>
      <td>51</td>
    </tr>
    <tr>
      <th>U</th>
      <td>39.0</td>
      <td>23.0</td>
      <td>40</td>
      <td>36</td>
      <td>37.0</td>
      <td>36</td>
    </tr>
    <tr>
      <th>V</th>
      <td>78.0</td>
      <td>51.0</td>
      <td>69</td>
      <td>64</td>
      <td>55.0</td>
      <td>51</td>
    </tr>
    <tr>
      <th>W</th>
      <td>NaN</td>
      <td>NaN</td>
      <td>4</td>
      <td>2</td>
      <td>1.0</td>
      <td>1</td>
    </tr>
  </tbody>
</table>
</div>




```python
strep_core = pd.read_csv('strep_core_COG.csv')
strep_core
users_frequency7 = strep_core['strep_core_COG'].value_counts(ascending=True).sort_index()
users_frequency7
users_df7 = pd.DataFrame(users_frequency7)
users_df7
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>strep_core_COG</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>-</th>
      <td>6</td>
    </tr>
    <tr>
      <th>A</th>
      <td>1</td>
    </tr>
    <tr>
      <th>C</th>
      <td>35</td>
    </tr>
    <tr>
      <th>D</th>
      <td>28</td>
    </tr>
    <tr>
      <th>E</th>
      <td>63</td>
    </tr>
    <tr>
      <th>F</th>
      <td>66</td>
    </tr>
    <tr>
      <th>G</th>
      <td>51</td>
    </tr>
    <tr>
      <th>H</th>
      <td>29</td>
    </tr>
    <tr>
      <th>I</th>
      <td>28</td>
    </tr>
    <tr>
      <th>J</th>
      <td>152</td>
    </tr>
    <tr>
      <th>K</th>
      <td>75</td>
    </tr>
    <tr>
      <th>L</th>
      <td>82</td>
    </tr>
    <tr>
      <th>M</th>
      <td>56</td>
    </tr>
    <tr>
      <th>N</th>
      <td>6</td>
    </tr>
    <tr>
      <th>O</th>
      <td>36</td>
    </tr>
    <tr>
      <th>P</th>
      <td>57</td>
    </tr>
    <tr>
      <th>Q</th>
      <td>9</td>
    </tr>
    <tr>
      <th>S</th>
      <td>160</td>
    </tr>
    <tr>
      <th>T</th>
      <td>26</td>
    </tr>
    <tr>
      <th>U</th>
      <td>22</td>
    </tr>
    <tr>
      <th>V</th>
      <td>27</td>
    </tr>
  </tbody>
</table>
</div>




```python
users_merge6 = pd.merge(users_merge5,users_df7,left_index=True,right_index=True,how='left')
users_merge6
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>P2D11_COG</th>
      <th>P2E5_COG</th>
      <th>P3B4_COG</th>
      <th>P3D4_COG</th>
      <th>P3E5_COG</th>
      <th>T369_3_COG</th>
      <th>strep_core_COG</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>-</th>
      <td>74.0</td>
      <td>137.0</td>
      <td>145</td>
      <td>135</td>
      <td>117.0</td>
      <td>131</td>
      <td>6.0</td>
    </tr>
    <tr>
      <th>A</th>
      <td>1.0</td>
      <td>NaN</td>
      <td>1</td>
      <td>1</td>
      <td>NaN</td>
      <td>1</td>
      <td>1.0</td>
    </tr>
    <tr>
      <th>C</th>
      <td>55.0</td>
      <td>65.0</td>
      <td>59</td>
      <td>67</td>
      <td>60.0</td>
      <td>61</td>
      <td>35.0</td>
    </tr>
    <tr>
      <th>D</th>
      <td>39.0</td>
      <td>44.0</td>
      <td>35</td>
      <td>36</td>
      <td>36.0</td>
      <td>34</td>
      <td>28.0</td>
    </tr>
    <tr>
      <th>E</th>
      <td>158.0</td>
      <td>129.0</td>
      <td>144</td>
      <td>160</td>
      <td>92.0</td>
      <td>145</td>
      <td>63.0</td>
    </tr>
    <tr>
      <th>F</th>
      <td>85.0</td>
      <td>88.0</td>
      <td>84</td>
      <td>87</td>
      <td>78.0</td>
      <td>83</td>
      <td>66.0</td>
    </tr>
    <tr>
      <th>G</th>
      <td>102.0</td>
      <td>114.0</td>
      <td>142</td>
      <td>135</td>
      <td>145.0</td>
      <td>125</td>
      <td>51.0</td>
    </tr>
    <tr>
      <th>H</th>
      <td>56.0</td>
      <td>93.0</td>
      <td>47</td>
      <td>73</td>
      <td>59.0</td>
      <td>55</td>
      <td>29.0</td>
    </tr>
    <tr>
      <th>I</th>
      <td>35.0</td>
      <td>29.0</td>
      <td>39</td>
      <td>37</td>
      <td>37.0</td>
      <td>37</td>
      <td>28.0</td>
    </tr>
    <tr>
      <th>J</th>
      <td>164.0</td>
      <td>152.0</td>
      <td>166</td>
      <td>168</td>
      <td>144.0</td>
      <td>164</td>
      <td>152.0</td>
    </tr>
    <tr>
      <th>K</th>
      <td>144.0</td>
      <td>152.0</td>
      <td>154</td>
      <td>157</td>
      <td>163.0</td>
      <td>146</td>
      <td>75.0</td>
    </tr>
    <tr>
      <th>L</th>
      <td>135.0</td>
      <td>132.0</td>
      <td>115</td>
      <td>110</td>
      <td>129.0</td>
      <td>103</td>
      <td>82.0</td>
    </tr>
    <tr>
      <th>M</th>
      <td>127.0</td>
      <td>112.0</td>
      <td>116</td>
      <td>112</td>
      <td>103.0</td>
      <td>109</td>
      <td>56.0</td>
    </tr>
    <tr>
      <th>N</th>
      <td>12.0</td>
      <td>7.0</td>
      <td>10</td>
      <td>9</td>
      <td>8.0</td>
      <td>8</td>
      <td>6.0</td>
    </tr>
    <tr>
      <th>O</th>
      <td>55.0</td>
      <td>43.0</td>
      <td>50</td>
      <td>48</td>
      <td>40.0</td>
      <td>49</td>
      <td>36.0</td>
    </tr>
    <tr>
      <th>P</th>
      <td>113.0</td>
      <td>129.0</td>
      <td>105</td>
      <td>116</td>
      <td>95.0</td>
      <td>99</td>
      <td>57.0</td>
    </tr>
    <tr>
      <th>Q</th>
      <td>18.0</td>
      <td>14.0</td>
      <td>21</td>
      <td>25</td>
      <td>14.0</td>
      <td>22</td>
      <td>9.0</td>
    </tr>
    <tr>
      <th>S</th>
      <td>358.0</td>
      <td>384.0</td>
      <td>376</td>
      <td>359</td>
      <td>373.0</td>
      <td>352</td>
      <td>160.0</td>
    </tr>
    <tr>
      <th>T</th>
      <td>70.0</td>
      <td>50.0</td>
      <td>53</td>
      <td>52</td>
      <td>32.0</td>
      <td>51</td>
      <td>26.0</td>
    </tr>
    <tr>
      <th>U</th>
      <td>39.0</td>
      <td>23.0</td>
      <td>40</td>
      <td>36</td>
      <td>37.0</td>
      <td>36</td>
      <td>22.0</td>
    </tr>
    <tr>
      <th>V</th>
      <td>78.0</td>
      <td>51.0</td>
      <td>69</td>
      <td>64</td>
      <td>55.0</td>
      <td>51</td>
      <td>27.0</td>
    </tr>
    <tr>
      <th>W</th>
      <td>NaN</td>
      <td>NaN</td>
      <td>4</td>
      <td>2</td>
      <td>1.0</td>
      <td>1</td>
      <td>NaN</td>
    </tr>
  </tbody>
</table>
</div>




```python
users_merge6.fillna(0)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>P2D11_COG</th>
      <th>P2E5_COG</th>
      <th>P3B4_COG</th>
      <th>P3D4_COG</th>
      <th>P3E5_COG</th>
      <th>T369_3_COG</th>
      <th>strep_core_COG</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>-</th>
      <td>74.0</td>
      <td>137.0</td>
      <td>145</td>
      <td>135</td>
      <td>117.0</td>
      <td>131</td>
      <td>6.0</td>
    </tr>
    <tr>
      <th>A</th>
      <td>1.0</td>
      <td>0.0</td>
      <td>1</td>
      <td>1</td>
      <td>0.0</td>
      <td>1</td>
      <td>1.0</td>
    </tr>
    <tr>
      <th>C</th>
      <td>55.0</td>
      <td>65.0</td>
      <td>59</td>
      <td>67</td>
      <td>60.0</td>
      <td>61</td>
      <td>35.0</td>
    </tr>
    <tr>
      <th>D</th>
      <td>39.0</td>
      <td>44.0</td>
      <td>35</td>
      <td>36</td>
      <td>36.0</td>
      <td>34</td>
      <td>28.0</td>
    </tr>
    <tr>
      <th>E</th>
      <td>158.0</td>
      <td>129.0</td>
      <td>144</td>
      <td>160</td>
      <td>92.0</td>
      <td>145</td>
      <td>63.0</td>
    </tr>
    <tr>
      <th>F</th>
      <td>85.0</td>
      <td>88.0</td>
      <td>84</td>
      <td>87</td>
      <td>78.0</td>
      <td>83</td>
      <td>66.0</td>
    </tr>
    <tr>
      <th>G</th>
      <td>102.0</td>
      <td>114.0</td>
      <td>142</td>
      <td>135</td>
      <td>145.0</td>
      <td>125</td>
      <td>51.0</td>
    </tr>
    <tr>
      <th>H</th>
      <td>56.0</td>
      <td>93.0</td>
      <td>47</td>
      <td>73</td>
      <td>59.0</td>
      <td>55</td>
      <td>29.0</td>
    </tr>
    <tr>
      <th>I</th>
      <td>35.0</td>
      <td>29.0</td>
      <td>39</td>
      <td>37</td>
      <td>37.0</td>
      <td>37</td>
      <td>28.0</td>
    </tr>
    <tr>
      <th>J</th>
      <td>164.0</td>
      <td>152.0</td>
      <td>166</td>
      <td>168</td>
      <td>144.0</td>
      <td>164</td>
      <td>152.0</td>
    </tr>
    <tr>
      <th>K</th>
      <td>144.0</td>
      <td>152.0</td>
      <td>154</td>
      <td>157</td>
      <td>163.0</td>
      <td>146</td>
      <td>75.0</td>
    </tr>
    <tr>
      <th>L</th>
      <td>135.0</td>
      <td>132.0</td>
      <td>115</td>
      <td>110</td>
      <td>129.0</td>
      <td>103</td>
      <td>82.0</td>
    </tr>
    <tr>
      <th>M</th>
      <td>127.0</td>
      <td>112.0</td>
      <td>116</td>
      <td>112</td>
      <td>103.0</td>
      <td>109</td>
      <td>56.0</td>
    </tr>
    <tr>
      <th>N</th>
      <td>12.0</td>
      <td>7.0</td>
      <td>10</td>
      <td>9</td>
      <td>8.0</td>
      <td>8</td>
      <td>6.0</td>
    </tr>
    <tr>
      <th>O</th>
      <td>55.0</td>
      <td>43.0</td>
      <td>50</td>
      <td>48</td>
      <td>40.0</td>
      <td>49</td>
      <td>36.0</td>
    </tr>
    <tr>
      <th>P</th>
      <td>113.0</td>
      <td>129.0</td>
      <td>105</td>
      <td>116</td>
      <td>95.0</td>
      <td>99</td>
      <td>57.0</td>
    </tr>
    <tr>
      <th>Q</th>
      <td>18.0</td>
      <td>14.0</td>
      <td>21</td>
      <td>25</td>
      <td>14.0</td>
      <td>22</td>
      <td>9.0</td>
    </tr>
    <tr>
      <th>S</th>
      <td>358.0</td>
      <td>384.0</td>
      <td>376</td>
      <td>359</td>
      <td>373.0</td>
      <td>352</td>
      <td>160.0</td>
    </tr>
    <tr>
      <th>T</th>
      <td>70.0</td>
      <td>50.0</td>
      <td>53</td>
      <td>52</td>
      <td>32.0</td>
      <td>51</td>
      <td>26.0</td>
    </tr>
    <tr>
      <th>U</th>
      <td>39.0</td>
      <td>23.0</td>
      <td>40</td>
      <td>36</td>
      <td>37.0</td>
      <td>36</td>
      <td>22.0</td>
    </tr>
    <tr>
      <th>V</th>
      <td>78.0</td>
      <td>51.0</td>
      <td>69</td>
      <td>64</td>
      <td>55.0</td>
      <td>51</td>
      <td>27.0</td>
    </tr>
    <tr>
      <th>W</th>
      <td>0.0</td>
      <td>0.0</td>
      <td>4</td>
      <td>2</td>
      <td>1.0</td>
      <td>1</td>
      <td>0.0</td>
    </tr>
  </tbody>
</table>
</div>




```python
users_merge6.to_csv('COG_users.csv')
```


```python
plt.figure(figsize=(9,9))
plt.xlabel('users', size = 15)
plt.ylabel('COG', size = 15)
sns.heatmap(users_merge6, cmap = "rocket_r")
plt.show()
```


    
![png](output_35_0.png)
    

