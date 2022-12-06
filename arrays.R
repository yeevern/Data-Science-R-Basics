# Compared to matrices, arrays can have more than two dimensions.
# We can use the array() function to create an array, and the dim parameter to specify the dimensions:
# An array with one dimension with values ranging from 1 to 24
thisarray <- c(1:24)
thisarray

# An array with more than one dimension
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray

# How does dim=c(4,3,2) work?
# The first and second number in the bracket specifies the amount of rows and 
# columns.
# The last number in the bracket specifies how many dimensions we want.
# Note: Arrays can only have one data type.


# ACCESS ARRAY ITEMS
# You can access the array elements by referring to the index position. You can 
# use the [] brackets to access the desired elements from an array
# The syntax is as follow: array[row position, column position, matrix level]
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray[2, 3, 2]

# You can also access the whole row or column from a matrix in an array, by using the c() function:
thisarray <- c(1:24)

# Access all the items from the first ROW from matrix one
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray[c(1),,1]

# Access all the items from the first COLUMN from matrix one
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray[,c(1),1]


# CHECK IF ITEM EXISTS
# Check if the value "2" is present in the array
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))
2 %in% multiarray


# AMOUNT OF ROWS AND COLUMNS
# Use the dim() function
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))
dim(multiarray)  # 4 3 2


# ARRAY LENGTH
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))
length(multiarray)  # 24


# LOOP THROUGH AN ARRAY
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))
for(x in multiarray){
  print(x)
}