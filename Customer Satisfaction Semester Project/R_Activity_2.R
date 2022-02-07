# R Activity 2 | Vectors, Lists, Matrices
# Experimental Methods 1

# NAME:- [JIMOH ABDULGANIYU]
# DATE:- [12-11-2021]




# PROBLEM 1: Vectors

# A vector is the fundamental data structure in R.

# You can create a vector with c(), access elements with [], and change elements
# with <-

# For instance, I can create the following vector:
example.vector <- c(1, 2, 6, 23, 99, 0)

# Check the first and fourth elements
example.vector[1]
example.vector[4]

# And change the fifth element to 37
example.vector[5] <- 37


# Elements of a vector must be of the SAME TYPE, otherwise they will be coerced.


# (A) Create a vector called myvector with the values 1, 5, 77, 2845, 23.5, 9, 0, 0, 8

# [YOUR CODE HERE]
myvector.vector <- c(1, 5, 77, 2845, 23.5, 9, 0, 0, 8)

# Now, write commands for the following elements within myvector:

## The first element

# [YOUR CODE HERE]
myvector.vector[1]

## The third element

# [YOUR CODE HERE]
myvector.vector[3]

## The last element

# [YOUR CODE HERE]
myvector.vector[9]


## The tenth element (what happens?)

# [YOUR CODE HERE]
myvector.vector[10] #Missing values are represented by the symbol NA (not available).



# (B) Make the following changes:

## Change the second element to 12

# [YOUR CODE HERE]
myvector.vector[2] <- 12

## Change the fifth element to 199

# [YOUR CODE HERE]
myvector.vector[5] <- 199


## Change the last element to "goodbye" (what happens to the type?)

# [YOUR CODE HERE]
myvector.vector[9] <- "goodbye" #Not of the same datatype but it work fine at the console environment 


# PROBLEM 2: Lists

# This problem will ask you to create and manipulate lists.

# Lists are made with list(). The elements of a list can be accessed using indexing
# with [ ]. Lists in R are not mutable.

# You can access elements of a list with [] and [[]], and add elements with append()

# For example, I can create the following list:
example.list <- list("bees", "honey", list("wildflowers", "sunflowers", "clover"), 82)

# I can access the first, third, and second of third elements
example.list[1]
example.list[3]
example.list[[3]][[2]]

# And I can add a new element
example.list <- append(example.list, "january")


# (A) Create a list called firstlist containing the following elements: 
# "hello", "goodbye", "how are you?", 27, "green".

# [YOUR CODE HERE]
firtlist.list <- list("hello", "goodbye", "how are you?", 27, "green")


# Now, add 35 and "cheese" to your list with append()

# [YOUR CODE HERE]
firstlist.list <- append(firstlist.list, 35, "cheese")

# (B) Create a list called mylist containing the following elements: 1, 3, 
# list(12, 72, 6), 14, 7, 9, list(1, 2, 3, 4), 80, list(5, 4, 1), 1.

# [YOUR CODE HERE]
mylist.list <- list(1, 3, list(12, 72, 6), 14, 7, 9, list(1, 2, 3, 4), 80, list(5, 4, 1), 1)

# Now, write commands for the following elements within mylist:
## The first element

# [YOUR CODE HERE]
mylist.list[[1]]

## The third element

# [YOUR CODE HERE]
mylist.list[[3]]

## The third element of the third element 

# [YOUR CODE HERE]
mylist.list[[3]][[3]]

## The first element of the seventh element 

# [YOUR CODE HERE]
mylist.list[[7]][[1]]

## The second element of each item (HINT: use lapply)

# [YOUR CODE HERE]
lapply(mylist.list, function(x) x[2]) #method 1 
lapply(mylist.list, `[`, 2) #method 2
  


# PROBLEM 3: Named Lists

# A named list is similar to a dictionary. They are made with list() and names(),
# or with name = element within list()

