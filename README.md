# R-for-Data-Scientists
Learn the fundamentals of R programming, from reading and writing data to customizing visualizations and performing predictive analysis on data.

# Table of Content
1. Functions in R
2. OOPs Concept in R
3. Initialize Function and Active Bindings
4. R6 and Multiple Level Inheritance
5. Data Manipulation and its Problems
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


