# ==================== Function in R ============================================
# You can use the "rep() function" in several ways if you want to repeat the complete vector.
# For example:
  
#a) To repeat the vector c(0, 0, 7) three times, use this code:
rep(c(1, 2, 3), times = 4)


# b) We can also repeat every value by specifying each argument, like this:
rep(c(1, 2, 3), each = 2)

# c) For each value, we can tell R how often it has to repeat:
rep(c(1, 2), times = c(4,3))

# d) In seq, we use the argument, length.out to define R. It will repeat the vector until it reaches the specified length, even if the last repetition is incomplete.
rep(1:3,length.out=9)


##==========seq() Function : How to create vectors in R

# a) In order to use integers to create vectors:
# In R, a vector with numbers 4.5 to 3.0 in steps of 0.5.

seq(from = 2.5, to = 1.0, by = -0.5)

# You can make a vector of nine values going from -2.7 to 1.3 like this:
seq(from = -2.7, to = 1.3, length.out = 9)

##=============any() Function : 

x <- 1:10
any(x > 5)

any(x > 88)

## =============R all() Function:
x <- 1:10

all(x > 88)

all(x > 0)


#============================== Matrix function in R====================================

matrix(1:9, byrow = TRUE, nrow = 3)

# Create Matrix
my.matrix <- matrix(c(1:5, 6:10, 11:15), nrow = 5, ncol = 3)
my.matrix

# apply()
#Using apply to find row sums
apply(my.matrx, 1, sum)

# Now, we will find how many data points (n) are in each column of m by using columns, MARGIN = 2. Thus, we can use the length function to do this.
apply(my.matrx, 2, length)


# sapply() function:
# sapply() function applies a function to margins of an array or matrix.

BOD # R built-in dataset, Biochemical Oxygen Demand

# Sum up for each row:
sapply(BOD, sum)

#Multiply all values by 10:
sapply(BOD,function(x) 10 * x)

# Used for array, margin set to 1:
x <- array(1:9)
sapply(x,function(x) x * 10)

# Two dimension array, the margin can be 1 or 2:
x <- array(1:9,c(3,3))
x

sapply(x,function(x) x * 10)

# sapply: returns a vector, matrix or an array
sapply(c(1:3), function(x) x^2)



#=================== Factor Function in R ==========================================
# How to Create an R Factor
directions <- c("North", "North", "West", "South")

factor(directions, levels= c("North", "East", "South", "West"), exclude = "North")

compass <- c("East","West","East","North")
data <- factor(compass)
data


#=========================Recursive Function in R===========================================
# Finding factorial of a number using the recursive function.
recur_factorial <- function(n) {
  if(n <= 1) {
    return(1)
  } else {
    return(n * recur_factorial(n-1))
  }
}
recur_factorial(5)


#Finding the sum of natural numbers using the recursive function.
calculate_sum <- function(n) {
  if(n <= 1) {
    return(n)
  } else {
    return(n + calculate_sum(n-1))
  }
}
calculate_sum(5)



#Finding sum of series 1²+2²+3²+...+n² using the recursive function.

Sum.Series <- function(number)
{
  if(number == 0) {
    return (0)
  } else {
    return ((number * number ) + Sum.Series(number - 1))
  }
}
Sum.Series(3)

