# CREATING A FUNCTION
# To create a function, use the function() keyword:
my_function <- function() {  # create a function with the name my_function
  print("Hello World!")
}


# CALLING A FUNCTION
# To call a function, use the function name followed by parenthesis, like my_function():
my_function <- function() {
  print("Hello World!")
}

my_function() # call the function named my_function


# ARGUMENTS
my_function <- function(first_name) {
  paste(first_name, "Griffin")
}

my_function("Peter")
my_function("Lois")
my_function("Stewie")


# NUMBERS OF ARGUMENTS
my_function <- function(fname, lname) {
  paste(fname, lname)
}

my_function("Peter", "Griffin")  # If you try to call the function with 1 or 3 arguments, you will get an error:


# DEFAULT PARAMETER VALUE
my_function <- function(country = "Norway") {
  paste("I am from", country)
}

my_function("Sweden")
my_function("India")
my_function() # will get the default value, which is Norway
my_function("USA")


# RETURN VALUE
my_function <- function(x) {
  return (5 * x)
}

print(my_function(3))
print(my_function(5))
print(my_function(9))


# NESTED FUNCTION
# ex1:
Nested_function <- function(x, y) {
  a <- x + y
  return(a)
}

Nested_function(Nested_function(2,2), Nested_function(3,3))

# ex2:
Outer_func <- function(x) {
  Inner_func <- function(y) {
    a <- x + y
    return(a)
  }
  return (Inner_func)
}
output <- Outer_func(3) # To call the Outer_func
output(5)


# RECURSION
tri_recursion <- function(k) {
  if (k > 0) {
    result <- k + tri_recursion(k - 1)
    print(result)
  } else {
    result = 0
    return(result)
  }
}
tri_recursion(6)  #  res = 21


# OTHER (GLOBAL ASSIGNMENT OPERATOR)
# To create a global variable inside a function, you can use the global assignment operator <<-
# If you use the assignment operator <<-, the variable belongs to the global scope:
my_function <- function() {
  txt <<- "fantastic"
  paste("R is", txt)
}

my_function()

print(txt)

# Also, use the global assignment operator if you want to change a global variable inside a function:
# To change the value of a global variable inside a function, refer to the variable by using the global assignment operator <<-:
txt <- "awesome"
my_function <- function() {
  txt <<- "fantastic"
  paste("R is", txt)
}

my_function()

paste("R is", txt)