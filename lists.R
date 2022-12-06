# A list in R can contain many different data types inside it. A list is a collection of data which is ordered and changeable.
thislist <- list("apple", "banana", "cherry")  # List of strings
thislist  # Print the list

# ACCESS LIST
thislist <- list("apple", "banana", "cherry")
thislist[[2]]


# CHANGE ITEM VALUE
# To change the value of a specific item, refer to the index number:
thislist <- list("apple", "banana", "cherry")
thislist[1] <- "blackcurrant"
thislist  # Print the updated list


# LIST LENGTH
thislist <- list("apple", "banana", "cherry")
length(thislist)


# CHECK IF ITEM EXITS
thislist <- list("apple", "banana", "cherry")
"apple" %in% thislist


# ADD LIST ITEMS
thislist <- list("apple", "banana", "cherry")
append(thislist, "orange")

# To add an item to the right of a specified index, add "after=index number" in the append() function:
thislist <- list("apple", "banana", "cherry")
append(thislist, "orange", after = 2)  # Add "orange" to the list after "banana" (index 2)


# REMOVE LIST ITEMS
thislist <- list("apple", "banana", "cherry")
newlist <- thislist[-1]  # remove "apple" from the list
newlist  # Print the new list


# RANGE OF INDEXS
thislist <- list("apple", "banana", "cherry", "orange", "kiwi", "melon", "mango")
thislist[2:5]


# JOIN 2 LISTS  
list1 <- list("a", "b", "c")
list2 <- list(1,2,3)
list3 <- c(list1,list2)
list3