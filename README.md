# R-for-Data-Scientists
Learn the fundamentals of R programming, from reading and writing data to customizing visualizations and performing predictive analysis on data.

# Table of Content
1. Functions in R
2. OOPs Concept in R
3. Initialize Function and Active Bindings
4. R6 and Multiple Level Inheritance
5. Data Manipulation
6. Summarise Function and Piping
7. Joining Tables and Data Manipulation with data.table
8. Visualization and Components of Graphics
9. Geometric Options
10. Faceting & WordCloud Module
11. Understanding String Presentations in R
12. Strings Functions
13. Text Mining
14. Word Stemming and Stem Completion
15. SHINY R (Building an Application)


# 1. Function in R
In order to perform a particular task, we make use of the function, which is a piece of code in R.  In R, these functions are referred to as the objects as they facilitate the similar way of functioning like other types of objects.

#### 1. Vector function 
#### 2. Matrix function 
#### 3. Factor function 
#### 4. Recursive function

### 1. Vector function in R

#### Before understanding the Vector Functions let's we discuss Vector First:
Vector is a basic data structure in R. It contains element of the same type. The data types can be logical, integer, double, character, complex or raw. A vector's type can be checked with the typeof() function. Another important property of a vector is its length.

#### There are several types of vectors, such as :

1) Numeric vectors: containing all kind of numbers.
2) Integer vectors: containing integer values. (An integer vector is a special kind of numeric vector.)
3) Logical vectors: containing logical values (TRUE and/or FALSE)
4) Character vectors: containing text
5) Datetime vectors: containing dates and times in different formats
6) Factors: a special type of vector to work with categories.

#### Vector Function:
Functions that we use in R vectors are known as the vector functions.

Here we are going to discuss all these functions of the R vector in detail:

##### 1. rep() Function
rep() is used for replicating or repeating the values in x. The two common cases that exhibit faster-simplified versions are rep.int and rep_len. Furthermore, these functions are not generic.

##### 2. seq() Function
It generates regular sequences. The seq function is standard generic in nature that also has a default method. seq.int poses a few restrictions due to its primitiveness but it is also much faster. The two common cases that exhibit fast primitives are seq_along and seq_len.

##### 3. any() Function
It takes the set of vectors and returns a set of logical vectors, in which at least one of the value is true.

##### 4. all() Function
It takes the set of vectors and returns a set of logical vectors, in which all of the values are TRUE.


### 2. Matrix function in R
#### Matrix or Matrices
A matrix is a collection of data elements arranged in a two-dimensional rectangular layout. In other words, we can say matrix is a collection of numbers arranged into a fixed number of rows and columns.

The numbers present in the matrix are real numbers. We then carry out the memory replication of the matrix using  the matrix function. 

Hence, the data elements must be of the same basic type. Matrices functions are those functions which we use in matrices.

There are two types of matrix function in R:
* apply()
* sapply()

### 3. Factor function in R

R factor is used to store categorical data as levels. It can store both character and integer types of data. These factors are created with the help of factor() functions, by taking a vector as input.

R factors are variables. It takes a limited number of different values. Hence, those variables are often known as categorical variables. In order to categorise the data and store it on multiple levels, we use the data object called R factor. They can store both strings and integers. They are also useful in the columns which have a limited number of unique values.


### 4. Recursion in R
#### What is Recursion?
In a recursive function (recursion), function calls itself. In this, to solve the problems, we break the programs into smaller sub-programs.

##### What is Recursive Function in R?
Recursive functions call themselves. They break down the problem into the smallest possible components. The function() calls itself within the original function() on each of the smaller components. After this, the results will be put together to solve the original problem.

##### Key Features of R Recursion
Some major features of the R recursive function are:

* The use of recursion, often, makes the code shorter and it also looks clean.
* It is a simple solution for a few cases.
* It expresses in a function that calls itself.


# 2. OOPs concept in R
Yes, it’s true! As compared to other statistical languages, R programming language has strong object-oriented programming facilities. This is because R has derived from S programming language. Though R is proficient in developing fully object-oriented programs, it’s approach to OOP is based on generic functions instead of class hierarchies. R consists of three OOP systems S3, S4 and R5. These features are based on the concepts of classes and methods.

# 3. Initialize Function and Active Bindings

Active bindings look like fields, but each time they are accessed, they call a function. They are always publicly visible.

# 4. R6 and Multiple Level Inheritance

### R6 classes

R6 classes are similar to R’s standard reference classes, but are lighter weight, and avoid some issues that come along with using S4 classes (R’s reference classes are based on S4). For more information about speed and memory footprint, see the Performance vignette.

Unlike many objects in R, instances (objects) of R6 classes have reference semantics. R6 classes also support:

* public and private methods
* active bindings
* inheritance (superclasses) which works across packages

