# In the examples below (and for the next chapters), we will use the mtcars data set, for statistical purposes
mtcars  # Print the mtcars data set


# INFORMATION ABOUT THE DATA SET
# You can use the question mark (?) to get information about the mtcars data set
?mtcars  # Use the question mark to get information about the data set


# GET INFORMATION
# Use the dim() function to find the dimensions of the data set, and the names() function to view the names of the variables
Data_Cars <- mtcars # create a variable of the mtcars data set for better organization
dim(Data_Cars)  # Use dim() to find the dimension of the data set
names(Data_Cars)  # Use names() to find the names of the variables from the data set
# Use the rownames() function to get the name of each row in the first column, which is the name of each car
Data_Cars <- mtcars
rownames(Data_Cars)

# From the examples above, we have found out that the data set has 32 observations (Mazda RX4, Mazda RX4 Wag, Datsun 710, etc) and 11 variables (mpg, cyl, disp, etc)
# A variable is defined as something that can be measured or counted


# PRINT VARIABLE VALUES
# If you want to print all values that belong to a variable, access the data frame by using the $ sign, and the name of the variable (for example cyl (cylinders))
Data_Cars <- mtcars
Data_Cars$cyl


# SORT VARIABLE VALUES
Data_Cars <- mtcars
sort(Data_Cars$cyl)


# ANALYZING THE DATA
# Now that we have some information about the data set, we can start to analyze it with some statistical numbers
Data_Cars <- mtcar
summary(Data_Cars)

# The summary() function returns six statistical numbers for each variable:
  # Min
  # First quantile (percentile)
  # Median
  # Mean
  # Third quantile (percentile)
  # Max


# MAX / MIN
# Find the largest and smallest value of the variable hp (horsepower).
Data_Cars <- mtcars
max(Data_Cars$hp)  # 335
min(Data_Cars$hp)  # 52

# We can use the which.max() and which.min() functions to find the index position of the max and min value in the table
which.max(Data_Cars$hp)  # 31
which.min(Data_Cars$hp)  # 19

# Or even better, combine which.max() and which.min() with the rownames() function to get the name of the car with the largest and smallest horsepower
rownames(Data_Cars)[which.max(Data_Cars$hp)]  # "Maserati Bora"
rownames(Data_Cars)[which.min(Data_Cars$hp)]  # "Honda Civic"


# MEAN / MEDIAN AND MODE
  # Mean - The average value
  # Median - The middle value
  # Mode - The most common value(the value that appears the most number of times)

# Find the average weight (wt) of a car
mean(Data_Cars$wt)

# Note: If there are two numbers in the middle, you must divide the sum of those numbers by two, to find the median
# use the median() function to find the middle value
median(Data_Cars$wt)

# R does not have a function to calculate the mode. However, we can create our own function to find it
# Instead of counting it ourselves, we can use the following code to find the mode
names(sort(-table(Data_Cars$wt)))[1]


# PERCENTILES
# Percentiles are used in statistics to give you a number that describes the value that a given percent of the values are lower than

# What is the 75. percentile of the weight of the cars? The answer is 3.61 or 3 610 lbs, meaning that 75% or the cars weight 3 610 lbs or less
Data_Cars <- mtcars
quantile(Data_Cars$wt, c(0.75))  # c() specifies which percentile you want

# If you run the quantile() function without specifying the c() parameter, you will get the percentiles of 0, 25, 50, 75 and 100
quantile(Data_Cars$wt)