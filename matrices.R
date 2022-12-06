# A matrix can be created with the matrix() function. 
# Specify the nrow and ncol parameters to get the amount of rows and columns
thismatrix <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)  # Create a matrix
thismatrix  # Print the matrix

# Remember the c() function is used to concatenate items together.
# You can also create a matrix with strings:
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
thismatrix


# ACCESS MATRIX ITEMS
# You can access the items by using [ ] brackets. The first number "1" in the bracket specifies the row-position, while the second number "2" specifies the column-position:
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
thismatrix[1, 2]

# The whole row can be accessed if you specify a comma AFTER the number in the bracket:
thismatrix[2,]

# The whole column can be accessed if you specify a comma BEFORE the number in the bracket:
thismatrix[,2]


# ACCESS MORE THAN 1 ROW/COLUMN
# More than one row can be accessed if you use the c() function:
thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
thismatrix[c(1,2),]
thismatrix[, c(1,2)]


# ADD ROWS AND COLUMNS
# Use the cbind() function to add additional columns in a Matrix:
thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
newmatrix <- cbind(thismatrix, c("strawberry", "blueberry", "raspberry"))
newmatrix  # Print the new matrix
# Note: The cells in the new column must be of the same length as the existing matrix.


# REMOVE ROWS AND COLUMNS
# Use the c() function to remove rows and columns in a Matrix:
thismatrix <- matrix(c("apple", "banana", "cherry", "orange", "mango", "pineapple"), nrow = 3, ncol =2)
#Remove the second row and the first column
thismatrix <- thismatrix[-c(2), -c(1)]
thismatrix


# CHECK IF AN ITEM EXISTS
# use the %in% operator
# Check if "apple" is present in the matrix:
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
"apple" %in% thismatrix


# AMOUNT OF ROWS AND COLUMNS
# Use the dim() function
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
dim(thismatrix)


# MATRIX LENGTH
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
length(thismatrix)
# Total cells in the matrix is the number of rows multiplied by number of columns.
# In the example above: Dimension = 2*2 = 4.


# LOOP THROUGH A MATRIX
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
for (rows in 1:nrow(thismatrix)) {
  for (columns in 1:ncol(thismatrix)) {
    print(thismatrix[rows, columns])
  }
}


# COMBINE 2 MATRICES
# Again, you can use the rbind() or cbind() function to combine two or more matrices together
# Combine matrices
Matrix1 <- matrix(c("apple", "banana", "cherry", "grape"), nrow = 2, ncol = 2)
Matrix2 <- matrix(c("orange", "mango", "pineapple", "watermelon"), nrow = 2, ncol = 2)

# Adding it as a rows
Matrix_Combined <- rbind(Matrix1, Matrix2)
Matrix_Combined

# Adding it as a columns
Matrix_Combined <- cbind(Matrix1, Matrix2)
Matrix_Combined