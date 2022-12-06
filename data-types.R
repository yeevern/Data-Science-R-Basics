# In R, variables do not need to be declared with any particular type, and can even change type after they have been set:
my_var <- 30 # my_var is type of numeric
my_var <- "Sally" # my_var is now of type character (aka string)


# Basic data types in R can be divided into the following types:
  # numeric - (10.5, 55, 787)
  # integer - (1L, 55L, 100L, where the letter "L" declares this as an integer)
  # complex - (9 + 3i, where "i" is the imaginary part)
  # character (a.k.a. string) - ("k", "R is exciting", "FALSE", "11.5")
  # logical (a.k.a. boolean) - (TRUE or FALSE)


# We can use the class() function to check the data type of a variable:
# numeric
x <- 10.5
class(x)

# integer
x <- 1000L
class(x)

# complex
x <- 9i + 3
class(x)

# character (string)
x <- "R is exciting"
class(x)

# logical (boolean)
x <- TRUE
class(x)