# A vector is simply a list of items that are of the same type.
# To combine the list of items to a vector, use the c() function and separate the items by a comma.
fruits <- c("banana", "apple", "orange")
fruits

# In this example, we create a vector that combines numerical values:
numbers <- c(1, 2, 3)
numbers

# To create a vector with numerical values in a sequence, use the : operator:
nums <- 1:10
nums

# You can also create numerical values with decimals in a sequence, but note that if the last element does not belong to the sequence, it is not used:
numbers1 <- 1.5:6.5
numbers1

numbers2 <- 1.5:6.3 
numbers2  # # Vector with numerical decimals in a sequence where the last element is not used


# To find out how many items a vector has, use the length() function:
fruits <- c("banana", "apple", "orange")
length(fruits)


# To sort items in a vector alphabetically or numerically, use the sort() function: 
fruits <- c("banana", "apple", "orange", "mango", "lemon")
numbers <- c(13, 3, 5, 7, 20, 2)

sort(fruits)  # Sort a string
sort(numbers) # Sort numbers


# ACCESS VECTOR
fruits <- c("banana", "apple", "orange", "mango", "lemon")

fruits[1]  # Access the first item (banana)
fruits[length(fruits)]  # Access the last item (lemon)
# access multiple elements by referring to different index positions with the c() function:
fruits[c(1, 3)]  # Access the first and third item (banana and orange)
fruits[c(-1)]  # Access all items except for the first item


# CHANGE AN ITEM
fruits[1] <- "pear"
fruits


# REPEAT VECTORS
repeat_each <- rep(c(1,2,3), each = 3)
repeat_each  # 1 1 1 2 2 2 3 3 3

repeat_times <- rep(c(1,2,3), times = 3)
repeat_times  # 1 2 3 1 2 3 1 2 3

repeat_indepent <- rep(c(1,2,3), times = c(5,2,1))
repeat_indepent  # 1 1 1 1 1 2 2 3


# GENERATING SEQUENCEED VECTORS
numbers <- 1:10
numbers

# To make bigger or smaller steps in a sequence, use the seq() function:
numbers <- seq(from = 0, to = 100, by = 20)
numbers  # 0  20  40  60  80 100