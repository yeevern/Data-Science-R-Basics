# SECTION 1
# Install pakage
#install.packages("dslabs")  # installing the dslabs package
library(dslabs)  # loading the dslabs package into the R session

#install.packages("dslabs")  # to install a single package
#install.packages(c("tidyverse", "dslabs"))  # to install two packages at the same time
#installed.packages() # to see the list of all installed packages


help("log")
?log
?"+"  # need to include quotes for operators

# If you already know how the function works, but need a quick reminder of the arguments,
# you can use the args function.
args("log")
args("log2")

# change the default
log(8, base=2)  
# The above code works, but we can save ourselves some time, because if no argument 
# name is used, R assumes you're entering arguments in the order shown in the help 
# file or by args.
log(8,2)  # or can also write like this 

class(ls)  # is a function

# Note what we can do with the ! operator
x <- c(1, 2, 3)
ind <- c(FALSE, TRUE, FALSE)
x[!ind]

# loading the dslabs package and the murders dataset
library(dslabs)
data(murders)

# determining that the murders dataset is of the "data frame" class
class(murders)
# finding out more about the structure of the object
str(murders)
# showing the first 6 lines of the dataset
head(murders)

# using the accessor operator to obtain the population column
murders$population
# displaying the variable names in the murders dataset
names(murders)  # Use the function names to extract the variable names 
# determining how many entries are in a vector
pop <- murders$population
length(pop)
# vectors can be of class numeric and character
class(pop)
class(murders$state)

# logical vectors are either TRUE or FALSE
z <- 3 == 2
z
class(z)

# factors are another type of class
class(murders$region)
# obtaining the levels of a factor
levels(murders$region)  # The function levels shows us the categories for the factor.
length(levels(murders$region))  # # Determine the number of regions included in this variable 

# MULTIPLE WAYS TO ACCESS VARIABLES
# An important lesson you should learn early on is that there are multiple ways 
# to do things in R. For example, to generate the first five integers we note 
# that 1:5 and seq(1,5) return the same result.
# There are also multiple ways to access variables in a data frame. For example 
# we can use the square brackets [[ instead of the accessor $. Example code is 
# included in the editor.

# If you instead try to access a column with just one bracket,
murders["population"]
# R returns a subset of the original data frame containing just this column. 
# This new object will be of class data.frame rather than a vector. To access 
# the column itself you need to use either the $ accessor or the double square 
# brackets [[.
                                                                                                                                                                                                                                                                                                                                                               
# Parentheses, in contrast, are mainly used alongside functions to indicate 
#what argument the function should be doing something to. For example, when we 
# did class(p) in the last question, we wanted the function class to do 
# something related to the argument p.

# This is an example of how R can be a bit idiosyncratic sometimes. It is very 
# common to find it confusing at first.
# We extract the population like this:
p <- murders$population

# This is how we do the same with the square brackets:
o <- murders[["population"]] 

# We can confirm these two are the same
identical(o, p)

# Use square brackets to extract `abb` from `murders` and assign it to b
b <- murders[["abb"]]
# Check if `a` and `b` are identical 
identical(a,b)

# TABLES
# The function table takes a vector as input and returns the frequency of each 
# unique element in the vector.
# The "c" in `c()` is short for "concatenate," which is the action of connecting items into a chain
# The function `c()` connects all of the strings within it into a single vector, which we can assign to `x`
x <- c("a", "a", "b", "b", "b", "c")
# Here is an example of what the table function does
table(x)

# Write one line of code to show the number of states per region
table(murders$region)

# ------------------------------------------------------------------------------
# SECTION 2
# VECTORS
# We may create vectors of class numeric or character with the concatenate function
codes <- c(380, 124, 818)
country <- c("italy", "canada", "egypt")

# We can also name the elements of a numeric vector
# Note that the two lines of code below have the same result
codes <- c(italy = 380, canada = 124, egypt = 818)
codes <- c("italy" = 380, "canada" = 124, "egypt" = 818)

# We can also name the elements of a numeric vector using the names() function
codes <- c(380, 124, 818)
country <- c("italy","canada","egypt")
names(codes) <- country

# Using square brackets is useful for subsetting to access specific elements of a vector
codes[2]
codes[c(1,3)]
codes[1:2]

# If the entries of a vector are named, they may be accessed by referring to their name
codes["canada"]
codes[c("egypt","italy")]

