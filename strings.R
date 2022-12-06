# A character, or strings, are used for storing text. A string is surrounded by either single quotation marks, or double quotation marks:
# "hello" is the same as 'hello'


str <- "Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."

str # print the value of str


# If you want the line breaks to be inserted at the same position as in the code, use the cat() function:
cat(str)


# to find the number of characters in a string, use the nchar() function:
str <- "Hello World!"
nchar(str)


# CHECK A STRING
# Use the grepl() function to check if a character or a sequence of characters are present in a string:
str <- "Hello World!"

grepl("H", str)
grepl("Hello", str)
grepl("X", str)


# COMBINE TWO STRINGS
# Use the paste() function to merge/concatenate two strings:
str1 <- "Hello"
str2 <- "World"

paste(str1, str2)


# ESCAPE CHARACTERS
str <- "We are the so-called \"Vikings\", from the north."

str
cat(str) # Note that auto-printing the str variable will print the backslash in the output. You can use the cat() function to print it without backslash.