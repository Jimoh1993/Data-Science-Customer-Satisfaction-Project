# R Activity 3 | Experimental Methods 1
# NAME:- [JIMOH ABDULGANIYU]
# DATE:- [18-11-2021]


# INTRODUCTION: This problem set will ask you to create simple algorithms 
# using conditional statements, while loops, and for loops.





# PROBLEM 1: Conditional Statements

# This problem will ask you to create conditional statements.
# As a reminder, conditional statements require a condition that evaluates to 
# True or False, and at least one instruction for what to depending on this 
# condition. 

# Use if to tell the program what to do if the condition is TRUE. You can add 
# an else to tell the program what to do if the condition is FALSE, and else if
# if you want to evaluate multiple conditions.

# For example, if I want to check if x is equal to y, and print out "hooray!" 
# if so, I would write:

x <- 5
y <- 7

if(x == y){
  print("hooray!")
}

# (Try testing it out by changing the values of x and y!)


# And if I want to specify what to do if x is NOT equal to y, I can add an 
# else statement:

if(x == y){
  print("hooray!")
} else {
  print("boo!")
}



# (a) Assume we have two variables:
a <- 5
b <- 5

## Write a conditional statement that prints out "less than" if a is less than b.

# [YOUR CODE HERE]
if (a < b){
  print("less than")
}

## Now, change the value of a to 5 and run the program again. What happens?

# [YOUR RESPONSE HERE]
#Nothing happen because the conditional statement is "FALSE"


# (b) Continuing the same example, assume the two variables:
a <- 5
b <- 5

## Extend the conditional statement by printing out "not less than" if a is NOT 
## less than b. (HINT: use else).

# [YOUR CODE HERE]
if (a < b){
  print("less than")
} else{
  print("not less than")
}

## Now, change the conditional again by printing "equal to" if a is equal to b 
## and "greater than" if x is greater than y. (HINT: use else if and else).

# [YOUR CODE HERE]
if (a == b){
  print("equal to")
} else if(a > b) {
  print("greather than")
} else{
  print("less than")
}

## Try running the program with different values of a and b to check that it is 
## working correctly.



# (c) Now let's try writing a conditional with strings. 
## Assume we have a variable:

word <- "apple"

## Write a conditional statement that prints out "keeps the doctor away" if the 
## word is "apple" and "eat more fruit!" otherwise.

# [YOUR CODE HERE]
if (word == "apple"){
  print("keeps the doctor away")
} else {
  print("eat more fruit!")
}

## Try running the program with different words to check that it is working correctly.


## Now, extend your conditional statement so that it prints "close enough!" if 
## the word is "pear" (HINT: use else if).

# [YOUR CODE HERE]
if (word == "apple"){
  print("keeps the doctor away")
} else if(word == "pear"){
  print("close enough!")
} else {
  print("eat more fruit!")
}




# PROBLEM 2: While Loops
# Now you can practice writing while loops.

# While loops are comprised of a counter, a condition, an increment (adding or
# subtracting something each time through the loop) and instructions about what 
# the program should do.

# The counter must be initialized before the loop is run, and re-initialized
# every subsequent time the loop is run (e.g. on a new set of data).

# The counter must be incremented inside the loop. To do this, you can use 
# counter = counter + to ADD something to the counter, and 
# counter = counter - to SUBTRACT something from the counter.

# For example, if I want a while loop to print out the numbers 1 to 10, I can 
# start my counter at 1 and increment by 1 each time around the loop. 

# The condition is that the counter is less than 11 (at which point the loop will
# terminate), and the instruction is to print each number.

n <- 1

while(n < 11){
  print(n)
  n = n + 1
}

# Or if I wanted to count to 10 by 2, I could write:

n <- 2

while(n < 11){
  print(n)
  n = n + 2
}

# You can also add something at the END of the loop, which can be helpful as an
# indication that it is finished. For example:

n <- 2

while(n < 11){
  print(n)
  n = n + 2
}
print("all done!")


# You can also use while loops with strings by using the index position of 
# letters as the counter in a while loop.


# (a) Counting up
## Write a while loop that counts up from 0 to 30. Remember to include a counter,
## condition, increment, and instruction (print statement).

# [YOUR CODE HERE]
n <- 0
while(n <= 30){
  print(n)
  n = n + 1
}
print("all done!")

## Now, change the program so that it counts up to 30 by 2s.

# [YOUR CODE HERE]
n <- 2
while(n <= 30){
  print(n)
  n = n + 2
}
print("all done!")

# (b) Counting down
## Write a program that counts down from 5 to 0. (HINT: use - instead of +)

# [YOUR CODE HERE]
n <- 5
while(n >= 0){
  print(n)
  print("hooray!")
  n = n - 1
}
print("blastoff!")

