# Factors are used to categorize data
# Examples of factors are:
  # Demography: Male/Female
  # Music: Rock, Pop, Classic, Jazz
  # Training: Strength, Stamina

# To create a factor, use the factor() function and add a vector as argument:
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))
music_genre
# You can see from the example above that that the factor has four levels (categories): Classic, Jazz, Pop and Rock.

# To only print the levels, use the levels() function
levels(music_genre)

# You can also set the levels, by adding the levels argument inside the factor() function
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"), levels = c("Classic", "Jazz", "Pop", "Rock", "Other"))
levels(music_genre)


# FACTOR LENGTH
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))
length(music_genre)  # 8


# ACCESS FACTORS
# To access the items in a factor, refer to the index number, using [] brackets
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))
music_genre[3]

# CHANGE ITEM VALUE
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))
music_genre[3] <- "Pop"
music_genre

# Note that you cannot change the value of a specific item if it is not already specified in the factor. The following example will produce an error
# Example:
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))
music_genre[3] <- "Opera"
music_genre

# However, if you have already specified it inside the levels argument, it will work
# Change the value of the third item
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"), levels = c("Classic", "Jazz", "Pop", "Rock", "Opera"))
music_genre[3] <- "Opera"
music_genre