# For example, these commands are equivalent:
a.list <- list(1, 2, 3, 4)
names(a.list) <- c("hello", "goodbye", "morning", "evening")

a.list2 <- list("hello" = 1, "goodbye" = 2, "morning" = 3, "evening" = 4)

# Values within a list are accessed using [] and names are accessed using names()
# For instance, I can access the first element, the item only, or the name only
a.list[1]
a.list[[1]]
names(a.list[1])

# You can also use the name to look up the value:
a.list["morning"]

# Named lists are not mutable.


# (A) Create a named list called student.grades with the following entries:
# Cristina = A
# George = B
# Clara = A
# Elizabeth = C

# [YOUR CODE HERE]
student.grades <- list("Cristina", "George", "Clara", "Elizabeth")
names(student.grades) <- c("A", "B", "A", "C")

# (B) Add the following entries (hint: use append)
# Laura = A
# Raul = B

# [YOUR CODE HERE]
student.grades <- append(student.grades, "Laura", after = length(student.grades))
student.grades <- append(student.grades, "Raul", after = length(student.grades))
names(student.grades) <- c("A", "B", "A", "C", "A", "B")

# (C) Now, write commands for the following elements within student.grades:
## The first element

# [YOUR CODE HERE]
student.grades[1]
student.grades[[1]]
names(student.grades[1])

## The value of the fourth element

# [YOUR CODE HERE]
student.grades[[4]] #This output the value score assigned to Elizabeth


## The name of the third element 

# [YOUR CODE HERE]
names(student.grades[3])

## Raul's grade 

# [YOUR CODE HERE]
names(student.grades[6])


# PROBLEM 4: Matrices

# This problem will ask you to create and manipulate matrices in R. 

# Matrices are two-dimensional objects with rows and columns. Matrices contain 
# elements of the same type. They are created using matrix().

# For example, if I want to create a matrix with the numbers 1 to 24, with six 
# rows and four columns, I can write:
a.matrix <- matrix(1:24, nrow = 6, ncol = 4)

# You can access elements within a matrix by using [row, column]
# So for instance, I can access the first row and fourth column, the third row,
# and the third column:
a.matrix[1, 3]
a.matrix[3, ]
a.matrix[, 3]


# (A) Create a matrix called mymatrix with the numbers 1 to 50, 10 rows and 
# 5 columns.

# [YOUR CODE HERE]
mymatrix <- matrix(1:50, nrow = 10, ncol = 5)

# Now, write commands for the following elements within mymatrix:
## The first row and second column

# [YOUR CODE HERE]
mymatrix[1, 2]

## The third row

# [YOUR CODE HERE]
mymatrix[3, ]

## The ninth column 

# [YOUR CODE HERE]
mymatrix[, 9] #Error in mymatrix[, 9] : subscript out of bounds



# (B) Create a matrix called mymatrix2 with the following numbers: 45, 2, 18, 7, 33, 9, 12, 1. The matrix
# should have 5 rows and 3 columns.

# [YOUR CODE HERE]
# NOTE: The following matrix data length 8 is not a sub-multiple or multiple of the
# number of rows. 
mymatrix2 <- matrix(list(45, 2, 18, 7, 33, 9, 12, 1), nrow = 5, ncol = 3)

# (C) Now let's change our matrices using operations.
# Make the following changes to mymatrix and mymatrix2:

## Multiply every element by 4

# [YOUR CODE HERE]

## Transpose using t()

# [YOUR CODE HERE]

## Multiply the matrices using %*%

# [YOUR CODE HERE]


# (D) Create a matrix with the following data in 2 rows and 3 columns:
# "A", "B", "C", "D", "E", "F", "G", "H"
alphabet <- matrix(list("A", "B", "C", "D", "E", "F", "G", "H"), nrow = 2, ncol = 3)
# NOTE: The following matrix data length 8 is not a sub-multiple or multiple of the
# number of rows.


