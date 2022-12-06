# There are three number types in R:
  
  # numeric
  # integer
  # complex


# Variables of number types are created when you assign a value to them:
  x <- 10.5   # numeric
  y <- 10L    # integer
  z <- 1i     # complex
  

# NUMERIC
# A numeric data type is the most common type in R, and contains any number with or without a decimal, like: 10.5, 55, 787:
x <- 10.5
y <- 55
  
# Print values of x and y
x
y
  
# Print the class name of x and y
class(x)
class(y)


# INTEGER
# Integers are numeric data WITHOUT DECIMALS. This is used when you are certain that you will never create a variable that should contain decimals. To create an integer variable, you must use the letter L after the integer value:
x <- 1000L
y <- 55L

# Print values of x and y
x
y

# Print the class name of x and y
class(x)
class(y)


# COMPLEX
# A complex number is written with an "i" as the imaginary part:
x <- 3+5i
y <- 5i

# Print values of x and y
x
y

# Print the class name of x and y
class(x)
class(y)


# TYPE CONVERSION
# You can convert from one type to another with the following functions:
  # as.numeric()
  # as.integer()
  # as.complex()

# example:
x <- 1L # integer
y <- 2 # numeric

# convert from integer to numeric:
a <- as.numeric(x)

# convert from numeric to integer:
b <- as.integer(y)

# print values of x and y
x
y

# print the class name of a and b
class(a)
class(b)