# CONNECTING NUMERIC AND CHARACTER VECTORS
# We have successfully assigned the temperatures as numeric values to temp and 
# the city names as character values to city. But can we associate the 
# temperature to its related city? Yes! We can do so using a code we already 
# know - names. We assign names to the numeric values.
# It would look like this:
cost <- c(50, 75, 90, 100, 150)
food <- c("pizza", "burgers", "salads", "cheese", "pasta")
names(cost) <- food

# SEQUENCE AND LENGTH
# The second argument of the function seq is actually a maximum, not necessarily 
# the end. So if we type
seq(7, 50, 7)
# we actually get the same vector of integers as if we type
seq(7, 49, 7)
# The seq() function has another useful argument. The argument length.out. 
# This argument lets us generate sequences that are increasing by the same 
# amount but are of the prespecified length.
# For example, this line of code
x <- seq(0, 100, length.out = 5)  # produces the numbers 0, 25, 50, 75, 100


# SORTING
library(dslabs)
data(murders)
sort(murders$total)

x <- c(31, 4, 15, 92, 65)
x
sort(x)    # puts elements in order

# The function order() returns the index vector needed to sort the vector. This 
# implies that sort(x) and x[order(x)] give the same result.
index <- order(x)    # returns index that will put x in order
x[index]    # rearranging by this index puts elements in order
order(x)

murders$state[1:10]
murders$abb[1:10]

index <- order(murders$total)
murders$abb[index]    # order abbreviations by total murders

max(murders$total)    # highest number of total murders
i_max <- which.max(murders$total)    # index with highest number of murders
murders$state[i_max]    # state name with highest number of total murders

x <- c(31, 4, 15, 92, 65)
x
rank(x)    # returns ranks (smallest to largest)
rank(-x)  # gives you the ranks from highest to lowest
# You can create a data frame using the data.frame function. Here is a quick example:
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
city_temps <- data.frame(name = city, temperature = temp)

# The name of the state with the maximum population is found by doing the following
murders$state[which.max(murders$population)]

# how to obtain the murder rate
murder_rate <- murders$total / murders$population * 100000

# ordering the states by murder rate, in decreasing order
murders$state[order(murder_rate, decreasing=TRUE)]

# ------------------------------------------------------------------------------
# SECTION 3
# INDEXING
# defining murder rate as before
murder_rate <- murders$total / murders$population * 100000
# creating a logical vector that specifies if the murder rate in that state is less than or equal to 0.71
index <- murder_rate <= 0.71
# determining which states have murder rates less than or equal to 0.71
murders$state[index]
# calculating how many states have a murder rate less than or equal to 0.71
sum(index)  # TREU = 1, FALSE = 0

# creating the two logical vectors representing our conditions
west <- murders$region == "West"
safe <- murder_rate <= 1
# defining an index and identifying states with both conditions true
index <- safe & west
murders$state[index]


# INDEXING FUNCTION
x <- c(FALSE, TRUE, FALSE, TRUE, TRUE, FALSE)
which(x)    # returns indices that are TRUE

# to determine the murder rate in Massachusetts we may do the following
index <- which(murders$state == "Massachusetts")
index
murder_rate[index]

# to obtain the indices and subsequent murder rates of New York, Florida, Texas, we do:
index <- match(c("New York", "Florida", "Texas"), murders$state)
index  # 33 10 44
murders$state[index]
murder_rate[index]

x <- c("a", "b", "c", "d", "e")
y <- c("a", "d", "f")
y %in% x  # TRUE  TRUE FALSE

# to see if Boston, Dakota, and Washington are states
c("Boston", "Dakota", "Washington") %in% murders$state


# BASIC DATAWRANGLING
# installing and loading the dplyr package
# install.packages("dplyr")
library(dplyr)

# adding a column with mutate
library(dslabs)
data("murders")
# mutate(data.frame, name and value of the variable)
murders <- mutate(murders, rate = total / population * 100000)
# Note that in this call, we use total and population.
# These are not defined in the workspace.
# What is happening here is that the mutate function
# knows to look for these variables in the murders data frame
# rather than in the workspace.
# This makes the call much cleaner, because we
# don't have to keep writing murders over and over again.

# subsetting with filter
# filter(data.frame, conditional statement)
filter(murders, rate <= 0.71)

# selecting columns with select
# select(data.frame, variable names)
new_table <- select(murders, state, region, rate)
filter(new_table, rate <= 0.71)

