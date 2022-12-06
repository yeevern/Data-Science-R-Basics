# And there are times you must use the print() function to output code, for example when working with for loops (which you will learn more about in a later chapter):
for (x in 1:10) {
  print(x)
}


# we can use both = and <- as assignment operators.
# However, <- is preferred in most cases because the = operator can be forbidden in some context in R.
name = "John"  
age <- 19


# You do not have to use a function to print/output variables in R. You can just type the name of the variable
# However, R does have a print() function available if you want to use it
print(name)
name


# Conclusion:
# It is up to your if you want to use the print() function or not to output code. However, when your code is inside an R expression (for example inside curly braces {} like in the example above), use the print() function if you want to output the result.


# You can also concatenate, or join, two or more elements, by using the paste() function.
# To combine both text and a variable, R uses comma (,):
text <- "awesome"
paste("R is", text)


# You can also use , to add a variable to another variable:
text1 <- "R is"
text2 <- "awesome"
paste(text1, text2)


# For numbers, the + character works as a mathematical operator:
num1 <- 5
num2 <- 10
num1 + num2


# If you try to combine a string (text) and a number, R will give you an error:
num <- 5
text <- "Some text"
num + text


# R allows you to assign the same value to multiple variables in one line:
# Assign the same value to multiple variables in one line
var1 <- var2 <- var3 <- "Orange"
# Print variable values
var1
var2
var3

# A variable can have a short name (like x and y) or a more descriptive name (age, carname, total_volume). Rules for R variables are:
  # A variable name must start with a letter and can be a combination of letters, digits, period(.) and underscore(_). If it starts with period(.), it cannot be followed by a digit.
  # A variable name cannot start with a number or underscore (_)
  # Variable names are case-sensitive (age, Age and AGE are three different variables)
  # Reserved words cannot be used as variables (TRUE, FALSE, NULL, if...)
# Legal variable names:
myvar <- "John"
my_var <- "John"
myVar <- "John"
MYVAR <- "John"
myvar2 <- "John"
.myvar <- "John"

# Illegal variable names:
2myvar <- "John"
my-var <- "John"
my var <- "John"
_my_var <- "John"
my_v@ar <- "John"
TRUE <- "John"