#### Why the name R6? 
When R’s reference classes were introduced, some users, following the names of R’s existing class systems S3 and S4, called the new class system R5 in jest. Although reference classes are not actually called R5, the name of this package and its classes takes inspiration from that name.

#### Active bindings
Active bindings look like fields, but each time they are accessed, they call a function. They are always publicly visible.

#### Inheritance
One R6 class can inherit from another. In other words, you can have super- and sub-classes.

Subclasses can have additional methods, and they can also have methods that override the superclass methods. In this example of a queue that retains its history, we’ll add a show() method and override the remove() method:


# 5. Data Manipulation

### What is Data Manipulation ?
If you are still confused with this ‘term’, let me explain it to you. Data Manipulation is a loosely used term with ‘Data Exploration’. It involves ‘manipulating’ data using available set of variables. This is done to enhance accuracy and precision associated with data.

#### Different Ways to Manipulate / Treat Data:
There is no right or wrong way in manipulating data, as long as you understand the data and have taken the necessary actions by the end of the exercise. However, here are a few broad ways in which people try and approach data manipulation. Here are they:

* Usually, beginners on R find themselves comfortable manipulating data using inbuilt base R functions. This is a  good first step, but is often repetitive and time consuming.  Hence, it is a less efficient way to solve the problem.

* Use of packages for data manipulation. CRAN has more than 10000 packages available today. In simple words, these packages are nothing but a collection of pre-written commonly used pieces of codes. They help you perform the repetitive tasks fasts, reduce errors in coding and take help of code written by experts (across the open source eco-system for R) to make your code more efficient. This is usually the most common way of performing data manipulation.

* Use of ML algorithms for data manipulation. You can use tree based boosting algorithms to take care of missing data & outliers. While these are definitely less time consuming, these approaches typically leave you wanting for a better understanding of data at the end of it.

#### List of Packages
For better understanding, I’ve also demonstrated their usage by undertaking commonly used operations. Below is the list of packages discussed in this article:

* dplyr
* data.table
* ggplot2
* reshape2
* readr
* tidyr
* lubridate

# 8. Visualization and Components of Graphics

The graphics package is used for plotting base graphs like scatter plot, box plot etc. A complete list of functions with help pages can be obtained by typing : library(help = "graphics").

#### 1. The plot() function
The plot() function is a kind of a generic function for plotting of R objects.

#### 2.Barplot
In a bar plot, data is represented in the form of rectangular bars and the length of the bar is proportional to the value of the variable or column in the dataset. Both horizontal, as well as a vertical bar chart, can be generated by tweaking the horiz parameter.

#### 3.Histogram
A histogram is quite similar to a bar chart except that it groups values into continuous ranges. A histogram represents the frequencies of values of a variable bucketed into ranges.

#### 4.Boxplot
We have seen how the summary() command in R can display the descriptive statistics for every variable in the dataset. Boxplot does the same albeit graphically in the form of quartiles. It is again very straightforward to plot a boxplot in R.

#### 5. Grid of Charts
There is a very interesting feature in R which enables us to plot multiple charts at once. This comes in very handy during the EDA since the need to plot multiple graphs one by one is eliminated.
For drawing a grid, the first argument should specify certain attributes like the margin of the grid(
mar), no of rows and columns(mfrow), whether a border is to be included(bty) and position of the labels(las: 1 for horizontal, las: 0 for vertical).

### Visualisation libraries in R

#### 1. Lattice Graphs
Lattice package is essentially an improvement upon the R Graphics package and is used to visualize multivariate data. Lattice enables the use of trellis graphs. Trellis graphs exhibit the relationship between variables which are dependent on one or more variables. Let us start by installing and loading the package.

Now let us see how we can use the lattice package to create some basic plots in R.
* Kernel density plots: 
It is very straightforward to use the lattice library. One simply needs to plug in the columns for which the plot is desired.

* scatterplot matrix: 
Scatterplots depicting a combination of two factors

#### 2. ggplot2
The ggplot2 package is one of the most widely used visualisation packages in R. It enables the users to create sophisticated visualisations with little code using the Grammar of Graphics. The Grammar of Graphics is a general scheme for data visualization which breaks up graphs into semantic components such as scales and layers.
The popularity of ggplot2 has increased tremendously in recent years since it makes it possible to create graphs that contain both univariate and multivariate data in a very simple manner.

Let us create a few plots to understand the capability of ggplot2
* Scatter Plots
    - Styling scatter plots by factor
    - Styling scatter plots by size
    - Different symbols for different sizes

#### 3. Plotly
Plotly is an R package that creates interactive web-based graphs via the open source JavaScript graphing library plotly.js. It can easily translate the ‘ggplot2’ graphs to web-based versions also.
Let us now see how we can utilise plotly to create interactive visualisations. We will be working with the same mtcars dataset that used in the lattice graphs demonstration.
* Basic Scatter Plot
* Styled Scatter Plot
* Markers and Lines
* Adding Color and Size Mapping


    