# using the pipe
# we take the original data, select some columns, and then filter some rows.
# for such operation, we can use pipe %>%
murders %>% select(state, region, rate) %>% filter(rate <= 0.71)
# Notice that we get the same answer as in the previous code


# CREATING DATA FRAME
# creating a data frame with stringAsFactors = FALSE
grades <- data.frame(names = c("John", "Juan", "Jean", "Yao"), 
                     exam_1 = c(95, 80, 90, 85), 
                     exam_2 = c(90, 85, 85, 90),
                     stringsAsFactors = FALSE)


# BASIC PLOTS
library(dplyr)
library(dslabs)
data("murders")

# a simple scatterplot of total murders versus population
x <- murders$population /10^6
y <- murders$total
plot(x, y)

# a histogram of murder rates
murders <- mutate(murders, rate = total / population * 100000)
hist(murders$rate)
# one very extreme case with a murder rate of more than 15.
# If we want to find out which one this is, we can use the code that we've 
# learned to write and see
murders$state[which.max(murders$rate)]

# boxplots of murder rates by region
boxplot(rate~region, data = murders)

# ------------------------------------------------------------------------------
# SECTION 4
# CONDITIONALS
# an example showing the general structure of an if-else statement
a <- 0
if(a!=0){
  print(1/a)
} else{
  print("No reciprocal for 0.")
}

# an example that tells us which states, if any, have a murder rate less than 0.5
library(dslabs)
data(murders)
murder_rate <- murders$total / murders$population*100000
ind <- which.min(murder_rate)
if(murder_rate[ind] < 0.5){
  print(murders$state[ind])  # "Vermont"
} else{
  print("No state has murder rate that low")
}

# changing the condition to < 0.25 changes the result
if(murder_rate[ind] < 0.25){
  print(murders$state[ind]) 
} else{
  print("No state has a murder rate that low.")
}

# the ifelse() function works similarly to an if-else conditional
a <- 0
ifelse(a > 0, 1/a, NA)  # NA

# the ifelse() function is particularly USEFUL ON VECTORS
a <- c(0,1,2,-4,5)
result <- ifelse(a > 0, 1/a, NA)

# the ifelse() function is also helpful for replacing missing values
data(na_example)
sum(is.na(na_example))  # there's 145 NAs in this vector
# So what we want to do next is create a new vector called no_nas that replaces
# all the NAs with zero, using the ifelse function
no_nas <- ifelse(is.na(na_example), 0, na_example) 
sum(is.na(no_nas))

# the any() and all() functions evaluate logical vectors
y <- c(FALSE, FALSE, FALSE)
z <- c(TRUE, TRUE, FALSE)
# The any function takes a vector of logicals and it returns TRUE if any of the 
# entries is true.
any(y)  # FALSE
any(z)  # TRUE
# The all function takes a vector of logicals and returns TRUE if all the 
# entries are true.
y <- c(TRUE, TRUE, TRUE)
all(y)  # TRUE
all(z)  # FALSE


# FUNCTIONS
# example of defining a function to compute the average of a vector x
avg <- function(x){  # Note that functions are objects. So we assign them to variable names with the arrow operator.
  s <- sum(x)
  n <- length(x)
  s/n
}

# we see that the above function and the pre-built R mean() function are identical
x <- 1:100
identical(mean(x), avg(x))

# variables inside a function are not defined in the workspace
s <- 3
avg(1:10)
s

# functions can have multiple arguments as well as default values
avg <- function(x, arithmetic = TRUE){
  n <- length(x)
  ifelse(arithmetic, sum(x)/n, prod(x)^(1/n))
}


# FOR LOOPS
# creating a function that computes the sum of integers 1 through n
compute_s_n <- function(n){
  x <- 1:n
  sum(x)
}

# a very simple for-loop
for(i in 1:5){
  print(i)
}

# a for-loop for our summation
m <- 25
s_n <- vector(length = m)   # create an empty vector where I'm going to store the results as I compute them
for(n in 1:m){
  s_n[n] <- compute_s_n(n)
}

# creating a plot for our summation function
n <- 1:m
plot(n, s_n)

# a table of values comparing our function to the summation formula
head(data.frame(s_n = s_n, formula = n*(n+1)/2))

# overlaying our function with the summation formula
plot(n, s_n)
lines(n, n*(n+1)/2)



compute_s_n <- function(n) {
  res <- vector(length = n)
  for (i in 1:n) {
    res[i] <- i^2
    
  }
  print(sum(res))
}

# Report the value of the sum when n=10
compute_s_n(10)