## Update your loop so that it prints out "hooray!" after the number each time 
# the loop runs, and "blastoff!" when it terminates.


# (c) While loop with strings
## Write a while loop that prints out the letters of a word. 
## (HINT: your condition will be while i < nchar(word)).

# [YOUR CODE HERE]
word <- "apple"
i <- 1
while(i <= nchar(word)){
  print(substr(word, i, i))
  i = i + 1
}

## You will print out each letter, substr(word, i, i). Remember to initialize 
# the counter (i) and increment inside the loop.

## Try it out on word <- "apple"




# PROBLEM 3: for Loops

# As we discussed in the lecture, for loops and while loops are very similar. 
# The main difference is that in a while loop you have to initialize the counter 
# outside the loop and increment it inside the loop. In a for loop, by contrast, 
# you specify the VECTOR over which the loop runs, either inside or outside the
# loop itself.

# For example, if I want a for loop to print out the numbers 1 to 10, I must specify
# the vector. Recall that vectors use the notation c() and : to specify a range
# of values. So, the vector starts at 1 and stops at 10 (inclusive). 
# (Note that "range" is the name I chose for my vector, not a special function.)
range <- c(1:10)

for (i in range){
  print(i)
}

# Or I can write
for (i in c(1:10)){
  print(i)
}

# And if I want it to count by 2s, I can write:
range <- c(2, 4, 6, 8, 10)

for (i in range){
  print(i)
}

# Or 
for (i in c(2, 4, 6, 8, 10)){
  print(i)
}

# Or I can use the function seq(start, stop, step)
range <- seq(2, 10, 2)

for (i in range){
  print(i)
}

# Don't worry about the different options - use whatever works best for you!

# To see the similarities and differences between while and for loops, in this 
# problem you will write all of the while loops from the previous problem set as 
# for loops.



# (a) Counting up
## Write a for loop that counts up from 0 to 30. Remember to create a vector.

# [YOUR CODE HERE]
## Method 1
range <- c(0:30)
for (i in range){
  print(i)
}

## Method 2
for (i in c(0:30)){
  print(i)
}

## Now, change the program so that it counts up to 30 by 2s.

# [YOUR CODE HERE]
range <- seq(2, 30, 2)
for (i in range) {
  print(i)
}

# (b) Counting down
## Write a program that counts down from 5 to 0. HINT: R will count backwards
## if you start with the bigger number, i.e. c(5:0)

# [YOUR CODE HERE]
## Method 1
range <- c(5:0)
for (i in range) {
  print(i)
}

## Method 2
for (i in c(5:0)) {
  print(i)
}

## Update your loop so that it prints out "hooray!" after the number each time 
# the loop runs, and "blastoff!" when it terminates.

# [YOUR CODE HERE]
range <- c(5:0)
for (i in range) {
  print("hooray!")
}
print("blastoff!")

## Method 2
for (i in c(5:0)) {
  print(i)
  print("hooray!")
}
print("blastoff!")

# (c) for loop with strings
## Write a for loop that prints out the letters of a word. 
## (HINT: your condition will be < nchar(word))).

# [YOUR CODE HERE]
word <- c("a", "p", "p", "l", "e")
for (i in nchar(word)) {
  print(substr(word, i, i))
}
## You will print out each letter, substr(word, i, i). 

## Try it out on word <- "apple"




# PROBLEM 4: Challenge Problems

# (a) Write a while loop with the following output:

2
4
6
8
10
"goodbye!"

# (HINT: think about the condition, increment, and instruction)

# [YOUR CODE HERE]
i <- 2
while (i <= 10 ) {
  print(i)
  i = i + 2
}
print("goodbye!")

# Now, rewrite the program with a for loop.

# [YOUR CODE HERE]
range <- seq(2, 10, 2)
for (i in range) {
  print(i)
}
print("goodbye!")

# (b) Write a while loop that sums the values 1 through end (inclusive). 
## end is a variable defined externally, i.e. it can have any value.

## So for instance, if the value of end is 8, your code should print out: 36
## Which of course is 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8
## To check your code is working, try "test cases" by defining end as different 
## values.

# [YOUR CODE HERE]
end <- 8
sum <- 0
while (end >= 1) {
  sum = sum + end
  end = end - 1
}
print(sum)

# Now, rewrite the program with a for loop.

# [YOUR CODE HERE]
## Method 1
sum1 <- 0
range <- c(1:8)
for (i in range) {
  sum1 = sum1 + i
}
print(sum1)

## Method 2
sum2 <- 0
for (i in c(1:8)) {
  sum2 = sum2 + i
}
print(sum2)
